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
       
        public string AppTitle;
        public string AppVer;

        private int AniIdx;
        private int MaxAniCnt;
        private Icon[] AniIcons;

        private int DispTick;
        private bool bExit;
        private bool bRefresh;
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

        frmRealview frmRtView;
        frmRealview frmRegRtView;
        frmRealview frmGrpRtView;

        frmConfig frmcfg;

       
        public frmMain()
        {
            

            InitializeComponent();

            DoubleBuffered = true;

            this.MakeAppTitle();
            this.MaxAniCnt = 10;

            this.Text = AppTitle;
            gBZA.sMsgTitle = AppTitle;

            gBZA.appcfg = new AppConfig();
            gBZA.appcfg.Load();
            //MakeAppFolder();

            bRefresh = false;
            bExit = false;

            ArrMon = new ArrayList();
            ArrSrart = new ArrayList();
            ArrReload = new ArrayList();
            ArrOpen = new ArrayList();
            ArrView = new ArrayList();
            ArrGraph = new ArrayList();
            ArrReport = new ArrayList();

            frmRtView = null;
            frmRegRtView = null;
            frmGrpRtView = null;
            frmcfg = null;

            this.Icon = ZM.Properties.Resources.zm1;
            this.FormClosing += this.FormMain_FormClosing;
            this.LostFocus += new EventHandler(FormMain_LostFocus);
            this.notifyIcon1.DoubleClick += this.notifyIcon1_DoubleClick;

            this.MainMenu.ImageScalingSize = new System.Drawing.Size(24, 24);

            this.notifyIcon1.Icon = Properties.Resources.zm1;
            this.notifyIcon1.BalloonTipText = "";
            this.notifyIcon1.BalloonTipIcon = ToolTipIcon.None;
            this.notifyIcon1.BalloonTipTitle = AppTitle;

            this.notifyIcon1.Text = AppTitle;
            this.notifyIcon1.Visible = true;

            this.DispTick = 0;

            this.AniIcons = new Icon[this.MaxAniCnt];
            this.AniIdx = 0;
            this.AniIcons[0] = ZM.Properties.Resources.zm1_0000;
            this.AniIcons[1] = ZM.Properties.Resources.zm1_0001;
            this.AniIcons[2] = ZM.Properties.Resources.zm1_0002;
            this.AniIcons[3] = ZM.Properties.Resources.zm1_0003;
            this.AniIcons[4] = ZM.Properties.Resources.zm1_0004;
            this.AniIcons[5] = ZM.Properties.Resources.zm1_0005;
            this.AniIcons[6] = ZM.Properties.Resources.zm1_0006;
            this.AniIcons[7] = ZM.Properties.Resources.zm1_0007;
            this.AniIcons[8] = ZM.Properties.Resources.zm1_0008;
            this.AniIcons[9] = ZM.Properties.Resources.zm1_0009;



            imageList = new ImageList();
            imageList.ImageSize = new Size(16, 16);
            imageList.Images.Add("play", ZM.Properties.Resources.Play);
            imageList.Images.Add("save", ZM.Properties.Resources.Save);
            imageList.Images.Add("tech", ZM.Properties.Resources.TestSettings);
            imageList.Images.Add("graph", ZM.Properties.Resources.AutoscaleXY);
            imageList.Images.Add("stop", ZM.Properties.Resources.Stop);
            imageList.Images.Add("check", ZM.Properties.Resources.chevron_down);
            imageList.Images.Add("uncheck", ZM.Properties.Resources.checkbox_blank_outline);
            imageList.Images.Add("mon", ZM.Properties.Resources.ExportImage);
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
                btGridReload[ch].Tag = ch.ToString();
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
            

            if (gBZA.appcfg.MainSize == new Size(0,0) || gBZA.appcfg.MainLocation.X == -32000 || gBZA.appcfg.MainLocation.Y == -32000)
            {
                this.StartPosition = FormStartPosition.WindowsDefaultLocation;
                this.Size = new Size(1242,366);
            }
            else
            {
                this.Location = gBZA.appcfg.MainLocation;
                this.Size = gBZA.appcfg.MainSize;
                this.StartPosition = FormStartPosition.Manual;
            }

            
            gBZA.FileLnkCh = Path.Combine(gBZA.appcfg.PathSysInfo, "ZM.mcl");
  
            gBZA.ChLnkLst = new Dictionary<string, stLinkSifCh>();
            gBZA.SifLnkLst = new Dictionary<string, stLinkSIF>();
            gBZA.SifLnkLst.Clear();

            if (File.Exists(gBZA.FileLnkCh) == true)
            {
                gBZA.LoadXmlToLinkCh(gBZA.FileLnkCh);
            }
            else
            {
                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            }
            

            gtip.SetToolTip(btselall, "Select all channels as a group.");
            gtip.SetToolTip(btdeselall, "Deselect all channels as a group.");
            gtip.SetToolTip(btgrptech, "Selects the technique file of the channel selected as a group.");
            gtip.SetToolTip(btgrpstart, "Starts testing the channels selected as a group.");
            gtip.SetToolTip(btgrpstop, "Stop testing the channels selected as a group.");
            gtip.SetToolTip(btgrpmon, "It shows the real-time monitor and control window of the channel selected as a group.");
            gtip.SetToolTip(hgrid, null);
            
        }

        

        public void MakeAppFolder()
        {
            try
            {

                if (gBZA.appcfg.PathZIMFW.Length < 5) gBZA.appcfg.PathZIMFW = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Firmware");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathZIMFW))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathZIMFW);
                }

                if (gBZA.appcfg.FileNameZIMFW.Length < 5) gBZA.appcfg.FileNameZIMFW = "default.zim";

                if (gBZA.appcfg.PathSIFFW.Length < 5) gBZA.appcfg.PathSIFFW = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Firmware");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathSIFFW))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathSIFFW);
                }

                if (gBZA.appcfg.PathRemote.Length < 5) gBZA.appcfg.PathRemote = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Remote");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathRemote))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathRemote);
                }
                
                if (gBZA.appcfg.FileNameSIFFW.Length < 5) gBZA.appcfg.FileNameSIFFW = "default.sif";

                if (gBZA.appcfg.PathData.Length < 5) gBZA.appcfg.PathData = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Data");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathData))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathData);
                }

                if (gBZA.appcfg.PathSch.Length < 5) gBZA.appcfg.PathSch = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Sch");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathSch))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathSch);
                }

                if (gBZA.appcfg.PathSysInfo.Length < 5) gBZA.appcfg.PathSysInfo = Path.Combine("C:\\ZIVE DATA\\ZM\\", "infor");

                if (!System.IO.Directory.Exists(Path.GetDirectoryName(gBZA.appcfg.PathSysInfo)))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathSysInfo);
                }

                if (gBZA.appcfg.PathRangeInfo.Length < 5) gBZA.appcfg.PathRangeInfo = Path.Combine("C:\\ZIVE DATA\\ZM\\", "infor\\board");

                if (!System.IO.Directory.Exists(Path.GetDirectoryName(gBZA.appcfg.PathRangeInfo)))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathRangeInfo);
                }

                if (gBZA.appcfg.PathSchTemp.Length < 5) gBZA.appcfg.PathSchTemp = Path.Combine(gBZA.appcfg.PathSch, "Temp");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathSchTemp))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathSchTemp);
                }

                if (gBZA.appcfg.PathLog.Length < 5) gBZA.appcfg.PathLog = Path.Combine("C:\\ZIVE DATA\\ZM\\", "log");

                if (!System.IO.Directory.Exists(Path.GetDirectoryName(gBZA.appcfg.PathLog)))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathLog);
                }


                if (gBZA.appcfg.BatLimitFile.Length < 3)
                {
                    gBZA.appcfg.BatLimitFile = "C:\\ZIVE DATA\\ZM\\Infor\\BAT.lmt";
                }

                gBZA.appcfg.Save();
            }
            catch
            {
               
            }
        }
        
        public void MakeAppTitle()
        {
            string str = Assembly.GetExecutingAssembly().GetName().ToString();
            int i0 = str.IndexOf(',', 0);
            int i1 = i0 + 10;
            int i2 = str.IndexOf(',', i1);
            AppVer = str.Substring(i1, i2 - i1).Trim();
            AppTitle = str.Substring(0,i0) + " " + AppVer;
        }

        void ShowBalloon(string sinfo)
        {
            this.notifyIcon1.BalloonTipIcon = ToolTipIcon.Info;
            this.notifyIcon1.BalloonTipTitle = AppTitle;
            this.notifyIcon1.BalloonTipText = sinfo;
            this.notifyIcon1.ShowBalloonTip(1000);
        }


        bool ExecuteSplash(bool bFirst = false)
        {
            frmSplash frm = new frmSplash(bFirst);
            frm.Text = AppTitle;
            frm.Icon =ZM.Properties.Resources.zm1;
            frm.TopMost = true;

            this.timer1.Stop();
            
            if (frm.ShowDialog() == DialogResult.Cancel)
            {
                if (bFirst == true)
                {
                    this.bExit = true;
                    this.notifyIcon1.Visible = false;
                    Application.Exit();
                }
                return false;
            }

            if (frm.changeBZA == true) ShowBalloon("A change in the device has been detected.");
            else ShowBalloon("There are no changes to the device.");
            return true;
        }

        void FormMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (this.bExit == false)
            {
                e.Cancel = true;
                this.Hide();
 //               this.Visible = false;
 //               this.WindowState = FormWindowState.Minimized;
            }
        }

        void FormMain_LostFocus(object sender, EventArgs e)
        {

        }

        void notifyIcon1_DoubleClick(object sender, EventArgs e)
        {

            if (this.WindowState == FormWindowState.Minimized)
            {
                this.Visible = true;
                this.WindowState = FormWindowState.Normal;
                this.Activate();
            }
            else
            {
                this.Visible = false;
                this.WindowState = FormWindowState.Minimized;
            }

        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            if (ExecuteSplash(true) == true)
            {
                gBZA.ConnectSifs();
                foreach (var pair in gBZA.ChLnkLst)
                {
                    if (pair.Value.bChkSIF == true)
                    {
                        if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                        {
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.condfilename[pair.Value.SifCh] = pair.Value.mChInf.FileCond;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.resfilename[pair.Value.SifCh] = pair.Value.mChInf.FileResult;
                            pair.Value.mDevInf.ToWritePtr(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mDevInf.ToByteArray());

                        }
                    }
                }

                InitMainView();
                
            }
            else
            {
                return;
            }
            this.notifyIcon1.Visible = true;
            this.ShowInTaskbar = true;

            this.timer1.Interval = 100;
            this.timer1.Start();

            this.WindowState = FormWindowState.Normal;
            this.Visible = true;
            this.Activate();
            gtip.Active = true;
        }

        private void InitMainView()
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

        private void InitGrid()
        {
            int i;
            string[] sTitle1 = new string[17] { "Channel", "Group",      "Status",     "Status","Status", "Status",     "Status", "Condition file", "Condition file", "Condition file", "Control", "Control", "Result file", "Result file", "Result file", "Result file", "Remote", };
            string[] sTitle2 = new string[17] { "Channel", "Group", "Last Status", "Elapsed(s)", "Range", "Vdc(V)", "Temp.(°C)",      "File name",          "Tools",          "Tools", "Control", "Control",   "File name",       "Tools",       "Tools",  "Data count", "Remote", };
            int[] iwidth = new int[17]       {        60,      50,            180,           80,      80,       70,           70,              150,                32,              32,        32,        32,           150,            32,            32,            80,       50, };

            hgrid.Redraw = false;
            hgrid.Cols.Count = 17;
            hgrid.Cols.Fixed = 0;
            hgrid.Rows.Count = 2;
            hgrid.Rows.Fixed = 2;
            hgrid.SelectionMode = SelectionModeEnum.Row;



            for (i=0; i<17; i++)
            {
                hgrid[0, i] = sTitle1[i];
                hgrid[1, i] = sTitle2[i];

                //hgrid.Cols[i].Caption = sTitle2[i];
                hgrid.Cols[i].Width = iwidth[i];
          
                if (i == 1) hgrid.Cols[i].DataType = typeof(bool);
                else if(i==16) hgrid.Cols[i].DataType = typeof(bool);
                else
                {
                    hgrid.Cols[i].DataType = typeof(string);
                }
                hgrid.Cols[i].TextAlignFixed = TextAlignEnum.CenterCenter;
                
                if (i == 5 || i == 6 || i == 13)
                {
                    hgrid.Cols[i].TextAlign = TextAlignEnum.RightCenter;
                }
                else if (i == 12 || i == 7)
                {
                    hgrid.Cols[i].TextAlign = TextAlignEnum.LeftCenter;
                }
                else
                {
                    hgrid.Cols[i].TextAlign = TextAlignEnum.CenterCenter;
                }
                if(i == 1 || i == 16) hgrid.Cols[i].AllowEditing = true;
                else hgrid.Cols[i].AllowEditing = false;

                hgrid.Cols[i].AllowSorting = false;
                hgrid.Cols[i].AllowFiltering = AllowFiltering.None;
                hgrid.Cols[i].AllowResizing = false;
                hgrid.Cols[i].AllowDragging = false;
                
            }
            hgrid.AllowMerging = AllowMergingEnum.Custom;
            AddMergedRange(hgrid.GetCellRange(0, 0, 1, 0));
            AddMergedRange(hgrid.GetCellRange(0, 1, 1, 1));
            AddMergedRange(hgrid.GetCellRange(0, 2, 0, 6));
            AddMergedRange(hgrid.GetCellRange(0, 7, 0, 9));
            AddMergedRange(hgrid.GetCellRange(1, 8, 1, 9));
            AddMergedRange(hgrid.GetCellRange(0, 10, 1, 11));
            AddMergedRange(hgrid.GetCellRange(0, 12, 0, 15));
            AddMergedRange(hgrid.GetCellRange(1, 13, 1, 14));
            AddMergedRange(hgrid.GetCellRange(0, 16, 1, 16));
            hgrid.Redraw = true;

            ArrMon = new ArrayList();
            ArrSrart = new ArrayList();
            ArrReload = new ArrayList();
            ArrOpen = new ArrayList();
            ArrView = new ArrayList();
            ArrGraph = new ArrayList();
            ArrReport = new ArrayList();
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

            if (errstat == enStatError.NoError)
            {
                if (stat == enTestState.nc_Calibration || stat == enTestState.Calibration)
                {
                    return Color.DarkOrange;
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
                else str = ((enStatError)chstat.LastError).GetDescription();
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
                

                ch = Convert.ToInt32(key);
                for (i = 0; i < 17; i++)
                {
                    if (i == 0)
                    {
                        if (Value.bChkSIF == false || berror == true) btGridMon[ch].Enabled = false;
                        else if (Value.bChkCh == false) btGridMon[ch].Enabled = false;
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
                        else if (Value.bChkCh == false) str = "no channel";
                        else
                        {
                            if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false)
                            {
                                str = "disconnected";
                            }
                            else
                            {
                                str = GetTestStatus(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh]);
                            }
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 3)
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
                    else if (i == 4)
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

                            str = string.Format("  Range: {0}/ {1}", SM_Number.ToRangeString(crngval, "A"), SM_Number.ToRangeString(mrng.vdc_rng[chstat.Vdc_rngno].realmax, "V"));
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 5)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else  str = string.Format("{0:#0.000} ", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Vdc);
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 6)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else str = string.Format("{0:#0.000} ", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Temperature);
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 7)
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
                    else if (i == 8)
                    {
                        if (Value.bChkSIF == false || berror == true) btGridOpen[ch].Enabled = false;
                        else if (Value.bChkCh == false) btGridOpen[ch].Enabled = false;
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
                    else if (i == 9)
                    {
                        if (Value.bChkSIF == false || berror == true) btGridView[ch].Enabled = false;
                        else if (Value.bChkCh == false) btGridView[ch].Enabled = false;
                        else
                        {
                            if (brun || bcalibmode)
                            {
                                btGridView[ch].Enabled = false;
                            }
                            else
                            {
                                btGridView[ch].Enabled = true;
                            }
                        }
                        ArrView.Add(new HostedControl(hgrid, btGridView[ch], row, i));
                    }
                    else if (i == 10)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true)
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
                                if (bcalibmode) btGridStart[ch].Enabled = false;
                                else btGridStart[ch].Enabled = true;
                            }
                        }

                        //hgrid.SetData(row, i, btGrid[ch].Text);
                        ArrSrart.Add(new HostedControl(hgrid, btGridStart[ch], row, i));
                    }
                    else if (i == 11)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridReload[ch].Enabled = false;
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
                        
                        ArrReload.Add(new HostedControl(hgrid, btGridReload[ch], row, i));
                    }
                    else if (i == 12)
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
                    else if (i == 13)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridGraph[ch].Enabled = false;
                        else btGridGraph[ch].Enabled = true;

                        ArrGraph.Add(new HostedControl(hgrid, btGridGraph[ch], row, i));
                    }
                    else if (i == 14)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridReport[ch].Enabled = false;
                        else btGridReport[ch].Enabled = true;

                        ArrReport.Add(new HostedControl(hgrid, btGridReport[ch], row, i));
                    }
                    else if (i == 15)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) str = "Unknown";
                        else
                        {
                            str = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].eis_status.rescount.ToString() + " ";

                            if (btGridOpen[ch].Enabled == false)
                            {
                                if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].eis_status.rescount <= 0)
                                {
                                    str = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mresfile[ch].datacount.ToString();
                                }
                            }
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

                for (i = 2; i < 16; i++)
                {
                    if (i == 0)
                    {
                        if (Value.bChkSIF == false || berror == true) btGridMon[ch].Enabled = false;
                        else if (Value.bChkCh == false) btGridMon[ch].Enabled = false;
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
                        else if (Value.bChkCh == false) str = "no channel";
                        else if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false) str = "disconnected";
                        else str = ((enTestState)gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].TestStatus).GetDescription();
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 3)
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
                    else if (i == 4)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else
                        {
                            var mrng = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[Value.SifCh].ranges;
                            var chstat = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh];

                            tdbl = mrng.iac_rng[chstat.Iac_in_rngno].realmax;

                            if((chstat.Iac_rngno % 2) > 0)
                            {
                                tdbl *= mrng.iac_rng[chstat.Iac_in_rngno].controlgain;
                            }


                            str = string.Format("{0}/ {1}", SM_Number.ToRangeString(tdbl, "A"),SM_Number.ToRangeString(mrng.vdc_rng[chstat.Vdc_rngno].realmax, "V"));
                        }
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 5)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else str = string.Format("{0:#0.000} ", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Vdc);
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 6)
                    {
                        if (Value.bChkSIF == false || berror == true) str = "Unknown";
                        else if (Value.bChkCh == false) str = "Unknown";
                        else str = string.Format("{0:#0.000} ", gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Temperature);
                        hgrid.SetData(row, i, str);
                    }
                    else if (i == 7)
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
                    else if (i == 8)
                    {
                        if (Value.bChkSIF == false || berror == true) btGridOpen[ch].Enabled = false;
                        else if (Value.bChkCh == false) btGridOpen[ch].Enabled = false;
                        else if(gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false) btGridOpen[ch].Enabled = false;
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
                    else if (i == 9)
                    {
                        if (Value.bChkSIF == false || berror == true) btGridView[ch].Enabled = false;
                        else if (Value.bChkCh == false) btGridView[ch].Enabled = false;
                        else if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == false) btGridView[ch].Enabled = false;
                        else
                        {
                            if (brun || bcalibmode)
                            {
                                btGridView[ch].Enabled = false;
                            }
                            else
                            {
                                btGridView[ch].Enabled = true;
                            }
                        }
                    }
                    else if (i == 10)
                    {
                        str = (string)btGridStart[ch].Tag;
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true)
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
                                btGridStart[ch].Enabled = true;
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

                                if (bcalibmode)
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
                    else if (i == 11)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridReload[ch].Enabled = false;
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
                    else if (i == 12)
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
                    else if (i == 13)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridGraph[ch].Enabled = false;
                        else btGridGraph[ch].Enabled = true;
                    }
                    else if (i == 14)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) btGridReport[ch].Enabled = false;
                        else btGridReport[ch].Enabled = true;
                    }
                    else if (i == 15)
                    {
                        if (Value.bChkSIF == false || Value.bChkCh == false || berror == true) str = "Unknown";
                        else
                        {
                            str = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].eis_status.rescount.ToString() + " ";

                            if (btGridOpen[ch].Enabled == false)
                            {
                                if (gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].eis_status.rescount <= 0)
                                {
                                    str = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mresfile[ch].datacount.ToString();
                                }
                            }
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

                    CellStyle st = hgrid.GetCellStyle(row, i);
                    if (st != null)
                    {
                        if (berror == false)
                        {
                            st.ForeColor = GetErrorStatusColor(gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh], Color.Black);
                            hgrid.SetCellStyle(row, i, st);
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
                    }
                }
                
                row++;
            }
            hgrid.Redraw = true;
        }
        

        private void btGridOpen_Click(System.Object sender, System.EventArgs e)
        {
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string sch = ch.ToString();

            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;
            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh];
            string sext = Path.GetExtension(filename).ToUpper();
            string sfilt;

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            sfilt = "Galvanostatic EIS (*.eis) | *.eis|";
            sfilt += "Galvanostatic HFR (*.hfr) |*.hfr|";
            sfilt += "Pseudo Rs Rp mearsurement (*.prr) | *.prr|";
            sfilt += "Vdc/Temp. monitor (*.vtm) | *.vtm|";
            sfilt += "Quick galvanostatic EIS (*.eis) | *.eis";

            dlg.Title = string.Format("Selection of technique file to be used for channel {0}.", ch + 1);
            dlg.Filter = sfilt;

            if (sext == "HFR")
            {
                dlg.DefaultExt = "hfr";
                dlg.FilterIndex = 2;
            }
            else if (sext == "PRR")
            {
                dlg.DefaultExt = "prr";
                dlg.FilterIndex = 3;
            }
            else if (sext == "VTM")
            {
                dlg.DefaultExt = "prr";
                dlg.FilterIndex = 4;
            }
            else if (sext == "QIS")
            {
                dlg.DefaultExt = "prr";
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
                var Value = gBZA.ChLnkLst[sch];
                Value.mChInf.FileCond = filename;
                gBZA.ChLnkLst[sch] = Value;
                gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh] = filename;
                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            }
        }
        
        

        private void timer1_Tick(object sender, EventArgs e)
        {
            this.notifyIcon1.Icon = this.AniIcons[AniIdx];
            this.AniIdx++;
            if (this.AniIdx >= this.MaxAniCnt)
            {
                this.AniIdx = 0;
            }
            this.DispTick++;

            RefreshGrid();

            if (this.DispTick > 5)
            {
                this.DispTick = 0;
                ApplyEnableGroupButton();
            }
            
        }

        private void exitApp()
        {
            if (MessageBox.Show("Are you sure you want to quit?", gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
            {
                return;
            }
            this.timer1.Stop();
            this.bExit = true;
            gBZA.DisonnectSifs();
            this.notifyIcon1.Visible = false;
            Application.Exit();
        }
        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            exitApp();
        }

        private void exitToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            exitApp();
        }
        private void modifyTheDevicesRegistrationToolStripMenuItem_Click(object sender, EventArgs e)
        {

            RefreshDeviceRegBZA();
            
        }

        private void viewHomeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (this.Visible == false)
            {
                this.WindowState = FormWindowState.Normal;
                this.Visible = true;
                this.Activate();
            }
            else
            {
                this.Visible = false;
                this.WindowState = FormWindowState.Minimized;
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
                hgrid.Styles.Focus.BackColor = hgrid.Styles.Normal.BackColor;
            }
        }

        private void RefreshDeviceRegBZA()
        {
            bRefresh = false;

            if (ExecuteSplash() == true)
            {
                gBZA.ConnectSifs();
                foreach (var pair in gBZA.ChLnkLst)
                {
                    if (pair.Value.bChkSIF == true)
                    {
                        if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                        {
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.condfilename[pair.Value.SifCh] = pair.Value.mChInf.FileCond;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.resfilename[pair.Value.SifCh] = pair.Value.mChInf.FileResult;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.bRemote[pair.Value.SifCh] = pair.Value.mChInf.bRemote;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.RemoteCh[pair.Value.SifCh] = Convert.ToInt32(pair.Key);
                            pair.Value.mDevInf.ToWritePtr(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mDevInf.ToByteArray());
                        }
                    }
                }

                InitMainView();

            }
            this.timer1.Start();
            this.WindowState = FormWindowState.Normal;
            this.Visible = true;
            this.Activate();
            gtip.Active = true;
            bRefresh = true;
        }
        private void ViewRegBZA()
        {
            bRefresh = false;
            frmRegBZA frm = new frmRegBZA();
            frm.ShowDialog();
            InitMainView();
            bRefresh = true;

        }

        private void modifyTheDevicesRegistrationToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            RefreshDeviceRegBZA();
        }
        
       
        private void techniqueToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenTechFile(-1,"");
        }

        private void techniqueToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenTechFile(-1, "");
        }

        private void frmcfg_CloseThis(object sender, EventArgs e)
        {
            
            frmcfg = null;
        }
        

        private void FrmRealview_CloseThis(object sender, EventArgs e)
        {
            frmRtView = null;
        }

        private void FrmRegRealview_CloseThis(object sender, EventArgs e)
        {
            

            frmRegRtView = null;

        }

        private void FrmGrpRealview_CloseThis(object sender, EventArgs e)
        {

            
            frmGrpRtView = null;

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

        private void OpenGraph(string[] filename = null)
        {
            EisGraphForm egForm = new EisGraphForm(0, new GraphSet(), new DataManager.CommClass.GraphSetEx(2), true);
            egForm.MsgBoxCaption = AppTitle;
            egForm.EnAlwaysOpenPath = true;
            egForm.AlwaysOpenPath =  gBZA.appcfg.PathData;
            egForm.AllowTransparency = false;
            egForm.ZManPath = GetZManPath();
            //egForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            egForm.UnitC = false;
            egForm.TimeFormat = 1;
            //egForm.MdiParent = this;

            egForm.OpenDataEditorClick += EgForm_OpenDataEditorClick;
            egForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
            egForm.Show();

            if (filename != null)
            {
                egForm.LoadFiles(filename);
            }
        }

        private void graphToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenGraph();
        }
        private void graphToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenGraph();
        }

        private bool SaveTempTechFileofResFile(string filename, ref string techfullpath,ref eZimType type)
        {
            string str;
            string techfilename = string.Empty;

            if (File.Exists(filename) == false)
            {
                techfullpath = string.Empty;
                type = eZimType.UNKNOWN;
                return false;
            }
            FileResult mfile = new FileResult();
            if (mfile.Open(filename) == true)
            {
                stTech mtech = new stTech(0);
                FileCondition fc = new FileCondition();
                str = Encoding.UTF8.GetString(mfile.tmphead.mInfo.techfile).Trim('\0');
                techfilename = Path.GetFileName(str);
                techfullpath = Path.Combine(gBZA.appcfg.PathSchTemp, techfilename);
                type = (eZimType)mfile.tmphead.inf_sif.Type;

                if (File.Exists(techfullpath))
                {
                    try
                    {
                        File.Delete(techfullpath);
                    }
                    catch (Exception e)
                    {
                        Debug.WriteLine(e.Message);
                        return false;
                    }
                }

                
                mtech.ToWritePtr(mfile.tmphead.tech.ToByteArray());

              
                if(fc.Save(techfullpath, mtech) == false)
                {
                    return false;
                }
                
            }
            else
            {
                techfullpath = string.Empty;
                type = eZimType.UNKNOWN;
                return false;
            }
            return true;
        }

        private void EgForm_OpenDataEditorClick(object sender, EventArgs e)
        {
            DataViewerEventArgs dvea = (DataViewerEventArgs)e;

            OpenDataEditor(dvea.DataFileName);
        }

        private void OpenTechFile(int ch, string filename,eZimType type = eZimType.UNKNOWN)
        {
            frmTechniq frmTech = new frmTechniq(ch, filename, type);
            if (gBZA.appcfg.TechLocation == new Point(0, 0) || gBZA.appcfg.TechLocation.X == -32000 || gBZA.appcfg.TechLocation.Y == -32000)
            {
                frmTech.StartPosition = FormStartPosition.CenterScreen;
            }
            else
            {
                frmTech.Location = gBZA.appcfg.TechLocation;
                frmTech.StartPosition = FormStartPosition.Manual;
            }
            if(frmTech.loaderr == false)
            {
                frmTech.ShowDialog();
            }
        }

        private void EgForm_OpenTechEditorClick(object sender, EventArgs e)
        {
            DataViewerEventArgs dvea = (DataViewerEventArgs)e;
            string stechfile = "";
            eZimType type = eZimType.UNKNOWN;
            
            if(SaveTempTechFileofResFile(dvea.DataFileName,ref stechfile,ref type) == false)
            {
                MessageBox.Show("Failed to generate tested technical file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            

            OpenTechFile(-1,stechfile,type);
        }

        public string GetIVManPath()
        {
            string result = string.Empty;

            try
            {
                RegistryKey rKey = Registry.LocalMachine.OpenSubKey(@"Software\ZIVE LAB\IVMAN");
                if (rKey == null)
                    rKey = Registry.LocalMachine.OpenSubKey(@"Software\WOW6432Node\ZIVE LAB\IVMAN");

                result = (string)rKey.GetValue("InstallDir", string.Empty);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(string.Format("Cannot find IVMan path in registry. [{0}]", ex.Message));

                return string.Empty;
            }

            return result;
        }

        private void OpenDataEditor(string filename, int type = 2) // type 0 : General, 1 : Cycle, 2 : Eis
        {
            DataEditorForm deForm = new DataEditorForm(true,true);
            deForm.MsgBoxCaption = this.Text;
            deForm.UnitC = false;
            deForm.IVManPath = GetIVManPath();
            deForm.GraphSetEx = new GraphSetEx(type);
            deForm.EnAlwaysOpenPath = true;
            deForm.ZManPath = GetZManPath();
            deForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            //deForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            deForm.TimeFormat = 1;

            deForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
            //deForm.OpenGeneralGraphClick += DeForm_OpenGeneralGraphClick;
            //deForm.OpenCycleGraphClick += DeForm_OpenCycleGraphClick;
            deForm.OpenEisGraphClick += DeForm_OpenEisGraphClick;
            
            //deForm.MdiParent = this;
            deForm.Initialize(0);

            deForm.Show();
            if (filename != null)
            {
                deForm.LoadData(filename, type);
            }

        }

        private void DeForm_OpenDataEditorEvent(object sender, EventArgs e)
        {
          
        }

        private void DeForm_OpenCycleGraphClick(object sender, EventArgs e)
        {
           
        }

        private void DeForm_OpenGeneralGraphClick(object sender, EventArgs e)
        {
           
        }

        private void DeForm_OpenEisGraphClick(object sender, EventArgs e)
        {
            DataViewerEventArgs dvea = (DataViewerEventArgs)e;
            string[] slist = new string[1];
            slist[0] = dvea.DataFileName;
            OpenGraph(slist);
        }
        
        private void dataEditorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenDataEditor(null);
        }

        private void dataEditorToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenDataEditor(null);
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
                    tip = string.Format("Indicates the last test status of channel {0}.", tsch);
                }
                else if (ht.Column == 3)
                {
                    tip = string.Format("Display of total test run time for channel {0}.", tsch);
                }
                else if (ht.Column == 4)
                {
                    tip = string.Format("Displays the range of current and voltage selected on channel {0}.", tsch);
                }
                else if (ht.Column == 5)
                {
                    tip = string.Format("Display of DC voltage measurements on channel {0}.", tsch);
                }
                else if (ht.Column == 6)
                {
                    tip = string.Format("Displays the measured temperature value on channel {0}.", tsch);
                }
                else if (ht.Column == 7)
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
                else if (ht.Column == 12)
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
                else if (ht.Column == 15)
                {
                    tip = string.Format("Displays the number of data in the channel {0} result file.", tsch);
                }
                else if (ht.Column == 16)
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
            int ch = Convert.ToInt32(bt.Tag);
            string tip = string.Format("Receive the result from the channel {0} and save it to the desired file.", ch+1);
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
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string sch = ch.ToString();
            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;
            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.resfilename[iSifCh];

            OpenDataEditor(filename);
        }


        private void btGridGraph_Click(System.Object sender, System.EventArgs e)
        {
            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string sch = ch.ToString();
            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;
            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.resfilename[iSifCh];

            string[] sfile = new string[1];
            sfile[0] = filename;
            OpenGraph(sfile);

        }

        private void btGridMon_Click(System.Object sender, System.EventArgs e)
        {

            Button bt = (Button)sender;
            string str = (string)bt.Tag;
            int ch = Convert.ToInt32(str);

            OpenRealMonCh(ch);
            
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
            int ch = Convert.ToInt32(bt.Tag);
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

        }

        private void btgrpmon_Click(object sender, EventArgs e)
        {
            
            OpenRealMon(true);
            
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

            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh];
            string sext = Path.GetExtension(filename).ToUpper();
            string sfilt;
            enTestState mstate;
            stLinkSifCh Value;

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;


            dlg.Multiselect = false;
            sfilt = "Galvanostatic EIS (*.eis) | *.eis|";
            sfilt += "Galvanostatic HFR (*.hfr) |*.hfr|";
            sfilt += "Pseudo Rs Rp mearsurement (*.prr) | *.prr|";
            sfilt += "Vdc/Temp. monitor (*.vtm) | *.vtm|";
            sfilt += "Quick galvanostatic EIS (*.eis) | *.eis";

            dlg.Title = "Select the technology file to use for the group channel.";
            dlg.Filter = sfilt;

            if (sext == "HFR")
            {
                dlg.DefaultExt = "hfr";
                dlg.FilterIndex = 2;
            }
            else if (sext == "PRR")
            {
                dlg.DefaultExt = "prr";
                dlg.FilterIndex = 3;
            }
            else if (sext == "VTM")
            {
                dlg.DefaultExt = "vtm";
                dlg.FilterIndex = 4;
            }
            else if (sext == "QIS")
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

                        mstate = (enTestState)gBZA.SifLnkLst[sSerial].MBZAIF.mChStatInf[iSifCh].TestStatus;

                        if (gBZA.CheckStatusRun(gBZA.SifLnkLst[sSerial].MBZAIF.mChStatInf[iSifCh]))
                        {
                            continue;
                        }
                        Value = gBZA.ChLnkLst[sch];
                        Value.mChInf.FileCond = filename;
                        gBZA.ChLnkLst[sch] = Value;
                        gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh] = filename;
                    }
                }
                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            }
        }

        private void menuStrip1_LocationChanged(object sender, EventArgs e)
        {
            
        }
       
        private void menuStrip1_SizeChanged(object sender, EventArgs e)
        {

        }

        private void frmMain_LocationChanged(object sender, EventArgs e)
        {
            
        }

        private void frmMain_Move(object sender, EventArgs e)
        {
            
        }

        private void realtimeMonitorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenRealMon();
        }

        private void configurationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmcfg == null)
            {
                frmcfg = new frmConfig();
                if (gBZA.appcfg.CfgLocation == new Point(0, 0) || gBZA.appcfg.CfgLocation.X == -32000 || gBZA.appcfg.CfgLocation.Y == -32000)
                {
                    frmcfg.StartPosition = FormStartPosition.CenterScreen;
                }
                else
                {
                    frmcfg.Location = gBZA.appcfg.CfgLocation;
                    frmcfg.StartPosition = FormStartPosition.Manual;
                }

                frmcfg.CloseThis += frmcfg_CloseThis;
                frmcfg.Show();
               
            }
            else
            {
                frmcfg.Activate();
            }
        }

        private void batteryParameterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmBatPara frm = new frmBatPara();
            frm.ShowDialog();
        }

        private void hgrid_AfterEdit(object sender, RowColEventArgs e)
        {
            
            
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

        

        private void realtimeMonitorToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenRealMon();
        }

        private void batteryParameterToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            frmBatPara frm = new frmBatPara();
            frm.ShowDialog();
        }

        private void configurationToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (frmcfg == null)
            {
                frmcfg = new frmConfig();
                if (gBZA.appcfg.CfgLocation == new Point(0, 0) || gBZA.appcfg.CfgLocation.X == -32000 || gBZA.appcfg.CfgLocation.Y == -32000)
                {
                    frmcfg.StartPosition = FormStartPosition.CenterScreen;
                }
                else
                {
                    frmcfg.Location = gBZA.appcfg.CfgLocation;
                    frmcfg.StartPosition = FormStartPosition.Manual;
                }

                frmcfg.CloseThis += frmcfg_CloseThis;
                frmcfg.Show();

            }
            else
            {
                frmcfg.Activate();
            }
        }

        private void toolStripbtRegist_Click(object sender, EventArgs e)
        {
            RefreshDeviceRegBZA();
        }

        private void toolStripbtBattPara_Click(object sender, EventArgs e)
        {
            frmBatPara frm = new frmBatPara();
            frm.ShowDialog();
        }

        private void toolStripbtTech_Click(object sender, EventArgs e)
        {
            OpenTechFile(-1, "");
        }

        private void toolStripBtGraph_Click(object sender, EventArgs e)
        {
            OpenGraph();
        }

        private void toolStripBtReport_Click(object sender, EventArgs e)
        {
            OpenDataEditor(null);
        }

        private void OpenRealMonCh(int ch)
        {
            if (frmRtView == null)
            {
                frmRtView = new frmRealview(2);
                if (gBZA.appcfg.RealviewSize == new Size(0, 0) || gBZA.appcfg.RealviewLocation == new Point(0, 0) || gBZA.appcfg.RealviewLocation.X == -32000 || gBZA.appcfg.RealviewLocation.Y == -32000)
                {
                    frmRtView.StartPosition = FormStartPosition.CenterParent;
                }
                else
                {
                    frmRtView.Location = gBZA.appcfg.RealviewLocation;
                    frmRtView.Size = gBZA.appcfg.RealviewSize;
                    frmRtView.StartPosition = FormStartPosition.Manual;
                }

                frmRtView.CloseThis += FrmRealview_CloseThis;
                frmRtView.SetChannel(ch);
                frmRtView.Show();
            }
            else
            {
                frmRtView.SetChannel(ch);
                frmRtView.Activate();
            }
        }


        bool CheckMonActiveRegCh()
        {
            SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
            List<int> tlst = new List<int>();
            string sfileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            tlst = mFile.LoadXmlToObj(sfileinf, null);
            int count = 0;
            string sch;
            if (tlst == null)
            {
                MessageBox.Show("The channel to display is not registered or cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            if (tlst.Count < 1)
            {
                MessageBox.Show("The channel to display is not registered or cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }


            foreach (var ch in tlst)
            {
                sch = ch.ToString();
                if (gBZA.ChLnkLst.ContainsKey(sch))
                {
                    var value = gBZA.ChLnkLst[sch];
                    if (gBZA.SifLnkLst.ContainsKey(value.sSerial))
                    {
                        if (gBZA.SifLnkLst[value.sSerial].bLinked == true
                            && gBZA.SifLnkLst[value.sSerial].MBZAIF.bConnect == true)
                        {
                            count++;
                            continue;
                        }
                    }
                }
            }

            if (count == 0)
            {
                MessageBox.Show("The channel to display is not registered or cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        private void OpenRealMon(bool bgroup = false)
        {
            if(bgroup == false)
            {
                if(CheckMonActiveRegCh() == false)
                {
                    return;
                }
                if (frmRegRtView == null)
                {
                    frmRegRtView = new frmRealview(0);
                    if (gBZA.appcfg.RegRealviewSize == new Size(0, 0) || gBZA.appcfg.RegRealviewLocation == new Point(0, 0) || gBZA.appcfg.RegRealviewLocation.X == -32000 || gBZA.appcfg.RegRealviewLocation.Y == -32000)
                    {
                        frmRegRtView.StartPosition = FormStartPosition.CenterParent;
                    }
                    else
                    {
                        frmRegRtView.Location = gBZA.appcfg.RegRealviewLocation;
                        frmRegRtView.Size = gBZA.appcfg.RegRealviewSize;
                        frmRegRtView.StartPosition = FormStartPosition.Manual;

                    }
                    frmRegRtView.CloseThis += FrmRegRealview_CloseThis;
                    frmRegRtView.Show();
                }
                else
                {
                    frmRegRtView.Activate();
                }
            }
            else
            {
                List<int> lst;
                string tsch;
                string sch;
                int ich;

                lst = new List<int>();

                for (int row = 2; row < hgrid.Rows.Count; row++)
                {
                    if (hgrid.GetCellCheck(row, 1) == CheckEnum.Checked)
                    {
                        tsch = (string)hgrid.GetData(row, 0);
                        ich = Convert.ToInt32(tsch);
                        sch = (ich - 1).ToString();
                        if (gBZA.ChLnkLst.ContainsKey(sch))
                        {
                            var value = gBZA.ChLnkLst[sch];
                            if (gBZA.SifLnkLst.ContainsKey(value.sSerial))
                            {
                                if (gBZA.SifLnkLst[value.sSerial].bLinked == true
                                    && gBZA.SifLnkLst[value.sSerial].MBZAIF.bConnect == true)
                                {
                                    lst.Add(ich - 1);
                                    continue;
                                }
                            }
                        }
                    }
                }

                if (lst.Count < 1)
                {
                    gBZA.ShowInfoBox("There is no channel selected.");
                    return;
                }

                if (frmGrpRtView == null)
                {
                    frmGrpRtView = new frmRealview(1);

                    if (gBZA.appcfg.GroupRealviewSize == new Size(0, 0) || gBZA.appcfg.GroupRealviewLocation == new Point(0, 0) || gBZA.appcfg.GroupRealviewLocation.X == -32000 || gBZA.appcfg.GroupRealviewLocation.Y == -32000)
                    {
                        frmGrpRtView.StartPosition = FormStartPosition.CenterParent;
                    }
                    else
                    {
                        frmGrpRtView.Location = gBZA.appcfg.GroupRealviewLocation;
                        frmGrpRtView.Size = gBZA.appcfg.GroupRealviewSize;
                        frmGrpRtView.StartPosition = FormStartPosition.Manual;
                    }

                    frmGrpRtView.CloseThis += FrmGrpRealview_CloseThis;
                    frmGrpRtView.SetChannel(lst);
                    frmGrpRtView.Show();
                }
                else
                {
                    frmGrpRtView.SetChannel(lst);
                    frmGrpRtView.Activate();
                }
            }
        }
        private void toolStripBtRealMon_Click(object sender, EventArgs e)
        {
            OpenRealMon();
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
            else if (e.Col == 16)
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

        private void setDefaultWindowToolStripMenuItem_Click(object sender, EventArgs e)
        {
            gBZA.appcfg.InitLocationSize();

        }

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (this.Location.X == -32000 || this.Location.Y == -32000) return;
            gBZA.appcfg.MainLocation = this.Location;
            gBZA.appcfg.MainSize = this.Size;

            gBZA.appcfg.Save();
        }

        private void realtimeMonitorRegChannel_Click(object sender, EventArgs e)
        {
            string fileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            frmTechApply frm = new frmTechApply(fileinf, null);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                
            }
        }

        private void toolStripRtRegCh_Click(object sender, EventArgs e)
        {
            string fileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            frmTechApply frm = new frmTechApply(fileinf, null);
            if (frm.ShowDialog() == DialogResult.OK)
            {

            }
        }
    }
}