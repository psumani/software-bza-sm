using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using NationalInstruments;

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
                for (int i = 0; i < 12; i++)
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
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = urgd.mRawData.Vdc;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.mRawData.Vdc);
                    gdf.XDataObj[i] = urgd.mRawData.Vdc;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcAuxVdc(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();
            IEnumerator ie = list.GetEnumerator();

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = urgd.AuxVdc[i];
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.AuxVdc[i]);
                    gdf.XDataObj[i] = urgd.AuxVdc[i];
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
                
                for (int i = 0; i < 12; i++)
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
                for (int i = 0; i < 12; i++)
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
                
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = load;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(load);
                    gdf.XDataObj[i] = load;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcAuxLoad(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();
            IEnumerator ie = list.GetEnumerator();

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = urgd.AuxLoad[i];
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.AuxLoad[i]);
                    gdf.XDataObj[i] = urgd.AuxLoad[i];
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
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = (denominator == 0) ? 0 : urgd.Power / denominator;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Power / denominator);
                    gdf.XDataObj[i] = (double)((denominator == 0) ? 0 : urgd.Power / denominator);
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcAuxPower(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();
            IEnumerator ie = list.GetEnumerator();

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = urgd.AuxPower[i];
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.AuxPower[i]);
                    gdf.XDataObj[i] = urgd.AuxPower[i];
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
                
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = (denominator == 0) ? 0 : urgd.Capacity / denominator;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Capacity / denominator);
                    gdf.XDataObj[i] = (double)((denominator == 0) ? 0 : urgd.Capacity / denominator);
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
                
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = (denominator == 0) ? 0 : urgd.Energy / denominator;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Energy / denominator);
                    gdf.XDataObj[i] = (double)((denominator == 0) ? 0 : urgd.Energy / denominator);
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcAuxEnergy(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();
            IEnumerator ie = list.GetEnumerator();

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = urgd.AuxEnergy[i];
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.AuxEnergy[i]);
                    gdf.XDataObj[i] = urgd.AuxEnergy[i];
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
                
                for (int i = 0; i < 12; i++)
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
                
                for (int i = 0; i < 12; i++)
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
                
                for (int i = 0; i < 12; i++)
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
                
                for (int i = 0; i < 12; i++)
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
                
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = urgd.MainZ.Zre;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.MainZ.Zre);
                    gdf.XDataObj[i] = urgd.MainZ.Zre;
                }
                gdList.Add(gdf);
            }

            return gdList;
        }
        static private GraphDataList CalcAuxZreal(List<UnitReportData> list)                                                      // 완료
        {
            GraphDataList gdList = new GraphDataList();

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                GraphDataFormat gdf = new GraphDataFormat();
                gdf.Step = (uint)urgd.mRawData.nTaskNo;
                gdf.Cycle = (uint)urgd.mRawData.nCycle;
                
                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = urgd.AuxZ[i].Zre;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zre);
                    gdf.XDataObj[i] = urgd.AuxZ[i].Zre;
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
                

                for (int i = 0; i < 12; i++)
                {
                    gdf.XData[i] = urgd.mRawData.fFreq;
                    gdf.XDataStr[i] = CoTypeString.DoubleToString(urgd.mRawData.fFreq);
                    gdf.XDataObj[i] = urgd.mRawData.fFreq;
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

                for (int i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = urgd.mRawData.Vdc;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.mRawData.Vdc);
                    gdList[index].YDataObj[i] = urgd.mRawData.Vdc;
                }
                index++;
            }
        }
        static private void CalcAuxVdc(GraphDataList gdList, List<UnitReportData> list)                                         // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                for (int i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = urgd.AuxVdc[i];
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.AuxVdc[i]);
                    gdList[index].YDataObj[i] = urgd.AuxVdc[i];
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
                for (int i = 0; i < 12; i++)
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
                for (int i = 0; i < 12; i++)
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
                for (i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = (denominator == 0) ? 0 : urgd.Load / denominator;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Load / denominator);
                    gdList[index].YDataObj[i] = (double)((denominator == 0) ? 0 : urgd.Load / denominator);
                }
                index++;
            }
        }
        static private void CalcAuxLoad(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)                 // 완료
        {
            int index = 0;
            int i;
            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                for (i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = (denominator == 0) ? 0 : urgd.AuxLoad[i] / denominator;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.AuxLoad[i] / denominator);
                    gdList[index].YDataObj[i] = (double)((denominator == 0) ? 0 : urgd.AuxLoad[i] / denominator);
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
                for (i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = (denominator == 0) ? 0 : urgd.Power / denominator;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Power / denominator);
                    gdList[index].YDataObj[i] = (double)((denominator == 0) ? 0 : urgd.Power / denominator);
                }
                index++;
            }
        }
        static private void CalcAuxPower(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)              // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                for (i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = (denominator == 0) ? 0 : urgd.AuxPower[i] / denominator;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.AuxPower[i] / denominator);
                    gdList[index].YDataObj[i] = (double)((denominator == 0) ? 0 : urgd.AuxPower[i] / denominator);
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
                for (int i = 0; i < 12; i++)
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

               
                for (int i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = (denominator == 0) ? 0 : urgd.Energy / denominator;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.Energy / denominator);
                    gdList[index].YDataObj[i] = (double)((denominator == 0) ? 0 : urgd.Energy / denominator);
                }
                index++;
            }
        }
        static private void CalcAuxEnergy(GraphDataList gdList, List<UnitReportData> list, double denominator = 1)           // 완료
        {
            int index = 0;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;
                for (int i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = (denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator;
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator);
                    gdList[index].YDataObj[i] = (double)((denominator == 0) ? 0 : urgd.AuxEnergy[i] / denominator);
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
                for (int i = 0; i < 12; i++)
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
                for (int i = 0; i < 12; i++)
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

                
                for (i = 0; i < 12; i++)
                {
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.MainZ.Zre);
                    gdList[index].YDataObj[i] = urgd.MainZ.Zre;
                    gdList[index].YData[i] = urgd.MainZ.Zre;
                }
                index++;
            }
        }
        static private void CalcAuxZreal(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;


                for (i = 0; i < 12; i++)
                {
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zre);
                    gdList[index].YDataObj[i] = urgd.AuxZ[i].Zre;
                    gdList[index].YData[i] = urgd.AuxZ[i].Zre;
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


                for (i = 0; i < 12; i++)
                {
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.MainZ.Zim);
                    gdList[index].YDataObj[i] = urgd.MainZ.Zim;
                    gdList[index].YData[i] = urgd.MainZ.Zim;
                }
                index++;
            }
        }
        static private void CalcAuxZimg(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;


                for (i = 0; i < 12; i++)
                {
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zim);
                    gdList[index].YDataObj[i] = urgd.AuxZ[i].Zim;
                    gdList[index].YData[i] = urgd.AuxZ[i].Zim;
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


                for (i = 0; i < 12; i++)
                {
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.MainZ.Zmag);
                    gdList[index].YDataObj[i] = urgd.MainZ.Zmag;
                    gdList[index].YData[i] = urgd.MainZ.Zmag;
                }
                index++;
            }
        }
        static private void CalcAuxZmag(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;


                for (i = 0; i < 12; i++)
                {
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zmag);
                    gdList[index].YDataObj[i] = urgd.AuxZ[i].Zmag;
                    gdList[index].YData[i] = urgd.AuxZ[i].Zmag;
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
                for (int i = 0; i < 12; i++)
                {
                    gdList[index].YData[i] = (urgd.MainZ.Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Zmag / denominator);
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString((urgd.MainZ.Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Zmag / denominator));
                    gdList[index].YDataObj[i] = (urgd.MainZ.Zmag == 0 || denominator == 0) ? double.NaN : Math.Abs(urgd.MainZ.Zmag / denominator);
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


                for (i = 0; i < 12; i++)
                {
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.MainZ.ZPhase);
                    gdList[index].YDataObj[i] = urgd.MainZ.ZPhase;
                    gdList[index].YData[i] = urgd.MainZ.ZPhase;
                }
                index++;
            }
        }
        static private void CalcAuxZphase(GraphDataList gdList, List<UnitReportData> list)                                          // 완료
        {
            int index = 0;
            int i;

            IEnumerator ie = list.GetEnumerator();
            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;


                for (i = 0; i < 12; i++)
                {
                    gdList[index].YDataStr[i] = CoTypeString.DoubleToString(urgd.AuxZ[i].ZPhase);
                    gdList[index].YDataObj[i] = urgd.AuxZ[i].ZPhase;
                    gdList[index].YData[i] = urgd.AuxZ[i].ZPhase;
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
                    for (int i = 0; i < 12; i++)
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
                case "Test time":
                    gdList = CalcTestTime(filteredList);                    
                    break;
                case "Log(Frequency)":
                    gdList = CalcLogFreq(filteredList);
                    break;
                case "Zreal":
                    gdList = CalcZreal(filteredList);
                    break;
                case "AuxZre":
                    gdList = CalcAuxZreal(filteredList);
                    break;
                case "Eref":
                    gdList = CalcEref(filteredList);
                    break;
                case "AuxVdc":
                    gdList = CalcAuxVdc(filteredList);
                    break;
                case "I":
                    gdList = CalcI(filteredList, denominator);
                    break;
                case "Temperature":
                    gdList = CalcTemperature(filteredList);
                    break;
                case "Load":
                    gdList = CalcLoad(filteredList, denominator);
                    break;
                case "AuxLoad":
                    gdList = CalcAuxLoad(filteredList);
                    break;
                case "Power":
                    gdList = CalcPower(filteredList, denominator);
                    break;
                case "AuxPower":
                    gdList = CalcAuxPower(filteredList);
                    break;
                case "Capacity":
                    gdList = CalcCapacity(filteredList, denominator);
                    break;
                case "Energy":
                    gdList = CalcEnergy(filteredList, denominator);
                    break;
                case "AuxEnergy":
                    gdList = CalcAuxEnergy(filteredList);
                    break;
                case "Cycle time":
                    gdList = CalcCycleTime(filteredList);
                    break;
                case "Step time":
                    gdList = CalcStepTime(filteredList);
                    break;
                case "LogI":
                    gdList = CalcLogI(filteredList, denominator);
                    break;
                case "Frequency":
                    gdList = CalcFreq(filteredList);
                    break;
            }

            switch (y)
            {
                case "Zreal":
                    CalcZreal(gdList, filteredList);
                    break;
                case "AuxZreal":
                    CalcAuxZreal(gdList, filteredList);
                    break;
                case "-Zim":
                    CalcZimg(gdList, filteredList);
                    break;
                case "-AuxZim":
                    CalcAuxZimg(gdList, filteredList);
                    break;
                case "|Z|":
                    CalcZmag(gdList, filteredList);
                    break;
                case "|AuxZ|":
                    CalcAuxZmag(gdList, filteredList);
                    break;
                case "Z-Phase":
                    CalcZphase(gdList, filteredList);
                    break;
                case "AuxZ-Phase":
                    CalcAuxZphase(gdList, filteredList);
                    break;
                case "Log|Z|":
                    CalcLogZmag(gdList, filteredList);
                    break;
                case "Eref":
                    CalcEref(gdList, filteredList);
                    break;

                case "AuxVdc":
                    CalcAuxVdc(gdList, filteredList);
                    break;

                case "I":
                    CalcI(gdList, filteredList, denominator);
                    break;

                case "Temperature":
                    CalcTemperature(gdList, filteredList);
                    break;

                case "Load":
                    CalcLoad(gdList, filteredList, denominator);
                    break;
                case "AuxLoad":
                    CalcAuxLoad(gdList, filteredList, denominator);
                    break;

                case "Power":
                    CalcPower(gdList, filteredList, denominator);
                    break;
                case "AuxPower":
                    CalcAuxPower(gdList, filteredList, denominator);
                    break;
                case "Capacity":
                    CalcCapacity(gdList, filteredList, denominator);
                    gdList = GenGraphDataByCycle(gdList);
                    break;
                case "Energy":
                    CalcEnergy(gdList, filteredList, denominator);
                    gdList = GenGraphDataByCycle(gdList);
                    break;
                case "AuxEnergy":
                    CalcAuxEnergy(gdList, filteredList, denominator);
                    gdList = GenGraphDataByCycle(gdList);
                    break;
                case "LogI":
                    CalcLogI(gdList, filteredList, denominator);
                    break;
                case "Eoc":
                    CalcEoc(gdList, filteredList);
                    break;
            }

            return gdList;
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
                    for(int i=0; i<12; i++)
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

            if (filter.StepNoEnable)
            {
                if (!filter.GetStepNoList().Contains((uint)urgd.mRawData.nTaskNo))
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
                    for(int i = 0; i<12; i++)
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
                    for (int j = 0; i < 12; j++)
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
                    for (int j = 0; i < 12; j++)
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
                    for (int i = 0; i < 12; i++)
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
                    for (int i = 0; i < 12; i++)
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


        private int _prevStep = -1;
        private List<double> _vData = new List<double>();


        public bool SetGraphData(UnitReportData urgd, GraphDataXY gdxy)
        {
            int i;
            int j;
            if (!CheckDataFilter(urgd))
                return false;

            GraphDataFormatX gdfx = new GraphDataFormatX();

            gdfx.Step = (uint)urgd.mRawData.nTaskNo;
            gdfx.Cycle = (uint)urgd.mRawData.nCycle;
            
            if(_prevStep != urgd.mRawData.nTaskNo)
            {
                _prevStep = urgd.mRawData.nTaskNo;
            }          

            switch (gdxy.DataX.AxisName)
            {
                case "Log(Frequency)":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = urgd.MainZ.Frequency;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString(urgd.MainZ.Frequency);
                        gdfx.DataObj[i] = urgd.MainZ.Frequency;
                    }
                    break;
                case "Zreal":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = urgd.MainZ.Zre;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString(urgd.MainZ.Zre);
                        gdfx.DataObj[i] = urgd.MainZ.Zre;
                    }
                    break;
                case "AuxZre":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = urgd.AuxZ[i].Zre;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString(urgd.AuxZ[i].Zre);
                        gdfx.DataObj[i] = urgd.AuxZ[i].Zre;
                    }
                    break;
                case "Frequency":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = urgd.MainZ.Frequency;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString(urgd.MainZ.Frequency);
                        gdfx.DataObj[i] = urgd.MainZ.Frequency;
                    }
                    break;
                case "Test time":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (double)DataConverter.Convert(urgd.TestTime, typeof(double));
                        gdfx.DataStr[i] = ZMF_File.GetTimeSpanString(urgd.TestTime, _TimeFormat);
                        gdfx.DataObj[i] = urgd.TestTime;
                    }
                    break;
                case "Eref":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = urgd.mRawData.Vdc;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString(urgd.mRawData.Vdc);
                        gdfx.DataObj[i] = urgd.mRawData.Vdc;
                    }
                    break;
                case "AuxVdc":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = urgd.AuxVdc[i];
                        gdfx.DataStr[i] = CoTypeString.DoubleToString(urgd.AuxVdc[i]);
                        gdfx.DataObj[i] = urgd.AuxVdc[i];
                    }
                    break;
                case "I":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.mRawData.Idc / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.mRawData.Idc / _Denominator);
                        gdfx.DataObj[i] = (double)((_Denominator == 0) ? 0 : urgd.mRawData.Idc / _Denominator);
                    }
                    break;
                case "Temperature":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = urgd.mRawData.Temperature;
                        gdfx.DataStr[i] = string.Format("{0:F2}", urgd.mRawData.Temperature);
                        gdfx.DataObj[i] = string.Format("{0:F2}", urgd.mRawData.Temperature);
                    }
                    break;
                case "Load":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.Load / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.Load / _Denominator);
                        gdfx.DataObj[i] = urgd.Load;
                    }
                    break;
                case "AuxLoad":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.AuxLoad[i] / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.AuxLoad[i] / _Denominator);
                        gdfx.DataObj[i] = urgd.AuxLoad[i];
                    }
                    break;
                case "Power":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.Power / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.Power / _Denominator);
                        gdfx.DataObj[i] = (double)((_Denominator == 0) ? 0 : urgd.Power / _Denominator);
                    }
                    break;
                case "AuxPower":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.AuxPower[i] / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.AuxPower[i] / _Denominator);
                        gdfx.DataObj[i] = (double)((_Denominator == 0) ? 0 : urgd.AuxPower[i] / _Denominator);
                    }
                    break;
                case "Capacity":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.Capacity / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.Capacity / _Denominator);
                        gdfx.DataObj[i] = (double)((_Denominator == 0) ? 0 : urgd.Capacity / _Denominator);
                    }
                    break;
                case "Energy":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.Energy / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.Energy / _Denominator);
                        gdfx.DataObj[i] = (double)((_Denominator == 0) ? 0 : urgd.Energy / _Denominator);
                    }
                    break;
                case "AuxEnergy":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : urgd.AuxEnergy[i] / _Denominator;
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : urgd.AuxEnergy[i] / _Denominator);
                        gdfx.DataObj[i] = (double)((_Denominator == 0) ? 0 : urgd.AuxEnergy[i] / _Denominator);
                    }
                    break;
                case "Cycle time":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (double)DataConverter.Convert(urgd.CycleTime, typeof(double));
                        gdfx.DataStr[i] = ZMF_File.GetTimeSpanString(urgd.CycleTime, _TimeFormat);
                        gdfx.DataObj[i] = urgd.CycleTime;
                    }
                    break;
                case "Step time":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (double)DataConverter.Convert(urgd.StepTime, typeof(double));
                        gdfx.DataStr[i] = ZMF_File.GetTimeSpanString(urgd.StepTime, _TimeFormat);
                        gdfx.DataObj[i] = urgd.StepTime;
                    }
                    break;
                case "LogI":
                    for (i = 0; i < 12; i++)
                    {
                        gdfx.Data[i] = (_Denominator == 0) ? 0 : Math.Abs(urgd.mRawData.Idc / _Denominator);
                        gdfx.DataStr[i] = CoTypeString.DoubleToString((_Denominator == 0) ? 0 : Math.Abs(urgd.mRawData.Idc / _Denominator));
                        gdfx.DataObj[i] = (double)((_Denominator == 0) ? 0 : Math.Abs(urgd.mRawData.Idc / _Denominator));
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
                        for(j=0; j<12; j++)
                        {
                            gdfy.Data[j] = urgd.MainZ.Zre;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.MainZ.Zre);
                            gdfy.DataObj[j] = urgd.MainZ.Zre;
                        }
                        break;
                    case "AuxZreal":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.AuxZ[j].Zre;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.AuxZ[j].Zre);
                            gdfy.DataObj[j] = urgd.AuxZ[j].Zre;
                        }
                        break;
                    case "-Zim":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.MainZ.Zim;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.MainZ.Zim);
                            gdfy.DataObj[j] = urgd.MainZ.Zim;
                        }
                        break;
                    case "-AuxZim":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.AuxZ[j].Zim;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.AuxZ[j].Zim);
                            gdfy.DataObj[j] = urgd.AuxZ[j].Zim;
                        }
                        break;
                    case "|Z|":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.MainZ.Zmag;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.MainZ.Zmag);
                            gdfy.DataObj[j] = urgd.MainZ.Zmag;
                        }
                        break;
                    case "|AuxZ|":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.AuxZ[j].Zmag;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.AuxZ[j].Zmag);
                            gdfy.DataObj[j] = urgd.AuxZ[j].Zmag;
                        }
                        break;
                    case "Z-Phase":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.MainZ.ZPhase;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.MainZ.ZPhase);
                            gdfy.DataObj[j] = urgd.MainZ.ZPhase;
                        }
                        break;
                    case "AuxZ-Phase":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.AuxZ[j].ZPhase;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.AuxZ[j].ZPhase);
                            gdfy.DataObj[j] = urgd.AuxZ[j].ZPhase;
                        }
                        break;
                    case "Log|Z|":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.MainZ.Zmag;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.MainZ.Zmag);
                            gdfy.DataObj[j] = urgd.MainZ.Zmag;
                        }
                        break;
                    case "Eref":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.mRawData.Vdc;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.mRawData.Vdc);
                            gdfy.DataObj[j] = urgd.mRawData.Vdc;
                        }
                        break;
                    case "AuxVdc":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.AuxVdc[j];
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.AuxVdc[j]);
                            gdfy.DataObj[j] = urgd.AuxVdc[j];
                        }
                        break;
                    case "I":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.mRawData.Idc;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.mRawData.Idc);
                            gdfy.DataObj[j] = urgd.mRawData.Idc;
                        }
                        break;
                    case "Temperature":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.mRawData.Temperature;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.mRawData.Temperature);
                            gdfy.DataObj[j] = urgd.mRawData.Temperature;
                        }
                        break;
                    case "Load":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.Load;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.Load);
                            gdfy.DataObj[j] = urgd.Load;
                        }
                        break;
                    case "AuxLoad":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.AuxLoad[j];
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.AuxLoad[j]);
                            gdfy.DataObj[j] = urgd.AuxLoad[j];
                        }
                        break;
                    case "Power":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.Power;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.Power);
                            gdfy.DataObj[j] = urgd.Power;
                        }
                        break;
                    case "AuxPower":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.AuxPower[j];
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.AuxPower[j]);
                            gdfy.DataObj[j] = urgd.AuxPower[j];
                        }
                        break;
                    case "Capacity":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.Capacity;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.Capacity);
                            gdfy.DataObj[j] = urgd.Capacity;
                        }
                        break;
                    case "Energy":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.Energy;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.Energy);
                            gdfy.DataObj[j] = urgd.Energy;
                        }
                        break;
                    case "AuxEnergy":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.AuxEnergy[j];
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.AuxEnergy[j]);
                            gdfy.DataObj[j] = urgd.AuxEnergy[j];
                        }
                        break;
                    case "LogI":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.mRawData.Idc;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.mRawData.Idc);
                            gdfy.DataObj[j] = urgd.mRawData.Idc;
                        }
                        break;
                    case "Eoc":
                        for (j = 0; j < 12; j++)
                        {
                            gdfy.Data[j] = urgd.mRawData.Veoc;
                            gdfy.DataStr[j] = CoTypeString.DoubleToString(urgd.mRawData.Veoc);
                            gdfy.DataObj[j] = urgd.mRawData.Veoc;
                        }
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
                    case "Step Time":
                    case "단계 시간":
                        if (_DataFilter.StartTime > urgd.StepTime || _DataFilter.EndTime < urgd.StepTime)
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
                case "File time":
                case "파일 시간":
                case "Step time":
                case "단계 시간":
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
                case "파일 시간":
                case "File time":
                case "단계 시간":
                case "Step time":
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
