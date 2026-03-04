using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using ZiveLab.ZM.ZIM;

namespace ZiveLab.ZM.Dataview 
{
   
    public class GraphDataFormat
    {
        public uint Step { get; set; }
        public uint Cycle { get; set; }
        public uint MaxAuxCh { get; set; }
        public bool[] EnableAuxbd { get; set; }
        public double []XData { get; set; }
        public double []YData { get; set; }

        public string []XDataStr { get; set; }
        public string []YDataStr { get; set; }

        public object []XDataObj { get; set; }
        public object []YDataObj { get; set; }

        public GraphDataFormat()
        {
            int i;

            XData = new double[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            XDataStr = new string[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            XDataObj = new object[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            YData = new double[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            YDataStr = new string[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            YDataObj = new object[MBZA_Constant.MAX_AUXTYPE_CHANNELS];

            EnableAuxbd = new bool[MBZA_Constant.MAX_AUX_BOARD];
            for (i = 0; i < MBZA_Constant.MAX_AUX_BOARD; i++)
            {
                EnableAuxbd[i] = false;

            }
            MaxAuxCh = 0;
            for (i=0; i< MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                XData[i] = 0.0;
                XDataStr[i] = "0.0";
                XDataObj[i] = null;
                YData[i] = 0.0;
                YDataStr[i] = "0.0";
                YDataObj[i] = null;
            }
        }
    }

    public class GraphDataFormatX
    {
        public uint Step { get; set; }
        public uint Cycle { get; set; }

        public double []Data { get; set; }
        public string []DataStr { get; set; }
        public object []DataObj { get; set; }
        public GraphDataFormatX()
        {
            Data = new double[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            DataStr = new string[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            DataObj = new object[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                Data[i] = 0.0;
                DataStr[i] = "0.0";
                DataObj[i] = null;
            }
        }
    }

    public class GraphDataFormatY
    {
        public bool Valid { get; set; }
        public double[] Data { get; set; }
        public string[] DataStr { get; set; }
        public object[] DataObj { get; set; }

        public GraphDataFormatY()
        {
            Data = new double[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            DataStr = new string[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            DataObj = new object[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                Data[i] = 0.0;
                DataStr[i] = "0.0";
                DataObj[i] = null;
            }
        }
    }

    public class GraphDataX
    {
        public string AxisName { get; set; }        
        public List<GraphDataFormatX> DataList { get; set; }        

        public GraphDataX(string name)
        {
            AxisName = name;
            DataList = new List<GraphDataFormatX>();            
        }
    }

    public class GraphDataY
    {
        public string AxisName { get; set; }
        public List<GraphDataFormatY> DataList { get; set; }

        public GraphDataY(string name)
        {
            AxisName = name;
            DataList = new List<GraphDataFormatY>();
        }
    }

    public class GraphDataXY
    {
        public GraphDataX DataX { get; set; }
        public List<GraphDataY> DataYList { get; set; }

        public GraphDataXY()
        {
            DataYList = new List<GraphDataY>();
        }

        public GraphDataList GetGraphDataList(int idx)
        {
            if (idx >= DataYList.Count)
                return null;

            GraphDataList gdList = new GraphDataList();

            for(int i = 0; i < DataX.DataList.Count; i++)
            {
                GraphDataFormat gdf = new GraphDataFormat();

                gdf.Step = DataX.DataList[i].Step;
                gdf.Cycle = DataX.DataList[i].Cycle;
                for (int j = 0; j < MBZA_Constant.MAX_AUXTYPE_CHANNELS; j++)
                {
                    gdf.XData[j] = DataX.DataList[i].Data[j];
                    gdf.XDataStr[j] = DataX.DataList[i].DataStr[j];
                    gdf.XDataObj[j] = DataX.DataList[i].DataObj[j];

                    gdf.YData[j] = DataYList[idx].DataList[i].Data[j];
                    gdf.YDataStr[j] = DataYList[idx].DataList[i].DataStr[j];
                    gdf.YDataObj[j] = DataYList[idx].DataList[i].DataObj[j];
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
    }

    public class GraphDataList : List<GraphDataFormat>
    {
        public double[] GetXData(int dataidx = 0)
        {
            double[] result = new double[this.Count];

            for (int i = 0; i < this.Count; i++)
                result[i] = this[i].XData[dataidx];

            return result;
        }

        public double[] GetYData(int index,int dataidx = 0)
        {
            double[] result = new double[this.Count];

            for (int i = 0; i < this.Count; i++)
                result[i] = this[i].YData[dataidx];

            return result;
        }

        public List<double> GetXDataList(int DataIdx = 0)
        {
            List<double> result = new List<double>();

            //bool flag = true;

            //if (this[457].XData.Equals(double.NaN))
            //    flag = false;

            for (int i = 0; i < this.Count; i++)
            {
                if (this[i].XData.Equals(double.NaN) == false && this[i].YData.Equals(double.NaN) == false)
                    result.Add(this[i].XData[DataIdx]);                
            }

            return result;
        }

        public List<double> GetYDataList(int index, int DataIdx = 0)
        {
            List<double> result = new List<double>();

            for (int i = 0; i < this.Count; i++)
            {
                if (this[i].XData.Equals(double.NaN) == false && this[i].YData.Equals(double.NaN) == false)
                    result.Add(this[i].YData[DataIdx]);
            }

            return result;
        }

        public string[] GetXDataStr(int DataIdx = 0)
        {
            List<string> result = new List<string>();

            for (int i = 0; i < this.Count; i++)
            {
                if(this[i].XDataStr != null)
                    result.Add(this[i].XDataStr[DataIdx]);
            }

            return result.ToArray();
        }

        public string[] GetYDataStr(int DataIdx = 0)
        {
            List<string> result = new List<string>();

            for (int i = 0; i < this.Count; i++)
            {
                if(this[i].YDataStr != null)
                    result.Add(this[i].YDataStr[DataIdx]);
            }

            return result.ToArray();
        }

        public object[] GetXDataObj()
        {
            List<object> result = new List<object>();

            for (int i = 0; i < this.Count; i++)
            {
                if(this[i].XDataObj != null)
                    result.Add(this[i].XDataObj);
            }

            return result.ToArray();
        }

        public object[] GetYDataObj(int DataIdx = 0)
        {
            List<object> result = new List<object>();

            for (int i = 0; i < this.Count; i++)
            {
                if (this[i].XDataObj != null)
                    result.Add(this[i].YDataObj[DataIdx]);
            }

            return result.ToArray();            
        }        
    }
}
