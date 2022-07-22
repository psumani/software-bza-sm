﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Utilities;
using SMLib;
using NationalInstruments.UI;
using NationalInstruments.UI.WindowsForms;
using System.IO;
using DataManager;
using DataManager.CommClass;
using System.Diagnostics;
using System.Reflection;
using Microsoft.Win32;

namespace ZiveLab.ZM
{
    public partial class BZAChPan : UserControl
    {
        public int ch;
        public string sch;
        public stLinkSifCh lnkch;
        public string serial;
        public int sifch;

        public int OldTechType;
        public int GrpCtrlMode1;
        public int GrpCtrlMode2;

        public int GrpPlotCount1;
        public int GrpPlotCount2;

        public int GraphSizeMode;
        public bool bMaxWindow;
        private int rtsize;

        string AppTitle;
        string AppVer;

        bool bRtGrpPause;

        public int rtmode;
        public int rtmode1;
        public int rtmode2;

        public event EventHandler evShowmax;

        bool LegendMove0;
        bool LegendMove1;
        bool LegendMove2;

        Point LegendPointS0;
        Point LegendPointS1;
        Point LegendPointS2;

        Point LegendPointE0;
        Point LegendPointE1;
        Point LegendPointE2;

        MBZA_ChannelInfo About;

        ImageList imageList;
        stTech_EIS techeis;
        stTech_HFR techhfr;
        stTech_PRR techprr;
        stTech_MON techmon;
        stTech_QIS techqis;

        ToolTip toolTip;
        int formatmode;
        FormatString fs_ss;
        FormatString fs_mm;
        FormatString fs_hh;
        FormatString fs_dd;
        int oldcursorindex1;
        int oldcursorindex2;
        public BZAChPan(int ich, ref EventHandler evtimer, EventHandler evshowmax)
        {
            InitializeComponent();

            fs_ss = new FormatString(FormatStringMode.ElapsedTime, @"ss");
            fs_mm = new FormatString(FormatStringMode.ElapsedTime, @"m\:ss");
            fs_hh = new FormatString(FormatStringMode.ElapsedTime, @"h\:mm\:ss");
            fs_dd = new FormatString(FormatStringMode.ElapsedTime, @"d\.hh\:mm\:ss");

            techeis = new stTech_EIS(0);
            techhfr = new stTech_HFR(0);
            techprr = new stTech_PRR(0);
            techmon = new stTech_MON(0);
            techqis = new stTech_QIS(0);

            ch = ich;
            sch = ch.ToString();
            lnkch = gBZA.ChLnkLst[sch];
            serial = lnkch.sSerial;
            sifch = lnkch.SifCh;

            About = new MBZA_ChannelInfo(serial, sifch);


            
            imageList = new ImageList();
            imageList.ImageSize = new Size(16, 16);

            imageList.Images.Add("tech", ZM.Properties.Resources.TestSettings);
            imageList.Images.Add("edittech", ZM.Properties.Resources.Editsch);

            imageList.Images.Add("play", ZM.Properties.Resources.Play);
            imageList.Images.Add("stop", ZM.Properties.Resources.Stop);

            imageList.Images.Add("normal", ZM.Properties.Resources.ViewNormal);
            imageList.Images.Add("max", ZM.Properties.Resources.ViewMax);

            imageList.Images.Add("graph", ZM.Properties.Resources.AutoscaleXY);
            imageList.Images.Add("report", ZM.Properties.Resources.Report1);
            imageList.Images.Add("about", ZM.Properties.Resources.DescriptionViewer);


            imageList.Images.Add("save", ZM.Properties.Resources.Save);

            bttech.ImageList = imageList;
            bttech.ImageKey = "tech";

            btTechEdit.ImageList = imageList;
            btTechEdit.ImageKey = "edittech";

            btstart.ImageList = imageList;
            btstart.ImageKey = "play";

            btloaddata.ImageList = imageList;
            btloaddata.ImageKey = "save";

            btgrp.ImageList = imageList;
            btgrp.ImageKey = "graph";

            btreport.ImageList = imageList;
            btreport.ImageKey = "report";

            btabout.ImageList = imageList;
            btabout.ImageKey = "about";

            btSize.ImageList = imageList;
            btSize.ImageKey = "max";

            toolTip = new ToolTip();

            toolTip.AutoPopDelay = 2000;
            toolTip.InitialDelay = 1000;
            toolTip.ReshowDelay = 500;
      
            toolTip.ShowAlways = true;
            toolTip.IsBalloon = true;

            toolTip.SetToolTip(this.bttech, "Select the schedule file to use for testing.");
            toolTip.SetToolTip(this.btTechEdit, "Check or edit the contents of the selected schedule file.");
            toolTip.SetToolTip(this.btstart, "Start or stop testing.");
            toolTip.SetToolTip(this.btloaddata, "Receive the result from the channel and save it to the desired file.");
            toolTip.SetToolTip(this.btgrp, "Displays the current result file as a graph.");
            toolTip.SetToolTip(this.btreport, "Displays the current result file as a report.");
            toolTip.SetToolTip(this.btabout, "Shows channel information.");
            toolTip.SetToolTip(this.btSize, "Select the size of the channel window as maximum or normal size.");
            toolTip.SetToolTip(this.grprt, "Double-click the graph to change the size of the window to maximum or normal size.");
            toolTip.SetToolTip(this.grp1, "Double-click the graph to change the size of the window to maximum or normal size.");
            toolTip.SetToolTip(this.grp2, "Double-click the graph to change the size of the window to maximum or normal size.");

            toolTip.SetToolTip(this.lblTech, "");
            toolTip.SetToolTip(this.lblResult, "");

            rtsize = 0;
            bRtGrpPause = false;
            rtmode = 0;
            rtmode1 = 0;
            rtmode2 = 0;

            oldcursorindex1 = -1;
            oldcursorindex2 = -1;

            LegendMove0 = false;
            LegendMove1 = false;
            LegendMove2 = false;
            GraphSizeMode = 0;

            GrpPlotCount1 = 1;
            GrpPlotCount2 = 2;

           

            lblprog.LabelText = string.Format("Channel {0:00}", ch + 1);

            evtimer += new EventHandler(TimerProc);
            evShowmax += evshowmax;


            lblprog.Prog_Max = 1000;
            lblprog.Prog_Min = 0;
            lblprog.Prog_Val = 0;
            lblprog.Prog_Color = Color.DarkGray;

            InitRtGraph();
            InitGraph1();
            InitGraph2();

            MakeAppTitle();

            OldTechType = -1;
            InitGraphType();
            RefreshGraphSize();
            ViewInformation();
        }

        public void SetbtSize(bool bEnable)
        {
            btSize.Enabled = bEnable; 
        }

        private void BZAChPan_Load(object sender, EventArgs e)
        {
        }

        void TimerProc(object sender, EventArgs e)
        {
            if (gBZA.SifLnkLst[serial].MBZAIF.bConnect == false)
            {
                bttech.Enabled = false;
                btstart.Enabled = false;
                btloaddata.Enabled = false;

                lblprog.LabelText = string.Format("Channel {0:00} - Disconnected", ch + 1);
                lblprog.Prog_Color = Color.Orange;
            }
            else
            {
                lblprog.LabelText = string.Format("Channel {0:00}", ch + 1);
                bttech.Enabled = true;
                btstart.Enabled = true;
                btloaddata.Enabled = true;

                ViewStatus();
                if (bRtGrpPause == false) RefreshRt();
                RefreshGraph();
            }
            
        }


        private void grp1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if(bMaxWindow == true && GraphSizeMode == 1)
            {
                MessageBox.Show("You cannot change the graph size from maximum to normal when the channel window is at its maximum size.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (GraphSizeMode == 0) GraphSizeMode = 1;
            else GraphSizeMode = 0;

            RefreshGraphSize();
        }

        private void grp2_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (bMaxWindow == true && GraphSizeMode == 1)
            {
                MessageBox.Show("You cannot change the graph size from maximum to normal when the channel window is at its maximum size.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (GraphSizeMode == 0) GraphSizeMode = 1;
            else GraphSizeMode = 0;

            RefreshGraphSize();
        }

        private void BZAChPan_SizeChanged(object sender, EventArgs e)
        {
            if (rtsize == 1) ChgRTGraphSize();
            if (GraphSizeMode == 1)  RefreshGraphSize();
        }

        private void grprt_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (bMaxWindow == true && rtsize == 1)
            {
                MessageBox.Show("You cannot change the graph size from maximum to normal when the channel window is at its maximum size.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            if (rtsize == 0)
            {
                rtsize = 1;
                RtMenuGraphModeDefault.Checked = false;
                RtMenuGraphModeMax.Checked = true;
            }
            else
            {
                rtsize = 0;
                RtMenuGraphModeDefault.Checked = true;
                RtMenuGraphModeMax.Checked = false;
            }

            ChgRTGraphSize();
        }

        #region GrpUtil

        private void ApplyGraphModeMenu(int nGrp)
        {
            if (nGrp == 2)
            {
                MenuModeZoom2.Checked = (GrpCtrlMode2 == 1) ? true : false;
                MenuModeMove2.Checked = (GrpCtrlMode2 == 2) ? true : false;
                MenuModeCursor20.Checked = (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3) ? true : false;
                MenuModeCursor21.Checked = (GrpCtrlMode2 == 4) ? true : false;
                MenuModeCursor22.Checked = (GrpCtrlMode2 == 5) ? true : false;
                MenuModeCursor23.Checked = (GrpCtrlMode2 == 6) ? true : false;
                MenuModeCursor24.Checked = (GrpCtrlMode2 == 7) ? true : false;
                MenuModeCursor25.Checked = (GrpCtrlMode2 == 8) ? true : false;
                MenuModeCursor26.Checked = (GrpCtrlMode2 == 9) ? true : false;
            }
            else
            {
                MenuModeZoom1.Checked = (GrpCtrlMode1 == 1) ? true : false;
                MenuModeMove1.Checked = (GrpCtrlMode1 == 2) ? true : false;
                MenuModeCursor10.Checked = (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3) ? true : false;
                MenuModeCursor11.Checked = (GrpCtrlMode1 == 4) ? true : false;
                MenuModeCursor12.Checked = (GrpCtrlMode1 == 5) ? true : false;
                MenuModeCursor13.Checked = (GrpCtrlMode1 == 6) ? true : false;
                MenuModeCursor14.Checked = (GrpCtrlMode1 == 7) ? true : false;
                MenuModeCursor15.Checked = (GrpCtrlMode1 == 8) ? true : false;
                MenuModeCursor16.Checked = (GrpCtrlMode1 == 9) ? true : false;
            }
        }

        private void ApplyMenuGraphMode(int nGrp,int mode)
        {
            if (nGrp == 2)
            {
                MenuModeZoom2.Checked = false;
                MenuModeMove2.Checked = false;
                MenuModeCursor20.Checked = false;
                MenuModeCursor21.Checked = false;
                MenuModeCursor22.Checked = false;
                MenuModeCursor23.Checked = false;
                MenuModeCursor24.Checked = false;
                MenuModeCursor25.Checked = false;
                MenuModeCursor26.Checked = false;
                if (mode == 1)
                {
                    MenuModeZoom2.Checked = true;
                    MenuModeCursor20.Checked = true;
                    lblcsfreq2.Visible = false;
                    grp2.CaptionVisible = false;
                }
                if (mode == 2)
                {
                    MenuModeMove2.Checked = true;
                    MenuModeCursor20.Checked = true;
                    lblcsfreq2.Visible = false;
                    grp2.CaptionVisible = false;
                }
                if (mode == 3 || mode == 0)
                {
                    MenuModeCursor20.Checked = true;
                    lblcsfreq2.Visible = false;
                    grp2.CaptionVisible = false;
                }
                    if (mode == 4) MenuModeCursor21.Checked = true;
                if (mode == 5) MenuModeCursor22.Checked = true;
                if (mode == 6) MenuModeCursor23.Checked = true;
                if (mode == 7) MenuModeCursor24.Checked = true;
                if (mode == 8) MenuModeCursor25.Checked = true;
                if (mode == 9) MenuModeCursor26.Checked = true;
            }
            else
            {
                MenuModeZoom1.Checked = false;
                MenuModeMove1.Checked = false;
                MenuModeCursor10.Checked = false;
                MenuModeCursor11.Checked = false;
                MenuModeCursor12.Checked = false;
                MenuModeCursor13.Checked = false;
                MenuModeCursor14.Checked = false;
                MenuModeCursor15.Checked = false;
                MenuModeCursor16.Checked = false;
                if (mode == 1)
                {
                    MenuModeZoom1.Checked = true;
                    MenuModeCursor10.Checked = true;
                    lblcsfreq1.Visible = false;
                    grp1.CaptionVisible = false;
                }
                if (mode == 2)
                {
                    MenuModeMove1.Checked = true;
                    MenuModeCursor10.Checked = true;
                    lblcsfreq1.Visible = false;
                    grp1.CaptionVisible = false;
                }
                if (mode == 3 || mode == 0)
                {
                    MenuModeCursor10.Checked = true;
                    lblcsfreq1.Visible = false;
                    grp1.CaptionVisible = false;
                }
                if (mode == 4) MenuModeCursor11.Checked = true;
                if (mode == 5) MenuModeCursor12.Checked = true;
                if (mode == 6) MenuModeCursor13.Checked = true;
                if (mode == 7) MenuModeCursor14.Checked = true;
                if (mode == 8) MenuModeCursor15.Checked = true;
                if (mode == 9) MenuModeCursor16.Checked = true;
            }
        }

       

        private void RefreshGraphMode(int nGrp)
        {
            int nPlot;
            if (nGrp == 2)
            {
                if (GrpCtrlMode2 == 0)
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
                    grp2.Cursors[0].Visible = false;
                    grp2.Cursors[0].LabelVisible = false;
                }
                else if (GrpCtrlMode2 == 1)
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
                    grp2.Cursors[0].Visible = false;
                    grp2.Cursors[0].LabelVisible = false;
                }
                else if (GrpCtrlMode2 == 2)
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
                    grp2.Cursors[0].Visible = false;
                    grp2.Cursors[0].LabelVisible = false;
                }
                else
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;

                    nPlot = GrpCtrlMode2 - 3;
                    if (nPlot <= 0)
                    {
                        grp2.Cursors[0].Visible = false;
                        grp2.Cursors[0].LabelVisible = false;
                    }
                    else
                    {
                        grp2.Cursors[0].Plot = grp2.Plots[nPlot-1];
                        grp2.Cursors[0].LabelBackColor = grp2.PlotAreaColor;

                        grp2.Cursors[0].Color = grp2.Cursors[0].Plot.LineColor;
                        grp2.Cursors[0].LabelForeColor = grp2.Cursors[0].Plot.LineColor;
                        grp2.Cursors[0].Visible = true;
                        grp2.Cursors[0].LabelVisible = true;
                        lblcsfreq2.ForeColor = grp2.Cursors[0].LabelForeColor;
                    }
                }
            }
            else
            {
                if (GrpCtrlMode1 == 0)
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;
                    grp1.Cursors[0].Visible = false;
                    grp1.Cursors[0].LabelVisible = false;
                }
                else if (GrpCtrlMode1 == 1)
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
                    grp1.Cursors[0].Visible = false;
                    grp1.Cursors[0].LabelVisible = false;
                }
                else if (GrpCtrlMode1 == 2)
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
                    grp1.Cursors[0].Visible = false;
                    grp1.Cursors[0].LabelVisible = false;
                }
                else
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;

                    nPlot = GrpCtrlMode1 - 3;
                    if (nPlot <= 0)
                    {
                        //grp1.Cursors[0].Plot = null;
                        grp1.Cursors[0].Visible = false;
                        grp1.Cursors[0].LabelVisible = false;
                    }
                    else
                    {
                        grp1.Cursors[0].Plot = grp1.Plots[nPlot-1];
                        grp1.Cursors[0].LabelBackColor = grp1.PlotAreaColor;

                        grp1.Cursors[0].Color = grp1.Cursors[0].Plot.LineColor;
                        grp1.Cursors[0].LabelForeColor = grp1.Cursors[0].Plot.LineColor;
                        grp1.Cursors[0].Visible = true;
                        grp1.Cursors[0].LabelVisible = true;
                        lblcsfreq1.ForeColor = grp1.Cursors[0].LabelForeColor;
                    }
                }
            }
        }

        private Color GetPlotColor(int nGrp, int nPlot)
        {
            Color ret = Properties.Settings.Default.GrpPlotColor11;
            if (nGrp == 2)
            {
                ret = Properties.Settings.Default.GrpPlotColor21;
                if (nPlot == 2) ret = Properties.Settings.Default.GrpPlotColor22;
                else if (nPlot == 3) ret = Properties.Settings.Default.GrpPlotColor23;
                else if (nPlot == 4) ret = Properties.Settings.Default.GrpPlotColor24;
                else if (nPlot == 5) ret = Properties.Settings.Default.GrpPlotColor25;
                else if (nPlot == 6) ret = Properties.Settings.Default.GrpPlotColor26;
            }
            else
            {
                if (nPlot == 2) ret = Properties.Settings.Default.GrpPlotColor12;
                else if (nPlot == 3) ret = Properties.Settings.Default.GrpPlotColor13;
                else if (nPlot == 4) ret = Properties.Settings.Default.GrpPlotColor14;
                else if (nPlot == 5) ret = Properties.Settings.Default.GrpPlotColor15;
                else if (nPlot == 6) ret = Properties.Settings.Default.GrpPlotColor16;
            }
            return ret;
        }

        private void SetPlotColor(int nGrp, int nPlot, Color incolor)
        {
            if (nGrp == 2)
            {
                if (nPlot == 2) Properties.Settings.Default.GrpPlotColor22 = incolor;
                else if (nPlot == 3) Properties.Settings.Default.GrpPlotColor23 = incolor;
                else if (nPlot == 4) Properties.Settings.Default.GrpPlotColor24 = incolor;
                else if (nPlot == 5) Properties.Settings.Default.GrpPlotColor25 = incolor;
                else if (nPlot == 6) Properties.Settings.Default.GrpPlotColor26 = incolor;
                else Properties.Settings.Default.GrpPlotColor21 = incolor;
            }
            else
            {
                if (nPlot == 2) Properties.Settings.Default.GrpPlotColor12 = incolor;
                else if (nPlot == 3) Properties.Settings.Default.GrpPlotColor13 = incolor;
                else if (nPlot == 4) Properties.Settings.Default.GrpPlotColor14 = incolor;
                else if (nPlot == 5) Properties.Settings.Default.GrpPlotColor15 = incolor;
                else if (nPlot == 6) Properties.Settings.Default.GrpPlotColor16 = incolor;
                else Properties.Settings.Default.GrpPlotColor11 = incolor;
            }
            Properties.Settings.Default.Save();
        }

        private void RedrawPlotColor(int nGrp, int nPlot, Color incolor)
        {
            if (nGrp == 2)
            {
                grp2.Plots[nPlot].LineColor = incolor;
                grp2.Plots[nPlot].PointColor = incolor;
            }
            else
            {
                grp1.Plots[nPlot].LineColor = incolor;
                grp1.Plots[nPlot].PointColor = incolor;
            }

        }

        private bool ChgPlotColor(int nGrp, int nPlot)
        {
            Color tcolor = GetPlotColor(nGrp, nPlot);
            ColorDialog cd = new ColorDialog();

            cd.Color = tcolor;
            if (cd.ShowDialog() == DialogResult.OK)
            {
                if (cd.Color != tcolor)
                {
                    SetPlotColor(nGrp, nPlot, cd.Color);
                    RedrawPlotColor(nGrp, nGrp, cd.Color);
                    return true;
                }
            }
            return false;
        }

        private void ChgGrpBackColor(int nGrp)
        {
            ColorDialog cd = new ColorDialog();
            if (nGrp == 2) cd.Color = Properties.Settings.Default.GrpBackColor2;
            else cd.Color = Properties.Settings.Default.GrpBackColor1;


            if (cd.ShowDialog() == DialogResult.OK)
            {
                if (nGrp == 2)
                {
                    Properties.Settings.Default.GrpBackColor2 = cd.Color;
                    grp2.PlotAreaColor = Properties.Settings.Default.GrpBackColor2;
                }
                else
                {
                    Properties.Settings.Default.GrpBackColor1 = cd.Color;
                    grp1.PlotAreaColor = Properties.Settings.Default.GrpBackColor1;
                }
                Properties.Settings.Default.Save();
            }
        }

        private void ChgGrpAxisColor(int nGrp)
        {
            ColorDialog cd = new ColorDialog();
            if (nGrp == 2) cd.Color = Properties.Settings.Default.GrpAxisColor2;
            else cd.Color = Properties.Settings.Default.GrpAxisColor1;


            if (cd.ShowDialog() == DialogResult.OK)
            {
                ScatterGraph grp;
                if (nGrp == 2)
                {
                    Properties.Settings.Default.GrpAxisColor2 = cd.Color;
                    grp = grp2;
                }
                else
                {
                    Properties.Settings.Default.GrpAxisColor1 = cd.Color;
                    grp = grp1;
                }
                Properties.Settings.Default.Save();

                grp.XAxes[0].MajorDivisions.TickColor = cd.Color;
                grp.XAxes[0].MajorDivisions.LabelForeColor = cd.Color;
                grp.XAxes[0].MinorDivisions.TickColor = cd.Color;

                grp.YAxes[0].MajorDivisions.TickColor = cd.Color;
                grp.YAxes[0].MajorDivisions.LabelForeColor = cd.Color;
                grp.YAxes[0].MinorDivisions.TickColor = cd.Color;

                grp.YAxes[1].MajorDivisions.TickColor = cd.Color;
                grp.YAxes[1].MajorDivisions.LabelForeColor = cd.Color;
                grp.YAxes[1].MinorDivisions.TickColor = cd.Color;
            }
        }

        private void ChgGrpGridColor(int nGrp)
        {
            ColorDialog cd = new ColorDialog();
            if (nGrp == 2) cd.Color = Properties.Settings.Default.GrpGridColor2;
            else cd.Color = Properties.Settings.Default.GrpGridColor1;


            if (cd.ShowDialog() == DialogResult.OK)
            {
                ScatterGraph grp;
                if (nGrp == 2)
                {
                    Properties.Settings.Default.GrpGridColor2 = cd.Color;
                    grp = grp2;
                }
                else
                {
                    Properties.Settings.Default.GrpGridColor1 = cd.Color;
                    grp = grp1;
                }
                Properties.Settings.Default.Save();

                grp.XAxes[0].MajorDivisions.GridColor = cd.Color;
                grp.XAxes[0].MinorDivisions.GridColor = cd.Color;

                grp.YAxes[0].MajorDivisions.GridColor = cd.Color;
                grp.YAxes[0].MinorDivisions.GridColor = cd.Color;

                grp.YAxes[1].MajorDivisions.GridColor = cd.Color;
                grp.YAxes[1].MinorDivisions.GridColor = cd.Color;

            }
        }

        private void ChgPlotLineView(int nGrp, int nPlot, ref ToolStripMenuItem tmenu)
        {
            ScatterGraph grp;
            if (nGrp == 2) grp = grp2;
            else grp = grp1;

            if (tmenu.Checked == true)
            {
                tmenu.Checked = false;
                grp.Plots[nPlot].LineStyle = LineStyle.None;
            }
            else
            {
                tmenu.Checked = true;
                grp.Plots[nPlot].LineStyle = LineStyle.Solid;
            }
        }

        private void ChgPlotPointView(int nGrp, int nPlot, ref ToolStripMenuItem tmenu)
        {
            ScatterGraph grp;
            if (nGrp == 2) grp = grp2;
            else grp = grp1;

            if (tmenu.Checked == true)
            {
                tmenu.Checked = false;
                grp.Plots[nPlot].PointStyle = PointStyle.None;
            }
            else
            {
                tmenu.Checked = true;
                grp.Plots[nPlot].PointStyle = PointStyle.EmptyCircle;
            }

        }


        # endregion GrpUtil

        #region Grpinit
        private void InitRtGraph()
        {
            rtmode = 0;
            rtsize = 0;

            grprt.PlotAreaColor = Properties.Settings.Default.RtGrp_BackColor;
            grprt.PlotAreaBorder = Border.Dotted;

            grprt.Plots[0].LineColor = Properties.Settings.Default.RtGrp_Plot1_Color;
            grprt.Plots[0].PointColor = Properties.Settings.Default.RtGrp_Plot1_Color;
            grprt.Plots[0].SmoothUpdates = true;
            grprt.Plots[1].LineColor = Properties.Settings.Default.RtGrp_Plot2_Color;
            grprt.Plots[1].PointColor = Properties.Settings.Default.RtGrp_Plot2_Color;
            grprt.Plots[1].SmoothUpdates = true;

            grprt.XAxes[0].Caption = "Voltage(V)";
            grprt.XAxes[0].CaptionVisible = true;
            grprt.XAxes[0].CaptionForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.XAxes[0].MajorDivisions.LabelVisible = true;
            grprt.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            grprt.XAxes[0].MajorDivisions.TickVisible = true;
            grprt.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.XAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.XAxes[0].MinorDivisions.TickVisible = false;
            grprt.XAxes[0].MinorDivisions.GridVisible = false;
            grprt.YAxes[0].AutoSpacing = true;

            grprt.YAxes[0].Caption = "Current(A)";
            grprt.YAxes[0].CaptionVisible = true;
            grprt.YAxes[0].CaptionForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[0].MajorDivisions.LabelVisible = true;
            grprt.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.YAxes[0].MajorDivisions.TickVisible = true;
            grprt.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            grprt.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.YAxes[0].MinorDivisions.TickVisible = false;
            grprt.YAxes[0].MinorDivisions.GridVisible = false;
            grprt.YAxes[0].AutoSpacing = true;

            grprt.YAxes[1].Caption = "";
            grprt.YAxes[1].CaptionVisible = true;
            grprt.YAxes[1].CaptionForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[1].MajorDivisions.LabelVisible = true;
            grprt.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.YAxes[1].MajorDivisions.TickVisible = true;

            grprt.YAxes[1].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            grprt.YAxes[1].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[1].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.YAxes[1].MinorDivisions.GridVisible = false;
            grprt.YAxes[1].MinorDivisions.TickVisible = false;
            grprt.YAxes[1].AutoSpacing = true;
            

            RtMenuGraphLine.Checked = Properties.Settings.Default.RtGrp_Plot_ViewLine;
            RtMenuGraphPoint.Checked = Properties.Settings.Default.RtGrp_Plot_ViewPoint;
            RtMenuGraphGrid.Checked = Properties.Settings.Default.RtGrp_GridView;
            RtMenuGraphLegend.Checked = false;

            grprt.Plots[0].LineWidth = DeviceConstants.Linewidth;
            grprt.Plots[0].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grprt.Plots[1].LineWidth = DeviceConstants.Linewidth;
            grprt.Plots[1].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            if (Properties.Settings.Default.RtGrp_Plot_ViewLine)
            {
                grprt.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
                grprt.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            }
            else
            {
                grprt.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
                grprt.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
            }

            if (Properties.Settings.Default.RtGrp_Plot_ViewPoint)
            {
                grprt.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                grprt.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            }
            else
            {
                grprt.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
                grprt.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
            }

            if (rtmode == 0)
            {
                RtMenuGraphMode1.Checked = true;
                grprt.YAxes[1].Visible = false;
                RtMenuGraphMode2.Checked = false;
            }
            else
            {
                RtMenuGraphMode1.Checked = false;
                grprt.YAxes[1].Visible = true;
                RtMenuGraphMode2.Checked = true;
            }
            RefreshRtView();
            Rtlegend.Width = 82;
            ChgRTGraphSize();

            RefreshRt();
        }

        private void InitGraph1()
        {

            grp1.ResetZoomPan();

            MenuPlotLine11.Checked = Properties.Settings.Default.GrpPlotLine11;
            MenuPlotPoint11.Checked = Properties.Settings.Default.GrpPlotPoint11;
            MenuPlotLine12.Checked = Properties.Settings.Default.GrpPlotLine12;
            MenuPlotPoint12.Checked = Properties.Settings.Default.GrpPlotPoint12;
            MenuPlotLine13.Checked = Properties.Settings.Default.GrpPlotLine13;
            MenuPlotPoint13.Checked = Properties.Settings.Default.GrpPlotPoint13;
            MenuPlotLine14.Checked = Properties.Settings.Default.GrpPlotLine14;
            MenuPlotPoint14.Checked = Properties.Settings.Default.GrpPlotPoint14;
            MenuPlotLine15.Checked = Properties.Settings.Default.GrpPlotLine15;
            MenuPlotPoint15.Checked = Properties.Settings.Default.GrpPlotPoint15;
            MenuPlotLine16.Checked = Properties.Settings.Default.GrpPlotLine16;
            MenuPlotPoint16.Checked = Properties.Settings.Default.GrpPlotPoint16;


            grp1.Plots[0].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[0].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp1.Plots[1].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[1].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp1.Plots[2].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[2].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp1.Plots[3].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[3].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp1.Plots[4].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[4].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp1.Plots[5].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[5].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);


            if (Properties.Settings.Default.GrpPlotLine11) grp1.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine12) grp1.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine13) grp1.Plots[2].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[2].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine14) grp1.Plots[3].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[3].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine15) grp1.Plots[4].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[4].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine16) grp1.Plots[5].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[5].LineStyle = NationalInstruments.UI.LineStyle.None;

            if (Properties.Settings.Default.GrpPlotPoint11) grp1.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint12) grp1.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint13) grp1.Plots[2].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[2].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint14) grp1.Plots[3].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[3].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint15) grp1.Plots[4].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[4].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint16) grp1.Plots[5].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[5].PointStyle = NationalInstruments.UI.PointStyle.None;

            grp1.PlotAreaColor = Properties.Settings.Default.GrpBackColor1;
            grp1.PlotAreaBorder = Border.Dotted;

            MenuPlotGridX1.Checked = Properties.Settings.Default.GrpAxisGridX1;
            MenuPlotGridY11.Checked = Properties.Settings.Default.GrpAxisGridY11;
            MenuPlotGridY12.Checked = Properties.Settings.Default.GrpAxisGridY12;

            grp1.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.XAxes[0].MinorDivisions.TickVisible = false;
            grp1.XAxes[0].CaptionForeColor = Properties.Settings.Default.GrpAxisColor1;

            grp1.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor1;
            grp1.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.GrpAxisGridX1;
            grp1.YAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[0].MinorDivisions.TickVisible = false;
            grp1.YAxes[0].CaptionForeColor = Properties.Settings.Default.GrpAxisColor1;

            grp1.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor1;
            grp1.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.GrpAxisGridY11;
            grp1.YAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[1].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[1].MinorDivisions.TickVisible = false;
            grp1.YAxes[1].CaptionForeColor = Properties.Settings.Default.GrpAxisColor1;

            grp1.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor1;
            grp1.YAxes[1].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[1].MajorDivisions.GridVisible = Properties.Settings.Default.GrpAxisGridY12;
            grp1.YAxes[1].MinorDivisions.GridVisible = false;

            grp1.Plots[0].LineColor = Properties.Settings.Default.GrpPlotColor11;
            grp1.Plots[0].PointColor = Properties.Settings.Default.GrpPlotColor11;
            grp1.Plots[0].SmoothUpdates = true;

            grp1.Plots[1].LineColor = Properties.Settings.Default.GrpPlotColor12;
            grp1.Plots[1].PointColor = Properties.Settings.Default.GrpPlotColor12;
            grp1.Plots[1].SmoothUpdates = true;

            grp1.Plots[2].LineColor = Properties.Settings.Default.GrpPlotColor13;
            grp1.Plots[2].PointColor = Properties.Settings.Default.GrpPlotColor13;
            grp1.Plots[2].SmoothUpdates = true;

            grp1.Plots[3].LineColor = Properties.Settings.Default.GrpPlotColor14;
            grp1.Plots[3].PointColor = Properties.Settings.Default.GrpPlotColor14;
            grp1.Plots[3].SmoothUpdates = true;

            grp1.Plots[4].LineColor = Properties.Settings.Default.GrpPlotColor15;
            grp1.Plots[4].PointColor = Properties.Settings.Default.GrpPlotColor15;
            grp1.Plots[4].SmoothUpdates = true;

            grp1.Plots[5].LineColor = Properties.Settings.Default.GrpPlotColor16;
            grp1.Plots[5].PointColor = Properties.Settings.Default.GrpPlotColor16;
            grp1.Plots[5].SmoothUpdates = true;

            grp1.Cursors[0].LabelBackColor = Properties.Settings.Default.GrpBackColor1;
            
            legend1.Visible = Properties.Settings.Default.GrpViewLegend1;
            MenuPlotLegend1.Checked = Properties.Settings.Default.GrpViewLegend1;

            GrpCtrlMode1 = 0;
            lblcsfreq1.Visible = false;
            grp1.CaptionVisible = false;

            ApplyGraphModeMenu(1);
            RefreshGraphMode(1);
        }

        private void InitGraph2()
        {

            grp2.ResetZoomPan();

            MenuPlotLine21.Checked = Properties.Settings.Default.GrpPlotLine21;
            MenuPlotPoint21.Checked = Properties.Settings.Default.GrpPlotPoint21;
            MenuPlotLine22.Checked = Properties.Settings.Default.GrpPlotLine22;
            MenuPlotPoint22.Checked = Properties.Settings.Default.GrpPlotPoint22;
            MenuPlotLine23.Checked = Properties.Settings.Default.GrpPlotLine23;
            MenuPlotPoint23.Checked = Properties.Settings.Default.GrpPlotPoint23;
            MenuPlotLine24.Checked = Properties.Settings.Default.GrpPlotLine24;
            MenuPlotPoint24.Checked = Properties.Settings.Default.GrpPlotPoint24;
            MenuPlotLine25.Checked = Properties.Settings.Default.GrpPlotLine25;
            MenuPlotPoint25.Checked = Properties.Settings.Default.GrpPlotPoint25;
            MenuPlotLine26.Checked = Properties.Settings.Default.GrpPlotLine26;
            MenuPlotPoint26.Checked = Properties.Settings.Default.GrpPlotPoint26;


            grp2.Plots[0].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[0].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp2.Plots[1].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[1].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp2.Plots[2].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[2].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp2.Plots[3].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[3].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp2.Plots[4].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[4].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            grp2.Plots[5].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[5].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            if (Properties.Settings.Default.GrpPlotLine21) grp2.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine22) grp2.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine23) grp2.Plots[2].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[2].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine24) grp2.Plots[3].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[3].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine25) grp2.Plots[4].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[4].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotLine26) grp2.Plots[5].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[5].LineStyle = NationalInstruments.UI.LineStyle.None;

            if (Properties.Settings.Default.GrpPlotPoint21) grp2.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint22) grp2.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint23) grp2.Plots[2].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[2].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint24) grp2.Plots[3].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[3].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint25) grp2.Plots[4].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[4].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint26) grp2.Plots[5].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[5].PointStyle = NationalInstruments.UI.PointStyle.None;

            grp2.PlotAreaColor = Properties.Settings.Default.GrpBackColor2;
            grp2.PlotAreaBorder = Border.Dotted;

            MenuPlotGridX2.Checked = Properties.Settings.Default.GrpAxisGridX2;
            MenuPlotGridY21.Checked = Properties.Settings.Default.GrpAxisGridY21;
            MenuPlotGridY22.Checked = Properties.Settings.Default.GrpAxisGridY22;

            grp2.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.XAxes[0].MinorDivisions.TickVisible = false;
            grp2.XAxes[0].CaptionForeColor = Properties.Settings.Default.GrpAxisColor2;

            grp2.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor2;
            grp2.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.GrpAxisGridX2;
            grp2.YAxes[0].MinorDivisions.GridVisible = false;

            grp2.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.YAxes[0].MinorDivisions.TickVisible = false;
            grp2.YAxes[0].CaptionForeColor = Properties.Settings.Default.GrpAxisColor2;

            grp2.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor2;
            grp2.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.GrpAxisGridY21;
            grp2.YAxes[0].MinorDivisions.GridVisible = false;

            grp2.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.YAxes[1].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor2;
            grp2.YAxes[1].MinorDivisions.TickVisible = false;
            grp2.YAxes[1].CaptionForeColor = Properties.Settings.Default.GrpAxisColor2;

            grp2.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor2;
            grp2.YAxes[1].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[1].MajorDivisions.GridVisible = Properties.Settings.Default.GrpAxisGridY22;
            grp2.YAxes[1].MinorDivisions.GridVisible = false;

            grp2.Plots[0].LineColor = Properties.Settings.Default.GrpPlotColor21;
            grp2.Plots[0].PointColor = Properties.Settings.Default.GrpPlotColor21;
            grp2.Plots[0].SmoothUpdates = true;

            grp2.Plots[1].LineColor = Properties.Settings.Default.GrpPlotColor22;
            grp2.Plots[1].PointColor = Properties.Settings.Default.GrpPlotColor22;
            grp2.Plots[1].SmoothUpdates = true;

            grp2.Plots[2].LineColor = Properties.Settings.Default.GrpPlotColor23;
            grp2.Plots[2].PointColor = Properties.Settings.Default.GrpPlotColor23;
            grp2.Plots[2].SmoothUpdates = true;

            grp2.Plots[3].LineColor = Properties.Settings.Default.GrpPlotColor24;
            grp2.Plots[3].PointColor = Properties.Settings.Default.GrpPlotColor24;
            grp2.Plots[3].SmoothUpdates = true;

            grp2.Plots[4].LineColor = Properties.Settings.Default.GrpPlotColor25;
            grp2.Plots[4].PointColor = Properties.Settings.Default.GrpPlotColor25;
            grp2.Plots[4].SmoothUpdates = true;

            grp2.Plots[5].LineColor = Properties.Settings.Default.GrpPlotColor26;
            grp2.Plots[5].PointColor = Properties.Settings.Default.GrpPlotColor26;
            grp2.Plots[5].SmoothUpdates = true;

            grp2.Cursors[0].LabelBackColor = Properties.Settings.Default.GrpBackColor2;

            legend2.Visible = Properties.Settings.Default.GrpViewLegend2;
            MenuPlotLegend2.Checked = Properties.Settings.Default.GrpViewLegend2;

            GrpCtrlMode2 = 0;
            lblcsfreq2.Visible = false;
            grp2.CaptionVisible = false;
            ApplyGraphModeMenu(2);
            RefreshGraphMode(2);
        }

        private void InitGraphType()
        {
            if (OldTechType != gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].type)
            {
                OldTechType = gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].type;
                if ((enTechType)OldTechType == enTechType.TECH_MON)
                {
                    if (this.tabgrp.TabPages.Contains(this.tabPage3) == true) this.tabgrp.TabPages.Remove(this.tabPage3);
                    legend2.Visible = false;
                }
                else
                {
                    if (this.tabgrp.TabPages.Contains(this.tabPage3) == false) this.tabgrp.TabPages.Add(this.tabPage3);
                    legend2.Visible = Properties.Settings.Default.GrpViewLegend2;
                }
                if ((enTechType)OldTechType == enTechType.TECH_HFR) 
                {
                    InitGraphHFR();
                }
                else if ((enTechType)OldTechType == enTechType.TECH_PRR)
                {
                    InitGraphPRR();
                }
                else if ((enTechType)OldTechType == enTechType.TECH_MON)
                {
                    InitGraphMON();
                }
                else if ((enTechType)OldTechType == enTechType.TECH_QIS)
                {
                    InitGraphQIS();
                }
                else
                {
                    InitGraphEIS();
                }
            }
        }

        private void InitGraphQIS()
        {
            tabgrp.TabPages[0].Text = "Info.";
            tabgrp.TabPages[1].Text = "Niquest plot";

            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grp1.YAxes[0].Caption = "-Z image(Ω)";
            grp1.YAxes[1].Caption = "";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = false;

            grp1.Plots[0].Visible = true;
            grp1.Plots[1].Visible = false;
            grp1.Plots[2].Visible = false;
            grp1.Plots[3].Visible = false;
            grp1.Plots[4].Visible = false;
            grp1.Plots[5].Visible = false;

            grp1.Plots[0].XAxis = grp1.XAxes[0];
            grp1.Plots[0].YAxis = grp1.YAxes[0];

            legend1.Items[0].Text = "-Zimg";
            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = false;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;



            tabgrp.TabPages[2].Text = "Bode plot";

            grp2.XAxes[0].Caption = "Frequency(Hz)";
            grp2.XAxes[0].ScaleType = ScaleType.Logarithmic;
            grp2.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grp2.YAxes[0].Caption = "Zmag(Ω)";
            grp2.YAxes[1].Caption = "Zphase(°C)";
            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;

            grp2.Plots[0].XAxis = grp2.XAxes[0];
            grp2.Plots[0].YAxis = grp2.YAxes[0];
            grp2.Plots[1].XAxis = grp2.XAxes[0];
            grp2.Plots[1].YAxis = grp2.YAxes[1];

            grp2.Plots[0].Visible = true;
            grp2.Plots[1].Visible = true;
            grp2.Plots[2].Visible = false;
            grp2.Plots[3].Visible = false;
            grp2.Plots[4].Visible = false;
            grp2.Plots[5].Visible = false;

            legend2.Items[0].Text = "Zmag";
            legend2.Items[1].Text = "Zphase";

            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;


            
            GrpPlotCount1 = 1;
            GrpPlotCount2 = 2;
        }

        private void InitGraphMON()
        {

            
            tabgrp.TabPages[0].Text = "Info.";
            tabgrp.TabPages[1].Text = "Vdc,Temp. vs t";

            grp1.Plots[0].Visible = true;
            grp1.Plots[1].Visible = true;
            grp1.Plots[2].Visible = false;
            grp1.Plots[3].Visible = false;
            grp1.Plots[4].Visible = false;
            grp1.Plots[5].Visible = false;

            grp1.XAxes[0].Caption = "Time(s)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            formatmode = 0;

            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[0].Caption = "Vdc(V)";
            grp1.YAxes[1].Caption = "Temp.(°C)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = true;

            grp1.Plots[0].XAxis = grp1.XAxes[0];
            grp1.Plots[0].YAxis = grp1.YAxes[0];
            grp1.Plots[1].XAxis = grp1.XAxes[0];
            grp1.Plots[1].YAxis = grp1.YAxes[1];

            legend1.Items[0].Text = "Vdc";
            legend1.Items[1].Text = "Temp.";

            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = true;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            /*
            tabgrp.TabPages[2].Text = "Vdc,Temp. vs t";

            grp2.XAxes[0].Caption = "Time(s)";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp2.YAxes[0].Caption = "Vdc(V)";
            grp2.YAxes[1].Caption = "Temp.(°C)";

            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;

            grp2.Plots[0].XAxis = grp2.XAxes[0];
            grp2.Plots[0].YAxis = grp2.YAxes[0];
            grp2.Plots[1].XAxis = grp2.XAxes[0];
            grp2.Plots[1].YAxis = grp2.YAxes[1];

            grp2.Plots[0].Visible = true;
            grp2.Plots[1].Visible = true;
            grp2.Plots[2].Visible = false;
            grp2.Plots[3].Visible = false;
            grp2.Plots[4].Visible = false;
            grp2.Plots[5].Visible = false;

            legend2.Items[0].Text = "Vdc";
            legend2.Items[1].Text = "Temp.";

            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;
            */
            GrpPlotCount1 = 2;
            GrpPlotCount2 = 0;
        }

        private void InitGraphEIS()
        {
            tabgrp.TabPages[0].Text = "Info.";
            tabgrp.TabPages[1].Text = "Niquest plot";

            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grp1.YAxes[0].Caption = "-Z image(Ω)";
            grp1.YAxes[1].Caption = "";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = false;

            grp1.Plots[0].Visible = true;
            grp1.Plots[1].Visible = false;
            grp1.Plots[2].Visible = false;
            grp1.Plots[3].Visible = false;
            grp1.Plots[4].Visible = false;
            grp1.Plots[5].Visible = false;

            grp1.Plots[0].XAxis = grp1.XAxes[0];
            grp1.Plots[0].YAxis = grp1.YAxes[0];

            legend1.Items[0].Text = "-Zimg";
            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = false;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;

            

            tabgrp.TabPages[2].Text = "Bode plot";

            grp2.XAxes[0].Caption = "Frequency(Hz)";
            grp2.XAxes[0].ScaleType = ScaleType.Logarithmic;
            grp2.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grp2.YAxes[0].Caption = "Zmag(Ω)";
            grp2.YAxes[1].Caption = "Zphase(°C)";
            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;

            grp2.Plots[0].XAxis = grp2.XAxes[0];
            grp2.Plots[0].YAxis = grp2.YAxes[0];
            grp2.Plots[1].XAxis = grp2.XAxes[0];
            grp2.Plots[1].YAxis = grp2.YAxes[1];

            grp2.Plots[0].Visible = true;
            grp2.Plots[1].Visible = true;
            grp2.Plots[2].Visible = false;
            grp2.Plots[3].Visible = false;
            grp2.Plots[4].Visible = false;
            grp2.Plots[5].Visible = false;

            legend2.Items[0].Text = "Zmag";
            legend2.Items[1].Text = "Zphase";

            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;

            

            GrpPlotCount1 = 1;
            GrpPlotCount2 = 2;
        }

        private void InitGraphHFR()
        {

            tabgrp.TabPages[0].Text = "Info.";
            tabgrp.TabPages[1].Text = "Zre,Vdc vs t";

            grp1.Plots[0].Visible = true;
            grp1.Plots[1].Visible = true;
            grp1.Plots[2].Visible = false;
            grp1.Plots[3].Visible = false;
            grp1.Plots[4].Visible = false;
            grp1.Plots[5].Visible = false;

            grp1.XAxes[0].Caption = "Time(s)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            formatmode = 0;

            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[0].Caption = "Zre(Ω)";
            grp1.YAxes[1].Caption = "Vdc(V)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = true;

            grp1.Plots[0].XAxis = grp1.XAxes[0];
            grp1.Plots[0].YAxis = grp1.YAxes[0];
            grp1.Plots[1].XAxis = grp1.XAxes[0];
            grp1.Plots[1].YAxis = grp1.YAxes[1];

            legend1.Items[0].Text = "Zre";
            legend1.Items[1].Text = "Vdc";

            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = true;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;

            
            tabgrp.TabPages[2].Text = "Cs,Cp vs t";

            grp2.XAxes[0].Caption = "Time(s)";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp2.YAxes[0].Caption = "Cs(uF)";
            grp2.YAxes[1].Caption = "Cp(uF)";

            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;

            grp2.Plots[0].XAxis = grp2.XAxes[0];
            grp2.Plots[0].YAxis = grp2.YAxes[0];
            grp2.Plots[1].XAxis = grp2.XAxes[0];
            grp2.Plots[1].YAxis = grp2.YAxes[1];

            grp2.Plots[0].Visible = true;
            grp2.Plots[1].Visible = true;
            grp2.Plots[2].Visible = false;
            grp2.Plots[3].Visible = false;
            grp2.Plots[4].Visible = false;
            grp2.Plots[5].Visible = false;

            legend2.Items[0].Text = "Cs";
            legend2.Items[1].Text = "Cp";

            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;

            GrpPlotCount1 = 2;
            GrpPlotCount2 = 2;
        }

        private void InitGraphPRR()
        {
            int i;
            var grp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch];

            grp1.ClearData();
            grp2.ClearData();
            tabgrp.TabPages[0].Text = "Info.";
            tabgrp.TabPages[1].Text = "Rs,P_Rp vs t";
            tabgrp.TabPages[2].Text = "Cs,Cp vs t";

            formatmode = 0;

            grp1.XAxes[0].Caption = "Time(s)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[0].Caption = "R(Ω)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;

            grp1.YAxes[1].Caption = "";
            grp1.YAxes[1].Visible = false;

            grp2.XAxes[0].Caption = "Time(s)";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp2.YAxes[0].Caption = "Cs(uF)";
            grp2.YAxes[1].Caption = "Cp(uF)";
            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;
            
            for (i = 0; i < 6; i++)
            {
                grp1.Plots[i].XAxis = grp1.XAxes[0];
                grp2.Plots[i].XAxis = grp2.XAxes[0];

                if(i < 3)
                {
                    grp1.Plots[i].YAxis = grp1.YAxes[0];
                    grp2.Plots[i].YAxis = grp2.YAxes[0];
                }
                else
                {
                    grp1.Plots[i].YAxis = grp1.YAxes[1];
                    grp2.Plots[i].YAxis = grp2.YAxes[1];
                }
            }
            
            for (i = 0; i < 3; i++)
            {
                if(grp.barr[i])
                {
                    
                    
                    if(i == 2)
                    {
                        grp1.Plots[i].Visible = false;
                        legend1.Items[i].Visible = false;
                    }
                    else
                    {
                        grp1.Plots[i].Visible = true;
                        legend1.Items[i].Visible = true;
                    }
                    grp1.Plots[i + 3].Visible = false;
                    legend1.Items[i+3].Visible = false;

                    grp2.Plots[i].Visible = true;
                    grp2.Plots[i+3].Visible = true;

                    legend2.Items[i].Visible = true;
                    legend2.Items[i+3].Visible = true;

                    if (i == 0)
                    {
                        legend1.Items[i].Text = "Rs";
                        legend1.Items[i+3].Text = "";
                        legend2.Items[i].Text = "Rs-Cs";
                        legend2.Items[i+3].Text = "Rs-Cp";
                    }
                    else if (i == 1)
                    {
                        legend1.Items[i].Text = "P_Rp";
                        //legend1.Items[i + 3].Text = "";
                        legend2.Items[i].Text = "Rp-Cs";
                        legend2.Items[i + 3].Text = "Rp-Cp";
                    }
                    else
                    {
                        legend1.Items[i].Text = "";
                        legend1.Items[i + 3].Text = "";
                        legend2.Items[i].Text = "Rpe-Cs";
                        legend2.Items[i + 3].Text = "Rpe-Cp";
                    }
                }
                else
                {
                    grp1.Plots[i].Visible = false;
                    grp1.Plots[i+3].Visible = false;
                    legend1.Items[i].Visible = false;
                    legend1.Items[i+3].Visible = false;

                    grp2.Plots[i].Visible = false;
                    grp2.Plots[i+3].Visible = false;
                    legend2.Items[i].Visible = false;
                    legend2.Items[i+3].Visible = false;
                }
            }


            GrpPlotCount1 = 2; // grp.arrcnt * 2;
            GrpPlotCount2 = grp.arrcnt * 2;

        }

        #endregion Grpinit

        #region GrpRefresh

        private void RefreshRtLegend()
        {
            Point pnt = grprt.Location;
            Size legSize = Rtlegend.Size;

            if (rtmode == 1)
            {
                Rtlegend.Items[0].Visible = true;
                Rtlegend.Items[0].Text = "Voltage";
                Rtlegend.Items[1].Visible = true;
                Rtlegend.Items[1].Text = "Current";
                legSize.Height = 54;
            }
            else
            {
                Rtlegend.Items[0].Visible = true;
                Rtlegend.Items[0].Text = "Current";
                Rtlegend.Items[1].Visible = false;
                Rtlegend.Items[1].Text = "";
                legSize.Height = 30;
            }
            Rtlegend.Size = legSize;

            pnt.X = pnt.X + grprt.Size.Width - Rtlegend.Size.Width - 3;
            pnt.Y = pnt.Y + 3;

            Rtlegend.Location = pnt;
            Rtlegend.Visible = RtMenuGraphLegend.Checked;
        }

        private void ChgRTGraphSize()
        {
            if (rtsize == 0)
            {
                RtMenuGraphModeDefault.Checked = true;
                RtMenuGraphModeMax.Checked = false;
                grprt.Size = new Size(146, 128);
                grprt.Location = new Point(8, 258);
                tabgrp.Visible = true;
            }
            else
            {
                RtMenuGraphModeDefault.Checked = false;
                RtMenuGraphModeMax.Checked = true;
                tabgrp.Visible = false;
                grprt.Size = new Size(this.ClientRectangle.Width - 16, this.ClientRectangle.Height - 43);
                grprt.Location = new Point(8, 27);
            }
            RefreshRtLegend();
        }


        private void RefreshLegendSize()
        {
            RefreshLegendSize(1);
            RefreshLegendSize(2);
        }

        private void RefreshLegendSize(int index)
        {
            Point tpos;
            if (index == 1)
            {
                legend1.Width = 80;
                legend1.Height = 23 * GrpPlotCount1 + 8;

                tpos = grp1.Location;
                tpos.X = tpos.X + grp1.Width - legend1.Width - 3;
                tpos.Y = tpos.Y + 3;
                legend1.Location = tpos;
            }
            else
            {

                legend2.Width = 80;
                legend2.Height = 23 * GrpPlotCount2 + 8;

                tpos = grp2.Location;
                tpos.X = tpos.X + grp2.Width - legend2.Width - 3;
                tpos.Y = tpos.Y + 3;
                legend2.Location = tpos;
            }
        }

        private void RefreshGraphSize()
        {
            if (GraphSizeMode == 0)
            {
                RtMenuGraphModeDefault.Checked = true;
                RtMenuGraphModeMax.Checked = false;

                tabgrp.Location = new Point(160,66);
                tabgrp.Size = new Size(320, 320);
                grprt.Visible = true;
                /*
                grp1.Size = new Size(182, 186);
                grp1.Location = new Point(4, 6);
                grp2.Size = new Size(182, 186);
                grp2.Location = new Point(4, 6);*/
            }
            else
            {
                RtMenuGraphModeDefault.Checked = false;
                RtMenuGraphModeMax.Checked = true;

                tabgrp.Location = new Point(6,27);
                tabgrp.Size = new Size(ClientRectangle.Size.Width - 16, ClientRectangle.Size.Height - 16);
                grprt.Visible = false;
                /*grp1.Size = new Size(tabgrp.Width - 18, tabgrp.Height - 38);
                grp1.Location = new Point(4, 6);
                grp2.Size = new Size(tabgrp.Width - 18, tabgrp.Height - 38);
                grp2.Location = new Point(4, 6);*/
            }
            RefreshLegendSize();
        }

        string GetTestStatus(stChStatusInf chstat)
        {
            string str;

            enTestState stat = (enTestState)chstat.TestStatus;
            enStatError errstat = (enStatError)chstat.ErrorStatus;

            if (stat == enTestState.nc_Ready || stat == enTestState.Ready || stat == enTestState.nc_Stopped || stat == enTestState.Stopped)
            {
                if (errstat == enStatError.NoError) str = string.Format(" Status: {0}", ((enTestState)chstat.TestStatus).GetDescription());
                else str = string.Format(" Status: {0}", errstat.GetDescription());
            }
            else
            {
                str = string.Format(" Status: {0}", ((enTestState)chstat.TestStatus).GetDescription());
            }


            return str;
        }
        string GetErrStatus(stChStatusInf chstat,bool brun)
        {
            string str;

            if(brun) str = string.Format("   Flow: {0}", ((enEisState)chstat.eis_status.status).GetDescription());
            else str = string.Format("  Error: {0}", ((enStatError)chstat.LastError).GetDescription());

            return str;
        }

        Color GetTestStatusColor(stChStatusInf chstat)
        {
            enTestState stat = (enTestState)chstat.TestStatus;
            enEisState estat = (enEisState)chstat.eis_status.status;
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
            return Color.Black;
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
                    return Color.Black;
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

        private string GetTickToString(long tick)
        {
            DateTime dt = new DateTime(tick);
            return string.Format("{0:G}", dt);
        }

        private void ViewInformation()
        {
            stChStatusInf chstat = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch];
            stResHeaderInfo headinfo = gBZA.SifLnkLst[serial].MBZAIF.mHeadinf[sifch];
           
            string str;
            DateTime sdt = new DateTime(headinfo.rtc_begin.tick * TimeSpan.TicksPerMillisecond);
            DateTime edt = new DateTime(headinfo.rtc_end.tick * TimeSpan.TicksPerMillisecond);

            lblStarted.Text = string.Format("   Started: {0:G}", sdt);

            if (gBZA.CheckStatusRun(chstat)) lblFinished.Text = "  Finished: Proceeding...";
            else lblFinished.Text = string.Format("  Finished: {0:G}", edt);

            if (gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch].Length < 5)
            {
                str = "";
                toolTip.SetToolTip(this.lblTech, str);
                lblTech.Text = string.Format(" Technique: {0}", str);
            }
            else
            {
                str = Path.GetDirectoryName(gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch]);
                toolTip.SetToolTip(this.lblTech, str);
                str = Path.GetFileName(gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch]);
                lblTech.Text = string.Format(" Technique: {0}", str);
            }

            if (gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch].Length < 5)
            {
                str = "";
                toolTip.SetToolTip(this.lblResult, str);
                lblResult.Text = string.Format("    Result: {0}", str);
            }
            else
            {
                str = Path.GetDirectoryName(gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch]);
                toolTip.SetToolTip(this.lblResult, str);
                str = Path.GetFileName(gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch]);
                lblResult.Text = string.Format("    Result: {0}", str);

                lblBattid.Text = string.Format("Battery id: {0}", Encoding.UTF8.GetString(headinfo.batid).Trim('\0'));

                lblCapa.Text = string.Format("Nominal AH: {0} AH", SM_Number.ToString(headinfo.Capa, enSM_TypeNumberToString.SIPrefix, 5));
                lblUser.Text = string.Format("      User: {0}", Encoding.UTF8.GetString(headinfo.user).Trim('\0'));
                lblMemo.Text = string.Format("      Memo: {0}", Encoding.UTF8.GetString(headinfo.memo).Trim('\0'));
            }
        }
        private void ViewStatus()
        {
            stChStatusInf chstat = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch];
            var mrng = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges;
            TimeSpan ElapsedTime = TimeSpan.FromMilliseconds(chstat.RunTimeStamp);
            bool brun = gBZA.CheckStatusRun(chstat);
            bool bcalibMode = gBZA.CheckStatusCalibMode(chstat);
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].type;

            lblTestStatus.Text = GetTestStatus(chstat);
            lblErrStatus.Text = GetErrStatus(chstat, brun);


            if (techtype == enTechType.TECH_HFR)
            {
                gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetHFR(ref techhfr);
                lblprog.Prog_Val = (int)(((chstat.RunTimeStamp * 0.001) / (double)techhfr.totaltime) * 1000.0);
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetPRR(ref techprr);
                lblprog.Prog_Val = (int)(((chstat.RunTimeStamp * 0.001) / (double)techprr.totaltime) * 1000.0);
            }
            else if (techtype == enTechType.TECH_MON)
            {
                if((enEisState)chstat.eis_status.status == enEisState.mondelay)
                {
                    lblprog.Prog_Val = (int)(((chstat.TaskTimeStamp * 0.001) / (double)gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].ondelay) * 1000.0);
                }
                else
                {
                    gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetMON(ref techmon);
                    lblprog.Prog_Val = (int)(((chstat.TaskTimeStamp * 0.001) / (double)techmon.totaltime) * 1000.0);
                }
                
            }
            else if(techtype == enTechType.TECH_QIS)
            {
                gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetQIS(ref techqis);
                lblprog.Prog_Val = (int)(((double)chstat.eis_status.freqindex / (double)chstat.eis_status.freqcount) * 1000.0);
            }
            else
            {
                gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetEIS(ref techeis);
                lblprog.Prog_Val = (int)(((double)chstat.eis_status.freqindex / (double)chstat.eis_status.freqcount) * 1000.0);
            }

            if (bcalibMode == true)
            {
                btstart.Enabled = false;
                btloaddata.Enabled = false;
                MenuTechchangeTechFile.Enabled = false;
                bttech.Enabled = false;
                btTechEdit.Enabled = false;
            }
            else
            {
                btstart.Enabled = true;
                btTechEdit.Enabled = true;
                if (brun)
                {
                    btloaddata.Enabled = false;
                    MenuTechchangeTechFile.Enabled = false;
                    bttech.Enabled = false;
                }
                else
                {
                    btloaddata.Enabled = true;
                    MenuTechchangeTechFile.Enabled = true;
                    bttech.Enabled = true;
                }
           }

            if (brun == true)
            {
                if (btstart.ImageKey == "play")
                {
                    ViewInformation();
                    InitGraphType();
                    if (techtype == enTechType.TECH_MON)
                    {
                        lblprog.Prog_Color = Color.Yellow;
                    }
                    else
                    {
                        lblprog.Prog_Color = Color.Lime;
                    }
                }
                else
                {
                    if (techtype == enTechType.TECH_MON)
                    {
                        if ((enEisState)chstat.eis_status.status == enEisState.mondelay)
                        {
                            if (lblprog.Prog_Color != Color.Yellow) lblprog.Prog_Color = Color.Yellow;
                        }
                        else
                        {
                            if (lblprog.Prog_Color != Color.Lime) lblprog.Prog_Color = Color.Lime;
                        }
                    }
                    else
                    {
                        if (lblprog.Prog_Color != Color.Lime) lblprog.Prog_Color = Color.Lime;
                    }
                }
                btstart.ImageKey = "stop";
                
            }
            else
            {
                if (btstart.ImageKey == "stop")
                {
                    lblprog.Prog_Color = Color.LightGray;
                    ViewInformation();
                    btstart.ImageKey = "play";
                }
                else
                {
                    if (lblprog.Prog_Color != Color.LightGray) lblprog.Prog_Color = Color.LightGray;
                }
            }


            labelElapsedTime.Text = string.Format("Elapsed: {0,4:###0}:{1:00}:{2:00}", ElapsedTime.Hours, ElapsedTime.Minutes, ElapsedTime.Seconds);
            lbldatacount.Text = string.Format("Data count: {0}", chstat.eis_status.rescount);
           

            eZimType zimtype = (eZimType)chstat.ZimType; // (eZimType)(gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].info.cModel[0] - 0x30);
            double crngval = mrng.iac_rng[chstat.Iac_in_rngno].realmax;

            if ((chstat.Iac_rngno % 2) > 0)
            {
                crngval *= mrng.iac_rng[chstat.Iac_in_rngno].controlgain;
            }

            lblRange.Text = string.Format("  Range: {0}/ {1}", SM_Number.ToRangeString(crngval, "A"), SM_Number.ToRangeString(mrng.vdc_rng[chstat.Vdc_rngno].realmax, "V"));

            if (chstat.Vdc >= 1000.0)
            {
                lblVdc.Text = string.Format("    Vdc: {0,8:###0.0##}KV", chstat.Vdc * 0.001);
            }
            else
            {
                lblVdc.Text = string.Format("    Vdc: {0,8:###0.0##} V", chstat.Vdc);
            }

            if (chstat.Veoc >= 1000.0)
            {
                lblVeoc.Text = string.Format("   Veoc: {0,8:###0.0##}KV", chstat.Veoc * 0.001);
            }
            else
            {
                lblVeoc.Text = string.Format("   Veoc: {0,8:###0.0##} V", chstat.Veoc);
            }

            lblTemp.Text = string.Format("  Temp.: {0,8:###0.0##} °C", chstat.Temperature);

            if (brun)
            {

                if ((enEisState)chstat.eis_status.status == enEisState.ondelay
                    || (enEisState)chstat.eis_status.status == enEisState.eisinit
                    || (enEisState)chstat.eis_status.status == enEisState.rdy
                    || (enEisState)chstat.eis_status.status == enEisState.ing
                    || (enEisState)chstat.eis_status.status == enEisState.fft)
                {
                    if (chstat.DispFreq == 0.0)
                    {
                        lblprogfreq.Text = "Working: -------- Hz";
                    }
                    else
                    {
                        if (chstat.eis_status.freq >= 1000.0)
                        {
                            lblprogfreq.Text = string.Format("Working: {0,8:###0.0##}KHz", chstat.eis_status.freq * 0.001);
                        }
                        else if (chstat.eis_status.freq >= 1.0)
                        {
                            lblprogfreq.Text = string.Format("Working: {0,8:###0.0##} Hz", chstat.eis_status.freq);
                        }
                        else
                        {
                            lblprogfreq.Text = string.Format("Working: {0,8:###0.0##}mHz", chstat.eis_status.freq * 1000.0);
                        }
                    }
                }
                else
                {
                    lblprogfreq.Text = "Working: -------- Hz";
                }

            }
            if (chstat.DispFreq == 0.0)
            {
                lblfreq.Text = "  Freq.: -------- Hz";
                lblzreal.Text = "  Zreal: -------- Ω";
                lblzimg.Text = "   Zimg: -------- Ω";
                lblZmag.Text = "   Zmag: -------- Ω";
                lblZphase.Text = " Zphase: -------- °";
            }
            else
            {
                if (chstat.DispFreq >= 1000.0)
                {
                    lblfreq.Text = string.Format("  Freq.: {0,8:###0.0##}KHz", chstat.DispFreq * 0.001);
                }
                else if (chstat.eis_status.freq >= 1.0)
                {
                    lblfreq.Text = string.Format("  Freq.: {0,8:###0.0##} Hz", chstat.DispFreq);
                }
                else
                {
                    lblfreq.Text = string.Format("  Freq.: {0,8:###0.0##}mHz", chstat.DispFreq * 1000.0);
                }

                double DispReal = Math.Abs(chstat.DispMag) * Math.Cos(chstat.DispPhase * (double)DeviceConstants.PI / (double)180.0);
                double Dispimg = Math.Abs(chstat.DispMag) * Math.Sin(chstat.DispPhase * (double)DeviceConstants.PI / (double)180.0);

                if (DispReal >= 1000.0)
                {
                    lblzreal.Text = string.Format("  Zreal: {0,8:###0.0##}KΩ", DispReal / 1000.0);
                }
                else if (chstat.DispMag >= 1.0)
                {
                    lblzreal.Text = string.Format("  Zreal: {0,8:###0.0##} Ω", DispReal);
                }
                else
                {
                    lblzreal.Text = string.Format("  Zreal: {0,8:###0.0##}mΩ", DispReal * 1000.0);
                }

                if (DispReal >= 1000.0)
                {
                    lblzimg.Text = string.Format("   Zimg: {0,8:###0.0##}KΩ", Dispimg / 1000.0);
                }
                else if (chstat.DispMag >= 1.0)
                {
                    lblzimg.Text = string.Format("   Zimg: {0,8:###0.0##} Ω", Dispimg);
                }
                else
                {
                    lblzimg.Text = string.Format("   Zimg: {0,8:###0.0##}mΩ", Dispimg * 1000.0);
                }

                if (chstat.DispMag >= 1000.0)
                {
                    lblZmag.Text = string.Format("   Zmag: {0,8:###0.0##}KΩ", chstat.DispMag / 1000.0);
                }
                else if (chstat.DispMag >= 1.0)
                {
                    lblZmag.Text = string.Format("   Zmag: {0,8:###0.0##} Ω", chstat.DispMag);
                }
                else
                {
                    lblZmag.Text = string.Format("   Zmag: {0,8:###0.0##}mΩ", chstat.DispMag * 1000.0);
                }
                if (chstat.DispPhase >= 10.0)
                {
                    lblZphase.Text = string.Format(" Zphase: {0,8:###0.0##} °", chstat.DispPhase);
                }
                else
                {
                    lblZphase.Text = string.Format(" Zphase: {0,8:###0.0##} °", chstat.DispPhase);
                }
            }

            lblTestStatus.ForeColor = GetTestStatusColor(chstat);
            lblErrStatus.ForeColor = GetErrorStatusColor(chstat, lblTestStatus.ForeColor);

            labelElapsedTime.ForeColor = lblTestStatus.ForeColor;
            lblRange.ForeColor = lblTestStatus.ForeColor;
            lblVeoc.ForeColor = lblTestStatus.ForeColor;
            lblVdc.ForeColor = lblTestStatus.ForeColor;
            lblTemp.ForeColor = lblTestStatus.ForeColor;
            lblfreq.ForeColor = lblTestStatus.ForeColor;
            lblzreal.ForeColor = lblTestStatus.ForeColor;
            lblzimg.ForeColor = lblTestStatus.ForeColor;
            lblZmag.ForeColor = lblTestStatus.ForeColor;
            lblZphase.ForeColor = lblTestStatus.ForeColor;
            lblprogfreq.ForeColor = lblTestStatus.ForeColor;
        }

        private void RefreshRtView()
        {
            if (rtsize == 0)
            {
                grprt.XAxes[0].Visible = false;
                grprt.YAxes[0].Visible = false;
                grprt.YAxes[1].Visible = false;
            }
            else
            {
                if (rtmode == 0)
                {
                    grprt.XAxes[0].Visible = true;
                    grprt.YAxes[0].Visible = true;
                    grprt.YAxes[1].Visible = false;
                }
                else
                {
                    grprt.XAxes[0].Visible = true;
                    grprt.YAxes[0].Visible = true;
                    grprt.YAxes[1].Visible = true;
                }
            }
            if (rtmode == 0)
            {
                grprt.Plots[0].Visible = true;
                grprt.Plots[1].Visible = false;
            }
            else
            {
                grprt.Plots[0].Visible = true;
                grprt.Plots[1].Visible = true;
            }
        }

        private void RefreshRt()
        {
            
            grprt.Plots[0].ClearData();
            grprt.Plots[1].ClearData();

            if (gBZA.SifLnkLst.ContainsKey(serial) == false) return;

            if (rtmode == 0)
            {
                grprt.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.dv, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count); //DeviceConstants.MAX_EIS_RT_RAW_POINT
            }
            else
            {
                grprt.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.dv, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // V
                grprt.Plots[1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // I
            }

            if (rtsize == 0)
            {
                grprt.XAxes[0].Visible = false;
                grprt.YAxes[0].Visible = false;
                grprt.YAxes[1].Visible = false;
            }
            else
            {
                if (rtmode == 0)
                {
                    grprt.XAxes[0].Visible = true;
                    grprt.YAxes[0].Visible = true;
                    grprt.YAxes[1].Visible = false;
                }
                else
                {
                    grprt.XAxes[0].Visible = true;
                    grprt.YAxes[0].Visible = true;
                    grprt.YAxes[1].Visible = true;
                }
            }

            RefreshRtLegend();
        }


        private void RefreshGraphEIS()
        {
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                grp1.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].ly[0].ToArray());
            }

            if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                grp2.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].ly[0].ToArray());
                grp2.Plots[1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].ToArray());
            }
        }

        private void RefreshGraphQIS()
        {
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                grp1.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].ly[0].ToArray());
            }

            if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                grp2.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].ly[0].ToArray());
                grp2.Plots[1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].ToArray());
            }
        }

        private void RefreshGraphHFR()
        {
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                grp1.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].ly[0].ToArray());
                grp1.Plots[1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[1].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[1].ly[0].ToArray());
            }

            if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                grp2.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].ly[0].ToArray());
                grp2.Plots[1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].ToArray());
            }

            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                RefreshGraphAxisTimeView();
            }
        }

        private void RefreshGraphAxisTimeView()
        {
            int cnt = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].lx[0].Count;
            if (cnt < 1) return;

            double value = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].lx[0][cnt - 1];


            if (formatmode > 0)
            {
                if (value < 60)
                {
                    formatmode = 0;
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
                    grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
                    return;
                }
            }

            if (formatmode == 0)
            {
                if (value > 60)
                {
                    formatmode = 1;
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_mm;
                    grp2.XAxes[0].MajorDivisions.LabelFormat = fs_mm;
                }
            }
            else if (formatmode == 1)
            {
                if (value > 3600)
                {
                    formatmode = 2;
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_hh;
                    grp2.XAxes[0].MajorDivisions.LabelFormat = fs_hh;
                }
            }
            else if (formatmode == 2)
            {
                if (value > 86400)
                {
                    formatmode = 3;
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_dd;
                    grp2.XAxes[0].MajorDivisions.LabelFormat = fs_dd;
                }
            }
        }
        private void RefreshGraphPRR()
        {
            int i;
            var grp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch];
           
            if (grp.arrcnt == 0) return;

       
            for (i = 0; i < 3; i++)
            {
                if (i < 2)
                {
                    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
                    { 
                        grp1.Plots[i].PlotXY(grp.rtgrp.plot[0].lx[i].ToArray(), grp.rtgrp.plot[0].ly[i].ToArray());
                        //grp1.Plots[i + 3].PlotXY(grp.rtgrp.plot[1].lx[i].ToArray(), grp.rtgrp.plot[1].ly[i].ToArray());
                    }
                }
                if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
                {
                    grp2.Plots[i].PlotXY(grp.rtgrp.plot[2].lx[i].ToArray(), grp.rtgrp.plot[2].ly[i].ToArray());
                    grp2.Plots[i + 3].PlotXY(grp.rtgrp.plot[3].lx[i].ToArray(), grp.rtgrp.plot[3].ly[i].ToArray());
                }
            }

            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                RefreshGraphAxisTimeView();
            }

        }

        private void RefreshGraphMON()
        {
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                grp1.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].ly[0].ToArray());
                grp1.Plots[1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[1].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[1].ly[0].ToArray());
            }
            /*
            if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                grp2.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].ly[0].ToArray());
                grp2.Plots[1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].lx[0].ToArray(), gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].ToArray());
            }
            */
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                RefreshGraphAxisTimeView();
            }
        }

        private void RefreshGraph()
        {
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].type;
            if (techtype == enTechType.TECH_HFR)
            {
                RefreshGraphHFR();
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                RefreshGraphPRR();
            }
            else if (techtype == enTechType.TECH_MON)
            {
                RefreshGraphMON();
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                RefreshGraphQIS();
            }
            else
            {
                RefreshGraphEIS();
            }
        }

        #endregion GrpRefresh

        #region RtGrpMenu
        private void RtMenuGraphMode1_Click(object sender, EventArgs e)
        {
            rtmode = 0;
            RtMenuGraphMode2.Checked = false;
            grprt.XAxes[0].Caption = "Voltage(V)";
            grprt.YAxes[0].Caption = "Current(A)";
            RefreshRtView();
        }

        private void RtMenuGraphMode2_Click(object sender, EventArgs e)
        {
            rtmode = 1;
            RtMenuGraphMode1.Checked = false;
            grprt.XAxes[0].Caption = "Time";
            grprt.YAxes[0].Caption = "Voltage(V)";
            grprt.YAxes[1].Caption = "Current(A)";
            RefreshRtView();
        }

        private void RtMenuGraphModeDefault_Click(object sender, EventArgs e)
        {
            rtsize = 0;
            RtMenuGraphModeMax.Checked = false;
            ChgRTGraphSize();
            
        }

        private void RtMenuGraphModeMax_Click(object sender, EventArgs e)
        {
            rtsize = 1;
            RtMenuGraphModeDefault.Checked = false;
            ChgRTGraphSize();
        }

        private void RtMenuGraphLine_Click(object sender, EventArgs e)
        {
            Properties.Settings.Default.RtGrp_Plot_ViewLine = RtMenuGraphLine.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.RtGrp_Plot_ViewLine)
            {
                grprt.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
                grprt.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            }
            else
            {
                grprt.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
                grprt.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
            }
        }

        private void RtMenuGraphPoint_Click(object sender, EventArgs e)
        {
            Properties.Settings.Default.RtGrp_Plot_ViewPoint = RtMenuGraphPoint.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.RtGrp_Plot_ViewPoint)
            {
                grprt.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                grprt.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            }
            else
            {
                grprt.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
                grprt.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
            }
        }

        private void RtMenuGraphLegend_Click(object sender, EventArgs e)
        {
            if (RtMenuGraphLegend.Checked == true) RtMenuGraphLegend.Checked = false;
            else RtMenuGraphLegend.Checked = true;

            RefreshRtLegend();
        }

        private void RtMenuGraphGrid_Click(object sender, EventArgs e)
        {
            if (RtMenuGraphGrid.Checked) RtMenuGraphGrid.Checked = false;
            else RtMenuGraphGrid.Checked = true;

            Properties.Settings.Default.RtGrp_GridView = RtMenuGraphGrid.Checked;
            Properties.Settings.Default.Save();

            grprt.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            grprt.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            grprt.YAxes[1].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
        }

        private void RtMenuGraphPlotColor1_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_Plot1_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_Plot1_Color = cd.Color;
                Properties.Settings.Default.Save();
                grprt.Plots[0].LineColor = Properties.Settings.Default.RtGrp_Plot1_Color;
                grprt.Plots[0].PointColor = Properties.Settings.Default.RtGrp_Plot1_Color;
            }
        }
        private void RtMenuGraphPlotColor2_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_Plot2_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_Plot2_Color = cd.Color;
                Properties.Settings.Default.Save();
                grprt.Plots[1].LineColor = Properties.Settings.Default.RtGrp_Plot2_Color;
                grprt.Plots[1].PointColor = Properties.Settings.Default.RtGrp_Plot2_Color;
            }
        }

        private void RtMenuGraphGridColor_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_GridColor;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_GridColor = cd.Color;
                Properties.Settings.Default.Save();

                grprt.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
                grprt.XAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
                grprt.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
                grprt.YAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
                grprt.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
                grprt.YAxes[1].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            }
        }

        private void RtMenuGraphAxisColor_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_Axis_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_Axis_Color = cd.Color;
                Properties.Settings.Default.Save();
                grprt.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
                grprt.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
                grprt.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
                grprt.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
                grprt.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
                grprt.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            }
        }

        private void RtMenuGraphBackColor_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_BackColor;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_BackColor = cd.Color;
                Properties.Settings.Default.Save();
                grprt.PlotAreaColor = Properties.Settings.Default.RtGrp_BackColor;
            }
        }

        #endregion RtGrpMenu

        #region GrpMenu1

        private void MenuPlotColor11_Click(object sender, EventArgs e)
        {
            ChgPlotColor(1, 1);
        }

        private void MenuPlotColor12_Click(object sender, EventArgs e)
        {
            ChgPlotColor(1, 2);
        }

        private void MenuPlotColor13_Click(object sender, EventArgs e)
        {
            ChgPlotColor(1, 3);
        }

        private void MenuPlotColor14_Click(object sender, EventArgs e)
        {
            ChgPlotColor(1, 4);
        }

        private void MenuPlotColor15_Click(object sender, EventArgs e)
        {
            ChgPlotColor(1, 5);
        }

        private void MenuPlotColor16_Click(object sender, EventArgs e)
        {
            ChgPlotColor(1, 6);
        }

        private void MenuBackColor1_Click(object sender, EventArgs e)
        {
            ChgGrpBackColor(1);
        }

        private void MenuAxisColor1_Click(object sender, EventArgs e)
        {
            ChgGrpAxisColor(1);
        }

        private void MenuGridColor1_Click(object sender, EventArgs e)
        {
            ChgGrpGridColor(1);
        }

        private void MenuPlotLine11_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(1, 0, ref MenuPlotLine11);
            Properties.Settings.Default.GrpPlotLine11 = MenuPlotLine11.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint11_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(1, 0, ref MenuPlotPoint11);
            Properties.Settings.Default.GrpPlotPoint11 = MenuPlotPoint11.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine12_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(1, 1, ref MenuPlotLine12);
            Properties.Settings.Default.GrpPlotLine12 = MenuPlotLine12.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint12_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(1, 1, ref MenuPlotPoint12);
            Properties.Settings.Default.GrpPlotPoint12 = MenuPlotPoint12.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine13_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(1, 2, ref MenuPlotLine13);
            Properties.Settings.Default.GrpPlotLine13 = MenuPlotLine13.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint13_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(1, 2, ref MenuPlotPoint13);
            Properties.Settings.Default.GrpPlotPoint13 = MenuPlotPoint13.Checked;
            Properties.Settings.Default.Save();
        }
        private void MenuPlotLine14_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(1, 3, ref MenuPlotLine14);
            Properties.Settings.Default.GrpPlotLine14 = MenuPlotLine14.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint14_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(1, 3, ref MenuPlotPoint14);
            Properties.Settings.Default.GrpPlotPoint14 = MenuPlotPoint14.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine15_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(1,4, ref MenuPlotLine15);
            Properties.Settings.Default.GrpPlotLine15 = MenuPlotLine15.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint15_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(1, 4, ref MenuPlotPoint15);
            Properties.Settings.Default.GrpPlotPoint15 = MenuPlotPoint15.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine16_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(1, 5, ref MenuPlotLine16);
            Properties.Settings.Default.GrpPlotLine16 = MenuPlotLine16.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint16_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(1, 5, ref MenuPlotPoint16);
            Properties.Settings.Default.GrpPlotPoint16 = MenuPlotPoint16.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotGridX1_Click(object sender, EventArgs e)
        {
            if (MenuPlotGridX1.Checked) MenuPlotGridX1.Checked = false;
            else MenuPlotGridX1.Checked = true;

            grp1.XAxes[0].MajorDivisions.GridVisible = MenuPlotGridX1.Checked;
            Properties.Settings.Default.GrpAxisGridX1 = MenuPlotGridX1.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotGridY11_Click(object sender, EventArgs e)
        {
            if (MenuPlotGridY11.Checked) MenuPlotGridY11.Checked = false;
            else MenuPlotGridY11.Checked = true;

            grp1.YAxes[0].MajorDivisions.GridVisible = MenuPlotGridY11.Checked;
            Properties.Settings.Default.GrpAxisGridY11 = MenuPlotGridY11.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotGridY12_Click(object sender, EventArgs e)
        {
            if (MenuPlotGridY12.Checked) MenuPlotGridY12.Checked = false;
            else MenuPlotGridY12.Checked = true;

            grp1.YAxes[1].MajorDivisions.GridVisible = MenuPlotGridY12.Checked;
            Properties.Settings.Default.GrpAxisGridY12 = MenuPlotGridY12.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLegend1_Click(object sender, EventArgs e)
        {
            if (MenuPlotLegend1.Checked == true) MenuPlotLegend1.Checked = false;
            else MenuPlotLegend1.Checked = true;

            legend1.Visible = MenuPlotLegend1.Checked;
            Properties.Settings.Default.GrpViewLegend1 = MenuPlotLegend1.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuModeZoom1_Click(object sender, EventArgs e)
        {
            if (MenuModeZoom1.Checked) GrpCtrlMode1 = 0;
            else GrpCtrlMode1 = 1;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);
        }

        private void MenuModeMove1_Click(object sender, EventArgs e)
        {
            if (MenuModeMove1.Checked) GrpCtrlMode1 = 0;
            else GrpCtrlMode1 = 2;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor10_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor10.Checked) GrpCtrlMode1 = 0;
            else GrpCtrlMode1 = 3;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);   
        }

        private void MenuModeCursor11_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor11.Checked) GrpCtrlMode1 = 3;
            else GrpCtrlMode1 = 4;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor12_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor12.Checked) GrpCtrlMode1 = 3;
            else GrpCtrlMode1 = 5;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor13_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor13.Checked) GrpCtrlMode1 = 3;
            else GrpCtrlMode1 = 6;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor14_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor14.Checked) GrpCtrlMode1 = 3;
            else GrpCtrlMode1 = 7;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor15_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor15.Checked) GrpCtrlMode1 = 3;
            else GrpCtrlMode1 = 8;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor16_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor16.Checked) GrpCtrlMode1 = 3;
            else GrpCtrlMode1 = 9;
            ApplyMenuGraphMode(1, GrpCtrlMode1);
            RefreshGraphMode(1);
        }

        private void MenuModeUndo1_Click(object sender, EventArgs e)
        {
            grp1.UndoZoomPan();
        }

        private void MenuModeInit1_Click(object sender, EventArgs e)
        {
            grp1.ResetZoomPan();
        }

        #endregion GrpMenu1

        #region GrpMenu2

        private void MenuPlotColor21_Click(object sender, EventArgs e)
        {
            ChgPlotColor(2, 1);
        }

        private void MenuPlotColor22_Click(object sender, EventArgs e)
        {
            ChgPlotColor(2, 2);
        }

        private void MenuPlotColor23_Click(object sender, EventArgs e)
        {
            ChgPlotColor(2, 3);
        }

        private void MenuPlotColor24_Click(object sender, EventArgs e)
        {
            ChgPlotColor(2, 4);
        }

        private void MenuPlotColor25_Click(object sender, EventArgs e)
        {
            ChgPlotColor(2, 5);
        }

        private void MenuPlotColor26_Click(object sender, EventArgs e)
        {
            ChgPlotColor(2, 6);
        }

        private void MenuAxisColor2_Click(object sender, EventArgs e)
        {
            ChgGrpAxisColor(2);
        }

        private void MenuGridColor2_Click(object sender, EventArgs e)
        {
            ChgGrpGridColor(2);
        }

        private void MenuBackColor2_Click(object sender, EventArgs e)
        {
            ChgGrpBackColor(2);
        }

        private void MenuPlotLine21_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(2,0, ref MenuPlotLine21);
            Properties.Settings.Default.GrpPlotLine21 = MenuPlotLine21.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint21_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(2, 0, ref MenuPlotPoint21);
            Properties.Settings.Default.GrpPlotPoint21 = MenuPlotPoint21.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine22_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(2, 1, ref MenuPlotLine22);
            Properties.Settings.Default.GrpPlotLine22 = MenuPlotLine22.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint22_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(2, 1, ref MenuPlotPoint22);
            Properties.Settings.Default.GrpPlotPoint22 = MenuPlotPoint22.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine23_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(2, 2, ref MenuPlotLine23);
            Properties.Settings.Default.GrpPlotLine23 = MenuPlotLine23.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint23_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(2, 2, ref MenuPlotPoint23);
            Properties.Settings.Default.GrpPlotPoint23 = MenuPlotPoint23.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine24_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(2, 3, ref MenuPlotLine24);
            Properties.Settings.Default.GrpPlotLine24 = MenuPlotLine24.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint24_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(2, 3, ref MenuPlotPoint24);
            Properties.Settings.Default.GrpPlotPoint24 = MenuPlotPoint24.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine25_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(2, 4, ref MenuPlotLine25);
            Properties.Settings.Default.GrpPlotLine25 = MenuPlotLine25.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint25_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(2, 4, ref MenuPlotPoint25);
            Properties.Settings.Default.GrpPlotPoint25 = MenuPlotPoint25.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLine26_Click(object sender, EventArgs e)
        {
            ChgPlotLineView(2, 5, ref MenuPlotLine26);
            Properties.Settings.Default.GrpPlotLine26 = MenuPlotLine26.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotPoint26_Click(object sender, EventArgs e)
        {
            ChgPlotPointView(2, 5, ref MenuPlotPoint26);
            Properties.Settings.Default.GrpPlotPoint26 = MenuPlotPoint26.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotGridX2_Click(object sender, EventArgs e)
        {
            if (MenuPlotGridX2.Checked) MenuPlotGridX2.Checked = false;
            else MenuPlotGridX2.Checked = true;

            grp2.XAxes[0].MajorDivisions.GridVisible = MenuPlotGridX2.Checked;
            Properties.Settings.Default.GrpAxisGridX2 = MenuPlotGridX2.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotGridY21_Click(object sender, EventArgs e)
        {
            if (MenuPlotGridY21.Checked) MenuPlotGridY21.Checked = false;
            else MenuPlotGridY21.Checked = true;

            grp2.YAxes[0].MajorDivisions.GridVisible = MenuPlotGridY21.Checked;
            Properties.Settings.Default.GrpAxisGridY21 = MenuPlotGridY21.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotGridY22_Click(object sender, EventArgs e)
        {
            if (MenuPlotGridY22.Checked) MenuPlotGridY22.Checked = false;
            else MenuPlotGridY22.Checked = true;

            grp2.YAxes[1].MajorDivisions.GridVisible = MenuPlotGridY22.Checked;
            Properties.Settings.Default.GrpAxisGridY22 = MenuPlotGridY22.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuPlotLegend2_Click(object sender, EventArgs e)
        {
            if (MenuPlotLegend2.Checked == true) MenuPlotLegend2.Checked = false;
            else MenuPlotLegend2.Checked = true;

            legend2.Visible = MenuPlotLegend2.Checked;
            Properties.Settings.Default.GrpViewLegend2 = MenuPlotLegend2.Checked;
            Properties.Settings.Default.Save();
        }

        private void MenuModeZoom2_Click(object sender, EventArgs e)
        {
            if (MenuModeZoom2.Checked) GrpCtrlMode2 = 0;
            else GrpCtrlMode2 = 1;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
        }

        private void MenuModeMove2_Click(object sender, EventArgs e)
        {
            if (MenuModeMove2.Checked) GrpCtrlMode2 = 0;
            else GrpCtrlMode2 = 2;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor20_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor20.Checked) GrpCtrlMode2 = 0;
            else GrpCtrlMode2 = 3;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
            
        }

        private void MenuModeCursor21_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor21.Checked) GrpCtrlMode2 = 3;
            else GrpCtrlMode2 = 4;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor22_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor22.Checked) GrpCtrlMode2 = 3;
            else GrpCtrlMode2 = 5;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor23_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor23.Checked) GrpCtrlMode2 = 3;
            else GrpCtrlMode2 = 6;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor24_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor24.Checked) GrpCtrlMode2 = 3;
            else GrpCtrlMode2 = 7;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor25_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor25.Checked) GrpCtrlMode2 = 3;
            else GrpCtrlMode2 = 8;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor26_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor26.Checked) GrpCtrlMode2 = 3;
            else GrpCtrlMode2 = 9;
            ApplyMenuGraphMode(2, GrpCtrlMode2);
            RefreshGraphMode(2);
        }

        private void MenuModeUndo2_Click(object sender, EventArgs e)
        {
            grp2.UndoZoomPan();
        }

        private void MenuModeInit2_Click(object sender, EventArgs e)
        {
            grp2.ResetZoomPan();
        }


        #endregion GrpMenu2

        private void lblprog_Load(object sender, EventArgs e)
        {

        }

        public void MaxWindowsProc(bool bmax)
        {
            bMaxWindow = bmax;
            if (bMaxWindow == false)
            {
                btSize.ImageKey = "max";
            }
            else
            {
                btSize.ImageKey = "normal";
            }
        }

        private void btSize_Click(object sender, EventArgs e)
        {
            
            evShowmax?.Invoke(this, e);
            
        }

        private void SelectTechFile()
        {
            string sch = ch.ToString();
            string filename = gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch];
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
            dlg.InitialDirectory = Path.GetDirectoryName(filename); //  gBZA.appcfg.PathSch;
            dlg.FileName = Path.GetFileName(filename);
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                filename = dlg.FileName;
                gBZA.appcfg.PathSch = Path.GetDirectoryName(dlg.FileName);
                gBZA.appcfg.Save();

                var Value = gBZA.ChLnkLst[sch];
                Value.mChInf.FileCond = filename;
                gBZA.ChLnkLst[sch] = Value;

                gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch] = filename;


                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            }
        }

        private void bttech_Click(object sender, EventArgs e)
        {
            SelectTechFile();
        }
        private void OpenTechFile(string filename)
        {
            frmTechniq frmTech = new frmTechniq(ch, filename);
            if (gBZA.appcfg.TechLocation == new Point(0, 0) || gBZA.appcfg.TechLocation.X  == -32000 || gBZA.appcfg.TechLocation.Y == -32000)
            {
                frmTech.StartPosition = FormStartPosition.CenterScreen;
            }
            else
            {
                frmTech.Location = gBZA.appcfg.TechLocation;
                frmTech.StartPosition = FormStartPosition.Manual;
            }

            frmTech.ShowDialog();
        }

        private void btTechEdit_Click(object sender, EventArgs e)
        {
            string sch = ch.ToString();
            string filename = gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch];
            eZimType type = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetZIMType();
            OpenTechFile(ch, filename,type);
        }

        private void btstart_Click(object sender, EventArgs e)
        {
            string sch = ch.ToString();
            var Value = gBZA.ChLnkLst[sch];

            

            if (btstart.ImageKey == "play")
            {
                if (File.Exists(Value.mChInf.FileCond) == false)
                {
                    MessageBox.Show("The technique file is not set or there is a problem.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
                    return;
                }

                List<int> lstch = new List<int>();
                lstch.Clear();
                lstch.Add(ch);

                frmStart frm = new frmStart(false,lstch);
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    MBZA_MapUtil.CtrlStart(serial, sifch, false);
                }
            }
            else
            {
                if (MessageBox.Show("Are you sure you want to end the test process ?", gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    MBZA_MapUtil.CtrlStop(serial, sifch);
                }
            }
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
            OpenResGraph(slist);
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
            catch (Exception)
            {
                //Console.WriteLine(string.Format("Cannot find IVMan path in registry. [{0}]", ex.Message));

                return string.Empty;
            }

            return result;
        }

        private void OpenDataEditor(string filename, int type = 2) // type 0 : General, 1 : Cycle, 2 : Eis
        {
            DataEditorForm deForm = new DataEditorForm(true, true);
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
            deForm.LoadData(filename, type);
        }

        private void EgForm_OpenDataEditorClick(object sender, EventArgs e)
        {
            DataViewerEventArgs dvea = (DataViewerEventArgs)e;

            OpenDataEditor(dvea.DataFileName);
        }
        
        private bool SaveTempTechFileofResFile(string filename, ref string techfullpath, ref eZimType type)
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
                stTech mtech = new stTech(enTechType.TECH_EIS);
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


                if (fc.Save(techfullpath, mtech) == false)
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

        private void OpenTechFile(int ch, string filename, eZimType type = eZimType.UNKNOWN)
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

            if(frmTech.bopen)  frmTech.ShowDialog();
        }

        private void EgForm_OpenTechEditorClick(object sender, EventArgs e)
        {
            DataViewerEventArgs dvea = (DataViewerEventArgs)e;
            string stechfile = "";
            eZimType type = eZimType.UNKNOWN;

            if (SaveTempTechFileofResFile(dvea.DataFileName, ref stechfile, ref type) == false)
            {
                MessageBox.Show("Failed to generate tested technical file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            
            OpenTechFile(ch, stechfile, type);
        }


        private void btgrp_Click(object sender, EventArgs e)
        {

            string filename = gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch];

            string[] sfile = new string[1];
            sfile[0] = filename;

            OpenResGraph(sfile);
        }

        private void btreport_Click(object sender, EventArgs e)
        {
            string filename = gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch];

            OpenDataEditor(filename);
        }

        private void btabout_Click(object sender, EventArgs e)
        {
            var panelControl = new PanelAbout() { Pairs = About.ToKeyValuePairs() };
            panelControl.BorderStyle = BorderStyle.FixedSingle;

            var popupPanel = new PopupPanel(panelControl);
            popupPanel.ShowingAnimation = PopupAnimations.Slide | PopupAnimations.TopToBottom;
            popupPanel.HidingAnimation = PopupAnimations.Slide | PopupAnimations.BottomToTop;
            popupPanel.AutoSize = true;
            popupPanel.Show(btabout);
        }

        private void btloaddata_Click(object sender, EventArgs e)
        {
            if (gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status.rescount < 1)
            {
                gBZA.ShowInfoBox("The requested operation cannot proceed because test result data is not available.");
                return;
            }

            SaveFileDialog saveDlg = new SaveFileDialog();

            

            saveDlg.Title = "Reload and saving result data file of ZM.";
            saveDlg.DefaultExt = "*.zmf";
            saveDlg.Filter = "Result data files of ZM (*.zmf) |*.zmf";
            saveDlg.OverwritePrompt = true;
            saveDlg.InitialDirectory =  Path.GetDirectoryName(gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch]);
            saveDlg.FileName = Path.GetFileName(gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch]);

            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }


            gBZA.appcfg.PathData = Path.GetDirectoryName(saveDlg.FileName);
            gBZA.appcfg.Save();

            

            var Value = gBZA.ChLnkLst[sch];
            Value.mChInf.FileResult = saveDlg.FileName;
            gBZA.ChLnkLst[sch] = Value;

            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);

            gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch] = saveDlg.FileName;
        }

        private void grp1_Resize(object sender, EventArgs e)
        {
            RefreshLegendSize(1);
        }

        private void grp2_Resize(object sender, EventArgs e)
        {
            RefreshLegendSize(2);
        }

        private void legend1_MouseDown(object sender, MouseEventArgs e)
        {
            LegendMove1 = true;
            LegendPointS1 = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
        }

        private void legend1_MouseMove(object sender, MouseEventArgs e)
        {
            if (LegendMove1 == false) return;
            LegendPointE1 = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
            Point temp = new Point((legend1.Location.X + (LegendPointE1.X - LegendPointS1.X)),
                            (legend1.Location.Y + (LegendPointE1.Y - LegendPointS1.Y)));
            LegendPointS1 = LegendPointE1;
            legend1.Location = temp;
        }

        private void legend1_MouseUp(object sender, MouseEventArgs e)
        {
            LegendMove1 = false;
        }

        private void legend2_MouseDown(object sender, MouseEventArgs e)
        {
            LegendMove2 = true;
            LegendPointS2 = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
        }

        private void legend2_MouseMove(object sender, MouseEventArgs e)
        {
            if (LegendMove2 == false) return;
            LegendPointE2 = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
            Point temp = new Point((legend2.Location.X + (LegendPointE2.X - LegendPointS2.X)),
                            (legend2.Location.Y + (LegendPointE2.Y - LegendPointS2.Y)));
            LegendPointS2 = LegendPointE2;
            legend2.Location = temp;
        }

        private void legend2_MouseUp(object sender, MouseEventArgs e)
        {
            
            LegendMove2 = false;
        }

        private void Rtlegend_MouseDown(object sender, MouseEventArgs e)
        {
            LegendMove0 = true;
            LegendPointS0 = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
        }

        private void Rtlegend_MouseMove(object sender, MouseEventArgs e)
        {
            if (LegendMove0 == false) return;
            LegendPointE0 = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
            Point temp = new Point((Rtlegend.Location.X + (LegendPointE0.X - LegendPointS0.X)),
                            (Rtlegend.Location.Y + (LegendPointE0.Y - LegendPointS0.Y)));
            LegendPointS0 = LegendPointE0;
            Rtlegend.Location = temp;
        }

        private void Rtlegend_MouseUp(object sender, MouseEventArgs e)
        {
            LegendMove0 = false;
            
        }

        private void MenuResopenFileLocation_Click(object sender, EventArgs e)
        {
            string filename = gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch];
            string sfolder = Path.GetDirectoryName(filename);
            if (Directory.Exists(sfolder))
            {
                Process.Start(sfolder);
            }
            else
            {
                MessageBox.Show("The log file could not be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void MenuTechopenFileLocation_Click(object sender, EventArgs e)
        {
            string filename = gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch];
            string sfolder = Path.GetDirectoryName(filename);
            if (Directory.Exists(sfolder))
            {
                Process.Start(sfolder);
            }
            else
            {
                MessageBox.Show("The log file could not be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
        }

        private void MenuTechopenFile_Click(object sender, EventArgs e)
        {
           
            string filename = gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch];
            eZimType type = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetZIMType();
            OpenTechFile(ch, filename,type);
        }

        private void MenuResopenFilegraph_Click(object sender, EventArgs e)
        {
            string filename = gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch];
            string[] sfile = new string[1];
            sfile[0] = filename;
            OpenResGraph(sfile);
        }

        private void MenuResopenFilereport_Click(object sender, EventArgs e)
        {
            string filename = gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch];

            OpenDataEditor(filename);
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
        private void OpenResGraph(string[] filename = null)
        {
            EisGraphForm egForm = new EisGraphForm(0, new GraphSet(), new DataManager.CommClass.GraphSetEx(2), true);
            egForm.MsgBoxCaption = AppTitle;
            egForm.EnAlwaysOpenPath = true;
            egForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            egForm.ZManPath = GetZManPath();
            egForm.AllowTransparency = false;
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

        public void MakeAppTitle()
        {
            string str = Assembly.GetExecutingAssembly().GetName().ToString();
            int i0 = str.IndexOf(',', 0);
            int i1 = i0 + 10;
            int i2 = str.IndexOf(',', i1);
            AppVer = str.Substring(i1, i2 - i1).Trim();
            AppTitle = str.Substring(0, i0) + " " + AppVer;
        }

        private void MenuTechchangeTechFile_Click(object sender, EventArgs e)
        {
            SelectTechFile();
        }

        private void lblCapa_Click(object sender, EventArgs e)
        {

        }

        private void pauseRefreshToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (bRtGrpPause) bRtGrpPause = false;
            else bRtGrpPause = true;
        }

        private void grp1_CursorChanged(object sender, EventArgs e)
        {
            
        }

        private void grp1_PlotAreaMouseDown(object sender, MouseEventArgs e)
        {

        }

        private void grp1_PlotAreaMouseMove(object sender, MouseEventArgs e)
        {
            if (GrpCtrlMode1 > 3)
            {
                if (this.tabgrp.TabPages.Contains(this.tabPage3) == false)
                {
                    lblcsfreq1.Visible = false;
                    grp1.CaptionVisible = false;
                    return;
                }
                int idx = grp1.Cursors[0].GetCurrentIndex();
                if (oldcursorindex1 != idx)
                {
                    oldcursorindex1 = idx;
                    if (idx < 0) return;
                    if (idx >= gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].freq[0].Count) return;
                    double freq = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[0].freq[0][idx];
                    if (freq >= 1000.0)
                    {
                        lblcsfreq1.Text = string.Format("Freq.: {0,8:###0.0##}KHz", freq * 0.001);
                    }
                    else if (freq >= 1.0)
                    {
                        lblcsfreq1.Text = string.Format("Freq.: {0,8:###0.0##} Hz", freq);
                    }
                    else
                    {
                        lblcsfreq1.Text = string.Format("Freq.: {0,8:###0.0##}mHz", freq * 1000.0);
                    }
                    
                }
                if (lblcsfreq1.Visible == false)
                {
                    grp1.CaptionVisible = true;
                    lblcsfreq1.Visible = true;
                }
                return;
            }
            if (lblcsfreq1.Visible == true)
            {
                lblcsfreq1.Visible = false;
                grp1.CaptionVisible = false;
            }
        }

        private void grp1_PlotAreaMouseUp(object sender, MouseEventArgs e)
        {

        }

        private void grp2_PlotAreaMouseMove(object sender, MouseEventArgs e)
        {
            if (GrpCtrlMode2 > 3)
            {
                if (this.tabgrp.TabPages.Contains(this.tabPage3) == false)
                {
                    lblcsfreq2.Visible = false;
                    grp2.CaptionVisible = false;
                    return;
                }

                if (gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].type > 0)
                {
                    int idx = grp2.Cursors[0].GetCurrentIndex();
                    if (oldcursorindex2 != idx)
                    {
                        oldcursorindex2 = idx;
                        if (idx < 0) return;
                        if (idx >= gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].freq[0].Count) return;

                        double freq = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[2].freq[0][idx];
                        if (freq >= 1000.0)
                        {
                            lblcsfreq2.Text = string.Format("Freq.: {0,8:###0.0##}KHz", freq * 0.001);
                        }
                        else if (freq >= 1.0)
                        {
                            lblcsfreq2.Text = string.Format("Freq.: {0,8:###0.0##} Hz", freq);
                        }
                        else
                        {
                            lblcsfreq2.Text = string.Format("Freq.: {0,8:###0.0##}mHz", freq * 1000.0);
                        }
                    }
                    if(lblcsfreq2.Visible == false)
                    {
                        grp2.CaptionVisible = true;
                        lblcsfreq2.Visible = true;
                    }
                    return;
                }
            }
            if (lblcsfreq2.Visible == true)
            {
                lblcsfreq2.Visible = false;
                grp2.CaptionVisible = false;
            }
        }
    }   
    
}
