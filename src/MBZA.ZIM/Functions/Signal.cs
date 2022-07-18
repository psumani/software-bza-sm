using System;
using System.Runtime.InteropServices;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM.ZIM.Functions
{
    public class Signal_Proc
    {
        public Signal_Proc()
        { }
        public void NR_FFT(ref st_zim_eis_fft_data fftdata, ushort Ns) // data[0...2*Ns-1]
        {
            int i, j, k;
            int nTotal, iSize, nMax, istep;
            double wtemp, wpr, wr, wpi, wi, theta;
            double Itempr, Itempi;
            double Vtempr, Vtempi;
            int itemsize;

            itemsize = Marshal.SizeOf(typeof(st_zim_eis_raw_val));
            st_zim_eis_raw_val[] fBuf = new st_zim_eis_raw_val[2];
            fBuf[0] = new st_zim_eis_raw_val(0);
            fBuf[1] = new st_zim_eis_raw_val(0);

            j = 1;
            nTotal = Ns * 2;

            for (i = 1; i < nTotal; i += 2)
            {
                if (j > i)
                {
                    fBuf[0].ToWritePtr(fftdata.item[(j - 1)].ToByteArray());
                    fftdata.item[(j - 1)].ToWritePtr(fftdata.item[(i - 1)].ToByteArray());
                    fftdata.item[(i - 1)].ToWritePtr(fBuf[0].ToByteArray());

                    fBuf[0].ToWritePtr(fftdata.item[j].ToByteArray());
                    fftdata.item[j].ToWritePtr(fftdata.item[i].ToByteArray());
                    fftdata.item[i].ToWritePtr(fBuf[0].ToByteArray());
                }
                k = Ns;
                while (k >= 2 && j > k)
                {
                    j -= k;
                    k >>= 1;
                }
                j += k;
            }

            nMax = 2;
            iSize = itemsize * 2;

            while (nTotal > nMax)
            {
                istep = nMax << 1;
                theta = 2.0 * Math.PI / nMax; //
                wtemp = Math.Sin(0.5 * theta);

                wpr = -2.0 * wtemp * wtemp;
                wpi = Math.Sin(theta);
                wr = 1.0;
                wi = 0.0;
                for (k = 1; k < nMax; k += 2)
                {
                    for (i = k; i <= nTotal; i += istep)
                    {
                        j = i + nMax;

                        fBuf[0].ToWritePtr(fftdata.item[(i - 1)].ToByteArray());
                        fBuf[1].ToWritePtr(fftdata.item[i].ToByteArray());

                        Itempr = wr * fftdata.item[(j - 1)].iac - wi * fftdata.item[(j)].iac;
                        Itempi = wr * fftdata.item[(j)].iac + wi * fftdata.item[(j - 1)].iac;
                        Vtempr = wr * fftdata.item[(j - 1)].vac - wi * fftdata.item[(j)].vac;
                        Vtempi = wr * fftdata.item[(j)].vac + wi * fftdata.item[(j - 1)].vac;


                        fftdata.item[(i - 1)].iac += Itempr;
                        fftdata.item[(i - 1)].vac += Vtempr;
                        fftdata.item[i].iac += Itempi;
                        fftdata.item[i].vac += Vtempi;

                        fftdata.item[(j - 1)].iac = fBuf[0].iac - Itempr;
                        fftdata.item[(j - 1)].vac = fBuf[0].vac - Vtempr;
                        fftdata.item[j].iac = fBuf[1].iac - Itempi;
                        fftdata.item[j].vac = fBuf[1].vac - Vtempi;
                    }
                    wtemp = wr;
                    wr = wr * wpr - wi * wpi + wr;
                    wi = wi * wpr + wtemp * wpi + wi;
                }
                nMax = istep;
            }
            theta = Ns / 2.0;

            for (i = 0; i < Ns; i++)
            {
                fftdata.item[i].iac /= theta;
                fftdata.item[i].vac /= theta;
                fftdata.item[i + 1].iac /= theta;
                fftdata.item[i + 1].vac /= theta;
            }
        }
    }
}
