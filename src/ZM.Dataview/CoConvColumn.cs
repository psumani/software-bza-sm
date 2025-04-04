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
            { "Step No.","단계 번호" },
            { "Step Time", "단계 시간" },
            { "Current", "전류" },
            { "Voltage", "전압" },
            { "Power", "파워" },
            { "Load", "부하" },
            { "Capacity", "용량" },
            { "Energy", "에너지" },
            { "AuxV1", "보조전압1" },
            { "AuxV2", "보조전압2" },
            { "AuxV3", "보조전압3" },
            { "AuxV4", "보조전압4" },
            { "AuxV5", "보조전압5" },
            { "AuxV6", "보조전압6" },
            { "AuxV7", "보조전압7" },
            { "AuxV8", "보조전압8" },
            { "AuxV9", "보조전압9" },
            { "AuxV10", "보조전압10" },
            { "AuxV11", "보조전압11" },
            { "AuxV12", "보조전압12" },
            { "Frequency", "주파수" },
            { "Zre", "Zre" },
            { "Zim", "Zim" },
            { "AUX01_Zre", "AUX01_Zre" },
            { "AUX01_Zim", "AUX01_Zim" },
            { "AUX02_Zre", "AUX02_Zre" },
            { "AUX02_Zim", "AUX02_Zim" },
            { "AUX03_Zre", "AUX03_Zre" },
            { "AUX03_Zim", "AUX03_Zim" },
            { "AUX04_Zre", "AUX04_Zre" },
            { "AUX04_Zim", "AUX04_Zim" },
            { "AUX05_Zre", "AUX05_Zre" },
            { "AUX05_Zim", "AUX05_Zim" },
            { "AUX06_Zre", "AUX06_Zre" },
            { "AUX06_Zim", "AUX06_Zim" },
            { "AUX07_Zre", "AUX07_Zre" },
            { "AUX07_Zim", "AUX07_Zim" },
            { "AUX08_Zre", "AUX08_Zre" },
            { "AUX08_Zim", "AUX08_Zim" },
            { "AUX09_Zre", "AUX09_Zre" },
            { "AUX09_Zim", "AUX09_Zim" },
            { "AUX10_Zre", "AUX10_Zre" },
            { "AUX10_Zim", "AUX10_Zim" },
            { "AUX11_Zre", "AUX11_Zre" },
            { "AUX11_Zim", "AUX11_Zim" },
            { "AUX12_Zre", "AUX12_Zre" },
            { "AUX12_Zim", "AUX12_Zim" },
            { "Temp.", "온도" },
            { "Eoc", "Eoc" },
            { "Range", "Range" },
        };
    }
}
