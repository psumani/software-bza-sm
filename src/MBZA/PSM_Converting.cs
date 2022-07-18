using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using SM_Comm;
using System.Reflection;
using System.ComponentModel;

namespace SMLib
{
    class SM_Description : Attribute
    {

        public string Text;

        public SM_Description(string text)
        {

            Text = text;

        }

    }

    public class SM_Converting
    {
        public static string SM_GetDescription(Enum en)
        {

            Type type = en.GetType();

            MemberInfo[] memInfo = type.GetMember(en.ToString());

            if (memInfo != null && memInfo.Length > 0)
            {

                object[] attrs = memInfo[0].GetCustomAttributes(typeof(SM_Description), false);

                if (attrs != null && attrs.Length > 0)

                    return ((SM_Description)attrs[0]).Text;

            }

            return en.ToString();

        }

        public static byte Hex2Bin(ref byte[] data)
        {
            int j;
            //	        char* m_pOffset = pOffset;
            byte digit;
            byte ret;
            //	        char* pChar = pcHex;

            j = 0;

            if (data[j] >= '0' && data[j] <= '9') digit = (byte)(data[j] - '0');
            else if (data[j] >= 'a' && data[j] <= 'f') digit = (byte)(data[j] - 'a' + 10);
            else if (data[j] >= 'A' && data[j] <= 'F') digit = (byte)(data[j] - 'A' + 10);
            else digit = 0;
            ret = (byte)(digit << 4);

            //           j++;//multibyte - space skip
            j++;

            if (data[j] >= '0' && data[j] <= '9') digit = (byte)(data[j] - '0');
            else if (data[j] >= 'a' && data[j] <= 'f') digit = (byte)(data[j] - 'a' + 10);
            else if (data[j] >= 'A' && data[j] <= 'F') digit = (byte)(data[j] - 'A' + 10);
            else digit = 0;
            ret |= digit;

            return ret;
        }

        public static void Hex2Bin(ref byte[] pChar, ref byte[] m_pOffset, int nLen)
        {
            int i;
            int j;
            //	        char* m_pOffset = pOffset;
            byte mDigit;
            //	        char* pChar = pcHex;

            j = 0;
            for (i = 0; i < nLen; i++)
            {
                if (pChar[j] >= '0' && pChar[j] <= '9') mDigit = (byte)(pChar[j] - '0');
                else if (pChar[j] >= 'a' && pChar[j] <= 'f') mDigit = (byte)(pChar[j] - 'a' + 10);
                else if (pChar[j] >= 'A' && pChar[j] <= 'F') mDigit = (byte)(pChar[j] - 'A' + 10);
                else mDigit = 0;
                m_pOffset[i] = (byte)(mDigit << 4);

                //		        j ++;//multibyte - space skip
                j++;

                if (pChar[j] >= '0' && pChar[j] <= '9') mDigit = (byte)(pChar[j] - '0');
                else if (pChar[j] >= 'a' && pChar[j] <= 'f') mDigit = (byte)(pChar[j] - 'a' + 10);
                else if (pChar[j] >= 'A' && pChar[j] <= 'F') mDigit = (byte)(pChar[j] - 'A' + 10);
                else mDigit = 0;
                m_pOffset[i] |= mDigit;
                //		        j ++; //multibyte - space skip
                j++;
            }
        }

        public static Int64 DateTimeToCTime(DateTime date)
        {
            TimeSpan span;
            DateTime t = new DateTime(1970, 1, 1);

            span = date.Subtract(TimeZone.CurrentTimeZone.ToLocalTime(t));

            return Convert.ToInt64(span.TotalSeconds);

        }
/*
        public static Int64 DateTimeToCTime(DateTime date)
        {
            Int64 span;
            DateTime t = new DateTime(1970, 1, 1);
            span = (Int64)((date - t).TotalSeconds / TimeSpan.TicksPerSecond);
            return span; //Convert.ToInt64((date - t).TotalSeconds)
        }
        */
        public static DateTime CTimeToDateTime(Int64 CTime)
        {
            TimeSpan span = TimeSpan.FromTicks(CTime * TimeSpan.TicksPerSecond);
            DateTime t = new DateTime(1970, 1, 1).Add(span);
            return TimeZone.CurrentTimeZone.ToLocalTime(t);
        }

        public static char HexAscToChar(string Text)
        {
            int n1;
            int i;
            int nRet;
            char ch;

            nRet = 0;

            for (i = 0; i < 2; i++)
            {
                ch = Text.ElementAt(i);
                switch (ch)
                {
                    case '0': n1 = 0; break;
                    case '1': n1 = 1; break;
                    case '2': n1 = 2; break;
                    case '3': n1 = 3; break;
                    case '4': n1 = 4; break;
                    case '5': n1 = 5; break;
                    case '6': n1 = 6; break;
                    case '7': n1 = 7; break;
                    case '8': n1 = 8; break;
                    case '9': n1 = 9; break;
                    case 'A': n1 = 10; break;
                    case 'B': n1 = 11; break;
                    case 'C': n1 = 12; break;
                    case 'D': n1 = 13; break;
                    case 'E': n1 = 14; break;
                    case 'F': n1 = 15; break;
                    default: n1 = 0; break;
                }
                if (i == 0) n1 = n1 * 16;
                nRet += n1;
            }
            return (char)nRet;
        }

        public static ushort HexStrToNum(char sChar)
        {
            ushort nLI;

            switch (sChar)
            {
                case '0': nLI = 0; break;
                case '1': nLI = 1; break;
                case '2': nLI = 2; break;
                case '3': nLI = 3; break;
                case '4': nLI = 4; break;
                case '5': nLI = 5; break;
                case '6': nLI = 6; break;
                case '7': nLI = 7; break;
                case '8': nLI = 8; break;
                case '9': nLI = 9; break;
                case 'A': nLI = 10; break;
                case 'B': nLI = 11; break;
                case 'C': nLI = 12; break;
                case 'D': nLI = 13; break;
                case 'E': nLI = 14; break;
                case 'F': nLI = 15; break;
                default: nLI = 0; break;
            }
            return nLI;
        }

    }
}
