using C1.Win.C1FlexGrid;
using DataManager;
using DataManager.CommClass;
using Microsoft.Win32;
using SMLib;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    public partial class frmMain : Form
    {

        public event EventHandler evGroupRtView;
        public event EventHandler evChRtView;
        public event EventHandler evOpenGraph;
        public event EventHandler evOpenEditor;
        public event EventHandler CloseThis;

        public bool bFirst;
        private int DispTick;
        private bool bRefresh;
        public bool bClose;
        ArrayList ArrMon;
        ArrayList ArrSrart;
        ArrayList ArrReload;
        ArrayList ArrOpen;
        ArrayList ArrView;
        ArrayList ArrGraph;
        ArrayList ArrReport;

        Button[] btGridMon;
        Button[] btGridStart;
        Button[] btGridReload;
        Button[] btGridOpen;
        Button[] btGridView;
        Button[] btGridGraph;
        Button[] btGridReport;
        ImageList imageList;


        public frmMain(ref EventHandler evtimer)
        {
            

            InitializeComponent();
            bFirst = true;
            evtimer += timerproc_Tick;

            DoubleBuffered = true;
            bClose = false;
            bRefresh = false;

            ArrMon = new ArrayList();
            ArrSrart = new ArrayList();
            ArrReload = new ArrayList();
            ArrOpen = new ArrayList();
            ArrView = new ArrayList();
            ArrGraph = new ArrayList();
            ArrReport = new ArrayList();
            this.Text = "Monitor of Channels .";

            this.DispTick = 0;
            

            imageList = new ImageList();
            imageList.ImageSize = new Size(16, 16);
            imageList.Images.Add("play", ZM.Properties.Resources.Play);
            imageList.Images.Add("save", ZM.Properties.Resources.Save);
            imageList.Images.Add("tech", ZM.Properties.Resources.TestSettings);
            imageList.Images.Add("graph", ZM.Properties.Resources.AutoscaleXY);
            imageList.Images.Add("stop", ZM.Properties.Resources.Stop);
            imageList.Images.Add("check", ZM.Properties.Resources.chevron_down);
            imageList.Images.Add("uncheck", ZM.Properties.Resources.checkbox_blank_outline);
            imageList.Images.Add("mon", ZM.Properties.Resources.List1);
            imageList.Images.Add("techview", ZM.Properties.Resources.Editsch);
            imageList.Images.Add("report", ZM.Properties.Resources.Report1);

            btGridMon = new Button[MBZA_Constant.MAX_APP_CHANNEL];
            btGridStart = new Button[MBZA_Constant.MAX_APP_CHANNEL];
            btGridReload = new Button[MBZA_Constant.MAX_APP_CHANNEL];
            btGridOpen = new Button[MBZA_Constant.MAX_APP_CHANNEL];
            btGridView = new Button[MBZA_Constant.MAX_APP_CHANNEL];
            btGridGraph = new Button[MBZA_Constant.MAX_APP_CHANNEL];
            btGridReport = new Button[MBZA_Constant.MAX_APP_CHANNEL];

            for (int ch = 0; ch < MBZA_Constant.MAX_APP_CHANNEL; ch++)
            {
                btGridMon[ch] = new Button();
                btGridMon[ch].BackColor = SystemColors.Control;
                btGridMon[ch].Text = string.Format("{0}", ch + 1);
                btGridMon[ch].Image =null;
                btGridMon[ch].Tag = ch.ToString();
                btGridMon[ch].Click += btGridMon_Click;
                btGridMon[ch].Size = new Size(60, 32);
                btGridMon[ch].MouseMove += btGridMon_Mousemove;

                btGridStart[ch] = new Button();
                btGridStart[ch].BackColor = SystemColors.Control;
                btGridStart[ch].Text = "";
                btGridStart[ch].Image = imageList.Images["play"];
                btGridStart[ch].Tag = string.Format("{0:00}_Start", ch);
                btGridStart[ch].Click += btGridStart_Click;
                btGridStart[ch].MouseMove += btGridStart_Mousemove;

                btGridReload[ch] = new Button();
                btGridReload[ch].BackColor = SystemColors.Control;
                btGridReload[ch].Text = "";
                btGridReload[ch].Image = imageList.Images["save"];
                btGridReload[ch].Tag = string.Format("{0:00}_Load", ch);
                btGridReload[ch].Click += btGridReload_Click;
                btGridReload[ch].MouseMove += btGridReload_Mousemove;

                btGridOpen[ch] = new Button();
                btGridOpen[ch].BackColor = SystemColors.Control;
                btGridOpen[ch].Text = "";
                btGridOpen[ch].Image = imageList.Images["tech"];
                btGridOpen[ch].Tag = ch.ToString();
                btGridOpen[ch].Click += btGridOpen_Click;
                btGridOpen[ch].MouseMove += btGridOpen_Mousemove;

                btGridView[ch] = new Button();
                btGridView[ch].BackColor = SystemColors.Control;
                btGridView[ch].Text = "";
                btGridView[ch].Image = imageList.Images["techview"];
                btGridView[ch].Tag = ch.ToString();
                btGridView[ch].Click += btGridView_Click;
                btGridView[ch].MouseMove += btGridView_Mousemove;

                btGridGraph[ch] = new Button();
                btGridGraph[ch].BackColor = SystemColors.Control;
                btGridGraph[ch].Text = "";
                btGridGraph[ch].Image = imageList.Images["graph"];
                btGridGraph[ch].Tag = ch.ToString();
                btGridGraph[ch].Click += btGridGraph_Click;
                btGridGraph[ch].MouseMove += btGridGraph_Mousemove;

                btGridReport[ch] = new Button();
                btGridReport[ch].BackColor = SystemColors.Control;
                btGridReport[ch].Text = "";
                btGridReport[ch].Image = imageList.Images["report"];
                btGridReport[ch].Tag = ch.ToString();
                btGridReport[ch].Click += btGridReport_Click;
                btGridReport[ch].MouseMove += btGridReport_Mousemove;
            }

            btselall.Image = imageList.Images["check"];
            btdeselall.Image = imageList.Images["uncheck"];
            btgrptech.Image = imageList.Images["tech"];
            btgrpstart.Image = imageList.Images["play"];
            btgrpstop.Image = imageList.Images["stop"];
            btgrpmon.Image = imageList.Images["mon"];
            
            
            

            gtip.SetToolTip(btselall, "Select all channels as a group.");
            gtip.SetToolTip(btdeselall, "Deselect all channels as a group.");
            gtip.SetToolTip(btgrptech, "Selects the technique file of the channel selected as a group.");
            gtip.SetToolTip(btgrpstart, "Starts testing the channels selected as a group.");
            gtip.SetToolTip(btgrpstop, "Stop testing the channels selected as a group.");
            gtip.SetToolTip(btgrpmon, "It shows the real-time monitor and control window of the channel selected as a group.");
            gtip.SetToolTip(hgrid, null);
            
        }

        
        private void frmMain_Load(object sender, EventArgs e)
        {
            InitMainView();
            gtip.Active = true;
            bFirst = false;
            this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.ListBox);
        }

        public void InitMainView()
        {
            InitGrid();
            ViewGrid();
            bRefresh = true;
        }

        void AddMergedRange(CellRange rng)
        {
            if (!rng.IsSingleCell)
            {
                RemoveMergedRange(rng);
                hgrid.MergedRanges.Add(rng);
            }
        }
        void RemoveMergedRange(CellRange rng)
        {
            for (int i = 0; i < hgrid.MergedRanges.Count; i++)
            {
                if (RangesIntersect(rng, hgrid.MergedRanges[i]))
                {
                    hgrid.MergedRanges.RemoveAt(i);
                    i--;
                }
            }
        }
        bool RangesIntersect(CellRange rng1, CellRange rng2)
        {
            if (rng1.BottomRow < rng2.TopRow) return false;
            if (rng1.TopRow > rng2.BottomRow) return false;
            if (rng1.RightCol < rng2.LeftCol) return false;
            if (rng1.LeftCol > rng2.RightCol) return false;
            return true;
        }

        private void ClearHostedConts()
        {
            int count;

            count = ArrMon.Count;
            foreach (HostedControl cont in ArrMon)
            {
                cont.Clear();
            }
            ArrMon.RemoveRange(0, count);
            ArrMon.Clear();

            count = ArrSrart.Count;
            foreach (HostedControl cont in ArrSrart)
            {
                cont.Clear();
            }
            ArrSrart.RemoveRange(0, count);
            ArrSrart.Clear();

            count = ArrReload.Count;
            foreach (HostedControl cont in ArrReload)
            {
                cont.Clear();
            }
            ArrReload.RemoveRange(0, count);
            ArrReload.Clear();

            count = ArrOpen.Count;
            foreach (HostedControl cont in ArrOpen)
            {
                cont.Clear();
            }
            ArrOpen.RemoveRange(0, count);
            ArrOpen.Clear();

            count = ArrView.Count;
            foreach (HostedControl cont in ArrView)
            {
                cont.Clear();
            }
            ArrView.RemoveRange(0, count);
            ArrView.Clear();

            count = ArrGraph.Count;
            foreach (HostedControl cont in ArrGraph)
            {
                cont.Clear();
            }
            ArrGraph.RemoveRange(0, count);
            ArrGraph.Clear();

            count = ArrReport.Count;
            foreach (HostedControl cont in ArrReport)
            {
                cont.Clear();
            }
            ArrReport.RemoveRange(0, count);
            ArrReport.Clear();
        }

        private void InitGrid()
        {
            int i;
            string[] sTitle1 = new string[18] { "Channel", "Group",      "Status",      "Status", "Status","Status", "Status",     "Status", "Condition file", "Condition file", "Condition file", "Control", "Control", "Result file", "Result file", "Result file", "Result file", "Remote", };
            string[] sTitle2 = new string[18] { "Channel", "Group", "     Status", "Last error", "Elapsed(s)", "Range", "Vdc(V)", "Temp.(°C)",      "File name",          "Tools",          "Tools", "Control", "Control",   "File name",       "Tools",       "Tools",  "Data count", "Remote", };
            int[] iwidth = new int[18]       {        60,      50,            200,          150, 80,      80,       70,           70,              150,                32,              32,        32,        32,           150,            32,            32,            90,       50, };


            hgrid.Redraw = false;

            int rows = hgrid.Rows.Count;
            if (rows > hgrid.Rows.Fixed)
            {
                rows -= hgrid.Rows.Fixed;
                hgrid.Rows.RemoveRange(hgrid.Rows.Fixed, rows);
            }

            ClearHostedConts();


            
            
            hgrid.Cols.Count = 18;
            hgrid.Cols.Fixed = 0;
            hgrid.Rows.Count = 2;
            hgrid.Rows.Fixed = 2;
            hgrid.SelectionMode = SelectionModeEnum.Row;
            


            for (i=0; i<18; i++)
            {
                hgrid[0, i] = sTitle1[i];
                hgrid[1, i] = sTitle2[i];

                //hgrid.Cols[i].Caption = sTitle2[i];
                hgrid.Cols[i].Width = iwidth[i];
          
                if (i == 1) hgrid.Cols[i].DataType = typeof(bool);
                else if(i==17) hgrid.Cols[i].DataType = typeof(bool);
                else
                {
                    hgrid.Cols[i].DataType = typeof(string);
                }
                hgrid.Cols[i].TextAlignFixed = TextAlignEnum.CenterCenter;
                
                if (i == 6 || i == 7 || i == 14)
                {
                    hgrid.Cols[i].TextAlign = TextAlignEnum.RightCenter;
                }
                else if (i == 13 || i == 8)
                {
                    hgrid.Cols[i].TextAlign = TextAlignEnum.LeftCenter;
                }
                else
                {
                    hgrid.Cols[i].TextAlign = TextAlignEnum.CenterCenter;
                }
                if(i == 1 || i == 17) hgrid.Cols[i].AllowEditing = true;
                else hgrid.Cols[i].AllowEditing = false;

                hgrid.Cols[i].AllowSorting = false;
                hgrid.Cols[i].AllowFiltering = AllowFiltering.None;
                hgrid.Cols[i].AllowResizing = false;
                hgrid.Cols[i].AllowDragging = false;
                
            }
            hgrid.AllowMerging = AllowMergingEnum.Custom;
            AddMergedRange(hgrid.GetCellRange(0, 0, 1, 0));
            AddMergedRange(hgrid.GetCellRange(0, 1, 1, 1));
            AddMergedRange(hgrid.GetCellRange(0, 2, 0, 7));
            AddMergedRange(hgrid.GetCellRange(0, 8, 0, 10));
            AddMergedRange(hgrid.GetCellRange(1, 9, 1, 10));
            AddMergedRange(hgrid.GetCellRange(0, 11, 1, 12));
            AddMergedRange(hgrid.GetCellRange(0, 13, 0, 16));
            AddMergedRange(hgrid.GetCellRange(1, 14, 1, 15));
            AddMergedRange(hgrid.GetCellRange(0, 17, 1, 17));
            hgrid.Redraw = true;

            

        }
        bool ChkStatusRun(string tserial, int tSifCh)
        {
            if (gBZA.SifLnkLst[tserial].MBZAIF.mChStatInf[tSifCh].TestStatus == DeviceConstants.TESTSTATUS_RUNNING
                           || gBZA.SifLnkLst[tserial].MBZAIF.mChStatInf[tSifCh].TestStatus == DeviceConstants.TESTSTATUS_CALIBRATION
                           || gBZA.SifLnkLst[tserial].MBZAIF.mChStatInf[tSifCh].TestStatus == (DeviceConstants.TESTSTATUS_RUNNING | DeviceConstants.TESTSTATUS_NOTCAL)
                           || gBZA.SifLnkLst[tserial].MBZAIF.mChStatInf[tSifCh].TestStatus == (DeviceConstants.TESTSTATUS_CALIBRATION | DeviceConstants.TESTSTATUS_NOTCAL))
            {
                return true;
            }
            return false;
        }

        bool ChkStatusCalib(string tserial, int tSifCh)
        {
            if (gBZA.SifLnkLst[tserial].MBZAIF.mChStatInf[tSifCh].TestStatus == DeviceConstants.TESTSTATUS_CALIBRATION
                           || gBZA.SifLnkLst[tserial].MBZAIF.mChStatInf[tSifCh].TestStatus == (DeviceConstants.TESTSTATUS_RUNNING | DeviceConstants.TESTSTATUS_NOTCAL)
                           || gBZA.SifLnkLst[tserial].MBZAIF.mChStatInf[tSifCh].TestStatus == (DeviceConstants.TESTSTATUS_CALIBRATION | DeviceConstants.TESTSTATUS_NOTCAL))
            {
                return true;
            }
            return false;
        }
        Color GetErrorStatusColor(stChStatusInf chstat, Color defaultcolor)
        {
            enTestState stat = (enTestState)chstat.TestStatus;
            enStatError errstat = (enStatError)chstat.LastError;
            enEisState estat = (enEisState)chstat.eis_status.status;
            if (errstat == enStatError.NoError)
            {
                if (stat == enTestState.nc_Calibration || stat == enTestState.Calibration)
                {
                    if (estat != enEisState.none)
                    {
                        return Color.DarkOrange;
                    }
                }
                else if (stat == enTestState.nc_Ready || stat == enTestState.Ready)
                {
                    return Color.DarkGreen;
                }
                else if (stat == enTestState.nc_Running || stat == enTestState.Running)
                {
                    return Color.DarkBlue;
                }
                return Color.Black;
            }
            else if (errstat == enStatError.AutoStop)
            {
                return defaultcolor;
            }
            return Color.DarkRed;

        }

        string GetTestStatus(stChStatusInf chstat)
        {
            string str;

            enTestState stat = (enTestState)chstat.TestStatus;
            enStatError errstat = (enStatError)chstat.ErrorStatus;

            if (stat == enTestState.nc_Ready || stat == enTestState.Ready || stat == enTestState.nc_Stopped || stat == enTestState.Stopped)
            {
                if (errstat == enStatError.NoError) str = ((enTestState)chstat.TestStatus).GetDescription();
                else str = ((enStatError)chstat.ErrorStatus).GetDescription();
            }
            else
            {
                str = ((enTestState)chstat.TestStatus).GetDescription();
            }


            return str;
        }
    
        private void ViewGrid()
        {
            int i;
            int ch;
            bool brun = false;
            bool bcalibmode = false;
            bool berror = false;
            string str = "";
            TimeSpan ElapsedTime;
            int row = hgrid.Rows.Fixed;
            var list = gBZA.ChLnkLst.Keys.ToList();
            list.Sort();
            hgrid.Redraw = false;

            foreach (var key in list)
            {
                var Value = gBZA.ChLnkLst[key];

                if (row >= hgrid.Rows.Count) hgrid.Rows.Count++;

                hgrid.Rows[row].Height = 32;
                if(gBZA.SifLnkLst.ContainsKey(Value.sSerial) == false)
                {
                    brun = false;
                    bcalibmode = false;
                    berror = true;
                }
                else
                {
                    brun = gBZA.CheckStatusRun(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh]);
                    bcalibmode = gBZA.CheckStatusCalibMode(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh]);
                    berror = false;
                }
                if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.mDevInf.mSysCfg.ChkZIM[Value.SifCh] == 1) Value.bChkCh = true;
                else Value.bChkCh = false;

                ch = Convert.ToInt32(key);
                for (i = 0; i < 18; i++)
                {
                    if (i == 0)
                    {
                        if (Value.bChkSIF == false || berror == true) btGridMon[ch].Enabled = false;
                        else if (Value.bChkCh == false)
                        {
                            btGridMon[ch].Enabled = false;
                        }
                        else
                        {
                            btGridMon[ch].Enabled = true;
                        }
                        ArrMon.Add(new HostedControl(hgrid, btGridMon[ch], row, i));
                        
                        str = (ch + 1).ToString();
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 1)
                    {
                        if (Value.mChInf.bSelected) hgrid.SetCellCheck(row, i, CheckEnum.Checked);
                        else hgrid.SetCellCheck(row, i, CheckEnum.Unchecked);
                    }
                    else if (i == 2)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "no device";
                        else if (Value.bChkCh == false)
                        {
                            str = "no channel";
                        }
                        else
                        {
                            if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false)
                            {
                                str = "disconnected.";
                            }
                            else
                            {
                                if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bLoadData[Value.SifCh])
                                {
                                    str = (enTestState.LoadData).GetDescription();
                                }
                                else
                                {
                                    str = GetTestStatus(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh]);
                                }
                                    
                            }
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 3)
                    {
                        str = ((enStatError)gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].LastError).GetDescription();
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 4)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "00:00:00";
                        else if (Value.bChkCh == false) str = "00:00:00";
                        else
                        {
                            //str = string.Format("{0:#0.000}", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].RunTimeStamp);
                            ElapsedTime = TimeSpan.FromMilliseconds(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].RunTimeStamp);
                            str = string.Format("{0:##00}:{1:00}:{2:00}", ElapsedTime.Hours, ElapsedTime.Minutes, ElapsedTime.Seconds);
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 5)
                    { 
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else
                        {
                            stChStatusInf chstat = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh];
                            var mrng = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[Value.SifCh].ranges;
                            double crngval = mrng.iac_rng[chstat.Iac_in_rngno].realmax;

                            if ((chstat.Iac_rngno % 2) > 0)
                            {
                                crngval *= mrng.iac_rng[chstat.Iac_in_rngno].controlgain;
                            }

                            str = string.Format("{0}/ {1}", SM_Number.ToRangeString(crngval, "A"), SM_Number.ToRangeString(mrng.vdc_rng[chstat.Vdc_rngno].realmax, "V"));
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 6)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else  str = string.Format("{0:#0.000} ", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Vdc);
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 7)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else str = string.Format("{0:#0.000} ", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Temperature);
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 8)
                    {
                        if (Value.mChInf.FileCond.Length < 5)
                        {
                            str = "None.";
                        }
                        else
                        {
                            str = Path.GetFileName(Value.mChInf.FileCond);
                        }

                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 9)
                    {
                        
                        if (Value.bChkSIF == false || berror == true || Value.bChkCh == false || Value.mChInf.bRemote == true) btGridOpen[ch].Enabled = false;
                        else
                        {
                            if (brun || bcalibmode)
                            {
                                btGridOpen[ch].Enabled = false;
                            }
                            else
                            {
                                btGridOpen[ch].Enabled = true;
                            }
                        }

                        ArrOpen.Add(new HostedControl(hgrid, btGridOpen[ch], row, i));
                    }
                    else if (i == 10)
                    {
                        if (Value.bChkSIF == false || berror == true || Value.bChkCh == false || Value.mChInf.bRemote == true) btGridView[ch].Enabled = false;
                        else
                        {
                            btGridView[ch].Enabled = true;
                        }
                        ArrView.Add(new HostedControl(hgrid, btGridView[ch], row, i));
                    }
                    else if (i == 11)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true || Value.mChInf.bRemote == true)
                        {
                            btGridStart[ch].Tag = string.Format("{0:00}_Start", ch);
                            btGridStart[ch].Image = imageList.Images["play"];
                            btGridStart[ch].Enabled = false;
                        }
                        else
                        {
                            if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false)
                            {
                                btGridStart[ch].Enabled = false;
                                if (str.Substring(3) != "Start")
                                {
                                    btGridStart[ch].Image = imageList.Images["play"];
                                    btGridStart[ch].Tag = string.Format("{0:00}_Start", ch);
                                }
                            }
                            else
                            {

                                if (brun)
                                {
                                    btGridStart[ch].Tag = string.Format("{0:00}_Stop", ch);
                                    btGridStart[ch].Image = imageList.Images["stop"];
                                    //btGrid[ch].Text = "Stop";
                                }
                                else
                                {
                                    btGridStart[ch].Tag = string.Format("{0:00}_Start", ch);
                                    btGridStart[ch].Image = imageList.Images["play"];
                                    //btGrid[ch].Text = "Start";

                                }
                                if (bcalibmode || gBZA.SifLnkLst[Value.sSerial].MBZAIF.bLoadData[Value.SifCh]) btGridStart[ch].Enabled = false;
                                else btGridStart[ch].Enabled = true;
                            }
                        }

                        //hgrid.SetData(row, i, btGrid[ch].Text);
                        ArrSrart.Add(new HostedControl(hgrid, btGridStart[ch], row, i));
                    }
                    else if (i == 12)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true || Value.mChInf.bRemote == true)
                        {
                            btGridReload[ch].Enabled = false;
                            btGridReload[ch].Tag = string.Format("{0:00}_Load", ch);
                            btGridReload[ch].Image = imageList.Images["save"];
                        }
                        else
                        {
                            if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false)
                            {
                                btGridReload[ch].Enabled = false;
                                str = (string)btGridReload[ch].Tag;
                                if (str.Substring(3) != "Load")
                                {
                                    btGridReload[ch].Image = imageList.Images["save"];
                                    btGridReload[ch].Tag = string.Format("{0:00}_Load", ch);
                                }
                            }
                            else
                            {

                                if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bLoadData[Value.SifCh])
                                {
                                    btGridReload[ch].Tag = string.Format("{0:00}_Stop", ch);
                                    btGridReload[ch].Image = imageList.Images["stop"];
                                }
                                else
                                {
                                    btGridReload[ch].Tag = string.Format("{0:00}_Load", ch);
                                    btGridReload[ch].Image = imageList.Images["save"];

                                }
                                if (bcalibmode || brun) btGridReload[ch].Enabled = false;
                                else btGridReload[ch].Enabled = true;
                            }
                        }
                        
                        ArrReload.Add(new HostedControl(hgrid, btGridReload[ch], row, i));
                    }
                    else if (i == 13)
                    {
                        if (Value.mChInf.FileResult.Length < 5)
                        {
                            hgrid.SetData(row, i, "None.");
                        }
                        else
                        {
                            hgrid.SetData(row, i, Path.GetFileName(Value.mChInf.FileResult));
                        }
                    }
                    else if (i == 14)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridGraph[ch].Enabled = false;
                        else btGridGraph[ch].Enabled = true;

                        ArrGraph.Add(new HostedControl(hgrid, btGridGraph[ch], row, i));
                    }
                    else if (i == 15)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridReport[ch].Enabled = false;
                        else btGridReport[ch].Enabled = true;

                        ArrReport.Add(new HostedControl(hgrid, btGridReport[ch], row, i));
                    }
                    else if (i == 16)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) str = "Unknown";
                        else
                        {
                            str = string.Format("{0}({1})", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mresfile[Value.SifCh].datacount, gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].eis_status.rescount);
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else
                    {

                        hgrid.SetData(row, i, "On");
                        if (Value.mChInf.bRemote == true)
                        {
                            hgrid.SetCellCheck(row, i, CheckEnum.Checked);
                        }
                        else
                        {
                            hgrid.SetCellCheck(row, i, CheckEnum.Unchecked);
                        }
                    }
                }
                row++;
            }
            hgrid.Redraw = true;
        }

        private void RefreshGrid()
        {
            if (bRefresh == false) return;
            int i;
            int ch;
            double tdbl;
            bool brun = false;
            bool bcalibmode = false;
            bool berror = false;
            string str = "";
            TimeSpan ElapsedTime;
            int row = hgrid.Rows.Fixed;
            var list = gBZA.ChLnkLst.Keys.ToList();
            list.Sort();

            hgrid.Redraw = false;

            foreach (var key in list)
            {
                var Value = gBZA.ChLnkLst[key];
                if (row >= hgrid.Rows.Count) hgrid.Rows.Count++;
                ch = Convert.ToInt32(key);

                if (gBZA.SifLnkLst.ContainsKey(Value.sSerial) == false)
                {
                    brun = false;
                    bcalibmode = false;
                    berror = true;
                }
                else
                {
                    brun = gBZA.CheckStatusRun(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh]);
                    bcalibmode = gBZA.CheckStatusCalibMode(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh]);
                    berror = false;
                }
                if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.mDevInf.mSysCfg.ChkZIM[Value.SifCh] == 1) Value.bChkCh = true;
                else Value.bChkCh = false;
                for (i = 2; i < 17; i++)
                {
                    if (i == 0)
                    {
                        if (Value.bChkSIF == false || berror == true) btGridMon[ch].Enabled = false;
                        else if (Value.bChkCh == false) btGridMon[ch].Enabled = false;
                        else
                        {
                            btGridMon[ch].Enabled = true;
                        }
                        //ArrMon.Add(new HostedControl(hgrid, btGridMon[ch], row, i));

                        str = (ch + 1).ToString();
                        hgrid.SetData(row, i, str);

                    }
                    else if (i == 1)
                    {
                        if (Value.mChInf.bSelected) hgrid.SetCellCheck(row, i, CheckEnum.Checked);
                        else hgrid.SetCellCheck(row, i, CheckEnum.Unchecked);
                    }
                    else if (i == 2)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "no device";
                        else if (Value.bChkCh == false) str = "no channel";
                        else if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false) str = "disconnected";
                        else if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bLoadData[Value.SifCh]) str = (enTestState.LoadData).GetDescription();
                        else str = GetTestStatus(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh]);     //str = ((enTestState)gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].TestStatus).GetDescription();
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 3)
                    {
                        str = ((enStatError)gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].LastError).GetDescription();
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 4)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "00:00:00";
                        else if (Value.bChkCh == false) str = "00:00:00";
                        else
                        {
                            //str = string.Format("{0:#0.000}", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].RunTimeStamp);
                            ElapsedTime = TimeSpan.FromMilliseconds(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].RunTimeStamp);
                            str = string.Format("{0:##00}:{1:00}:{2:00}", ElapsedTime.Hours, ElapsedTime.Minutes, ElapsedTime.Seconds);
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 5)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else
                        {
                            var mrng = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[Value.SifCh].ranges;
                            var chstat = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh];

                            tdbl = mrng.iac_rng[chstat.Iac_in_rngno].realmax;

                            if ((chstat.Iac_rngno % 2) > 0)
                            {
                                tdbl *= mrng.iac_rng[chstat.Iac_in_rngno].controlgain;
                            }


                            str = string.Format("{0}/ {1}", SM_Number.ToRangeString(tdbl, "A"), SM_Number.ToRangeString(mrng.vdc_rng[chstat.Vdc_rngno].realmax, "V"));
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 6)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else str = string.Format("{0:#0.000} ", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Vdc);
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 7)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else str = string.Format("{0:#0.000} ", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Temperature);
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 8)
                    {
                        if (Value.mChInf.FileCond.Length < 5)
                        {
                            str = "None.";
                        }
                        else
                        {
                            str = Path.GetFileName(Value.mChInf.FileCond);
                        }

                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 9)
                    {
                        if (Value.bChkSIF == false || berror == true || Value.bChkCh == false || Value.mChInf.bRemote == true) btGridOpen[ch].Enabled = false;
                        else if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false) btGridOpen[ch].Enabled = false;
                        else
                        {
                            if (brun || bcalibmode)
                            {
                                btGridOpen[ch].Enabled = false;
                            }
                            else
                            {
                                btGridOpen[ch].Enabled = true;
                            }
                        }
                    }
                    else if (i == 10)
                    {
                        if (Value.bChkSIF == false || berror == true || Value.bChkCh == false || Value.mChInf.bRemote == true) btGridView[ch].Enabled = false;
                        else if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false) btGridView[ch].Enabled = false;
                        else
                        {
                            btGridView[ch].Enabled = true;
                        }
                    }
                    else if (i == 11)
                    {
                        str = (string)btGridStart[ch].Tag;
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true || Value.mChInf.bRemote == true)
                        {
                            btGridStart[ch].Enabled = false;
                            if (str.Substring(3) != "Start")
                            {
                                btGridStart[ch].Image = imageList.Images["play"];
                                btGridStart[ch].Tag = string.Format("{0:00}_Start", ch);
                            }
                        }
                        else
                        {
                            if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false)
                            {
                                btGridStart[ch].Enabled = false;
                                if (str.Substring(3) != "Start")
                                {
                                    btGridStart[ch].Image = imageList.Images["play"];
                                    btGridStart[ch].Tag = string.Format("{0:00}_Start", ch);
                                }
                            }
                            else
                            {
                                if (brun)
                                {
                                    if (str.Substring(3) != "Stop")
                                    {
                                        btGridStart[ch].Image = imageList.Images["stop"];
                                        btGridStart[ch].Tag = string.Format("{0:00}_Stop", ch);
                                    }
                                }
                                else
                                {
                                    if (str.Substring(3) != "Start")
                                    {
                                        btGridStart[ch].Image = imageList.Images["play"];
                                        btGridStart[ch].Tag = string.Format("{0:00}_Start", ch);
                                    }
                                }

                                if (bcalibmode || gBZA.SifLnkLst[Value.sSerial].MBZAIF.bLoadData[Value.SifCh])
                                {
                                    btGridStart[ch].Enabled = false;
                                }
                                else
                                {
                                    btGridStart[ch].Enabled = true;
                                }
                            }
                        }
                        //hgrid.SetData(row, i, btGrid[ch].Text);
                    }
                    else if (i == 12)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true || Value.mChInf.bRemote == true) btGridReload[ch].Enabled = false;
                        else if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false) btGridReload[ch].Enabled = false;
                        else
                        {
                            if (brun || bcalibmode)
                            {
                                btGridReload[ch].Enabled = false;
                            }
                            else
                            {
                                btGridReload[ch].Enabled = true;
                            }
                        }
                    }
                    else if (i == 13)
                    {
                        if (Value.mChInf.FileResult.Length < 5)
                        {
                            hgrid.SetData(row, i, "None.");
                        }
                        else
                        {
                            hgrid.SetData(row, i, Path.GetFileName(Value.mChInf.FileResult));
                        }
                    }
                    else if (i == 14)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridGraph[ch].Enabled = false;
                        else btGridGraph[ch].Enabled = true;
                    }
                    else if (i == 15)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridReport[ch].Enabled = false;
                        else btGridReport[ch].Enabled = true;
                    }
                    else if (i == 16)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) str = "Unknown";
                        else
                        {
                            str = string.Format("{0}({1})", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mresfile[Value.SifCh].datacount, gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].eis_status.rescount);
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else
                    {
                        if (Value.mChInf.bRemote == true)
                        {
                            hgrid.SetCellCheck(row, i, CheckEnum.Checked);
                        }
                        else
                        {
                            hgrid.SetCellCheck(row, i, CheckEnum.Unchecked);
                        }
                    }
                    CellStyle st = hgrid.GetCellStyleDisplay(row, i);
                    if (st != null)
                    {
                        if (berror == false)
                        {
                            if (i == 2)
                            {
                                st.ForeColor = GetTestStatusColor(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh]);
                                hgrid.SetCellStyle(row, i, st);
                            }
                            else if (i == 3)
                            {
                                st.ForeColor = GetErrorStatusColor(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh], Color.Black);
                                hgrid.SetCellStyle(row, i, st);
                            }
                            else
                            {
                                st.ForeColor = Color.Black;
                            }
                        }
                        else
                        {
                            if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false)
                            {
                                st.ForeColor = Color.Gray;
                            }
                            else
                            {
                                st.ForeColor = Color.Black;
                            }
                        }
                        hgrid.SetCellStyle(row, i, st);
                    }
                }
                row++;
            }
            hgrid.Redraw = true;

        }
        
        Color GetTestStatusColor(stChStatusInf chstat)
        {
            enTestState stat = (enTestState)chstat.TestStatus;
            enEisState estat = (enEisState)chstat.eis_status.status;
            enStatError errstat = (enStatError)chstat.ErrorStatus;
            if (stat == enTestState.nc_Calibration || stat == enTestState.Calibration)
            {
                if (estat != enEisState.none)
                {
                    return Color.DarkOrange;
                }
            }
            else if (stat == enTestState.nc_Running || stat == enTestState.Running)
            {
                return Color.DarkBlue;
            }
            else if (stat == enTestState.LoadData)
            {
                return Color.DarkGreen;
            }
            else
            {
                if (errstat != enStatError.NoError) return Color.DarkRed;
            }
            return Color.Black;
        }

        

        private void btGridOpen_Click(System.Object sender, System.EventArgs e)
        {
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string sch = ch.ToString();

            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;
            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh];
            string sext;
            string sfilt;

            if (filename.Length < 5) sext = "";
            else sext = Path.GetExtension(filename).ToUpper();

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            sfilt = "Galvanostatic EIS (*.eis) | *.eis|";
            sfilt += "Galvanostatic HFR (*.hfr) |*.hfr|";
            sfilt += "Pseudo Rs Rp (*.prr) | *.prr|";
            sfilt += "V/T monitor (*.vtm) | *.vtm|";
            sfilt += "Quick galvanostatic EIS (*.qis) | *.qis|";
            sfilt += "Discharge test (*.dch) | *.dch";
            dlg.Title = string.Format("Selection of technique file to be used for channel {0}.", ch + 1);
            dlg.Filter = sfilt;

            if (sext == ".HFR")
            {
                dlg.DefaultExt = "hfr";
                dlg.FilterIndex = 2;
            }
            else if (sext == ".PRR")
            {
                dlg.DefaultExt = "prr";
                dlg.FilterIndex = 3;
            }
            else if (sext == ".VTM")
            {
                dlg.DefaultExt = "vtm";
                dlg.FilterIndex = 4;
            }
            else if (sext == ".QIS")
            {
                dlg.DefaultExt = "qis";
                dlg.FilterIndex = 5;
            }
            else
            {
                dlg.DefaultExt = "eis";
                dlg.FilterIndex = 1;
            }
            if(sext.Length >= 5)
            {
                dlg.InitialDirectory = Path.GetDirectoryName(filename);
                dlg.FileName = Path.GetFileName(filename);
            }
            else
            {
                dlg.InitialDirectory = gBZA.appcfg.PathSch;
                dlg.FileName = "";
            }
        
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                filename = dlg.FileName;
                gBZA.appcfg.PathSch = Path.GetDirectoryName(dlg.FileName);
                gBZA.appcfg.Save();
                var Value = gBZA.ChLnkLst[sch];
                Value.mChInf.FileCond = filename;
                gBZA.ChLnkLst[sch] = Value;
                gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh] = filename;
                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            }
        }
        
        

        private void timerproc_Tick(object sender, EventArgs e)
        {
            if(bFirst)
            {
                return;
            }
            this.DispTick++;

            RefreshGrid();

            if (this.DispTick > 5)
            {
                this.DispTick = 0;
                if(bRefresh) ApplyEnableGroupButton();
            }
            
        }
        
        private void hgrid_Paint(object sender, System.Windows.Forms.PaintEventArgs e)

        {
            foreach (HostedControl hosted in ArrMon)
            {
                hosted.UpdatePosition();
            }

            foreach (HostedControl hosted in ArrSrart)
            {
                hosted.UpdatePosition();
            }

            foreach (HostedControl hosted in ArrReload)
            {
                hosted.UpdatePosition();
            }

            foreach (HostedControl hosted in ArrOpen)
            {
                hosted.UpdatePosition();
            }

            foreach (HostedControl hosted in ArrView)
            {
                hosted.UpdatePosition();
            }

            foreach (HostedControl hosted in ArrGraph)
            {
                hosted.UpdatePosition();
            }

            foreach (HostedControl hosted in ArrReport)
            {
                hosted.UpdatePosition();
            }
        }
        
        private void hgrid_EnterCell(object sender, EventArgs e)
        {
            if (hgrid.Cols[hgrid.Col].AllowEditing == true)
            {
                hgrid.Styles.Focus.BackColor = Color.White;
            }
            else
            {
                hgrid.Styles.Focus.BackColor = SystemColors.Info; //hgrid.Styles.Normal.BackColor;
            }
        }
        
        public string GetZManPath()
        {
            string result = string.Empty;

            try
            {
                RegistryKey rKey = Registry.LocalMachine.OpenSubKey(@"Software\ZIVE LAB\ZMAN");
                if (rKey == null)
                    rKey = Registry.LocalMachine.OpenSubKey(@"Software\WOW6432Node\ZIVE LAB\ZMAN");

                result = (string)rKey.GetValue("InstallDir", string.Empty);
            }
            catch (Exception)
            {
                //Console.WriteLine(string.Format("Cannot find IVMan path in registry. [{0}]", ex.Message));

                return string.Empty;
            }

            return result;
        }
        
        private void OpenTechFile(int ch, string filename,eZimType type = eZimType.UNKNOWN)
        {
            frmTechniq frmTech = new frmTechniq(ch, filename, type);
            frmTech.ShowInTaskbar = false;
            frmTech.MdiParent = this.MdiParent;

            frmTech.StartPosition = FormStartPosition.CenterScreen;
            /*
            if (gBZA.appcfg.TechLocation == new Point(0, 0))
            {
                frmTech.StartPosition = FormStartPosition.CenterScreen;
            }
            else
            {
                frmTech.Location = gBZA.appcfg.TechLocation;
                frmTech.StartPosition = FormStartPosition.Manual;
            }
            */

            if(frmTech.loaderr == false)
            {
                frmTech.Show();
            }
            frmTech.WindowState = FormWindowState.Normal;
        }
        
        private void hgrid_MouseMove(object sender, MouseEventArgs e)
        {
            string tip = "";
            HitTestInfo ht = hgrid.HitTest(e.X, e.Y);

            if (ht.Row < 1)
            {
                gtip.SetToolTip(hgrid, null);
                return;
            }
            
            if (ht.Type == HitTestTypeEnum.Cell)
            {
                string tsch = hgrid[ht.Row, 0].ToString();
                int ch = Convert.ToInt32(tsch) -1;
                string sch = ch.ToString();
                if (gBZA.ChLnkLst.ContainsKey(sch) == false)
                {
                    gtip.SetToolTip(hgrid, null);
                    return;
                }
                string serial = gBZA.ChLnkLst[sch].sSerial;
                
           
                //string[] sTitle2 = new string[15] { "Channel", "Group", "Last Status", "Elapsed(s)", "Range", "Vdc(V)", "Temp.(°C)", "Condition file", "Condition file", "Control", "Control", "Result file", "Result file", "Data count", "Remote", };

                /*if(ht.Column == 0)
                {
                    if (gBZA.SifLnkLst.ContainsKey(serial) == false)
                    {
                        tip = "No device.";
                    }
                    else
                    {
                        tip = Encoding.UTF8.GetString(gBZA.SifLnkLst[serial].mDevInf.mConnCfg.mEthernetCfg.hostname).Trim('\0');
                        if ((eDeviceType)gBZA.SifLnkLst[serial].mDevInf.mSysCfg.mSIFCfg.Type == eDeviceType.MBZA)
                        {
                            tip += string.Format("\\{0}.",  gBZA.ChLnkLst[sch].SifCh + 1);
                        }
                    }
                }
                else */if (ht.Column == 1)
                {
                    tip = string.Format("Check and set the group assignment of channel {0}.", tsch);                    
                }
                else if (ht.Column == 2)
                {
                    tip = string.Format("Indicates the test status of channel {0}.", tsch);
                }
                else if (ht.Column == 3)
                {
                    tip = string.Format("Indicates the last error status of channel {0}.", tsch);
                }
                else if (ht.Column == 4)
                {
                    tip = string.Format("Display of total test run time for channel {0}.", tsch);
                }
                else if (ht.Column == 5)
                {
                    tip = string.Format("Displays the range of current and voltage selected on channel {0}.", tsch);
                }
                else if (ht.Column == 6)
                {
                    tip = string.Format("Display of DC voltage measurements on channel {0}.", tsch);
                }
                else if (ht.Column == 7)
                {
                    tip = string.Format("Displays the measured temperature value on channel {0}.", tsch);
                }
                else if (ht.Column == 8)
                {
                    if (gBZA.ChLnkLst[sch].mChInf.FileCond.Length < 5)
                    {
                        tip = string.Format("Technique file for channel {0}:None.", tsch);
                    }
                    else
                    {
                        tip = string.Format("Technique file for channel {0}:{1}", tsch, gBZA.ChLnkLst[sch].mChInf.FileCond);
                    }
                }
                else if (ht.Column == 13)
                {
                    if (gBZA.ChLnkLst[sch].mChInf.FileResult.Length < 5)
                    {
                        tip = string.Format("Result file for channel {0}:None.", tsch);
                    }
                    else
                    {
                        tip = string.Format("Result file for channel {0}:{1}", tsch, gBZA.ChLnkLst[sch].mChInf.FileResult);
                    }
                }
                else if (ht.Column == 16)
                {
                    tip = string.Format("Display the number of data stored in the data file and the number of data points in BZA memory.\r\n Data number of result file (data number of BZA memory).", tsch);
                }
                else if (ht.Column == 17)
                {
                    tip = string.Format("Displays the remote control setting status of channel {0}.", tsch);
                }
                if (tip != gtip.GetToolTip(hgrid))
                {
                    if(tip.Length < 1) gtip.SetToolTip(hgrid, null);
                    else gtip.SetToolTip(hgrid, tip);
                }
            }
        }

        private void btGridMon_Mousemove(object sender, MouseEventArgs e)
        {
            Button bt = (Button)sender;
            string str = (string)bt.Tag;

            int ch = Convert.ToInt32(str);
            string tip = "";
            string sch = ch.ToString();
            if (gBZA.ChLnkLst.ContainsKey(sch) == false)
            {
                gtip.SetToolTip(hgrid, null);
                return;
            }
            string serial = gBZA.ChLnkLst[sch].sSerial;


            if (gBZA.SifLnkLst.ContainsKey(serial) == false)
            {
                tip = "No device.";
            }
            else
            {
                tip = Encoding.UTF8.GetString(gBZA.SifLnkLst[serial].mDevInf.mConnCfg.mEthernetCfg.hostname).Trim('\0');
                if ((eDeviceType)gBZA.SifLnkLst[serial].mDevInf.mSysCfg.mSIFCfg.Type == eDeviceType.MBZA)
                {
                    tip += string.Format("\\{0}.", gBZA.ChLnkLst[sch].SifCh + 1);
                }
            }
            
            if (tip != gtip.GetToolTip(bt))
            {
                if (tip.Length < 1) gtip.SetToolTip(bt, null);
                else gtip.SetToolTip(bt, tip);
            }
        }

        private void btGridStart_Mousemove(object sender, MouseEventArgs e)
        {
            Button bt = (Button)sender;
            string str = (string)bt.Tag;

            int ch = Convert.ToInt32(str.Substring(0,2));
            string tip;
            if (str.Contains("Start") == true )
            {
                tip = string.Format("Start the test of channel {0}.", ch + 1);
            }
            else
            {
                tip = string.Format("Stop the test of channel {0}.", ch + 1);
            }
            if (tip != gtip.GetToolTip(bt))
            {
                if (tip.Length < 1) gtip.SetToolTip(bt, null);
                else gtip.SetToolTip(bt, tip);
            }
        }

        private void btGridReload_Mousemove(object sender, MouseEventArgs e)
        {
            Button bt = (Button)sender;
            string str = (string)bt.Tag;

            int ch = Convert.ToInt32(str.Substring(0, 2));
            
            string tip = string.Format("Receive or stop receiving results on channel {0}.", ch+1);
            if (tip != gtip.GetToolTip(bt))
            {
                if (tip.Length < 1) gtip.SetToolTip(bt, null);
                else gtip.SetToolTip(bt, tip);
            }
        }

        private void btGridOpen_Mousemove(object sender, MouseEventArgs e)
        {
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string tip = string.Format("Select the schedule file to use on channel {0}.", ch+1);
            if (tip != gtip.GetToolTip(bt))
            {
                if (tip.Length < 1) gtip.SetToolTip(bt, null);
                else gtip.SetToolTip(bt, tip);
            }
        }

        private void btGridGraph_Mousemove(object sender, MouseEventArgs e)
        {
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string tip = string.Format("View the test results file for channel {0} as a graph.", ch+1);
            if (tip != gtip.GetToolTip(bt))
            {
                if (tip.Length < 1) gtip.SetToolTip(bt, null);
                else gtip.SetToolTip(bt, tip);
            }
        }

        private void btselall_Click(object sender, EventArgs e)
        {
            string rch;
            string sch;
            int ich;
            stLinkSifCh  lnk;
            for (int row = 2; row< hgrid.Rows.Count; row++)
            {
                rch = (string)hgrid.GetData(row, 0);
                ich = Convert.ToInt32(rch) - 1;
                sch = ich.ToString();
                if (gBZA.ChLnkLst.ContainsKey(sch))
                {
                    lnk = gBZA.ChLnkLst[sch];
                    hgrid.SetCellCheck(row, 1, CheckEnum.Checked);
                    lnk.mChInf.bSelected = true;
                    gBZA.ChLnkLst[sch] = lnk;
                }
            }
            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
        }

        private void btdeselall_Click(object sender, EventArgs e)
        {
            string rch;
            string sch;
            int ich;
            stLinkSifCh lnk;
            for (int row = 2; row < hgrid.Rows.Count; row++)
            {
                rch = (string)hgrid.GetData(row, 0);
                ich = Convert.ToInt32(rch) - 1;
                sch = ich.ToString();
                if (gBZA.ChLnkLst.ContainsKey(sch))
                {
                    lnk = gBZA.ChLnkLst[sch];
                    hgrid.SetCellCheck(row, 1, CheckEnum.Unchecked);
                    lnk.mChInf.bSelected = false;
                    gBZA.ChLnkLst[sch] = lnk;
                }
            }
            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);

            btgrptech.Enabled = false;
            btgrpstart.Enabled = false;
            btgrpstop.Enabled = false;
            btgrpmon.Enabled = false;
        }

        private void btGridView_Mousemove(object sender, MouseEventArgs e)
        {
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string tip = string.Format("Edit channel {0}'s technical file.", ch + 1);
            if (tip != gtip.GetToolTip(bt))
            {
                if (tip.Length < 1) gtip.SetToolTip(bt, null);
                else gtip.SetToolTip(bt, tip);
            }
        }

        private void btGridReport_Mousemove(object sender, MouseEventArgs e)
        {
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string tip = string.Format("View the test results file for channel {0} as a report.", ch + 1);
            if (tip != gtip.GetToolTip(bt))
            {
                if (tip.Length < 1) gtip.SetToolTip(bt, null);
                else gtip.SetToolTip(bt, tip);
            }
        }
        
        private void btGridView_Click(System.Object sender, System.EventArgs e)
        {
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string sch = ch.ToString();
            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;
            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh];

            if (File.Exists(filename) == false)
            {
                MessageBox.Show("The technique file is not set or there is a problem.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
                return;
            }
            eZimType type = gBZA.SifLnkLst[sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[iSifCh].GetZIMType();
            OpenTechFile(ch,filename,type);
        }

        private void btGridReport_Click(System.Object sender, System.EventArgs e)
        {
            evOpenEditor?.Invoke(sender, e);

        }


        private void btGridGraph_Click(System.Object sender, System.EventArgs e)
        {

            evOpenGraph?.Invoke(sender, e);
        }

        private void btGridMon_Click(System.Object sender, System.EventArgs e)
        {
            evChRtView?.Invoke(sender, e);

        }

        private void btGridStart_Click(System.Object sender, System.EventArgs e)
        {
            
            Button bt = (Button)sender;
            string str = (string)bt.Tag;
            int ch = Convert.ToInt32(str.Substring(0, 2));
            string sch = ch.ToString();
            var Value = gBZA.ChLnkLst[sch];

            string sSerial = Value.sSerial;
            int iSifCh = Value.SifCh;

            if (str.Substring(3) == "Start")
            {
                if (File.Exists(Value.mChInf.FileCond) == false)
                {
                    MessageBox.Show("The technique file is not set or there is a problem.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
                    
                if (Value.mChInf.FileCond != gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh])
                {
                    gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh] = Value.mChInf.FileCond;
                }

                List<int> lstch = new List<int>();
                lstch.Clear();
                lstch.Add(ch);

                frmStart frm = new frmStart(false, lstch);
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    MBZA_MapUtil.CtrlStart(sSerial, iSifCh, false);
                }
            }
            else
            {
                if (MessageBox.Show("Are you sure you want to end the test process ?", gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    MBZA_MapUtil.CtrlStop(sSerial, iSifCh);
                }
            }
        }

        private void btGridReload_Click(System.Object sender, System.EventArgs e)
        {
            Button bt = (Button)sender;
            string str = (string)bt.Tag;
            int ch = Convert.ToInt32(str.Substring(0, 2));
            string sch = ch.ToString();
            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;
            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.resfilename[iSifCh];

            if (gBZA.CheckStatusRun(gBZA.SifLnkLst[sSerial].MBZAIF.mChStatInf[iSifCh]))
            {
                gBZA.ShowInfoBox("The requested action cannot proceed because the channel is being tested.");
                return;
            }
            else if (gBZA.CheckStatusCalibMode(gBZA.SifLnkLst[sSerial].MBZAIF.mChStatInf[iSifCh]))
            {
                gBZA.ShowInfoBox("The requested action cannot proceed because the channel mode is calibration.");
                return;
            }
            if(gBZA.SifLnkLst[sSerial].MBZAIF.mChStatInf[iSifCh].eis_status.rescount < 1)
            {
                gBZA.ShowInfoBox("The requested operation cannot proceed because test result data is not available.");
                return;
            }

            SaveFileDialog saveDlg = new SaveFileDialog();
            
            saveDlg.Title = "Reload and saving result data file of ZM.";
            saveDlg.DefaultExt = "*.zmf";
            saveDlg.Filter = "Result data files of ZM (*.zmf) |*.zmf";
            saveDlg.OverwritePrompt = true;
            saveDlg.InitialDirectory = Path.GetDirectoryName(filename);
            saveDlg.FileName = Path.GetFileName(filename);

            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }
            gBZA.appcfg.PathData = Path.GetDirectoryName(saveDlg.FileName);
            gBZA.appcfg.Save();
            filename = saveDlg.FileName;
            var Value = gBZA.ChLnkLst[sch];
            Value.mChInf.FileResult = filename;

            gBZA.ChLnkLst[sch] = Value;
            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);

            gBZA.SifLnkLst[sSerial].MBZAIF.resfilename[iSifCh] = saveDlg.FileName;
            MBZA_MapUtil.LoadDataStart(sSerial, iSifCh);
        }

        private void btgrpmon_Click(object sender, EventArgs e)
        {
            evGroupRtView?.Invoke(this, e);
            
        }

        private void btgrpstop_Click(object sender, EventArgs e)
        {
            string sch;
            int ich;
            string sSerial;
            int iSifCh;

            if (GetGroupFirstRow() < 1)
            {
                gBZA.ShowInfoBox("There is no channel selected.");
                return;
            }

            if (MessageBox.Show("Are you sure you want to end the test process ?", gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
            {
                return;
            }
            
            for (int row = 2; row < hgrid.Rows.Count; row++)
            {
                if (hgrid.GetCellCheck(row, 1) == CheckEnum.Checked)
                {
                    sch = (string)hgrid.GetData(row, 0);
                    ich = Convert.ToInt32(sch);
                    sch = (ich - 1).ToString();
                    sSerial = gBZA.ChLnkLst[sch].sSerial;
                    iSifCh = gBZA.ChLnkLst[sch].SifCh;

                    if(gBZA.SifLnkLst.ContainsKey(sSerial) == false)
                    {
                        continue;
                    }
                    if (gBZA.CheckStatusRun(gBZA.SifLnkLst[sSerial].MBZAIF.mChStatInf[iSifCh]))
                    {
                        if(gBZA.CheckStatusCalibMode(gBZA.SifLnkLst[sSerial].MBZAIF.mChStatInf[iSifCh]) == false)
                        {
                            MBZA_MapUtil.CtrlStop(sSerial, iSifCh);
                        }
                    }
                }
            }
        }

        private int GetGroupFirstRow()
        {

            for (int row = 2; row < hgrid.Rows.Count; row++)
            {
                if (hgrid.GetCellCheck(row, 1) == CheckEnum.Checked)
                {
                    return row;
                }
            }
            return 0;
        }

        private string StartChannel(List<int> lstch)
        {
            string serrch = "";
            stLinkSifCh LnkCh = new stLinkSifCh(0);
            stTech tech = new stTech(0);
            string sifid;
            int sifch;

            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;
                
                if (MBZA_MapUtil.CtrlStart(sifid, sifch, false) == false)
                {
                    serrch += string.Format("{0:00} ", val + 1);
                }
            }
            return serrch;
        }

        private void btgrpstart_Click(object sender, EventArgs e)
        {
            string sch;
            string serr;
            string smsg;
            int ch;
            List<int> lstch = new List<int>();
            lstch.Clear();
            for (int row = 2; row < hgrid.Rows.Count; row++)
            {
                if (hgrid.GetCellCheck(row, 1) == CheckEnum.Checked)
                {
                    sch = (string)hgrid.GetData(row, 0);
                    ch = Convert.ToInt32(sch) - 1;
                    lstch.Add(ch);
                }
            }

            if(lstch.Count < 1)
            {
                MessageBox.Show("There is no channel selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            frmStart frm = new frmStart(true, lstch);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                serr = StartChannel(lstch);
                if (serr.Trim().Length > 0)
                {
                    smsg = string.Format("Failed to start the test of channels ({0}).", serr);
                    gBZA.ShowErrBox(smsg);
                }
            }
            
        }

        private void btgrptech_Click(object sender, EventArgs e)
        {
            
            int row = GetGroupFirstRow();
            if(row == 0)
            {
                MessageBox.Show("There is no channel selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            string sch = (string)hgrid.GetData(row, 0);
            int ich = Convert.ToInt32(sch);
            sch = (ich - 1).ToString();
            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;

            string filename;
            if (gBZA.SifLnkLst.ContainsKey(sSerial))
            {
                filename = gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh];
            }
            else
            {
                filename = gBZA.ChLnkLst[sch].mChInf.FileCond;
            }

            string sext = Path.GetExtension(filename).ToUpper();
            string sfilt;
            stLinkSifCh Value;

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;


            dlg.Multiselect = false;
            sfilt = "Galvanostatic EIS (*.eis) | *.eis|";
            sfilt += "Galvanostatic HFR (*.hfr) |*.hfr|";
            sfilt += "Pseudo Rs Rp (*.prr) | *.prr|";
            sfilt += "V/T monitor (*.vtm) | *.vtm|";
            sfilt += "Quick galvanostatic EIS (*.qis) | *.qis|";
            sfilt += "Discharge test (*.dch) | *.dch";
            dlg.Title = "Select the technology file to use for the group channel.";
            dlg.Filter = sfilt;

            if (sext == ".HFR")
            {
                dlg.DefaultExt = "hfr";
                dlg.FilterIndex = 2;
            }
            else if (sext == ".PRR")
            {
                dlg.DefaultExt = "prr";
                dlg.FilterIndex = 3;
            }
            else if (sext == ".VTM")
            {
                dlg.DefaultExt = "vtm";
                dlg.FilterIndex = 4;
            }
            else if (sext == ".QIS")
            {
                dlg.DefaultExt = "qis";
                dlg.FilterIndex = 5;
            }
            else
            {
                dlg.DefaultExt = "eis";
                dlg.FilterIndex = 1;
            }
            dlg.InitialDirectory = Path.GetDirectoryName(filename);
            dlg.FileName = Path.GetFileName(filename);
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                filename = dlg.FileName;
                gBZA.appcfg.PathSch = Path.GetDirectoryName(dlg.FileName);
                gBZA.appcfg.Save();
                for (row = 2; row < hgrid.Rows.Count; row++)
                {
                    if (hgrid.GetCellCheck(row, 1) == CheckEnum.Checked)
                    {
                        sch = (string)hgrid.GetData(row, 0);
                        ich = Convert.ToInt32(sch);
                        sch = (ich - 1).ToString();
                        sSerial = gBZA.ChLnkLst[sch].sSerial;
                        iSifCh = gBZA.ChLnkLst[sch].SifCh;

                        if (gBZA.SifLnkLst.ContainsKey(sSerial))
                        {
                            if (gBZA.SifLnkLst[sSerial].MBZAIF.bConnect)
                            {
                                if (gBZA.CheckStatusRun(gBZA.SifLnkLst[sSerial].MBZAIF.mChStatInf[iSifCh]))
                                {
                                    continue;
                                }
                            }
                            gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh] = filename;
                        }

                        Value = gBZA.ChLnkLst[sch];
                        Value.mChInf.FileCond = filename;
                        gBZA.ChLnkLst[sch] = Value;
                        
                    }
                }
                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            }
        }

        private void ApplyEnableGroupButton()
        {
            string rch;
            string sch;
            int ich;
            int igrp = 0;
            stLinkSifCh lnk;
            bool brun = false;


            for (int row = 2; row < hgrid.Rows.Count; row++)
            {
                if(hgrid.GetCellCheck(row, 1) == CheckEnum.Checked)
                {
                    igrp++;
                    rch = (string)hgrid.GetData(row, 0);
                    ich = Convert.ToInt32(rch) - 1;
                    sch = ich.ToString();

                    
                    if (gBZA.ChLnkLst.ContainsKey(sch))
                    {
                        lnk = gBZA.ChLnkLst[sch];
                        if (gBZA.SifLnkLst.ContainsKey(lnk.sSerial) == false)
                        {
                            brun = false;
                        }
                        else
                        {
                            brun = gBZA.CheckStatusRun(gBZA.SifLnkLst[lnk.sSerial].MBZAIF.mChStatInf[lnk.SifCh]);
                        }
                        
                        if (gBZA.SifLnkLst.ContainsKey(lnk.sSerial))
                        {
                            if (brun)
                            {
                                btgrptech.Enabled = false;
                                btgrpstart.Enabled = false;
                                btgrpstop.Enabled = true;
                                btgrpmon.Enabled = true;
                                return;
                            }
                        }
                    }
                }
            }
            if(igrp > 0)
            {
                btgrptech.Enabled = true;
                btgrpstart.Enabled = true;
                btgrpstop.Enabled = false;
                btgrpmon.Enabled = true;
            }
            else
            {
                btgrptech.Enabled = false;
                btgrpstart.Enabled = false;
                btgrpstop.Enabled = false;
                btgrpmon.Enabled = false;
            }
        }
        
        private void hgrid_CellChecked(object sender, RowColEventArgs e)
        {
            string rch = (string)hgrid.GetData(e.Row, 0);
            int ich = Convert.ToInt32(rch) - 1;
            string sch = ich.ToString();
            CheckEnum chk = hgrid.GetCellCheck(e.Row, e.Col);
            var lnk = gBZA.ChLnkLst[sch];
            if (e.Col == 1)
            {
                lnk.mChInf.bSelected = (chk == CheckEnum.Checked) ? true : false;
            }
            else if (e.Col == 17)
            {
                lnk.mChInf.bRemote = (chk == CheckEnum.Checked) ? true : false;
                gBZA.SifLnkLst[gBZA.ChLnkLst[sch].sSerial].MBZAIF.bRemote[gBZA.ChLnkLst[sch].SifCh] = lnk.mChInf.bRemote;
            }
            else
            {
                return;
            }
            gBZA.ChLnkLst[sch] = lnk;
            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
         
        }

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            bRefresh = false;
            bClose = true;
            CloseThis?.Invoke(this, e);
        }

        private void frmMain_LocationChanged(object sender, EventArgs e)
        {
            if (bClose || bFirst) return;
            if (this.WindowState == FormWindowState.Minimized) return;
            gBZA.appcfg.MainViewWinStatus = this.WindowState;
            if (this.WindowState == FormWindowState.Normal)
            {
                gBZA.appcfg.MainViewSize = this.Size;
                gBZA.appcfg.MainViewLocation = this.Location;
            }

            gBZA.appcfg.Save();
        }

        private void frmMain_SizeChanged(object sender, EventArgs e)
        {
            if (bClose || bFirst) return;
            if (this.WindowState == FormWindowState.Minimized) return;
            gBZA.appcfg.MainViewWinStatus = this.WindowState;
            if (this.WindowState == FormWindowState.Normal)
            {
                gBZA.appcfg.MainViewSize = this.Size;
                gBZA.appcfg.MainViewLocation = this.Location;
            }
            
            gBZA.appcfg.Save();
        }
    }
}