using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ZiveLab.ZM.Dataview
{
    public class CoCollection
    {
        static public int GetMaxListCount<T>(Dictionary<int, List<T>> listDict)
        {
            int result = 0;

            foreach (List<T> list in listDict.Values)
            {
                result = Math.Max(result, list.Count);
            }

            return result;
        }
    }

    public class CoConvColumn
    {
        static public string[,] COLUMN_ARRAY = new string[,]
        {
            { "Index", "인덱스" },
            { "Test Time", "시험 시간" },
            { "Cycle No.", "사이클 번호" },
            { "Cycle Time", "사이클 시간" },
            { "Current", "전류" },
            { "Voltage", "전압" },
            { "Power", "파워" },
            { "Load", "부하" },
            { "Capacity", "용량" },
            { "Energy", "에너지" },
            { "A01_V", "A01_전압" },
            { "A02_V", "A02_전압" },
            { "A03_V", "A03_전압" },
            { "A04_V", "A04_전압" },
            { "A05_V", "A05_전압" },
            { "A06_V", "A06_전압" },
            { "A07_V", "A07_전압" },
            { "A08_V", "A08_전압" },
            { "A09_V", "A09_전압" },
            { "A10_V", "A10_전압" },
            { "A11_V", "A11_전압" },
            { "A12_V", "A12_전압" },
            { "Frequency", "주파수" },
            { "Zre", "Zre" },
            { "Zim", "Zim" },
            { "A01_Zre", "A01_Zre" },
            { "A01_Zim", "A01_Zim" },
            { "A02_Zre", "A02_Zre" },
            { "A02_Zim", "A02_Zim" },
            { "A03_Zre", "A03_Zre" },
            { "A03_Zim", "A03_Zim" },
            { "A04_Zre", "A04_Zre" },
            { "A04_Zim", "A04_Zim" },
            { "A05_Zre", "A05_Zre" },
            { "A05_Zim", "A05_Zim" },
            { "A06_Zre", "A06_Zre" },
            { "A06_Zim", "A06_Zim" },
            { "A07_Zre", "A07_Zre" },
            { "A07_Zim", "A07_Zim" },
            { "A08_Zre", "A08_Zre" },
            { "A08_Zim", "A08_Zim" },
            { "A09_Zre", "A09_Zre" },
            { "A09_Zim", "A09_Zim" },
            { "A10_Zre", "A10_Zre" },
            { "A10_Zim", "A10_Zim" },
            { "A11_Zre", "A11_Zre" },
            { "A11_Zim", "A11_Zim" },
            { "A12_Zre", "A12_Zre" },
            { "A12_Zim", "A12_Zim" },
            { "Temp.", "온도" },
            { "Eoc", "Eoc" },
            { "Range", "Range" },
        };
    }
}
