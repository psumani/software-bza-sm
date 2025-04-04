using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NationalInstruments.UI;

namespace ZiveLab.ZM.Dataview
{
    public class CoMath
    {
        public enum eSiUnit { TERA, GIGA, MEGA, KILO, NONE, MILI, MICRO, NANO, PICO };
        public static string[] StrSiUnitArray = { "T", "G", "M", "k", "", "m", "u", "n", "P" };

        public static double Max(double[] arr, double ignore)
        {
            bool maxSet = false;
            double max = default(double);
            for (int i = 0; i < arr.Length; i++)
            {
                if (arr[i].CompareTo(ignore) != 0)
                {
                    if (!maxSet)
                    {
                        maxSet = true;
                        max = arr[i];
                    }
                    else if (arr[i].CompareTo(max) > 0)
                        max = arr[i];
                }
            }

            return (maxSet) ? max : ignore;
        }
        public static double Min(double[] arr, double ignore)
        {
            bool minSet = false;
            double min = default(double);
            for (int i = 0; i < arr.Length; i++)
            {
                if (arr[i].CompareTo(ignore) != 0)
                {
                    if (!minSet)
                    {
                        minSet = true;
                        min = arr[i];
                    }
                    else if (arr[i].CompareTo(min) < 0)
                        min = arr[i];
                }
            }

            return (minSet) ? min : ignore;
        }

        public static int GetMaxIndex(double[] arr)
        {
            double max = arr.Max();
            return Array.IndexOf(arr, max);
        }

        public static int GetMinIndex(double[] arr)
        {
            double min = arr.Min();
            return Array.IndexOf(arr, min);
        }

        public static double[] Smooth(double[] source, int factor)
        {
            if (source == null)
                return null;

            if (factor == 1)
                return source;

            double[] result = new double[source.Length];

            double fac = factor - 1;

            fac = fac / 2;

            fac = Math.Ceiling(fac);

            factor = (int)fac;            

            for(int i = 0; i < source.Length; i++)
            {
                int idx1 = factor + i + 1;
                int idx2 = i - factor;

                double[] firstArray;
                double[] secondArray;

                //CoArray.Split1DArray(source, idx1, out firstArray, out secondArray);
                //CoArray.Split1DArray(firstArray, idx2, out null, out secondArray);
                firstArray = source.Take(idx1).ToArray();
                secondArray = firstArray.Skip(idx2).ToArray();                

                double value = secondArray.Average();

                result[i] = value;
            }

            return result;
        }

        public static double[] Smooth2(double[] source, int factor)
        {
            if (source == null)
                return null;

            for (int i = 1; i < source.Length; i++)
            {
                //---------------------------------------------------------------avg
                var start = (i - factor > 0 ? i - factor : 0);
                var end = (i + factor < source.Length ? i + factor : source.Length);

                double sum = 0;

                for (int j = start; j < end; j++)
                {
                    sum += source[j];
                }

                var avg = sum / (end - start);
                //---------------------------------------------------------------
                source[i] = avg;

            }

            return source;
        }

        public static double[] Smooth3(double[] source, int factor)
        {
            if (source == null)
                return null;

            if (factor == 1)
                return source;

            double[] result = new double[source.Length];

            //factor = 2;

            for (int i = 0; i < source.Length; i++)
            {
                double sum = 0;
                int count = 0;

                for (int j = 0; j < factor; j++)
                {
                    int idx = i - j;
                    if (idx < 0)
                        break;

                    sum += source[idx];
                    count++;
                }

                double value = sum / count;

                result[i] = value;
            }

            return result;
        }

        public static void GetRange(double[] data, out double min, out double max)
        {
            double absmax;
            double offset;
            double margin = 0.1;
            max = 0.1;
            min = -max;

            if (data.Length > 0)
            {
                max = CoMath.Max(data, double.NaN);
                min = CoMath.Min(data, double.NaN);

                absmax = Math.Max(Math.Abs(max), Math.Abs(min));

                if (absmax < 0.01)
                    margin = 0.1;
                else if (absmax >= 0.01 && absmax < 0.1)
                    margin = 0.09;
                else if (absmax >= 0.1 && absmax < 1)
                    margin = 0.08;
                else if (absmax >= 1)
                    margin = 0.008;

                offset = absmax * margin;

                max += offset;
                min -= offset;

                if (max == min)
                {
                    max = 0.1;
                    min = -max;
                }                    
            }
        }

        public static void GetRange(double[] data, double margin, out double min, out double max)
        {
            double absmax;
            double offset;
            max = 0.1;
            min = -max;

            if (data.Length > 0)
            {
                max = CoMath.Max(data, double.NaN);
                min = CoMath.Min(data, double.NaN);

                absmax = Math.Max(Math.Abs(max), Math.Abs(min));

                offset = absmax * margin;

                max += offset;
                min -= offset;

                if (max == min)
                {
                    max = 0.1;
                    min = -max;
                }

                if(double.IsNaN(max) && double.IsNaN(min))
                {
                    max = 1;
                    min = -max;
                }
            }
        }

        public static Range GetRangeMagin(double[] data, double margin)
        {
            double absmax;
            double offset;
            double max = 0.1;
            double min = -max;

            if (data.Length > 0)
            {
                max = CoMath.Max(data, double.NaN);
                min = CoMath.Min(data, double.NaN);

                absmax = Math.Max(Math.Abs(max), Math.Abs(min));

                offset = absmax * margin;

                max += offset;
                min -= offset;

                if (max == min)
                {
                    max = 0.1;
                    min = -max;
                }
            }

            return new Range(min, max);
        }

        public static Range GetRangeLogScale(double[] data)
        {
            double min = MinSIUnit(data.Min());
            double max = MaxSIUnit(data.Max());

            if (min == max)
                return null;

            return new Range(min, max);
        }

        public static Range GetRangeSIUnit(double[] data)
        {
            double ov;
            int exp;

            ToReadableSIUnit(data.Max(), out ov, out exp);

            if (Math.Abs(ov) > 800)
            {
                ov /= 1000; exp += 3;
            }
            else if (Math.Abs(ov) > 80)
            {
                ov /= 100; exp += 2;
            }
            else if (Math.Abs(ov) > 8)
            {
                ov /= 10; exp += 1;
            }

            double max = Math.Ceiling(ov) * Math.Pow(10, exp);

            ToReadableSIUnit(data.Min(), out ov, out exp);

            if (Math.Abs(ov) > 800)
            {
                ov /= 1000; exp += 3;
            }
            else if (Math.Abs(ov) > 80)
            {
                ov /= 100; exp += 2;
            }
            else if (Math.Abs(ov) > 8)
            {
                ov /= 10; exp += 1;
            }

            double min = Math.Floor(ov) * Math.Pow(10, exp);

            if (min == max)
                return null;

            return new Range(min, max);
        }

        public static double Average(double[] data, int start, int length)
        {
            double result = 0;

            int count = 0;

            if(data != null && start < data.Length)
            {
                for(int i = 0; i < length; i++)
                {
                    if (i + start < data.Length)
                    {
                        result += data[i + start];
                        count++;
                    }
                }
            }

            if (count > 0)
                result = result / count;

            return result;
        }

        static public double MaxSIUnit(double val)
        {
            double result = 0;
            int baseval = -12;

            while (true)
            {
                double temp = Math.Pow(10, baseval);

                if (val <= temp)
                {
                    result = temp;
                    break;
                }

                baseval += 1;
            }

            return result;
        }

        static public double MinSIUnit(double val)
        {
            double result = 0;
            int baseval = 12;

            while (true)
            {
                double temp = Math.Pow(10, baseval);

                if (val >= temp)
                {
                    result = temp;
                    break;
                }

                baseval -= 1;
            }

            return result;
        }

        public static void ToReadableSIUnit(double value, out double ov, out int exp)
        {
            int grp = 0;
            bool minus = false;

            if (value < 0)
                minus = true;

            value = Math.Abs(value);

            if (value < 1)
            {
                for (int i = 0; i < 5; i++)
                {
                    double temp = value * Math.Pow(10, i * 3);

                    if (temp >= 1)
                    {
                        value = temp;
                        grp = i;
                        break;
                    }
                }
            }


            int exponent = (int)Math.Log10(value);
            int group = exponent / 3;
            group = group + 4 - grp;
            
            double divisor = Math.Pow(10, (group - 4) * 3);
            double result = grp > 0 ? value : value / divisor;

            ov = minus ? -result : result;
            exp = (group - 4) * 3;
        }

        static public double Interpolation(double x1, double x2, double y1, double y2, double x)
        {
            double result = (y2 - y1) / (x2 - x1) * (x - x1) + y1;

            return result;
        }

        static public double ConverCWTime(TimeSpan ts)
        {
            return ts.TotalSeconds / 86400;
        }


        static public double UnitConv(double val, eSiUnit unit)
        {
            double result = val;

            switch (unit)
            {
                case eSiUnit.KILO:
                    result = val / Math.Pow(10, 3);
                    break;

                case eSiUnit.MEGA:
                    result = val / Math.Pow(10, 6);
                    break;

                case eSiUnit.GIGA:
                    result = val / Math.Pow(10, 9);
                    break;

                case eSiUnit.TERA:
                    result = val / Math.Pow(10, 12);
                    break;

                case eSiUnit.NONE:
                    break;

                case eSiUnit.MILI:
                    result = val * Math.Pow(10, 3);
                    break;

                case eSiUnit.MICRO:
                    result = val * Math.Pow(10, 6);
                    break;

                case eSiUnit.NANO:
                    result = val * Math.Pow(10, 9);
                    break;

                case eSiUnit.PICO:
                    result = val * Math.Pow(10, 12);
                    break;
            }

            return result;
        }

        static public double UnitConv(double val, eSiUnit unit, bool unitC)
        {
            if (unitC)
                val *= 3600;

            return UnitConv(val, unit);
        }

        static public double UnitRevConv(double val, eSiUnit unit)
        {
            double result = val;

            switch (unit)
            {
                case eSiUnit.KILO:
                    result = val * Math.Pow(10, 3);
                    break;

                case eSiUnit.MEGA:
                    result = val * Math.Pow(10, 6);
                    break;

                case eSiUnit.GIGA:
                    result = val * Math.Pow(10, 9);
                    break;

                case eSiUnit.TERA:
                    result = val * Math.Pow(10, 12);
                    break;

                case eSiUnit.NONE:
                    break;

                case eSiUnit.MILI:
                    result = val / Math.Pow(10, 3);
                    break;

                case eSiUnit.MICRO:
                    result = val / Math.Pow(10, 6);
                    break;

                case eSiUnit.NANO:
                    result = val / Math.Pow(10, 9);
                    break;

                case eSiUnit.PICO:
                    result = val / Math.Pow(10, 12);
                    break;
            }

            return result;
        }
    }
}
