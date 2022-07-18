using MathNet.Numerics;
using MathNet.Numerics.LinearAlgebra;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Numerics;
using ZiveLab.MBZA.ZIM.Packets;

namespace ZiveLab.MBZA.ZIM.Analysis
{
    public class ZCalibration
    {
        #region Public Properties

        public List<ZItem> Zmeas;

        public List<Complex> Zfitted;

        public double Rtrue;

        public List<double> Coefficients = new List<double>(6); // { N1, N2, N2, D1, D2, D3 }

        #endregion Public Properties

        #region Life and Death

        public ZCalibration(st_zim_eis_item[] packet, ref st_zim_eis_item[] fitpacket, int Count, st_zim_Eis_Cal_info minf, double dLs)
        {
            Array.Copy(packet, fitpacket, packet.Length);

            Coefficients = Vector<double>.Build.Dense(6).ToList();
            Coefficients[0] = minf.n1;
            Coefficients[1] = minf.n2;
            Coefficients[2] = minf.n3;
            Coefficients[3] = minf.d1;
            Coefficients[4] = minf.d2;
            Coefficients[5] = minf.d3;
     
            ApplyBestFitted(packet, ref fitpacket, Count);
            ApplyInductance(ref fitpacket, Count, dLs);

            Rtrue = GetFitAvgMagnitude(fitpacket);
        }

        public ZCalibration(st_zim_eis_item[] packet, ref st_zim_eis_item[] fitpacket, int Count, double R ,double dLs)
        {
            Rtrue = R;
            if (R == 0.0)
            {
                Rtrue = GetAvgMagnitude(packet);
            }
            if(Rtrue == 0.0)
            {
                fitpacket = null;
                return;
            }
            /*
            //-----------------------------------------------------2021.09/03 test  인덕턴스를 뺀 후 교정값 얻고 펌웨어에서는 인덕턴스를 더하지 않음
            st_zim_eis_item[] tmppacket; ;
            tmppacket = new st_zim_eis_item[DeviceConstants.MAX_EIS_FREQ_CNT];

            for (int i = 0; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                tmppacket[i] = new st_zim_eis_item(0);
            }
            Array.Copy(packet, tmppacket, packet.Length);

            SubInductance(ref tmppacket, tmppacket.Length, dLs);

            Array.Copy(tmppacket, fitpacket, packet.Length);


            Coefficients = SolveLinearEquations(tmppacket, Count).ToList();


            ApplyBestFitted(tmppacket, ref fitpacket, Count);
            //------------------------------------------------------------
            */

            // ---------------교정후 펌웨어에서 인덕턴스를 더하는 방식
             Array.Copy(packet, fitpacket, packet.Length);
            
            //Coefficients = SolveLinearEquations(Comppacket, Count).ToList();

            Coefficients = SolveLinearEquations(packet, Count).ToList();

            ApplyBestFitted(packet, ref fitpacket, Count);
            ApplyInductance(ref fitpacket, Count, dLs); 
            

            /* ----- old
            st_zim_eis_item[] tmppacket;;
            tmppacket = new st_zim_eis_item[DeviceConstants.MAX_EIS_FREQ_CNT];
          
            for (int i = 0; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                tmppacket[i] = new st_zim_eis_item(0);
            }
            Array.Copy(fitpacket, tmppacket, packet.Length);

            ApplyInductance(fitpacket, ref tmppacket, fitpacket.Length, dLs);

            Rtrue = GetFitAvgMagnitude(tmppacket);
            */


            Rtrue = GetFitAvgMagnitude(fitpacket);
        }


        public double GetAvgMagnitude(st_zim_eis_item[] packet)
        {
            double dtotal = 0.0;
            double dmax = -99999999999.9;
            double dmin = 9999999999.0;
            double Avg = 0.0;
            int i = 0;

            foreach (var item in packet)
            {
                if (item.info.freq >= 1 && item.info.freq <= 10)
                {
                    if (item.zdata.phase > -0.05 && item.zdata.phase < 0.05)
                    {
                        dtotal += item.zdata.mag;
                        if (dmax < item.zdata.mag) dmax = item.zdata.mag;
                        if (dmin > item.zdata.mag) dmin = item.zdata.mag;
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
            /*
                var zmag = new List<double>();

            foreach (var item in packet)
            {
                if (item.info.freq >= 0.1 && item.info.freq <= 10)
                { 
                    if (item.zdata.phase >= -0.01 && item.zdata.phase <= 0.01)
                    {
                        zmag.Add(item.zdata.mag);
                    }
                 }

                if (item.info.freq == 0) break;
            }
            if (zmag.Count < 1)
            {
                return 0.0;
            }
            return zmag.Average();*/
        }

        public double GetFitAvgMagnitude(st_zim_eis_item[] packet)
        {
            double dtotal = 0.0;
            double dmax = -99999999999.9;
            double dmin = 9999999999.0;
            double avg = 0.0;
            int i = 0;

            foreach (var item in packet)
            {
                if (item.info.freq >= 0.1 && item.info.freq <= 10)
                {
                    if (item.zdata.phase > -0.05 && item.zdata.phase < 0.05)
                    {
                        dtotal += item.zdata.mag;
                        if (dmax < item.zdata.mag) dmax = item.zdata.mag;
                        if (dmin > item.zdata.mag) dmin = item.zdata.mag;
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
            /*
            var zmag = new List<double>();
            foreach (var item in packet)
            {
                if (item.info.freq >= 0.1 && item.info.freq <= 10)
                {
                    if (item.zdata.phase >= -0.01 && item.zdata.phase <= 0.01)
                    {
                        zmag.Add(item.zdata.mag);
                    }
                }

                if (item.info.freq == 0) break;
            }
            if (zmag.Count < 1)
            {
                return 0.0;
            }
            return zmag.Average();*/
        }

        private Vector<double> SolveLinearEquations(st_zim_eis_item[] packet,int Count)
        {
            // Ztrue = Rtrue = Zmeas * (1 + j*1/f*N1 + j*f*N2 + f*f*N3) / (1 + j*1/f*D1 + j*f*D2 + f*f*D3) 
            Matrix<double> A = Matrix<double>.Build.Dense(Count * 2, 6);
            Vector<double> y = Vector<double>.Build.Dense(Count * 2);
  
            for (int i = 0; i < Count; i++)
            {
                double f = packet[i].info.freq;
                double fsq = f * f;
                double z1 = packet[i].zdata.real;
                double z2 = packet[i].zdata.img;

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

        private void ApplyBestFitted(st_zim_eis_item[] packet, ref st_zim_eis_item[] fitpacket,int Count)
        {
            for (int i = 0; i < Count; i++)
            {
                Complex Impedance = new Complex(packet[i].zdata.real, packet[i].zdata.img);
                Complex zfit = ApplyFittingVar(packet[i].info.freq, Impedance);
                fitpacket[i].zdata.real = zfit.Real;
                fitpacket[i].zdata.img = zfit.Imaginary;
                fitpacket[i].zdata.mag = zfit.Magnitude;
                fitpacket[i].zdata.phase = zfit.Phase * 180.0 / Constants.Pi;
            }
        }

        private void ApplyInductance(st_zim_eis_item[] fitpacket, ref st_zim_eis_item[] tmppacket, int Count,double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                tmppacket[i].zdata.real = fitpacket[i].zdata.real;
                tmppacket[i].zdata.img = fitpacket[i].zdata.img + (2.0 * DeviceConstants.PI * fitpacket[i].info.freq * dLs);
                tmppacket[i].zdata.mag = Math.Sqrt((tmppacket[i].zdata.real * tmppacket[i].zdata.real) + (tmppacket[i].zdata.img * tmppacket[i].zdata.img));
                tmppacket[i].zdata.phase = Math.Atan2(tmppacket[i].zdata.img, tmppacket[i].zdata.real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
            }
        }

        private void ApplyInductance(ref st_zim_eis_item[] fitpacket, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                fitpacket[i].zdata.real = fitpacket[i].zdata.real;
                fitpacket[i].zdata.img = fitpacket[i].zdata.img + (2.0 * DeviceConstants.PI * fitpacket[i].info.freq * dLs);
                fitpacket[i].zdata.mag = Math.Sqrt((fitpacket[i].zdata.real * fitpacket[i].zdata.real) + (fitpacket[i].zdata.img * fitpacket[i].zdata.img));
                fitpacket[i].zdata.phase = Math.Atan2(fitpacket[i].zdata.img, fitpacket[i].zdata.real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
            }
        }

        private void SubInductance(st_zim_eis_item[] fitpacket, ref st_zim_eis_item[] tmppacket, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                tmppacket[i].zdata.real = fitpacket[i].zdata.real;
                tmppacket[i].zdata.img = fitpacket[i].zdata.img - (2.0 * DeviceConstants.PI * fitpacket[i].info.freq * dLs);
                tmppacket[i].zdata.mag = Math.Sqrt((tmppacket[i].zdata.real * tmppacket[i].zdata.real) + (tmppacket[i].zdata.img * tmppacket[i].zdata.img));
                tmppacket[i].zdata.phase = Math.Atan2(tmppacket[i].zdata.img, tmppacket[i].zdata.real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
            }
        }

        private void SubInductance(ref st_zim_eis_item[] fitpacket, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                fitpacket[i].zdata.real = fitpacket[i].zdata.real;
                fitpacket[i].zdata.img = fitpacket[i].zdata.img - (2.0 * DeviceConstants.PI * fitpacket[i].info.freq * dLs);
                fitpacket[i].zdata.mag = Math.Sqrt((fitpacket[i].zdata.real * fitpacket[i].zdata.real) + (fitpacket[i].zdata.img * fitpacket[i].zdata.img));
                fitpacket[i].zdata.phase = Math.Atan2(fitpacket[i].zdata.img, fitpacket[i].zdata.real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;
            }
        }

        public ZCalibration(IEnumerable<ZItem> meas, double R = 0.0)
        {
            Zmeas = meas.ToList();
            if (R <= 0)
            {
                var parts = Zmeas.FindAll(z => z.Frequency >= 10 && z.Frequency <= 100);
                var zmag = new List<double>();
                foreach (var item in parts)
                {
                    zmag.Add(item.Impedance.Magnitude);
                }

                Rtrue = zmag.Average();
            }
            else
            {
                Rtrue = R;
            }

            Coefficients = SolveLinearEquations().ToList();
            Zfitted = GetBestFitted();
        }
        #endregion Life and Death

        private Vector<double> SolveLinearEquations()
        {
            Matrix<double> A = Matrix<double>.Build.Dense(Zmeas.Count * 2, 6);
            Vector<double> y = Vector<double>.Build.Dense(Zmeas.Count * 2);

            for (int i = 0; i < Zmeas.Count; i++)
            {
                double f = Zmeas[i].Frequency;
                double fsq = f * f;
                double z1 = Zmeas[i].Impedance.Real;
                double z2 = Zmeas[i].Impedance.Imaginary;

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
            } catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }

            return result;
        }

        private List<Complex> GetBestFitted()
        {
            var fitted = new List<Complex>();
            for (int i = 0; i < Zmeas.Count; i++)
            {
                fitted.Add(ApplyFittingVar(Zmeas[i].Frequency, Zmeas[i].Impedance));
            }

            return fitted;
        }

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
