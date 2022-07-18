using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SMLib
{
    public enum enSM_TypeNumberToString
    {
        Gerneral,
        Exponential,
        SIPrefix
    }

    public enum enSM_SymbolSIPrefix
    {
        a=-6,f,p,n,u,m,zero = 0,
        k = 1,M,G,T
    }

    public class SM_Number
    {
        public const double ConstZerovalue = 0.00000000000000000000000000000001;

        public static bool CheckNumberStr(string sTemp)
        {
            int nLen = sTemp.Length;
            char[] nC;
            bool bRes = true;

            nC = sTemp.ToCharArray();
            for (int i = 0; i < nLen; i++)
            {
                if (nC[i] < 43 || nC[i] > 57)
                {
                    if (nC[i] != 'e'
                        && nC[i] != ':'
                        && nC[i] != ' '
                        && nC[i] != 'E'
                        && nC[i] != 'T'
                        && nC[i] != 'G'
                        && nC[i] != 'M'
                        && nC[i] != 'K'
                        && nC[i] != 'k'
                        && nC[i] != 'm'
                        && nC[i] != 'u'
                        && nC[i] != 'n'
                        && nC[i] != 'p'
                        && nC[i] != 'f'
                        && nC[i] != 'a')
                    {
                        bRes = false;
                        break;
                    }
                }
                else
                {
                    if (nC[i] == ',' || nC[i] == '/')
                    {
                        bRes = false;
                        break;
                    }
                }
            }
            return bRes;
        }

        public static double RefreshErrNumber(double x) // Error = 0
        {
            string str;

            str = Convert.ToString(x);
            if (str.IndexOf("#") > 0)
            {
                return 0.0;
            }
            return x;
        }

        public static float RefreshErrNumber(float x) // Error = 0
        {
            string str;

            str = Convert.ToString(x);
            if (str.IndexOf("#") > 0)
            {
                return 0.0f;
            }
            return x;
        }

        public static string ToString(float value
            , enSM_TypeNumberToString type = enSM_TypeNumberToString.Exponential
            , int Digitcount = 5
            , string strunit = "") // Gerneral  Digitcount => pointdigit
        {
            float procvalue;
            bool plusvalue;
            int updim, downdim;
            int dimension;

            string sformat;
            string sRet;

            procvalue = RefreshErrNumber(value);

            if (type == enSM_TypeNumberToString.Gerneral) // Gerneral  Digitcount => pointdigit = downdim
            {
                downdim = Digitcount;
                if (procvalue == 0.0f) updim = 1;
                else updim = (int)Math.Floor(Math.Log10(procvalue)) + 1;

                sformat = String.Format("{{0,{0}:N{1}}} {2}", updim + downdim, downdim, strunit);
                sRet = String.Format(sformat, procvalue);
                return sRet;
            }

            if (procvalue < 0.0f)
            {
                plusvalue = false;
                procvalue *= -1;
            }
            else
            {
                plusvalue = true;
            }

            dimension = 0;
            while (true)
            {
                if (procvalue >= 1000.0f)
                {
                    dimension += 3;
                    procvalue /= 1000.0f;
                }
                else if (procvalue < 1.0f)
                {
                    if (procvalue < ConstZerovalue)
                    {
                        break;
                    }
                    dimension -= 3;
                    procvalue *= 1000.0f;
                }
                else
                {
                    break;
                }
            }
            if (procvalue == 0.0f) updim = 1;
            else updim = (int)Math.Floor(Math.Log10(procvalue)) + 1;
            downdim = Digitcount - updim;

            if (plusvalue == false)
                procvalue *= -1;
            
            if (type == enSM_TypeNumberToString.SIPrefix)
            {
                if (dimension == 0) sformat = "";
                else sformat = string.Format("{0,1}{1}",((enSM_SymbolSIPrefix)(dimension / 3)).ToString(),strunit);

                sformat = String.Format("{{0,{0}:N{1}}} {2}", Digitcount, downdim, sformat);
                
            }
            else
            {
                sformat = String.Format("{{0,{0}:e{1}}}{2}", Digitcount, downdim, strunit);
            }
            sRet = String.Format(sformat,value);
            return sRet;
        }

        public static string ToRangeString(double value, string strunit = "") 
        {
            double procvalue;
            bool plusvalue;
            int dimension;

            string sRet;

            procvalue = RefreshErrNumber(value);

            if (procvalue < 0.0)
            {
                plusvalue = false;
                procvalue *= -1;
            }
            else
            {
                plusvalue = true;
            }

            dimension = 0;
            while (true)
            {
                if (procvalue >= 1000.0)
                {
                    dimension ++;
                    procvalue /= 1000.0;
                }
                else if (procvalue < 1.0)
                {
                    if (procvalue < ConstZerovalue)
                    {
                        break;
                    }
                    dimension --;
                    procvalue *= 1000.0;
                }
                else
                {
                    break;
                }
            }

            if (plusvalue == false) procvalue *= -1.0;
            if(dimension == 0) sRet = String.Format("{0}{1}", procvalue, strunit);
            else sRet = String.Format("{0}{1}{2}", procvalue, ((enSM_SymbolSIPrefix)dimension), strunit);
            return sRet;
        }

        public static string ToString(double value
            , enSM_TypeNumberToString type = enSM_TypeNumberToString.Exponential
            , int Digitcount = 5
            , string strunit = "") // Gerneral  Digitcount => pointdigit = downdim
        {
            double procvalue;
            bool plusvalue;
            int updim, downdim;
            int dimension;

            string sformat;
            string sRet;

            procvalue = RefreshErrNumber(value);

            if (type == enSM_TypeNumberToString.Gerneral) // Gerneral  Digitcount => pointdigit = downdim
            {
                downdim = Digitcount;
                if (procvalue == 0.0) updim = 1;
                else updim = (int)Math.Floor(Math.Log10(procvalue)) + 1;

                sformat = String.Format("{{0,{0}N{1}}} {2}", updim + downdim, downdim, strunit);
                sRet = String.Format(sformat, procvalue);
                return sRet;
            }


            if (procvalue < 0.0)
            {
                plusvalue = false;
                procvalue *= -1;
            }
            else
            {
                plusvalue = true;
            }

            dimension = 0;
            while (true)
            {
                if (procvalue >= 1000.0)
                {
                    dimension += 3;
                    procvalue /= 1000.0;
                }
                else if (procvalue < 1.0)
                {
                    if (procvalue < ConstZerovalue)
                    {
                        break;
                    }
                    dimension -= 3;
                    procvalue *= 1000.0;
                }
                else
                {
                    break;
                }
            }
            if (procvalue == 0.0) updim = 1;
            else updim = (int)Math.Floor(Math.Log10(procvalue)) + 1;
            downdim = Digitcount - updim;

            if (plusvalue == false)
                procvalue *= -1;
            if (type == enSM_TypeNumberToString.SIPrefix)
            {
                if (dimension == 0) sformat = "";
                else sformat = string.Format("{0,1}{1}",((enSM_SymbolSIPrefix)(dimension / 3)).ToString(),strunit);

                sformat = String.Format("{{0,{0}:N{1}}} {2}", Digitcount, downdim, sformat);
                
            }
            else
            {
                sformat = String.Format("{{0,{0}:e{1}}}{2}", Digitcount, downdim, strunit);
            }
            sRet = String.Format(sformat,value);
            return sRet;
        }

        public static float ToFloat(string strval)
        {
	        int nLen = strval.Count();
	        string str = "";
	        float fval;
            float fval1;
            char  tchar;
	
	        for(int i=0; i<nLen; i++) {
                tchar = strval.ElementAt(i);
		        switch(tchar) {
		        case 'e': case '0': case '1': case '2': case '3':
		        case '4': case '5': case '6': case '7': case '8':
		        case '9': case '+': case '-': case 'E': case '.':
			        str += tchar;
			        break;
		        default:
			        break;
		        }
            }
	        fval = Convert.ToSingle(str);

            fval1 = 1.0f;
            tchar = strval.ElementAt(nLen-1);
          
	        switch(tchar) {
		        case 'T': fval1 = 1e12f; break;
		        case 'G': fval1 = 1e9f; break;
		        case 'M': fval1 = 1e6f; break;
		        case 'K': fval1 = 1e3f; break;
		        case 'k': fval1 = 1e3f; break;
		        case 'm': fval1 = 1e-3f; break;
		        case 'u': fval1 = 1e-6f; break;
		        case 'n': fval1 = 1e-9f; break;
		        case 'p': fval1 = 1e-12f; break;
		        case 'f': fval1 = 1e-15f; break;
		        case 'a': fval1 = 1e-18f; break;
	        }
	        fval *= fval1;
            return fval;
        }

        public static double ToDouble(string strval)
        {
            int nLen = strval.Count();
            string str = "";
            double dval;
            double dval1;
            char tchar;

            for (int i = 0; i < nLen; i++)
            {
                tchar = strval.ElementAt(i);
                switch (tchar)
                {
                    case 'e':
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                    case '+':
                    case '-':
                    case 'E':
                    case '.':
                        str += tchar;
                        break;
                    default:
                        break;
                }
            }
            dval = Convert.ToDouble(str);
            dval1 = 1.0;
            tchar = strval.ElementAt(nLen - 1);
            switch (tchar)
            {
                case 'T': dval1 = 1e12; break;
                case 'G': dval1 = 1e9; break;
                case 'M': dval1 = 1e6; break;
                case 'K': dval1 = 1e3; break;
                case 'k': dval1 = 1e3; break;
                case 'm': dval1 = 1e-3; break;
                case 'u': dval1 = 1e-6; break;
                case 'n': dval1 = 1e-9; break;
                case 'p': dval1 = 1e-12; break;
                case 'f': dval1 = 1e-15; break;
                case 'a': dval1 = 1e-18; break;
            }
            dval *= dval1;
            return dval;
        }

        public static Int64 ToInt(string strval)
        {
            int nLen = strval.Count();
            string str = "";
            Int64 ival;
            double dval;
            char tchar;

            for (int i = 0; i < nLen; i++)
            {
                tchar = strval.ElementAt(i);
                switch (tchar)
                {
                    case 'e':
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                    case '+':
                    case '-':
                    case 'E':
                    case '.':
                        str += tchar;
                        break;
                    default:
                        break;
                }
            }
            ival = Convert.ToInt64(str);
            dval = 1;
            tchar = strval.ElementAt(nLen - 1);
            switch (tchar)
            {
                case 'T': dval = 1e12; break;
                case 'G': dval = 1e9; break;
                case 'M': dval = 1e6; break;
                case 'K': dval = 1e3; break;
                case 'k': dval = 1e3; break;
                case 'm': dval = 1e-3; break;
                case 'u': dval = 1e-6; break;
                case 'n': dval = 1e-9; break;
                case 'p': dval = 1e-12; break;
                case 'f': dval = 1e-15; break;
                case 'a': dval = 1e-18; break;
            }
            ival *= (Int64)dval;
            return ival;
        }

        public static string SetMinuteString(int fcnt, double second)
        {
            string tmpstr;
            double MilliSecond = second;
            int minute = 0;
            if (MilliSecond >= 60)
            {
                minute = (int)(second) / 60;
                MilliSecond -= (minute * 60);
            }
            tmpstr = String.Format("{0:d}:{2:00.{1}#}", minute, fcnt, MilliSecond);
            return tmpstr;
        }

        public string SetHourString(int fcnt, double second)
        {
            string tmpstr;
            int hour = 0, minute = 0;
            long MilliSecond = (long)second;
            double Milli = second;
            if (MilliSecond >= 3600)
            {
                hour = (int)(MilliSecond / 3600);
                MilliSecond %= 3600;
                Milli -= (hour * 3600);
            }
            if (MilliSecond >= 60)
            {
                minute = (int)(MilliSecond / 60);
                Milli -= (minute * 60);
            }
            tmpstr = String.Format("{0:04d}:{1:02d}:{2:02d}{4:00.{3}#}", hour, minute, fcnt, Milli);
            return tmpstr;
        }

        public static string SetDayString(int fcnt, double second)
        {
            string tmpstr;
            int day = 0, hour = 0, minute = 0;
            long MilliSecond = (long)second;
            double Milli = second;
            if (MilliSecond >= 86400)
            {
                day = (int)(MilliSecond / 86400);
                MilliSecond %= 86400;
                Milli -= (day * 86400);
            }
            if (MilliSecond >= 3600)
            {
                hour = (int)(MilliSecond / 3600);
                MilliSecond %= 3600;
                Milli -= (hour * 3600);
            }
            if (MilliSecond >= 60)
            {
                minute = (int)(MilliSecond / 60);
                Milli -= (minute * 60);
            }
            tmpstr = String.Format("{0:02d}/{1:02d}:{2:02d}:{3:02d}{5:00.{4}#}", day, hour, minute, fcnt, Milli);
            return tmpstr;
        }
        /*
        public string SetTimeFloatString(double value)
        {
            int updim, downdim;
            int dimension;
            bool plusvalue;
            string Temp;
            if (value < 0)
            {
                plusvalue = false;
                value = -value;
            }
            else
            {
                plusvalue = true;
            }
            dimension = 0;
            while (true)
            {
                if (value >= 10.0)
                {
                    dimension++;
                    value /= 10.0;
                }
                else if (value < 1.0)
                {
                    if (value < 0.0)
                    {
                        break;
                    }
                    dimension--;
                    value *= 10.0;
                }
                else
                {
                    break;
                }
            }
            int fcnt;
            if (dimension < 4)
                fcnt = 7;
            else
                fcnt = dimension + 4;
            if (plusvalue == false)
                value = -value;
            CString Temp;
            Temp.Format("% .3lf", value);
            updim = Temp.GetLength() - 3;	// Get Upper count
            downdim = fcnt - updim;
            Temp.Format("% *.*lfe%+d", fcnt, downdim, value, dimension);
            return Temp;
        }

        string GetMilliTimeString(double fsecond)
        {
            string str;
            double Milli, IntSec;
            Milli = modf(fsecond, &IntSec);
            long MilliSecond = (long)IntSec;
            int LessMilli = (int)(Milli * 1000 + 0.5);
            int hour = 0, minute = 0;
            //	if(MilliSecond >= 86400) {
            //		day = MilliSecond / 86400;
            //		MilliSecond %= 86400;
            //	}
            if (MilliSecond >= 3600)
            {
                hour = MilliSecond / 3600;
                MilliSecond %= 3600;
            }
            if (MilliSecond >= 60)
            {
                minute = MilliSecond / 60;
                MilliSecond %= 60;
            }
            if (LessMilli)
            {
                if (LessMilli < 10)
                {
                    str.Format("%d:%02d:%02d.00%d", hour, minute, MilliSecond, LessMilli);
                }
                else if (LessMilli < 100)
                {
                    str.Format("%2d:%02d:%02d.0%2d", hour, minute, MilliSecond, LessMilli);
                }
                else
                {
                    str.Format("%2d:%02d:%02d.%3d", hour, minute, MilliSecond, LessMilli);
                }
            }
            else
            {
                str.Format("%2d:%02d:%02d", hour, minute, MilliSecond);
            }
            return str;
        }
        */
        
    }
}
