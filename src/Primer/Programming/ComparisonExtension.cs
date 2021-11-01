using System;
using System.Collections.Generic;

namespace ZiveLab.Primer
{
    public static class ComparisonExtension
    {
        public static T CoerceIn<T>(this T x, T lowerLimit, T upperLimit) where T : IComparable<T>
        {
            if (x == null)
                return x;
            else if (upperLimit != null && x.CompareTo(upperLimit) > 0)
                return upperLimit;
            else if (lowerLimit != null && x.CompareTo(lowerLimit) < 0)
                return lowerLimit;
            else
                return x;
        }

        public static List<T> CoerceIn<T>(this List<T> x, T lowerLimit, T upperLimit) where T : IComparable<T>
        {
            List<T> result = new List<T>();
            foreach (var value in x)
                result.Add(value.CoerceIn(lowerLimit, upperLimit));

            return result;
        }

        public static bool IsInRange(this int x, int lowerLimit, int upperLimit, bool includeLowerLimit = true, bool includeUpperLimit = true)
        {
            if (includeLowerLimit)
            {
                if (includeUpperLimit)
                    return x >= lowerLimit && x <= upperLimit;
                else
                    return x >= lowerLimit && x < upperLimit;
            }
            else
            {
                if (includeUpperLimit)
                    return x > lowerLimit && x <= upperLimit;
                else
                    return x > lowerLimit && x < upperLimit;
            }
        }

        public static bool IsInRange(this double x, double lowerLimit, double upperLimit, bool includeLowerLimit = true, bool includeUpperLimit = true)
        {
            if (includeLowerLimit)
            {
                if (includeUpperLimit)
                    return x >= lowerLimit && x <= upperLimit;
                else
                    return x >= lowerLimit && x < upperLimit;
            }
            else
            {
                if (includeUpperLimit)
                    return x > lowerLimit && x <= upperLimit;
                else
                    return x > lowerLimit && x < upperLimit;
            }
        }

        public static bool IsNumeric(this object Value, bool IfPossible = false)
        {
            if (Value == null)
                return false;

            bool result = Value is sbyte
                    || Value is byte
                    || Value is short
                    || Value is ushort
                    || Value is int
                    || Value is uint
                    || Value is long
                    || Value is ulong
                    || Value is float
                    || Value is double
                    || Value is decimal;

            if (!result && IfPossible)
            {
                NumericFormatter info = new NumericFormatter();
                double dbl;
                result = info.TryParse("%f", Value.ToString(), out dbl);
            }

            return result;
        }

        public static List<bool> IsNumeric(this List<object> Value, bool IfPossible = false)
        {
            List<bool> result = new List<bool>();

            foreach (object value in Value)
                result.Add(value.IsNumeric(IfPossible));

            return result;
        }
    }
}
