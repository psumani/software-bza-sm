using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ZiveLab.Primer
{
    public static class StringExtension
    {
        #region Mid, Left, Right

        public static string Mid(this string param, int Start, int Length)
        {
            return param.Substring(Start, Length);
        }

        public static string Mid(this string param, int Start)
        {
            return param.Substring(Start);
        }

        public static string Left(this string param, int Length)
        {
            return param.Substring(0, Length);
        }

        public static string Right(string param, int Length)
        {
            return param.Substring(param.Length - Length, Length);
        }

        #endregion Mid, Left, Right

        #region Convert numeric <-> string

        public static List<string> ToText(this List<object> Values, string FormatSpecifier = "%#.6g", string SymbolForNaN = "-", string SymbolForPositiveInfinity = "Inf", string SymbolForNagativeInfinity = "-Inf")
        {
            List<string> resultList = new List<string>();

            foreach (object value in Values)
                resultList.Add(value.ToText(FormatSpecifier, SymbolForNaN, SymbolForPositiveInfinity, SymbolForNagativeInfinity));

            return resultList;
        }
        public static List<string> ToText(this List<double> Values, string FormatSpecifier = "%#.6g", string SymbolForNaN = "-", string SymbolForPositiveInfinity = "Inf", string SymbolForNagativeInfinity = "-Inf")
        {
            List<string> resultList = new List<string>();

            foreach (double value in Values)
                resultList.Add(value.ToText(FormatSpecifier, SymbolForNaN, SymbolForPositiveInfinity, SymbolForNagativeInfinity));

            return resultList;
        }
        public static string ToText(this object Value, string FormatSpecifier = "%#.6g", string SymbolForNaN = "-", string SymbolForPositiveInfinity = "Inf", string SymbolForNagativeInfinity = "-Inf")
        {
            NumericFormatter NF = new NumericFormatter
            {
                SymbolForNaN = SymbolForNaN,
                SymbolForPositiveInfinity = SymbolForPositiveInfinity,
                SymbolForNegativeInfinity = SymbolForNagativeInfinity
            };
            return string.Format(NF, "{0:" + FormatSpecifier + "}", Value);
        }
        public static string ToText(this double Value, string FormatSpecifier = "%#.6g", string SymbolForNaN = "-", string SymbolForPositiveInfinity = "Inf", string SymbolForNagativeInfinity = "-Inf")
        {
            NumericFormatter NF = new NumericFormatter
            {
                SymbolForNaN = SymbolForNaN,
                SymbolForPositiveInfinity = SymbolForPositiveInfinity,
                SymbolForNegativeInfinity = SymbolForNagativeInfinity
            };
            return string.Format(NF, "{0:" + FormatSpecifier + "}", Value);
        }

        public static List<double> ToNumeric(this List<object> Values)
        {
            List<double> resultList = new List<double>();

            foreach (object value in Values)
                resultList.Add(value.ToNumeric());

            return resultList;
        }
        public static List<double?> ToNumeric(this List<string> Values)
        {
            List<double?> resultList = new List<double?>();

            foreach (string value in Values)
                resultList.Add(value.ToNumeric());

            return resultList;
        }
        public static double ToNumeric(this object Value)
        {
            if (Value == null)
                return double.NaN;
            else if (Value.IsNumeric())
                return Convert.ToDouble(Value);
            else if (Value.IsNumeric(true))
                return Value.ToString().ToNumeric();
            else
                return double.NaN;
        }
        public static double ToNumeric(this string Value, string format = "%f")
        {
            if (Value == null)
                return double.NaN;

            NumericFormatter info = new NumericFormatter();
            double dbl;
            if (info.TryParse(format, Value, out dbl))
                return dbl;
            else
                return double.NaN;
        }

        public static string ToDBString(this string str)
        {
            return (str == null) ? "" : str.Replace("'", "''");
        }
        public static string ToDBString(this bool str)
        {
            return (str) ? "Y" : "N";
        }
        public static string ToDBString(this DateTime datetime)
        {
            if (datetime == default(DateTime))
                return "''";
            else
            {
                string str = datetime.ToString("yyyy-MM-dd HH:mm:ss");
                return new StringBuilder().AppendFormat("TO_DATE('{0}', 'yyyy-mm-dd hh24:mi:ss')", str).ToString();
            }
        }

        public static string ToOrdinalString(this int num)
        {
            if (num <= 0) return num.ToString();

            switch (num % 100)
            {
                case 11:
                case 12:
                case 13:
                    return num + "th";
            }

            switch (num % 10)
            {
                case 1:
                    return num + "st";
                case 2:
                    return num + "nd";
                case 3:
                    return num + "rd";
                default:
                    return num + "th";
            }
        }
        public static string ToXMLString(this string str)
        {
            List<string> lines = str.TextToLines();

            return lines.ArryToText("<br />");
        }

        /// <summary>
        /// <para>Converts the numeric value of this object to its equivalent string representation and remains, using the specified format.</para>
        /// <para>Avaialable conversion code is 'f' or 'p'. i.e. "%.3pV"</para>
        /// </summary>
        /// <param name="value">Numeric value</param>
        /// <param name="format">Format specifier</param>
        /// <returns></returns>
        public static Tuple<string, string> ToTextTuple(this object value, string format = "%.6g")
        {
            if (value.IsNumeric())
            {
                try
                {
                    char[] letters = value.ToText(format).ToCharArray();
                    char[] first;
                    char[] second;

                    for (int i = 0; i < letters.Length; i++)
                    {
                        if (Char.IsLetter(letters[i]) || letters[i] >= 128)
                        {
                            first = new char[i];
                            second = new char[letters.Length - i];

                            first = letters.Take(i).ToArray();
                            second = letters.Skip(i).ToArray();
                            return new Tuple<string, string>(new string(first), new string(second));
                        }
                    }
                    return new Tuple<string, string>(new string(letters), "");
                }
                catch
                {
                    return new Tuple<string, string>(value.ToString(), "");
                }
            }
            else
                return new Tuple<string, string>(value.ToString(), "");
        }

        #endregion Convert numeric <-> string

        #region Convert i to ABC

        public static string Convert_i_to_ABC(this int i) // Change 0, 1, 2, ... to A, B, C, ... AA, AB, AC, ...
        {
            if (i < 0)
                return "";
            else if (i < 26)
                return ((char)(i + 65)).ToString();
            else
            {
                string result = "";
                int R, Q;

                Q = (int)Math.Floor((double)i / 26);
                R = i - 26 * Q;

                result = ((char)(R + 65)).ToString() + result;

                if (Q > 0)
                    result = Convert_i_to_ABC(Q - 1) + result;

                return result;
            }
        }

        #endregion Convert i to ABC

        public static bool Contains(this string source, string toCheck, StringComparison comp)
        {
            return source.IndexOf(toCheck, comp) >= 0;
        }

        public static string ToTimeAgo(this DateTime dateTime, bool showTime = true)
        {
            StringBuilder result = new StringBuilder();
            string abbDayName = DateTimeFormatInfo.CurrentInfo.GetAbbreviatedDayName(dateTime.DayOfWeek);
            string dateString = dateTime.ToString("d"); //dateTime.ToShortDateString();
            string timeString = dateTime.ToString("HH:mm");

            DateTime now = DateTime.Now;//.AddDays(3);
            DateTime yesterday = now.AddDays(-1);
            DateTime theDayOfYesterday = now.AddDays(-2);
            DateTime mondayOfThisWeek = now.AddDays(-Convert.ToInt32(now.DayOfWeek));
            DateTime mondayOfLastWeek = now.AddDays(-(int)now.DayOfWeek - 6);
            int days = dateTime.Subtract(now).Days;

            bool IsThisYear = (dateTime.Year == now.Year);
            bool IsThisMonth = IsThisYear && (dateTime.Month == now.Month);
            bool IsLastWeek = (dateTime.Subtract(mondayOfLastWeek).Days) >= 0;
            bool IsLast7Days = (days > -7 && days < 0);
            bool IsThisWeek = (dateTime.Subtract(mondayOfThisWeek).Days) >= 0;
            bool IsTheDayBeforeYesterday = (dateString == now.AddDays(-2).ToString("d")); //.ToShortDateString());
            bool IsYesterday = (dateString == now.AddDays(-1).ToString("d")); //.ToShortDateString();
            bool IsToday = (dateString == now.ToString("d")); //.ToShortDateString();

            if (!showTime) timeString = "";

            if (IsToday)
            {
                result.AppendFormat("(Today) {0}", timeString);
            }
            else if (IsYesterday)
            {
                result.AppendFormat("(Yesterday) {0}", timeString);
            }
            else if (IsTheDayBeforeYesterday)
            {
                result.AppendFormat("(The day before yesterday) {0}", timeString);
            }
            else if (IsLast7Days)
            {
                result.AppendFormat("({0}) {1}", abbDayName, timeString);
            }
            else if (IsThisYear)
            {
                result.AppendFormat("{0}-{1} ({2}) {3}", dateTime.Month, dateTime.Day, abbDayName, timeString);
            }
            else
            {
                result.AppendFormat("{0}-{1}-{2}", dateTime.Year, dateTime.Month, dateTime.Day);
            }

            return result.ToString();
        }

        public static bool IsValid(this string str) //IsNeitherNullNorEmpty
        {
            return !string.IsNullOrWhiteSpace(str);
        }

        public static string TruncateLongPath(this string path, int maxLength = 30, char delimiter = '\\')
        {
            maxLength -= 3; //account for delimiter spacing

            if (path.Length <= maxLength)
            {
                return path;
            }

            string final = path;
            List<string> parts;

            int loops = 0;
            while (loops++ < 100)
            {
                parts = path.Split(delimiter).ToList();
                parts.RemoveRange(parts.Count - 1 - loops, loops);
                if (parts.Count == 1)
                {
                    return parts.Last();
                }

                parts.Insert(parts.Count - 1, "...");
                final = string.Join(delimiter.ToString(), parts);
                if (final.Length < maxLength)
                {
                    return final;
                }
            }

            return path.Split(delimiter).ToList().Last();
        }

        public static string StripPrefix(this string text, string prefix)
        {
            if (text == null)
                return "";
            else
                return text.StartsWith(prefix) ? text.Substring(prefix.Length) : text;
        }

        public static string StripSuffix(this string text, string suffix)
        {
            if (text == null)
                return "";
            else
                return text.EndsWith(suffix) ? text.Substring(0, text.Length - suffix.Length) : text;
        }

        public static string[] SplitWords(this string s)
        {
            if (s == null) s = "";
            //
            // Split on all non-word characters.
            // ... Returns an array of all the words.
            //
            return Regex.Split(s, @"\W+");
            // @      special verbatim string syntax
            // \W+    one or more non-word characters together
        }

        public static string SplitLineToMultiline(this string input, int rowLength = 300)
        {
            StringBuilder result = new StringBuilder();
            StringBuilder line = new StringBuilder();

            Stack<string> stack = new Stack<string>(input.Split(' '));

            while (stack.Count > 0)
            {
                var word = stack.Pop();
                if (word.Length > rowLength)
                {
                    string head = word.Substring(0, rowLength);
                    string tail = word.Substring(rowLength);

                    word = head;
                    stack.Push(tail);
                }

                if (line.Length + word.Length > rowLength)
                {
                    result.AppendLine(line.ToString());
                    line.Clear();
                }

                line.Append(word + " ");
            }

            result.Append(line);
            return result.ToString();
        }

        public static string ArryToText(this List<string> array, string separator = "\t")
        {
            string result = "";

            try
            {
                result = string.Join(separator, array);
            }
            catch { }

            return result;
        }

        public static string ArryToText(this string[] array, string separator = "\t")
        {
            string result = "";

            try
            {
                result = string.Join(separator, array);
            }
            catch { }

            return result;
        }

        public static string ArryToText(this List<object> array, string separator = "\t")
        {
            string result = "";

            try
            {
                result = string.Join(separator, array);
            }
            catch { }

            return result;
        }

        public static List<string> TextToArray(this string text)
        {
            List<string> words = new List<string>();

            try
            {
                words = text.Split(new char[] { ',', ';', '\t', '\r', '\n' }).ToList();

                for (int i = words.Count - 1; i >= 0; i--)
                {
                    words[i] = words[i].Trim();
                    if (words[i] == "")
                        words.RemoveAt(i);
                }
            }
            catch
            {
            }

            return words;
        }

        public static List<string> TextToLines(this string text)
        {
            List<string> lines = new List<string>();

            try
            {
                lines = text.Split(new string[] { Environment.NewLine }.ToArray(), StringSplitOptions.None).ToList();
                lines.ForEach(s => s = s.Trim());
            }
            catch { }

            return lines;
        }

        public static List<T> RemoveDuplicates<T>(this List<T> sourceList)
        {
            List<T> resultList = new List<T>();

            try
            {
                for (int i = 0; i < sourceList.Count; i++)
                    if (Search(resultList, sourceList[i]) < 0)
                        resultList.Add(sourceList[i]);
            }
            catch { }

            return resultList;
        }

        public static int Search<T>(List<T> sourceList, T element, int startIndex = 0)
        {
            int result = -1;

            try
            {
                result = sourceList.IndexOf(element, startIndex);
            }
            catch { }

            return result;
        }

        public static string ReplaceNewLine(this string text, string replacement = "")
        {
            string result = "";

            try
            {
                result = Regex.Replace(text, @"\t|\n|\r", replacement);
            }
            catch { }

            return result;
        }

        public static string FirstLetterOf(this string text)
        {
            if (!text.IsValid())
                return "";
            else
            {
                string src = text.Trim().ToUpper();
                char ch = src[0];
                char result;

                if (ch < 'ㄱ')
                    result = ch;
                else if (ch >= 'ㄱ' && ch <= 'ㅎ')
                    result = ch;
                else if (ch < '나')
                    result = '가';
                else if (ch < '다')
                    result = '나';
                else if (ch < '라')
                    result = '다';
                else if (ch < '마')
                    result = '라';
                else if (ch < '바')
                    result = '마';
                else if (ch < '사')
                    result = '바';
                else if (ch < '아')
                    result = '사';
                else if (ch < '자')
                    result = '아';
                else if (ch < '차')
                    result = '자';
                else if (ch < '카')
                    result = '차';
                else if (ch < '타')
                    result = '카';
                else if (ch < '파')
                    result = '타';
                else if (ch < '하')
                    result = '파';
                else
                    result = '하';

                return result.ToString();
            }
        }

        public static string RandomDocNumber()
        {
            DateTime dt = DateTime.Now;

            string yr = (dt.Year - 2000).ToString("X");
            yr = yr.Substring(yr.Length - 1);
            string moday = ("00" + dt.DayOfYear.ToString("X"));
            moday = moday.Substring(moday.Length - 3);
            string hr = (dt.Hour + 65).ToString("X");
            int sec = dt.Minute * 60 + dt.Second;
            string hexsec = ("00" + sec.ToString("X"));
            hexsec = hexsec.Substring(hexsec.Length - 3);
            string GenerateDocNumber = (yr + (moday + ("-" + (hr + hexsec))));

            return GenerateDocNumber;
        }

        public static IEnumerable<KeyValuePair<int, string>> Of<T>()
        {
            return Enum.GetValues(typeof(T))
                .Cast<T>()
                .Select(p => new KeyValuePair<int, string>(Convert.ToInt32(p), p.ToString()))
                .ToList();
        }
    }
}
