using NationalInstruments;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace ZiveLab.ZM.Dataview
{
    public class CoTypeString
    {
        static public double UnitApplyConv(double val, char unit, bool bmsg = false)
        {
            double result = val;

            switch (unit)
            {
                case 'k':
                case 'K':
                    result = val * Math.Pow(10, 3);
                    break;

                case 'M':
                    result = val * Math.Pow(10, 6);
                    break;

                case 'G':
                    result = val * Math.Pow(10, 9);
                    break;

                case 'T':
                    result = val * Math.Pow(10, 12);
                    break;

                case '\0':
                    break;

                case 'm':
                    result = val / Math.Pow(10, 3);
                    break;

                case 'u':
                    result = val / Math.Pow(10, 6);
                    break;

                case 'n':
                    result = val / Math.Pow(10, 9);
                    break;

                case 'p':
                    result = val / Math.Pow(10, 12);
                    break;

                default:
                    MessageBox.Show("Invalid SI unit character.", "CoTypeString.UnitApplyConv",MessageBoxButtons.OK,MessageBoxIcon.Error);
                    result = 0.0;
                    break;
            }

            return result;
        }
        
        static public double ConvertSIUnitStringToDouble(string siUnitString,bool bmsg = false)
        {
            double value = 0.0;
            string numericPart = string.Empty;
            char unitPrefix = '\0';

            if (string.IsNullOrWhiteSpace(siUnitString))
            {
                //throw new ArgumentException("Input string cannot be null or empty.");
                if(bmsg) MessageBox.Show("Input string cannot be null or empty.", "CoTypeString.ConvertSIUnitStringToDouble", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return value;
            }
            
            foreach (char c in siUnitString)
            {
                if (char.IsDigit(c) || c == '.' || c == '-' || c == 'e' || c == 'E')
                {
                    numericPart += c;
                }
                else if (c == ' ')
                {
                    continue;
                }
                else
                {
                    unitPrefix = c;
                    break;
                }
            }

            if (!double.TryParse(numericPart, NumberStyles.Float, CultureInfo.InvariantCulture, out value))
            {
                //throw new FormatException("Invalid numeric format.");
                MessageBox.Show("Invalid numeric format.", "CoTypeString.ConvertSIUnitStringToDouble", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return 0.0;
            }

            return UnitApplyConv(value, unitPrefix, bmsg);
        }

        static public string ToEngineeringNotation(double d, string space, string unit, int point = 0)
        {
            double exponent = Math.Log10(Math.Abs(d));

            string pstring = string.Empty;

            if (Math.Abs(d) >= 1)
            {
                switch ((int)Math.Floor(exponent))
                {
                    case 0:
                    case 1:
                    case 2:
                        pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);
                        return string.Format(pstring, d, space, "", unit);
                    case 3:
                    case 4:
                    case 5:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);
                        return string.Format(pstring, (d / 1e3), space, "k", unit);
                    case 6:
                    case 7:
                    case 8:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);
                        return string.Format(pstring, (d / 1e6), space, "M", unit);
                    case 9:
                    case 10:
                    case 11:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);
                        return string.Format(pstring, (d / 1e9), space, "G", unit);
                    case 12:
                    case 13:
                    case 14:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, (d / 1e12), space, "T", unit);
                    case 15:
                    case 16:
                    case 17:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, (d / 1e15), space, "P", unit);
                    case 18:
                    case 19:
                    case 20:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, (d / 1e18), space, "E", unit);
                    case 21:
                    case 22:
                    case 23:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, (d / 1e21), space, "Z", unit);
                    default:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, (d / 1e24), space, "Y", unit);
                }
            }
            else if (Math.Abs(d) > 0)
            {
                switch ((int)Math.Floor(exponent))
                {
                    case -1:
                    case -2:
                    case -3:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);
                        return string.Format(pstring, Math.Round(d * 1e3, 3), space, "m", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e3).ToString()),3) + " m";
                    case -4:
                    case -5:
                    case -6:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);
                        return string.Format(pstring, Math.Round(d * 1e6, 3), space, "u", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e6).ToString()),3) + " μ";
                    case -7:
                    case -8:
                    case -9:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);
                        return string.Format(pstring, Math.Round(d * 1e9, 3), space, "n", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e9).ToString()),3) + " n";
                    case -10:
                    case -11:
                    case -12:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, Math.Round(d * 1e12, 3), space, "p", unit);
                    //return string.Format(pstring, d * 1e12, space, "p"); ;
                    case -13:
                    case -14:
                    case -15:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, Math.Round(d * 1e15, 3), space, "f", unit);
                    //return (d * 1e15).ToString() + " f";
                    case -16:
                    case -17:
                    case -18:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, Math.Round(d * 1e18, 3), space, "a", unit);
                    //return (d * 1e15).ToString() + " a";
                    case -19:
                    case -20:
                    case -21:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, Math.Round(d * 1e21, 3), space, "z", unit);
                    //return (d * 1e15).ToString() + " z";
                    default:
                        if (point > 1)
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point - 2);
                        else
                            pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", point);

                        return string.Format(pstring, Math.Round(d * 1e24, 3), space, "y", unit);
                        //return (d * 1e15).ToString() + " y";
                }
            }
            else
            {
                pstring = string.Format("{{0:F{0}}}{{1}}{{2}}{{3}}", 3);

                return string.Format(pstring, 0, space, "", unit);
            }
        }
        static public string ToEngineeringNotationII(double d, string space, string unit)
        {
            double exponent = Math.Log10(Math.Abs(d));

            string pstring = string.Empty;

            if (Math.Abs(d) >= 1)
            {
                switch ((int)Math.Floor(exponent))
                {
                    case 0:
                    case 1:
                    case 2:
                        return string.Format("{0:0.0###}{1}{2}{3}", d, space, "", unit);
                    case 3:
                    case 4:
                    case 5:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e3), space, "k", unit);
                    case 6:
                    case 7:
                    case 8:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e6), space, "M", unit);
                    case 9:
                    case 10:
                    case 11:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e9), space, "G", unit);
                    case 12:
                    case 13:
                    case 14:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e12), space, "T", unit);
                    case 15:
                    case 16:
                    case 17:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e15), space, "P", unit);
                    case 18:
                    case 19:
                    case 20:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e18), space, "E", unit);
                    case 21:
                    case 22:
                    case 23:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e21), space, "Z", unit);
                    default:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e24), space, "Y", unit);
                }
            }
            else if (Math.Abs(d) > 0)
            {
                switch ((int)Math.Floor(exponent))
                {
                    case -1:
                    case -2:
                    case -3:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e3, 3), space, "m", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e3).ToString()),3) + " m";
                    case -4:
                    case -5:
                    case -6:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e6, 3), space, "u", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e6).ToString()),3) + " μ";
                    case -7:
                    case -8:
                    case -9:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e9, 3), space, "n", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e9).ToString()),3) + " n";
                    case -10:
                    case -11:
                    case -12:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e12, 3), space, "p", unit);
                    //return string.Format(pstring, d * 1e12, space, "p"); ;
                    case -13:
                    case -14:
                    case -15:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e15, 3), space, "f", unit);
                    //return (d * 1e15).ToString() + " f";
                    case -16:
                    case -17:
                    case -18:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e18, 3), space, "a", unit);
                    //return (d * 1e15).ToString() + " a";
                    case -19:
                    case -20:
                    case -21:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e21, 3), space, "z", unit);
                    //return (d * 1e15).ToString() + " z";
                    default:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e24, 3), space, "y", unit);
                        //return (d * 1e15).ToString() + " y";
                }
            }
            else
            {
                return string.Format("{0:0.0###}{1}{2}{3}", 0, space, "", unit);
            }
        }

        static public string ToEngineeringNotationIII(double d, string space, string unit)
        {
            double exponent = Math.Log10(Math.Abs(d));

            string pstring = string.Empty;

            if (Math.Abs(d) >= 1)
            {
                switch ((int)Math.Floor(exponent))
                {
                    case 0:
                    case 1:
                    case 2:
                        return string.Format("{0:0.0###}{1}{2}{3}", d, space, "", unit);
                    case 3:
                    case 4:
                    case 5:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e3), space, "k", unit);
                    case 6:
                    case 7:
                    case 8:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e6), space, "M", unit);
                    case 9:
                    case 10:
                    case 11:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e9), space, "G", unit);
                    case 12:
                    case 13:
                    case 14:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e12), space, "T", unit);
                    case 15:
                    case 16:
                    case 17:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e15), space, "P", unit);
                    case 18:
                    case 19:
                    case 20:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e18), space, "E", unit);
                    case 21:
                    case 22:
                    case 23:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e21), space, "Z", unit);
                    default:
                        return string.Format("{0:0.0###}{1}{2}{3}", (d / 1e24), space, "Y", unit);
                }
            }
            else if (Math.Abs(d) > 0)
            {
                switch ((int)Math.Floor(exponent))
                {
                    case -1:
                    case -2:
                    case -3:
                        return string.Format("{0:0.0}{1}{2}{3}", Math.Round(d * 1e3, 3), space, "m", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e3).ToString()),3) + " m";
                    case -4:
                    case -5:
                    case -6:
                        return string.Format("{0:0}{1}{2}{3}", Math.Round(d * 1e6, 3), space, "u", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e6).ToString()),3) + " μ";
                    case -7:
                    case -8:
                    case -9:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e9, 3), space, "n", unit);
                    //return Math.Round(Convert.ToDouble((d * 1e9).ToString()),3) + " n";
                    case -10:
                    case -11:
                    case -12:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e12, 3), space, "p", unit);
                    //return string.Format(pstring, d * 1e12, space, "p"); ;
                    case -13:
                    case -14:
                    case -15:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e15, 3), space, "f", unit);
                    //return (d * 1e15).ToString() + " f";
                    case -16:
                    case -17:
                    case -18:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e18, 3), space, "a", unit);
                    //return (d * 1e15).ToString() + " a";
                    case -19:
                    case -20:
                    case -21:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e21, 3), space, "z", unit);
                    //return (d * 1e15).ToString() + " z";
                    default:
                        return string.Format("{0:0.0###}{1}{2}{3}", Math.Round(d * 1e24, 3), space, "y", unit);
                        //return (d * 1e15).ToString() + " y";
                }
            }
            else
            {
                return string.Format("{0:0.0###}{1}{2}{3}", 0, space, "", unit);
            }
        }

        static public string TimeToString(TimeSpan timespan)
        {
            string result = "";

            if (timespan.TotalMinutes < 1)
                result = string.Format("{0:00.00#}", timespan.TotalSeconds);
            else if (timespan.TotalHours < 1)
                result = string.Format("{0:00}:{1:00.00#}", timespan.Minutes, timespan.TotalSeconds - ((long)timespan.TotalMinutes * 60));
            else
                result = string.Format("{0:##00}:{1:00}:{2:00.00#}",
                    (long)timespan.TotalHours, timespan.Minutes, timespan.TotalSeconds - ((long)timespan.TotalMinutes * 60));

            return result;
        }

        static public string TimeToStringII(TimeSpan timespan)
        {
            string result = "";

            result = string.Format("{0:##00}:{1:00}:{2:00.000#}", (long)timespan.TotalHours, timespan.Minutes, timespan.TotalSeconds - ((long)timespan.TotalMinutes * 60));

            return result;
        }

        /*static public string TimeToStringIII(TimeSpan timespan)
        {
            string result = "";

            result = string.Format("{0:##00}:{1:00}:{2:00}", (long)timespan.TotalHours, timespan.Minutes, timespan.Seconds);

            return result;
        }*/

        static public string TimeToStringIII(TimeSpan timespan, bool milisec = false)
        {
            string result = "";

            if(milisec)
                result = string.Format("{0:##00}:{1:00}:{2:00}.{3:000}", (long)timespan.TotalHours, timespan.Minutes, timespan.Seconds, timespan.Milliseconds);
            else
                result = string.Format("{0:##00}:{1:00}:{2:00}", (long)timespan.TotalHours, timespan.Minutes, timespan.Seconds);

            return result;
        }

        static public string TimeToStringIV(TimeSpan timespan)
        {
            string result = "";

            if (timespan.Days > 0 || timespan.Hours > 0)
                result = string.Format("{0:##00}:{1:00}:{2:00}", (long)timespan.TotalHours, timespan.Minutes, timespan.Seconds);
            else
                result = string.Format("{0:00}:{1:00}", timespan.Minutes, timespan.Seconds);

            return result;
        }

        static public string TimeToStringIII(DateTime datetime)
        {
            string result = "";

            result = string.Format("{0:##00}:{1:00}:{2:00}.{3:000}", (long)datetime.Hour, datetime.Minute, datetime.Second, datetime.Millisecond);

            return result;
        }

        static public string TimeSpanToString(TimeSpan ts, int timeFormat)
        {
            string result = string.Empty;

            switch (timeFormat)
            {
                case 0:
                    result = string.Format(CultureInfo.InvariantCulture, "{0}:{1:D2}:{2:D2}:{3:D2}.{4:D3}", ts.Days, ts.Hours, ts.Minutes, ts.Seconds, ts.Milliseconds);
                    break;
                case 1:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F5}", ts.TotalSeconds);
                    break;
                case 2:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:E3}", ts.TotalSeconds);
                    break;
                default:
                    result = string.Format(CultureInfo.InvariantCulture, "{0:F5}", ts.TotalSeconds);
                    break;
            }

            return result;
        }

        static public TimeSpan StringToTimeSpan(string time)
        {
            char[] cTime = new char[time.Length + 1];

            Array.Copy(time.ToCharArray(), cTime, time.Length);
            cTime[time.Length] = (char)0x00;

            double[] itemValue = new double[3];
            int itemcount, currentvalue;
            double dotvalue;
            char c;
            double timevalue, multiplevalue;

            itemValue[0] = itemValue[1] = itemValue[2] = 0;
            currentvalue = 0;

            itemcount = 0;
            int idx = 0;

            for (itemcount = 0; itemcount < itemValue.Length; itemcount++)
            {
                dotvalue = 0.0;
                idx = SearchNumber(cTime, idx);
                c = cTime[idx++];

                if (c == 0)
                    break;

                while (true)
                {
                    currentvalue *= 10;
                    currentvalue += (c - 0x30);
                    dotvalue *= 10;

                    while (true)
                    {
                        c = cTime[idx];
                        if (c == '.')
                        {
                            dotvalue = 1;
                            idx++;
                        }
                        else
                            break;
                    }

                    if (Char.IsDigit(c))
                    {
                        idx++;
                        continue;
                    }

                    break;
                }

                if (dotvalue != 0)
                    itemValue[itemcount] = currentvalue / dotvalue;
                else
                    itemValue[itemcount] = currentvalue;

                currentvalue = 0;
            }

            timevalue = 0.0;
            multiplevalue = 1.0;

            for (int i = (itemcount - 1); i >= 0; i--)
            {
                timevalue += itemValue[i] * multiplevalue;
                multiplevalue *= 60.0;
            }

            return new TimeSpan((long)(timevalue * 1000 * 1000 * 10));
        }

        static public double StringToDoubleTime(string time)
        {
            char[] cTime = new char[time.Length + 1];

            Array.Copy(time.ToCharArray(), cTime, time.Length);
            cTime[time.Length] = (char)0x00;

            double[] itemValue = new double[3];
            int itemcount, currentvalue;
            double dotvalue;
            char c;
            double timevalue, multiplevalue;

            itemValue[0] = itemValue[1] = itemValue[2] = 0;
            currentvalue = 0;

            itemcount = 0;
            int idx = 0;

            for (itemcount = 0; itemcount < itemValue.Length; itemcount++)
            {
                dotvalue = 0.0;
                idx = SearchNumber(cTime, idx);
                c = cTime[idx++];

                if (c == 0)
                    break;

                while (true)
                {
                    currentvalue *= 10;
                    currentvalue += (c - 0x30);
                    dotvalue *= 10;

                    while (true)
                    {
                        c = cTime[idx];
                        if (c == '.')
                        {
                            dotvalue = 1;
                            idx++;
                        }
                        else
                            break;
                    }

                    if (Char.IsDigit(c))
                    {
                        idx++;
                        continue;
                    }

                    break;
                }

                if (dotvalue != 0)
                    itemValue[itemcount] = currentvalue / dotvalue;
                else
                    itemValue[itemcount] = currentvalue;

                currentvalue = 0;
            }

            timevalue = 0.0;
            multiplevalue = 1.0;

            for (int i = (itemcount - 1); i >= 0; i--)
            {
                timevalue += itemValue[i] * multiplevalue;
                multiplevalue *= 60.0;
            }

            return timevalue;
        }

        static public long StringToMillisecond(string time)
        {
            char[] cTime = new char[time.Length + 1];

            Array.Copy(time.ToCharArray(), cTime, time.Length);
            cTime[time.Length] = (char)0x00;

            double[] itemValue = new double[3];
            int itemcount, currentvalue;
            double dotvalue;
            char c;
            double timevalue, multiplevalue;

            itemValue[0] = itemValue[1] = itemValue[2] = 0;
            currentvalue = 0;

            itemcount = 0;
            int idx = 0;

            for (itemcount = 0; itemcount < itemValue.Length; itemcount++)
            {
                dotvalue = 0.0;
                idx = SearchNumber(cTime, idx);
                c = cTime[idx++];

                if (c == 0)
                    break;

                while (true)
                {
                    currentvalue *= 10;
                    currentvalue += (c - 0x30);
                    dotvalue *= 10;

                    while (true)
                    {
                        c = cTime[idx];
                        if (c == '.')
                        {
                            dotvalue = 1;
                            idx++;
                        }
                        else
                            break;
                    }

                    if (Char.IsDigit(c))
                    {
                        idx++;
                        continue;
                    }

                    break;
                }

                if (dotvalue != 0)
                    itemValue[itemcount] = currentvalue / dotvalue;
                else
                    itemValue[itemcount] = currentvalue;

                currentvalue = 0;
            }

            timevalue = 0.0;
            multiplevalue = 1.0;

            for (int i = (itemcount - 1); i >= 0; i--)
            {
                timevalue += itemValue[i] * multiplevalue;
                multiplevalue *= 60.0;
            }

            return (long)(timevalue * 1000);
        }

        static public string DoubleToString(double value, int point = 4)
        {
            if (double.IsInfinity(value))
                return "Infinity";

            //int updim, downdim;
            int dimension;
            bool plusvalue;
            double ZERODATA = 0.00000000000000000000000000000001;

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
                if (value >= 1000.0)
                {
                    dimension += 3;
                    value /= 1000.0;
                }
                else if (value < 1.0)
                {
                    if (value < ZERODATA)
                    {
                        break;
                    }
                    dimension -= 3;
                    value *= 1000.0;
                }
                else
                {
                    break;
                }
            }

            if (plusvalue == false)
                value = -value;

            string format = "{0:##0.";

            for (int i = 0; i < 5; i++)
            {
                if (point > i)
                    format += "0";
                else
                    format += "#";
            }

            format += (dimension < 0) ? "}e{1}" : "}e+{1}";

            return string.Format(format, value, dimension);
        }

        static public string DoubleToSIUnitString(double value, string unit, out int exp)
        {
            string result = string.Empty;
            int resexp = 0;

            double exponent = Math.Log10(Math.Abs(value));
            if (Math.Abs(value) >= 1)
            {
                switch ((int)Math.Floor(exponent))
                {
                    case 0:
                    case 1:
                    case 2:
                        resexp = 0;
                        break;
                    case 3:
                    case 4:
                    case 5:
                        resexp = -3;
                        result = "k";
                        break;
                    case 6:
                    case 7:
                    case 8:
                        resexp = -6;
                        result = "M";
                        break;
                    case 9:
                    case 10:
                    case 11:
                        resexp = -9;
                        result = "G";
                        break;
                    case 12:
                    case 13:
                    case 14:
                        resexp = -12;
                        result = "T";
                        break;
                    case 15:
                    case 16:
                    case 17:
                        resexp = -15;
                        result = "P";
                        break;
                    case 18:
                    case 19:
                    case 20:
                        resexp = -18;
                        result = "E";
                        break;
                    case 21:
                    case 22:
                    case 23:
                        resexp = -21;
                        result = "Z";
                        break;
                    default:
                        resexp = -24;
                        result = "Y";
                        break;
                }
            }
            else if (Math.Abs(value) > 0)
            {
                switch ((int)Math.Floor(exponent))
                {
                    case -1:
                    case -2:
                    case -3:
                        resexp = 3;
                        result = "m";
                        break;
                    case -4:
                    case -5:
                    case -6:
                        resexp = 6;
                        result = "u";
                        break;
                    case -7:
                    case -8:
                    case -9:
                        resexp = 9;
                        result = "n";
                        break;
                    case -10:
                    case -11:
                    case -12:
                        resexp = 12;
                        result = "p";
                        break;
                    case -13:
                    case -14:
                    case -15:
                        resexp = 15;
                        result = "f";
                        break;
                    case -16:
                    case -17:
                    case -18:
                        resexp = 18;
                        result = "a";
                        break;
                    case -19:
                    case -20:
                    case -21:
                        resexp = 21;
                        result = "z";
                        break;
                    default:
                        resexp = 24;
                        result = "y";
                        break;
                }
            }

            exp = resexp;

            return result + unit;
        }

        static public string MacToHyphenString(PhysicalAddress mac)
        {
            string result = string.Empty;

            byte[] macbytes = mac.GetAddressBytes();

            for(int i = 0; i < macbytes.Length; i++)
            {
                result += string.Format("{0:X2}", macbytes[i]);
                if (i != macbytes.Length - 1)
                    result += "-";
            }

            return result;
        }

        static private int SearchNumber(char[] array, int offset)
        {
            char c;

            while (true)
            {
                c = array[offset];
                if (c == 0)
                    return offset;

                if (Char.IsDigit(c))
                {
                    return offset;
                }

                offset++;
            }
        }

        public static byte[] StringToByteArray(string hex)
        {
            return Enumerable.Range(0, hex.Length)
                             .Where(x => x % 2 == 0)
                             .Select(x => Convert.ToByte(hex.Substring(x, 2), 16))
                             .ToArray();
        }

        static public int ExtractInt32FromString(string text)
        {
            int result;

            if(int.TryParse(Regex.Replace(text, @"\D", ""), out result))
            {
                return result;
            }

            return -1000;
        }

        static public int GetStringByteLength(string text)
        {
            byte[] barr = Encoding.Default.GetBytes(text);

            return barr.Length;
        }
    }
}
