using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using NationalInstruments;
using ZiveLab.ZM.ZIM;

namespace ZiveLab.ZM.Dataview
{
    public class ConvGraphData
    {
        #region List X 
        static private GraphDataList CalcTestTime(List<UnitReportData> list)                                                  // 완료
        {
            if (list == null)
                return null;

            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = urgd.mRawData.TestTime;
                    gdf.XDataStr[i] = urgd.mRawData.TestTime.ToString();
                    gdf.XDataObj[i] = urgd.TestTime;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcEref(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdf.XData[i] = urgd.mRawData.Vdc;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.mRawData.Vdc);
                    gdf.XDataObj[i] = urgd.mRawData.Vdc;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
       
        static private GraphDataList CalcI(List<UnitReportData> list, double denominator = 1)                                 // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = (denominator == 0) ? 0 : urgd.mRawData.Idc / denominator;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.mRawData.Idc / denominator);
                    gdf.XDataObj[i] = (double)((denominator == 0) ? 0 : urgd.mRawData.Idc / denominator);
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcTemperature(List<UnitReportData> list)                                               // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = urgd.mRawData.Temperature;
                    gdf.XDataStr[i] = string.Format("{0:F2}", urgd.mRawData.Temperature);
                    gdf.XDataObj[i] = urgd.mRawData.Temperature;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcLoad(List<UnitReportData> list, double denominator = 1)                              // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                double load = (denominator == 0) ? 0 : urgd.Load / denominator;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;

                gdf.XData[0] = load;
                gdf.XDataStr[0] = CoTypeString.DoubleToString(load);
                gdf.XDataObj[0] = load;

                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    load = (denominator == 0) ? 0 : urgd.AuxLoad[i] / denominator;
                    gdf.XData[i+1] = load;
                    gdf.XDataStr[i+1] = CoTypeString.DoubleToString(load);
                    gdf.XDataObj[i+1] = load;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        
        static private GraphDataList CalcPower(List<UnitReportData> list, double denominator = 1)                        // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;

                gdf.XData[0] = (denominator == 0) ? 0 : urgd.Power / denominator;
                gdf.XDataStr[0] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Power / denominator);
                gdf.XDataObj[0] = (double)((denominator == 0) ? 0 : urgd.Power / denominator);

                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdf.XData[i+1] = (denominator == 0) ? 0 : urgd.AuxPower[i] / denominator;
                    gdf.XDataStr[i+1] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.AuxPower[i] / denominator);
                    gdf.XDataObj[i+1] = (double)((denominator == 0) ? 0 : urgd.AuxPower[i] / denominator);
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcCapacity(List<UnitReportData> list, double denominator = 1)                        // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;

                gdf.XData[0] = (denominator == 0) ? 0 : urgd.Capacity / denominator;
                gdf.XDataStr[0] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Capacity / denominator);
                gdf.XDataObj[0] = (double)((denominator == 0) ? 0 : urgd.Capacity / denominator);
                for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = 0;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(0);
                    gdf.XDataObj[i] = 0;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcEnergy(List<UnitReportData> list, double denominator = 1)                           // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;

                gdf.XData[0] = (denominator == 0) ? 0 : urgd.Energy / denominator;
                gdf.XDataStr[0] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Energy / denominator);
                gdf.XDataObj[0] = (double)((denominator == 0) ? 0 : urgd.Energy / denominator);

                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdf.XData[i+1] = (denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator;
                    gdf.XDataStr[i+1] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator);
                    gdf.XDataObj[i+1] = (double)((denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator);
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcCycleTime(List<UnitReportData> list)                                                 // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = urgd.mRawData.CycleTime;
                    gdf.XDataStr[i] = urgd.mRawData.CycleTime.ToString();
                    gdf.XDataObj[i] = urgd.CycleTime;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcStepTime(List<UnitReportData> list)                                                  // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = urgd.mRawData.TaskTime;
                    gdf.XDataStr[i] = urgd.mRawData.TaskTime.ToString();
                    gdf.XDataObj[i] = urgd.StepTime;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcLogI(List<UnitReportData> list, double denominator = 1)                              // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = (urgd.mRawData.Idc == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.mRawData.Idc / denominator);
                    gdf.XDataStr[i] = CoTypeString.DoubleToString((urgd.mRawData.Idc == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.mRawData.Idc / denominator));
                    gdf.XDataObj[i] = (double)((urgd.mRawData.Idc == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.mRawData.Idc / denominator));
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcLogFreq(List<UnitReportData> list)                              // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = (urgd.mRawData.fFreq == 0) ? double.NaN : Math.Abs(urgd.mRawData.fFreq);
                    gdf.XDataStr[i] = CoTypeString.DoubleToString((urgd.mRawData.fFreq == 0) ? double.NaN : Math.Abs(urgd.mRawData.fFreq));
                    gdf.XDataObj[i] = (urgd.mRawData.fFreq == 0) ? double.NaN : Math.Abs(urgd.mRawData.fFreq);
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcZreal(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;

                gdf.XData[0] = urgd.MainZ.Zre;
                gdf.XDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zre);
                gdf.XDataObj[0] = urgd.MainZ.Zre;
                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdf.XData[i+1] = urgd.AuxZ[i].Zre;
                    gdf.XDataStr[i+1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zre);
                    gdf.XDataObj[i+1] = urgd.AuxZ[i].Zre;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcYreal(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;

                gdf.XData[0] = urgd.MainZ.Yre;
                gdf.XDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Yre);
                gdf.XDataObj[0] = urgd.MainZ.Yre;
                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdf.XData[i + 1] = urgd.AuxZ[i].Yre;
                    gdf.XDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Yre);
                    gdf.XDataObj[i + 1] = urgd.AuxZ[i].Yre;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcFreq(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                

                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = urgd.mRawData.fFreq;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.mRawData.fFreq);
                    gdf.XDataObj[i] = urgd.mRawData.fFreq;
                }

                gdList.Add(gdf);
            }

            return gdList;
        }

        static private GraphDataList CalcEoc(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;

                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdf.XData[i] = urgd.mRawData.Veoc;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.mRawData.Veoc); 
                    gdf.XDataObj[i] = urgd.mRawData.Veoc;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        #endregion List X 

        #region List Y 
        static private void CalcEref(GraphDataList gdList, List<UnitReportData> list)                                         // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YData[0] = urgd.mRawData.Vdc;
                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.mRawData.Vdc);
                gdList[index].YDataObj[0] = urgd.mRawData.Vdc;

                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YData[i+1] = urgd.AuxVdc[i];
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString(urgd.AuxVdc[i]);
                    gdList[index].YDataObj[i+1] = urgd.AuxVdc[i];
                }
                index++;
            }
        }
        static private void CalcI(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)                    // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdList[index].YData[i] = (denominator == 0) ? 0 : urgd.mRawData.Idc / denominator;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.mRawData.Idc / denominator);
                    gdList[index].YDataObj[i] = (double)((denominator == 0) ? 0 : urgd.mRawData.Idc / denominator);
                }
                index++;
            }
        }
        static private void CalcTemperature(GraphDataList gdList, List<UnitReportData> list)                                         // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdList[index].YData[i] = urgd.mRawData.Temperature;
                    gdList[index].YDataStr[i] = string.Format("{0:F2}", urgd.mRawData.Temperature);
                    gdList[index].YDataObj[i] = urgd.mRawData.Temperature;
                }
                index++;
            }
        }
        static private void CalcLoad(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)                 // 완료
        {
            int index = 0;
            int i;
            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YData[0] = (denominator == 0) ? 0 : urgd.Load / denominator;
                gdList[index].YDataStr[0] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Load / denominator);
                gdList[index].YDataObj[0] = (double)((denominator == 0) ? 0 : urgd.Load / denominator);

                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YData[i+1] = (denominator == 0) ? 0 : urgd.AuxLoad[i] / denominator;
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.AuxLoad[i] / denominator);
                    gdList[index].YDataObj[i+1] = (double)((denominator == 0) ? 0 : urgd.AuxLoad[i] / denominator);
                }
                index++;
            }
        }
        static private void CalcPower(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)              // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                gdList[index].YData[0] = (denominator == 0) ? 0 : urgd.Power / denominator;
                gdList[index].YDataStr[0] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Power / denominator);
                gdList[index].YDataObj[0] = (double)((denominator == 0) ? 0 : urgd.Power / denominator);
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YData[i+1] = (denominator == 0) ? 0 : urgd.AuxPower[i] / denominator;
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.AuxPower[i] / denominator);
                    gdList[index].YDataObj[i+1] = (double)((denominator == 0) ? 0 : urgd.AuxPower[i] / denominator);
                }
                index++;
            }
        }
        static private void CalcCapacity(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)           // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdList[index++].YData[i] = (denominator == 0) ? 0 : urgd.Capacity / denominator;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Capacity / denominator);
                    gdList[index].YDataObj[i] = (double)((denominator == 0) ? 0 : urgd.Capacity / denominator);
                }
                index++;
            }
        }
        static private void CalcEnergy(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)           // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YData[0] = (denominator == 0) ? 0 : urgd.Energy / denominator;
                gdList[index].YDataStr[0] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Energy / denominator);
                gdList[index].YDataObj[0] = (double)((denominator == 0) ? 0 : urgd.Energy / denominator);
                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YData[i+1] = (denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator;
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator);
                    gdList[index].YDataObj[i+1] = (double)((denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator);
                }
                index++;
            }
        }
        
        static private void CalcLogI(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)                 // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdList[index].YData[i] = (urgd.mRawData.Idc == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.mRawData.Idc / denominator);
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((urgd.mRawData.Idc == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.mRawData.Idc / denominator));
                    gdList[index].YDataObj[i] = (double)((urgd.mRawData.Idc == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.mRawData.Idc / denominator));
                }
                index++;
            }
        }
        static private void CalcEoc(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    gdList[index++].YData[i] = urgd.mRawData.Veoc;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.mRawData.Veoc);
                    gdList[index].YDataObj[i] = urgd.mRawData.Veoc;
                }
                index++;
            }
        }
        static private void CalcZreal(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zre);
                gdList[index].YDataObj[0] = urgd.MainZ.Zre;
                gdList[index].YData[0] = urgd.MainZ.Zre;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zre);
                    gdList[index].YDataObj[i+1] = urgd.AuxZ[i].Zre;
                    gdList[index].YData[i+1] = urgd.AuxZ[i].Zre;
                }
                index++;
            }
        }
        static private void CalcZimg(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zim);
                gdList[index].YDataObj[0] = urgd.MainZ.Zim;
                gdList[index].YData[0] = urgd.MainZ.Zim;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zim);
                    gdList[index].YDataObj[i+1] = urgd.AuxZ[i].Zim;
                    gdList[index].YData[i+1] = urgd.AuxZ[i].Zim;
                }
                index++;
            }
        }
        static private void CalcZmag(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zmag);
                gdList[index].YDataObj[0] = urgd.MainZ.Zmag;
                gdList[index].YData[0] = urgd.MainZ.Zmag;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zmag);
                    gdList[index].YDataObj[i+1] = urgd.AuxZ[i].Zmag;
                    gdList[index].YData[i+1] = urgd.AuxZ[i].Zmag;
                }
                index++;
            }
        }
        static private void CalcLogZmag(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)                 // 완료Zmag
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                gdList[index].YData[0] = (urgd.MainZ.Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Zmag / denominator);
                gdList[index].YDataStr[0] = CoTypeString.DoubleToString((urgd.MainZ.Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Zmag / denominator));
                gdList[index].YDataObj[0] = (urgd.MainZ.Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Zmag / denominator);
                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YData[i+1] = (urgd.AuxZ[i].Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.AuxZ[i].Zmag / denominator);
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString((urgd.AuxZ[i].Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.AuxZ[i].Zmag / denominator));
                    gdList[index].YDataObj[i+1] = (urgd.AuxZ[i].Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.AuxZ[i].Zmag / denominator);
                }
                index++;
            }
        }
        static private void CalcZphase(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.ZPhase);
                gdList[index].YDataObj[0] = urgd.MainZ.ZPhase;
                gdList[index].YData[0] = urgd.MainZ.ZPhase;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i+1] = CoTypeString.DoubleToString(urgd.AuxZ[i].ZPhase);
                    gdList[index].YDataObj[i+1] = urgd.AuxZ[i].ZPhase;
                    gdList[index].YData[i+1] = urgd.AuxZ[i].ZPhase;
                }
                index++;
            }
        }
        static private void CalcYreal(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Yre);
                gdList[index].YDataObj[0] = urgd.MainZ.Yre;
                gdList[index].YData[0] = urgd.MainZ.Yre;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Yre);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Yre;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Yre;
                }
                index++;
            }
        }
        static private void CalcYimg(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Yim);
                gdList[index].YDataObj[0] = urgd.MainZ.Yim;
                gdList[index].YData[0] = urgd.MainZ.Yim;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Yim);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Yim;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Yim;
                }
                index++;
            }
        }
        static private void CalcYmag(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Ymag);
                gdList[index].YDataObj[0] = urgd.MainZ.Ymag;
                gdList[index].YData[0] = urgd.MainZ.Ymag;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Ymag);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Ymag;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Ymag;
                }
                index++;
            }
        }
        static private void CalcLogYmag(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)                 // 완료Zmag
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                gdList[index].YData[0] = (urgd.MainZ.Ymag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Ymag / denominator);
                gdList[index].YDataStr[0] = CoTypeString.DoubleToString((urgd.MainZ.Ymag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Ymag / denominator));
                gdList[index].YDataObj[0] = (urgd.MainZ.Ymag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Ymag / denominator);
                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YData[i + 1] = (urgd.AuxZ[i].Ymag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.AuxZ[i].Ymag / denominator);
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString((urgd.AuxZ[i].Ymag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.AuxZ[i].Ymag / denominator));
                    gdList[index].YDataObj[i + 1] = (urgd.AuxZ[i].Ymag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.AuxZ[i].Ymag / denominator);
                }
                index++;
            }
        }
        static private void CalcYphase(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.YPhase);
                gdList[index].YDataObj[0] = urgd.MainZ.YPhase;
                gdList[index].YData[0] = urgd.MainZ.YPhase;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].YPhase);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].YPhase;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].YPhase;
                }
                index++;
            }
        }
        static private void CalcRsRC(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rs_RC);
                gdList[index].YDataObj[0] = urgd.MainZ.Rs_RC;
                gdList[index].YData[0] = urgd.MainZ.Rs_RC;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Rs_RC);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Rs_RC;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Rs_RC;
                }
                index++;
            }
        }
        static private void CalcCsRC(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Cs_RC);
                gdList[index].YDataObj[0] = urgd.MainZ.Cs_RC;
                gdList[index].YData[0] = urgd.MainZ.Cs_RC;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Cs_RC);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Cs_RC;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Cs_RC;
                }
                index++;
            }
        }
        static private void CalcRpRC(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rp_RC);
                gdList[index].YDataObj[0] = urgd.MainZ.Rp_RC;
                gdList[index].YData[0] = urgd.MainZ.Rp_RC;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Rp_RC);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Rp_RC;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Rp_RC;
                }
                index++;
            }
        }
        static private void CalcRsRL(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rs_RL);
                gdList[index].YDataObj[0] = urgd.MainZ.Rs_RL;
                gdList[index].YData[0] = urgd.MainZ.Rs_RL;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Rs_RL);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Rs_RL;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Rs_RL;
                }
                index++;
            }
        }
        static private void CalcLsRL(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Ls_RL);
                gdList[index].YDataObj[0] = urgd.MainZ.Ls_RL;
                gdList[index].YData[0] = urgd.MainZ.Ls_RL;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Ls_RL);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Ls_RL;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Ls_RL;
                }
                index++;
            }
        }
        static private void CalcAbsQRL(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.AbsQ_RL);
                gdList[index].YDataObj[0] = urgd.MainZ.AbsQ_RL;
                gdList[index].YData[0] = urgd.MainZ.AbsQ_RL;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].AbsQ_RL);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].AbsQ_RL;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].AbsQ_RL;
                }
                index++;
            }
        }
        static private void CalcCpRC(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                gdList[index].YDataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Cp_RC);
                gdList[index].YDataObj[0] = urgd.MainZ.Cp_RC;
                gdList[index].YData[0] = urgd.MainZ.Cp_RC;
                for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    gdList[index].YDataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Cp_RC);
                    gdList[index].YDataObj[i + 1] = urgd.AuxZ[i].Cp_RC;
                    gdList[index].YData[i + 1] = urgd.AuxZ[i].Cp_RC;
                }
                index++;
            }
        }
        static private GraphDataList GenGraphDataByCycle(GraphDataList gdList)
        {
            uint oldCycle = 0;

            if (gdList.Count > 0)
            {
                oldCycle = gdList[0].Cycle;
            }

            GraphDataList resList = new GraphDataList();

            IEnumerator ie = gdList.GetEnumerator();

            while (ie.MoveNext())
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;

                if (oldCycle != gdf.Cycle)
                {
                    oldCycle = gdf.Cycle;

                    GraphDataFormat gdfNone = new GraphDataFormat();
                    for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        gdfNone.XData[i] = gdf.XData[i];
                        gdfNone.YData[i] = gdf.YData[i];
                    }
                    resList.Add(gdfNone);
                }

                resList.Add(gdf);
            }

            return resList;
        }
        #endregion List Y 

        static public GraphDataList GetGraphData(string x, string y, List<UnitReportData> list, DataFilter filter, double denominator = 1)
        {
            List<UnitReportData> filteredList = list;

            if (filter != null)
            {
                filteredList = GetFilteredDataList(list, filter);
            }

            GraphDataList gdList = null;
           
            switch (x)
            {
                case "Log(Frequency)":
                    gdList = CalcLogFreq(filteredList);
                    break;
                case "Zreal":
                    gdList = CalcZreal(filteredList);
                    break;
                case "Yreal":
                    gdList = CalcYreal(filteredList);
                    break;
                case "Z-Phase":
                case "Zphase":
                    CalcZphase(gdList, filteredList);
                    break;
                case "Y-Phase":
                case "Yphase":
                    CalcYphase(gdList, filteredList);
                    break;
                case "Rs(R-C)":
                    CalcRsRC(gdList, filteredList);
                    break;
                case "Cs(R-C)":
                    CalcCsRC(gdList, filteredList);
                    break;
                case "Rp(R|C)":
                    CalcRpRC(gdList, filteredList);
                    break;
                case "Cp(R|C)":
                    CalcRpRC(gdList, filteredList);
                    break;
                case "Rs(R-L)":
                    CalcRsRL(gdList, filteredList);
                    break;
                case "Ls(R-L)":
                    CalcLsRL(gdList, filteredList);
                    break;
                case "Q(R-L)": // "|Q(R-L)|":
                    CalcAbsQRL(gdList, filteredList);
                    break;
                case "Test time":
                    gdList = CalcTestTime(filteredList);                    
                    break;
                case "Vdc":
                case "Voltage":
                case "Eref":
                    gdList = CalcEref(filteredList);
                    break;
                case "Idc":
                case "Current":
                case "I":
                    gdList = CalcI(filteredList, denominator);
                    break;
                case "Temperature":
                    gdList = CalcTemperature(filteredList);
                    break;
                case "Frequency":
                    gdList = CalcFreq(filteredList);
                    break;
                case "OCP":
                case "Eoc":
                    gdList = CalcFreq(filteredList);
                    break;
                case "Capacity":
                    gdList = CalcCapacity(filteredList, denominator);
                    break;
            }
            
            switch (y)
            {
                case "Zreal":
                    CalcZreal(gdList, filteredList);
                    break;
                case "-Zim":
                case "-Zimg":
                    CalcZimg(gdList, filteredList);
                    break;
                case "|Z|":
                    CalcZmag(gdList, filteredList);
                    break;
                case "Z-Phase":
                case "Zphase":
                    CalcZphase(gdList, filteredList);
                    break;
                case "Yreal":
                    CalcYreal(gdList, filteredList);
                    break;
                case "-Yim":
                case "-Yimg":
                    CalcYimg(gdList, filteredList);
                    break;
                case "|Y|":
                    CalcYmag(gdList, filteredList);
                    break;
                case "Y-Phase":
                case "Yphase":
                    CalcYphase(gdList, filteredList);
                    break;
                case "Log|Z|":
                    CalcLogZmag(gdList, filteredList);
                    break;
                case "Log|Y|":
                    CalcLogYmag(gdList, filteredList);
                    break;
                case "Rs(R-C)":
                    CalcRsRC(gdList, filteredList);
                    break;
                case "Cs(R-C)":
                    CalcCsRC(gdList, filteredList);
                    break;
                case "Rp(R|C)":
                    CalcRpRC(gdList, filteredList);
                    break;
                case "Cp(R|C)":
                    CalcRpRC(gdList, filteredList);
                    break;
                case "Rs(R-L)":
                    CalcRsRL(gdList, filteredList);
                    break;
                case "Ls(R-L)":
                    CalcLsRL(gdList, filteredList);
                    break;
                case "Q(R-L)":
                    CalcAbsQRL(gdList, filteredList);
                    break;
                case "Vdc":
                case "Voltage":
                case "Eref":
                    gdList = CalcEref(filteredList);
                    break;
                case "Idc":
                case "Current":
                case "I":
                    gdList = CalcI(filteredList, denominator);
                    break;
                case "Temperature":
                    gdList = CalcTemperature(filteredList);
                    break;
                case "Load":
                    gdList = CalcLoad(filteredList, denominator);
                    break;
                case "Power":
                    gdList = CalcPower(filteredList, denominator);
                    break;
                case "Capacity":
                    gdList = CalcCapacity(filteredList, denominator);
                    break;
                case "Energy":
                    CalcEnergy(gdList, filteredList, denominator);
                    gdList = GenGraphDataByCycle(gdList);
                    break;
                case "Eoc":
                case "OCP":
                    CalcEoc(gdList, filteredList);
                    break;
            }

            return gdList;
        }

        static public Dictionary<uint, GraphDataList> GetDataByAux(GraphDataList list, int MaxCount)
        {
            Dictionary<uint, GraphDataList> resultDict = new Dictionary<uint, GraphDataList>();

            IEnumerator ie = list.GetEnumerator();
            for (int i=0; i< MaxCount + 1; i++)
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;
            }

            

            while (ie.MoveNext())
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;

                if (!resultDict.ContainsKey((uint)gdf.Cycle))
                {
                    GraphDataList gdfList = new GraphDataList();

                    resultDict.Add((uint)gdf.Cycle, gdfList);
                }

                resultDict[(uint)gdf.Cycle].Add(gdf);
            }

            return resultDict;
        }

        static public Dictionary<uint, GraphDataList> GetDataByCycle(GraphDataList list)
        {
            Dictionary<uint, GraphDataList> resultDict = new Dictionary<uint, GraphDataList>();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;

                if (!resultDict.ContainsKey((uint)gdf.Cycle))
                {
                    GraphDataList gdfList = new GraphDataList();

                    resultDict.Add((uint)gdf.Cycle, gdfList);
                }

                resultDict[(uint)gdf.Cycle].Add(gdf);
            }

            return resultDict;
        }
        static public Dictionary<uint, GraphDataList> GetDataByStep(GraphDataList list)
        {
            if (list.Count == 0)
                return null;

            Dictionary<uint, GraphDataList> resultDict = new Dictionary<uint, GraphDataList>();

            IEnumerator ie = list.GetEnumerator();

            uint oldStep = (uint)list[0].Step;

            while (ie.MoveNext())
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;

                if (!resultDict.ContainsKey((uint)gdf.Step))
                {
                    GraphDataList gdList = new GraphDataList();

                    resultDict.Add((uint)gdf.Step, gdList);
                }

                if (oldStep != gdf.Step)
                {
                    GraphDataFormat nulldata = new GraphDataFormat();
                    for(int i=0; i< MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        nulldata.XData[i] = double.NaN;
                        nulldata.YData[i] = gdf.YData[i];
                    }
                    

                    resultDict[oldStep].Add(nulldata);
                    oldStep = (uint)gdf.Step;
                }

                resultDict[(uint)gdf.Step].Add(gdf);
            }

            return resultDict;
        }
       
        #region 프라이빗 메소드
        static private List<UnitReportData> GetFilteredDataList(List<UnitReportData> urgdList, DataFilter filter)
        {
            List<UnitReportData> resultlist = new List<UnitReportData>();

            if (urgdList == null)
                return null;

            IEnumerator ie = urgdList.GetEnumerator();

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                if (filter != null && CheckDataFilter(filter, urgd))
                    resultlist.Add(urgd);
            }

            return resultlist;
        }     
        static private bool CheckDataFilter(DataFilter filter, UnitReportData urgd)
        {
            if (filter.TimeEnable)
            {
                switch (filter.TimeType)
                {
                    case "Test time":
                        if (filter.StartTime > urgd.TestTime || filter.EndTime < urgd.TestTime)
                            return false;
                        break;
                    case "Cycle time":
                        if (filter.StartTime > urgd.CycleTime || filter.EndTime < urgd.CycleTime)
                            return false;
                        break;
                    case "Step time":
                        if (filter.StartTime > urgd.StepTime || filter.EndTime < urgd.StepTime)
                            return false;
                        break;
                }
            }

            if (filter.CycNoEnable)
            {
                if (!filter.GetCycNoList().Contains((uint)urgd.mRawData.nCycle))
                    return false;
            }

            return true;
        }
        static private GraphDataList GenGraphDataByStep(GraphDataList gdList)
        {
            uint oldStep = 0;
            uint oldCycle = 0;

            if (gdList.Count > 0)
            {
                oldStep = gdList[0].Step;
                oldCycle = gdList[0].Cycle;
            }

            GraphDataList resList = new GraphDataList();

            IEnumerator ie = gdList.GetEnumerator();

            while (ie.MoveNext())
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;                

                if (oldStep != gdf.Step)
                {
                    GraphDataFormat gdfNone = new GraphDataFormat();

                    gdfNone.Step = oldStep;
                    gdfNone.Cycle = oldCycle;
                    for(int i = 0; i< MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        gdfNone.XData[i] = double.NaN;
                        gdfNone.YData[i] = gdf.YData[i];
                    }
                    

                    resList.Add(gdfNone);

                    oldStep = gdf.Step;
                    oldCycle = gdf.Cycle;
                }

                resList.Add(gdf);
            }

            return resList;
        }
        #endregion
    }
        
    public class MakeGraphData
    {
        private int _TimeFormat;
        private GraphDataXY _GraphDataXY;

        private DataFilter _DataFilter;
        private double _Denominator;
        private double _CellCapacity;
        private bool bxtime;
        private bool bChgTimeFormat;
        private int _DataCount = 0;

        public int DataCount
        {
            get { return _DataCount; }
        }

        public int TimeFormat
        {
            get { return _TimeFormat; }
        }

        public GraphDataXY GraphDataXY
        {
            get { return _GraphDataXY; }
        }

        public MakeGraphData(string xAxis, string[] yAxes, DataFilter filter, double CellCapacity, int timeFormat = 1, double denominator = 1)
        {
            _TimeFormat = timeFormat;

            _GraphDataXY = new GraphDataXY();

            _GraphDataXY.DataX = new GraphDataX(xAxis);
            _GraphDataXY.DataX.AxisName = xAxis;

            for(int i = 0; i < yAxes.Length; i++)
            {
                if(yAxes[i] != "None")
                {
                    _GraphDataXY.DataYList.Add(new GraphDataY(yAxes[i]));
                }
            }

            _DataFilter = filter;
            _Denominator = denominator;
            _CellCapacity = CellCapacity;
            bxtime = CheckTimeData();
            bChgTimeFormat = false;
        }

        public void SetFormat(int timeFormat = 1)
        {
            if(_TimeFormat != timeFormat)
            {
                bChgTimeFormat = true;
            }
            _TimeFormat = timeFormat;
        }

        public void Add(UnitReportData urgd)
        {
            SetGraphData(urgd, _GraphDataXY);
        }

        public GraphDataList RemakeGraphDataList(int idx)
        {
            GraphDataList gdList = _GraphDataXY.GetGraphDataList(idx);

            int chkAxis = CheckAxis(idx);

            if (chkAxis == 1)
                gdList = GenGraphDataByCycle(gdList);
            else if (chkAxis == 2)
                gdList = GenGraphDataByStep(gdList);
            else if (chkAxis == 3)
                gdList = GenGraphDataByLastStep(gdList);

            CheckLogData(gdList, idx);


            return gdList;          
        }

        public string[] GetColumns(int pad)
        {
            List<string> colList = new List<string>();

            colList.Add(SubStringWidthPad(Properties.Resources.Index, pad));
            colList.Add(SubStringWidthPad(_GraphDataXY.DataX.AxisName, pad));

            for(int i = 0; i < _GraphDataXY.DataYList.Count; i++)
            {
                colList.Add(SubStringWidthPad(_GraphDataXY.DataYList[i].AxisName, pad));
            }

            return colList.ToArray();
        }

        public string[] GetColLine(int pad)
        {
            List<string> colList = new List<string>();

            colList.Add(SubStringWidthPad(string.Empty, pad, '-'));
            colList.Add(SubStringWidthPad(string.Empty, pad, '-'));

            for (int i = 0; i < _GraphDataXY.DataYList.Count; i++)
            {
                colList.Add(SubStringWidthPad(string.Empty, pad, '-'));
            }

            return colList.ToArray();
        }

        private int CheckAxis(int idx)
        {
            int result = 0;

            switch(_GraphDataXY.DataX.AxisName)
            {
                case "Test time":
                case "Eref":
                case "I":
                case "Aux":
                case "Temperature":
                case "Load":                    
                case "Power":
                   break;
                case "Capacity":
                case "Energy":
                case "Cycle time":
                case "LogI":
                case "|I|":
                    result = 1;
                    break;
                case "Step time":
                    result = 2;
                    break;
            }

            switch(_GraphDataXY.DataYList[idx].AxisName)
            {
                case "Eref":
                case "Temperature":
                case "I":
                case "LogI":
                case "Eoc":
                case "Aux":
                case "Load":
                case "Power":
                   break;
                case "Capacity":
                case "Energy":
                    if (result == 0)        // 사이클이 아닐 경우만 사이클로 변경. 스텝일 경우는 유지
                        result = 1;
                    break;
                case "dQ/dV":
                    result = 3;             // Step의 마지막 Data 만 취함.
                    break;
            }

            if (_GraphDataXY.DataX.AxisName == "Eref" && _GraphDataXY.DataYList[idx].AxisName == "Capacity")
                result = 2;

            if (_GraphDataXY.DataX.AxisName == "Capacity" && _GraphDataXY.DataYList[idx].AxisName == "Eref")
                result = 2;

            return result;
        }
        private void CheckLogData(GraphDataList gdf, int idx)
        {
            if(_GraphDataXY.DataX.AxisName == "LogI")
            {
                for(int i = 0; i < gdf.Count; i++)
                {
                    for (int j = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; j++)
                    {
                        if (gdf[i].XData[j] == 0)
                        {
                            gdf[i].XData[j] = double.NaN;
                            gdf[i].XDataStr[j] = CoTypeString.DoubleToString(double.NaN);
                            gdf[i].XDataObj[j] = (double)double.NaN;
                        }
                    }
                }
            }

            if (_GraphDataXY.DataYList[idx].AxisName == "LogI")
            {
                for (int i = 0; i < gdf.Count; i++)
                {
                    for (int j = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; j++)
                    {
                        if (gdf[i].YData[j] == 0)
                        {
                            if (gdf[i].XData[j] == double.NaN)
                                gdf[i].YData[j] = 0;
                            else
                                gdf[i].YData[j] = double.NaN;

                            gdf[i].YDataStr[j] = CoTypeString.DoubleToString(double.NaN);
                            gdf[i].YDataObj[j] = (double)double.NaN;
                        }
                    }
                }
            }
        }

        private GraphDataList GenGraphDataByCycle(GraphDataList gdList)
        {
            uint oldCycle = 0;

            if (gdList.Count > 0)
            {
                oldCycle = gdList[0].Cycle;
            }

            GraphDataList resList = new GraphDataList();

            IEnumerator ie = gdList.GetEnumerator();

            while (ie.MoveNext())
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;

                if (oldCycle != gdf.Cycle)
                {
                    oldCycle = gdf.Cycle;

                    GraphDataFormat gdfNone = new GraphDataFormat();
                    for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        gdfNone.XData[i] = double.NaN;
                        gdfNone.YData[i] = gdf.YData[i];
                    }

                    resList.Add(gdfNone);
                }

                resList.Add(gdf);
            }

            return resList;
        }
        private GraphDataList GenGraphDataByStep(GraphDataList gdList)
        {
            uint oldStep = 0;
            uint oldCycle = 0;

            if (gdList.Count > 0)
            {
                oldStep = gdList[0].Step;
                oldCycle = gdList[0].Cycle;
            }

            GraphDataList resList = new GraphDataList();

            IEnumerator ie = gdList.GetEnumerator();

            while (ie.MoveNext())
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;

                if (oldStep != gdf.Step)
                {
                    GraphDataFormat gdfNone = new GraphDataFormat();

                    gdfNone.Step = oldStep;
                    gdfNone.Cycle = oldCycle;
                    for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        gdfNone.XData[i] = double.NaN;
                        gdfNone.YData[i] = gdf.YData[i];
                    }

                    resList.Add(gdfNone);

                    oldStep = gdf.Step;
                    oldCycle = gdf.Cycle;
                }

                resList.Add(gdf);
            }

            return resList;
        }
        private GraphDataList GenGraphDataByLastStep(GraphDataList gdList)
        {
            List<GraphDataList> stepList = GetDataByStep(gdList);

            GraphDataList resList = new GraphDataList();

            for(int i = 0; i < stepList.Count; i++)
            {
                resList.Add(stepList[i].Last<GraphDataFormat>());
            }

            return resList;
        }

        private List<GraphDataList> GetDataByStep(GraphDataList list)
        {
            List<GraphDataList> stepList = new List<GraphDataList>();

            IEnumerator ie = list.GetEnumerator();

            GraphDataList gdl = null;

            while(ie.MoveNext())
            {
                GraphDataFormat gdf = (GraphDataFormat)ie.Current;
                gdl.Add(gdf);
            }

            return stepList;
        }

        public bool SetGraphData(UnitReportData urgd, GraphDataXY gdxy)
        {
            int i;
            int j;
            if (!CheckDataFilter(urgd))
                return false;

            GraphDataFormatX gdfx = new GraphDataFormatX();

            gdfx.Step = (uint)urgd.mRawData.nTaskNo;
            gdfx.Cycle = (uint)urgd.mRawData.nCycle;
         
            switch (gdxy.DataX.AxisName)
            {
                case "Log(Frequency)":
                    gdfx.Data[0] = urgd.MainZ.Frequency;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Frequency);
                    gdfx.DataObj[0] = urgd.MainZ.Frequency;

                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i+1] = urgd.AuxZ[i].Frequency;
                        gdfx.DataStr[i+1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Frequency);
                        gdfx.DataObj[i+1] = urgd.AuxZ[i].Frequency;
                    }
                    break;
                case "Zreal":
                    gdfx.Data[0] = urgd.MainZ.Zre;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zre);
                    gdfx.DataObj[0] = urgd.MainZ.Zre;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i+1] = urgd.AuxZ[i].Zre;
                        gdfx.DataStr[i+1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zre);
                        gdfx.DataObj[i+1] = urgd.AuxZ[i].Zre;
                    }
                    break;
                case "Yreal":
                    gdfx.Data[0] = urgd.MainZ.Yre;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Yre);
                    gdfx.DataObj[0] = urgd.MainZ.Yre;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].Yre;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Yre);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].Yre;
                    }
                    break;
                case "Zphase":
                case "Z-Phase":
                    gdfx.Data[0] = urgd.MainZ.ZPhase;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.ZPhase);
                    gdfx.DataObj[0] = urgd.MainZ.ZPhase;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].ZPhase;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].ZPhase);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].ZPhase;
                    }
                    break;
                case "Yphase":
                case "Y-Phase":
                    gdfx.Data[0] = urgd.MainZ.YPhase;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.YPhase);
                    gdfx.DataObj[0] = urgd.MainZ.YPhase;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].YPhase;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].YPhase);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].YPhase;
                    }
                    break;
                case "Rs(R-C)":
                    gdfx.Data[0] = urgd.MainZ.Rs_RC;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rs_RC);
                    gdfx.DataObj[0] = urgd.MainZ.Rs_RC;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].Rs_RC;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Rs_RC);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].Rs_RC;
                    }
                    break;
                case "Cs(R-C)":
                    gdfx.Data[0] = urgd.MainZ.Cs_RC;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Cs_RC);
                    gdfx.DataObj[0] = urgd.MainZ.Cs_RC;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].Cs_RC;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Cs_RC);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].Cs_RC;
                    }
                    break;
                case "Rp(R|C)":
                    gdfx.Data[0] = urgd.MainZ.Rp_RC;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rp_RC);
                    gdfx.DataObj[0] = urgd.MainZ.Rp_RC;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].Rp_RC;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Rp_RC);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].Rp_RC;
                    }
                    break;
                case "Cp(R|C)":
                    gdfx.Data[0] = urgd.MainZ.Cp_RC;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Cp_RC);
                    gdfx.DataObj[0] = urgd.MainZ.Cp_RC;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].Cp_RC;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Cp_RC);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].Cp_RC;
                    }
                    break;
                case "Rs(R-L)":
                    gdfx.Data[0] = urgd.MainZ.Rs_RL;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rs_RL);
                    gdfx.DataObj[0] = urgd.MainZ.Rs_RL;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].Rs_RL;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Rs_RL);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].Rs_RL;
                    }
                    break;
                case "Ls(R-L)":
                    gdfx.Data[0] = urgd.MainZ.Ls_RL;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Ls_RL);
                    gdfx.DataObj[0] = urgd.MainZ.Ls_RL;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].Ls_RL;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Ls_RL);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].Ls_RL;
                    }
                    break;
                case "Q(R-L)":
                    gdfx.Data[0] = urgd.MainZ.AbsQ_RL;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.AbsQ_RL);
                    gdfx.DataObj[0] = urgd.MainZ.AbsQ_RL;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].AbsQ_RL;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].AbsQ_RL);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].AbsQ_RL;
                    }
                    break;
                case "Test time":
                    for (i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        gdfx.Data[i] = (double)DataConverter.Convert(urgd.TestTime, typeof(double));
                        gdfx.DataStr[i] = ZMF_File.GetTimeSpanString(urgd.TestTime, _TimeFormat);
                        gdfx.DataObj[i] = urgd.TestTime;
                    }
                    break;
                case "Eref":
                case "Voltage":
                case "Vdc":
                    gdfx.Data[0] = urgd.mRawData.Vdc;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.mRawData.Vdc);
                    gdfx.DataObj[0] = urgd.mRawData.Vdc;
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxVdc[i];
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxVdc[i]);
                        gdfx.DataObj[i + 1] = urgd.AuxVdc[i];
                    }
                    break;
                case "I":
                case "Current":
                case "Idc":
                    for (i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.mRawData.Idc / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.mRawData.Idc / _Denominator);
                        gdfx.DataObj[i] = (double)((_Denominator == 0) ? 0 : urgd.mRawData.Idc / _Denominator);
                    }
                    break;
                case "Temperature":
                    for (i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        gdfx.Data[i] = urgd.mRawData.Temperature;
                        gdfx.DataStr[i] = string.Format("{0:F2}", urgd.mRawData.Temperature);
                        gdfx.DataObj[i] = string.Format("{0:F2}", urgd.mRawData.Temperature);
                    }
                    break;
                case "Frequency":
                    gdfx.Data[0] = urgd.MainZ.Frequency;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Frequency);
                    gdfx.DataObj[0] = urgd.MainZ.Frequency;

                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i + 1] = urgd.AuxZ[i].Frequency;
                        gdfx.DataStr[i + 1] = CoTypeString.DoubleToString(urgd.AuxZ[i].Frequency);
                        gdfx.DataObj[i + 1] = urgd.AuxZ[i].Frequency;
                    }
                    break;
                case "Veoc":
                case "Eoc":
                case "OCP":
                    gdfx.Data[0] = urgd.mRawData.Veoc;
                    gdfx.DataStr[0] = string.Format("{0:F2}", urgd.mRawData.Veoc);
                    gdfx.DataObj[0] = string.Format("{0:F2}", urgd.mRawData.Veoc);
                    for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                    {
                        gdfx.Data[i] = urgd.mRawData.mdata[i/4].mdata[i%4].Veoc;
                        gdfx.DataStr[i] = string.Format("{0:F2}", urgd.mRawData.mdata[i / 4].mdata[i % 4].Veoc);
                        gdfx.DataObj[i] = string.Format("{0:F2}", urgd.mRawData.mdata[i / 4].mdata[i % 4].Veoc);
                    }
                    break;
                    
                case "Capacity":
                    gdfx.Data[0] = (_Denominator == 0) ? 0 : urgd.Capacity / _Denominator;
                    gdfx.DataStr[0] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.Capacity / _Denominator);
                    gdfx.DataObj[0] = (double)((_Denominator == 0) ? 0 : urgd.Capacity / _Denominator);
                    for (i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        gdfx.Data[i] = 0;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString(0);
                        gdfx.DataObj[i] = 0;
                    }
                    break;
               
            }

            gdxy.DataX.DataList.Add(gdfx);

            for (i = 0; i < gdxy.DataYList.Count; i++)
            {
                GraphDataFormatY gdfy = new GraphDataFormatY();
                
                gdfy.Valid = true;
                switch (gdxy.DataYList[i].AxisName)
                {
                    case "Zreal":
                        gdfy.Data[0] = urgd.MainZ.Zre;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zre);
                        gdfy.DataObj[0] = urgd.MainZ.Zre;
                        for (j=0; j< MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxZ[j].Zre;
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Zre);
                            gdfy.DataObj[j+1] = urgd.AuxZ[j].Zre;
                        }
                        break;
                    case "-Zim":
                    case "-Zimg":
                        gdfy.Data[0] = urgd.MainZ.Zim * -1.0;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zim * -1.0);
                        gdfy.DataObj[0] = urgd.MainZ.Zim * -1.0;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxZ[j].Zim * -1.0;
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Zim * -1.0);
                            gdfy.DataObj[j+1] = urgd.AuxZ[j].Zim * -1.0;
                        }
                        break;
                    case "|Z|":
                        gdfy.Data[0] = urgd.MainZ.Zmag;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zmag);
                        gdfy.DataObj[0] = urgd.MainZ.Zmag;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxZ[j].Zmag;
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Zmag);
                            gdfy.DataObj[j+1] = urgd.AuxZ[j].Zmag;
                        }
                        break;
                    case "Z-Phase":
                    case "Zphase":
                        gdfy.Data[0] = urgd.MainZ.ZPhase;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.ZPhase);
                        gdfy.DataObj[0] = urgd.MainZ.ZPhase;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxZ[j].ZPhase;
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxZ[j].ZPhase);
                            gdfy.DataObj[j+1] = urgd.AuxZ[j].ZPhase;
                        }
                        break;
                    case "Yreal":
                        gdfy.Data[0] = urgd.MainZ.Yre;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Yre);
                        gdfy.DataObj[0] = urgd.MainZ.Yre;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Yre;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Yre);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Yre;
                        }
                        break;
                    case "-Yim":
                    case "-Yimg":
                        gdfy.Data[0] = urgd.MainZ.Yim * -1.0;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Yim * -1.0);
                        gdfy.DataObj[0] = urgd.MainZ.Yim * -1.0;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Yim * -1.0;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Yim * -1.0);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Yim * -1.0;
                        }
                        break;
                    case "|Y|":
                        gdfy.Data[0] = urgd.MainZ.Ymag;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Ymag);
                        gdfy.DataObj[0] = urgd.MainZ.Ymag;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Ymag;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Ymag);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Ymag;
                        }
                        break;
                    case "Y-Phase":
                    case "Yphase":
                        gdfy.Data[0] = urgd.MainZ.YPhase;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.YPhase);
                        gdfy.DataObj[0] = urgd.MainZ.YPhase;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].YPhase;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].YPhase);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].YPhase;
                        }
                        break;
                    case "Log|Z|":
                        gdfy.Data[0] = urgd.MainZ.Zmag;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Zmag);
                        gdfy.DataObj[0] = urgd.MainZ.Zmag;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Zmag;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Zmag);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Zmag;
                        }
                        break;
                    case "Log|Y|":
                        gdfy.Data[0] = urgd.MainZ.Ymag;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Ymag);
                        gdfy.DataObj[0] = urgd.MainZ.Ymag;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Ymag;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Ymag);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Ymag;
                        }
                        break;
                    case "Rs(R-C)":
                        gdfy.Data[0] = urgd.MainZ.Rs_RC;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rs_RC);
                        gdfy.DataObj[0] = urgd.MainZ.Rs_RC;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Rs_RC;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Rs_RC);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Rs_RC;
                        }
                        break;
                    case "Cs(R-C)":
                        gdfy.Data[0] = urgd.MainZ.Cs_RC;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Cs_RC);
                        gdfy.DataObj[0] = urgd.MainZ.Cs_RC;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Cs_RC;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Cs_RC);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Cs_RC;
                        }
                        break;
                    case "Rp(R|C)":
                        gdfy.Data[0] = urgd.MainZ.Rp_RC;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rp_RC);
                        gdfy.DataObj[0] = urgd.MainZ.Rp_RC;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Rp_RC;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Rp_RC);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Rp_RC;
                        }
                        break;
                    case "Cp(R|C)":
                        gdfy.Data[0] = urgd.MainZ.Cp_RC;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Cp_RC);
                        gdfy.DataObj[0] = urgd.MainZ.Cp_RC;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Cp_RC;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Cp_RC);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Cp_RC;
                        }
                        break;
                    case "Rs(R-L)":
                        gdfy.Data[0] = urgd.MainZ.Rs_RL;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Rs_RL);
                        gdfy.DataObj[0] = urgd.MainZ.Rs_RL;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Rs_RL;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Rs_RL);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Rs_RL;
                        }
                        break;
                    case "Ls(R-L)":
                        gdfy.Data[0] = urgd.MainZ.Ls_RL;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.Ls_RL);
                        gdfy.DataObj[0] = urgd.MainZ.Ls_RL;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].Ls_RL;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].Ls_RL);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].Ls_RL;
                        }
                        break;
                    case "Q(R-L)": // "|Q(R-L)|":
                        gdfy.Data[0] = urgd.MainZ.AbsQ_RL;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.MainZ.AbsQ_RL);
                        gdfy.DataObj[0] = urgd.MainZ.AbsQ_RL;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.AuxZ[j].AbsQ_RL;
                            gdfy.DataStr[j + 1] = CoTypeString.DoubleToString(urgd.AuxZ[j].AbsQ_RL);
                            gdfy.DataObj[j + 1] = urgd.AuxZ[j].AbsQ_RL;
                        }
                        break;
                    case "Eref":
                    case "Voltage":
                    case "Vdc":
                        gdfy.Data[0] = urgd.mRawData.Vdc;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.mRawData.Vdc);
                        gdfy.DataObj[0] = urgd.mRawData.Vdc;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxVdc[j];
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxVdc[j]);
                            gdfy.DataObj[j+1] = urgd.AuxVdc[j];
                        }
                        break;
                    case "I":
                    case "Current":
                    case "Idc":
                        for (j = 0; j < MBZA_Constant.MAX_AUXTYPE_CHANNELS; j++)
                        {
                            gdfy.Data[j] = urgd.mRawData.Idc;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.mRawData.Idc);
                            gdfy.DataObj[j] = urgd.mRawData.Idc;
                        }
                        break;
                    case "Temperature":
                        for (j = 0; j < MBZA_Constant.MAX_AUXTYPE_CHANNELS; j++)
                        {
                            gdfy.Data[j] = urgd.mRawData.Temperature;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.mRawData.Temperature);
                            gdfy.DataObj[j] = urgd.mRawData.Temperature;
                        }
                        break;
                        
                    case "Load":
                        gdfy.Data[0] = urgd.Load;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.Load);
                        gdfy.DataObj[0] = urgd.Load;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxLoad[j];
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxLoad[j]);
                            gdfy.DataObj[j+1] = urgd.AuxLoad[j];
                        }
                        break;
                    case "Power":
                        gdfy.Data[0] = urgd.Power;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.Power);
                        gdfy.DataObj[0] = urgd.Power;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxPower[j];
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxPower[j]);
                            gdfy.DataObj[j+1] = urgd.AuxPower[j];
                        }
                        break;
                    case "Capacity":
                        for (j = 0; j < MBZA_Constant.MAX_AUXTYPE_CHANNELS; j++)
                        {
                            gdfy.Data[j] = (j == 0) ? urgd.Capacity : 0;
                            gdfy.DataStr[j] = (j == 0) ? CoTypeString.DoubleToString(urgd.Capacity) : CoTypeString.DoubleToString(0);
                            gdfy.DataObj[j] = (j == 0) ? urgd.Capacity : 0;
                        }
                        break;
                    case "Energy":
                        gdfy.Data[0] = urgd.Energy;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.Energy);
                        gdfy.DataObj[0] = urgd.Energy;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxEnergy[j];
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxEnergy[j]);
                            gdfy.DataObj[j+1] = urgd.AuxEnergy[j];
                        }
                        break;
                    case "Veoc":
                    case "Eoc":
                    case "OCP":
                        gdfy.Data[0] = urgd.mRawData.Veoc;
                        gdfy.DataStr[0] = string.Format("{0:F2}", urgd.mRawData.Veoc);
                        gdfy.DataObj[0] = string.Format("{0:F2}", urgd.mRawData.Veoc);
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j + 1] = urgd.mRawData.mdata[j / 4].mdata[j % 4].Veoc;
                            gdfy.DataStr[j + 1] = string.Format("{0:F2}", urgd.mRawData.mdata[j / 4].mdata[j % 4].Veoc);
                            gdfy.DataObj[j + 1] = string.Format("{0:F2}", urgd.mRawData.mdata[j / 4].mdata[j % 4].Veoc);
                        }
                        /*
                        gdfy.Data[0] = urgd.mRawData.Veoc;
                        gdfy.DataStr[0] = CoTypeString.DoubleToString(urgd.mRawData.Veoc);
                        gdfy.DataObj[0] = urgd.mRawData.Veoc;
                        for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNELS; j++)
                        {
                            gdfy.Data[j+1] = urgd.AuxVeoc[j];
                            gdfy.DataStr[j+1] = CoTypeString.DoubleToString(urgd.AuxVeoc[j]);
                            gdfy.DataObj[j+1] = urgd.AuxVeoc[j];
                        }*/
                        break;
                }
       
                gdxy.DataYList[i].DataList.Add(gdfy);
            }

            return true;
        }      
        

        private bool CheckDataFilter(UnitReportData urgd)
        {
            if (_DataFilter == null)
                return true;

            if (_DataFilter.TimeEnable)
            {
                switch (_DataFilter.TimeType)
                {
                    case "Test Time":
                    case "시험 시간":
                        if (_DataFilter.StartTime > urgd.TestTime || _DataFilter.EndTime < urgd.TestTime)
                            return false;
                        break;
                    case "Cycle Time":
                    case "사이클 시간":
                        if (_DataFilter.StartTime > urgd.CycleTime || _DataFilter.EndTime < urgd.CycleTime)
                            return false;
                        break;
                }
            }

            if (_DataFilter.CycNoEnable)
            {
                if (!_DataFilter.GetCycNoList().Contains((uint)urgd.mRawData.nCycle))
                    return false;
            }

            if (_DataFilter.StepNoEnable)
            {
                if (!_DataFilter.GetStepNoList().Contains((uint)urgd.mRawData.nTaskNo))
                    return false;
            }

            return true;
        }
        
        public string[] GetLineData(int idx, int MaxAuxCnt, bool[] bAuxCh)
        {
            int i;
            int j;
            List<string> strList = new List<string>();
            if (bxtime == true && bChgTimeFormat == true)
            {
                _GraphDataXY.DataX.DataList[idx].DataStr[0] = ZMF_File.GetTimeSpanString((TimeSpan)_GraphDataXY.DataX.DataList[idx].DataObj[0], _TimeFormat);
            }
            strList.Add(string.Format("{0}", idx + 1));

            strList.Add(_GraphDataXY.DataX.DataList[idx].DataStr[0]);
            for (i = 0; i < _GraphDataXY.DataYList.Count; i++)
            {
                if (_GraphDataXY.DataYList[i].DataList[idx].Valid)
                    strList.Add(_GraphDataXY.DataYList[i].DataList[idx].DataStr[0]);
                else
                    strList.Add(string.Empty);
            }

            if(MaxAuxCnt > 0)
            {
                for (i = 0; i < MaxAuxCnt; i++)
                {
                    if (bAuxCh[i])
                    {
                        if (bxtime == true && bChgTimeFormat == true)
                        {
                            _GraphDataXY.DataX.DataList[idx].DataStr[i+1] = ZMF_File.GetTimeSpanString((TimeSpan)_GraphDataXY.DataX.DataList[idx].DataObj[i+1], _TimeFormat);
                        }

                        strList.Add(_GraphDataXY.DataX.DataList[idx].DataStr[i+1]);
                        for (j = 0; j < _GraphDataXY.DataYList.Count; j++)
                        {
                            if (_GraphDataXY.DataYList[j].DataList[idx].Valid)
                                strList.Add(_GraphDataXY.DataYList[j].DataList[idx].DataStr[i + 1]);
                            else
                                strList.Add(string.Empty);
                        }
                    }
                }
            }

            return strList.ToArray();
        }

        public string[] GetLineData(int idx, int dataidx = 0)
        {
            int i;
            List<string> strList = new List<string>();
            if (bxtime == true && bChgTimeFormat == true)
            {
                _GraphDataXY.DataX.DataList[idx].DataStr[dataidx] = ZMF_File.GetTimeSpanString((TimeSpan)_GraphDataXY.DataX.DataList[idx].DataObj[dataidx], _TimeFormat);
            }
            strList.Add(string.Format("{0}", idx + 1));
            strList.Add(_GraphDataXY.DataX.DataList[idx].DataStr[0]);

            for (i = 0; i < _GraphDataXY.DataYList.Count; i++)
            {
                if (_GraphDataXY.DataYList[i].DataList[idx].Valid)
                    strList.Add(_GraphDataXY.DataYList[i].DataList[idx].DataStr[dataidx]);
                else
                    strList.Add(string.Empty);
            }

            return strList.ToArray();
        }

        public List<DataTypeString> GetTypeStringLineData(int idx, int MaxAuxCnt, bool[] bAuxCh)
        {
            List<DataTypeString> strList = new List<DataTypeString>();

            strList.Add(new DataTypeString(eDataStringType.Number, string.Format("{0}", idx + 1)));

            eDataStringType tType = eDataStringType.Number;
            if (_TimeFormat == 0) tType = eDataStringType.Time;
            else if (_TimeFormat == 2) tType = eDataStringType.Exponent;

            switch (_GraphDataXY.DataX.AxisName)
            {
                case "Test time": case "시험 시간": case "Cycle time": case "사이클 시간": 
                    strList.Add(new DataTypeString(tType, ZMF_File.GetTimeSpanString((TimeSpan)_GraphDataXY.DataX.DataList[idx].DataObj[0], _TimeFormat)));
                    break;
                default:
                    strList.Add(new DataTypeString(eDataStringType.Number, _GraphDataXY.DataX.DataList[idx].DataStr[0]));
                    break;
            }

            for (int i = 0; i < _GraphDataXY.DataYList.Count; i++)
            {
                if (_GraphDataXY.DataYList[i].DataList[idx].Valid)
                    strList.Add(new DataTypeString(eDataStringType.Number, _GraphDataXY.DataYList[i].DataList[idx].DataStr[0]));
                else
                    strList.Add(new DataTypeString(eDataStringType.Number, string.Empty));
            }

            if(MaxAuxCnt > 0)
            {
                for (int i = 0; i < MaxAuxCnt; i++)
                {
                    if(bAuxCh[i])
                    {
                        switch (_GraphDataXY.DataX.AxisName)
                        {
                            case "Test time":
                            case "시험 시간":
                            case "Cycle time":
                            case "사이클 시간":
                                strList.Add(new DataTypeString(tType, ZMF_File.GetTimeSpanString((TimeSpan)_GraphDataXY.DataX.DataList[idx].DataObj[i+1], _TimeFormat)));
                                break;
                            default:
                                strList.Add(new DataTypeString(eDataStringType.Number, _GraphDataXY.DataX.DataList[idx].DataStr[i+1]));
                                break;
                        }
                        for (int j = 0; j < _GraphDataXY.DataYList.Count; j++)
                        {
                            if (_GraphDataXY.DataYList[j].DataList[idx].Valid)
                                strList.Add(new DataTypeString(eDataStringType.Number, _GraphDataXY.DataYList[j].DataList[idx].DataStr[i+1]));
                            else
                                strList.Add(new DataTypeString(eDataStringType.Number, string.Empty));
                        }
                    }
                }
            }
            return strList;
        }

        public List<DataTypeString> GetTypeStringLineData(int idx, int dataidx = 0)
        {
            List<DataTypeString> strList = new List<DataTypeString>();

            strList.Add(new DataTypeString(eDataStringType.Number, string.Format("{0}", idx + 1)));

            eDataStringType tType = eDataStringType.Number;
            if (_TimeFormat == 0) tType = eDataStringType.Time;
            else if (_TimeFormat == 2) tType = eDataStringType.Exponent;
            switch (_GraphDataXY.DataX.AxisName)
            {
                case "Test time":
                case "시험 시간":
                case "Cycle time":
                case "사이클 시간":
                    strList.Add(new DataTypeString(tType, ZMF_File.GetTimeSpanString((TimeSpan)_GraphDataXY.DataX.DataList[idx].DataObj[dataidx], _TimeFormat)));
                    break;
                default:
                    strList.Add(new DataTypeString(eDataStringType.Number, _GraphDataXY.DataX.DataList[idx].DataStr[dataidx]));
                    break;
            }
            

            for (int i = 0; i < _GraphDataXY.DataYList.Count; i++)
            {
                if (_GraphDataXY.DataYList[i].DataList[idx].Valid)
                    strList.Add(new DataTypeString(eDataStringType.Number, _GraphDataXY.DataYList[i].DataList[idx].DataStr[dataidx]));
                else
                    strList.Add(new DataTypeString(eDataStringType.Number, string.Empty));
            }

            return strList;
        }

        public bool CheckTimeData()
        {
            bool bret = false;
            switch (_GraphDataXY.DataX.AxisName)
            {
                case "Test time":
                case "시험 시간":
                case "사이클 시간":
                case "Cycle time":
                    bret = true;
                    break;
            }

            return bret;
        }

        public string[] GetLineData(int idx, int pad, int dataidx = 0)
        {
            List<string> strList = new List<string>();


            if (bxtime == true && bChgTimeFormat == true)
            {
                _GraphDataXY.DataX.DataList[idx].DataStr[dataidx] = ZMF_File.GetTimeSpanString((TimeSpan)_GraphDataXY.DataX.DataList[idx].DataObj[dataidx], _TimeFormat);
            }
            strList.Add(SubStringWidthPad(string.Format("{0}", idx + 1), pad));
            strList.Add(SubStringWidthPad(_GraphDataXY.DataX.DataList[idx].DataStr[dataidx], pad));

            for(int i = 0; i < _GraphDataXY.DataYList.Count; i++)
            {
                if (_GraphDataXY.DataYList[i].DataList[idx].Valid)
                    strList.Add(SubStringWidthPad(_GraphDataXY.DataYList[i].DataList[idx].DataStr[dataidx], pad));
                else
                    strList.Add(string.Empty);
            }

            return strList.ToArray();
        }

        private string SubStringWidthPad(string str, int len)
        {
            int inCnt = Encoding.Default.GetByteCount(str);
            if (inCnt > len)
            {
                int i = 0;
                for (i = str.Length - 1; inCnt > len; i--)
                {
                    if (str[i] > 0x7f)
                    {
                        inCnt -= 2;
                    }
                    else
                    {
                        inCnt -= 1;
                    }
                }

                str = str.Substring(0, i + 1);
                inCnt = Encoding.Default.GetByteCount(str);
            }

            str = str.PadRight(str.Length + len - inCnt);
            return str;
        }

        static public string SubStringWidthPad(string str, int len, char paddingChar)
        {
            int inCnt = Encoding.Default.GetByteCount(str);
            if(inCnt > len)
            {
                int i = 0;
                for(i = str.Length - 1; inCnt > len; i--)
                {
                    if(str[i] > 0x7f)
                    {
                        inCnt -= 2;
                    }
                    else
                    {
                        inCnt -= 1;
                    }
                }

                str = str.Substring(0, i + 1);
                inCnt = Encoding.Default.GetByteCount(str);
            }

            str = str.PadRight(str.Length + len - inCnt, paddingChar);
            return str;
        }
    }

    public class DataTypeString
    {
        public eDataStringType Type { get; set; }
        public string Data { get; set; }

        public DataTypeString(eDataStringType type, string data)
        {
            Type = type;
            Data = data;
        }
    }
}
