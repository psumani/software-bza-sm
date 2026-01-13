using MathNet.Numerics;
using MathNet.Numerics.LinearAlgebra;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Numerics;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM.ZIM.Analysis
{
 
    public class ZCalVars
    {
        public double Rtrue;
        public double Gain;
        public List<double> Coefficients = new List<double>(6); // { N1, N2, N2, D1, D2, D3 }
        public Matrix<double> A;
        public Vector<double> y;

        public ZCalVars(st_zim_Eis_Cal_info minf, double gain, st_zim_dummy dummy)
        {
            Coefficients = Vector<double>.Build.Dense(6).ToList();
            Coefficients[0] = minf.n1;
            Coefficients[1] = minf.n2;
            Coefficients[2] = minf.n3;
            Coefficients[3] = minf.d1;
            Coefficients[4] = minf.d2;
            Coefficients[5] = minf.d3;

            Gain = gain;

            Rtrue = Gain * dummy.R;
        }

        public ZCalVars()
        {
            Coefficients = Vector<double>.Build.Dense(6).ToList();
            Coefficients[0] = 0;
            Coefficients[1] = 0;
            Coefficients[2] = 0;
            Coefficients[3] = 0;
            Coefficients[4] = 0;
            Coefficients[5] = 0;

            Gain = 1.0;

            Rtrue = 1.0;
            
        }

        public void GetInformation(ref st_zim_Eis_Cal_info minf)
        {
            minf.n1 = Coefficients[0];
            minf.n2 = Coefficients[1];
            minf.n3 = Coefficients[2];
            minf.d1 = Coefficients[3];
            minf.d2 = Coefficients[4];
            minf.d3 = Coefficients[5];
        }
    }

    public class ZCalibration
    {
        #region Public Properties
        public ZCalVars[] vars;
        public st_zim_dummy dummy;
        public st_graph_vars grpvars;
        #endregion Public Properties

        #region Life and Death
        public ZCalibration(st_zim_zPacket[] packet, ref st_zim_zPacket[] fitpacket, int Count, st_graph_vars tgrpvars)
        {
            int nRng;
            int nRngGain;
            double gain;

            grpvars = new st_graph_vars();
            dummy = new st_zim_dummy(0);
            vars = new ZCalVars[MBZA_Constant.MAX_AUXTYPE_CHANNELS];

            //Array.Copy(packet, fitpacket, packet.Length);

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                vars[i] = new ZCalVars();
            }

            grpvars = tgrpvars;
            dummy = grpvars.showitems[0].mDummy;
            nRng = grpvars.tRng / 2;
            if (grpvars.tRng % 2 == 0) nRngGain = 0;
            else nRngGain = 1;

            for (int i = 0; i < grpvars.nAuxChCount+1; i++)
            {
                if (nRngGain == 0) gain = grpvars.showitems[i].gain1;
                else gain = grpvars.showitems[i].gain2;

                vars[i] = new ZCalVars(grpvars.showitems[i].mInfo, gain, dummy);
            }

            ApplyBestFitted(packet, ref fitpacket, Count);
            ApplyInductance(ref fitpacket, Count);
        }

        public ZCalibration(st_zim_zPacket[] packet, ref st_zim_zPacket[] fitpacket, int Count, st_graph_vars tgrpvars, double SetR)
        {
            double Rtrue = SetR;
            vars = new ZCalVars[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            dummy = new st_zim_dummy(0);
            grpvars = new st_graph_vars();
            grpvars = tgrpvars;
            dummy = grpvars.showitems[0].mDummy;

            //Array.Copy(packet, fitpacket, packet.Length);

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                vars[i] = new ZCalVars();
            }

            if (SetR == 0.0)
            {
                if (AppAvgMagnitude(packet) == false)
                {
                    fitpacket = null;
                    return;
                }
            }

            SolveLinearEquations(packet, Count);

            ApplyBestFitted(packet, ref fitpacket, Count);

            ApplyInductance(ref fitpacket, Count);

            AppAvgMagnitude(fitpacket);
        }
        
        public void ApplyGain(ref st_zim_zPacket[] fitpacket, int Count)
        {
            for (int i = 0; i < Count; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount+1; j++)
                {
                    fitpacket[i].zData[j].mag /= vars[j].Gain;
                    fitpacket[i].zData[j].real = fitpacket[i].zData[j].mag * Math.Cos(fitpacket[i].zData[j].phase * ((double)DeviceConstants.PI / 180.0));
                    fitpacket[i].zData[j].img = fitpacket[i].zData[j].mag * Math.Sin(fitpacket[i].zData[j].phase * ((double)DeviceConstants.PI / 180.0));
                }
            }
        }

        public bool AppAvgMagnitude(st_zim_zPacket[] packet)
        {
            double[] dtotal = new double[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            double[] dmax = new double[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            double[] dmin = new double[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            int[] Cnt = new int[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            double Avg = 0.0;
            bool bres = true;
            int i = 0;

            for (i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                dtotal[i] = 0.0;
                dmax[i] = -99999999999.9;
                dmin[i] = 9999999999.0;
                Cnt[i] = 0;
            }
            

            foreach (var item in packet)
            {
                if (item.freq >= 1 && item.freq <= 10)
                {
                    for (i = 0; i < grpvars.nAuxChCount+1; i++)
                    {
                        if (item.zData[i].phase >= -0.05 && item.zData[i].phase <= 0.05) // +/- 0.02  to +/- 0.1
                        {
                            dtotal[i] += item.zData[i].mag;
                            if (dmax[i] < item.zData[i].mag) dmax[i] = item.zData[i].mag;
                            if (dmin[i] > item.zData[i].mag) dmin[i] = item.zData[i].mag;
                            Cnt[i]++;
                        }
                    }
                }
            }

            for (i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                if (dtotal[i] == 0.0 || Cnt[i] == 0) Avg = 0.0;
                else
                {
                    if (Cnt[i] == 1) Avg = dtotal[i];
                    else if (Cnt[i] == 2) Avg = dtotal[i] / 2;
                    else
                    {
                        Avg = (dtotal[i] - dmax[i] - dmin[i]);
                        if (Avg > 0.0) Avg = Avg / ((Cnt[i] - 2));
                    }
                }
                if (Avg <= 0.0) bres = false;
                else
                {
                    vars[i].Rtrue = Avg;
                    vars[i].Gain = Avg / dummy.R;
                }
            }
            return bres;
        }
        
        private bool SolveLinearEquations(st_zim_zPacket[] packet,int Count)
        {
            Matrix<double> A = Matrix<double>.Build.Dense(Count * 2, 6);
            Vector<double> y = Vector<double>.Build.Dense(Count * 2);
            int i;
            double f;
            double fsq;
            double z1;
            double z2;

            for (i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                vars[i].A = Matrix<double>.Build.Dense(Count * 2, 6);
                vars[i].y = Vector<double>.Build.Dense(Count * 2);
            }

            for (i = 0; i < Count; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                {
                    f = packet[i].freq;
                    fsq = f * f;
                    z1 = packet[i].zData[j].real;
                    z2 = packet[i].zData[j].img;

                    vars[j].A[2 * i, 0] = -z2 / f;
                    vars[j].A[2 * i, 1] = -z2 * f;
                    vars[j].A[2 * i, 2] = z1 * fsq;
                    vars[j].A[2 * i, 3] = 0;
                    vars[j].A[2 * i, 4] = 0;
                    vars[j].A[2 * i, 5] = -vars[j].Rtrue * fsq;


                    vars[j].A[2 * i + 1, 0] = z1 / f;
                    vars[j].A[2 * i + 1, 1] = z1 * f;
                    vars[j].A[2 * i + 1, 2] = z2 * fsq;
                    vars[j].A[2 * i + 1, 3] = -vars[j].Rtrue / f;
                    vars[j].A[2 * i + 1, 4] = -vars[j].Rtrue * f;
                    vars[j].A[2 * i + 1, 5] = 0;

                    vars[j].y[2 * i] = vars[j].Rtrue - z1;
                    vars[j].y[2 * i + 1] = -z2;
                }
            }

            var result = Vector<double>.Build.Dense(6);
            try
            {
                for (i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    vars[i].Coefficients = vars[i].A.Solve(vars[i].y).ToList();
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                return false;
            }

            return true;
        }

        private void ApplyBestFitted(st_zim_zPacket[] packet, ref st_zim_zPacket[] fitpacket,int Count)
        {
            for (int i = 0; i < Count; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                {
                    Complex Impedance = new Complex(packet[i].zData[j].real, packet[i].zData[j].img);
                    Complex zfit = ApplyFittingVar(packet[i].freq, Impedance, vars[j].Coefficients);
                    fitpacket[i].zData[j].real = zfit.Real;
                    fitpacket[i].zData[j].img = zfit.Imaginary;
                    fitpacket[i].zData[j].mag = zfit.Magnitude;
                    fitpacket[i].zData[j].phase = zfit.Phase * 180.0 / Constants.Pi;
                }
            }
        }

        private void ApplyInductance(st_zim_zPacket[] fitpacket, ref st_zim_zPacket[] tmppacket, int Count)
        {
            for (int i = 0; i < Count; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                {
                    tmppacket[i].zData[j].real = fitpacket[i].zData[j].real;
                    tmppacket[i].zData[j].img = fitpacket[i].zData[j].img + (2.0 * DeviceConstants.PI * fitpacket[i].freq * dummy.Ls);
                    tmppacket[i].zData[j].mag = Math.Sqrt((tmppacket[i].zData[j].real * tmppacket[i].zData[j].real) + (tmppacket[i].zData[j].img * tmppacket[i].zData[j].img));
                    tmppacket[i].zData[j].phase = Math.Atan2(tmppacket[i].zData[j].img, tmppacket[i].zData[j].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
                }
            }
        }

        private void ApplyInductance(ref st_zim_zPacket[] fitpacket, int Count)
        {
            for (int i = 0; i < Count; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                {
                    fitpacket[i].zData[j].real = fitpacket[i].zData[j].real;
                    fitpacket[i].zData[j].img = fitpacket[i].zData[j].img + (2.0 * DeviceConstants.PI * fitpacket[i].freq * dummy.Ls);
                    fitpacket[i].zData[j].mag = Math.Sqrt((fitpacket[i].zData[j].real * fitpacket[i].zData[j].real) + (fitpacket[i].zData[j].img * fitpacket[i].zData[j].img));
                    fitpacket[i].zData[j].phase = Math.Atan2(fitpacket[i].zData[j].img, fitpacket[i].zData[j].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
                }
            }
        }

        private void SubInductance(st_zim_zPacket[] fitpacket, ref st_zim_zPacket[] tmppacket, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                {
                    tmppacket[i].zData[j].real = fitpacket[i].zData[j].real;
                    tmppacket[i].zData[j].img = fitpacket[i].zData[j].img - (2.0 * DeviceConstants.PI * fitpacket[i].freq * dummy.Ls);
                    tmppacket[i].zData[j].mag = Math.Sqrt((tmppacket[i].zData[j].real * tmppacket[i].zData[j].real) + (tmppacket[i].zData[j].img * tmppacket[i].zData[j].img));
                    tmppacket[i].zData[j].phase = Math.Atan2(tmppacket[i].zData[j].img, tmppacket[i].zData[j].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
                }
            }
        }

        private void SubInductance(ref st_zim_zPacket[] fitpacket, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                {
                    fitpacket[i].zData[j].real = fitpacket[i].zData[j].real;
                    fitpacket[i].zData[j].img = fitpacket[i].zData[j].img - (2.0 * DeviceConstants.PI * fitpacket[i].freq * dummy.Ls);
                    fitpacket[i].zData[j].mag = Math.Sqrt((fitpacket[i].zData[j].real * fitpacket[i].zData[j].real) + (fitpacket[i].zData[j].img * fitpacket[i].zData[j].img));
                    fitpacket[i].zData[j].phase = Math.Atan2(fitpacket[i].zData[j].img, fitpacket[i].zData[j].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
                }
            }
        }

       
        #endregion Life and Death
        
        private Complex ApplyFittingVar(double freq, Complex source,List<double> Coef)
        {
            var N1 = Coef[0];
            var N2 = Coef[1];
            var N3 = Coef[2];
            var D1 = Coef[3];
            var D2 = Coef[4];
            var D3 = Coef[5];
            double fsq = freq * freq;
            

            Complex numerator = new Complex(1 + N3 * fsq, N1 / freq + N2 * freq);
            Complex denominator = new Complex(1 + D3 * fsq, D1 / freq + D2 * freq);

            Complex zfit = source * numerator / denominator;
            return zfit;
        }
    }
}
