using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;

namespace ZiveLab.Primer
{
    public sealed class NumericFormatter : IFormatProvider, ICustomFormatter
    {
        #region parameters

        private string symbolForNaN = "NaN";
        private string symbolForPositiveInfinity = "Inf";
        private string symbolForNegativeInfinity = "-Inf";
        private static char[] conversionCodes = new char[] { 'x', 'o', 'b', 'd', 'u', 'f', 'e', 'g', 'p', 's', 't' };
        private static char[] nonOptionalCodes = new char[] { 'x', 'o', 'b', 'd', 'u', 'f', 'e', 'g', 'p', 's', 't',
            '.', '_', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

        private readonly string[] positivePrefixes = new string[] { "", "k", "M", "G", "T", "P", "E", "Z", "Y" };
        private readonly string[] negativePrefixes = new string[] { "", "m", "u", "n", "p", "f", "a", "z", "y" };
        private readonly Dictionary<char, double> Prefixes = new Dictionary<char, double>()
        {
            {'Y', 1e24},
            {'Z', 1e21},
            {'E', 1e18},
            {'P', 1e15},
            {'T', 1e12},
            {'G', 1e9},
            {'M', 1e6},
            {'k', 1e3},
            {'h', 1e2},
            {'d', 1e-1},
            {'c', 1e-2},
            {'m', 1e-3},
            {'u', 1e-6},
            {'n', 1e-9},
            {'p', 1e-12},
            {'f', 1e-15},
            {'a', 1e-18},
            {'z', 1e-21},
            {'y', 1e-24},
        };

        #endregion parameters

        #region public properties

        public string SymbolForNaN
        {
            set { symbolForNaN = value; }
            get { return symbolForNaN; }
        }

        public string SymbolForPositiveInfinity
        {
            set { symbolForPositiveInfinity = value; }
            get { return symbolForPositiveInfinity; }
        }

        public string SymbolForNegativeInfinity
        {
            set { symbolForNegativeInfinity = value; }
            get { return symbolForNegativeInfinity; }
        }

        #endregion public properties

        #region public Methdos

        public object GetFormat(Type FormatType)
        {
            if (FormatType == typeof(ICustomFormatter))
                return this;
            else
                return null;
        }

        // formatSpecifier: %[-][+][#][^][0][Width][.Precision || _SignificantDigits]ConversionCode
        public string Format(string format, object arg, IFormatProvider formatProvider)
        {
            if (!this.Equals(formatProvider))
                return null;

            if (arg == null)
                return this.symbolForNaN;

            FormatSpecifier FS = new FormatSpecifier(format);
            if (FS.HasError)
                return arg.ToString();

            if (arg.IsNumeric())
            {
                double dblValue = Convert.ToDouble(arg);

                if (FS.ConversionCode == "g")
                {
                    return FS.LeadingString + this.AutomaticFormat(dblValue, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "f")
                {
                    return FS.LeadingString + this.FloatPointFormat(dblValue, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "e")
                {
                    return FS.LeadingString + this.ScientificFormat(dblValue, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "p")
                {
                    return FS.LeadingString + this.SINotationFormat(dblValue, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "d")
                {
                    int value = Convert.ToInt32(ComparisonExtension.CoerceIn(dblValue, int.MinValue, int.MaxValue));
                    return FS.LeadingString + this.DecimalIntegerFormat(value, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "u")
                {
                    uint value = Convert.ToUInt32(ComparisonExtension.CoerceIn(dblValue, uint.MinValue, uint.MaxValue));
                    return FS.LeadingString + this.UnsignedDecimalIntegerFormat(value, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "x")
                {
                    int value = Convert.ToInt32(ComparisonExtension.CoerceIn(dblValue, int.MinValue, int.MaxValue));
                    return FS.LeadingString + this.HexadecimalIntegerFormat(value, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "o")
                {
                    int value = Convert.ToInt32(ComparisonExtension.CoerceIn(dblValue, int.MinValue, int.MaxValue));
                    return FS.LeadingString + this.OctalIntegerFormat(value, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "b")
                {
                    int value = Convert.ToInt32(ComparisonExtension.CoerceIn(dblValue, int.MinValue, int.MaxValue));
                    return FS.LeadingString + this.BinaryIntegerFormat(value, FS) + FS.TrailingString;
                }
                else if (FS.ConversionCode == "t")
                {
                    return FS.LeadingString + this.RelativeTimeFormat(dblValue, FS) + FS.TrailingString;
                }
                else
                    return arg.ToString();
            }
            //else if (arg is IFormattable)
            //    return ((IFormattable)arg).ToString(format, formatProvider);
            else
                return FS.LeadingString + StringFormat((string)arg, FS) + FS.TrailingString;
        }
        public string Format(string format, object arg, CultureInfo cultureInfo)
        {
            return Format(format, arg, this);
        }

        ///formatSpecifier: %[Width]ConversionCode
        public double Parse(string format, string s)
        {
            if (string.IsNullOrWhiteSpace(format))
                format = "%f";

            //Analyzing format string
            FormatSpecifier FS = new FormatSpecifier(format);

            if (FS.HasError)
                throw new FormatException("Invalid format");

            //Remove preceding and trailing string
            s = s.Trim().Substring(FS.LeadingString.Length);
            s = s.Substring(0, s.Length - FS.TrailingString.Length);

            //Parsing s string
            if (FS.ConversionCode == "f" || FS.ConversionCode == "e" || FS.ConversionCode == "g" || FS.ConversionCode == "p")
            {
                if (s == this.SymbolForNaN)
                    return double.NaN;
                else if (s == this.symbolForPositiveInfinity)
                    return double.PositiveInfinity;
                else if (s == this.symbolForNegativeInfinity)
                    return double.NegativeInfinity;

                if (FS.Width > 0)
                    s = s.Substring(0, FS.Width);

                double number = 0;
                double exponent = 0;

                int i = s.IndexOf('e');
                if (i == 0)
                    throw new FormatException("Invalid Input");
                else if (i > 0)
                    if (i > 0 && double.TryParse(s.Substring(0, i), out number) && double.TryParse(s.Substring(i + 1), out exponent))
                        return number * Math.Pow(10, exponent);
                    else
                        throw new FormatException("Invalid Input");

                i = s.IndexOf('E');
                if (i == 0)
                    throw new FormatException("Invalid Input");
                if (i > 0 && i + 1 < s.Length)
                    if (double.TryParse(s.Substring(0, i), out number) && double.TryParse(s.Substring(i + 1), out exponent))
                        return number * Math.Pow(10, exponent);
                    else
                        throw new FormatException("Invalid Input");

                i = s.IndexOfAny(Prefixes.Keys.ToArray());

                if (i == 0)
                    throw new FormatException("Invalid Input");
                else if (i > 0 && i == s.Length - 1) // ex: ###.###n
                    if (double.TryParse(s.Substring(0, i), out number))
                        return number * Prefixes[s.Substring(i, 1).ToCharArray()[0]];
                    else
                        throw new FormatException("Invalid Input");
                if (double.TryParse(s, out number))
                    return number;
                else
                    throw new FormatException("Invalid Input");
            }
            else if (FS.ConversionCode == "d")
            {
                if (FS.Width > 0)
                    s = s.Substring(0, FS.Width);
                int number;
                if (int.TryParse(s, out number))
                    return (double)number;
                else
                    throw new FormatException("Invalid Input");
            }
            else if (FS.ConversionCode == "u")
            {
                if (FS.Width > 0)
                    s = s.Substring(0, FS.Width);
                uint number;
                if (uint.TryParse(s, out number))
                    return (double)number;
                else
                    throw new FormatException("Invalid Input");
            }
            else if (FS.ConversionCode == "b")
            {
                if (FS.Width > 0)
                    s = s.Substring(0, FS.Width);

                try
                {
                    return Convert.ToInt32(s, 2);
                }
                catch
                {
                    throw new FormatException("Invalid Input");
                }
            }
            else if (FS.ConversionCode == "o")
            {
                long number;

                if (FS.Width > 0)
                    s = s.Substring(0, FS.Width);

                try
                {
                    number = Convert.ToInt32(s, 8);
                    return (double)number;
                }
                catch
                {
                    throw new FormatException("Invalid Input");
                }
            }
            else if (FS.ConversionCode == "x")
            {
                long number;

                if (FS.Width > 0)
                    s = s.Substring(0, FS.Width);

                try
                {
                    number = Convert.ToInt32(s, 16);
                    return (double)number;
                }
                catch
                {
                    throw new FormatException("Invalid Input");
                }
            }
            else if (FS.ConversionCode == "t")
            {
                if (s == this.SymbolForNaN)
                    return double.NaN;
                else if (s == this.symbolForPositiveInfinity)
                    return double.PositiveInfinity;
                else if (s == this.symbolForNegativeInfinity)
                    return double.NegativeInfinity;

                int i = s.IndexOf(':');
                if (i >= 0)
                    return TimeSpan.Parse(s).TotalSeconds;
                else
                    return Parse("%f", s);
            }
            else
            {
                throw new FormatException("Invalid format");
            }
        }
        public double Parse(string format, string s, CultureInfo cultureInfo)
        {
            return Parse(format, s);
        }
        public bool TryParse(string format, string s, out double value)
        {
            try
            {
                value = Parse(format, s);
                return true;
            }
            catch
            {
                value = double.NaN;
                return false;
            }
        }
        public bool TryParse(string format, string s, CultureInfo cultureInfo, out double value)
        {
            return TryParse(format, s, cultureInfo, out value);
        }

        #endregion public Methdos

        #region private methods

        // %[-][Width][.Precision]s
        private string StringFormat(string value, FormatSpecifier fs)
        {
            string extracted = (fs.PrecisionDigits >= 0) ? value.Substring(0, fs.PrecisionDigits) : value;

            string result = (fs.Width > 0 && fs.Width < extracted.Length) ? extracted.Substring(0, fs.Width) : extracted;

            int width = result.Length;

            if (fs.LeftJustify)
                return result + SpacePadding(fs.Width - width);
            else if (fs.Width > width)
                return SpacePadding(fs.Width - width) + result;
            else
                return result;
        }

        // %[-][+][#][^][0][Width][.Precision || _SignificantDigits]g
        private string AutomaticFormat(double value, FormatSpecifier fs)
        {
            if (double.IsNaN(value))
                return this.symbolForNaN;
            else if (double.IsPositiveInfinity(value))
                return this.symbolForPositiveInfinity;
            else if (double.IsNegativeInfinity(value))
                return this.symbolForNegativeInfinity;

            if (value == 0)
            {
                fs.ConversionCode = "f";
                return FloatPointFormat(value, fs);
            }
            else
            {
                int exponent = (int)(Math.Floor(Math.Log10(Math.Abs(value))));

                if (exponent > -5 && exponent <= Math.Max(fs.SignificantDigits, fs.PrecisionDigits))
                {
                    fs.ConversionCode = "f";
                    return FloatPointFormat(value, fs);
                }
                else
                {
                    fs.ConversionCode = "e";
                    return ScientificFormat(value, fs);
                }
            }
        }

        // %[-][+][#][^][0][Width][.Precision || _SignificantDigits]f
        private string FloatPointFormat(double value, FormatSpecifier fs)
        {
            string result;
            string signString;

            if (double.IsNaN(value))
            {
                signString = fs.ShowPlusSign ? "+" : "";
                result = this.symbolForNaN;
            }
            else if (double.IsPositiveInfinity(value))
            {
                signString = fs.ShowPlusSign ? "+" : "";
                result = (this.symbolForPositiveInfinity.StartsWith("+"))
                    ? this.symbolForPositiveInfinity.Substring(1)
                    : this.symbolForPositiveInfinity;
            }
            else if (double.IsNegativeInfinity(value))
            {
                signString = "-";
                result = (this.symbolForNegativeInfinity.StartsWith("-"))
                    ? this.symbolForNegativeInfinity.Substring(1)
                    : this.symbolForNegativeInfinity;
            }
            else
            {
                if (value > 0 && fs.ShowPlusSign)
                    signString = "+";
                else if (value < 0)
                    signString = "-";
                else
                    signString = "";

                double absValue = Math.Abs(value);

                if (fs.PrecisionDigits > 0)
                    result = string.Format("{0:f" + fs.PrecisionDigits + "}", absValue);
                else
                {
                    if (absValue == 0)
                    {
                        if (fs.SignificantDigits == 1)
                            result = "0";
                        else
                            result = "0." + ZeroPadding(fs.SignificantDigits - 1);
                    }
                    else
                    {
                        double scale = Math.Pow(10, Math.Floor(Math.Log10(absValue)) + 1 - fs.SignificantDigits);

                        int figure = (int)Math.Log10(scale);

                        double significantFigures = Math.Round(absValue / scale) * scale;

                        if (figure < 0)
                            result = significantFigures.ToString("f" + Math.Abs(figure));
                        else
                            result = significantFigures.ToString("f0");
                    }
                }

                if (fs.HideTrailingZeros)
                    result = this.TrimZeros(result);
            }

            int width = (signString + result).Length;

            if (fs.LeftJustify)
                return signString + result + SpacePadding(fs.Width - width);

            if (fs.Width > width && fs.ZeroPadding)
                return signString + ZeroPadding(fs.Width - width) + result;
            else
                return SpacePadding(fs.Width - width) + signString + result;
        }

        // %[-][+][#][^][0][Width][.Precision || _SignificantDigits]e
        private string ScientificFormat(double value, FormatSpecifier fs)
        {
            if (value == 0
                || double.IsNaN(value)
                || double.IsPositiveInfinity(value)
                || double.IsNegativeInfinity(value))
            {
                return this.FloatPointFormat(value, fs);
            }

            int exponent;
            double mantissa;

            if (fs.MuplitpleOfThree)
            {
                exponent = (int)(Math.Floor(Math.Log10(Math.Abs(value)) / 3.0) * 3.0);
                mantissa = value * Math.Pow(10.0, -exponent);

                if (mantissa >= 1000.0)
                {
                    mantissa = mantissa / 1000.0;
                    exponent = exponent + 3;
                }
            }
            else
            {
                exponent = (int)(Math.Floor(Math.Log10(Math.Abs(value))));
                mantissa = value * Math.Pow(10.0, -exponent);
            }

            string expString = "E" + ((exponent >= 0) ? "+" : "") + exponent.ToString();
            return MantissaExpFormat(mantissa, expString, fs);
        }

        // %[-][+][#][^][0][Width][.Precision || _SignificantDigits]p
        private string SINotationFormat(double value, FormatSpecifier fs)
        {
            if (value == 0
                || double.IsNaN(value)
                || double.IsPositiveInfinity(value)
                || double.IsNegativeInfinity(value))
            {
                fs.ConversionCode = "f";
                return this.FloatPointFormat(value, fs);
            }

            int exponent = (int)(Math.Floor(Math.Log10(Math.Abs(value)) / 3.0) * 3.0);
            double mantissa = value * Math.Pow(10.0, -exponent);
            if (mantissa >= 1000.0)
            {
                mantissa = mantissa / 1000.0;
                exponent = exponent + 3;
            }

            // Handling very small or large values
            if ((exponent > 0 && exponent / 3 >= positivePrefixes.Length)
                || (exponent < 0 && -exponent / 3 >= negativePrefixes.Length))
            {
                fs.ConversionCode = "e";
                fs.MuplitpleOfThree = true;
                return ScientificFormat(value, fs);
            }
            else
            {
                string expString = MetricPrefixOfExponent(exponent);
                fs.MuplitpleOfThree = true;
                return MantissaExpFormat(mantissa, expString, fs);
            }
        }

        // %[-][+][0][Width]d
        private string DecimalIntegerFormat(int value, FormatSpecifier fs)
        {
            string valueString = ((value > 0 && fs.ShowPlusSign) ? "+" : "") + value.ToString();

            int width = valueString.Length;

            if (fs.LeftJustify)
                return valueString + SpacePadding(fs.Width - width);

            if (fs.Width > width && fs.ZeroPadding)
                return ZeroPadding(fs.Width - width) + valueString;
            else if (fs.Width > width && !fs.ZeroPadding)
                return SpacePadding(fs.Width - width) + valueString;
            else
                return valueString;
        }

        // %[-][+][0][Width]u
        private string UnsignedDecimalIntegerFormat(uint value, FormatSpecifier fs)
        {
            string valueString = ((value > 0 && fs.ShowPlusSign) ? "+" : "") + value.ToString();

            int width = valueString.Length;

            if (fs.LeftJustify)
                return valueString + SpacePadding(fs.Width - width);

            if (fs.Width > width && fs.ZeroPadding)
                return ZeroPadding(fs.Width - width) + valueString;
            else if (fs.Width > width && !fs.ZeroPadding)
                return SpacePadding(fs.Width - width) + valueString;
            else
                return valueString;
        }

        // %[-][+][0][Width]x
        private string HexadecimalIntegerFormat(int value, FormatSpecifier fs)
        {
            string valueString = ((value > 0 && fs.ShowPlusSign) ? "+" : "") + System.Convert.ToString(value, 16).ToUpper();

            int width = valueString.Length;

            if (fs.LeftJustify)
                return valueString + SpacePadding(fs.Width - width);

            if (fs.Width > width && fs.ZeroPadding)
                return ZeroPadding(fs.Width - width) + valueString;
            else if (fs.Width > width && !fs.ZeroPadding)
                return SpacePadding(fs.Width - width) + valueString;
            else
                return valueString;
        }

        // %[-][+][0][Width]o
        private string OctalIntegerFormat(int value, FormatSpecifier fs)
        {
            string valueString = ((value > 0 && fs.ShowPlusSign) ? "+" : "") + System.Convert.ToString(value, 8).ToUpper();

            int width = valueString.Length;

            if (fs.LeftJustify)
                return valueString + SpacePadding(fs.Width - width);

            if (fs.Width > width && fs.ZeroPadding)
                return ZeroPadding(fs.Width - width) + valueString;
            else if (fs.Width > width && !fs.ZeroPadding)
                return SpacePadding(fs.Width - width) + valueString;
            else
                return valueString;
        }

        // %[-][+][0][Width]b
        private string BinaryIntegerFormat(int value, FormatSpecifier fs)
        {
            string valueString = ((value > 0 && fs.ShowPlusSign) ? "+" : "") + System.Convert.ToString(value, 2);

            int width = valueString.Length;

            if (fs.LeftJustify)
                return valueString + SpacePadding(fs.Width - width);

            if (fs.Width > width && fs.ZeroPadding)
                return ZeroPadding(fs.Width - width) + valueString;
            else if (fs.Width > width && !fs.ZeroPadding)
                return SpacePadding(fs.Width - width) + valueString;
            else
                return valueString;
        }

        // %[-][+][0][Width][.Precision]t
        private string RelativeTimeFormat(double value, FormatSpecifier fs)
        {
            if (double.IsNaN(value)
                || double.IsPositiveInfinity(value)
                || double.IsNegativeInfinity(value))
            {
                return this.FloatPointFormat(value, fs);
            }

            if (fs.PrecisionDigits < 0 && fs.SignificantDigits >= 0)
                fs.PrecisionDigits = fs.SignificantDigits;

            string signString;
            if (value > 0 && fs.ShowPlusSign)
                signString = "+";
            else if (value < 0)
                signString = "-";
            else
                signString = "";

            double absValue = Math.Abs(value);

            int hours = (int)(absValue / 3600);
            int minutes = (int)(absValue / 60) % 60;
            int seconds = (int)absValue % 60;
            int fractionOfSeconds = (int)(Math.Round(absValue - (hours * 3600 + minutes * 60 + seconds), fs.PrecisionDigits + 1) * Math.Pow(10, fs.PrecisionDigits));
            string formatter = "d" + fs.PrecisionDigits;

            string hh = (hours == 0) ? "" : hours.ToString("d2") + ":";
            string mm = (hours == 0 && minutes == 0) ? "" : minutes.ToString("d2") + ":";
            string ss = seconds.ToString("d2");
            string us = (fs.PrecisionDigits > 0) ? "." + fractionOfSeconds.ToString("d") : "";

            string valueString = hh + mm + ss + us;

            int width = (signString + valueString).Length;

            if (fs.LeftJustify)
                return signString + valueString + SpacePadding(fs.Width - width);

            if (fs.Width > width && fs.ZeroPadding)
                return signString + ZeroPadding(fs.Width - width) + valueString;
            else if (fs.Width > width && !fs.ZeroPadding)
                return signString + SpacePadding(fs.Width - width) + valueString;
            else
                return signString + valueString;
        }

        private string MantissaExpFormat(double mantissa, string expString, FormatSpecifier fs)
        {
            string signString;
            string mantissaString;

            if (mantissa > 0 && fs.ShowPlusSign)
                signString = "+";
            else if (mantissa < 0)
                signString = "-";
            else
                signString = "";

            double absValue = Math.Abs(mantissa);

            if (fs.PrecisionDigits >= 0)
                mantissaString = string.Format("{0:f" + fs.PrecisionDigits + "}", absValue);
            else
            {
                double scale = Math.Pow(10, Math.Floor(Math.Log10(absValue)) + 1 - fs.SignificantDigits);
                double significantFigures = Math.Round(absValue / scale) * scale;
                int figure = (int)Math.Log10(scale);

                if (figure < 0)
                    mantissaString = significantFigures.ToString("f" + Math.Abs(figure));
                else
                    mantissaString = significantFigures.ToString("f0");
            }

            if (fs.HideTrailingZeros)
                mantissaString = this.TrimZeros(mantissaString);

            int width = (signString + mantissaString + expString).Length;

            if (fs.LeftJustify)
                return signString + mantissaString + expString + SpacePadding(fs.Width - width);

            if (fs.Width > width && fs.ZeroPadding)
                return signString + ZeroPadding(fs.Width - width) + mantissaString + expString;
            else
                return SpacePadding(fs.Width - width) + signString + mantissaString + expString;
        }

        private string MetricPrefixOfExponent(int exponent)
        {
            if (exponent == 0)
                return "";
            else if (exponent > 0 && exponent / 3 < positivePrefixes.Length)
                return positivePrefixes[exponent / 3];
            else if (exponent < 0 && -exponent / 3 < negativePrefixes.Length)
                return negativePrefixes[-exponent / 3];
            else
                return "e" + exponent.ToString();
        }

        private string TrimZeros(string value)
        {
            if (string.IsNullOrWhiteSpace(value))
                return "0";

            if (value.IndexOf(".") == -1)
                return value;
            else
            {
                while (value.EndsWith("0"))
                    value = value.Substring(0, value.Length - 1);

                if (value.EndsWith("."))
                    value = value.Substring(0, value.Length - 1);

                return value;
            }
        }

        private string ZeroPadding(int width)
        {
            return width > 0 ? new string('0', width) : "";
        }

        private string SpacePadding(int width)
        {
            return width > 0 ? new string(' ', width) : "";
        }

        #endregion private methods

        #region public internal class

        public class FormatSpecifier
        {
            public string LeadingString { get; set; }

            public string TrailingString { get; set; }

            public bool LeftJustify { get; set; } // "-"

            public bool ShowPlusSign { get; set; } // "+"

            public bool HideTrailingZeros { get; set; } // "#"

            public bool MuplitpleOfThree { get; set; } // "^"

            public bool ZeroPadding { get; set; } //"0"

            public int Width { get; set; }

            public int PrecisionDigits { get; set; }

            public int SignificantDigits { get; set; }

            public string ConversionCode { get; set; }

            public bool HasError { get; set; }

            public FormatSpecifier(string Format)
            {
                this.HasError = this.ParseFormatString(Format);
            }

            private bool ParseFormatString(string format) // returns true if any errors in the format.
            {
                if (string.IsNullOrEmpty(format))
                    return true;

                // Find %
                int i = format.IndexOf('%');

                if (i < 0)
                    return true;

                this.Width = -1;
                this.PrecisionDigits = -1;
                this.SignificantDigits = -1;
                this.ConversionCode = "g";

                if (i == 0)
                {
                    this.LeadingString = "";
                    format = format.Substring(1);
                }
                else
                {
                    this.LeadingString = format.Substring(0, i);
                    format = format.Substring(i + 1);
                }

                // Find [-][+][#][^][0]
                i = format.IndexOfAny(nonOptionalCodes);
                string optional;
                if (i >= 0)
                {
                    optional = format.Substring(0, i);
                    format = format.Substring(i);
                }
                else
                    return true;

                this.LeftJustify = optional.IndexOf("-") >= 0;
                this.ShowPlusSign = optional.IndexOf("+") >= 0;
                this.HideTrailingZeros = optional.IndexOf("#") >= 0;
                this.MuplitpleOfThree = optional.IndexOf("^") >= 0;
                this.ZeroPadding = optional.IndexOf("0") >= 0;

                // Find [Width][.Precision]ConversionCode
                i = format.IndexOf(".");
                if (i >= 0)
                {
                    if (i > 0)
                    {
                        int width;
                        if (int.TryParse(format.Substring(0, i), out width))
                        {
                            this.Width = width;
                            format = format.Substring(i);
                        }
                    }

                    this.SignificantDigits = -1;
                    format = format.Substring(1);

                    i = format.IndexOfAny(conversionCodes);
                    if (i > 0)
                    {
                        int precisionDigits;
                        if (int.TryParse(format.Substring(0, i), out precisionDigits))
                            this.PrecisionDigits = precisionDigits;
                        else
                            return true;
                    }
                    else
                        return true;

                    this.ConversionCode = format.Substring(i, 1);
                    this.TrailingString = format.Substring(i + 1);

                    return false;
                }

                // Find [Width][_SignificantDigits]ConversionCode
                i = format.IndexOf("_");
                if (i >= 0)
                {
                    if (i > 0)
                    {
                        int width;
                        if (int.TryParse(format.Substring(0, i), out width))
                        {
                            this.Width = width;
                            format = format.Substring(i);
                        }
                    }

                    this.PrecisionDigits = -1;
                    format = format.Substring(1);

                    i = format.IndexOfAny(conversionCodes);
                    if (i > 0)
                    {
                        int significantDigits;
                        if (int.TryParse(format.Substring(0, i), out significantDigits))
                            this.SignificantDigits = significantDigits;
                        else
                            return true;
                    }
                    else
                        return true;

                    this.ConversionCode = format.Substring(i, 1);
                    this.TrailingString = format.Substring(i + 1);

                    return false;
                }

                // Find [Width]ConversionCode
                i = format.IndexOfAny(conversionCodes);
                if (i >= 0)
                {
                    if (i > 0)
                    {
                        int width;
                        if (int.TryParse(format.Substring(0, i), out width))
                            this.Width = width;
                    }

                    this.ConversionCode = format.Substring(i, 1);
                    this.TrailingString = format.Substring(i + 1);

                    if (this.ConversionCode == "t")
                        this.PrecisionDigits = 3;
                    else if ((this.ConversionCode == "s"))
                        this.PrecisionDigits = -1;
                    else
                        this.PrecisionDigits = 5;

                    this.SignificantDigits = -1;

                    return false;
                }

                return true;
            }
        }

        #endregion public internal class
    }
}
