using System;
using System.Collections.Generic;
using System.Reflection;
using System.ComponentModel;
using System.Globalization;
using System.Linq;

namespace ZiveLab.Device.ZIM.Utilities
{
    public static class Extensions
    {
        public static SortedDictionary<TKey, TValue> ToSortedDictionary<TKey, TValue>(this Dictionary<TKey, TValue> map)
        {
            return new SortedDictionary<TKey, TValue>(map);
        }

        public static string GetEnumDescription(Enum en)
        {
            string str = "";
            Type type = en.GetType();
            MemberInfo[] memInfo = type.GetMember(en.ToString());

            if (memInfo != null && memInfo.Length > 0)

            {
                object[] attrs = memInfo[0].GetCustomAttributes(typeof(DescriptionAttribute), false);
                if (attrs != null && attrs.Length > 0)

                {
                    str = ((DescriptionAttribute)attrs[0]).Description;
                }
            }
            return str;
        }

        public static string GetDescription<T>(this T e) where T : IConvertible
        {
            if (e is Enum)
            {
                Type type = e.GetType();
                Array values = System.Enum.GetValues(type);

                foreach (int val in values)
                {
                    if (val == e.ToInt32(CultureInfo.InvariantCulture))
                    {
                        var memInfo = type.GetMember(type.GetEnumName(val));
                        var descriptionAttribute = memInfo[0]
                            .GetCustomAttributes(typeof(DescriptionAttribute), false)
                            .FirstOrDefault() as DescriptionAttribute;

                        if (descriptionAttribute != null)
                        {
                            return descriptionAttribute.Description;
                        }
                    }
                }
            }

            return string.Empty;
        }

        public static double RoundToSignificantDigits(this double d, int digits)
        {
            if (d == 0)
                return 0;

            double scale = Math.Pow(10, Math.Floor(Math.Log10(Math.Abs(d))) + 1);
            return scale * Math.Round(d / scale, digits);
        }
    }
}
