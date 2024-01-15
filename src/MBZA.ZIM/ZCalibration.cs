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
    public class ZCalibration
    {
        #region Public Properties

        public List<Complex> Zfitted;

        public double Rtrue;

        public double Gain;

        public List<double> Coefficients = new List<double>(6); // { N1, N2, N2, D1, D2, D3 }

        #endregion Public Properties

        #region Life and Death

        public ZCalibration(st_zim_zPacket[] packet, ref st_zim_zPacket[] fitpacket, int Count, st_zim_Eis_Cal_info minf,double gain, st_zim_dummy dummy)
        {
            //Array.Copy(packet, fitpacket, packet.Length);

            Coefficients = Vector<double>.Build.Dense(6).ToList();
            Coefficients[0] = minf.n1;
            Coefficients[1] = minf.n2;
            Coefficients[2] = minf.n3;
            Coefficients[3] = minf.d1;
            Coefficients[4] = minf.d2;
            Coefficients[5] = minf.d3;
           
            ApplyBestFitted(packet, ref fitpacket, Count);
            ApplyInductance(ref fitpacket, Count, dummy.Ls);

            Gain = gain;
        }

        public ZCalibration(st_zim_zPacket[] packet, ref st_zim_zPacket[] fitpacket, int Count, double SetR, st_zim_dummy dummy)
        {
            Rtrue = SetR;
            if (SetR == 0.0)
            {
                Rtrue = GetAvgMagnitude(packet);
            }
            if(Rtrue == 0.0)
            {
                fitpacket = null;
                return;
            }
            
            //Array.Copy(packet, fitpacket, packet.Length);
           
            Coefficients = SolveLinearEquations(packet, Count).ToList();

            ApplyBestFitted(packet, ref fitpacket, Count);

            ApplyInductance(ref fitpacket, Count, dummy.Ls); 
            

            Rtrue = GetFitAvgMagnitude(fitpacket);

            Gain = Rtrue / dummy.R;
        }

        public void ApplyGain(ref st_zim_zPacket[] fitpacket, int Count, double dgain)
        {

            for (int i = 0; i < Count; i++)
            {
                fitpacket[i].mag /= dgain;
                fitpacket[i].real = fitpacket[i].mag * Math.Cos(fitpacket[i].phase * ((double)DeviceConstants.PI / 180.0));
                fitpacket[i].img = fitpacket[i].mag * Math.Sin(fitpacket[i].phase * ((double)DeviceConstants.PI / 180.0));
            }
        }

        public double GetAvgMagnitude(st_zim_zPacket[] packet)
        {
            double dtotal = 0.0;
            double dmax = -99999999999.9;
            double dmin = 9999999999.0;
            double Avg = 0.0;
            int i = 0;

            foreach (var item in packet)
            {
                if (item.freq >= 1 && item.freq <= 10)
                {
                    if (item.phase >= -0.02 && item.phase <= 0.02) // +/- 0.05 to +/- 0.1
                    {
                        dtotal += item.mag;
                        if (dmax < item.mag) dmax = item.mag;
                        if (dmin > item.mag) dmin = item.mag;
                        i++;
                    }
                }
            }

            if (dtotal == 0.0) Avg = 0.0;
            else
            {
                if (i == 1) Avg = dtotal;
                else if (i == 2) Avg = dtotal / 2;
                else
                {
                    Avg = (dtotal - dmax - dmin);
                    if (Avg > 0.0) Avg = Avg / ((i - 2));
                }
            }
            return Avg;
        }

        public double GetFitAvgMagnitude(st_zim_zPacket[] packet)
        {
            double dtotal = 0.0;
            double dmax = -99999999999.9;
            double dmin = 9999999999.0;
            double avg = 0.0;
            int i = 0;

            foreach (var item in packet)
            {
                if (item.freq >= 0.1 && item.freq <= 10)
                {
                    if (item.phase > -0.05 && item.phase < 0.05)
                    {
                        dtotal += item.mag;
                        if (dmax < item.mag) dmax = item.mag;
                        if (dmin > item.mag) dmin = item.mag;
                        i++;
                    }
                }
            }

            if (dtotal == 0.0) avg = 0.0;
            else
            {
                if (i == 1) avg = dtotal;
                else if (i == 2) avg = dtotal / 2;
                else if (i > 2)
                {
                    avg = dtotal - dmax - dmin;
                    if (avg > 0.0)
                    {
                        avg = avg / (i - 2);
                    }
                }
            }
            return avg;
        }

        private Vector<double> SolveLinearEquations(st_zim_zPacket[] packet,int Count)
        {
            Matrix<double> A = Matrix<double>.Build.Dense(Count * 2, 6);
            Vector<double> y = Vector<double>.Build.Dense(Count * 2);
  
            for (int i = 0; i < Count; i++)
            {
                double f = packet[i].freq;
                double fsq = f * f;
                double z1 = packet[i].real;
                double z2 = packet[i].img;

                A[2 * i, 0] = -z2 / f;
                A[2 * i, 1] = -z2 * f;
                A[2 * i, 2] = z1 * fsq;
                A[2 * i, 3] = 0;
                A[2 * i, 4] = 0;
                A[2 * i, 5] = -Rtrue * fsq;


                A[2 * i + 1, 0] = z1 / f;
                A[2 * i + 1, 1] = z1 * f;
                A[2 * i + 1, 2] = z2 * fsq;
                A[2 * i + 1, 3] = -Rtrue / f;
                A[2 * i + 1, 4] = -Rtrue * f;
                A[2 * i + 1, 5] = 0;

                y[2 * i] = Rtrue - z1;
                y[2 * i + 1] = -z2;
            }

            var result = Vector<double>.Build.Dense(6);
            try
            {
                result = A.Solve(y);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }

            return result;
        }

        private void ApplyBestFitted(st_zim_zPacket[] packet, ref st_zim_zPacket[] fitpacket,int Count)
        {
            for (int i = 0; i < Count; i++)
            {
                Complex Impedance = new Complex(packet[i].real, packet[i].img);
                Complex zfit = ApplyFittingVar(packet[i].freq, Impedance);
                fitpacket[i].real = zfit.Real;
                fitpacket[i].img = zfit.Imaginary;
                fitpacket[i].mag = zfit.Magnitude;
                fitpacket[i].phase = zfit.Phase * 180.0 / Constants.Pi;
            }
        }

        private void ApplyInductance(st_zim_zPacket[] fitpacket, ref st_zim_zPacket[] tmppacket, int Count,double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                tmppacket[i].real = fitpacket[i].real;
                tmppacket[i].img = fitpacket[i].img + (2.0 * DeviceConstants.PI * fitpacket[i].freq * dLs);
                tmppacket[i].mag = Math.Sqrt((tmppacket[i].real * tmppacket[i].real) + (tmppacket[i].img * tmppacket[i].img));
                tmppacket[i].phase = Math.Atan2(tmppacket[i].img, tmppacket[i].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
            }
        }

        private void ApplyInductance(ref st_zim_zPacket[] fitpacket, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                fitpacket[i].real = fitpacket[i].real;
                fitpacket[i].img = fitpacket[i].img + (2.0 * DeviceConstants.PI * fitpacket[i].freq * dLs);
                fitpacket[i].mag = Math.Sqrt((fitpacket[i].real * fitpacket[i].real) + (fitpacket[i].img * fitpacket[i].img));
                fitpacket[i].phase = Math.Atan2(fitpacket[i].img, fitpacket[i].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
            }
        }

        private void SubInductance(st_zim_zPacket[] fitpacket, ref st_zim_zPacket[] tmppacket, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                tmppacket[i].real = fitpacket[i].real;
                tmppacket[i].img = fitpacket[i].img - (2.0 * DeviceConstants.PI * fitpacket[i].freq * dLs);
                tmppacket[i].mag = Math.Sqrt((tmppacket[i].real * tmppacket[i].real) + (tmppacket[i].img * tmppacket[i].img));
                tmppacket[i].phase = Math.Atan2(tmppacket[i].img, tmppacket[i].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
            }
        }

        private void SubInductance(ref st_zim_zPacket[] fitpacket, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                fitpacket[i].real = fitpacket[i].real;
                fitpacket[i].img = fitpacket[i].img - (2.0 * DeviceConstants.PI * fitpacket[i].freq * dLs);
                fitpacket[i].mag = Math.Sqrt((fitpacket[i].real * fitpacket[i].real) + (fitpacket[i].img * fitpacket[i].img));
                fitpacket[i].phase = Math.Atan2(fitpacket[i].img, fitpacket[i].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
            }
        }

       
        #endregion Life and Death
        
        private Complex ApplyFittingVar(double freq, Complex source)
        {
            var N1 = Coefficients[0];
            var N2 = Coefficients[1];
            var N3 = Coefficients[2];
            var D1 = Coefficients[3];
            var D2 = Coefficients[4];
            var D3 = Coefficients[5];
            double fsq = freq * freq;
            

            Complex numerator = new Complex(1 + N3 * fsq, N1 / freq + N2 * freq);
            Complex denominator = new Complex(1 + D3 * fsq, D1 / freq + D2 * freq);

            Complex zfit = source * numerator / denominator;
            return zfit;
        }
    }
}
