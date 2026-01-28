using System;
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
using System.Runtime.InteropServices;
using ZiveLab.ZM.Dataview;

namespace ZiveLab.ZM
{
    public partial class BZAChPan : UserControl
    {
        public int ch;
        public string sch;
        public stLinkSifCh lnkch;
        public string serial;
        public int sifch;

        public st_GrpCh_vars grpvars;

        MBZA_ChannelInfo About;

        ToolTip toolTip;
        bool xTimemode0;
        bool xTimemode1;
        FormatString fs_ss;
        FormatString fs_mm;
        FormatString fs_hh;
        FormatString fs_dd;

        ImageList imageList;
        stTech_EIS techeis;
        stTech_HFR techhfr;
        stTech_PRR techprr;
        stTech_MON techmon;
        stTech_QIS techqis;
        stTech_DCH techdch;

        public int GraphSizeMode;
        public bool bMaxWindow;

        string AppTitle;
        string AppVer;

        public Form MdiParent;

        public event EventHandler evShowmax;

        public int OldTechType;

        
        public BZAChPan(int ich, ref EventHandler evtimer, EventHandler evshowmax, Form tMdiparent)
        {
            InitializeComponent();
            DoubleBuffered = true;
            AuxDataView1.Visible = false;
            tabgrp.TabPages.Remove(Raw_DataPage);
            
            MdiParent = tMdiparent;
            fs_ss = new FormatString(FormatStringMode.ElapsedTime, @"ss");
            fs_mm = new FormatString(FormatStringMode.ElapsedTime, @"m\:ss");
            fs_hh = new FormatString(FormatStringMode.ElapsedTime, @"h\:mm\:ss");
            fs_dd = new FormatString(FormatStringMode.ElapsedTime, @"d\.hh\:mm\:ss");

            techeis = new stTech_EIS(0);
            techhfr = new stTech_HFR(0);
            techprr = new stTech_PRR(0);
            techmon = new stTech_MON(0);
            techqis = new stTech_QIS(0);
            techdch = new stTech_DCH(0);

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

            toolTip.RemoveAll();
            
            toolTip.SetToolTip(this.bttech, "Select the schedule file to use for testing.");
            toolTip.SetToolTip(this.btTechEdit, "Check or edit the contents of the selected schedule file.");
            toolTip.SetToolTip(this.btstart, "Start or stop testing.");
            toolTip.SetToolTip(this.btloaddata, "Receive or stop receiving results on channel.");
            toolTip.SetToolTip(this.btgrp, "Displays the current result file as a graph.");
            toolTip.SetToolTip(this.btreport, "Displays the current result file as a report.");
            toolTip.SetToolTip(this.btabout, "Shows channel information.");
            toolTip.SetToolTip(this.btSize, "Select the size of the channel window as maximum or normal size.");
            toolTip.SetToolTip(this.grprt, "Double-click the graph to change the size of the window to maximum or normal size.");
            toolTip.SetToolTip(this.grp1, "Double-click the graph to change the size of the window to maximum or normal size.");
            toolTip.SetToolTip(this.grp2, "Double-click the graph to change the size of the window to maximum or normal size.");
            toolTip.SetToolTip(this.lbldatacount, "Display the number of data stored in the data file and the number of data points in BZA memory.\r\n Data number of result file (data number of BZA memory).");
            
            toolTip.SetToolTip(this.lblTech, "");
            toolTip.SetToolTip(this.lblResult, "");

            toolTip.AutoPopDelay = 3000;
            toolTip.InitialDelay = 500;
            toolTip.ReshowDelay = 500;

            toolTip.ShowAlways = true;
            toolTip.IsBalloon = true;


            grpvars = new st_GrpCh_vars();


            bool isMCBZA = gBZA.IsMCBZA(serial);

            if (isMCBZA)
            {
                grpvars.bAux = true;
                grpvars.nAuxChCount = 0;

                int idx = 0;
                int nAuxBd, nAuxBdCh;
                grpvars.GrpObjs[idx].bExist = true;
                grpvars.GrpObjs[idx].nAuxCh = -1;
                idx++;
                for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                {
                    nAuxBd = (i - 1) / MBZA_Constant.MAX_AUX_CHANNEL + 1;
                    nAuxBdCh = (i - 1) % MBZA_Constant.MAX_AUX_CHANNEL;
                    if (gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.EnaZIM[nAuxBd] == 1
                        && gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.ChkZIM[nAuxBd] == 1)
                    {
                        grpvars.GrpObjs[idx].bExist = true;
                        grpvars.GrpObjs[idx].nAuxCh = i - 1;
                        grpvars.nAuxChCount++;
                        idx++;
                    }
                }
            }


            GraphSizeMode = 0;
            xTimemode0 = false;
            xTimemode1 = false;

            evtimer += new EventHandler(TimerProc);
            evShowmax += evshowmax;

            lblprog.LabelText = string.Format("Channel {0:00}", ch + 1);
            lblprog.Prog_Max = 1000;
            lblprog.Prog_Min = 0;
            lblprog.Prog_Val = 0;
            lblprog.Prog_Color = Color.DarkGray;
           
            InitRtGraph();
            RawRtGraph();
            InitGraph1();
            InitGraph2();
            

            MakeAppTitle();

            OldTechType = -1;
            InitGraphType();
            RefreshGraphSize();
            RefreshTestInformation();
        }


        #region Grpinit
        private void InitRtGraph()
        {
            grpvars.GrpItemsRT.Type = 0;
            grpvars.GrpItemsRT.PlotCount = 1;
            grprt.ClearData();
            grprt.Plots.Clear();

            grprt.XAxes[0].Caption = "Voltage(V)";
            grprt.XAxes[0].CaptionVisible = true;
            grprt.XAxes[0].CaptionForeColor = grpvars.GrpItemsRT.Axis_Color;
            grprt.XAxes[0].MajorDivisions.TickColor = grpvars.GrpItemsRT.Axis_Color;
            grprt.XAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItemsRT.Axis_Color;
            grprt.XAxes[0].MajorDivisions.LabelVisible = true;
            grprt.XAxes[0].MajorDivisions.GridColor = grpvars.GrpItemsRT.GridColor;
            grprt.XAxes[0].MajorDivisions.GridVisible = grpvars.GrpItemsRT.ShowGrid;
            grprt.XAxes[0].MajorDivisions.TickVisible = true;
            grprt.XAxes[0].MinorDivisions.TickColor = grpvars.GrpItemsRT.Axis_Color;
            grprt.XAxes[0].MinorDivisions.GridColor = grpvars.GrpItemsRT.GridColor;
            grprt.XAxes[0].MinorDivisions.TickVisible = false;
            grprt.XAxes[0].MinorDivisions.GridVisible = false;
            grprt.YAxes[0].AutoSpacing = true;


            grprt.YAxes[0].Caption = "Current(A)";
            grprt.YAxes[0].CaptionVisible = true;
            grprt.YAxes[0].CaptionForeColor = grpvars.GrpItemsRT.Axis_Color;
            grprt.YAxes[0].MajorDivisions.TickColor = grpvars.GrpItemsRT.Axis_Color;
            grprt.YAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItemsRT.Axis_Color;
            grprt.YAxes[0].MajorDivisions.LabelVisible = true;
            grprt.YAxes[0].MajorDivisions.GridColor = grpvars.GrpItemsRT.GridColor;
            grprt.YAxes[0].MajorDivisions.TickVisible = true;
            grprt.YAxes[0].MajorDivisions.GridVisible = grpvars.GrpItemsRT.ShowGrid;
            grprt.YAxes[0].MinorDivisions.TickColor = grpvars.GrpItemsRT.Axis_Color;
            grprt.YAxes[0].MinorDivisions.GridColor = grpvars.GrpItemsRT.GridColor;
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

            grprt.PlotAreaColor = grpvars.GrpItemsRT.BackColor;
            grprt.PlotAreaBorder = Border.Dotted;

            ScatterPlot tPlot;
            for(int i=0; i< grpvars.nAuxChCount + 1; i++)
            {
                tPlot = new ScatterPlot(grprt.XAxes[0], grprt.YAxes[0]);
                tPlot.LineColor = grpvars.GrpItemsRT.PlotColor[i*2];
                tPlot.PointColor = grpvars.GrpItemsRT.PlotColor[i * 2];
                tPlot.SmoothUpdates = true;
                grprt.Plots.Add(tPlot);

                tPlot = new ScatterPlot(grprt.XAxes[0], grprt.YAxes[1]);
                tPlot.LineColor = grpvars.GrpItemsRT.PlotColor[i * 2+1];
                tPlot.PointColor = grpvars.GrpItemsRT.PlotColor[i * 2+1];
                tPlot.SmoothUpdates = true;
                grprt.Plots.Add(tPlot);
            }

        

            

            


            RtMenuGraphLine.Checked = Properties.Settings.Default.RtGrp_Plot_ViewLine;
            RtMenuGraphPoint.Checked = Properties.Settings.Default.RtGrp_Plot_ViewPoint;
            RtMenuGraphGrid.Checked = Properties.Settings.Default.RtGrp_GridView;
            RtMenuGraphLegend.Checked = Properties.Settings.Default.RtGrpLegendView;
            Rtlegend.Visible = Properties.Settings.Default.RtGrpLegendView;
            Properties.Settings.Default.RtGrpLegendView = MenuPlotLegend1.Checked;

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
            grprt.YAxes[0].Visible = true;
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

            RefreshRt();
        }

        private void RawRtGraph() // Raw Data Test code
        {
            rtmode = 0;

            rawgrp.PlotAreaColor = Properties.Settings.Default.RtGrp_BackColor;
            rawgrp.PlotAreaBorder = Border.Dotted;

            rawgrp.Plots[0].LineColor = Properties.Settings.Default.RtGrp_Plot1_Color;
            rawgrp.Plots[0].PointColor = Properties.Settings.Default.RtGrp_Plot1_Color;
            rawgrp.Plots[0].SmoothUpdates = true;
            rawgrp.Plots[1].LineColor = Properties.Settings.Default.RtGrp_Plot2_Color;
            rawgrp.Plots[1].PointColor = Properties.Settings.Default.RtGrp_Plot2_Color;
            rawgrp.Plots[1].SmoothUpdates = true;

            rawgrp.XAxes[0].Caption = "Voltage(V)";
            rawgrp.XAxes[0].CaptionVisible = true;
            rawgrp.XAxes[0].CaptionForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.XAxes[0].MajorDivisions.LabelVisible = true;
            rawgrp.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            rawgrp.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            rawgrp.XAxes[0].MajorDivisions.TickVisible = true;
            rawgrp.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.XAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            rawgrp.XAxes[0].MinorDivisions.TickVisible = false;
            rawgrp.XAxes[0].MinorDivisions.GridVisible = false;
            rawgrp.YAxes[0].AutoSpacing = true;

            rawgrp.YAxes[0].Caption = "Current(A)";
            rawgrp.YAxes[0].CaptionVisible = true;
            rawgrp.YAxes[0].CaptionForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.YAxes[0].MajorDivisions.LabelVisible = true;
            rawgrp.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            rawgrp.YAxes[0].MajorDivisions.TickVisible = true;
            rawgrp.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            rawgrp.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.YAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            rawgrp.YAxes[0].MinorDivisions.TickVisible = false;
            rawgrp.YAxes[0].MinorDivisions.GridVisible = false;
            rawgrp.YAxes[0].AutoSpacing = true;

            rawgrp.YAxes[1].Caption = "";
            rawgrp.YAxes[1].CaptionVisible = true;
            rawgrp.YAxes[1].CaptionForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.YAxes[1].MajorDivisions.LabelVisible = true;
            rawgrp.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            rawgrp.YAxes[1].MajorDivisions.TickVisible = true;

            rawgrp.YAxes[1].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            rawgrp.YAxes[1].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            rawgrp.YAxes[1].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            rawgrp.YAxes[1].MinorDivisions.GridVisible = false;
            rawgrp.YAxes[1].MinorDivisions.TickVisible = false;
            rawgrp.YAxes[1].AutoSpacing = true;

            RtMenuGraphLine.Checked = Properties.Settings.Default.RtGrp_Plot_ViewLine;
            RtMenuGraphPoint.Checked = Properties.Settings.Default.RtGrp_Plot_ViewPoint;
            RtMenuGraphGrid.Checked = Properties.Settings.Default.RtGrp_GridView;
            RtMenuGraphLegend.Checked = Properties.Settings.Default.RtGrpLegendView;
            Rtlegend.Visible = Properties.Settings.Default.RtGrpLegendView;
            Properties.Settings.Default.RtGrpLegendView = MenuPlotLegend1.Checked;

            rawgrp.Plots[0].LineWidth = DeviceConstants.Linewidth;
            rawgrp.Plots[0].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            rawgrp.Plots[1].LineWidth = DeviceConstants.Linewidth;
            rawgrp.Plots[1].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);

            if (Properties.Settings.Default.RtGrp_Plot_ViewLine)
            {
                rawgrp.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
                rawgrp.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            }
            else
            {
                rawgrp.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
                rawgrp.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
            }

            if (Properties.Settings.Default.RtGrp_Plot_ViewPoint)
            {
                rawgrp.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                rawgrp.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            }
            else
            {
                rawgrp.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
                rawgrp.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
            }
            rawgrp.YAxes[0].Visible = true;
            if (rtmode == 0)
            {
                RtMenuGraphMode1.Checked = true;
                rawgrp.YAxes[1].Visible = false;
                RtMenuGraphMode2.Checked = false;
            }
            else
            {
                RtMenuGraphMode1.Checked = false;
                rawgrp.YAxes[1].Visible = true;
                RtMenuGraphMode2.Checked = true;
            }
            Rtlegend.Width = 82;
        }

        private Point lastMousePos;
        private bool isDragging = false;
        private void rawgrp_MouseWheel(object sender, MouseEventArgs e) // 확대 및 축소
        {
            double zoomFactor = (e.Delta > 0) ? 0.9 : 1.1;

            var xAxis = rawgrp.XAxes[0];
            var yAxis = rawgrp.YAxes[0];

            double xMin = xAxis.Range.Minimum;
            double xMax = xAxis.Range.Maximum;
            double yMin = yAxis.Range.Minimum;
            double yMax = yAxis.Range.Maximum;

            double xMid = (xMin + xMax) / 2.0;
            double yMid = (yMin + yMax) / 2.0;

            double newHalfX = (xMax - xMin) * zoomFactor / 2.0;
            double newHalfY = (yMax - yMin) * zoomFactor / 2.0;

            double newXMin = xMid - newHalfX;
            double newXMax = xMid + newHalfX;
            double newYMin = yMid - newHalfY;
            double newYMax = yMid + newHalfY;

            const double MIN_X_RANGE = 0.001;
            const double MIN_Y_RANGE = 0.001;

            if ((newXMax - newXMin) > MIN_X_RANGE)
                xAxis.Range = new Range(newXMin, newXMax);

            if ((newYMax - newYMin) > MIN_Y_RANGE)
                yAxis.Range = new Range(newYMin, newYMax);
        }
        private void rawgrp_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                lastMousePos = e.Location;
                isDragging = true;
            }
        }

        private void rawgrp_MouseMove(object sender, MouseEventArgs e)
        {
            if (isDragging)
            {
                var xAxis = rawgrp.XAxes[0];
                var yAxis = rawgrp.YAxes[0];

                double dx = rawgrp.PlotAreaBounds.Width != 0 ?
                    (e.X - lastMousePos.X) * (xAxis.Range.Maximum - xAxis.Range.Minimum) / rawgrp.PlotAreaBounds.Width : 0;

                double dy = rawgrp.PlotAreaBounds.Height != 0 ?
                    (e.Y - lastMousePos.Y) * (yAxis.Range.Maximum - yAxis.Range.Minimum) / rawgrp.PlotAreaBounds.Height : 0;

                xAxis.Range = new Range(xAxis.Range.Minimum - dx, xAxis.Range.Maximum - dx);
                yAxis.Range = new Range(yAxis.Range.Minimum + dy, yAxis.Range.Maximum + dy);

                lastMousePos = e.Location;
            }
        }

        private void rawgrp_MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                isDragging = false;
            }
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

            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine11) grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint11) grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor11;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor11;
            grp1.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine12) grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint12) grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor12;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor12;
            grp1.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine13) grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint13) grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor13;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor13;
            grp1.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine14) grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint14) grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor14;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor14;
            grp1.Plots[nPlot].SmoothUpdates = true;


            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine15) grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint15) grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor15;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor15;
            grp1.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine16) grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint16) grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor16;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor16;
            grp1.Plots[nPlot].SmoothUpdates = true;

            grp1.Plots[0].LineWidth = DeviceConstants.Linewidth; // 0206 6
            grp1.Plots[0].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight); // 0206 6
            grp1.Plots[0].HistoryCapacity = 100000;  // 0206 6


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

            grp1.Cursors[0].LabelBackColor = Properties.Settings.Default.GrpBackColor1;

            legend1.Visible = Properties.Settings.Default.GrpViewLegend1;
            MenuPlotLegend1.Checked = Properties.Settings.Default.GrpViewLegend1;

            GrpCtrlMode1 = 0;
            lblcsfreq1.Visible = false;
            grp1.CaptionVisible = false;

            grp1.ClearData();


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

            int nPlot = 2; //0206 0
            grp2.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp2.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine21) grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint21) grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp2.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor21;
            grp2.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor21;
            grp2.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp2.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp2.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine22) grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint22) grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp2.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor22;
            grp2.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor22;
            grp2.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp2.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp2.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine23) grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint23) grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp2.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor23;
            grp2.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor23;
            grp2.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp2.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp2.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine24) grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint24) grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp2.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor24;
            grp2.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor24;
            grp2.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp2.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp2.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine25) grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint25) grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp2.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor25;
            grp2.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor25;
            grp2.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp2.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp2.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp2.Plots[nPlot].HistoryCapacity = 100000;
            if (Properties.Settings.Default.GrpPlotLine26) grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.GrpPlotPoint26) grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp2.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor26;
            grp2.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor26;
            grp2.Plots[nPlot].SmoothUpdates = true;


            grp2.Plots[0].LineWidth = DeviceConstants.Linewidth; // 0206 6
            grp2.Plots[0].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight); // 0206 6
            grp2.Plots[0].HistoryCapacity = 100000; // 0206 6

            grp2.Plots[1].LineWidth = DeviceConstants.Linewidth; // 0206 7
            grp2.Plots[1].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight); // 0206 7
            grp2.Plots[1].HistoryCapacity = 100000;  // 0206 7

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

            grp2.Cursors[0].LabelBackColor = Properties.Settings.Default.GrpBackColor2;

            legend2.Visible = Properties.Settings.Default.GrpViewLegend2;
            MenuPlotLegend2.Checked = Properties.Settings.Default.GrpViewLegend2;

            grp2.ClearData();

            GrpCtrlMode2 = 0;
            lblcsfreq2.Visible = false;
            grp2.CaptionVisible = false;
            ApplyGraphModeMenu(2);
            RefreshGraphMode(2);
        }


        private void InitGraphType(bool brefresgraph = true)
        {
            if (gBZA.SifLnkLst.ContainsKey(serial) == false)
            {
                return;
            }
            if (OldTechType != gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type || brefresgraph == true)
            {
                OldTechType = gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;
                if ((enTechType)OldTechType == enTechType.TECH_MON || (enTechType)OldTechType == enTechType.TECH_DCH)
                {
                    if (this.tabgrp.TabPages.Contains(this.TabGrp2) == true) this.tabgrp.TabPages.Remove(this.TabGrp2);
                    legend2.Visible = false;
                    if (this.tabgrp.TabPages.Contains(this.TabGrpRaw) == true) this.tabgrp.TabPages.Remove(this.TabGrpRaw);
                    Rtlegend.Visible = false;
                }
                else
                {
                    if (this.tabgrp.TabPages.Contains(this.TabGrp2) == false) this.tabgrp.TabPages.Add(this.TabGrp2);
                    legend2.Visible = Properties.Settings.Default.GrpViewLegend2;
                    if (this.tabgrp.TabPages.Contains(this.TabGrpRaw) == false) this.tabgrp.TabPages.Add(this.TabGrpRaw);
                    Rtlegend.Visible = Properties.Settings.Default.RtGrpLegendView;
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
                else if ((enTechType)OldTechType == enTechType.TECH_DCH)
                {
                    InitGraphDCH();
                }
                else
                {
                    InitGraphEIS();
                }

                LastPlotPoint = 0;
                auxLastPlotPoint0 = 0;
                auxLastPlotPoint1 = 0;
                auxLastPlotPoint2 = 0;
                //auxLastPlotPoint3 = 0;
                //auxLastPlotPoint4 = 0;
                LastPlotPoint1 = 0;
                LastPlotPoint2 = 0;
                LastPlotPoint3 = 0;
                LastPlotPoint4 = 0;
                LastPlotPoint5 = 0;
                LastPlotPoint6 = 0;
                LastPlotPoint7 = 0;
                LastPlotPoint8 = 0;
                LastPlotPoint9 = 0;
                LastPlotPoint10 = 0;
                LastPlotPoint11 = 0;
                LastPlotPoint12 = 0;
                LastPlotPoint13 = 0;
                LastPlotPoint14 = 0;
                LastPlotPoint15 = 0;
                LastPlotPoint16 = 0;
                LastPlotPoint17 = 0;
                LastPlotPoint18 = 0;
                LastPlotPoint19 = 0;
                LastPlotPoint20 = 0;
                LastPlotPoint21 = 0;
                LastPlotPoint22 = 0;
                LastPlotPoint23 = 0;
                LastPlotPoint24 = 0;
                LastPlotPoint25 = 0;

                bodePlotPoint0 = 0;
                bodePlotPoint1 = 0;
                bodePlotPoint2 = 0;
                bodePlotPoint3 = 0;
                bodePlotPoint4 = 0;
                bodePlotPoint5 = 0;
                bodePlotPoint6 = 0;
                bodePlotPoint7 = 0;
                bodePlotPoint8 = 0;
                bodePlotPoint9 = 0;
                bodePlotPoint10 = 0;
                bodePlotPoint11 = 0;
                bodePlotPoint12 = 0;
                bodePlotPoint13 = 0;
                bodePlotPoint14 = 0;
                bodePlotPoint15 = 0;
                bodePlotPoint16 = 0;
                bodePlotPoint17 = 0;
                bodePlotPoint18 = 0;
                bodePlotPoint19 = 0;
                bodePlotPoint20 = 0;
                bodePlotPoint21 = 0;
                bodePlotPoint22 = 0;
                bodePlotPoint23 = 0;
                bodePlotPoint24 = 0;
                bodePlotPoint25 = 0;
                bodePlotPoint26 = 0;
                bodePlotPoint27 = 0;
                bodePlotPoint28 = 0;
                bodePlotPoint29 = 0;
                bodePlotPoint30 = 0;
                bodePlotPoint31 = 0;
                bodePlotPoint32 = 0;
                bodePlotPoint33 = 0;
                bodePlotPoint34 = 0;
                bodePlotPoint35 = 0;
                bodePlotPoint36 = 0;
                bodePlotPoint37 = 0;
                bodePlotPoint38 = 0;
                bodePlotPoint39 = 0;
                bodePlotPoint40 = 0;
                bodePlotPoint41 = 0;
                bodePlotPoint42 = 0;
                bodePlotPoint43 = 0;
                bodePlotPoint44 = 0;
                bodePlotPoint45 = 0;
                bodePlotPoint46 = 0;
                bodePlotPoint47 = 0;

                grp1.ClearData();
                grp2.ClearData();

                GrpCtrlMode1 = 0;
                GrpCtrlMode2 = 0;
                ApplyMenuGraphMode(1, GrpCtrlMode1);
                ApplyMenuGraphMode(2, GrpCtrlMode2);

                RefreshGraphMode(1);
                RefreshGraphMode(2);
                RefreshLegendSize();
            }
        }

        private void InitGraphQIS()
        {
            int nPlot;
            TabGrpRaw.Text = "AC waveform";
            TabGrp1.Text = "Nyquist plot";

            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            xTimemode0 = false;

            grp1.YAxes[0].Caption = "-Z image(Ω)";
            grp1.YAxes[1].Caption = "";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = false;
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");

            nPlot = 1; // 0206 0
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

            nPlot++;
            grp1.Plots[nPlot].Visible = false;
            nPlot++;
            grp1.Plots[nPlot].Visible = false;
            nPlot++;
            grp1.Plots[nPlot].Visible = false;
            nPlot++;
            grp1.Plots[nPlot].Visible = false;
            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            grp1.Plots[0].Visible = true; // 0206 6

            legend1.Items[0].Text = "-Zimg";
            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = false;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;

            legend1.Items[6].Text = "-Zimg";
            legend1.Items[6].Visible = true;

            legend1.Items[7].Text = "-A1Zimg";
            legend1.Items[8].Text = "-A1Zimg";
            legend1.Items[9].Text = "-A2Zimg";
            legend1.Items[10].Text = "-A2Zimg";
            legend1.Items[11].Text = "-A3Zimg";
            legend1.Items[12].Text = "-A3Zimg";
            legend1.Items[13].Text = "-A4Zimg";
            legend1.Items[14].Text = "-A4Zimg";
            legend1.Items[15].Text = "-A5Zimg";
            legend1.Items[16].Text = "-A5Zimg";
            legend1.Items[17].Text = "-A6Zimg";
            legend1.Items[18].Text = "-A6Zimg";
            legend1.Items[19].Text = "-A7Zimg";
            legend1.Items[20].Text = "-A7Zimg";
            legend1.Items[21].Text = "-A8Zimg";
            legend1.Items[22].Text = "-A8Zimg";
            legend1.Items[23].Text = "-A9Zimg";
            legend1.Items[24].Text = "-A9Zimg";
            legend1.Items[25].Text = "-A10Zimg";
            legend1.Items[26].Text = "-A10Zimg";
            legend1.Items[27].Text = "-A11Zimg";
            legend1.Items[28].Text = "-A11Zimg";
            legend1.Items[29].Text = "-A12Zimg";
            legend1.Items[30].Text = "-A12Zimg";

            TabGrp2.Text = "Bode plot";

            grp2.XAxes[0].Caption = "Frequency(Hz)";
            grp2.XAxes[0].ScaleType = ScaleType.Logarithmic;
            grp2.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            xTimemode1 = false;

            grp2.YAxes[0].Caption = "Zmag(Ω)";
            grp2.YAxes[1].Caption = "Zphase(°C)";
            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;
            //grp2.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp2.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.##");

            nPlot = 2; // 0206 0
            grp2.Plots[nPlot].Visible = true;
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[0];

            nPlot++;
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[1];
            grp2.Plots[nPlot].Visible = true;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            grp2.Plots[0].Visible = true; //0206 6
            grp2.Plots[1].Visible = true; //0206 7

            legend2.Items[0].Text = "Zmag";
            legend2.Items[1].Text = "Zphase";
            legend2.Items[6].Text = "Zmag";
            legend2.Items[7].Text = "Zphase";
            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;
            legend2.Items[6].Visible = false;
            legend2.Items[7].Visible = false;

            legend2.Items[8].Text = "A1Zmag";
            legend2.Items[9].Text = "A1Zphase";
            legend2.Items[10].Text = "A1Zmag";
            legend2.Items[11].Text = "A1Zphase";
            legend2.Items[12].Text = "A2Zmag";
            legend2.Items[13].Text = "A2Zphase";
            legend2.Items[14].Text = "A2Zmag";
            legend2.Items[15].Text = "A2Zphase";
            legend2.Items[16].Text = "A3Zmag";
            legend2.Items[17].Text = "A3Zphase";
            legend2.Items[18].Text = "A3Zmag";
            legend2.Items[19].Text = "A3Zphase";
            legend2.Items[20].Text = "A4Zmag";
            legend2.Items[21].Text = "A4Zphase";
            legend2.Items[22].Text = "A4Zmag";
            legend2.Items[23].Text = "A4Zphase";
            legend2.Items[24].Text = "A5Zmag";
            legend2.Items[25].Text = "A5Zphase";
            legend2.Items[26].Text = "A5Zmag";
            legend2.Items[27].Text = "A5Zphase";
            legend2.Items[28].Text = "A6Zmag";
            legend2.Items[29].Text = "A6Zphase";
            legend2.Items[30].Text = "A6Zmag";
            legend2.Items[31].Text = "A6Zphase";
            legend2.Items[32].Text = "A7Zmag";
            legend2.Items[33].Text = "A7Zphase";
            legend2.Items[34].Text = "A7Zmag";
            legend2.Items[35].Text = "A7Zphase";
            legend2.Items[36].Text = "A8Zmag";
            legend2.Items[37].Text = "A8Zphase";
            legend2.Items[38].Text = "A8Zmag";
            legend2.Items[39].Text = "A8Zphase";
            legend2.Items[40].Text = "A9Zmag";
            legend2.Items[41].Text = "A9Zphase";
            legend2.Items[42].Text = "A9Zmag";
            legend2.Items[43].Text = "A9Zphase";
            legend2.Items[44].Text = "A10Zmag";
            legend2.Items[45].Text = "A10Zphase";
            legend2.Items[46].Text = "A10Zmag";
            legend2.Items[47].Text = "A10Zphase";
            legend2.Items[48].Text = "A11Zmag";
            legend2.Items[49].Text = "A11Zphase";
            legend2.Items[50].Text = "A11Zmag";
            legend2.Items[51].Text = "A11Zphase";
            legend2.Items[52].Text = "A12Zmag";
            legend2.Items[53].Text = "A12Zphase";
            legend2.Items[54].Text = "A12Zmag";
            legend2.Items[55].Text = "A12Zphase";

            GrpPlotCount1 = 2;
            GrpPlotCount2 = 4;
        }

        private void InitGraphMON()
        {
            TabGrpRaw.Text = "AC waveform";

            TabGrp1.Text = "Eoc,Temp. vs t";
            grp1.YAxes[0].Caption = "Eoc(V)";
            legend1.Items[0].Text = "Eoc";

            legend1.Items[7].Text = "A1Eoc";
            legend1.Items[9].Text = "A2Eoc";
            legend1.Items[11].Text = "A3Eoc";
            legend1.Items[13].Text = "A4Eoc";
            legend1.Items[15].Text = "A5Eoc";
            legend1.Items[17].Text = "A6Eoc";
            legend1.Items[19].Text = "A7Eoc";
            legend1.Items[21].Text = "A8Eoc";
            legend1.Items[23].Text = "A9Eoc";
            legend1.Items[25].Text = "A10Eoc";
            legend1.Items[27].Text = "A11Eoc";
            legend1.Items[29].Text = "A12Eoc";

            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.######");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.###");

            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

            nPlot++;
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;


            grp1.Plots[0].Visible = false; //0206 6

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            xTimemode0 = true;


            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[1].Caption = "Temp.(°C)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = true;


            legend1.Items[1].Text = "Temp.";
            legend1.Items[8].Text = "A1Temp.";
            legend1.Items[10].Text = "A2Temp.";
            legend1.Items[12].Text = "A3Temp.";
            legend1.Items[14].Text = "A4Temp.";
            legend1.Items[16].Text = "A5Temp.";
            legend1.Items[18].Text = "A6Temp.";
            legend1.Items[20].Text = "A7Temp.";
            legend1.Items[22].Text = "A8Temp.";
            legend1.Items[24].Text = "A9Temp.";
            legend1.Items[26].Text = "A10Temp.";
            legend1.Items[28].Text = "A11Temp.";
            legend1.Items[30].Text = "A12Temp.";

            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = true;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Visible = false;

            xTimemode1 = false;
            /*
            TabGrp2.Text = "Vdc,Temp. vs t";

            grp2.XAxes[0].Caption = "Time";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            xTimemode1 = true;

            grp2.YAxes[0].Caption = "Vdc(V)";
            grp2.YAxes[1].Caption = "Temp.(°C)";

            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;

            nPlot = 2; // 0206 0
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[0];
            grp2.Plots[nPlot].Visible = true;

            nPlot ++;
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[1];
            grp2.Plots[nPlot].Visible = true;

            nPlot ++;            
            grp2.Plots[nPlot].Visible = false;

            nPlot ++;
            grp2.Plots[nPlot].Visible = false;

            nPlot ++;
            grp2.Plots[nPlot].Visible = false;

            nPlot ++;
            grp2.Plots[nPlot].Visible = false;

            grp2.Plots[0].Visible = false;  //0206 6
            grp2.Plots[1].Visible = false;  //0206 7

            legend2.Items[0].Text = "Vdc";
            legend2.Items[1].Text = "Temp.";

            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;
            legend2.Items[6].Visible = false;
            legend2.Items[7].Visible = false;
            */
            GrpPlotCount1 = 2;
            GrpPlotCount2 = 0;
        }

        private void InitGraphDCH()
        {
            TabGrpRaw.Text = "AC waveform";

            TabGrp1.Text = "Vdc,Temp. vs t";
            grp1.YAxes[0].Caption = "Vdc(V)";
            legend1.Items[0].Text = "Vdc";
            legend1.Items[7].Text = "A1Vdc";
            legend1.Items[9].Text = "A2Vdc";
            legend1.Items[11].Text = "A3Vdc";
            legend1.Items[13].Text = "A4Vdc";
            legend1.Items[15].Text = "A5Vdc";
            legend1.Items[17].Text = "A6Vdc";
            legend1.Items[19].Text = "A7Vdc";
            legend1.Items[21].Text = "A8Vdc";
            legend1.Items[23].Text = "A9Vdc";
            legend1.Items[25].Text = "A10Vdc";
            legend1.Items[27].Text = "A11Vdc";
            legend1.Items[29].Text = "A12Vdc";
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.######");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.###");

            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

            nPlot++;
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            grp1.Plots[0].Visible = false;  //0206 6

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            xTimemode0 = true;


            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[1].Caption = "Temp.(°C)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = true;

            legend1.Items[1].Text = "Temp.";
            legend1.Items[8].Text = "A1Temp.";
            legend1.Items[10].Text = "A2Temp.";
            legend1.Items[12].Text = "A3Temp.";
            legend1.Items[14].Text = "A4Temp.";
            legend1.Items[16].Text = "A5Temp.";
            legend1.Items[18].Text = "A6Temp.";
            legend1.Items[20].Text = "A7Temp.";
            legend1.Items[22].Text = "A8Temp.";
            legend1.Items[24].Text = "A9Temp.";
            legend1.Items[26].Text = "A10Temp.";
            legend1.Items[28].Text = "A11Temp.";
            legend1.Items[30].Text = "A12Temp.";

            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = true;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Visible = false;

            xTimemode1 = false;
            /*
            TabGrp2.Text = "Vdc,Temp. vs t";

            grp2.XAxes[0].Caption = "Time";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            xTimemode1 = true;

            grp2.YAxes[0].Caption = "Vdc(V)";
            grp2.YAxes[1].Caption = "Temp.(°C)";

            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;

            nPlot = 2; //0206 0
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[0];
            grp2.Plots[nPlot].Visible = true;

            nPlot ++;
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[1];
            grp2.Plots[nPlot].Visible = true;

            nPlot ++;
            grp2.Plots[nPlot].Visible = false;

            nPlot ++;
            grp2.Plots[nPlot].Visible = false;

            nPlot ++;
            grp2.Plots[nPlot].Visible = false;

            nPlot ++;
            grp2.Plots[nPlot].Visible = false;

            grp2.Plots[0].Visible = false;  //0206 6
            grp2.Plots[1].Visible = false;  //0206 7

            legend2.Items[0].Text = "Vdc";
            legend2.Items[1].Text = "Temp.";

            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;
            legend2.Items[6].Visible = false;
            legend2.Items[7].Visible = false;
            */
            GrpPlotCount1 = 2;
            GrpPlotCount2 = 0;
        }

        private void InitGraphEIS()
        {
            TabGrpRaw.Text = "AC waveform";
            TabGrp1.Text = "Nyquist plot";

            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            xTimemode0 = false;
            grp1.YAxes[0].Caption = "-Z image(Ω)";
            grp1.YAxes[1].Caption = "";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = false;

            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");

            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;


            grp1.Plots[0].Visible = true;  //0206 6

            legend1.Items[0].Text = "-Zimg";
            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = false;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Text = "-Zimg";
            legend1.Items[6].Visible = true;

            legend1.Items[7].Text = "-A1Zimg";
            legend1.Items[8].Text = "-A1Zimg";
            legend1.Items[9].Text = "-A2Zimg";
            legend1.Items[10].Text = "-A2Zimg";
            legend1.Items[11].Text = "-A3Zimg";
            legend1.Items[12].Text = "-A3Zimg";
            legend1.Items[13].Text = "-A4Zimg";
            legend1.Items[14].Text = "-A4Zimg";
            legend1.Items[15].Text = "-A5Zimg";
            legend1.Items[16].Text = "-A5Zimg";
            legend1.Items[17].Text = "-A6Zimg";
            legend1.Items[18].Text = "-A6Zimg";
            legend1.Items[19].Text = "-A7Zimg";
            legend1.Items[20].Text = "-A7Zimg";
            legend1.Items[21].Text = "-A8Zimg";
            legend1.Items[22].Text = "-A8Zimg";
            legend1.Items[23].Text = "-A9Zimg";
            legend1.Items[24].Text = "-A9Zimg";
            legend1.Items[25].Text = "-A10Zimg";
            legend1.Items[26].Text = "-A10Zimg";
            legend1.Items[27].Text = "-A11Zimg";
            legend1.Items[28].Text = "-A11Zimg";
            legend1.Items[29].Text = "-A12Zimg";
            legend1.Items[30].Text = "-A12Zimg";

            legend1.Items[31].Visible = false; //
            legend1.Items[32].Visible = false;
            legend1.Items[33].Visible = false;
            legend1.Items[34].Visible = false;
            legend1.Items[35].Visible = false;
            legend1.Items[36].Visible = false;
            legend1.Items[37].Visible = false;
            legend1.Items[38].Visible = false;
            legend1.Items[39].Visible = false;
            legend1.Items[40].Visible = false;
            legend1.Items[41].Visible = false;
            legend1.Items[42].Visible = false;

            TabGrp2.Text = "Bode plot";

            grp2.XAxes[0].Caption = "Frequency(Hz)";
            grp2.XAxes[0].ScaleType = ScaleType.Logarithmic;
            grp2.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            xTimemode1 = false;
            grp2.YAxes[0].Caption = "Zmag(Ω)";
            grp2.YAxes[1].Caption = "Zphase(°C)";
            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;
            //grp2.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp2.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.##");

            nPlot = 2; //0206 0
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[0];
            grp2.Plots[nPlot].Visible = true;

            nPlot++;
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[1];
            grp2.Plots[nPlot].Visible = true;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            grp2.Plots[0].Visible = true;  //0206 6
            grp2.Plots[1].Visible = true;  //0206 7

            legend2.Items[0].Text = "Zmag";
            legend2.Items[1].Text = "Zphase";
            legend2.Items[6].Text = "Zmag";
            legend2.Items[7].Text = "Zphase";

            legend2.Items[8].Text = "A1Zmag";
            legend2.Items[9].Text = "A1Zphase";
            legend2.Items[10].Text = "A1Zmag";
            legend2.Items[11].Text = "A1Zphase";
            legend2.Items[12].Text = "A2Zmag";
            legend2.Items[13].Text = "A2Zphase";
            legend2.Items[14].Text = "A2Zmag";
            legend2.Items[15].Text = "A2Zphase";
            legend2.Items[16].Text = "A3Zmag";
            legend2.Items[17].Text = "A3Zphase";
            legend2.Items[18].Text = "A3Zmag";
            legend2.Items[19].Text = "A3Zphase";
            legend2.Items[20].Text = "A4Zmag";
            legend2.Items[21].Text = "A4Zphase";
            legend2.Items[22].Text = "A4Zmag";
            legend2.Items[23].Text = "A4Zphase";
            legend2.Items[24].Text = "A5Zmag";
            legend2.Items[25].Text = "A5Zphase";
            legend2.Items[26].Text = "A5Zmag";
            legend2.Items[27].Text = "A5Zphase";
            legend2.Items[28].Text = "A6Zmag";
            legend2.Items[29].Text = "A6Zphase";
            legend2.Items[30].Text = "A6Zmag";
            legend2.Items[31].Text = "A6Zphase";
            legend2.Items[32].Text = "A7Zmag";
            legend2.Items[33].Text = "A7Zphase";
            legend2.Items[34].Text = "A7Zmag";
            legend2.Items[35].Text = "A7Zphase";
            legend2.Items[36].Text = "A8Zmag";
            legend2.Items[37].Text = "A8Zphase";
            legend2.Items[38].Text = "A8Zmag";
            legend2.Items[39].Text = "A8Zphase";
            legend2.Items[40].Text = "A9Zmag";
            legend2.Items[41].Text = "A9Zphase";
            legend2.Items[42].Text = "A9Zmag";
            legend2.Items[43].Text = "A9Zphase";
            legend2.Items[44].Text = "A10Zmag";
            legend2.Items[45].Text = "A10Zphase";
            legend2.Items[46].Text = "A10Zmag";
            legend2.Items[47].Text = "A10Zphase";
            legend2.Items[48].Text = "A11Zmag";
            legend2.Items[49].Text = "A11Zphase";
            legend2.Items[50].Text = "A11Zmag";
            legend2.Items[51].Text = "A11Zphase";
            legend2.Items[52].Text = "A12Zmag";
            legend2.Items[53].Text = "A12Zphase";
            legend2.Items[54].Text = "A12Zmag";
            legend2.Items[55].Text = "A12Zphase";

            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;
            legend2.Items[6].Visible = true;
            legend2.Items[7].Visible = true;

            for (int i = 8; i < 56; i++)
            {
                legend2.Items[i].Visible = false;
            }

            GrpPlotCount1 = 2;
            GrpPlotCount2 = 4;
        }

        private void InitGraphHFR()
        {

            TabGrpRaw.Text = "AC waveform";
            /*
            if (gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].loadoff)
            {
                TabGrp1.Text = "Zre,Eoc vs t";
                grp1.YAxes[1].Caption = "Eoc(V)";
                legend1.Items[1].Text = "Eoc";
            }
            else
            {
                TabGrp1.Text = "Zre,Vdc vs t";
                grp1.YAxes[1].Caption = "Vdc(V)";
                legend1.Items[1].Text = "Vdc";
            }
            */
            TabGrp1.Text = "Zre,Vdc vs t";
            grp1.YAxes[1].Caption = "Vdc(V)";

            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.#####");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
            grp1.Plots[nPlot].Visible = true;

            nPlot++;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
            grp1.Plots[nPlot].Visible = true;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            grp1.Plots[0].Visible = false; // 0206 6

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            xTimemode0 = true;

            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[0].Caption = "Zre(Ω)";

            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = true;

            legend1.Items[0].Text = "Zre";
            legend1.Items[1].Text = "Vdc";

            legend1.Items[7].Text = "A1Zre";
            legend1.Items[9].Text = "A2Zre";
            legend1.Items[11].Text = "A3Zre";
            legend1.Items[13].Text = "A4Zre";
            legend1.Items[15].Text = "A5Zre";
            legend1.Items[17].Text = "A6Zre";
            legend1.Items[19].Text = "A7Zre";
            legend1.Items[21].Text = "A8Zre";
            legend1.Items[23].Text = "A9Zre";
            legend1.Items[25].Text = "A10Zre";
            legend1.Items[27].Text = "A11Zre";
            legend1.Items[29].Text = "A12Zre";

            legend1.Items[8].Text = "A1Vdc";
            legend1.Items[10].Text = "A2Vdc";
            legend1.Items[12].Text = "A3Vdc";
            legend1.Items[14].Text = "A4Vdc";
            legend1.Items[16].Text = "A5Vdc";
            legend1.Items[18].Text = "A6Vdc";
            legend1.Items[20].Text = "A7Vdc";
            legend1.Items[22].Text = "A8Vdc";
            legend1.Items[24].Text = "A9Vdc";
            legend1.Items[26].Text = "A10Vdc";
            legend1.Items[28].Text = "A11Vdc";
            legend1.Items[30].Text = "A12Vdc";

            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = true;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Visible = false;

            legend1.Items[8].Visible = false; //
            legend1.Items[10].Visible = false;
            legend1.Items[12].Visible = false;
            legend1.Items[14].Visible = false;
            legend1.Items[16].Visible = false;
            legend1.Items[18].Visible = false;
            legend1.Items[20].Visible = false;
            legend1.Items[22].Visible = false;
            legend1.Items[24].Visible = false;
            legend1.Items[26].Visible = false;
            legend1.Items[28].Visible = false;
            legend1.Items[30].Visible = false;

            TabGrp2.Text = "Cs,Cp vs t";

            grp2.XAxes[0].Caption = "Time";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            xTimemode1 = true;
            grp2.YAxes[0].Caption = "Cs(uF)";
            grp2.YAxes[1].Caption = "Cp(uF)";
            //grp2.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp2.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;

            nPlot = 2;
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[0];
            grp2.Plots[nPlot].Visible = true;

            nPlot++;
            grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
            grp2.Plots[nPlot].YAxis = grp2.YAxes[1];
            grp2.Plots[nPlot].Visible = true;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            nPlot++;
            grp2.Plots[nPlot].Visible = false;

            grp2.Plots[0].Visible = false; //0206 6
            grp2.Plots[1].Visible = false; //0206 7

            legend2.Items[0].Text = "Cs";
            legend2.Items[1].Text = "Cp";
            legend2.Items[8].Text = "A1Cs";
            legend2.Items[9].Text = "A1Cp";
            legend2.Items[12].Text = "A2Cs";
            legend2.Items[13].Text = "A2Cp";
            legend2.Items[16].Text = "A3Cs";
            legend2.Items[17].Text = "A3Cp";
            legend2.Items[20].Text = "A4Cs";
            legend2.Items[21].Text = "A4Cp";
            legend2.Items[24].Text = "A5Cs";
            legend2.Items[25].Text = "A5Cp";
            legend2.Items[28].Text = "A6Cs";
            legend2.Items[29].Text = "A6Cp";
            legend2.Items[32].Text = "A7Cs";
            legend2.Items[33].Text = "A7Cp";
            legend2.Items[36].Text = "A8Cs";
            legend2.Items[37].Text = "A8Cs";
            legend2.Items[40].Text = "A9Cs";
            legend2.Items[41].Text = "A9Cp";
            legend2.Items[44].Text = "A10Cs";
            legend2.Items[45].Text = "A10Cp";
            legend2.Items[48].Text = "A11Cs";
            legend2.Items[49].Text = "A11Cp";
            legend2.Items[52].Text = "A12Cp";
            legend2.Items[53].Text = "A12Cp";

            legend2.Items[0].Visible = true;
            legend2.Items[1].Visible = true;
            legend2.Items[2].Visible = false;
            legend2.Items[3].Visible = false;
            legend2.Items[4].Visible = false;
            legend2.Items[5].Visible = false;
            legend2.Items[6].Visible = false;
            legend2.Items[7].Visible = false;

            legend2.Items[10].Visible = false; //
            legend2.Items[11].Visible = false; //
            legend2.Items[14].Visible = false; //
            legend2.Items[15].Visible = false; //
            legend2.Items[18].Visible = false; //
            legend2.Items[19].Visible = false; //
            legend2.Items[22].Visible = false; //
            legend2.Items[23].Visible = false; //
            legend2.Items[26].Visible = false; //
            legend2.Items[27].Visible = false; //
            legend2.Items[30].Visible = false; //
            legend2.Items[31].Visible = false; //
            legend2.Items[34].Visible = false; //
            legend2.Items[35].Visible = false; //
            legend2.Items[38].Visible = false; //
            legend2.Items[39].Visible = false; //
            legend2.Items[42].Visible = false; //
            legend2.Items[43].Visible = false; //
            legend2.Items[46].Visible = false; //
            legend2.Items[47].Visible = false; //
            legend2.Items[50].Visible = false; //
            legend2.Items[51].Visible = false; //
            legend2.Items[54].Visible = false; //
            legend2.Items[55].Visible = false; //

            // for (int i = 8; i <= 55; i++)
            //for (int i = 4; i <= 56; i++)
            //{
            //    if (legend2.Items.Count > i)
            //        legend2.Items[i].Visible = false;
            //}

            GrpPlotCount1 = 2;
            GrpPlotCount2 = 2;
        }

        private void InitGraphPRR()
        {
            int i;
            var grp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch];

            grp1.ClearData();
            grp2.ClearData();
            TabGrpRaw.Text = "AC waveform";

            if (techprr.rdendfreq != 0.0)
            {
                if (techprr.rpcalmode == 0)
                    TabGrp1.Text = "Rs,P_Rp(Rp end-Rp) vs t";
                else if (techprr.rpcalmode == 0)
                    TabGrp1.Text = "Rs,P_Rp(Rp end-Rs) vs t";
                else TabGrp1.Text = "Rs,P_Rp(Rp-Rs) vs t";
            }
            else
            {
                TabGrp1.Text = "Rs,P_Rp(Rp-Rs) vs t";
            }

            //TabGrp1.Text = "Rs,P_Rp vs t";
            TabGrp2.Text = "Cs,Cp vs t";

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            xTimemode0 = true;

            grp1.YAxes[0].Caption = "R(Ω)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;

            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");

            grp1.YAxes[1].Caption = "";
            grp1.YAxes[1].Visible = false;

            grp2.XAxes[0].Caption = "Time";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            xTimemode1 = true;
            grp2.YAxes[0].Caption = "Cs(uF)";
            grp2.YAxes[1].Caption = "Cp(uF)";
            grp2.XAxes[0].Visible = true;
            grp2.YAxes[0].Visible = true;
            grp2.YAxes[1].Visible = true;
            //grp2.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            //grp2.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            int nPlot1 = 1;
            int nPlot2 = 2;
            for (i = 0; i < 6; i++)
            {
                grp1.Plots[i + nPlot1].XAxis = grp1.XAxes[0];
                grp2.Plots[i + nPlot2].XAxis = grp2.XAxes[0];

                if (i < 3)
                {
                    grp1.Plots[i + nPlot1].YAxis = grp1.YAxes[0];
                    grp2.Plots[i + nPlot2].YAxis = grp2.YAxes[0];
                }
                else
                {
                    grp1.Plots[i + nPlot1].YAxis = grp1.YAxes[1];
                    grp2.Plots[i + nPlot2].YAxis = grp2.YAxes[1];
                }
            }

            for (i = 0; i < 3; i++)
            {
                if (grp.barr[i])
                {
                    if (i == 2)
                    {
                        grp1.Plots[i + nPlot1].Visible = false;
                        legend1.Items[i].Visible = false;
                    }
                    else
                    {
                        grp1.Plots[i + nPlot1].Visible = true;
                        legend1.Items[i].Visible = true;
                    }
                    grp1.Plots[i + 3 + nPlot1].Visible = false;
                    legend1.Items[i + 3].Visible = false;

                    grp2.Plots[i + nPlot2].Visible = true;
                    grp2.Plots[i + 3 + nPlot2].Visible = true;

                    legend2.Items[i].Visible = true;
                    legend2.Items[i + 3].Visible = true;

                    if (i == 0)
                    {
                        legend1.Items[i].Text = "Rs";
                        legend1.Items[i + 3].Text = "";
                        legend2.Items[i].Text = "R1 - Cs"; //"Rs-Cs";
                        legend2.Items[i + 3].Text = "R1 | Cp"; //"Rs-Cp";

                        legend2.Items[8].Text = "A1R1 - Cs";
                        legend2.Items[10].Text = "A1R1 | Cp";
                        legend2.Items[12].Text = "A2R1 - Cs";
                        legend2.Items[14].Text = "A2R1 | Cp";
                        legend2.Items[16].Text = "A3R1 - Cs";
                        legend2.Items[18].Text = "A3R1 | Cp";
                        legend2.Items[20].Text = "A4R1 - Cs";
                        legend2.Items[22].Text = "A4R1 | Cp";
                        legend2.Items[24].Text = "A5R1 - Cs";
                        legend2.Items[26].Text = "A5R1 | Cp";
                        legend2.Items[28].Text = "A6R1 - Cs";
                        legend2.Items[30].Text = "A6R1 | Cp";
                        legend2.Items[32].Text = "A7R1 - Cs";
                        legend2.Items[34].Text = "A7R1 | Cp";
                        legend2.Items[36].Text = "A8R1 - Cs";
                        legend2.Items[38].Text = "A8R1 | Cp";
                        legend2.Items[40].Text = "A9R1 - Cs";
                        legend2.Items[42].Text = "A9R1 | Cp";
                        legend2.Items[44].Text = "A10R1 - Cs";
                        legend2.Items[46].Text = "A10R1 | Cp";
                        legend2.Items[48].Text = "A11R1 - Cs";
                        legend2.Items[50].Text = "A11R1 | Cp";
                        legend2.Items[52].Text = "A12R1 - Cs";
                        legend2.Items[54].Text = "A12R1 | Cp";

                        legend1.Items[7].Text = "A1Rs";
                        legend1.Items[9].Text = "A2Rs";
                        legend1.Items[11].Text = "A3Rs";
                        legend1.Items[13].Text = "A4Rs";
                        legend1.Items[15].Text = "A5Rs";
                        legend1.Items[17].Text = "A6Rs";
                        legend1.Items[19].Text = "A7Rs";
                        legend1.Items[21].Text = "A8Rs";
                        legend1.Items[23].Text = "A9Rs";
                        legend1.Items[25].Text = "A10Rs";
                        legend1.Items[27].Text = "A11Rs";
                        legend1.Items[29].Text = "A12Rs";
                    }
                    else if (i == 1)
                    {
                        legend1.Items[i].Text = "P_Rp";
                        //legend1.Items[i + 3].Text = "";
                        legend2.Items[i].Text = "R2 - Cs"; //"Rp-Cs";
                        legend2.Items[i + 3].Text = "R2 | Cp"; //"Rp-Cp";

                        legend2.Items[9].Text = "A1R2 - Cs";
                        legend2.Items[11].Text = "A1R2 | Cp";
                        legend2.Items[13].Text = "A2R2 - Cs";
                        legend2.Items[15].Text = "A2R2 | Cp";
                        legend2.Items[17].Text = "A3R2 - Cs";
                        legend2.Items[19].Text = "A3R2 | Cp";
                        legend2.Items[21].Text = "A4R2 - Cs";
                        legend2.Items[23].Text = "A4R2 | Cp";
                        legend2.Items[25].Text = "A5R2 - Cs";
                        legend2.Items[27].Text = "A5R2 | Cp";
                        legend2.Items[29].Text = "A6R2 - Cs";
                        legend2.Items[31].Text = "A6R2 | Cp";
                        legend2.Items[33].Text = "A7R2 - Cs";
                        legend2.Items[35].Text = "A7R2 | Cp";
                        legend2.Items[37].Text = "A8R2 - Cs";
                        legend2.Items[39].Text = "A8R2 | Cp";
                        legend2.Items[41].Text = "A9R2 - Cs";
                        legend2.Items[43].Text = "A9R2 | Cp";
                        legend2.Items[45].Text = "A10R2 - Cs";
                        legend2.Items[47].Text = "A10R2 | Cp";
                        legend2.Items[49].Text = "A11R2 - Cs";
                        legend2.Items[51].Text = "A11R2 | Cp";
                        legend2.Items[53].Text = "A12R2 - Cs";
                        legend2.Items[55].Text = "A12R2 | Cp";

                        legend1.Items[8].Text = "A1P_Rp";
                        legend1.Items[10].Text = "A2P_Rp";
                        legend1.Items[12].Text = "A3P_Rp";
                        legend1.Items[14].Text = "A4P_Rp";
                        legend1.Items[16].Text = "A5P_Rp";
                        legend1.Items[18].Text = "A6P_Rp";
                        legend1.Items[20].Text = "A7P_Rp";
                        legend1.Items[22].Text = "A8P_Rp";
                        legend1.Items[24].Text = "A9P_Rp";
                        legend1.Items[26].Text = "A10P_Rp";
                        legend1.Items[28].Text = "A11P_Rp";
                        legend1.Items[30].Text = "A12P_Rp";
                    }
                    else
                    {
                        legend1.Items[i].Text = "";
                        legend1.Items[i + 3].Text = "";
                        legend2.Items[i].Text = "R3 - Cs"; //"Rpe-Cs";
                        legend2.Items[i + 3].Text = "R3 | Cp"; //"Rpe-Cp";
                    }
                }
                else
                {
                    grp1.Plots[i + nPlot1].Visible = false;
                    grp1.Plots[i + 3 + nPlot1].Visible = false;
                    legend1.Items[i].Visible = false;
                    legend1.Items[i + 3].Visible = false;

                    grp2.Plots[i + nPlot2].Visible = false;
                    grp2.Plots[i + 3 + nPlot2].Visible = false;
                    legend2.Items[i].Visible = false;
                    legend2.Items[i + 3].Visible = false;
                }
            }
            legend1.Items[6].Visible = false;
            legend2.Items[6].Visible = false;
            legend2.Items[7].Visible = false;
            grp1.Plots[0].Visible = false;  //0206 6
            grp2.Plots[0].Visible = false;  //0206 6
            grp2.Plots[1].Visible = false;  // 0206 7

            GrpPlotCount1 = 2; // grp.arrcnt * 2;
            GrpPlotCount2 = grp.arrcnt * 2;
        }

        #endregion Grpinit

        public void SetbtSize(bool bEnable)
        {
            btSize.Enabled = bEnable; 
        }
        

        private void BZAChPan_Load(object sender, EventArgs e)
        {
            //AuxDataView1.Visible = false;
            checkedListBox.ItemCheck += checkedListBox_ItemCheck;
            checkedListBox1.ItemCheck += checkedListBox1_ItemCheck;
            //checkedListBox2.ItemCheck += checkedListBox2_ItemCheck;
            rawgrpListBox.ItemCheck += rawgrpListBox_ItemCheck;

            //refreshTimer = new System.Windows.Forms.Timer();
            //refreshTimer.Interval = 500;
            //refreshTimer.Tick += (s, ev) => RefreshAuxVdcGrid();
            //refreshTimer.Start();
            //var list = gBZA.ChLnkLst.Keys.ToList();
            //foreach (var key in list)
            //{
            //    var Value = gBZA.ChLnkLst[key];
            //    ch = Convert.ToInt32(key);
            //    if (Raw_DataPage != null)
            //    {
            //        if (rawgrp.Controls.Contains(AuxDataView1))
            //        {
            //            rawgrp.Controls.Remove(AuxDataView1);
            //        }
            //        AuxDataView1.Columns.Clear();
            //        AuxDataView1.Rows.Clear();

            //        AuxDataView1.AllowUserToAddRows = false;
            //        AuxDataView1.AllowUserToResizeColumns = false;
            //        AuxDataView1.AllowUserToResizeRows = false;
            //        AuxDataView1.RowHeadersVisible = false;
            //        AuxDataView1.ScrollBars = ScrollBars.Both;
            //        AuxDataView1.ColumnHeadersVisible = true;

            //        AuxDataView1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            //        AuxDataView1.MouseDown += DataGridView1_MouseDown;
            //        AuxDataView1.MouseMove += DataGridView1_MouseMove;
            //        AuxDataView1.MouseUp += DataGridView1_MouseUp;
            //        string[,] tableData1 = new string[,]
            //        {
            //        {"Channel", "Aux1", "Aux2", "Aux3", "Aux4", "Aux5", "Aux6", "Aux7", "Aux8", "Aux9", "Aux10", "Aux11", "Aux12"},
            //        {"Vdc(V)", "0.0V", "0.0V", "0.0V", "0.0V", "0.0V", "0.0V", "0.0V", "0.0V", "0.0V", "0.0V", "0.0V", "0.0V"},
            //        {"Zreal(Ω)", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ"},
            //        {"Zimg(Ω)", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ"},
            //        {"Zmag(mΩ)", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ", "0.0mΩ"},
            //        {"Zphase(°)", "0°", "0°", "0°", "0°", "0°", "0°", "0°", "0°", "0°", "0°", "0°", "0°"}
            //        };

            //        for (int i = 0; i < tableData1.GetLength(1); i++)
            //        {
            //            DataGridViewColumn column = new DataGridViewTextBoxColumn();
            //            column.Name = $"col{i}";
            //            column.HeaderText = tableData1[0, i];
            //            column.SortMode = DataGridViewColumnSortMode.NotSortable;
            //            column.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            //            column.HeaderCell.Style.Alignment = DataGridViewContentAlignment.MiddleCenter;
            //            AuxDataView1.Columns.Add(column);
            //        }

            //        for (int i = 1; i < tableData1.GetLength(0); i++)
            //        {
            //            string[] row = new string[tableData1.GetLength(1)];
            //            for (int j = 0; j < tableData1.GetLength(1); j++)
            //            {
            //                row[j] = tableData1[i, j];
            //            }
            //            AuxDataView1.Rows.Add(row);
            //        }
            //        rawgrp.Controls.Clear();
            //        rawgrp.Controls.Add(AuxDataView1);
            //        ResizeDataGridView();
            //        this.Resize -= Form_Resize;
            //        this.Resize += new EventHandler(Form_Resize);
            //        rawgrp.Resize -= Form_Resize;
            //        rawgrp.Resize += new EventHandler(Form_Resize);
            //    }
            //}
            checkedListBox.CheckOnClick = true;
            checkedListBox1.CheckOnClick = true;
            //checkedListBox2.CheckOnClick = true;
            rawgrpListBox.CheckOnClick = true;
        }

        //private void RefreshAuxVdcGrid()
        //{
        //    if (AuxDataView1.Rows.Count < 2) return;

        //    var list = gBZA.ChLnkLst.Keys.ToList();
        //    list.Sort();

        //    foreach (var key in list)
        //    {
        //        var Value = gBZA.ChLnkLst[key];
        //        int ch = Convert.ToInt32(key);

        //        if (!gBZA.SifLnkLst.ContainsKey(Value.sSerial)) continue;

        //        for (int i = 0; i < 12; i++)
        //        {
        //            double vdcValue = gBZA.SifLnkLst[Value.sSerial].MBZAIF.mChStatInf[Value.SifCh].Aux_Vdc[i];
        //            string formattedValue = string.Format("{0:#0.000}V", vdcValue);

        //            AuxDataView1.Rows[0].Cells[i + 1].Value = formattedValue;
        //        }
        //    }
        //}

        //private void ResizeDataGridView()
        //{
        //    if (grp1 != null && AuxDataView1 != null)
        //    {
        //        AuxDataView1.Width = grp1.ClientSize.Width - 2;
        //        AuxDataView1.Height = 8;
        //        AuxDataView1.Location = new Point(0, 0);

        //        foreach (DataGridViewColumn column in AuxDataView1.Columns)
        //        {
        //            column.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
        //        }
        //    }
        //}

        //private void DataGridView1_MouseDown(object sender, MouseEventArgs e)
        //{
        //    if (sender == AuxDataView1 && e.Button == MouseButtons.Left && e.Y >= AuxDataView1.Height - 5)
        //    {
        //        resizing = true;
        //        resizeStartY = e.Y;
        //    }
        //}
        //private void DataGridView1_MouseMove(object sender, MouseEventArgs e)
        //{
        //    if (resizing)
        //    {
        //        if (sender == AuxDataView1)
        //        {
        //            int newHeight = AuxDataView1.Height + (e.Y - resizeStartY);
        //            AuxDataView1.Height = Math.Max(8, Math.Min(newHeight, 139));
        //            resizeStartY = e.Y;
        //        }
        //    }
        //    else
        //    {
        //        if (sender == AuxDataView1)
        //        {
        //            AuxDataView1.Cursor = (e.Y >= AuxDataView1.Height - 5) ? Cursors.SizeNS : Cursors.Default;
        //        }
        //    }
        //}

        //private void DataGridView1_MouseUp(object sender, MouseEventArgs e)
        //{
        //    resizing = false;
        //}

        //private void Form_Resize(object sender, EventArgs e)
        //{
        //    if (rawgrp != null && AuxDataView1 != null)
        //    {
        //        ResizeDataGridView();
        //    }
        //}

        [DllImport("user32.dll")]
        private static extern short GetAsyncKeyState(Keys vKey);
        private bool isRawDataVisible = true;
        private void ToggleRawDataPage()
        {
            if (isRawDataVisible)
            {
                if (tabgrp.TabPages.Contains(Raw_DataPage))
                    tabgrp.TabPages.Remove(Raw_DataPage);
                isRawDataVisible = false;
            }
            else
            {
                if (!tabgrp.TabPages.Contains(Raw_DataPage))
                    tabgrp.TabPages.Add(Raw_DataPage);
                isRawDataVisible = true;
            }
        }

        //private void BZAChPan_KeyDown(object sender, KeyEventArgs e)
        //{
        //    if (e.KeyCode == Keys.J && e.Shift)
        //    {
        //        ToggleRawDataPage();
        //    }
        //}

        void TimerProc(object sender, EventArgs e)
        {
            if ((Control.ModifierKeys & Keys.Shift) == Keys.Shift &&
                (GetAsyncKeyState(Keys.J) & 0x8000) != 0)
            {
                ToggleRawDataPage();
            }

            if (gBZA.SifLnkLst[serial].MBZAIF.bConnect == false)
            {
                bttech.Enabled = false;
                btstart.Enabled = false;
                btloaddata.Enabled = false;

                lblprog.LabelText = string.Format("Channel {0:00} - Disconnected", ch + 1);
                lblprog.Prog_Color = Color.Orange;
                lblTestStatus.Text = " Status: disconnected.";
                lblTestStatus.ForeColor = Color.Orange;
            }
            else
            {
                lblprog.LabelText = string.Format("Channel {0:00}", ch + 1);
                
                if (gBZA.SifLnkLst[serial].MBZAIF.bRemote[sifch] == true)
                {
                    btstart.Enabled = false;
                    bttech.Enabled = false;
                    btTechEdit.Enabled = false;
                    btloaddata.Enabled = false;
                }
                else
                {
                    btstart.Enabled = true;
                    bttech.Enabled = true;
                    btTechEdit.Enabled = true;
                    btloaddata.Enabled = true;
                }

                ViewStatus();

                if (bRtGrpPause == false) RefreshRt(); // RefreshRt
                RefreshGraph();

                string str; // test
                stChStatusInf chstat = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch];

                enTestState stat = (enTestState)chstat.TestStatus;
                enStatError errstat = (enStatError)chstat.ErrorStatus;


                if (stat == enTestState.nc_Ready || stat == enTestState.Ready ||
                    stat == enTestState.nc_Stopped || stat == enTestState.Stopped ||
                    stat == enTestState.nc_Finished || stat == enTestState.Finished)
                {
                    if (errstat == enStatError.NoError)
                        str = string.Format(" Status: {0}", stat.GetDescription());
                    else
                        str = string.Format(" Status: {0}", errstat.GetDescription());
                }
                else
                {
                    str = string.Format(" Status: {0}", stat.GetDescription());
                }
            }
        }

        //private void ApplyPlotVisibility()
        //{
        //    bool mainACVisible = checkedListBox2.CheckedItems.Contains("MAIN");
        //    bool[] auxVisibleFlags = new bool[12];
        //    bool anyAuxVisible = false;

        //    for (int i = 0; i < 12; i++)
        //    {
        //        auxVisibleFlags[i] = checkedListBox2.CheckedItems.Contains($"AUX{i + 1}");
        //        if (auxVisibleFlags[i]) anyAuxVisible = true;
        //    }

        //    grprt.Plots[0].Visible = mainACVisible;
        //    grprt.Plots[1].Visible = mainACVisible || anyAuxVisible;

        //    for (int i = 0; i < 12; i++)
        //    {
        //        grprt.Plots[2 + i].Visible = auxVisibleFlags[i];
        //    }
        //}


        private void grp1_MouseDoubleClick(object sender, MouseEventArgs e)
        {           
            if (GraphSizeMode == 0) GraphSizeMode = 1;
            else GraphSizeMode = 0;

            RefreshGraphSize();
        }

        private void grp2_MouseDoubleClick(object sender, MouseEventArgs e)
        {        
            if (GraphSizeMode == 0) GraphSizeMode = 1;
            else GraphSizeMode = 0;

            RefreshGraphSize();
        }

        private void BZAChPan_SizeChanged(object sender, EventArgs e)
        {
            if (GraphSizeMode == 1)  RefreshGraphSize();
        }

        private void grprt_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (GraphSizeMode == 0) GraphSizeMode = 1;
            else GraphSizeMode = 0;

            RefreshGraphSize();
        }
        private void rawgrp_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (GraphSizeMode == 0) GraphSizeMode = 1;
            else GraphSizeMode = 0;

            RefreshGraphSize();
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
                        grp2.Cursors[0].Plot = grp2.Plots[nPlot+1]; // 0206 -1
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
                        grp1.Cursors[0].Plot = grp1.Plots[nPlot]; //0206 nPlot-1
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
                grp2.Plots[nPlot+2].LineColor = incolor; //0206 nPlot
                grp2.Plots[nPlot+2].PointColor = incolor; //0206 nPlot
            }
            else
            {
                grp1.Plots[nPlot+1].LineColor = incolor; //0206 nPlot
                grp1.Plots[nPlot+1].PointColor = incolor; //0206 nPlot
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


        #region GrpRefresh
                
        private void RefreshLegendSize()
        {
            RefreshLegendSize(0);
            RefreshLegendSize(1);
            RefreshLegendSize(2);
        }

        private void checkedListBox_ItemCheck(object sender, ItemCheckEventArgs e)
        {
            this.BeginInvoke(new System.Action(() =>
            {
                RefreshLegendSize(1);
                RefreshGraph();
            }));
        }

        private void checkedListBox1_ItemCheck(object sender, ItemCheckEventArgs e)
        {
            this.BeginInvoke(new System.Action(() =>
            {
                RefreshLegendSize(2);
                RefreshGraph();
            }));
        }

        private void checkedListBox2_ItemCheck(object sender, ItemCheckEventArgs e)
        {
            this.BeginInvoke(new System.Action(() =>
            {
                RefreshLegendSize(0);
                RefreshGraph();
            }));
        }

        
        private void rawgrpListBox_ItemCheck(object sender, ItemCheckEventArgs e)
        {
            this.BeginInvoke(new System.Action(() =>
            {
                RefreshLegendSize(0);
                RefreshGraph();
            }));
        }


        private void RefreshLegendSize(int index)
        {
            Point tpos;

            if (index == 1)
            {
                legend1.AutoSize = false;
                legend1.Width = 80;
                legend1.Height = 23 * GrpPlotCount1 + 8;

                int auxCount = 0;
                string[] auxNames = { "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6", "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12" };

                enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;

                for (int i = 0; i < auxNames.Length; i++)
                {
                    bool visible = checkedListBox.CheckedItems.Contains(auxNames[i]);

                    int itemIndex1 = 7 + (i * 2);
                    int itemIndex2 = itemIndex1 + 1;

                    if (legend1.Items.Count > itemIndex1)
                    {
                        legend1.Items[itemIndex1].Visible = visible;
                        auxCount += visible ? 1 : 0;
                    }
                    if (legend1.Items.Count > itemIndex2)
                    {
                        legend1.Items[itemIndex2].Visible = visible;
                        auxCount += visible ? 1 : 0;
                    }

                    //if (techtype == enTechType.TECH_MON) //  || techtype == enTechType.TECH_PRR techtype == enTechType.TECH_HFR || 
                    //{
                    //    int plotIdx1 = 7 + (i * 2);
                    //    int plotIdx2 = 31 + i;

                    //    if (legend1.Items.Count > plotIdx1)
                    //    {
                    //        legend1.Items[plotIdx1].Visible = visible;
                    //        auxCount += visible ? 1 : 0;
                    //    }
                    //    if (legend1.Items.Count > plotIdx2)
                    //    {
                    //        legend1.Items[plotIdx2].Visible = visible;
                    //        auxCount += visible ? 1 : 0;
                    //    }
                    //}
                    //else
                    //{
                    //    int itemIndex1 = 7 + (i * 2);
                    //    int itemIndex2 = itemIndex1 + 1;

                    //    if (legend1.Items.Count > itemIndex1)
                    //    {
                    //        legend1.Items[itemIndex1].Visible = visible;
                    //        auxCount += visible ? 1 : 0;
                    //    }
                    //    if (legend1.Items.Count > itemIndex2)
                    //    {
                    //        legend1.Items[itemIndex2].Visible = visible;
                    //        auxCount += visible ? 1 : 0;
                    //    }
                    //}
                }
                int[] auxHeights = { 0, 35, 46, 57, 69, 82, 93, 105, 115, 126, 139, 150, 161, 172, 184, 196, 208 };

                if (auxCount > 0)
                {
                    if (auxCount < auxHeights.Length)
                    {
                        legend1.Width = 90;
                        legend1.Height = auxHeights[auxCount] * GrpPlotCount1 + 8;
                    }
                    else
                    {
                        if (techtype == enTechType.TECH_MON)
                        {
                            legend1.Width = 160;
                            legend1.Height = auxHeights[auxHeights.Length - 1] * GrpPlotCount1 + 8;
                        }
                        else
                        {
                            legend1.Width = 150;
                            legend1.Height = auxHeights[auxHeights.Length - 1] * GrpPlotCount1 + 8;
                        }
                        legend1.Width = 170;
                        legend1.Height = auxHeights[auxHeights.Length - 1] * GrpPlotCount1 + 8;
                    }
                }

                tpos = grp1.Location;
                tpos.X = tpos.X + grp1.Width - legend1.Width - 3;
                tpos.Y = tpos.Y + 3;
                legend1.Location = tpos;
            }
            else if (index == 2)
            {
                enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;

                legend2.AutoSize = false;
                legend2.Width = 80;
                legend2.Height = 23 * GrpPlotCount2 + 8;
                if (techtype == enTechType.TECH_PRR)
                {
                    legend2.Width = 85;
                }
                int auxCount = 0;
                string[] auxNames = { "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6", "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12" };

                for (int i = 0; i < auxNames.Length; i++)
                {
                    bool visible = checkedListBox1.CheckedItems.Contains(auxNames[i]);

                    if (techtype == enTechType.TECH_HFR)
                    {
                        int itemIdx1 = 8 + (i * 4);
                        int itemIdx2 = itemIdx1 + 1;

                        if (legend2.Items.Count > itemIdx1)
                            legend2.Items[itemIdx1].Visible = visible;
                        if (legend2.Items.Count > itemIdx2)
                            legend2.Items[itemIdx2].Visible = visible;
                    }
                    else
                    {
                        int itemIdx1 = 8 + (i * 4);
                        int itemIdx2 = itemIdx1 + 1;
                        int itemIdx3 = itemIdx1 + 2;
                        int itemIdx4 = itemIdx1 + 3;

                        if (legend2.Items.Count > itemIdx1)
                            legend2.Items[itemIdx1].Visible = visible;
                        if (legend2.Items.Count > itemIdx2)
                            legend2.Items[itemIdx2].Visible = visible;
                        if (legend2.Items.Count > itemIdx3)
                            legend2.Items[itemIdx3].Visible = visible;
                        if (legend2.Items.Count > itemIdx4)
                            legend2.Items[itemIdx4].Visible = visible;
                    }

                    if (visible)
                        auxCount++;
                }

                if (techtype == enTechType.TECH_HFR)
                {
                    int[] auxHeightsHFR = { 0, 46, 69, 92, 115, 138, 161, 184, 207, 230, 253, 276, 299 };

                    if (auxCount > 0) // 23
                    {
                        if (auxCount <= 9)
                        {
                            // 9개 이하 → 세로로만 확장
                            if (auxCount < auxHeightsHFR.Length)
                            {
                                legend2.Width = 90;
                                legend2.Height = auxHeightsHFR[auxCount] * GrpPlotCount2 + 8;
                            }
                            else
                            {
                                legend2.Width = 150;
                                legend2.Height = auxHeightsHFR[auxHeightsHFR.Length - 1] * GrpPlotCount2 + 8;
                            }
                        }
                        else
                        {
                            legend2.Width = 130; // 두 열로
                            legend2.Height = auxHeightsHFR[9] * GrpPlotCount2 + 8;
                        }
                    }
                }
                else if (techtype == enTechType.TECH_QIS)
                {
                    int auxCount1 = 0;
                    string[] auxNames1 = { "AUX1","AUX2","AUX3","AUX4",
                          "AUX5","AUX6","AUX7","AUX8",
                          "AUX9","AUX10","AUX11","AUX12" };

                    for (int i = 0; i < auxNames1.Length; i++)
                    {
                        bool visible = checkedListBox1.CheckedItems.Contains(auxNames1[i]);

                        int itemIdx1 = 8 + (i * 4);     // Mag
                        int itemIdx2 = itemIdx1 + 1;    // Phase
                        if (legend2.Items.Count > itemIdx1)
                            legend2.Items[itemIdx1].Visible = visible;
                        if (legend2.Items.Count > itemIdx2)
                            legend2.Items[itemIdx2].Visible = visible;
                        if (legend2.Items.Count > itemIdx1 + 2)
                            legend2.Items[itemIdx1 + 2].Visible = false;
                        if (legend2.Items.Count > itemIdx1 + 3)
                            legend2.Items[itemIdx1 + 3].Visible = false;

                        if (visible) auxCount1++;
                    }
                  
                    if (auxCount1 == 0)
                    {
                        legend2.Height = 55;
                    }
                    else
                    {
                        int[] auxHeights = { 0, 23, 35, 46, 58, 69, 82, 93, 105, 115, 126, 139, 150, 161, 172, 184, 196, 208 };
                        if (auxCount1 > 0)
                        {
                            if (auxCount <= 9)
                            {
                                if (auxCount < auxHeights.Length)
                                {
                                    legend2.Width = 90;
                                    legend2.Height = auxHeights[auxCount] * GrpPlotCount2 + 8;
                                }
                                else
                                {
                                    legend2.Width = 150;
                                    legend2.Height = auxHeights[auxHeights.Length - 1] * GrpPlotCount2 + 8;
                                }
                            }
                            else
                            {
                                legend2.Width = 175;
                                legend2.Height = auxHeights[9] * GrpPlotCount2 + 8;
                            }
                        }
                    }
                }
                else
                {
                    int[] auxHeights = { 0, 46, 69, 92, 115 };

                    if (auxCount > 0)
                    {
                        if (auxCount <= 4)
                        {
                            int heightIndex = Math.Min(auxCount, auxHeights.Length - 1);
                            legend2.Width = 100;
                            legend2.Height = auxHeights[heightIndex] * GrpPlotCount2 + 8;
                        }
                        else if (auxCount <= 9)
                        {
                            legend2.Width = 190; // 180
                            legend2.Height = auxHeights[4] * GrpPlotCount2 + 8;
                        }
                        else
                        {
                            legend2.Width = 280; // 260
                            legend2.Height = auxHeights[4] * GrpPlotCount2 + 8;
                        }
                    }
                }

                tpos = grp2.Location;
                tpos.X = tpos.X + grp2.Width - legend2.Width - 3;
                tpos.Y = tpos.Y + 3;
                legend2.Location = tpos;
            }
            //else if (index == 2)
            //{
            //    legend2.AutoSize = false;
            //    legend2.Width = 80;
            //    legend2.Height = 23 * GrpPlotCount2 + 8;

            //    int auxCount = 0;
            //    string[] auxNames = { "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6", "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12" };

            //    for (int i = 0; i < auxNames.Length; i++)
            //    {
            //        bool visible = checkedListBox1.CheckedItems.Contains(auxNames[i]);

            //        int itemIdx1 = 8 + (i * 4);   // Magnitude Live
            //        int itemIdx2 = itemIdx1 + 1;  // Phase Live
            //        int itemIdx3 = itemIdx1 + 2;  // Magnitude Hist
            //        int itemIdx4 = itemIdx1 + 3;  // Phase Hist

            //        if (legend2.Items.Count > itemIdx1)
            //            legend2.Items[itemIdx1].Visible = visible;
            //        if (legend2.Items.Count > itemIdx2)
            //            legend2.Items[itemIdx2].Visible = visible;
            //        if (legend2.Items.Count > itemIdx3)
            //            legend2.Items[itemIdx3].Visible = visible;
            //        if (legend2.Items.Count > itemIdx4)
            //            legend2.Items[itemIdx4].Visible = visible;

            //        if (visible)
            //            auxCount++;
            //    }

            //    int[] auxHeights = { 0, 46, 69, 92, 115 };

            //    if (auxCount > 0)
            //    {
            //        if (auxCount <= 4)
            //        {
            //            int heightIndex = Math.Min(auxCount, auxHeights.Length - 1);
            //            legend2.Width = 90;
            //            legend2.Height = auxHeights[heightIndex] * GrpPlotCount2 + 8;
            //        }
            //        else if (auxCount <= 9)
            //        {
            //            legend2.Width = 180;
            //            legend2.Height = auxHeights[4] * GrpPlotCount2 + 8;
            //        }
            //        else
            //        {
            //            legend2.Width = 260;
            //            legend2.Height = auxHeights[4] * GrpPlotCount2 + 8;
            //        }
            //    }

            //    tpos = grp2.Location;
            //    tpos.X = tpos.X + grp2.Width - legend2.Width - 3;
            //    tpos.Y = tpos.Y + 3;
            //    legend2.Location = tpos;
            //}
            else
            {
                //tpos = Rtlegend.Location;
                //tpos.X = tpos.X + Rtlegend.Width - Rtlegend.Width - 3;
                //tpos.Y = tpos.Y + 3;
                //Rtlegend.Location = tpos; 기존

                Rtlegend.Width = 80;
                Rtlegend.Height = 23 * 2 + 8;

                int auxCount = 0;
                string[] auxNames = {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6",
                    "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                //int itemIndex = 2;
                //for (int i = 0; i < auxNames.Length; i++)
                //{
                //    bool visible = checkedListBox2.CheckedItems.Contains(auxNames[i]);

                //    if (Rtlegend.Items.Count > itemIndex)
                //    {
                //        Rtlegend.Items[itemIndex].Visible = visible;
                //        if (visible) auxCount++;
                //    }

                //    itemIndex++; // AUX 하나당 Item 하나만 처리
                //}

                int[] auxHeights = { 0, 35, 46, 57, 69, 82, 93, 105, 115, 126, 139, 150, 161 };

                if (auxCount > 0)
                {
                    Rtlegend.Width = auxCount <= 12 ? 100 : 165;
                    int heightIdx = Math.Min(auxCount, auxHeights.Length - 1);
                    Rtlegend.Height = auxHeights[heightIdx] * GrpPlotCount1 + 8;
                }

                tpos = grprt.Location;
                tpos.X = tpos.X + grprt.Width - Rtlegend.Width - 3;
                tpos.Y = tpos.Y + 3;
                Rtlegend.Location = tpos; // 변경
            }
        }

        private void RefreshGraphSize()
        {
            bool isMCBZA = gBZA.IsMCBZA(sSelSerial2);
            if (GraphSizeMode == 0)
            {
                if (bMaxWindow == true)
                {
                    tabgrp.Location = new Point(163, 100);
                    tabgrp.Size = new Size(ClientRectangle.Size.Width - 16 - 163, ClientRectangle.Size.Height - 16 - 66);
                    //tabControl1.Visible = false;
                }
                else
                {
                    //tabgrp.Location = new Point(163, 100);
                    //tabgrp.Size = new Size(312, 500);
                    if (isMCBZA)
                    {
                        tabgrp.Location = new Point(163, 100);
                        tabgrp.Size = new Size(312, 218);
                        //tabControl1.Visible = true;
                    }         
                }
                /*grprt.Visible = true;
                
                grp1.Size = new Size(182, 186);
                grp1.Location = new Point(4, 6);
                grp2.Size = new Size(182, 186);
                grp2.Location = new Point(4, 6);*/
            }
            else
            {
                tabgrp.Location = new Point(6,27);
                tabgrp.Size = new Size(ClientRectangle.Size.Width - 16, ClientRectangle.Size.Height - 16);
                //tabControl1.Visible = false;
                /*grprt.Visible = false;
                grp1.Size = new Size(tabgrp.Width - 18, tabgrp.Height - 38);
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

            if (stat == enTestState.nc_Ready || stat == enTestState.Ready || stat == enTestState.nc_Stopped || stat == enTestState.Stopped || stat == enTestState.nc_Finished || stat == enTestState.Finished)
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
            else if(gBZA.SifLnkLst[serial].MBZAIF.bLoadData[sifch])
            {
                return Color.DarkGreen;
            }
            else
            {
                if (errstat != enStatError.NoError) return Color.DarkRed;
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

        private void RefreshTestInformation()
        {
            string str;
            string str1;
            if (gBZA.SifLnkLst.ContainsKey(serial) == false)
            {
                toolTip.SetToolTip(this.lblResult, "");
                toolTip.SetToolTip(this.lblTech, "");
                return;
            }
            stChStatusInf chstat = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch];
            stResHeaderInfo headinfo = gBZA.SifLnkLst[serial].MBZAIF.mHeadinf[sifch];
           

            DateTime sdt = new DateTime(headinfo.rtc_begin.tick * TimeSpan.TicksPerMillisecond);
            DateTime edt = new DateTime(headinfo.rtc_end.tick * TimeSpan.TicksPerMillisecond);

            str = "  location:";
            if (gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch].Length < 5)
            {
                str1 = "None.";
            }
            else
            {
                str1 = Path.GetDirectoryName(gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch]);
            }
            str += str1;
            toolTip.SetToolTip(this.lblTech, str);

            str = string.Format("   Started: {0:G}", sdt);
            str += "\r\n";
            if (gBZA.CheckStatusRun(chstat)) str1 =  "  Finished: Proceeding...";
            else str1 = string.Format("  Finished: {0:G}", edt);
            str += str1;
            if (gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch].Length > 5)
            {
                str += "\r\n  location:";
                str1 = Path.GetDirectoryName(gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch]);
                str += str1;
                str += "\r\n";
                str += string.Format("Battery id: {0}\r\n", Encoding.UTF8.GetString(headinfo.batid).Trim('\0'));
                str += string.Format("Nominal AH: {0} AH\r\n", SM_Number.ToString(headinfo.Capa, enSM_TypeNumberToString.SIPrefix, 5));
                str += string.Format("      User: {0}\r\n", Encoding.UTF8.GetString(headinfo.user).Trim('\0'));
                str += string.Format("      Memo: {0}", Encoding.UTF8.GetString(headinfo.memo).Trim('\0'));
            }
            else
            {
                str += "\r\n  location: None.";
            }
            toolTip.SetToolTip(this.lblResult, str);
        }

        private void ViewReloadStatus()
        {
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;
            stChStatusInf chstat = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch];
            if (gBZA.SifLnkLst[serial].MBZAIF.bLoadData[sifch])
            {
                if (btloaddata.ImageKey == "save")
                {
                    RefreshTestInformation();
                    InitGraphType(true);
                    if (techtype == enTechType.TECH_MON || techtype == enTechType.TECH_DCH)
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
                    if (techtype == enTechType.TECH_MON || techtype == enTechType.TECH_DCH)
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
                btloaddata.ImageKey = "stop";
            }
            else
            {
                if (btloaddata.ImageKey == "stop")
                {
                    lblprog.Prog_Color = Color.LightGray;
                    RefreshTestInformation();
                    btloaddata.ImageKey = "save";
                }
                else
                {
                    if (lblprog.Prog_Color != Color.LightGray) lblprog.Prog_Color = Color.LightGray;
                }
            }
        }

        private void ViewStatus()
        {
            bool isMCBZA = gBZA.IsMCBZA(sSelSerial2);
            stChStatusInf chstat = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch];

            for (int i = 0; i < chstat.Aux_Vdc.Length && i < 12; i++)
            {
                double vdcValue = chstat.Aux_Vdc[i];
                string formattedValue = $"{vdcValue:0.000} V";
            }

            //var mrng = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges[0];
            var mrng = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges; // 배열

            TimeSpan ElapsedTime = TimeSpan.FromMilliseconds(chstat.RunTimeStamp);
            bool brun = gBZA.CheckStatusRun(chstat);
            bool bcalibMode = gBZA.CheckStatusCalibMode(chstat);
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;
            string str;
            int FreqCount = chstat.eis_status.freqcount;

            if (gBZA.SifLnkLst[serial].MBZAIF.bLoadData[sifch])
            {
                lblTestStatus.Text = string.Format(" Status: {0}", (enTestState.LoadData).GetDescription());
            }
            else
            {
                lblTestStatus.Text = GetTestStatus(chstat);
            }

            lblErrStatus.Text = GetErrStatus(chstat, brun);

            if (gBZA.SifLnkLst[serial].MBZAIF.bLoadData[sifch])
            {
                lblprog.Prog_Val = (int)((((double)gBZA.SifLnkLst[serial].MBZAIF.mresfile[sifch].datacount / (double)chstat.eis_status.rescount)) * 1000.0);
            }
            else
            {
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
                    if ((enEisState)chstat.eis_status.status == enEisState.mondelay)
                    {
                        lblprog.Prog_Val = (int)(((chstat.TaskTimeStamp * 0.001) / (double)gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].ondelay) * 1000.0);
                    }
                    else
                    {
                        gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetMON(ref techmon);
                        lblprog.Prog_Val = (int)(((chstat.TaskTimeStamp * 0.001) / (double)techmon.totaltime) * 1000.0);
                    }

                }
                else if (techtype == enTechType.TECH_QIS)
                {
                    gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetQIS(ref techqis);
                    lblprog.Prog_Val = (int)(((double)(FreqCount * chstat.CycleNo + chstat.eis_status.freqindex) / (double)(FreqCount * techqis.iteration)) * 1000.0);
                }
                else if (techtype == enTechType.TECH_DCH)
                {
                    gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetDCH(ref techdch);
                    lblprog.Prog_Val = (int)(((chstat.Veoc - chstat.Vdc) / (chstat.Veoc - techdch.CutoffV)) * 1000.0);
                }
                else
                {
                    gBZA.SifLnkLst[serial].MBZAIF.tech[sifch].GetEIS(ref techeis);
                    lblprog.Prog_Val = (int)(((double)(FreqCount * chstat.CycleNo + chstat.eis_status.freqindex) / (double)(FreqCount * techeis.iteration)) * 1000.0);
                }
            }

            if (bcalibMode == true)
            {
                btstart.Enabled = false;
                btloaddata.Enabled = false;
                MenuTechchangeTechFile.Enabled = false;
                bttech.Enabled = false;
                btTechEdit.Enabled = true;
            }
            else
            {
                if(gBZA.SifLnkLst[serial].MBZAIF.bLoadData[sifch])
                {
                    btstart.Enabled = false;
                    btloaddata.Enabled = true;
                    MenuTechchangeTechFile.Enabled = false;
                    bttech.Enabled = false;
                    btTechEdit.Enabled = true;
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
           }

            if (brun == true)
            {
                if (btstart.ImageKey == "play")
                {
                    RefreshTestInformation();
                    InitGraphType(true);
                    if (techtype == enTechType.TECH_MON || techtype == enTechType.TECH_DCH)
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
                    if (techtype == enTechType.TECH_MON || techtype == enTechType.TECH_DCH)
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
                    RefreshTestInformation();
                    btstart.ImageKey = "play";
                }
                else
                {
                    ViewReloadStatus();
                    //if (lblprog.Prog_Color != Color.LightGray) lblprog.Prog_Color = Color.LightGray;
                }
            }
            

            if (gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch].Length < 5)
            {
                str = "None.";
                lblTech.Text = string.Format(" Tech. : {0}", str);
            }
            else
            {
                str = Path.GetFileName(gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch]);
                lblTech.Text = string.Format(" Tech. : {0}", str);
            }

            if (gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch].Length < 5)
            {
                str = "None.";
                lblResult.Text = string.Format(" Result: {0}", str);
            }
            else
            {
                str = Path.GetFileName(gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch]);
                lblResult.Text = string.Format(" Result: {0}", str);
            }
            lbldatacount.Text = string.Format("   Data: {0}({1})", gBZA.SifLnkLst[serial].MBZAIF.mresfile[sifch].datacount, chstat.eis_status.rescount);
            labelElapsedTime.Text = string.Format("Elapsed: {0,4:###0}:{1:00}:{2:00}", ElapsedTime.Hours, ElapsedTime.Minutes, ElapsedTime.Seconds);
            eZimType zimtype = (eZimType)chstat.ZimType; // (eZimType)(gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].info.cModel[0] - 0x30);
            //double crngval = mrng.iac_rng[chstat.Iac_in_rngno].realmax;

            //if ((chstat.Iac_rngno % 2) > 0)
            //{
            //    crngval *= mrng.iac_rng[chstat.Iac_in_rngno].controlgain;
            //}

            double crngval = 0.0;
            int idx = chstat.Iac_in_rngno;

            if (idx >= 0 && idx < mrng.Gen.iac_rng.Length)
            {
                crngval = mrng.Gen.iac_rng[idx].realmax;

                if ((chstat.Iac_rngno % 2) > 0)
                {
                    crngval *= mrng.Gen.iac_rng[idx].controlgain;
                }
            }

            //lblRange.Text = string.Format("  Range: {0}/ {1}", SM_Number.ToRangeString(crngval, "A"), SM_Number.ToRangeString(mrng.vdc_rng[chstat.Vdc_rngno].realmax, "V"));
            string vdcRangeStr = "Invalid";
            int vdcIdx = chstat.Vdc_rngno;
            if (vdcIdx >= 0 && vdcIdx < mrng.Gen.vdc_rng.Length)
            {
                vdcRangeStr = SM_Number.ToRangeString(mrng.Gen.vdc_rng[vdcIdx].realmax, "V");
            }

            lblRange.Text = string.Format("  Range: {0}/ {1}", SM_Number.ToRangeString(crngval, "A"), vdcRangeStr); // 예외방지


            if (chstat.Idc >= 1.0)
            {
                lblIdc.Text = string.Format("    Idc: {0,8:###0.0##} A", chstat.Idc);
            }
            else if (chstat.Idc >= 0.001)
            {
                lblIdc.Text = string.Format("    Idc: {0,8:###0.0##}mA", chstat.Idc * 1000.0);
            }
            else
            {
                lblIdc.Text = string.Format("    Idc: {0,8:###0.0##}uA", chstat.Idc * 1000000.0);
            }

            if (chstat.Vdc >= 1000.0)
            {
                lblVdc.Text = string.Format("    Vdc: {0,8:###0.0##}KV", chstat.Vdc * 0.001);
            }
            else if (chstat.Vdc >= 10.0)
            {
                lblVdc.Text = string.Format("    Vdc: {0,8:###0.0##} V", chstat.Vdc);
            }
            else
            {
                lblVdc.Text = string.Format("    Vdc: {0,8:###0.0##}mV", chstat.Vdc * 1000.0);
            }

            for (int i = 0; i < 12; i++)
            {
                double auxVdc = chstat.Aux_Vdc[i];
                Label lbl = this.Controls.Find($"A{i + 1}Vdc", true).FirstOrDefault() as Label;
                if (lbl == null) continue;

                if (auxVdc >= 1000.0)
                {
                    lbl.Text = string.Format(" Vdc: {0,8:###0.0##} KV", auxVdc * 0.001);
                }
                else if (auxVdc >= 1.0)
                {
                    lbl.Text = string.Format(" Vdc: {0,8:###0.0##} V", auxVdc);
                }
                else
                {
                    lbl.Text = string.Format(" Vdc: {0,8:###0.0##} mV", auxVdc * 1000.0);
                }
            }

            if (chstat.Veoc >= 1000.0)
            {
                lblVeoc.Text = string.Format("    Eoc: {0,8:###0.0##}KV", chstat.Veoc * 0.001);
            }
            else if (chstat.Veoc >= 10.0)
            {
                lblVeoc.Text = string.Format("    Eoc: {0,8:###0.0##} V", chstat.Veoc);
            }
            else
            {
                lblVeoc.Text = string.Format("    Eoc: {0,8:###0.0##}mV", chstat.Veoc * 1000.0);
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

            if (techtype == enTechType.TECH_MON || (techtype == enTechType.TECH_DCH && techdch.useir == 0) || chstat.DispFreq == 0.0)
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
                double DispReal = Math.Abs(chstat.DispMag[0]) * Math.Cos(chstat.DispPhase[0] * (double)DeviceConstants.PI / (double)180.0);
                double Dispimg = Math.Abs(chstat.DispMag[0]) * Math.Sin(chstat.DispPhase[0] * (double)DeviceConstants.PI / (double)180.0);
                // Aux
                //double auxZreal = chstat.eis_status.Aux_zdata[0].real;
                //double auxZimg = chstat.eis_status.Aux_zdata[0].img;
                //double auxMag = Math.Abs(chstat.eis_status.Aux_zdata[0].mag);
                //double auxPhase = chstat.eis_status.Aux_zdata[0].phase;
                //double auxDispReal = auxMag * Math.Cos(auxPhase * Math.PI / 180.0);
                //double auxDispImg = auxMag * Math.Sin(auxPhase * Math.PI / 180.0);

                if (DispReal >= 1000.0)
                {
                    lblzreal.Text = string.Format("  Zreal: {0,8:###0.0##}KΩ", DispReal / 1000.0);
                }
                else if (chstat.DispMag[0] >= 1.0)
                {
                    lblzreal.Text = string.Format("  Zreal: {0,8:###0.0##} Ω", DispReal);
                }
                else
                {
                    lblzreal.Text = string.Format("  Zreal: {0,8:###0.0##}mΩ", DispReal * 1000.0);
                }

                for (int i = 0; i < 12; i++) // aux
                {
                    double auxZreal = chstat.eis_status.Aux_zdata[i].real;
                    Label lbl = this.Controls.Find($"A{i + 1}Zreal", true).FirstOrDefault() as Label;
                    if (lbl == null) continue;

                    if (auxZreal >= 1000.0)
                    {
                        lbl.Text = string.Format("Zreal:{0,8:###0.0##} KΩ", auxZreal / 1000.0);
                    }
                    else if (auxZreal >= 1.0)
                    {
                        lbl.Text = string.Format("Zreal:{0,8:###0.0##} Ω", auxZreal);
                    }
                    else
                    {
                        lbl.Text = string.Format("Zreal:{0,8:###0.0##} mΩ", auxZreal * 1000.0);
                    }
                }

                if (DispReal >= 1000.0)
                {
                    lblzimg.Text = string.Format("   Zimg: {0,8:###0.0##}KΩ", Dispimg / 1000.0);
                }
                else if (chstat.DispMag[0] >= 1.0)
                {
                    lblzimg.Text = string.Format("   Zimg: {0,8:###0.0##} Ω", Dispimg);
                }
                else
                {
                    lblzimg.Text = string.Format("   Zimg: {0,8:###0.0##}mΩ", Dispimg * 1000.0);
                }

                for (int i = 0; i < 12; i++) // aux
                {
                    double auxZimg = chstat.eis_status.Aux_zdata[i].img;
                    Label lbl = this.Controls.Find($"A{i + 1}Zimg", true).FirstOrDefault() as Label;
                    if (lbl == null) continue;

                    if (auxZimg >= 1000.0)
                    {
                        lbl.Text = string.Format("Zimg: {0,8:###0.0##} KΩ", auxZimg / 1000.0);
                    }
                    else if (auxZimg >= 1.0)
                    {
                        lbl.Text = string.Format("Zimg: {0,8:###0.0##} Ω", auxZimg);
                    }
                    else
                    {
                        lbl.Text = string.Format("Zimg: {0,8:###0.0##} mΩ", auxZimg * 1000.0);
                    }
                }


                if (chstat.DispMag[0] >= 1000.0)
                {
                    lblZmag.Text = string.Format("   Zmag: {0,8:###0.0##}KΩ", chstat.DispMag[0] / 1000.0);
                }
                else if (chstat.DispMag[0] >= 1.0)
                {
                    lblZmag.Text = string.Format("   Zmag: {0,8:###0.0##} Ω", chstat.DispMag[0]);
                }
                else
                {
                    lblZmag.Text = string.Format("   Zmag: {0,8:###0.0##}mΩ", chstat.DispMag[0] * 1000.0);
                }

                for (int i = 0; i < 12; i++)
                {
                    double auxMag = Math.Abs(chstat.eis_status.Aux_zdata[i].mag);
                    Label lbl = this.Controls.Find($"A{i + 1}Zmag", true).FirstOrDefault() as Label;
                    if (lbl == null) continue;

                    if (auxMag >= 1000.0)
                    {
                        lbl.Text = string.Format("Zmag: {0,8:###0.0##} KΩ", auxMag / 1000.0);
                    }
                    else if (auxMag >= 1.0)
                    {
                        lbl.Text = string.Format("Zmag: {0,8:###0.0##} Ω", auxMag);
                    }
                    else
                    {
                        lbl.Text = string.Format("Zmag: {0,8:###0.0##} mΩ", auxMag * 1000.0);
                    }
                }

                if (chstat.DispPhase[0] >= 10.0)
                {
                    lblZphase.Text = string.Format(" Zphase: {0,8:###0.0##} °", chstat.DispPhase[0]);
                }
                else
                {
                    lblZphase.Text = string.Format(" Zphase: {0,8:###0.0##} °", chstat.DispPhase[0]);
                }

                for (int i = 0; i < 12; i++)
                {
                    double auxPhase = chstat.eis_status.Aux_zdata[i].phase;

                    Label lbl = this.Controls.Find($"A{i + 1}Zphase", true).FirstOrDefault() as Label;
                    if (lbl == null) continue;

                    lbl.Text = string.Format("Zphase: {0,8:###0.0##} °", auxPhase);
                }
            }

            lblTestStatus.ForeColor = GetTestStatusColor(chstat);
            lblErrStatus.ForeColor = GetErrorStatusColor(chstat, lblTestStatus.ForeColor);

            lblTech.ForeColor = lblTestStatus.ForeColor;
            lblResult.ForeColor = lblTestStatus.ForeColor;
            lbldatacount.ForeColor = lblTestStatus.ForeColor;

            labelElapsedTime.ForeColor = lblTestStatus.ForeColor;
            lblRange.ForeColor = lblTestStatus.ForeColor;
            lblVeoc.ForeColor = lblTestStatus.ForeColor;
            lblVdc.ForeColor = lblTestStatus.ForeColor;
            lblIdc.ForeColor = lblTestStatus.ForeColor;
            lblTemp.ForeColor = lblTestStatus.ForeColor;
            lblfreq.ForeColor = lblTestStatus.ForeColor;
            lblzreal.ForeColor = lblTestStatus.ForeColor;
            lblzimg.ForeColor = lblTestStatus.ForeColor;
            lblZmag.ForeColor = lblTestStatus.ForeColor;
            lblZphase.ForeColor = lblTestStatus.ForeColor;
            lblprogfreq.ForeColor = lblTestStatus.ForeColor;
        }

        public bool CheckAuxBoardPresence()
        {
            if (gBZA.SifLnkLst.Count == 0)
            {
                return false;
            }

            foreach (var pair in gBZA.SifLnkLst)
            {
                var device = pair.Value;

                for (int bd = 1; bd < MBZA_Constant.MAX_DEV_CHANNEL; bd++)
                {
                    if (device.mDevInf.mSysCfg.EnaZIM[bd] == 1 && device.mDevInf.mSysCfg.ChkZIM[bd] == 1)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        private void RefreshRtView()
        {
            
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

        private void RefreshRt(int ch = 0)
        {
            grprt.Plots[0].ClearData();
            grprt.Plots[1].ClearData();

            if (gBZA.SifLnkLst.ContainsKey(serial) == false) return;
            if (rtmode == 0)
            {
                grprt.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.dv[ch].vac, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count); //DeviceConstants.MAX_EIS_RT_RAW_POINT
            }
            else
            {
                grprt.Plots[0].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.dv[ch].vac, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // V
                grprt.Plots[1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // I
            }
        }

        //private void RefreshRt()
        //{
        //    grprt.Plots[0].ClearData();
        //    grprt.Plots[1].ClearData();

        //    for (int i = 2; i <= 13; i++)
        //        grprt.Plots[i].ClearData();

        //    if (!gBZA.SifLnkLst.ContainsKey(serial)) return;

        //    var rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata;
        //    var mainIac = rtgrp.di;

        //    //Console.WriteLine($"[MAIN] count={rtgrp.count}");
        //    for (int i = 0; i < rtgrp.count; i++)
        //    {
        //        string idxStr = (rtgrp.idx != null && i < rtgrp.idx.Length) ? rtgrp.idx[i].ToString("F2") : "-";
        //        string dvStr = (rtgrp.dv != null && i < rtgrp.dv.Length) ? rtgrp.dv[i].ToString("F6") : "-";
        //        string diStr = (rtgrp.di != null && i < rtgrp.di.Length) ? rtgrp.di[i].ToString("F6") : "-";
        //        //Console.WriteLine($"[MAIN] idx={idxStr}, dv={dvStr}, di={diStr}");
        //    }

        //    if (rtmode == 0)
        //    {
        //        if (grprt.Plots[0].Visible)
        //        {
        //            grprt.Plots[0].PlotXY(rtgrp.dv, rtgrp.di, 0, rtgrp.count);
        //        }
        //    }
        //    else
        //    {
        //        if (grprt.Plots[0].Visible)
        //            grprt.Plots[0].PlotXY(rtgrp.idx, rtgrp.dv, 0, rtgrp.count);

        //        if (grprt.Plots[1].Visible)
        //            grprt.Plots[1].PlotXY(rtgrp.idx, rtgrp.di, 0, rtgrp.count);
        //    }

        //    // AUX Plot
        //    const int pointCount = DeviceConstants.MAX_EIS_RT_RAW_POINT;
        //    var auxVals = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status.Aux_Real_val;
        //    if (auxVals == null) return;

        //    int auxCount = auxVals.Length / pointCount;

        //    for (int auxCh = 4; auxCh < Math.Min(16, auxCount); auxCh++)
        //    {
        //        int offset = auxCh * pointCount;
        //        List<double> idxList = new List<double>();
        //        List<double> vacList = new List<double>();
        //        List<double> iacList = new List<double>();

        //        for (int i = 0; i < pointCount; i++)
        //        {
        //            double v = auxVals[offset + i].vac;
        //            double iac = (mainIac != null && i < mainIac.Length) ? mainIac[i] : 0;

        //            if (double.IsNaN(v) || double.IsInfinity(v) || Math.Abs(v) < 1e-12 || Math.Abs(v) > 1e+6)
        //                continue;

        //            if (double.IsNaN(iac) || double.IsInfinity(iac) || Math.Abs(iac) < 1e-12 || Math.Abs(iac) > 1e+6)
        //                continue;

        //            idxList.Add(i);
        //            vacList.Add(v);
        //            iacList.Add(iac);
        //        }

        //        int vacPlot = auxCh - 2;
        //        int iacPlot = auxCh - 1;

        //        if (vacList.Count > 0 && grprt.Plots[vacPlot].Visible)
        //        {
        //            if (rtmode == 0)
        //                grprt.Plots[vacPlot].PlotXY(vacList.ToArray(), iacList.ToArray(), 0, vacList.Count);
        //            else
        //            {
        //                if (vacList.Count == idxList.Count && grprt.Plots[vacPlot].Visible)
        //                    grprt.Plots[vacPlot].PlotXY(idxList.ToArray(), vacList.ToArray(), 0, vacList.Count);

        //                if (iacList.Count == idxList.Count && grprt.Plots[iacPlot].Visible)
        //                    grprt.Plots[iacPlot].PlotXY(idxList.ToArray(), iacList.ToArray(), 0, iacList.Count);
        //            }
        //        }

        //        if (iacList.Count > 0 && grprt.Plots[iacPlot].Visible && rtmode == 1)
        //        {
        //            grprt.Plots[iacPlot].PlotXY(idxList.ToArray(), iacList.ToArray(), 0, iacList.Count);
        //        }
        //    }
        //}

        //private void AuxRefreshRt()
        //{
        //    grprt.Plots[2].ClearData(); // AUX1 ch0
        //    grprt.Plots[3].ClearData();
        //    grprt.Plots[4].ClearData();
        //    grprt.Plots[5].ClearData();
        //    grprt.Plots[6].ClearData();
        //    grprt.Plots[7].ClearData();
        //    grprt.Plots[8].ClearData();
        //    grprt.Plots[9].ClearData();
        //    grprt.Plots[10].ClearData();
        //    grprt.Plots[11].ClearData();
        //    grprt.Plots[12].ClearData();
        //    grprt.Plots[13].ClearData();

        //    if (!gBZA.SifLnkLst.ContainsKey(serial)) return;

        //    const int pointCount = DeviceConstants.MAX_EIS_RT_RAW_POINT;
        //    var auxVals = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status.Aux_Real_val;
        //    if (auxVals == null) return;

        //    int auxCount = auxVals.Length / pointCount;

        //    if (rtmode == 0)
        //    {
        //        var mainIac = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.di;

        //        for (int auxCh = 4; auxCh < Math.Min(16, auxCount); auxCh++)
        //        {
        //            List<double> vacList = new List<double>();
        //            List<double> iacList = new List<double>();
        //            int offset = auxCh * pointCount;

        //            for (int i = 0; i < pointCount; i++)
        //            {
        //                double v = auxVals[offset + i].vac;
        //                double iac = (mainIac != null && i < mainIac.Length) ? mainIac[i] : 0;

        //                if (double.IsNaN(v) || double.IsInfinity(v) || Math.Abs(v) < 1e-12 || Math.Abs(v) > 1e+6)
        //                    continue;

        //                vacList.Add(v);
        //                iacList.Add(iac);
        //            }

        //            if (vacList.Count > 0)
        //            {
        //                grprt.Plots[auxCh - 2].PlotXY(vacList.ToArray(), iacList.ToArray(), 0, vacList.Count); // V vs I
        //            }
        //        }
        //    }
        //    else
        //    {
        //        var mainIac = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.di;

        //        for (int auxCh = 4; auxCh < Math.Min(16, auxCount); auxCh++)
        //        {
        //            List<double> idxList = new List<double>();
        //            List<double> vacList = new List<double>();
        //            List<double> iacList = new List<double>();
        //            int offset = auxCh * pointCount;

        //            for (int i = 0; i < pointCount; i++)
        //            {
        //                double v = auxVals[offset + i].vac;
        //                double iac = (mainIac != null && i < mainIac.Length) ? mainIac[i] : 0;

        //                if (double.IsNaN(v) || double.IsInfinity(v) || Math.Abs(v) < 1e-12 || Math.Abs(v) > 1e+6)
        //                    continue;

        //                idxList.Add(i);
        //                vacList.Add(v);
        //                iacList.Add(iac);
        //            }

        //            if (vacList.Count > 0)
        //            {
        //                grprt.Plots[auxCh - 2].PlotXY(idxList.ToArray(), vacList.ToArray(), 0, vacList.Count);
        //                grprt.Plots[auxCh - 1].PlotXY(idxList.ToArray(), iacList.ToArray(), 0, iacList.Count);
        //            }
        //        }
        //    }
        //}

        //private void AuxRefreshRt()
        //{
        //    grprt.Plots[2].ClearData(); // AUX 4
        //    grprt.Plots[3].ClearData(); // AUX 5
        //    grprt.Plots[4].ClearData();
        //    grprt.Plots[5].ClearData();
        //    grprt.Plots[6].ClearData();
        //    grprt.Plots[7].ClearData();
        //    grprt.Plots[8].ClearData();
        //    grprt.Plots[9].ClearData();
        //    grprt.Plots[10].ClearData();
        //    grprt.Plots[11].ClearData();
        //    grprt.Plots[12].ClearData();
        //    grprt.Plots[13].ClearData();

        //    if (!gBZA.SifLnkLst.ContainsKey(serial)) return;

        //    const int pointCount = DeviceConstants.MAX_EIS_RT_RAW_POINT;
        //    var auxVals = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status.Aux_Real_val;
        //    if (auxVals == null) return;

        //    int auxCount = auxVals.Length / pointCount;
        //    for (int auxCh = 4; auxCh < Math.Min(16, auxCount); auxCh++)
        //    {
        //        List<double> idxList = new List<double>();
        //        List<double> vacList = new List<double>();
        //        int offset = auxCh * pointCount;

        //        for (int i = 0; i < pointCount; i++)
        //        {
        //            double v = auxVals[offset + i].vac;
        //            if (double.IsNaN(v) || double.IsInfinity(v) || Math.Abs(v) < 1e-12 || Math.Abs(v) > 1e+6)
        //                continue;
        //            idxList.Add(i);
        //            vacList.Add(v);
        //        }

        //        if (vacList.Count > 0)
        //            grprt.Plots[auxCh - 2].PlotXY(idxList.ToArray(), vacList.ToArray(), 0, vacList.Count);
        //    }
        //}

        private List<double> iacBuffer = new List<double>();
        private List<double> vacBuffer = new List<double>();
        private List<double> idxBuffer = new List<double>();
        private int globalIndex = 0;
        private const double GRAPH_DRAW_LIMIT = 1.0;
        private const int MAX_PLOT_POINTS = 30000;
        private void button1_Click(object sender, EventArgs e)
        {
            int index = -1;
            int auxSlot = -1;

            if (rawgrpListBox.CheckedItems.Contains("MAIN"))
            {
                auxSlot = 0;
                index = 0;
            }
            else
            {
                for (int i = 1; i <= 12; i++)
                {
                    if (rawgrpListBox.CheckedItems.Contains($"AUX{i}"))
                    {
                        auxSlot = (i - 1) / 4 + 1;
                        index = (i - 1) % 4;
                        break;
                    }
                }
            }

            if (auxSlot < 0 || index < 0) return;

            gBZA.SifLnkLst[serial].MBZAIF.buttonElements.bd = auxSlot;
            gBZA.SifLnkLst[serial].MBZAIF.buttonElements.ch = index;
            gBZA.SifLnkLst[serial].MBZAIF.buttonElements.isOn = true;
        }

        private void ShowRawGraph(st_zim_eis_raw_data vacRaw)
        {
            idxBuffer.Clear();
            iacBuffer.Clear();
            vacBuffer.Clear();

            //int count = DeviceConstants.MAX_EIS_POINT;
            int count = vacRaw.item.Length;

            Console.WriteLine("Index\tIAC (A)\t\tVAC (V)");
            for (int i = 0; i < count; i++)
            {
                double vi = vacRaw.item[i].vac;
                double ii = vacRaw.item[i].iac;

                Console.WriteLine($"{i:D4}\t{ii,10:F6}\t{vi,10:F6}");

                if (!double.IsNaN(vi) && !double.IsNaN(ii)
                    && Math.Abs(vi) < 1e6 && Math.Abs(ii) < 1e6)
                {
                    idxBuffer.Add(i);
                    iacBuffer.Add(ii);
                    vacBuffer.Add(vi);
                }
            }


            if (idxBuffer.Count == 0) return;

            rawgrp.Plots[1].PlotXY(idxBuffer.ToArray(), iacBuffer.ToArray());
            rawgrp.Plots[0].PlotXY(idxBuffer.ToArray(), vacBuffer.ToArray());

            rawgrp.Plots[0].Visible = true;
            rawgrp.Plots[1].Visible = true;

            rawgrp.Plots[0].XAxis = rawgrp.XAxes[0];
            rawgrp.Plots[0].YAxis = rawgrp.YAxes[0];
            rawgrp.Plots[1].XAxis = rawgrp.XAxes[0];
            rawgrp.Plots[1].YAxis = rawgrp.YAxes[0];
            gBZA.SifLnkLst[serial].MBZAIF.buttonElements.isGraphReady = false;
        }

        //private void ShowRawGraph(st_zim_eis_raw_data iacRaw, st_zim_eis_raw_data vacRaw, int count)
        //{
        //    Console.WriteLine("Index\tIAC (A)\t\tVAC (V)");
        //    idxBuffer.Clear(); iacBuffer.Clear(); vacBuffer.Clear();

        //    for (int i = 0; i < count; i++)
        //    {
        //        double vi = vacRaw.item[i].vac;
        //        double ii = iacRaw.item[i].iac;

        //        Console.WriteLine($"{i:D4}\t{ii,10:F6}\t{vi,10:F6}");

        //        if (!double.IsNaN(vi) && !double.IsNaN(ii)
        //            && Math.Abs(vi) < 1e6 && Math.Abs(ii) < 1e6)
        //        {
        //            idxBuffer.Add(i);
        //            iacBuffer.Add(ii);
        //            vacBuffer.Add(vi);
        //        }
        //    }

        //    if (idxBuffer.Count == 0) return;

        //    rawgrp.Plots[1].PlotXY(idxBuffer.ToArray(), iacBuffer.ToArray());
        //    rawgrp.Plots[0].PlotXY(idxBuffer.ToArray(), vacBuffer.ToArray());
        //}

        private void AuxRawRt(int auxSlot) // 확대 버전 그래프 ↑기존↑
        {
            int index = 0;

            var commObj = gBZA.SifLnkLst[serial].MBZAIF.mCommZim;
            if (commObj == null || !commObj.isConnected)
                return;

            st_zim_eis_raw_data vacRaw = new st_zim_eis_raw_data(0);   // AUX VAC
            st_zim_eis_raw_data iacRaw = new st_zim_eis_raw_data(0);   // MAIN IAC

            if (!commObj.ReadData(auxSlot, ref vacRaw, index)) return;
            if (!commObj.ReadData(0, ref iacRaw, index)) return;

            int count = DeviceConstants.MAX_EIS_POINT;
            Console.WriteLine($"AUX{auxSlot}Index   IAC(A)          VAC(V)");

            for (int i = 0; i < count; i++)
            {
                double vi = vacRaw.item[i].vac; // AUX
                double ii = iacRaw.item[i].iac; // MAIN red
                Console.WriteLine($"{i,4:D4}\t{ii,10:F6}\t{vi,10:F6}");

                if (!double.IsNaN(vi) && !double.IsNaN(ii) // 값 필터
                    && Math.Abs(vi) < 1e6 && Math.Abs(ii) < 1e6
                    && Math.Abs(vi) < GRAPH_DRAW_LIMIT && Math.Abs(ii) < GRAPH_DRAW_LIMIT)
                {
                    idxBuffer.Add(globalIndex);
                    iacBuffer.Add(ii);
                    vacBuffer.Add(vi);
                    globalIndex++;
                }
            }

            while (idxBuffer.Count > MAX_PLOT_POINTS)
            {
                idxBuffer.RemoveAt(0);
                iacBuffer.RemoveAt(0);
                vacBuffer.RemoveAt(0);
            }

            rawgrp.Plots[0].ClearData();
            rawgrp.Plots[1].ClearData();

            if (idxBuffer.Count == 0) return;

            rawgrp.Plots[1].PlotXY(idxBuffer.ToArray(), iacBuffer.ToArray()); // red
            rawgrp.Plots[0].PlotXY(idxBuffer.ToArray(), vacBuffer.ToArray()); // blue

            rawgrp.Plots[1].Visible = true;
            rawgrp.Plots[0].Visible = true;

            rawgrp.Plots[0].XAxis = rawgrp.XAxes[0];
            rawgrp.Plots[0].YAxis = rawgrp.YAxes[0];
            rawgrp.Plots[1].XAxis = rawgrp.XAxes[0];
            rawgrp.Plots[1].YAxis = rawgrp.YAxes[0];

            double yMin = Math.Min(iacBuffer.Min(), vacBuffer.Min());
            double yMax = Math.Max(iacBuffer.Max(), vacBuffer.Max());
            if (yMin == yMax) yMax += 0.001;

            double xMin = idxBuffer.First();
            double xMax = idxBuffer.Last();
            if (xMin == xMax) xMax += 1;

            rawgrp.YAxes[0].Caption = $"AUX{auxSlot} Raw";
            rawgrp.XAxes[0].Caption = "Data";
        }

        private readonly List<double>[] realList = new List<double>[12]
      {
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(),
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>()
      };
        private readonly List<double>[] imagList = new List<double>[12]
        {
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(),
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>()
        };
        private readonly int[] LastPlotPointAux = new int[12];
        private bool[] isFirstRunAux = new bool[12];
        private enTestState[] prevTestStateAux = new enTestState[12];
        private void RefreshAuxNyquist(int ch)
        {
            var status = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status;

            if (ch < 0 || ch >= 12 || ch >= status.Aux_zdata.Length)
                return;

            var zdata = status.Aux_zdata[ch];
            if (Math.Abs(zdata.real) < 1e-9 && Math.Abs(zdata.img) < 1e-9)
                return;

            int plotRealIdx = 7 + (ch * 2);
            int plotAccumIdx = plotRealIdx + 1;

            var stat = (enTestState)gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].TestStatus;

            if (stat == enTestState.nc_Running)
            {
                if (!isFirstRunAux[ch])
                {
                    realList[ch].Clear();
                    imagList[ch].Clear();
                    LastPlotPointAux[ch] = 0;
                    grp1.Plots[plotAccumIdx].ClearData();
                    grp1.Plots[plotRealIdx].ClearData();
                    isFirstRunAux[ch] = true;
                }
            }
            else
            {
                isFirstRunAux[ch] = false;
            }

            if (!(stat == enTestState.nc_Running))
                return;


            if (stat == enTestState.nc_Ready || stat == enTestState.Ready ||
                stat == enTestState.nc_Stopped || stat == enTestState.Stopped ||
                stat == enTestState.nc_Finished || stat == enTestState.Finished)
            {
                grp1.Plots[plotRealIdx].Visible = false;
                grp1.Plots[plotAccumIdx].Visible = false;
                return;
            }

            realList[ch].Add(zdata.real);
            imagList[ch].Add(zdata.img);

            double[] newReal = new double[] { zdata.real };
            double[] newImag = new double[] { zdata.img };

            grp1.Plots[plotAccumIdx].LineColor = Color.DarkGray;
            grp1.Plots[plotAccumIdx].PointColor = Color.DarkGray;
            grp1.Plots[plotAccumIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.Plots[plotAccumIdx].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            grp1.Plots[plotAccumIdx].PointSize = new Size(5, 5);
            grp1.Plots[plotAccumIdx].PlotXY(realList[ch].ToArray(), imagList[ch].ToArray());
            grp1.Plots[plotAccumIdx].Visible = true;

            // 실시간 (채널별 색)
            switch (ch)
            {
                case 0: grp1.Plots[plotRealIdx].LineColor = Color.Orange; grp1.Plots[plotRealIdx].PointColor = Color.Orange; break;
                case 1: grp1.Plots[plotRealIdx].LineColor = Color.Green; grp1.Plots[plotRealIdx].PointColor = Color.Green; break;
                case 2: grp1.Plots[plotRealIdx].LineColor = Color.Magenta; grp1.Plots[plotRealIdx].PointColor = Color.Magenta; break;
                case 3: grp1.Plots[plotRealIdx].LineColor = Color.Cyan; grp1.Plots[plotRealIdx].PointColor = Color.Cyan; break;
                case 4: grp1.Plots[plotRealIdx].LineColor = Color.Teal; grp1.Plots[plotRealIdx].PointColor = Color.Teal; break;
                case 5: grp1.Plots[plotRealIdx].LineColor = Color.Brown; grp1.Plots[plotRealIdx].PointColor = Color.Brown; break;
                case 6: grp1.Plots[plotRealIdx].LineColor = Color.LimeGreen; grp1.Plots[plotRealIdx].PointColor = Color.LimeGreen; break;
                case 7: grp1.Plots[plotRealIdx].LineColor = Color.Gold; grp1.Plots[plotRealIdx].PointColor = Color.Gold; break;
                case 8: grp1.Plots[plotRealIdx].LineColor = Color.DeepPink; grp1.Plots[plotRealIdx].PointColor = Color.DeepPink; break;
                case 9: grp1.Plots[plotRealIdx].LineColor = Color.MediumSeaGreen; grp1.Plots[plotRealIdx].PointColor = Color.MediumSeaGreen; break;
                case 10: grp1.Plots[plotRealIdx].LineColor = Color.DarkViolet; grp1.Plots[plotRealIdx].PointColor = Color.DarkViolet; break;
                case 11: grp1.Plots[plotRealIdx].LineColor = Color.Black; grp1.Plots[plotRealIdx].PointColor = Color.Black; break;
            }

            grp1.Plots[plotRealIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            grp1.Plots[plotRealIdx].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            grp1.Plots[plotRealIdx].PointSize = new Size(5, 5);
            grp1.Plots[plotRealIdx].PlotXYAppend(newReal, newImag);
            grp1.Plots[plotRealIdx].Visible = true;

            //========== Auto scale========== 
            double globalMinX = double.MaxValue;
            double globalMaxX = double.MinValue;
            double globalMinY = double.MaxValue;
            double globalMaxY = double.MinValue;

            for (int i = 0; i < 12; i++)
            {
                if (realList[i].Count > 0)
                {
                    double localMinX = realList[i].Min();
                    double localMaxX = realList[i].Max();
                    if (localMinX < globalMinX) globalMinX = localMinX;
                    if (localMaxX > globalMaxX) globalMaxX = localMaxX;
                }

                if (imagList[i].Count > 0)
                {
                    double localMinY = imagList[i].Min();
                    double localMaxY = imagList[i].Max();
                    if (localMinY < globalMinY) globalMinY = localMinY;
                    if (localMaxY > globalMaxY) globalMaxY = localMaxY;
                }
            }

            if (double.IsNaN(globalMinX) || double.IsNaN(globalMaxX) || double.IsInfinity(globalMinX) || double.IsInfinity(globalMaxX))
            {
                globalMinX = -1;
                globalMaxX = 1;
            }
            if (double.IsNaN(globalMinY) || double.IsNaN(globalMaxY) || double.IsInfinity(globalMinY) || double.IsInfinity(globalMaxY))
            {
                globalMinY = -1;
                globalMaxY = 1;
            }

            double expandRate = 0.5;
            double rangeX = (globalMaxX - globalMinX) * expandRate;
            double rangeY = (globalMaxY - globalMinY) * expandRate;

            double xMin = globalMinX - rangeX;
            double xMax = globalMaxX + rangeX;
            double yMin = globalMinY - rangeY;
            double yMax = globalMaxY + rangeY;

            if (xMin >= xMax) { xMin = globalMinX - 1.0; xMax = globalMaxX + 1.0; }
            if (yMin >= yMax) { yMin = globalMinY - 1.0; yMax = globalMaxY + 1.0; }

            if (double.IsNaN(xMin) || double.IsNaN(xMax) || double.IsInfinity(xMin) || double.IsInfinity(xMax)) { xMin = -1; xMax = 1; }
            if (double.IsNaN(yMin) || double.IsNaN(yMax) || double.IsInfinity(yMin) || double.IsInfinity(yMax)) { yMin = -1; yMax = 1; }

            if (double.IsNaN(xMin) || double.IsNaN(xMax) ||
            double.IsInfinity(xMin) || double.IsInfinity(xMax) ||
            xMin >= xMax)
            {
                xMin = -1;
                xMax = 1;
            }
            grp1.XAxes[0].Range = new Range(xMin, xMax);
            grp1.YAxes[0].Range = new Range(yMin, yMax);
        }

        //private readonly List<double>[] realList = new List<double>[12]
        //{
        //    new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(),
        //    new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>()
        //};
        //private readonly List<double>[] imagList = new List<double>[12]
        //{
        //    new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(),
        //    new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>()
        //};
        //private readonly int[] LastPlotPointAux = new int[12];
        //private bool[] isFirstRunAux = new bool[12];
        //private enTestState[] prevTestStateAux = new enTestState[12];

        //private readonly double[] lastFreqAux = new double[12]; // AUX 채널별 이전 주파수 저장
        //private readonly bool[] firstCycleAux = new bool[12];   // 첫 싸이클 감지 플래그

        //private void RefreshAuxNyquist(int ch)
        //{
        //    var status = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status;
        //    var zdata = status.Aux_zdata[ch];

        //    if (ch < 0 || ch >= 12 || ch >= status.Aux_zdata.Length)
        //        return;

        //    int plotRealIdx = 7 + (ch * 2);
        //    int plotAccumIdx = plotRealIdx + 1;

        //    var stat = (enTestState)gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].TestStatus;

        //    if (stat == enTestState.nc_Running)
        //    {
        //        if (!isFirstRunAux[ch])
        //        {
        //            realList[ch].Clear();
        //            imagList[ch].Clear();
        //            LastPlotPointAux[ch] = 0;
        //            grp1.Plots[plotAccumIdx].ClearData();
        //            grp1.Plots[plotRealIdx].ClearData();
        //            isFirstRunAux[ch] = true;
        //        }
        //    }
        //    else
        //    {
        //        isFirstRunAux[ch] = false;
        //    }

        //    if (!(stat == enTestState.nc_Running))
        //        return;


        //    if (stat == enTestState.nc_Ready || stat == enTestState.Ready ||
        //        stat == enTestState.nc_Stopped || stat == enTestState.Stopped ||
        //        stat == enTestState.nc_Finished || stat == enTestState.Finished)
        //    {
        //        grp1.Plots[plotRealIdx].Visible = false;
        //        grp1.Plots[plotAccumIdx].Visible = false;
        //        return;
        //    }

        //    realList[ch].Add(zdata.real);
        //    imagList[ch].Add(zdata.img);

        //    double[] newReal = new double[] { zdata.real };
        //    double[] newImag = new double[] { zdata.img };

        //    if (Nyquistcheck == true)
        //    {
        //        grp1.Plots[plotAccumIdx].LineColor = Color.DarkGray;
        //        grp1.Plots[plotAccumIdx].PointColor = Color.DarkGray;
        //        grp1.Plots[plotAccumIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
        //        grp1.Plots[plotAccumIdx].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
        //        grp1.Plots[plotAccumIdx].PointSize = new Size(5, 5);
        //        grp1.Plots[plotAccumIdx].PlotXY(realList[ch].ToArray(), imagList[ch].ToArray());
        //        grp1.Plots[plotAccumIdx].Visible = true;
        //    }

        //    // 실시간 (채널별 색)
        //    switch (ch)
        //    {
        //        case 0: grp1.Plots[plotRealIdx].LineColor = Color.Orange; grp1.Plots[plotRealIdx].PointColor = Color.Orange; break;
        //        case 1: grp1.Plots[plotRealIdx].LineColor = Color.Green; grp1.Plots[plotRealIdx].PointColor = Color.Green; break;
        //        case 2: grp1.Plots[plotRealIdx].LineColor = Color.Magenta; grp1.Plots[plotRealIdx].PointColor = Color.Magenta; break;
        //        case 3: grp1.Plots[plotRealIdx].LineColor = Color.Cyan; grp1.Plots[plotRealIdx].PointColor = Color.Cyan; break;
        //        case 4: grp1.Plots[plotRealIdx].LineColor = Color.Teal; grp1.Plots[plotRealIdx].PointColor = Color.Teal; break;
        //        case 5: grp1.Plots[plotRealIdx].LineColor = Color.Brown; grp1.Plots[plotRealIdx].PointColor = Color.Brown; break;
        //        case 6: grp1.Plots[plotRealIdx].LineColor = Color.LimeGreen; grp1.Plots[plotRealIdx].PointColor = Color.LimeGreen; break;
        //        case 7: grp1.Plots[plotRealIdx].LineColor = Color.Gold; grp1.Plots[plotRealIdx].PointColor = Color.Gold; break;
        //        case 8: grp1.Plots[plotRealIdx].LineColor = Color.DeepPink; grp1.Plots[plotRealIdx].PointColor = Color.DeepPink; break;
        //        case 9: grp1.Plots[plotRealIdx].LineColor = Color.MediumSeaGreen; grp1.Plots[plotRealIdx].PointColor = Color.MediumSeaGreen; break;
        //        case 10: grp1.Plots[plotRealIdx].LineColor = Color.DarkViolet; grp1.Plots[plotRealIdx].PointColor = Color.DarkViolet; break;
        //        case 11: grp1.Plots[plotRealIdx].LineColor = Color.Black; grp1.Plots[plotRealIdx].PointColor = Color.Black; break;
        //    }

        //    grp1.Plots[plotRealIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;
        //    grp1.Plots[plotRealIdx].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
        //    grp1.Plots[plotRealIdx].PointSize = new Size(5, 5);
        //    grp1.Plots[plotRealIdx].PlotXYAppend(newReal, newImag);
        //    grp1.Plots[plotRealIdx].Visible = true;

        //    //========== Auto scale========== 
        //    double globalMinX = double.MaxValue;
        //    double globalMaxX = double.MinValue;
        //    double globalMinY = double.MaxValue;
        //    double globalMaxY = double.MinValue;

        //    for (int i = 0; i < 12; i++)
        //    {
        //        if (realList[i].Count > 0)
        //        {
        //            double localMinX = realList[i].Min();
        //            double localMaxX = realList[i].Max();
        //            if (localMinX < globalMinX) globalMinX = localMinX;
        //            if (localMaxX > globalMaxX) globalMaxX = localMaxX;
        //        }

        //        if (imagList[i].Count > 0)
        //        {
        //            double localMinY = imagList[i].Min();
        //            double localMaxY = imagList[i].Max();
        //            if (localMinY < globalMinY) globalMinY = localMinY;
        //            if (localMaxY > globalMaxY) globalMaxY = localMaxY;
        //        }
        //    }

        //    if (double.IsNaN(globalMinX) || double.IsNaN(globalMaxX) || double.IsInfinity(globalMinX) || double.IsInfinity(globalMaxX))
        //    {
        //        globalMinX = -1;
        //        globalMaxX = 1;
        //    }
        //    if (double.IsNaN(globalMinY) || double.IsNaN(globalMaxY) || double.IsInfinity(globalMinY) || double.IsInfinity(globalMaxY))
        //    {
        //        globalMinY = -1;
        //        globalMaxY = 1;
        //    }

        //    double expandRate = 0.5;
        //    double rangeX = (globalMaxX - globalMinX) * expandRate;
        //    double rangeY = (globalMaxY - globalMinY) * expandRate;

        //    double xMin = globalMinX - rangeX;
        //    double xMax = globalMaxX + rangeX;
        //    double yMin = globalMinY - rangeY;
        //    double yMax = globalMaxY + rangeY;

        //    if (xMin >= xMax) { xMin = globalMinX - 1.0; xMax = globalMaxX + 1.0; }
        //    if (yMin >= yMax) { yMin = globalMinY - 1.0; yMax = globalMaxY + 1.0; }

        //    if (double.IsNaN(xMin) || double.IsNaN(xMax) || double.IsInfinity(xMin) || double.IsInfinity(xMax)) { xMin = -1; xMax = 1; }
        //    if (double.IsNaN(yMin) || double.IsNaN(yMax) || double.IsInfinity(yMin) || double.IsInfinity(yMax)) { yMin = -1; yMax = 1; }

        //    if (double.IsNaN(xMin) || double.IsNaN(xMax) ||
        //    double.IsInfinity(xMin) || double.IsInfinity(xMax) ||
        //    xMin >= xMax)
        //    {
        //        xMin = -1;
        //        xMax = 1;
        //    }
        //    grp1.XAxes[0].Range = new Range(xMin, xMax);
        //    grp1.YAxes[0].Range = new Range(yMin, yMax);
        //}

        //private int[] lastCycleNoAux = new int[12];   // 이전 싸이클 번호 저장
        //private bool[] isCycleChangedAux = new bool[12]; // 싸이클 바뀐 직후 한 번만 PlotXY

        //private void RefreshAuxNyquist(int ch)
        //{
        //    var status = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status;
        //    if (ch < 0 || ch >= 12 || ch >= status.Aux_zdata.Length)
        //        return;

        //    var zdata = status.Aux_zdata[ch];
        //    if (Math.Abs(zdata.real) < 1e-9 && Math.Abs(zdata.img) < 1e-9)
        //        return;

        //    double currentFreq = status.freq;
        //    int currentCycle = status.cycle;

        //    int plotRealIdx = 7 + (ch * 2);
        //    int plotAccumIdx = plotRealIdx + 1;

        //    var stat = (enTestState)gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].TestStatus;

        //    // 초기화 조건
        //    if (stat == enTestState.nc_Running)
        //    {
        //        if (!isFirstRunAux[ch])
        //        {
        //            realList[ch].Clear();
        //            imagList[ch].Clear();
        //            LastPlotPointAux[ch] = 0;
        //            grp1.Plots[plotAccumIdx].ClearData();
        //            grp1.Plots[plotRealIdx].ClearData();
        //            isFirstRunAux[ch] = true;
        //        }
        //    }
        //    else
        //    {
        //        isFirstRunAux[ch] = false;
        //    }

        //    // 비활성화 조건
        //    if (!(stat == enTestState.nc_Running))
        //        return;

        //    // 상태가 종료 계열이면 그래프 숨김
        //    if (stat == enTestState.nc_Ready || stat == enTestState.Ready ||
        //        stat == enTestState.nc_Stopped || stat == enTestState.Stopped ||
        //        stat == enTestState.nc_Finished || stat == enTestState.Finished)
        //    {
        //        grp1.Plots[plotRealIdx].Visible = false;
        //        grp1.Plots[plotAccumIdx].Visible = false;
        //        return;
        //    }

        //    // 처음 cycle 저장
        //    if (!firstCycleAux[ch])
        //    {
        //        lastFreqAux[ch] = currentFreq;
        //        firstCycleAux[ch] = true;
        //    }

        //    if (currentFreq < lastFreqAux[ch])
        //    {
        //        if (realList[ch].Count >= 0)
        //        {
        //            grp1.Plots[plotAccumIdx].LineColor = Color.DarkGray;
        //            grp1.Plots[plotAccumIdx].PointColor = Color.DarkGray;
        //            grp1.Plots[plotAccumIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
        //            grp1.Plots[plotAccumIdx].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
        //            grp1.Plots[plotAccumIdx].PointSize = new Size(5, 5);
        //            grp1.Plots[plotAccumIdx].PlotXY(realList[ch].ToArray(), imagList[ch].ToArray());
        //            grp1.Plots[plotAccumIdx].Visible = true;

        //            // ✅ 기존 누적 데이터 PlotXY 추가
        //            grp1.Plots[plotAccumIdx].PlotXYAppend(realList[ch].ToArray(), imagList[ch].ToArray());

        //            Console.WriteLine($"[AUX {ch}] 싸이클 끝. 누적 {realList[ch].Count}개 PlotXYAppend");
        //        }

        //        // ❌ ClearData() 제거 → 이전 누적 선 유지
        //        // ✅ 대신 실시간 선만 클리어
        //        //realList[ch].Clear();
        //        //imagList[ch].Clear();
        //        //grp1.Plots[plotRealIdx].ClearData();
        //    }

        //    lastFreqAux[ch] = currentFreq;

        //    // 실시간 PlotXYAppend
        //    realList[ch].Add(zdata.real);
        //    imagList[ch].Add(zdata.img);
        //    grp1.Plots[plotRealIdx].PlotXYAppend(
        //        new double[] { zdata.real },
        //        new double[] { zdata.img });

        //    grp1.Plots[plotRealIdx].Visible = true;
        //    grp1.Plots[plotRealIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;
        //    grp1.Plots[plotRealIdx].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
        //    grp1.Plots[plotRealIdx].PointSize = new Size(5, 5);

        //    // 채널별 색상 설정
        //    Color[] channelColors = {
        //        Color.Orange, Color.Green, Color.Magenta, Color.Cyan,
        //        Color.Teal, Color.Brown, Color.LimeGreen, Color.Gold,
        //        Color.DeepPink, Color.MediumSeaGreen, Color.DarkViolet, Color.Black
        //    };
        //    grp1.Plots[plotRealIdx].LineColor = channelColors[ch];
        //    grp1.Plots[plotRealIdx].PointColor = channelColors[ch];
        //}

        //// 유효한 범위 체크 함수
        //private bool IsValidRange(double min, double max)
        //{
        //    return !(double.IsNaN(min) || double.IsNaN(max) || double.IsInfinity(min) || double.IsInfinity(max) || min >= max);
        //}

        //private int[] LastPlotPointAux = new int[12];
        //private void RefreshAuxNyquist(int ch)
        //{
        //    if (ch < 0 || ch >= 12)
        //        return;

        //    var rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[ch];
        //    var lx = rtgrp.lx[0];
        //    var ly = rtgrp.ly[0];

        //    int plotRealIdx = 7 + (ch * 2);
        //    int plotAccumIdx = plotRealIdx + 1;

        //    int count = ly.Count;

        //    if (count < LastPlotPointAux[ch])
        //    {
        //        grp1.Plots[plotRealIdx].ClearData();
        //        grp1.Plots[plotAccumIdx].ClearData();
        //        LastPlotPointAux[ch] = 0;
        //        Console.WriteLine($"[AUX {ch}] 싸이클 시작됨");
        //    }

        //    int appendCount = count - LastPlotPointAux[ch];
        //    if (appendCount <= 0)
        //        return;

        //    int validStart = lx.FindIndex(LastPlotPointAux[ch], v => !double.IsNaN(v));
        //    if (validStart == -1)
        //    {
        //        Console.WriteLine($"[AUX {ch}] 모든 포인트가 NaN임. count={count}");
        //        return;
        //    }

        //    Console.WriteLine($"[AUX {ch}] append: {appendCount}, total={count}, validStart={validStart}");

        //    double[] ptx = lx.Skip(validStart).ToArray();
        //    double[] pty = ly.Skip(validStart).ToArray();

        //    grp1.Plots[plotRealIdx].PlotXYAppend(ptx, pty);
        //    grp1.Plots[plotAccumIdx].PlotXY(lx.ToArray(), ly.ToArray());

        //    LastPlotPointAux[ch] = count;
        //}

        private readonly List<double>[] auxFrequencies = new List<double>[12]
             {
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(),
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>()
             };
        private readonly List<double>[] auxMagnitudes = new List<double>[12]
        {
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(),
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>()
        };
        private readonly List<double>[] auxPhases = new List<double>[12]
        {
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(),
            new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>(), new List<double>()
        };
        private readonly int[] LastPlotPointAuxBode = new int[12];
        private bool[] isFirstRunAuxBode = new bool[12];
        private static int[] LastCycleAux = new int[12];
        private bool[] shouldPlotAccumulatedAuxBode = new bool[12];
        private readonly double[] lastFreqAux = new double[12];
        //private double[] lastFreqAux = new double[12];
        //private void RefreshAuxBodePlot(int ch, bool visible)
        //{
        //    var status = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status;
        //    var stat = (enTestState)gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].TestStatus;

        //    if (ch < 0 || ch >= 12) return;

        //    if (stat != enTestState.nc_Running)
        //    {
        //        for (int i = 0; i < 12; i++)
        //        {

        //            isFirstRunAuxBode[i] = false;
        //            LastPlotPointAuxBode[i] = 0;
        //            auxFrequencies[i].Clear();
        //            auxMagnitudes[i].Clear();
        //            auxPhases[i].Clear();
        //            lastFreqAux[i] = 0.0;
        //        }
        //        return;
        //    }

        //    var zdata = status.Aux_zdata[ch];
        //    double f = status.freq;
        //    double real = zdata.real;
        //    double imag = zdata.img;
        //    double mag = Math.Sqrt(real * real + imag * imag);
        //    double pha = Math.Atan2(imag, real) * (180.0 / Math.PI);

        //    // 유효하지 않은 값 무시
        //    //if (f <= 0.0 || (real == 0 && imag == 0))
        //    //return;

        //    int plotMagIdx = 4 + ch * 4;
        //    int plotPhaseIdx = plotMagIdx + 1;
        //    int plotAccumMagIdx = plotPhaseIdx + 1;
        //    int plotAccumPhaseIdx = plotAccumMagIdx + 1;

        //    if (!isFirstRunAuxBode[ch])
        //    {
        //        auxFrequencies[ch].Clear();
        //        auxMagnitudes[ch].Clear();
        //        auxPhases[ch].Clear();
        //        LastPlotPointAuxBode[ch] = 0;
        //        lastFreqAux[ch] = f;

        //        grp2.Plots[plotAccumMagIdx].ClearData();
        //        grp2.Plots[plotAccumPhaseIdx].ClearData();
        //        grp2.Plots[plotMagIdx].ClearData();
        //        grp2.Plots[plotPhaseIdx].ClearData();

        //        isFirstRunAuxBode[ch] = true;
        //    }

        //    // 주파수 감소: 싸이클 종료로 간주
        //    if (auxFrequencies[ch].Count > 0 && f < lastFreqAux[ch])
        //    {
        //        if (f == lastFreqAux[ch])
        //            return;

        //        double[] newF = auxFrequencies[ch].ToArray();
        //        double[] newMag = auxMagnitudes[ch].ToArray();
        //        double[] newPha = auxPhases[ch].ToArray();

        //        grp2.Plots[plotMagIdx].PlotXYAppend(newF, newMag);
        //        grp2.Plots[plotPhaseIdx].PlotXYAppend(newF, newPha);

        //        if (Bodecheck)
        //        {
        //            grp2.Plots[plotAccumMagIdx].LineColor = Color.DarkGray;
        //            grp2.Plots[plotAccumMagIdx].PointColor = Color.DarkGray;
        //            grp2.Plots[plotAccumMagIdx].LineStyle = LineStyle.Dot;
        //            grp2.Plots[plotAccumMagIdx].PlotXY(newF, newMag);

        //            grp2.Plots[plotAccumPhaseIdx].LineColor = Color.DarkGray;
        //            grp2.Plots[plotAccumPhaseIdx].PointColor = Color.DarkGray;
        //            grp2.Plots[plotAccumPhaseIdx].LineStyle = LineStyle.Dot;
        //            grp2.Plots[plotAccumPhaseIdx].PlotXY(newF, newPha);
        //        }

        //        auxFrequencies[ch].Clear();
        //        auxMagnitudes[ch].Clear();
        //        auxPhases[ch].Clear();

        //        if (f != lastFreqAux[ch])
        //        {
        //            auxFrequencies[ch].Add(f);
        //            auxMagnitudes[ch].Add(mag);
        //            auxPhases[ch].Add(pha);
        //        }
        //    }
        //    else
        //    {
        //        auxFrequencies[ch].Add(f);
        //        auxMagnitudes[ch].Add(mag);
        //        auxPhases[ch].Add(pha);
        //    }

        //    lastFreqAux[ch] = f;

        //    Console.WriteLine($"[AUX {ch}] f={f}, real={real}, imag={imag}");

        //    //grp2.Plots[plotAccumMagIdx].LineColor = Color.DarkGray;
        //    //grp2.Plots[plotAccumMagIdx].PointColor = Color.DarkGray;
        //    //grp2.Plots[plotAccumMagIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
        //    //grp2.Plots[plotAccumMagIdx].PlotXY(auxFrequencies[ch].ToArray(), auxMagnitudes[ch].ToArray());

        //    //grp2.Plots[plotAccumPhaseIdx].LineColor = Color.DarkGray;
        //    //grp2.Plots[plotAccumPhaseIdx].PointColor = Color.DarkGray;
        //    //grp2.Plots[plotAccumPhaseIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
        //    //grp2.Plots[plotAccumPhaseIdx].PlotXY(auxFrequencies[ch].ToArray(), auxPhases[ch].ToArray());

        //    switch (ch)
        //    {
        //        case 0: grp2.Plots[plotMagIdx].LineColor = Color.Orange; grp2.Plots[plotPhaseIdx].LineColor = Color.LightSkyBlue; break;
        //        case 1: grp2.Plots[plotMagIdx].LineColor = Color.Green; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumPurple; break;
        //        case 2: grp2.Plots[plotMagIdx].LineColor = Color.Magenta; grp2.Plots[plotPhaseIdx].LineColor = Color.Cyan; break;
        //        case 3: grp2.Plots[plotMagIdx].LineColor = Color.Teal; grp2.Plots[plotPhaseIdx].LineColor = Color.Brown; break;
        //        case 4: grp2.Plots[plotMagIdx].LineColor = Color.LimeGreen; grp2.Plots[plotPhaseIdx].LineColor = Color.Gold; break;
        //        case 5: grp2.Plots[plotMagIdx].LineColor = Color.DeepPink; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumSeaGreen; break;
        //        case 6: grp2.Plots[plotMagIdx].LineColor = Color.DarkViolet; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumSlateBlue; break;
        //        case 7: grp2.Plots[plotMagIdx].LineColor = Color.Crimson; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumTurquoise; break;
        //        case 8: grp2.Plots[plotMagIdx].LineColor = Color.Navy; grp2.Plots[plotPhaseIdx].LineColor = Color.Olive; break;
        //        case 9: grp2.Plots[plotMagIdx].LineColor = Color.Maroon; grp2.Plots[plotPhaseIdx].LineColor = Color.Peru; break;
        //        case 10: grp2.Plots[plotMagIdx].LineColor = Color.SaddleBrown; grp2.Plots[plotPhaseIdx].LineColor = Color.SlateBlue; break;
        //        case 11: grp2.Plots[plotMagIdx].LineColor = Color.Tomato; grp2.Plots[plotPhaseIdx].LineColor = Color.YellowGreen; break;
        //    }

        //    grp2.Plots[plotMagIdx].PointColor = grp2.Plots[plotMagIdx].LineColor;
        //    grp2.Plots[plotPhaseIdx].PointColor = grp2.Plots[plotPhaseIdx].LineColor;
        //    grp2.Plots[plotMagIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;
        //    grp2.Plots[plotPhaseIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;

        //    grp2.Plots[plotMagIdx].Visible = visible;
        //    grp2.Plots[plotPhaseIdx].Visible = visible;
        //    grp2.Plots[plotAccumMagIdx].Visible = visible;
        //    grp2.Plots[plotAccumPhaseIdx].Visible = visible;
        //}


        private void RefreshAuxBodePlot(int ch, bool visible)
        {
            var status = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status;
            var stat = (enTestState)gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].TestStatus;
            var chStat = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch];

            if (ch < 0 || ch >= 12)
                return;

            if (stat != enTestState.nc_Running)
            {
                for (int i = 0; i < 12; i++)
                {
                    isFirstRunAuxBode[i] = false;
                    LastPlotPointAuxBode[i] = 0;
                    auxFrequencies[i].Clear();
                    auxMagnitudes[i].Clear();
                    auxPhases[i].Clear();
                    LastCycleAux[i] = -1;
                }
                return;
            }

            var zdata = status.Aux_zdata[ch];
            //if (zdata.real == 0.0 && zdata.img == 0.0)
            //return;

            double f = status.freq;
            double real = zdata.real;
            double imag = zdata.img;
            double mag = Math.Sqrt(real * real + imag * imag);
            double pha = Math.Atan2(imag, real) * (180.0 / Math.PI);

            if (f == 0.0 || auxFrequencies[ch].Count > 0 && auxFrequencies[ch].Last() == f)
                return;

            int plotMagIdx = 4 + ch * 4;
            int plotPhaseIdx = plotMagIdx + 1;
            int plotAccumMagIdx = plotPhaseIdx + 1;
            int plotAccumPhaseIdx = plotAccumMagIdx + 1;

            if (!isFirstRunAuxBode[ch])
            {
                auxFrequencies[ch].Clear();
                auxMagnitudes[ch].Clear();
                auxPhases[ch].Clear();
                LastPlotPointAuxBode[ch] = 0;

                grp2.Plots[plotAccumMagIdx].ClearData();
                grp2.Plots[plotAccumPhaseIdx].ClearData();
                grp2.Plots[plotMagIdx].ClearData();
                grp2.Plots[plotPhaseIdx].ClearData();

                isFirstRunAuxBode[ch] = true;
            }

            //auxFrequencies[ch].Add(f);
            //auxMagnitudes[ch].Add(mag);
            //auxPhases[ch].Add(pha);

            //Console.WriteLine($"[AUX {ch}] f={status.freq}, real={zdata.real}, imag={zdata.img}");

            grp2.Plots[plotAccumMagIdx].LineColor = Color.DarkGray;
            grp2.Plots[plotAccumMagIdx].PointColor = Color.DarkGray;
            grp2.Plots[plotAccumMagIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.Plots[plotAccumMagIdx].PlotXY(auxFrequencies[ch].ToArray(), auxMagnitudes[ch].ToArray());

            grp2.Plots[plotAccumPhaseIdx].LineColor = Color.DarkGray;
            grp2.Plots[plotAccumPhaseIdx].PointColor = Color.DarkGray;
            grp2.Plots[plotAccumPhaseIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.Plots[plotAccumPhaseIdx].PlotXY(auxFrequencies[ch].ToArray(), auxPhases[ch].ToArray());

            // Plot 색상 설정
            switch (ch)
            {
                case 0: grp2.Plots[plotMagIdx].LineColor = Color.Orange; grp2.Plots[plotPhaseIdx].LineColor = Color.LightSkyBlue; break;
                case 1: grp2.Plots[plotMagIdx].LineColor = Color.Green; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumPurple; break;
                case 2: grp2.Plots[plotMagIdx].LineColor = Color.Magenta; grp2.Plots[plotPhaseIdx].LineColor = Color.Cyan; break;
                case 3: grp2.Plots[plotMagIdx].LineColor = Color.Teal; grp2.Plots[plotPhaseIdx].LineColor = Color.Brown; break;
                case 4: grp2.Plots[plotMagIdx].LineColor = Color.LimeGreen; grp2.Plots[plotPhaseIdx].LineColor = Color.Gold; break;
                case 5: grp2.Plots[plotMagIdx].LineColor = Color.DeepPink; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumSeaGreen; break;
                case 6: grp2.Plots[plotMagIdx].LineColor = Color.DarkViolet; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumSlateBlue; break;
                case 7: grp2.Plots[plotMagIdx].LineColor = Color.Crimson; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumTurquoise; break;
                case 8: grp2.Plots[plotMagIdx].LineColor = Color.Navy; grp2.Plots[plotPhaseIdx].LineColor = Color.Olive; break;
                case 9: grp2.Plots[plotMagIdx].LineColor = Color.Maroon; grp2.Plots[plotPhaseIdx].LineColor = Color.Peru; break;
                case 10: grp2.Plots[plotMagIdx].LineColor = Color.SaddleBrown; grp2.Plots[plotPhaseIdx].LineColor = Color.SlateBlue; break;
                case 11: grp2.Plots[plotMagIdx].LineColor = Color.Tomato; grp2.Plots[plotPhaseIdx].LineColor = Color.YellowGreen; break;
            }

            grp2.Plots[plotMagIdx].PointColor = grp2.Plots[plotMagIdx].LineColor;
            grp2.Plots[plotPhaseIdx].PointColor = grp2.Plots[plotPhaseIdx].LineColor;
            grp2.Plots[plotMagIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            grp2.Plots[plotPhaseIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;

            if (auxFrequencies[ch].Count > 0 && f < lastFreqAux[ch])
            {
                if (auxFrequencies[ch].Count > 0)
                {
                    double[] newF = auxFrequencies[ch].ToArray();
                    double[] newMag = auxMagnitudes[ch].ToArray();
                    double[] newPha = auxPhases[ch].ToArray();

                    grp2.Plots[plotAccumMagIdx].LineColor = Color.DarkGray;
                    grp2.Plots[plotAccumMagIdx].PointColor = Color.DarkGray;
                    grp2.Plots[plotAccumMagIdx].LineStyle = LineStyle.Dot;
                    grp2.Plots[plotAccumMagIdx].PlotXY(newF, newMag);

                    grp2.Plots[plotAccumPhaseIdx].LineColor = Color.DarkGray;
                    grp2.Plots[plotAccumPhaseIdx].PointColor = Color.DarkGray;
                    grp2.Plots[plotAccumPhaseIdx].LineStyle = LineStyle.Dot;
                    grp2.Plots[plotAccumPhaseIdx].PlotXY(newF, newPha);
                }
            }

            if (auxFrequencies[ch].Count > 0 && f < lastFreqAux[ch])
            {

                double[] newF = auxFrequencies[ch].Skip(LastPlotPointAuxBode[ch]).ToArray();
                double[] newMag = auxMagnitudes[ch].Skip(LastPlotPointAuxBode[ch]).ToArray();
                double[] newPha = auxPhases[ch].Skip(LastPlotPointAuxBode[ch]).ToArray();

                grp2.Plots[plotMagIdx].PlotXYAppend(newF, newMag);
                grp2.Plots[plotPhaseIdx].PlotXYAppend(newF, newPha);

                LastPlotPointAuxBode[ch] = auxFrequencies[ch].Count;
            }

            auxFrequencies[ch].Add(f); // 
            auxMagnitudes[ch].Add(mag);
            auxPhases[ch].Add(pha);

            lastFreqAux[ch] = f;

            grp2.Plots[plotMagIdx].Visible = visible;
            grp2.Plots[plotPhaseIdx].Visible = visible;
            grp2.Plots[plotAccumMagIdx].Visible = visible;
            grp2.Plots[plotAccumPhaseIdx].Visible = visible;
        }

        //private void RefreshAuxBodePlot(int ch, bool visible)
        //{
        //    var status = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status;
        //    var stat = (enTestState)gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].TestStatus;

        //    if (ch < 0 || ch >= 12)
        //        return;

        //    if (!(stat == enTestState.nc_Running))
        //    {
        //        isFirstRunAuxBode[ch] = false;
        //        return;
        //    }

        //    var zdata = status.Aux_zdata[ch];
        //    if (Math.Abs(zdata.real) < 1e-9 && Math.Abs(zdata.img) < 1e-9)
        //        return;

        //    double f = status.freq;
        //    double real = zdata.real;
        //    double imag = zdata.img;
        //    double mag = Math.Sqrt(real * real + imag * imag);
        //    double pha = Math.Atan2(imag, real) * (180.0 / Math.PI);

        //    int plotMagIdx = 4 + ch * 4;
        //    int plotPhaseIdx = plotMagIdx + 1;
        //    int plotAccumMagIdx = plotPhaseIdx + 1;
        //    int plotAccumPhaseIdx = plotAccumMagIdx + 1;

        //    if (stat == enTestState.nc_Running)
        //    {
        //        if (!isFirstRunAuxBode[ch])
        //        {
        //            auxFrequencies[ch].Clear();
        //            auxMagnitudes[ch].Clear();
        //            auxPhases[ch].Clear();
        //            LastPlotPointAuxBode[ch] = 0;

        //            grp2.Plots[plotAccumMagIdx].ClearData();
        //            grp2.Plots[plotAccumPhaseIdx].ClearData();
        //            grp2.Plots[plotMagIdx].ClearData();
        //            grp2.Plots[plotPhaseIdx].ClearData();

        //            isFirstRunAuxBode[ch] = true;
        //            //return;
        //        }
        //    }
        //    else
        //    {
        //        isFirstRunAuxBode[ch] = false;
        //        return;
        //    }

        //    auxFrequencies[ch].Add(f);
        //    auxMagnitudes[ch].Add(mag);
        //    auxPhases[ch].Add(pha);

        //    if (Bodecheck == true)
        //    {
        //        if (auxFrequencies[ch].Count == auxMagnitudes[ch].Count &&
        //            auxFrequencies[ch].Count == auxPhases[ch].Count)
        //        {
        //            grp2.Plots[plotAccumMagIdx].LineColor = Color.DarkGray;
        //            grp2.Plots[plotAccumMagIdx].PointColor = Color.DarkGray;
        //            grp2.Plots[plotAccumMagIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
        //            grp2.Plots[plotAccumMagIdx].PlotXY(auxFrequencies[ch].ToArray(), auxMagnitudes[ch].ToArray());

        //            grp2.Plots[plotAccumPhaseIdx].LineColor = Color.DarkGray;
        //            grp2.Plots[plotAccumPhaseIdx].PointColor = Color.DarkGray;
        //            grp2.Plots[plotAccumPhaseIdx].LineStyle = NationalInstruments.UI.LineStyle.Dot;
        //            grp2.Plots[plotAccumPhaseIdx].PlotXY(auxFrequencies[ch].ToArray(), auxPhases[ch].ToArray());
        //        }
        //    }

        //    double[] newF = new[] { f };
        //    double[] newMag = new[] { mag };
        //    double[] newPha = new[] { pha };

        //    // 실시간
        //    switch (ch)
        //    {
        //        case 0: grp2.Plots[plotMagIdx].LineColor = Color.Orange; grp2.Plots[plotPhaseIdx].LineColor = Color.LightSkyBlue; break;
        //        case 1: grp2.Plots[plotMagIdx].LineColor = Color.Green; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumPurple; break;
        //        case 2: grp2.Plots[plotMagIdx].LineColor = Color.Magenta; grp2.Plots[plotPhaseIdx].LineColor = Color.Cyan; break;
        //        case 3: grp2.Plots[plotMagIdx].LineColor = Color.Teal; grp2.Plots[plotPhaseIdx].LineColor = Color.Brown; break;
        //        case 4: grp2.Plots[plotMagIdx].LineColor = Color.LimeGreen; grp2.Plots[plotPhaseIdx].LineColor = Color.Gold; break;
        //        case 5: grp2.Plots[plotMagIdx].LineColor = Color.DeepPink; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumSeaGreen; break;
        //        case 6: grp2.Plots[plotMagIdx].LineColor = Color.DarkViolet; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumSlateBlue; break;
        //        case 7: grp2.Plots[plotMagIdx].LineColor = Color.Crimson; grp2.Plots[plotPhaseIdx].LineColor = Color.MediumTurquoise; break;
        //        case 8: grp2.Plots[plotMagIdx].LineColor = Color.Navy; grp2.Plots[plotPhaseIdx].LineColor = Color.Olive; break;
        //        case 9: grp2.Plots[plotMagIdx].LineColor = Color.Maroon; grp2.Plots[plotPhaseIdx].LineColor = Color.Peru; break;
        //        case 10: grp2.Plots[plotMagIdx].LineColor = Color.SaddleBrown; grp2.Plots[plotPhaseIdx].LineColor = Color.SlateBlue; break;
        //        case 11: grp2.Plots[plotMagIdx].LineColor = Color.Tomato; grp2.Plots[plotPhaseIdx].LineColor = Color.YellowGreen; break;
        //    }

        //    grp2.Plots[plotMagIdx].PointColor = grp2.Plots[plotMagIdx].LineColor;
        //    grp2.Plots[plotPhaseIdx].PointColor = grp2.Plots[plotPhaseIdx].LineColor;
        //    grp2.Plots[plotMagIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;
        //    grp2.Plots[plotPhaseIdx].LineStyle = NationalInstruments.UI.LineStyle.Solid;

        //    grp2.Plots[plotMagIdx].PlotXYAppend(newF, newMag);
        //    grp2.Plots[plotPhaseIdx].PlotXYAppend(newF, newPha);

        //    grp2.Plots[plotMagIdx].Visible = visible;
        //    grp2.Plots[plotPhaseIdx].Visible = visible;
        //    grp2.Plots[plotAccumMagIdx].Visible = visible;
        //    grp2.Plots[plotAccumPhaseIdx].Visible = visible;

        //    //======= 오토스케일 추가 =======//
        //    double maxMag = double.MinValue;
        //    double minMag = double.MaxValue;
        //    double maxFreq = double.MinValue;
        //    double minFreq = double.MaxValue;

        //    for (int i = 0; i < 12; i++)
        //    {
        //        if (auxMagnitudes[i].Count > 0)
        //        {
        //            double localMax = auxMagnitudes[i].Max();
        //            double localMin = auxMagnitudes[i].Min();
        //            if (localMax > maxMag) maxMag = localMax;
        //            if (localMin < minMag) minMag = localMin;
        //        }
        //        if (auxFrequencies[i].Count > 0)
        //        {
        //            double localMax = auxFrequencies[i].Max();
        //            double localMin = auxFrequencies[i].Min();
        //            if (localMax > maxFreq) maxFreq = localMax;
        //            if (localMin < minFreq) minFreq = localMin;
        //        }
        //    }
        //}

        //private void RefreshGraphEIS()
        //{
        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    var status = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status;

        //    int plotcount0 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].Count;
        //    int plotcount1 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[1].Count;
        //    int appendcount0 = 0;
        //    int appendcount1 = 0;

        //    if (plotcount0 == 0 && plotcount1 == 0) return;

        //    if (plotcount0 == LastPlotPoint && plotcount1 == LastPlotPoint1) return;

        //    int st0 = 0;
        //    int st1 = 0;

        //    if (plotcount0 < LastPlotPoint || plotcount1 < LastPlotPoint1)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st0 = LastPlotPoint;
        //        appendcount0 = plotcount0 - LastPlotPoint;
        //        LastPlotPoint = plotcount0;

        //        st1 = LastPlotPoint1;
        //        appendcount1 = plotcount1 - LastPlotPoint1;
        //        LastPlotPoint1 = plotcount1;
        //    }

        //    int nPlot1 = 1;
        //    int nPlot2 = 2;

        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx0 = new double[appendcount0];
        //    double[] pty0 = new double[appendcount0];
        //    double[] ptx1 = new double[appendcount1];
        //    double[] pty1 = new double[appendcount1];

        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //    {
        //        if (appendcount0 > 0)
        //        {
        //            tx = rtgrp.plot[0].lx[0].ToArray();
        //            ty = rtgrp.plot[0].ly[0].ToArray();
        //            Array.Copy(tx, st0, ptx0, 0, appendcount0);
        //            Array.Copy(ty, st0, pty0, 0, appendcount0);
        //            grp1.Plots[0 + nPlot1].PlotXYAppend(ptx0, pty0);
        //        }
        //        if (appendcount1 > 0)
        //        {
        //            tx = rtgrp.plot[0].lx[1].ToArray();
        //            ty = rtgrp.plot[0].ly[1].ToArray();
        //            Array.Copy(tx, st1, ptx1, 0, appendcount1);
        //            Array.Copy(ty, st1, pty1, 0, appendcount1);
        //            grp1.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
        //        }

        //        if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //        {
        //            if (appendcount0 > 0)
        //            {
        //                tx = rtgrp.plot[2].lx[0].ToArray();
        //                ty = rtgrp.plot[2].ly[0].ToArray();
        //                Array.Copy(tx, st0, ptx0, 0, appendcount0);
        //                Array.Copy(ty, st0, pty0, 0, appendcount0);
        //                grp2.Plots[0 + nPlot2].PlotXYAppend(ptx0, pty0);
        //            }
        //            if (appendcount1 > 0)
        //            {
        //                tx = rtgrp.plot[2].lx[1].ToArray();
        //                ty = rtgrp.plot[2].ly[1].ToArray();
        //                Array.Copy(tx, st1, ptx1, 0, appendcount1);
        //                Array.Copy(ty, st1, pty1, 0, appendcount1);
        //                grp2.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
        //            }
        //        }

        //        if (appendcount0 > 0)
        //        {
        //            tx = rtgrp.plot[3].lx[0].ToArray();
        //            ty = rtgrp.plot[3].ly[0].ToArray();
        //            Array.Copy(tx, st0, ptx0, 0, appendcount0);
        //            Array.Copy(ty, st0, pty0, 0, appendcount0);
        //            grp2.Plots[1 + nPlot2].PlotXYAppend(ptx0, pty0);
        //        }
        //        if (appendcount1 > 0)
        //        {
        //            tx = rtgrp.plot[3].lx[1].ToArray();
        //            ty = rtgrp.plot[3].ly[1].ToArray();
        //            Array.Copy(tx, st1, ptx1, 0, appendcount1);
        //            Array.Copy(ty, st1, pty1, 0, appendcount1);
        //            grp2.Plots[1].PlotXYAppend(ptx1, pty1);  // 0206 7
        //        }
        //    }
        //}

        //private void RefreshGraphHFR()
        //{
        //    grp1.Plots[8].LineColor = Color.LightSkyBlue;
        //    grp1.Plots[8].PointColor = Color.LightSkyBlue;
        //    grp1.Plots[8].LineStyle = LineStyle.Solid;
        //    grp1.Plots[10].LineColor = Color.MediumPurple;
        //    grp1.Plots[10].PointColor = Color.MediumPurple;
        //    grp1.Plots[10].LineStyle = LineStyle.Solid;
        //    grp1.Plots[12].LineColor = Color.OliveDrab;
        //    grp1.Plots[12].PointColor = Color.OliveDrab;
        //    grp1.Plots[12].LineStyle = LineStyle.Solid;
        //    grp1.Plots[14].LineColor = Color.SaddleBrown;
        //    grp1.Plots[14].PointColor = Color.SaddleBrown;
        //    grp1.Plots[14].LineStyle = LineStyle.Solid;
        //    grp1.Plots[16].LineColor = Color.HotPink;
        //    grp1.Plots[16].PointColor = Color.HotPink;
        //    grp1.Plots[16].LineStyle = LineStyle.Solid;
        //    grp1.Plots[18].LineColor = Color.Lime;
        //    grp1.Plots[18].PointColor = Color.Lime;
        //    grp1.Plots[18].LineStyle = LineStyle.Solid;
        //    grp1.Plots[20].LineColor = Color.SteelBlue;
        //    grp1.Plots[20].PointColor = Color.SteelBlue;
        //    grp1.Plots[20].LineStyle = LineStyle.Solid;
        //    grp1.Plots[22].LineColor = Color.SlateBlue;
        //    grp1.Plots[22].PointColor = Color.SlateBlue;
        //    grp1.Plots[22].LineStyle = LineStyle.Solid;
        //    grp1.Plots[24].LineColor = Color.DarkCyan;
        //    grp1.Plots[24].PointColor = Color.DarkCyan;
        //    grp1.Plots[24].LineStyle = LineStyle.Solid;
        //    grp1.Plots[26].LineColor = Color.DarkOrange;
        //    grp1.Plots[26].PointColor = Color.DarkOrange;
        //    grp1.Plots[26].LineStyle = LineStyle.Solid;
        //    grp1.Plots[28].LineColor = Color.Coral;
        //    grp1.Plots[28].PointColor = Color.Coral;
        //    grp1.Plots[28].LineStyle = LineStyle.Solid;
        //    grp1.Plots[30].LineColor = Color.Gray;
        //    grp1.Plots[30].PointColor = Color.Gray;
        //    grp1.Plots[30].LineStyle = LineStyle.Solid;

        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
        //    double maxval;
        //    double minval;
        //    double cmpval;

        //    int plotcount = rtgrp.plot[3].ly[0].Count;
        //    if (plotcount == 0) return;

        //    int appendcount = plotcount - LastPlotPoint;
        //    if (appendcount <= 0) return;
        //    int st = LastPlotPoint;
        //    LastPlotPoint = plotcount;

        //    int nPlot1 = 1, nPlot2 = 2;
        //    double[] tx, ty;
        //    double[] ptx = new double[appendcount];
        //    double[] pty = new double[appendcount];
        //    double time0 = -1.0, time1 = -1.0;


        //    // ================= MAIN Real/Vdc =================
        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //    {
        //        // Real
        //        tx = rtgrp.plot[0].lx[0].ToArray();
        //        ty = rtgrp.plot[0].ly[0].ToArray();
        //        Array.Copy(tx, st, ptx, 0, appendcount);
        //        Array.Copy(ty, st, pty, 0, appendcount);
        //        if (appendcount > 0) time0 = ptx[appendcount - 1];
        //        grp1.Plots[0 + nPlot1].PlotXYAppend(ptx, pty);

        //        cmpval = Math.Abs(rtgrp.plot[0].Maxval[0]);
        //        if (cmpval < Math.Abs(rtgrp.plot[0].Minval[0]))
        //        {
        //            cmpval = Math.Abs(rtgrp.plot[0].Minval[0]);
        //        }

        //        maxval = rtgrp.plot[0].Maxval[0] + (cmpval * GrpSpaceRate);
        //        minval = rtgrp.plot[0].Minval[0] - (cmpval * GrpSpaceRate);
        //        if (minval == maxval && maxval == 0.0)
        //        {
        //            minval = -1.0;
        //            maxval = +1.0;
        //        }
        //        grp1.YAxes[0].Range = new Range(minval, maxval);

        //        // Vdc
        //        tx = rtgrp.plot[1].lx[0].ToArray();
        //        ty = rtgrp.plot[1].ly[0].ToArray();
        //        Array.Copy(tx, st, ptx, 0, appendcount);
        //        Array.Copy(ty, st, pty, 0, appendcount);
        //        grp1.Plots[1 + nPlot1].PlotXYAppend(ptx, pty);

        //        cmpval = Math.Abs(rtgrp.plot[1].Maxval[0]);
        //        if (cmpval < Math.Abs(rtgrp.plot[1].Minval[0]))
        //        {
        //            cmpval = Math.Abs(rtgrp.plot[1].Minval[0]);
        //        }

        //        maxval = rtgrp.plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
        //        minval = rtgrp.plot[1].Minval[0] - (cmpval * GrpSpaceRate);
        //        if (minval == maxval)
        //        {
        //            minval -= minval * 0.1;
        //            maxval += maxval * 0.1;
        //        }
        //        else if (maxval == 0.0)
        //        {
        //            minval = -1.0;
        //            maxval = +1.0;
        //        }
        //        grp1.YAxes[1].Range = new Range(minval, maxval);

        //        for (int bd = 0; bd < 3; bd++)
        //        {
        //            for (int ch = 0; ch < 4; ch++)
        //            {
        //                int auxIdx = bd * 4 + ch;
        //                int uiBase = 7 + auxIdx * 2;

        //                int count2 = rtauxgrp.plot[2].ly[auxIdx].Count;
        //                if (count2 > st)
        //                {
        //                    int auxappend = count2 - st;
        //                    double[] x = rtauxgrp.plot[2].lx[auxIdx].ToArray();
        //                    double[] y = rtauxgrp.plot[2].ly[auxIdx].ToArray();
        //                    double[] a1ptx = new double[auxappend];
        //                    double[] a1pty = new double[auxappend];
        //                    Array.Copy(x, st, a1ptx, 0, auxappend);
        //                    Array.Copy(y, st, a1pty, 0, auxappend);
        //                    grp1.Plots[uiBase].PlotXYAppend(a1ptx, a1pty);

        //                    cmpval = Math.Abs(rtauxgrp.plot[2].Maxval[auxIdx]);
        //                    if (cmpval < Math.Abs(rtauxgrp.plot[2].Minval[auxIdx]))
        //                        cmpval = Math.Abs(rtauxgrp.plot[2].Minval[auxIdx]);

        //                    maxval = rtauxgrp.plot[2].Maxval[auxIdx] + (cmpval * GrpSpaceRate);
        //                    minval = rtauxgrp.plot[2].Minval[auxIdx] - (cmpval * GrpSpaceRate);

        //                    if (minval == maxval && maxval == 0.0)
        //                    {
        //                        minval = -1.0;
        //                        maxval = +1.0;
        //                    }
        //                    grp1.YAxes[uiBase].Range = new Range(minval, maxval);
        //                }

        //                int count3 = rtauxgrp.plot[3].ly[auxIdx].Count;
        //                if (count3 > st)
        //                {
        //                    int auxappend = count3 - st;
        //                    double[] x = rtauxgrp.plot[3].lx[auxIdx].ToArray();
        //                    double[] y = rtauxgrp.plot[3].ly[auxIdx].ToArray();
        //                    double[] a2ptx = new double[auxappend];
        //                    double[] a2pty = new double[auxappend];
        //                    Array.Copy(x, st, a2ptx, 0, auxappend);
        //                    Array.Copy(y, st, a2pty, 0, auxappend);
        //                    grp1.Plots[uiBase + 1].PlotXYAppend(a2ptx, a2pty);

        //                    cmpval = Math.Abs(rtauxgrp.plot[3].Maxval[auxIdx]);
        //                    if (cmpval < Math.Abs(rtauxgrp.plot[3].Minval[auxIdx]))
        //                        cmpval = Math.Abs(rtauxgrp.plot[3].Minval[auxIdx]);

        //                    maxval = rtauxgrp.plot[3].Maxval[auxIdx] + (cmpval * GrpSpaceRate);
        //                    minval = rtauxgrp.plot[3].Minval[auxIdx] - (cmpval * GrpSpaceRate);

        //                    if (minval == maxval && maxval == 0.0)
        //                    {
        //                        minval = -1.0;
        //                        maxval = +1.0;
        //                    }
        //                    grp1.YAxes[uiBase + 1].Range = new Range(minval, maxval);
        //                }
        //            }
        //        }

        //        //// ================= MAIN Cs/Cp =================
        //        if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //        {
        //            // Cs
        //            tx = rtgrp.plot[2].lx[0].ToArray();
        //            ty = rtgrp.plot[2].ly[0].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            if (appendcount > 0) time1 = ptx[appendcount - 1];
        //            grp2.Plots[0 + nPlot2].PlotXYAppend(ptx, pty);
        //            cmpval = Math.Abs(rtgrp.plot[2].Maxval[0]);
        //            if (cmpval < Math.Abs(rtgrp.plot[2].Minval[0]))
        //            {
        //                cmpval = Math.Abs(rtgrp.plot[2].Minval[0]);
        //            }

        //            maxval = rtgrp.plot[2].Maxval[0] + (cmpval * GrpSpaceRate);
        //            minval = rtgrp.plot[2].Minval[0] - (cmpval * GrpSpaceRate);
        //            if (minval == maxval && maxval == 0.0)
        //            {
        //                minval = -1.0;
        //                maxval = +1.0;
        //            }
        //            grp2.YAxes[0].Range = new Range(minval, maxval);

        //            // Cp
        //            tx = rtgrp.plot[3].lx[0].ToArray();
        //            ty = rtgrp.plot[3].ly[0].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[1 + nPlot2].PlotXYAppend(ptx, pty);


        //            cmpval = Math.Abs(rtgrp.plot[3].Maxval[0]);
        //            if (cmpval < Math.Abs(rtgrp.plot[3].Minval[0]))
        //            {
        //                cmpval = Math.Abs(rtgrp.plot[3].Minval[0]);
        //            }

        //            maxval = rtgrp.plot[3].Maxval[0] + (cmpval * GrpSpaceRate);
        //            minval = rtgrp.plot[3].Minval[0] - (cmpval * GrpSpaceRate);
        //            if (minval == maxval)
        //            {
        //                minval -= minval * 0.1;
        //                maxval += maxval * 0.1;
        //            }
        //            else if (maxval == 0.0)
        //            {
        //                minval = -1.0;
        //                maxval = +1.0;
        //            }
        //            grp2.YAxes[1].Range = new Range(minval, maxval);

        //            //// ================= A1_CH0 =================
        //            //int auxcount2 = rtauxgrp.plot[4].ly[0].Count;
        //            //if (auxcount2 > st)
        //            //{
        //            //    int auxappend = auxcount2 - st;
        //            //    double[] auxptx2 = new double[auxappend];
        //            //    double[] auxpty2 = new double[auxappend];
        //            //    tx = rtauxgrp.plot[4].lx[0].ToArray();
        //            //    ty = rtauxgrp.plot[4].ly[0].ToArray();
        //            //    Array.Copy(tx, st, auxptx2, 0, auxappend);
        //            //    Array.Copy(ty, st, auxpty2, 0, auxappend);
        //            //    grp2.Plots[8].PlotXYAppend(auxptx2, auxpty2);
        //            //}   

        //            for (int bd = 0; bd < 3; bd++)
        //            {
        //                for (int ch = 0; ch < 4; ch++)
        //                {
        //                    int auxIdx = bd * 4 + ch;
        //                    int uiBase = 8 + (auxIdx * 4);

        //                    // plot[4] → R1CS
        //                    // plot[4] → grp2.Plots[uiBase + 0]
        //                    int cnt1 = rtauxgrp.plot[4].ly[auxIdx].Count;
        //                    if (cnt1 > st)
        //                    {
        //                        int auxappend = cnt1 - st;
        //                        double[] x = rtauxgrp.plot[4].lx[auxIdx].ToArray();
        //                        double[] y = rtauxgrp.plot[4].ly[auxIdx].ToArray();
        //                        double[] a3ptx = new double[auxappend];
        //                        double[] a3pty = new double[auxappend];
        //                        Array.Copy(x, st, a3ptx, 0, auxappend);
        //                        Array.Copy(y, st, a3pty, 0, auxappend);
        //                        grp2.Plots[uiBase + 0].PlotXYAppend(a3ptx, a3pty);

        //                        cmpval = Math.Abs(rtauxgrp.plot[4].Maxval[auxIdx]);
        //                        if (cmpval < Math.Abs(rtauxgrp.plot[4].Minval[auxIdx]))
        //                            cmpval = Math.Abs(rtauxgrp.plot[4].Minval[auxIdx]);

        //                        maxval = rtauxgrp.plot[4].Maxval[auxIdx] + (cmpval * GrpSpaceRate);
        //                        minval = rtauxgrp.plot[4].Minval[auxIdx] - (cmpval * GrpSpaceRate);

        //                        if (minval == maxval && maxval == 0.0)
        //                        {
        //                            minval = -1.0;
        //                            maxval = +1.0;
        //                        }
        //                        grp2.YAxes[uiBase + 0].Range = new Range(minval, maxval);
        //                    }

        //                    int cnt2 = rtauxgrp.plot[5].ly[auxIdx].Count;
        //                    if (cnt2 > st)
        //                    {
        //                        int auxappend = cnt2 - st;
        //                        double[] x = rtauxgrp.plot[5].lx[auxIdx].ToArray();
        //                        double[] y = rtauxgrp.plot[5].ly[auxIdx].ToArray();
        //                        double[] a4ptx = new double[auxappend];
        //                        double[] a4pty = new double[auxappend];
        //                        Array.Copy(x, st, a4ptx, 0, auxappend);
        //                        Array.Copy(y, st, a4pty, 0, auxappend);
        //                        grp2.Plots[uiBase + 1].PlotXYAppend(a4ptx, a4pty);

        //                        cmpval = Math.Abs(rtauxgrp.plot[5].Maxval[auxIdx]);
        //                        if (cmpval < Math.Abs(rtauxgrp.plot[5].Minval[auxIdx]))
        //                            cmpval = Math.Abs(rtauxgrp.plot[5].Minval[auxIdx]);

        //                        maxval = rtauxgrp.plot[5].Maxval[auxIdx] + (cmpval * GrpSpaceRate);
        //                        minval = rtauxgrp.plot[5].Minval[auxIdx] - (cmpval * GrpSpaceRate);

        //                        if (minval == maxval && maxval == 0.0)
        //                        {
        //                            minval = -1.0;
        //                            maxval = +1.0;
        //                        }
        //                        grp2.YAxes[uiBase + 1].Range = new Range(minval, maxval);
        //                    }
        //                }
        //            }              
        //        }

        //        if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //        {
        //            RefreshGraphAxisTimeView(time0, time1);
        //        }
        //    }
        //}

        private void RefreshGraphHFR()
        {
            grp1.Plots[8].LineColor = Color.LightSkyBlue;grp1.Plots[8].PointColor = Color.LightSkyBlue;grp1.Plots[8].LineStyle = LineStyle.Solid;
            grp1.Plots[10].LineColor = Color.MediumPurple;grp1.Plots[10].PointColor = Color.MediumPurple;grp1.Plots[10].LineStyle = LineStyle.Solid;
            grp1.Plots[12].LineColor = Color.OliveDrab;grp1.Plots[12].PointColor = Color.OliveDrab;grp1.Plots[12].LineStyle = LineStyle.Solid;
            grp1.Plots[14].LineColor = Color.SaddleBrown;grp1.Plots[14].PointColor = Color.SaddleBrown;grp1.Plots[14].LineStyle = LineStyle.Solid;
            grp1.Plots[16].LineColor = Color.HotPink;grp1.Plots[16].PointColor = Color.HotPink;grp1.Plots[16].LineStyle = LineStyle.Solid;
            grp1.Plots[18].LineColor = Color.Lime;grp1.Plots[18].PointColor = Color.Lime;grp1.Plots[18].LineStyle = LineStyle.Solid;
            grp1.Plots[20].LineColor = Color.SteelBlue;grp1.Plots[20].PointColor = Color.SteelBlue;grp1.Plots[20].LineStyle = LineStyle.Solid;
            grp1.Plots[22].LineColor = Color.SlateBlue;grp1.Plots[22].PointColor = Color.SlateBlue;grp1.Plots[22].LineStyle = LineStyle.Solid;
            grp1.Plots[24].LineColor = Color.DarkCyan;grp1.Plots[24].PointColor = Color.DarkCyan;grp1.Plots[24].LineStyle = LineStyle.Solid;
            grp1.Plots[26].LineColor = Color.DarkOrange;grp1.Plots[26].PointColor = Color.DarkOrange;grp1.Plots[26].LineStyle = LineStyle.Solid;
            grp1.Plots[28].LineColor = Color.Coral;grp1.Plots[28].PointColor = Color.Coral;grp1.Plots[28].LineStyle = LineStyle.Solid;
            grp1.Plots[30].LineColor = Color.Gray;grp1.Plots[30].PointColor = Color.Gray;grp1.Plots[30].LineStyle = LineStyle.Solid;

            grp2.Plots[10].LineColor = Color.Crimson;grp2.Plots[10].PointColor = Color.Crimson;grp2.Plots[10].LineStyle = LineStyle.Solid;
            grp2.Plots[11].LineColor = Color.DodgerBlue;grp2.Plots[11].PointColor = Color.DodgerBlue;grp2.Plots[11].LineStyle = LineStyle.Solid;
            grp2.Plots[14].LineColor = Color.Chartreuse;grp2.Plots[14].PointColor = Color.Chartreuse;grp2.Plots[14].LineStyle = LineStyle.Solid;
            grp2.Plots[15].LineColor = Color.Indigo;grp2.Plots[15].PointColor = Color.Indigo;grp2.Plots[15].LineStyle = LineStyle.Solid;
            grp2.Plots[18].LineColor = Color.Turquoise;grp2.Plots[18].PointColor = Color.Turquoise;grp2.Plots[18].LineStyle = LineStyle.Solid;
            grp2.Plots[19].LineColor = Color.DarkSlateGray;grp2.Plots[19].PointColor = Color.DarkSlateGray;grp2.Plots[19].LineStyle = LineStyle.Solid;
            grp2.Plots[22].LineColor = Color.Orchid;grp2.Plots[22].PointColor = Color.Orchid;grp2.Plots[22].LineStyle = LineStyle.Solid;
            grp2.Plots[23].LineColor = Color.Tomato;grp2.Plots[23].PointColor = Color.Tomato;grp2.Plots[23].LineStyle = LineStyle.Solid;
            grp2.Plots[26].LineColor = Color.RoyalBlue;grp2.Plots[26].PointColor = Color.RoyalBlue;grp2.Plots[26].LineStyle = LineStyle.Solid;
            grp2.Plots[27].LineColor = Color.Maroon;grp2.Plots[27].PointColor = Color.Maroon;grp2.Plots[27].LineStyle = LineStyle.Solid;
            grp2.Plots[30].LineColor = Color.SpringGreen;grp2.Plots[30].PointColor = Color.SpringGreen;grp2.Plots[30].LineStyle = LineStyle.Solid;

            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;


            int plotcount = rtgrp.item[0].plot[3].ly[0].Count;
            if (plotcount == 0) return;

            int appendcount = plotcount - LastPlotPoint;
            if (appendcount <= 0) return;
            int st = LastPlotPoint;
            LastPlotPoint = plotcount;
            /*
            int nAuxPlot = 7;
            int nPlot1 = 1, nPlot2 = 2;
            double[] tx, ty;
            double[] ptx = new double[appendcount];
            double[] pty = new double[appendcount];
            double time0 = -1.0, time1 = -1.0;


            // ================= MAIN Real/Vdc =================
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                // Real
                tx = rtgrp.item[0].plot[0].lx[0].ToArray();
                ty = rtgrp.item[0].plot[0].ly[0].ToArray();
                Array.Copy(tx, st, ptx, 0, appendcount);
                Array.Copy(ty, st, pty, 0, appendcount);
                if (appendcount > 0) time0 = ptx[appendcount - 1];
                grp1.Plots[0 + nPlot1].PlotXYAppend(ptx, pty);

                // Vdc
                tx = rtgrp.item[0].plot[1].lx[0].ToArray();
                ty = rtgrp.item[0].plot[1].ly[0].ToArray();
                Array.Copy(tx, st, ptx, 0, appendcount);
                Array.Copy(ty, st, pty, 0, appendcount);
                grp1.Plots[1 + nPlot1].PlotXYAppend(ptx, pty);

                for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
                {
                    tx = rtgrp.item[i+1].plot[0].lx[0].ToArray();
                    ty = rtgrp.item[i+1].plot[0].ly[0].ToArray();
                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);
                    if (appendcount > 0) time0 = ptx[appendcount - 1];
                    grp1.Plots[0 + nPlot1].PlotXYAppend(ptx, pty);

                }

                    // ================= AUX1 =================
                    int auxcount0 = rtgrp.item[1].plot[2].ly[0].Count;
                if (auxcount0 > st)
                {
                    int auxappend = auxcount0 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[0].ToArray();
                    ty = rtauxgrp.plot[2].ly[0].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[7].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount1 = rtauxgrp.plot[3].ly[0].Count;
                if (auxcount1 > st)
                {
                    int auxappend = auxcount1 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[0].ToArray();
                    ty = rtauxgrp.plot[3].ly[0].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[8].PlotXYAppend(auxptx0, auxpty0);
                }

                int auxcount2 = rtauxgrp.plot[2].ly[1].Count;
                if (auxcount2 > st)
                {
                    int auxappend = auxcount2 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[1].ToArray();
                    ty = rtauxgrp.plot[2].ly[1].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[9].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount3 = rtauxgrp.plot[3].ly[1].Count;
                if (auxcount3 > st)
                {
                    int auxappend = auxcount3 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[1].ToArray();
                    ty = rtauxgrp.plot[3].ly[1].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[10].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount4 = rtauxgrp.plot[2].ly[2].Count;
                if (auxcount4 > st)
                {
                    int auxappend = auxcount4 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[2].ToArray();
                    ty = rtauxgrp.plot[2].ly[2].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[11].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount5 = rtauxgrp.plot[3].ly[2].Count;
                if (auxcount5 > st)
                {
                    int auxappend = auxcount5 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[2].ToArray();
                    ty = rtauxgrp.plot[3].ly[2].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[12].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount6 = rtauxgrp.plot[2].ly[3].Count;
                if (auxcount6 > st)
                {
                    int auxappend = auxcount6 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[3].ToArray();
                    ty = rtauxgrp.plot[2].ly[3].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[13].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount7 = rtauxgrp.plot[3].ly[3].Count;
                if (auxcount7 > st)
                {
                    int auxappend = auxcount7 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[3].ToArray();
                    ty = rtauxgrp.plot[3].ly[3].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[14].PlotXYAppend(auxptx0, auxpty0);
                }
                // ================= AUX2 =================
                int auxcount8 = rtauxgrp.plot[2].ly[4].Count;
                if (auxcount8 > st)
                {
                    int auxappend = auxcount8 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[4].ToArray();
                    ty = rtauxgrp.plot[2].ly[4].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[15].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount9 = rtauxgrp.plot[3].ly[4].Count;
                if (auxcount9 > st)
                {
                    int auxappend = auxcount9 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[4].ToArray();
                    ty = rtauxgrp.plot[3].ly[4].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[16].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount10 = rtauxgrp.plot[2].ly[5].Count;
                if (auxcount10 > st)
                {
                    int auxappend = auxcount10 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[5].ToArray();
                    ty = rtauxgrp.plot[2].ly[5].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[17].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount11 = rtauxgrp.plot[3].ly[5].Count;
                if (auxcount11 > st)
                {
                    int auxappend = auxcount11 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[5].ToArray();
                    ty = rtauxgrp.plot[3].ly[5].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[18].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount12 = rtauxgrp.plot[2].ly[6].Count;
                if (auxcount12 > st)
                {
                    int auxappend = auxcount12 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[6].ToArray();
                    ty = rtauxgrp.plot[2].ly[6].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[19].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount13 = rtauxgrp.plot[3].ly[6].Count;
                if (auxcount13 > st)
                {
                    int auxappend = auxcount13 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[6].ToArray();
                    ty = rtauxgrp.plot[3].ly[6].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[20].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount14 = rtauxgrp.plot[2].ly[7].Count;
                if (auxcount14 > st)
                {
                    int auxappend = auxcount14 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[7].ToArray();
                    ty = rtauxgrp.plot[2].ly[7].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[21].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount15 = rtauxgrp.plot[3].ly[7].Count;
                if (auxcount15 > st)
                {
                    int auxappend = auxcount15 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[7].ToArray();
                    ty = rtauxgrp.plot[3].ly[7].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[22].PlotXYAppend(auxptx0, auxpty0);
                }
                // ================= AUX3 =================
                int auxcount16 = rtauxgrp.plot[2].ly[8].Count;
                if (auxcount16 > st)
                {
                    int auxappend = auxcount16 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[8].ToArray();
                    ty = rtauxgrp.plot[2].ly[8].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[23].PlotXYAppend(auxptx0, auxpty0);
                }

                int auxcount17 = rtauxgrp.plot[3].ly[8].Count;
                if (auxcount17 > st)
                {
                    int auxappend = auxcount17 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[8].ToArray();
                    ty = rtauxgrp.plot[3].ly[8].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[24].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount18 = rtauxgrp.plot[2].ly[9].Count;
                if (auxcount18 > st)
                {
                    int auxappend = auxcount18 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[9].ToArray();
                    ty = rtauxgrp.plot[2].ly[9].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[25].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount19 = rtauxgrp.plot[3].ly[9].Count;
                if (auxcount19 > st)
                {
                    int auxappend = auxcount19 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[9].ToArray();
                    ty = rtauxgrp.plot[3].ly[9].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[26].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount20 = rtauxgrp.plot[2].ly[10].Count;
                if (auxcount20 > st)
                {
                    int auxappend = auxcount20 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[10].ToArray();
                    ty = rtauxgrp.plot[2].ly[10].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[27].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount21 = rtauxgrp.plot[3].ly[10].Count;
                if (auxcount21 > st)
                {
                    int auxappend = auxcount21 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[10].ToArray();
                    ty = rtauxgrp.plot[3].ly[10].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[28].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount22 = rtauxgrp.plot[2].ly[11].Count;
                if (auxcount22 > st)
                {
                    int auxappend = auxcount22 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[2].lx[11].ToArray();
                    ty = rtauxgrp.plot[2].ly[11].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[29].PlotXYAppend(auxptx0, auxpty0);
                }
                int auxcount23 = rtauxgrp.plot[3].ly[11].Count;
                if (auxcount23 > st)
                {
                    int auxappend = auxcount23 - st;
                    double[] auxptx0 = new double[auxappend];
                    double[] auxpty0 = new double[auxappend];
                    tx = rtauxgrp.plot[3].lx[11].ToArray();
                    ty = rtauxgrp.plot[3].ly[11].ToArray();
                    Array.Copy(tx, st, auxptx0, 0, auxappend);
                    Array.Copy(ty, st, auxpty0, 0, auxappend);
                    grp1.Plots[30].PlotXYAppend(auxptx0, auxpty0);
                }
                // ================= Y축 자동 스케일 (MAIN + AUX 전체 기반) =================
                double globalMax = rtgrp.plot[1].Maxval[0];
                double globalMin = rtgrp.plot[1].Minval[0];

                for (int i = 0; i < 12; i++)
                {
                    double auxMax = 0.0;
                    double auxMin = 0.0;

                    if (rtauxgrp.plot[1].Maxval.Length > i)
                        auxMax = rtauxgrp.plot[1].Maxval[i];
                    if (rtauxgrp.plot[1].Minval.Length > i)
                        auxMin = rtauxgrp.plot[1].Minval[i];

                    if (auxMax != 0 || auxMin != 0)
                    {
                        if (auxMax > globalMax) globalMax = auxMax;
                        if (auxMin < globalMin) globalMin = auxMin;
                    }
                }

                double cmpval = Math.Abs(globalMax);
                if (cmpval < Math.Abs(globalMin)) cmpval = Math.Abs(globalMin);

                double maxval = globalMax + (cmpval * GrpSpaceRate);
                double minval = globalMin - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    if (minval == 0.0)
                    {
                        minval = -1.0;
                        maxval = +1.0;
                    }
                    else
                    {
                        double offset = Math.Abs(minval) * 0.05;
                        if (offset == 0) offset = 0.1;
                        minval -= offset;
                        maxval += offset;
                    }
                }

                grp1.YAxes[1].Range = new Range(minval, maxval);
            }
            //// ================= MAIN Cs/Cp =================
            if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                // Cs
                tx = rtgrp.plot[2].lx[0].ToArray();
                ty = rtgrp.plot[2].ly[0].ToArray();
                Array.Copy(tx, st, ptx, 0, appendcount);
                Array.Copy(ty, st, pty, 0, appendcount);
                if (appendcount > 0) time1 = ptx[appendcount - 1];
                grp2.Plots[0 + nPlot2].PlotXYAppend(ptx, pty);

                // Cp
                tx = rtgrp.plot[3].lx[0].ToArray();
                ty = rtgrp.plot[3].ly[0].ToArray();
                Array.Copy(tx, st, ptx, 0, appendcount);
                Array.Copy(ty, st, pty, 0, appendcount);
                grp2.Plots[1 + nPlot2].PlotXYAppend(ptx, pty);

                // ================= Aux1 =================
                int auxcount24 = rtauxgrp.plot[4].ly[0].Count;
                if (auxcount24 > st)
                {
                    int auxappend = auxcount24 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[0].ToArray();
                    ty = rtauxgrp.plot[4].ly[0].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[8].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount25 = rtauxgrp.plot[5].ly[0].Count;
                if (auxcount25 > st)
                {
                    int auxappend = auxcount25 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[0].ToArray();
                    ty = rtauxgrp.plot[5].ly[0].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[9].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount26 = rtauxgrp.plot[4].ly[1].Count;
                if (auxcount26 > st)
                {
                    int auxappend = auxcount26 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[1].ToArray();
                    ty = rtauxgrp.plot[4].ly[1].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[10].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount27 = rtauxgrp.plot[5].ly[1].Count;
                if (auxcount27 > st)
                {
                    int auxappend = auxcount27 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[1].ToArray();
                    ty = rtauxgrp.plot[5].ly[1].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[11].PlotXYAppend(auxptx2, auxpty2);
                }

                int auxcount28 = rtauxgrp.plot[4].ly[2].Count;
                if (auxcount28 > st)
                {
                    int auxappend = auxcount28 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[2].ToArray();
                    ty = rtauxgrp.plot[4].ly[2].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[12].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount29 = rtauxgrp.plot[5].ly[2].Count;
                if (auxcount29 > st)
                {
                    int auxappend = auxcount29 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[2].ToArray();
                    ty = rtauxgrp.plot[5].ly[2].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[13].PlotXYAppend(auxptx2, auxpty2);
                }

                int auxcount30 = rtauxgrp.plot[4].ly[3].Count;
                if (auxcount30 > st)
                {
                    int auxappend = auxcount30 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[3].ToArray();
                    ty = rtauxgrp.plot[4].ly[3].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[14].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount31 = rtauxgrp.plot[5].ly[3].Count;
                if (auxcount31 > st)
                {
                    int auxappend = auxcount31 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[3].ToArray();
                    ty = rtauxgrp.plot[5].ly[3].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[15].PlotXYAppend(auxptx2, auxpty2);
                }
                // ================= Aux2 =================
                int auxcount32 = rtauxgrp.plot[4].ly[4].Count;
                if (auxcount32 > st)
                {
                    int auxappend = auxcount32 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[4].ToArray();
                    ty = rtauxgrp.plot[4].ly[4].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[16].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount33 = rtauxgrp.plot[5].ly[4].Count;
                if (auxcount33 > st)
                {
                    int auxappend = auxcount33 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[4].ToArray();
                    ty = rtauxgrp.plot[5].ly[4].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[17].PlotXYAppend(auxptx2, auxpty2);
                }

                int auxcount34 = rtauxgrp.plot[4].ly[5].Count;
                if (auxcount34 > st)
                {
                    int auxappend = auxcount34 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[5].ToArray();
                    ty = rtauxgrp.plot[4].ly[5].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[18].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount35 = rtauxgrp.plot[5].ly[5].Count;
                if (auxcount35 > st)
                {
                    int auxappend = auxcount35 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[5].ToArray();
                    ty = rtauxgrp.plot[5].ly[5].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[19].PlotXYAppend(auxptx2, auxpty2);
                }

                int auxcount36 = rtauxgrp.plot[4].ly[6].Count;
                if (auxcount36 > st)
                {
                    int auxappend = auxcount36 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[6].ToArray();
                    ty = rtauxgrp.plot[4].ly[6].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[20].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount37 = rtauxgrp.plot[5].ly[6].Count;
                if (auxcount37 > st)
                {
                    int auxappend = auxcount37 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[6].ToArray();
                    ty = rtauxgrp.plot[5].ly[6].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[21].PlotXYAppend(auxptx2, auxpty2);
                }

                int auxcount38 = rtauxgrp.plot[4].ly[7].Count;
                if (auxcount38 > st)
                {
                    int auxappend = auxcount38 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[7].ToArray();
                    ty = rtauxgrp.plot[4].ly[7].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[22].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount39 = rtauxgrp.plot[5].ly[7].Count;
                if (auxcount39 > st)
                {
                    int auxappend = auxcount39 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[7].ToArray();
                    ty = rtauxgrp.plot[5].ly[7].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[23].PlotXYAppend(auxptx2, auxpty2);
                }
                // ================= Aux3 =================
                int auxcount40 = rtauxgrp.plot[4].ly[8].Count;
                if (auxcount40 > st)
                {
                    int auxappend = auxcount40 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[8].ToArray();
                    ty = rtauxgrp.plot[4].ly[8].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[24].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount41 = rtauxgrp.plot[5].ly[8].Count;
                if (auxcount41 > st)
                {
                    int auxappend = auxcount41 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[8].ToArray();
                    ty = rtauxgrp.plot[5].ly[8].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[25].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount42 = rtauxgrp.plot[4].ly[9].Count;
                if (auxcount42 > st)
                {
                    int auxappend = auxcount42 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[9].ToArray();
                    ty = rtauxgrp.plot[4].ly[9].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[26].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount43 = rtauxgrp.plot[5].ly[9].Count;
                if (auxcount43 > st)
                {
                    int auxappend = auxcount43 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[9].ToArray();
                    ty = rtauxgrp.plot[5].ly[9].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[27].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount44 = rtauxgrp.plot[4].ly[10].Count;
                if (auxcount44 > st)
                {
                    int auxappend = auxcount44 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[10].ToArray();
                    ty = rtauxgrp.plot[4].ly[10].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[28].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount45 = rtauxgrp.plot[5].ly[10].Count;
                if (auxcount45 > st)
                {
                    int auxappend = auxcount45 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[10].ToArray();
                    ty = rtauxgrp.plot[5].ly[10].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[29].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount46 = rtauxgrp.plot[4].ly[11].Count;
                if (auxcount46 > st)
                {
                    int auxappend = auxcount46 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[4].lx[11].ToArray();
                    ty = rtauxgrp.plot[4].ly[11].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[30].PlotXYAppend(auxptx2, auxpty2);
                }
                int auxcount47 = rtauxgrp.plot[5].ly[11].Count;
                if (auxcount47 > st)
                {
                    int auxappend = auxcount47 - st;
                    double[] auxptx2 = new double[auxappend];
                    double[] auxpty2 = new double[auxappend];
                    tx = rtauxgrp.plot[5].lx[11].ToArray();
                    ty = rtauxgrp.plot[5].ly[11].ToArray();
                    Array.Copy(tx, st, auxptx2, 0, auxappend);
                    Array.Copy(ty, st, auxpty2, 0, auxappend);
                    grp2.Plots[31].PlotXYAppend(auxptx2, auxpty2);
                }
                // ================= Y축 자동 스케일 (MAIN + AUX 전체 기반) =================
                double globalMax = rtgrp.plot[2].Maxval[0];
                double globalMin = rtgrp.plot[2].Minval[0];

                for (int i = 0; i < 12; i++)
                {
                    double auxMax = 0.0;
                    double auxMin = 0.0;

                    if (rtauxgrp.plot[4].Maxval.Length > i)
                        auxMax = rtauxgrp.plot[4].Maxval[i];
                    if (rtauxgrp.plot[4].Minval.Length > i)
                        auxMin = rtauxgrp.plot[4].Minval[i];

                    if (auxMax != 0 || auxMin != 0)
                    {
                        if (auxMax > globalMax) globalMax = auxMax;
                        if (auxMin < globalMin) globalMin = auxMin;
                    }
                    double auxMaxCp = 0.0;
                    double auxMinCp = 0.0;

                    if (rtauxgrp.plot[5].Maxval.Length > i)
                        auxMaxCp = rtauxgrp.plot[5].Maxval[i];
                    if (rtauxgrp.plot[5].Minval.Length > i)
                        auxMinCp = rtauxgrp.plot[5].Minval[i];

                    if (auxMaxCp != 0 || auxMinCp != 0)
                    {
                        if (auxMaxCp > globalMax) globalMax = auxMaxCp;
                        if (auxMinCp < globalMin) globalMin = auxMinCp;
                    }
                }

                double cmpval = Math.Abs(globalMax);
                if (cmpval < Math.Abs(globalMin))
                    cmpval = Math.Abs(globalMin);

                double maxval = globalMax + (cmpval * GrpSpaceRate);
                double minval = globalMin - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    if (minval == 0.0)
                    {
                        minval = -1.0;
                        maxval = +1.0;
                    }
                    else
                    {
                        double offset = Math.Abs(minval) * 0.05;
                        if (offset == 0) offset = 0.1;
                        minval -= offset;
                        maxval += offset;
                    }
                }

                grp2.YAxes[0].Range = new Range(minval, maxval);
            }
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                RefreshGraphAxisTimeView(time0, time1);
            }*/
        }

        private void RefreshGraphEIS()
        {
            /*grp1.Plots[8].LineColor = Color.DarkGray;grp1.Plots[8].PointColor = Color.DarkGray;grp1.Plots[8].LineStyle = LineStyle.Dot;
            grp1.Plots[10].LineColor = Color.DarkGray;grp1.Plots[10].PointColor = Color.DarkGray;grp1.Plots[10].LineStyle = LineStyle.Dot;
            grp1.Plots[12].LineColor = Color.DarkGray;grp1.Plots[12].PointColor = Color.DarkGray;grp1.Plots[12].LineStyle = LineStyle.Dot;
            grp1.Plots[14].LineColor = Color.DarkGray;grp1.Plots[14].PointColor = Color.DarkGray;grp1.Plots[14].LineStyle = LineStyle.Dot;
            grp1.Plots[16].LineColor = Color.DarkGray;grp1.Plots[16].PointColor = Color.DarkGray;grp1.Plots[16].LineStyle = LineStyle.Dot;
            grp1.Plots[18].LineColor = Color.DarkGray;grp1.Plots[18].PointColor = Color.DarkGray;grp1.Plots[18].LineStyle = LineStyle.Dot;
            grp1.Plots[20].LineColor = Color.DarkGray;grp1.Plots[20].PointColor = Color.DarkGray;grp1.Plots[20].LineStyle = LineStyle.Dot;
            grp1.Plots[22].LineColor = Color.DarkGray;grp1.Plots[22].PointColor = Color.DarkGray;grp1.Plots[22].LineStyle = LineStyle.Dot;
            grp1.Plots[24].LineColor = Color.DarkGray;grp1.Plots[24].PointColor = Color.DarkGray;grp1.Plots[24].LineStyle = LineStyle.Dot;
            grp1.Plots[26].LineColor = Color.DarkGray;grp1.Plots[26].PointColor = Color.DarkGray;grp1.Plots[26].LineStyle = LineStyle.Dot;
            grp1.Plots[28].LineColor = Color.DarkGray;grp1.Plots[28].PointColor = Color.DarkGray;grp1.Plots[28].LineStyle = LineStyle.Dot;
            grp1.Plots[30].LineColor = Color.DarkGray;grp1.Plots[30].PointColor = Color.DarkGray;grp1.Plots[30].LineStyle = LineStyle.Dot;

            grp2.Plots[10].LineColor = Color.DarkGray;grp2.Plots[10].PointColor = Color.DarkGray;grp2.Plots[10].LineStyle = LineStyle.Dot;
            grp2.Plots[11].LineColor = Color.DarkGray;grp2.Plots[11].PointColor = Color.DarkGray;grp2.Plots[11].LineStyle = LineStyle.Dot;
            grp2.Plots[14].LineColor = Color.DarkGray;grp2.Plots[14].PointColor = Color.DarkGray;grp2.Plots[14].LineStyle = LineStyle.Dot;
            grp2.Plots[15].LineColor = Color.DarkGray;grp2.Plots[15].PointColor = Color.DarkGray;grp2.Plots[15].LineStyle = LineStyle.Dot;
            grp2.Plots[18].LineColor = Color.DarkGray;grp2.Plots[18].PointColor = Color.DarkGray;grp2.Plots[18].LineStyle = LineStyle.Dot;
            grp2.Plots[19].LineColor = Color.DarkGray;grp2.Plots[19].PointColor = Color.DarkGray;grp2.Plots[19].LineStyle = LineStyle.Dot;
            grp2.Plots[22].LineColor = Color.DarkGray;grp2.Plots[22].PointColor = Color.DarkGray;grp2.Plots[22].LineStyle = LineStyle.Dot;
            grp2.Plots[23].LineColor = Color.DarkGray;grp2.Plots[23].PointColor = Color.DarkGray;grp2.Plots[23].LineStyle = LineStyle.Dot;
            grp2.Plots[26].LineColor = Color.DarkGray;grp2.Plots[26].PointColor = Color.DarkGray;grp2.Plots[26].LineStyle = LineStyle.Dot;
            grp2.Plots[27].LineColor = Color.DarkGray;grp2.Plots[27].PointColor = Color.DarkGray;grp2.Plots[27].LineStyle = LineStyle.Dot;
            grp2.Plots[30].LineColor = Color.DarkGray;grp2.Plots[30].PointColor = Color.DarkGray;grp2.Plots[30].LineStyle = LineStyle.Dot;
            grp2.Plots[31].LineColor = Color.DarkGray;grp2.Plots[31].PointColor = Color.DarkGray;grp2.Plots[31].LineStyle = LineStyle.Dot;
            grp2.Plots[34].LineColor = Color.DarkGray;grp2.Plots[34].PointColor = Color.DarkGray;grp2.Plots[34].LineStyle = LineStyle.Dot;
            grp2.Plots[35].LineColor = Color.DarkGray;grp2.Plots[35].PointColor = Color.DarkGray;grp2.Plots[35].LineStyle = LineStyle.Dot;
            grp2.Plots[38].LineColor = Color.DarkGray;grp2.Plots[38].PointColor = Color.DarkGray;grp2.Plots[38].LineStyle = LineStyle.Dot;
            grp2.Plots[39].LineColor = Color.DarkGray;grp2.Plots[39].PointColor = Color.DarkGray;grp2.Plots[39].LineStyle = LineStyle.Dot;
            grp2.Plots[42].LineColor = Color.DarkGray;grp2.Plots[42].PointColor = Color.DarkGray;grp2.Plots[42].LineStyle = LineStyle.Dot;
            grp2.Plots[43].LineColor = Color.DarkGray;grp2.Plots[43].PointColor = Color.DarkGray;grp2.Plots[43].LineStyle = LineStyle.Dot;
            grp2.Plots[46].LineColor = Color.DarkGray;grp2.Plots[46].PointColor = Color.DarkGray;grp2.Plots[46].LineStyle = LineStyle.Dot;
            grp2.Plots[47].LineColor = Color.DarkGray;grp2.Plots[47].PointColor = Color.DarkGray;grp2.Plots[47].LineStyle = LineStyle.Dot;
            grp2.Plots[50].LineColor = Color.DarkGray;grp2.Plots[50].PointColor = Color.DarkGray;grp2.Plots[50].LineStyle = LineStyle.Dot;
            grp2.Plots[51].LineColor = Color.DarkGray;grp2.Plots[51].PointColor = Color.DarkGray;grp2.Plots[51].LineStyle = LineStyle.Dot;
            grp2.Plots[54].LineColor = Color.DarkGray;grp2.Plots[54].PointColor = Color.DarkGray;grp2.Plots[54].LineStyle = LineStyle.Dot;
            grp2.Plots[55].LineColor = Color.DarkGray;grp2.Plots[55].PointColor = Color.DarkGray;grp2.Plots[55].LineStyle = LineStyle.Dot;

            var rtMain = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            var rtAux = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
            var status = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].eis_status;

            //double maxval;double minval;double cmpval;

            int plotcount0 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].Count;
            int plotcount1 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[1].Count;

            int aLive0 = rtAux.plot[0].ly[0].Count;int aHist0 = rtAux.plot[1].ly[0].Count;
            int aLive1 = rtAux.plot[0].ly[1].Count;int aHist1 = rtAux.plot[1].ly[1].Count;
            int aLive2 = rtAux.plot[0].ly[2].Count;int aHist2 = rtAux.plot[1].ly[2].Count;
            int aLive3 = rtAux.plot[0].ly[3].Count;int aHist3 = rtAux.plot[1].ly[3].Count;
            int aLive4 = rtAux.plot[0].ly[4].Count;int aHist4 = rtAux.plot[1].ly[4].Count;
            int aLive5 = rtAux.plot[0].ly[5].Count;int aHist5 = rtAux.plot[1].ly[5].Count;
            int aLive6 = rtAux.plot[0].ly[6].Count;int aHist6 = rtAux.plot[1].ly[6].Count;
            int aLive7 = rtAux.plot[0].ly[7].Count;int aHist7 = rtAux.plot[1].ly[7].Count;
            int aLive8 = rtAux.plot[0].ly[8].Count;int aHist8 = rtAux.plot[1].ly[8].Count;
            int aLive9 = rtAux.plot[0].ly[9].Count;int aHist9 = rtAux.plot[1].ly[9].Count;
            int aLive10 = rtAux.plot[0].ly[10].Count;int aHist10 = rtAux.plot[1].ly[10].Count;
            int aLive11 = rtAux.plot[0].ly[11].Count;int aHist11 = rtAux.plot[1].ly[11].Count;

            int aZmLive0 = rtAux.plot[2].ly[0].Count;int aZmHist0 = rtAux.plot[3].ly[0].Count;
            int aZpLive0 = rtAux.plot[4].ly[0].Count;int aZpHist0 = rtAux.plot[5].ly[0].Count;
            int aZmLive1 = rtAux.plot[2].ly[1].Count;int aZmHist1 = rtAux.plot[3].ly[1].Count;
            int aZpLive1 = rtAux.plot[4].ly[1].Count;int aZpHist1 = rtAux.plot[5].ly[1].Count;
            int aZmLive2 = rtAux.plot[2].ly[2].Count;int aZmHist2 = rtAux.plot[3].ly[2].Count;
            int aZpLive2 = rtAux.plot[4].ly[2].Count;int aZpHist2 = rtAux.plot[5].ly[2].Count;
            int aZmLive3 = rtAux.plot[2].ly[3].Count;int aZmHist3 = rtAux.plot[3].ly[3].Count;
            int aZpLive3 = rtAux.plot[4].ly[3].Count;int aZpHist3 = rtAux.plot[5].ly[3].Count;
            int aZmLive4 = rtAux.plot[2].ly[4].Count;int aZmHist4 = rtAux.plot[3].ly[4].Count;
            int aZpLive4 = rtAux.plot[4].ly[4].Count;int aZpHist4 = rtAux.plot[5].ly[4].Count;
            int aZmLive5 = rtAux.plot[2].ly[5].Count;int aZmHist5 = rtAux.plot[3].ly[5].Count;
            int aZpLive5 = rtAux.plot[4].ly[5].Count;int aZpHist5 = rtAux.plot[5].ly[5].Count;
            int aZmLive6 = rtAux.plot[2].ly[6].Count;int aZmHist6 = rtAux.plot[3].ly[6].Count;
            int aZpLive6 = rtAux.plot[4].ly[6].Count;int aZpHist6 = rtAux.plot[5].ly[6].Count;
            int aZmLive7 = rtAux.plot[2].ly[7].Count;int aZmHist7 = rtAux.plot[3].ly[7].Count;
            int aZpLive7 = rtAux.plot[4].ly[7].Count;int aZpHist7 = rtAux.plot[5].ly[7].Count;
            int aZmLive8 = rtAux.plot[2].ly[8].Count;int aZmHist8 = rtAux.plot[3].ly[8].Count;
            int aZpLive8 = rtAux.plot[4].ly[8].Count;int aZpHist8 = rtAux.plot[5].ly[8].Count;
            int aZmLive9 = rtAux.plot[2].ly[9].Count;int aZmHist9 = rtAux.plot[3].ly[9].Count;
            int aZpLive9 = rtAux.plot[4].ly[9].Count;int aZpHist9 = rtAux.plot[5].ly[9].Count;
            int aZmLive10 = rtAux.plot[2].ly[10].Count;int aZmHist10 = rtAux.plot[3].ly[10].Count;
            int aZpLive10 = rtAux.plot[4].ly[10].Count;int aZpHist10 = rtAux.plot[5].ly[10].Count;
            int aZmLive11 = rtAux.plot[2].ly[11].Count;int aZmHist11 = rtAux.plot[3].ly[11].Count;
            int aZpLive11 = rtAux.plot[4].ly[11].Count;int aZpHist11 = rtAux.plot[5].ly[11].Count;

            int appendcount0 = 0, appendcount1 = 0,
                auxappendcount0 = 0, auxappendcount1 = 0, auxappendcount2 = 0, auxappendcount3 = 0, auxappendcount4 = 0,
                auxappendcount5 = 0, auxappendcount6 = 0, auxappendcount7 = 0, auxappendcount8 = 0, auxappendcount9 = 0,
                auxappendcount10 = 0, auxappendcount11 = 0, auxappendcount12 = 0, auxappendcount13 = 0, auxappendcount14 = 0,
                auxappendcount15 = 0, auxappendcount16 = 0, auxappendcount17 = 0, auxappendcount18 = 0, auxappendcount19 = 0,
                auxappendcount20 = 0, auxappendcount21 = 0, auxappendcount22 = 0, auxappendcount23 = 0,
                bodeappendcount0 = 0, bodeappendcount1 = 0, bodeappendcount2 = 0, bodeappendcount3 = 0,
                bodeappendcount4 = 0, bodeappendcount5 = 0, bodeappendcount6 = 0, bodeappendcount7 = 0,
                bodeappendcount8 = 0, bodeappendcount9 = 0, bodeappendcount10 = 0, bodeappendcount11 = 0,
                bodeappendcount12 = 0, bodeappendcount13 = 0, bodeappendcount14 = 0, bodeappendcount15 = 0,
                bodeappendcount16 = 0, bodeappendcount17 = 0, bodeappendcount18 = 0, bodeappendcount19 = 0,
                bodeappendcount20 = 0, bodeappendcount21 = 0, bodeappendcount22 = 0, bodeappendcount23 = 0,
                bodeappendcount24 = 0, bodeappendcount25 = 0, bodeappendcount26 = 0, bodeappendcount27 = 0,
                bodeappendcount28 = 0, bodeappendcount29 = 0, bodeappendcount30 = 0, bodeappendcount31 = 0,
                bodeappendcount32 = 0, bodeappendcount33 = 0, bodeappendcount34 = 0, bodeappendcount35 = 0,
                bodeappendcount36 = 0, bodeappendcount37 = 0, bodeappendcount38 = 0, bodeappendcount39 = 0,
                bodeappendcount40 = 0, bodeappendcount41 = 0, bodeappendcount42 = 0, bodeappendcount43 = 0,
                bodeappendcount44 = 0, bodeappendcount45 = 0, bodeappendcount46 = 0, bodeappendcount47 = 0;


            if (plotcount0 == 0 && plotcount1 == 0
            && aLive0 == 0 && aHist0 == 0
            && aLive1 == 0 && aHist1 == 0
            && aLive2 == 0 && aHist2 == 0
            && aLive3 == 0 && aHist3 == 0
            && aLive4 == 0 && aHist4 == 0
            && aLive5 == 0 && aHist5 == 0
            && aLive6 == 0 && aHist6 == 0
            && aLive7 == 0 && aHist7 == 0
            && aLive8 == 0 && aHist8 == 0
            && aLive9 == 0 && aHist9 == 0
            && aLive10 == 0 && aHist10 == 0
            && aLive11 == 0 && aHist11 == 0
            && aZmLive0 == 0 && aZmHist0 == 0 && aZpLive0 == 0 && aZpHist0 == 0
            && aZmLive1 == 0 && aZmHist1 == 0 && aZpLive1 == 0 && aZpHist1 == 0
            && aZmLive2 == 0 && aZmHist2 == 0 && aZpLive2 == 0 && aZpHist2 == 0
            && aZmLive3 == 0 && aZmHist3 == 0 && aZpLive3 == 0 && aZpHist3 == 0
            && aZmLive4 == 0 && aZmHist4 == 0 && aZpLive4 == 0 && aZpHist4 == 0
            && aZmLive5 == 0 && aZmHist5 == 0 && aZpLive5 == 0 && aZpHist5 == 0
            && aZmLive6 == 0 && aZmHist6 == 0 && aZpLive6 == 0 && aZpHist6 == 0
            && aZmLive7 == 0 && aZmHist7 == 0 && aZpLive7 == 0 && aZpHist7 == 0
            && aZmLive8 == 0 && aZmHist8 == 0 && aZpLive8 == 0 && aZpHist8 == 0
            && aZmLive9 == 0 && aZmHist9 == 0 && aZpLive9 == 0 && aZpHist9 == 0
            && aZmLive10 == 0 && aZmHist10 == 0 && aZpLive10 == 0 && aZpHist10 == 0
            && aZmLive11 == 0 && aZmHist11 == 0 && aZpLive11 == 0 && aZpHist11 == 0)
            {
                return;
            }

            if (plotcount0 == LastPlotPoint && plotcount1 == LastPlotPoint1 && aLive0 == LastPlotPoint2 && aHist0 == LastPlotPoint3 && aLive1 == LastPlotPoint4
                 && aHist1 == LastPlotPoint5 && aLive2 == LastPlotPoint6 && aHist2 == LastPlotPoint7 && aLive3 == LastPlotPoint8 && aHist3 == LastPlotPoint9
                  && aLive4 == LastPlotPoint10 && aHist4 == LastPlotPoint11 && aLive5 == LastPlotPoint12 && aHist5 == LastPlotPoint13 && aLive6 == LastPlotPoint14 && aHist6 == LastPlotPoint15
                  && aLive7 == LastPlotPoint16 && aHist7 == LastPlotPoint17 && aLive8 == LastPlotPoint18 && aHist8 == LastPlotPoint19 && aLive9 == LastPlotPoint20 && aHist9 == LastPlotPoint21
                  && aLive10 == LastPlotPoint22 && aHist10 == LastPlotPoint23 && aLive11 == LastPlotPoint24 && aHist11 == LastPlotPoint25)
                return;


            int st0 = 0, st1 = 0, st2 = 0, st3 = 0, st4 = 0,
                st5 = 0, st6 = 0, st7 = 0, st8 = 0, st9 = 0,
                st10 = 0, st11 = 0, st12 = 0, st13 = 0, st14 = 0,
                st15 = 0, st16 = 0, st17 = 0, st18 = 0, st19 = 0,
                st20 = 0, st21 = 0, st22 = 0, st23 = 0, st24 = 0,
                st25 = 0, st26 = 0, st27 = 0, st28 = 0, st29 = 0,
                st30 = 0, st31 = 0, st32 = 0, st33 = 0, st34 = 0,
                st35 = 0, st36 = 0, st37 = 0, st38 = 0, st39 = 0,
                st40 = 0, st41 = 0, st42 = 0, st43 = 0, st44 = 0,
                st45 = 0, st46 = 0, st47 = 0, st48 = 0, st49 = 0,
                st50 = 0, st51 = 0, st52 = 0, st53 = 0, st54 = 0,
                st55 = 0, st56 = 0, st57 = 0, st58 = 0, st59 = 0,
                st60 = 0, st61 = 0, st62 = 0, st63 = 0, st64 = 0,
                st65 = 0, st66 = 0, st67 = 0, st68 = 0, st69 = 0,
                st70 = 0, st71 = 0, st72 = 0, st73 = 0;

            if (plotcount0 < LastPlotPoint || plotcount1 < LastPlotPoint1 || aLive0 < LastPlotPoint2 || aHist0 < LastPlotPoint3 || aLive1 < LastPlotPoint4 || aHist1 < LastPlotPoint5
                     || aLive2 < LastPlotPoint6 || aHist2 < LastPlotPoint7 || aLive3 < LastPlotPoint8 || aHist3 < LastPlotPoint9 || aLive4 < LastPlotPoint10 || aHist4 < LastPlotPoint11
                     || aLive5 < LastPlotPoint12 || aHist5 < LastPlotPoint13 || aLive6 < LastPlotPoint14 || aHist6 < LastPlotPoint15 || aLive7 < LastPlotPoint16 || aHist7 < LastPlotPoint17
                     || aLive8 < LastPlotPoint18 || aHist8 < LastPlotPoint19 || aLive9 < LastPlotPoint20 || aHist9 < LastPlotPoint21 || aLive10 < LastPlotPoint22 || aHist10 < LastPlotPoint23
                     || aLive11 < LastPlotPoint24 || aHist11 < LastPlotPoint25)
            {
                InitGraphType();
            }
            else
            {
                st0 = LastPlotPoint;
                appendcount0 = plotcount0 - LastPlotPoint;
                LastPlotPoint = plotcount0;

                st1 = LastPlotPoint1;
                appendcount1 = plotcount1 - LastPlotPoint1;
                LastPlotPoint1 = plotcount1;

                st2 = LastPlotPoint2;
                auxappendcount0 = aLive0 - LastPlotPoint2; // 라이브
                LastPlotPoint2 = aLive0;
                st3 = LastPlotPoint3;
                auxappendcount1 = aHist0 - LastPlotPoint3; // 히스토리
                LastPlotPoint3 = aHist0;

                st4 = LastPlotPoint4;
                auxappendcount2 = aLive1 - LastPlotPoint4;
                LastPlotPoint4 = aLive1;
                st5 = LastPlotPoint5;
                auxappendcount3 = aHist1 - LastPlotPoint5;
                LastPlotPoint5 = aHist1;

                st6 = LastPlotPoint6;
                auxappendcount4 = aLive2 - LastPlotPoint6;
                LastPlotPoint6 = aLive2;
                st7 = LastPlotPoint7;
                auxappendcount5 = aHist2 - LastPlotPoint7;
                LastPlotPoint7 = aHist2;

                st8 = LastPlotPoint8;
                auxappendcount6 = aLive3 - LastPlotPoint8;
                LastPlotPoint8 = aLive3;
                st9 = LastPlotPoint9;
                auxappendcount7 = aHist3 - LastPlotPoint9;
                LastPlotPoint9 = aHist3;

                st10 = LastPlotPoint10;
                auxappendcount8 = aLive4 - LastPlotPoint10;
                LastPlotPoint10 = aLive4;
                st11 = LastPlotPoint11;
                auxappendcount9 = aHist4 - LastPlotPoint11;
                LastPlotPoint11 = aHist4;

                st12 = LastPlotPoint12;
                auxappendcount10 = aLive5 - LastPlotPoint12;
                LastPlotPoint12 = aLive5;
                st13 = LastPlotPoint13;
                auxappendcount11 = aHist5 - LastPlotPoint13;
                LastPlotPoint13 = aHist5;

                st14 = LastPlotPoint14;
                auxappendcount12 = aLive6 - LastPlotPoint14;
                LastPlotPoint14 = aLive6;
                st15 = LastPlotPoint15;
                auxappendcount13 = aHist6 - LastPlotPoint15;
                LastPlotPoint15 = aHist6;

                st16 = LastPlotPoint16;
                auxappendcount14 = aLive7 - LastPlotPoint16;
                LastPlotPoint16 = aLive7;
                st17 = LastPlotPoint17;
                auxappendcount15 = aHist7 - LastPlotPoint17;
                LastPlotPoint17 = aHist7;

                st18 = LastPlotPoint18;
                auxappendcount16 = aLive8 - LastPlotPoint18;
                LastPlotPoint18 = aLive8;
                st19 = LastPlotPoint19;
                auxappendcount17 = aHist8 - LastPlotPoint19;
                LastPlotPoint19 = aHist8;

                st20 = LastPlotPoint20;
                auxappendcount18 = aLive9 - LastPlotPoint20;
                LastPlotPoint20 = aLive9;
                st21 = LastPlotPoint21;
                auxappendcount19 = aHist9 - LastPlotPoint21;
                LastPlotPoint21 = aHist9;

                st22 = LastPlotPoint22;
                auxappendcount20 = aLive10 - LastPlotPoint22;
                LastPlotPoint22 = aLive10;
                st23 = LastPlotPoint23;
                auxappendcount21 = aHist10 - LastPlotPoint23;
                LastPlotPoint23 = aHist10;

                st24 = LastPlotPoint24;
                auxappendcount22 = aLive11 - LastPlotPoint24;
                LastPlotPoint24 = aLive11;
                st25 = LastPlotPoint25;
                auxappendcount23 = aHist11 - LastPlotPoint25;
                LastPlotPoint25 = aHist11;

                // --- bode plot ch0 ---
                st26 = bodePlotPoint0;
                bodeappendcount0 = aZmLive0 - bodePlotPoint0;
                bodePlotPoint0 = aZmLive0;
                st27 = bodePlotPoint1;
                bodeappendcount1 = aZmHist0 - bodePlotPoint1;
                bodePlotPoint1 = aZmHist0;
                st28 = bodePlotPoint2;
                bodeappendcount2 = aZpLive0 - bodePlotPoint2;
                bodePlotPoint2 = aZpLive0;
                st29 = bodePlotPoint3;
                bodeappendcount3 = aZpHist0 - bodePlotPoint3;
                bodePlotPoint3 = aZpHist0;

                // --- bode plot ch1 ---
                st30 = bodePlotPoint4;
                bodeappendcount4 = aZmLive1 - bodePlotPoint4;
                bodePlotPoint4 = aZmLive1;
                st31 = bodePlotPoint5;
                bodeappendcount5 = aZmHist1 - bodePlotPoint5;
                bodePlotPoint5 = aZmHist1;
                st32 = bodePlotPoint6;
                bodeappendcount6 = aZpLive1 - bodePlotPoint6;
                bodePlotPoint6 = aZpLive1;
                st33 = bodePlotPoint7;
                bodeappendcount7 = aZpHist1 - bodePlotPoint7;
                bodePlotPoint7 = aZpHist1;

                // --- bode plot ch2 ---
                st34 = bodePlotPoint8;
                bodeappendcount8 = aZmLive2 - bodePlotPoint8;
                bodePlotPoint8 = aZmLive2;
                st35 = bodePlotPoint9;
                bodeappendcount9 = aZmHist2 - bodePlotPoint9;
                bodePlotPoint9 = aZmHist2;
                st36 = bodePlotPoint10;
                bodeappendcount10 = aZpLive2 - bodePlotPoint10;
                bodePlotPoint10 = aZpLive2;
                st37 = bodePlotPoint11;
                bodeappendcount11 = aZpHist2 - bodePlotPoint11;
                bodePlotPoint11 = aZpHist2;

                // --- bode plot ch3 ---
                st38 = bodePlotPoint12;
                bodeappendcount12 = aZmLive3 - bodePlotPoint12;
                bodePlotPoint12 = aZmLive3;
                st39 = bodePlotPoint13;
                bodeappendcount13 = aZmHist3 - bodePlotPoint13;
                bodePlotPoint13 = aZmHist3;
                st40 = bodePlotPoint14;
                bodeappendcount14 = aZpLive3 - bodePlotPoint14;
                bodePlotPoint14 = aZpLive3;
                st41 = bodePlotPoint15;
                bodeappendcount15 = aZpHist3 - bodePlotPoint15;
                bodePlotPoint15 = aZpHist3;

                // --- bode plot ch4 ---
                st42 = bodePlotPoint16;
                bodeappendcount16 = aZmLive4 - bodePlotPoint16;
                bodePlotPoint16 = aZmLive4;
                st43 = bodePlotPoint17;
                bodeappendcount17 = aZmHist4 - bodePlotPoint17;
                bodePlotPoint17 = aZmHist4;
                st44 = bodePlotPoint18;
                bodeappendcount18 = aZpLive4 - bodePlotPoint18;
                bodePlotPoint18 = aZpLive4;
                st45 = bodePlotPoint19;
                bodeappendcount19 = aZpHist4 - bodePlotPoint19;
                bodePlotPoint19 = aZpHist4;

                // --- bode plot ch5 ---
                st46 = bodePlotPoint20;
                bodeappendcount20 = aZmLive5 - bodePlotPoint20;
                bodePlotPoint20 = aZmLive5;
                st47 = bodePlotPoint21;
                bodeappendcount21 = aZmHist5 - bodePlotPoint21;
                bodePlotPoint21 = aZmHist5;
                st48 = bodePlotPoint22;
                bodeappendcount22 = aZpLive5 - bodePlotPoint22;
                bodePlotPoint22 = aZpLive5;
                st49 = bodePlotPoint23;
                bodeappendcount23 = aZpHist5 - bodePlotPoint23;
                bodePlotPoint23 = aZpHist5;

                // --- bode plot ch6 ---
                st50 = bodePlotPoint24;
                bodeappendcount24 = aZmLive6 - bodePlotPoint24;
                bodePlotPoint24 = aZmLive6;
                st51 = bodePlotPoint25;
                bodeappendcount25 = aZmHist6 - bodePlotPoint25;
                bodePlotPoint25 = aZmHist6;
                st52 = bodePlotPoint26;
                bodeappendcount26 = aZpLive6 - bodePlotPoint26;
                bodePlotPoint26 = aZpLive6;
                st53 = bodePlotPoint27;
                bodeappendcount27 = aZpHist6 - bodePlotPoint27;
                bodePlotPoint27 = aZpHist6;

                // --- bode plot ch7 ---
                st54 = bodePlotPoint28;
                bodeappendcount28 = aZmLive7 - bodePlotPoint28;
                bodePlotPoint28 = aZmLive7;
                st55 = bodePlotPoint29;
                bodeappendcount29 = aZmHist7 - bodePlotPoint29;
                bodePlotPoint29 = aZmHist7;
                st56 = bodePlotPoint30;
                bodeappendcount30 = aZpLive7 - bodePlotPoint30;
                bodePlotPoint30 = aZpLive7;
                st57 = bodePlotPoint31;
                bodeappendcount31 = aZpHist7 - bodePlotPoint31;
                bodePlotPoint31 = aZpHist7;

                // --- bode plot ch8 ---
                st58 = bodePlotPoint32;
                bodeappendcount32 = aZmLive8 - bodePlotPoint32;
                bodePlotPoint32 = aZmLive8;
                st59 = bodePlotPoint33;
                bodeappendcount33 = aZmHist8 - bodePlotPoint33;
                bodePlotPoint33 = aZmHist8;
                st60 = bodePlotPoint34;
                bodeappendcount34 = aZpLive8 - bodePlotPoint34;
                bodePlotPoint34 = aZpLive8;
                st61 = bodePlotPoint35;
                bodeappendcount35 = aZpHist8 - bodePlotPoint35;
                bodePlotPoint35 = aZpHist8;

                // --- bode plot ch9 ---
                st62 = bodePlotPoint36;
                bodeappendcount36 = aZmLive9 - bodePlotPoint36;
                bodePlotPoint36 = aZmLive9;
                st63 = bodePlotPoint37;
                bodeappendcount37 = aZmHist9 - bodePlotPoint37;
                bodePlotPoint37 = aZmHist9;
                st64 = bodePlotPoint38;
                bodeappendcount38 = aZpLive9 - bodePlotPoint38;
                bodePlotPoint38 = aZpLive9;
                st65 = bodePlotPoint39;
                bodeappendcount39 = aZpHist9 - bodePlotPoint39;
                bodePlotPoint39 = aZpHist9;

                // --- bode plot ch10 ---
                st66 = bodePlotPoint40;
                bodeappendcount40 = aZmLive10 - bodePlotPoint40;
                bodePlotPoint40 = aZmLive10;
                st67 = bodePlotPoint41;
                bodeappendcount41 = aZmHist10 - bodePlotPoint41;
                bodePlotPoint41 = aZmHist10;
                st68 = bodePlotPoint42;
                bodeappendcount42 = aZpLive10 - bodePlotPoint42;
                bodePlotPoint42 = aZpLive10;
                st69 = bodePlotPoint43;
                bodeappendcount43 = aZpHist10 - bodePlotPoint43;
                bodePlotPoint43 = aZpHist10;

                // --- bode plot ch11 ---
                st70 = bodePlotPoint44;
                bodeappendcount44 = aZmLive11 - bodePlotPoint44;
                bodePlotPoint44 = aZmLive11;
                st71 = bodePlotPoint45;
                bodeappendcount45 = aZmHist11 - bodePlotPoint45;
                bodePlotPoint45 = aZmHist11;
                st72 = bodePlotPoint46;
                bodeappendcount46 = aZpLive11 - bodePlotPoint46;
                bodePlotPoint46 = aZpLive11;
                st73 = bodePlotPoint47;
                bodeappendcount47 = aZpHist11 - bodePlotPoint47;
                bodePlotPoint47 = aZpHist11;
            }

            int nPlot1 = 1;
            int nPlot2 = 2;

            double[] tx = null;
            double[] ty = null;
            double[] ptx0 = new double[appendcount0];
            double[] pty0 = new double[appendcount0];
            double[] ptx1 = new double[appendcount1];
            double[] pty1 = new double[appendcount1];

            double[] ptx2 = new double[bodeappendcount0];
            double[] pty2 = new double[bodeappendcount0];
            double[] ptx3 = new double[bodeappendcount1];
            double[] pty3 = new double[bodeappendcount1];

            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                if (appendcount0 > 0)
                {
                    tx = rtMain.plot[0].lx[0].ToArray();
                    ty = rtMain.plot[0].ly[0].ToArray();
                    Array.Copy(tx, st0, ptx0, 0, appendcount0);
                    Array.Copy(ty, st0, pty0, 0, appendcount0);
                    grp1.Plots[0 + nPlot1].PlotXYAppend(ptx0, pty0);
                }
                if (appendcount1 > 0)
                {
                    tx = rtMain.plot[0].lx[1].ToArray();
                    ty = rtMain.plot[0].ly[1].ToArray();
                    Array.Copy(tx, st1, ptx1, 0, appendcount1);
                    Array.Copy(ty, st1, pty1, 0, appendcount1);
                    grp1.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
                }

                // AUX ch0
                if (auxappendcount0 > 0)
                {
                    var x = rtAux.plot[0].lx[0].ToArray();
                    var y = rtAux.plot[0].ly[0].ToArray();
                    var px = new double[auxappendcount0];
                    var py = new double[auxappendcount0];
                    Array.Copy(x, st2, px, 0, auxappendcount0);
                    Array.Copy(y, st2, py, 0, auxappendcount0);
                    grp1.Plots[7].PlotXYAppend(px, py);
                }
                if (auxappendcount1 > 0)
                {
                    var x = rtAux.plot[1].lx[0].ToArray();
                    var y = rtAux.plot[1].ly[0].ToArray();
                    var px = new double[auxappendcount1];
                    var py = new double[auxappendcount1];
                    Array.Copy(x, st3, px, 0, auxappendcount1);
                    Array.Copy(y, st3, py, 0, auxappendcount1);
                    grp1.Plots[8].PlotXYAppend(px, py);
                }

                // AUX ch1
                if (auxappendcount2 > 0)
                {
                    var x = rtAux.plot[0].lx[1].ToArray();
                    var y = rtAux.plot[0].ly[1].ToArray();
                    var px = new double[auxappendcount2];
                    var py = new double[auxappendcount2];
                    Array.Copy(x, st4, px, 0, auxappendcount2);
                    Array.Copy(y, st4, py, 0, auxappendcount2);
                    grp1.Plots[9].PlotXYAppend(px, py);
                }
                if (auxappendcount3 > 0)
                {
                    var x = rtAux.plot[1].lx[1].ToArray();
                    var y = rtAux.plot[1].ly[1].ToArray();
                    var px = new double[auxappendcount3];
                    var py = new double[auxappendcount3];
                    Array.Copy(x, st5, px, 0, auxappendcount3);
                    Array.Copy(y, st5, py, 0, auxappendcount3);
                    grp1.Plots[10].PlotXYAppend(px, py);
                }

                // AUX ch2
                if (auxappendcount4 > 0)
                {
                    var x = rtAux.plot[0].lx[2].ToArray();
                    var y = rtAux.plot[0].ly[2].ToArray();
                    var px = new double[auxappendcount4];
                    var py = new double[auxappendcount4];
                    Array.Copy(x, st6, px, 0, auxappendcount4);
                    Array.Copy(y, st6, py, 0, auxappendcount4);
                    grp1.Plots[11].PlotXYAppend(px, py);
                }
                if (auxappendcount5 > 0)
                {
                    var x = rtAux.plot[1].lx[2].ToArray();
                    var y = rtAux.plot[1].ly[2].ToArray();
                    var px = new double[auxappendcount5];
                    var py = new double[auxappendcount5];
                    Array.Copy(x, st7, px, 0, auxappendcount5);
                    Array.Copy(y, st7, py, 0, auxappendcount5);
                    grp1.Plots[12].PlotXYAppend(px, py);
                }

                // AUX ch3
                if (auxappendcount6 > 0)
                {
                    var x = rtAux.plot[0].lx[3].ToArray();
                    var y = rtAux.plot[0].ly[3].ToArray();
                    var px = new double[auxappendcount6];
                    var py = new double[auxappendcount6];
                    Array.Copy(x, st8, px, 0, auxappendcount6);
                    Array.Copy(y, st8, py, 0, auxappendcount6);
                    grp1.Plots[13].PlotXYAppend(px, py);
                }
                if (auxappendcount7 > 0)
                {
                    var x = rtAux.plot[1].lx[3].ToArray();
                    var y = rtAux.plot[1].ly[3].ToArray();
                    var px = new double[auxappendcount7];
                    var py = new double[auxappendcount7];
                    Array.Copy(x, st9, px, 0, auxappendcount7);
                    Array.Copy(y, st9, py, 0, auxappendcount7);
                    grp1.Plots[14].PlotXYAppend(px, py);
                }

                // AUX ch4
                if (auxappendcount8 > 0)
                {
                    var x = rtAux.plot[0].lx[4].ToArray();
                    var y = rtAux.plot[0].ly[4].ToArray();
                    var px = new double[auxappendcount8];
                    var py = new double[auxappendcount8];
                    Array.Copy(x, st10, px, 0, auxappendcount8);
                    Array.Copy(y, st10, py, 0, auxappendcount8);
                    grp1.Plots[15].PlotXYAppend(px, py);
                }
                if (auxappendcount9 > 0)
                {
                    var x = rtAux.plot[1].lx[4].ToArray();
                    var y = rtAux.plot[1].ly[4].ToArray();
                    var px = new double[auxappendcount9];
                    var py = new double[auxappendcount9];
                    Array.Copy(x, st11, px, 0, auxappendcount9);
                    Array.Copy(y, st11, py, 0, auxappendcount9);
                    grp1.Plots[16].PlotXYAppend(px, py);
                }

                // AUX ch5
                if (auxappendcount10 > 0)
                {
                    var x = rtAux.plot[0].lx[5].ToArray();
                    var y = rtAux.plot[0].ly[5].ToArray();
                    var px = new double[auxappendcount10];
                    var py = new double[auxappendcount10];
                    Array.Copy(x, st12, px, 0, auxappendcount10);
                    Array.Copy(y, st12, py, 0, auxappendcount10);
                    grp1.Plots[17].PlotXYAppend(px, py);
                }
                if (auxappendcount11 > 0)
                {
                    var x = rtAux.plot[1].lx[5].ToArray();
                    var y = rtAux.plot[1].ly[5].ToArray();
                    var px = new double[auxappendcount11];
                    var py = new double[auxappendcount11];
                    Array.Copy(x, st13, px, 0, auxappendcount11);
                    Array.Copy(y, st13, py, 0, auxappendcount11);
                    grp1.Plots[18].PlotXYAppend(px, py);
                }

                // AUX ch6
                if (auxappendcount12 > 0)
                {
                    var x = rtAux.plot[0].lx[6].ToArray();
                    var y = rtAux.plot[0].ly[6].ToArray();
                    var px = new double[auxappendcount12];
                    var py = new double[auxappendcount12];
                    Array.Copy(x, st14, px, 0, auxappendcount12);
                    Array.Copy(y, st14, py, 0, auxappendcount12);
                    grp1.Plots[19].PlotXYAppend(px, py);
                }
                if (auxappendcount13 > 0)
                {
                    var x = rtAux.plot[1].lx[6].ToArray();
                    var y = rtAux.plot[1].ly[6].ToArray();
                    var px = new double[auxappendcount13];
                    var py = new double[auxappendcount13];
                    Array.Copy(x, st15, px, 0, auxappendcount13);
                    Array.Copy(y, st15, py, 0, auxappendcount13);
                    grp1.Plots[20].PlotXYAppend(px, py);
                }

                // AUX ch7
                if (auxappendcount14 > 0)
                {
                    var x = rtAux.plot[0].lx[7].ToArray();
                    var y = rtAux.plot[0].ly[7].ToArray();
                    var px = new double[auxappendcount14];
                    var py = new double[auxappendcount14];
                    Array.Copy(x, st16, px, 0, auxappendcount14);
                    Array.Copy(y, st16, py, 0, auxappendcount14);
                    grp1.Plots[21].PlotXYAppend(px, py);
                }
                if (auxappendcount15 > 0)
                {
                    var x = rtAux.plot[1].lx[7].ToArray();
                    var y = rtAux.plot[1].ly[7].ToArray();
                    var px = new double[auxappendcount15];
                    var py = new double[auxappendcount15];
                    Array.Copy(x, st17, px, 0, auxappendcount15);
                    Array.Copy(y, st17, py, 0, auxappendcount15);
                    grp1.Plots[22].PlotXYAppend(px, py);
                }

                // AUX ch8
                if (auxappendcount16 > 0)
                {
                    var x = rtAux.plot[0].lx[8].ToArray();
                    var y = rtAux.plot[0].ly[8].ToArray();
                    var px = new double[auxappendcount16];
                    var py = new double[auxappendcount16];
                    Array.Copy(x, st18, px, 0, auxappendcount16);
                    Array.Copy(y, st18, py, 0, auxappendcount16);
                    grp1.Plots[23].PlotXYAppend(px, py);
                }
                if (auxappendcount17 > 0)
                {
                    var x = rtAux.plot[1].lx[8].ToArray();
                    var y = rtAux.plot[1].ly[8].ToArray();
                    var px = new double[auxappendcount17];
                    var py = new double[auxappendcount17];
                    Array.Copy(x, st19, px, 0, auxappendcount17);
                    Array.Copy(y, st19, py, 0, auxappendcount17);
                    grp1.Plots[24].PlotXYAppend(px, py);
                }

                // AUX ch9
                if (auxappendcount18 > 0)
                {
                    var x = rtAux.plot[0].lx[9].ToArray();
                    var y = rtAux.plot[0].ly[9].ToArray();
                    var px = new double[auxappendcount18];
                    var py = new double[auxappendcount18];
                    Array.Copy(x, st20, px, 0, auxappendcount18);
                    Array.Copy(y, st20, py, 0, auxappendcount18);
                    grp1.Plots[25].PlotXYAppend(px, py);
                }
                if (auxappendcount19 > 0)
                {
                    var x = rtAux.plot[1].lx[9].ToArray();
                    var y = rtAux.plot[1].ly[9].ToArray();
                    var px = new double[auxappendcount19];
                    var py = new double[auxappendcount19];
                    Array.Copy(x, st21, px, 0, auxappendcount19);
                    Array.Copy(y, st21, py, 0, auxappendcount19);
                    grp1.Plots[26].PlotXYAppend(px, py);
                }

                // AUX ch10
                if (auxappendcount20 > 0)
                {
                    var x = rtAux.plot[0].lx[10].ToArray();
                    var y = rtAux.plot[0].ly[10].ToArray();
                    var px = new double[auxappendcount20];
                    var py = new double[auxappendcount20];
                    Array.Copy(x, st22, px, 0, auxappendcount20);
                    Array.Copy(y, st22, py, 0, auxappendcount20);
                    grp1.Plots[27].PlotXYAppend(px, py);
                }
                if (auxappendcount21 > 0)
                {
                    var x = rtAux.plot[1].lx[10].ToArray();
                    var y = rtAux.plot[1].ly[10].ToArray();
                    var px = new double[auxappendcount21];
                    var py = new double[auxappendcount21];
                    Array.Copy(x, st23, px, 0, auxappendcount21);
                    Array.Copy(y, st23, py, 0, auxappendcount21);
                    grp1.Plots[28].PlotXYAppend(px, py);
                }

                // AUX ch11
                if (auxappendcount22 > 0)
                {
                    var x = rtAux.plot[0].lx[11].ToArray();
                    var y = rtAux.plot[0].ly[11].ToArray();
                    var px = new double[auxappendcount22];
                    var py = new double[auxappendcount22];
                    Array.Copy(x, st24, px, 0, auxappendcount22);
                    Array.Copy(y, st24, py, 0, auxappendcount22);
                    grp1.Plots[29].PlotXYAppend(px, py);
                }
                if (auxappendcount23 > 0)
                {
                    var x = rtAux.plot[1].lx[11].ToArray();
                    var y = rtAux.plot[1].ly[11].ToArray();
                    var px = new double[auxappendcount23];
                    var py = new double[auxappendcount23];
                    Array.Copy(x, st25, px, 0, auxappendcount23);
                    Array.Copy(y, st25, py, 0, auxappendcount23);
                    grp1.Plots[30].PlotXYAppend(px, py);
                }

                // ===================== Y축 자동 스케일 (Main + AUX 전체) =====================
                double globalMax = rtMain.plot[0].Maxval[0];
                double globalMin = rtMain.plot[0].Minval[0];

                for (int i = 1; i < rtMain.plot[0].Maxval.Length; i++)
                {
                    if (rtMain.plot[0].Maxval[i] > globalMax) globalMax = rtMain.plot[0].Maxval[i];
                    if (rtMain.plot[0].Minval[i] < globalMin) globalMin = rtMain.plot[0].Minval[i];
                }

                for (int ch = 0; ch < 12; ch++)
                {
                    for (int p = 0; p < 2; p++)
                    {
                        if (rtAux.plot[p].Maxval.Length > ch)
                        {
                            double auxMax = rtAux.plot[p].Maxval[ch];
                            double auxMin = rtAux.plot[p].Minval[ch];
                            if (!(auxMax == 0 && auxMin == 0))
                            {
                                if (auxMax > globalMax) globalMax = auxMax;
                                if (auxMin < globalMin) globalMin = auxMin;
                            }
                        }
                    }
                }

                double cmpval = Math.Abs(globalMax);
                if (cmpval < Math.Abs(globalMin)) cmpval = Math.Abs(globalMin);

                double maxval = globalMax + (cmpval * GrpSpaceRate);
                double minval = globalMin - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    if (minval == 0)
                    {
                        minval = -1;
                        maxval = 1;
                    }
                    else
                    {
                        double offset = Math.Abs(minval) * 0.05;
                        if (offset == 0) offset = 0.1;
                        minval -= offset;
                        maxval += offset;
                    }
                }

                grp1.YAxes[0].Range = new Range(minval, maxval);

                // ===================== X축 자동 스케일 =====================
                double xmax = rtMain.plot[0].Maxval[2];
                double xmin = rtMain.plot[0].Minval[2];

                cmpval = Math.Abs(xmax);
                if (cmpval < Math.Abs(xmin)) cmpval = Math.Abs(xmin);

                xmax = xmax + (cmpval * GrpSpaceRate);
                xmin = xmin - (cmpval * GrpSpaceRate);

                if (xmin == xmax)
                {
                    if (xmax == 0)
                    {
                        xmin = -1;
                        xmax = 1;
                    }
                    else
                    {
                        double offset = Math.Abs(xmax) * 0.05;
                        xmin -= offset;
                        xmax += offset;
                    }
                }

                grp1.XAxes[0].Range = new Range(xmin, xmax);
            }

            if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3) // bode plot
            {
                if (appendcount0 > 0)
                {
                    tx = rtMain.plot[2].lx[0].ToArray();
                    ty = rtMain.plot[2].ly[0].ToArray();
                    Array.Copy(tx, st0, ptx0, 0, appendcount0);
                    Array.Copy(ty, st0, pty0, 0, appendcount0);
                    grp2.Plots[0 + nPlot2].PlotXYAppend(ptx0, pty0);
                    //grp2.Plots[0+nPlot2].PlotXY(rtgrp.plot[2].lx[0].ToArray(), rtgrp.plot[2].ly[0].ToArray());
                }
                if (appendcount1 > 0)
                {
                    tx = rtMain.plot[2].lx[1].ToArray();
                    ty = rtMain.plot[2].ly[1].ToArray();
                    Array.Copy(tx, st1, ptx1, 0, appendcount1);
                    Array.Copy(ty, st1, pty1, 0, appendcount1);
                    grp2.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
                }

                if (bodeappendcount0 > 0) // Aux
                {
                    tx = rtAux.plot[2].lx[0].ToArray();
                    ty = rtAux.plot[2].ly[0].ToArray();
                    Array.Copy(tx, st26, ptx2, 0, bodeappendcount0);
                    Array.Copy(ty, st26, pty2, 0, bodeappendcount0);
                    grp2.Plots[8].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount1 > 0)
                {
                    tx = rtAux.plot[3].lx[0].ToArray();
                    ty = rtAux.plot[3].ly[0].ToArray();
                    Array.Copy(tx, st27, ptx3, 0, bodeappendcount1);
                    Array.Copy(ty, st27, pty3, 0, bodeappendcount1);
                    grp2.Plots[10].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount4 > 0)
                {
                    tx = rtAux.plot[2].lx[1].ToArray();
                    ty = rtAux.plot[2].ly[1].ToArray();
                    Array.Copy(tx, st30, ptx2, 0, bodeappendcount4);
                    Array.Copy(ty, st30, pty2, 0, bodeappendcount4);
                    grp2.Plots[12].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount5 > 0)
                {
                    tx = rtAux.plot[3].lx[1].ToArray();
                    ty = rtAux.plot[3].ly[1].ToArray();
                    Array.Copy(tx, st31, ptx3, 0, bodeappendcount5);
                    Array.Copy(ty, st31, pty3, 0, bodeappendcount5);
                    grp2.Plots[14].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount8 > 0)
                {
                    tx = rtAux.plot[2].lx[2].ToArray();
                    ty = rtAux.plot[2].ly[2].ToArray();
                    Array.Copy(tx, st34, ptx2, 0, bodeappendcount8);
                    Array.Copy(ty, st34, pty2, 0, bodeappendcount8);
                    grp2.Plots[16].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount9 > 0)
                {
                    tx = rtAux.plot[3].lx[2].ToArray();
                    ty = rtAux.plot[3].ly[2].ToArray();
                    Array.Copy(tx, st35, ptx3, 0, bodeappendcount9);
                    Array.Copy(ty, st35, pty3, 0, bodeappendcount9);
                    grp2.Plots[18].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount12 > 0)
                {
                    tx = rtAux.plot[2].lx[3].ToArray();
                    ty = rtAux.plot[2].ly[3].ToArray();
                    Array.Copy(tx, st38, ptx2, 0, bodeappendcount12);
                    Array.Copy(ty, st38, pty2, 0, bodeappendcount12);
                    grp2.Plots[20].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount13 > 0)
                {
                    tx = rtAux.plot[3].lx[3].ToArray();
                    ty = rtAux.plot[3].ly[3].ToArray();
                    Array.Copy(tx, st39, ptx3, 0, bodeappendcount13);
                    Array.Copy(ty, st39, pty3, 0, bodeappendcount13);
                    grp2.Plots[22].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount16 > 0)
                {
                    tx = rtAux.plot[2].lx[4].ToArray();
                    ty = rtAux.plot[2].ly[4].ToArray();
                    Array.Copy(tx, st42, ptx2, 0, bodeappendcount16);
                    Array.Copy(ty, st42, pty2, 0, bodeappendcount16);
                    grp2.Plots[24].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount17 > 0)
                {
                    tx = rtAux.plot[3].lx[4].ToArray();
                    ty = rtAux.plot[3].ly[4].ToArray();
                    Array.Copy(tx, st43, ptx3, 0, bodeappendcount17);
                    Array.Copy(ty, st43, pty3, 0, bodeappendcount17);
                    grp2.Plots[26].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount20 > 0)
                {
                    tx = rtAux.plot[2].lx[5].ToArray();
                    ty = rtAux.plot[2].ly[5].ToArray();
                    Array.Copy(tx, st46, ptx2, 0, bodeappendcount20);
                    Array.Copy(ty, st46, pty2, 0, bodeappendcount20);
                    grp2.Plots[28].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount21 > 0)
                {
                    tx = rtAux.plot[3].lx[5].ToArray();
                    ty = rtAux.plot[3].ly[5].ToArray();
                    Array.Copy(tx, st47, ptx3, 0, bodeappendcount21);
                    Array.Copy(ty, st47, pty3, 0, bodeappendcount21);
                    grp2.Plots[30].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount24 > 0)
                {
                    tx = rtAux.plot[2].lx[6].ToArray();
                    ty = rtAux.plot[2].ly[6].ToArray();
                    Array.Copy(tx, st50, ptx2, 0, bodeappendcount24);
                    Array.Copy(ty, st50, pty2, 0, bodeappendcount24);
                    grp2.Plots[32].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount25 > 0)
                {
                    tx = rtAux.plot[3].lx[6].ToArray();
                    ty = rtAux.plot[3].ly[6].ToArray();
                    Array.Copy(tx, st51, ptx3, 0, bodeappendcount25);
                    Array.Copy(ty, st51, pty3, 0, bodeappendcount25);
                    grp2.Plots[34].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount28 > 0)
                {
                    tx = rtAux.plot[2].lx[7].ToArray();
                    ty = rtAux.plot[2].ly[7].ToArray();
                    Array.Copy(tx, st54, ptx2, 0, bodeappendcount28);
                    Array.Copy(ty, st54, pty2, 0, bodeappendcount28);
                    grp2.Plots[36].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount29 > 0)
                {
                    tx = rtAux.plot[3].lx[7].ToArray();
                    ty = rtAux.plot[3].ly[7].ToArray();
                    Array.Copy(tx, st55, ptx3, 0, bodeappendcount29);
                    Array.Copy(ty, st55, pty3, 0, bodeappendcount29);
                    grp2.Plots[38].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount32 > 0)
                {
                    tx = rtAux.plot[2].lx[8].ToArray();
                    ty = rtAux.plot[2].ly[8].ToArray();
                    Array.Copy(tx, st58, ptx2, 0, bodeappendcount32);
                    Array.Copy(ty, st58, pty2, 0, bodeappendcount32);
                    grp2.Plots[40].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount33 > 0)
                {
                    tx = rtAux.plot[3].lx[8].ToArray();
                    ty = rtAux.plot[3].ly[8].ToArray();
                    Array.Copy(tx, st59, ptx3, 0, bodeappendcount33);
                    Array.Copy(ty, st59, pty3, 0, bodeappendcount33);
                    grp2.Plots[42].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount36 > 0)
                {
                    tx = rtAux.plot[2].lx[9].ToArray();
                    ty = rtAux.plot[2].ly[9].ToArray();
                    Array.Copy(tx, st62, ptx2, 0, bodeappendcount36);
                    Array.Copy(ty, st62, pty2, 0, bodeappendcount36);
                    grp2.Plots[44].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount37 > 0)
                {
                    tx = rtAux.plot[3].lx[9].ToArray();
                    ty = rtAux.plot[3].ly[9].ToArray();
                    Array.Copy(tx, st63, ptx3, 0, bodeappendcount37);
                    Array.Copy(ty, st63, pty3, 0, bodeappendcount37);
                    grp2.Plots[46].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount40 > 0)
                {
                    tx = rtAux.plot[2].lx[10].ToArray();
                    ty = rtAux.plot[2].ly[10].ToArray();
                    Array.Copy(tx, st66, ptx2, 0, bodeappendcount40);
                    Array.Copy(ty, st66, pty2, 0, bodeappendcount40);
                    grp2.Plots[48].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount41 > 0)
                {
                    tx = rtAux.plot[3].lx[10].ToArray();
                    ty = rtAux.plot[3].ly[10].ToArray();
                    Array.Copy(tx, st67, ptx3, 0, bodeappendcount41);
                    Array.Copy(ty, st67, pty3, 0, bodeappendcount41);
                    grp2.Plots[50].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount44 > 0)
                {
                    tx = rtAux.plot[2].lx[11].ToArray();
                    ty = rtAux.plot[2].ly[11].ToArray();
                    Array.Copy(tx, st70, ptx2, 0, bodeappendcount44);
                    Array.Copy(ty, st70, pty2, 0, bodeappendcount44);
                    grp2.Plots[52].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount45 > 0)
                {
                    tx = rtAux.plot[3].lx[11].ToArray();
                    ty = rtAux.plot[3].ly[11].ToArray();
                    Array.Copy(tx, st71, ptx3, 0, bodeappendcount45);
                    Array.Copy(ty, st71, pty3, 0, bodeappendcount45);
                    grp2.Plots[54].PlotXYAppend(ptx3, pty3);
                }
                // ===================== Y축 자동 스케일 (Main + AUX 전체) =====================
                double globalMax = rtMain.plot[2].Maxval[0];
                double globalMin = rtMain.plot[2].Minval[0];

                for (int i = 1; i < rtMain.plot[2].Maxval.Length; i++)
                {
                    if (rtMain.plot[2].Maxval[i] > globalMax) globalMax = rtMain.plot[2].Maxval[i];
                    if (rtMain.plot[2].Minval[i] < globalMin) globalMin = rtMain.plot[2].Minval[i];
                }

                for (int ch = 0; ch < 12; ch++)
                {
                    for (int p = 2; p <= 3; p++)
                    {
                        if (rtAux.plot[p].Maxval.Length > ch)
                        {
                            double auxMax = rtAux.plot[p].Maxval[ch];
                            double auxMin = rtAux.plot[p].Minval[ch];
                            if (!(auxMax == 0 && auxMin == 0))
                            {
                                if (auxMax > globalMax) globalMax = auxMax;
                                if (auxMin < globalMin) globalMin = auxMin;
                            }
                        }
                    }
                }

                // 전체 스케일 계산
                double cmpval = Math.Abs(globalMax);
                if (cmpval < Math.Abs(globalMin)) cmpval = Math.Abs(globalMin);

                double maxval = globalMax + (cmpval * GrpSpaceRate);
                double minval = globalMin - (cmpval * GrpSpaceRate);

                // 보정 처리
                if (double.IsNaN(minval) || double.IsNaN(maxval) || double.IsInfinity(minval) || double.IsInfinity(maxval))
                {
                    minval = -1;
                    maxval = 1;
                }
                else if (minval == maxval)
                {
                    if (minval == 0)
                    {
                        minval = -1;
                        maxval = 1;
                    }
                    else
                    {
                        double offset = Math.Abs(minval) * 0.05;
                        if (offset == 0) offset = 0.1;
                        minval -= offset;
                        maxval += offset;
                    }
                }

                // 최종 적용
                grp2.YAxes[0].Range = new Range(minval, maxval);

                // ================================================================
                if (appendcount0 > 0)
                {
                    tx = rtMain.plot[3].lx[0].ToArray();
                    ty = rtMain.plot[3].ly[0].ToArray();
                    Array.Copy(tx, st0, ptx0, 0, appendcount0);
                    Array.Copy(ty, st0, pty0, 0, appendcount0);
                    grp2.Plots[1 + nPlot2].PlotXYAppend(ptx0, pty0);
                    //grp2.Plots[1+nPlot2].PlotXY(rtgrp.plot[3].lx[0].ToArray(), rtgrp.plot[3].ly[0].ToArray());
                }
                if (appendcount1 > 0)
                {
                    tx = rtMain.plot[3].lx[1].ToArray();
                    ty = rtMain.plot[3].ly[1].ToArray();
                    Array.Copy(tx, st1, ptx1, 0, appendcount1);
                    Array.Copy(ty, st1, pty1, 0, appendcount1);
                    grp2.Plots[1].PlotXYAppend(ptx1, pty1);  // 0206 7
                }
                if (bodeappendcount2 > 0)
                {
                    tx = rtAux.plot[4].lx[0].ToArray();
                    ty = rtAux.plot[4].ly[0].ToArray();
                    Array.Copy(tx, st28, ptx2, 0, bodeappendcount2);
                    Array.Copy(ty, st28, pty2, 0, bodeappendcount2);
                    grp2.Plots[9].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount3 > 0)
                {
                    tx = rtAux.plot[5].lx[0].ToArray();
                    ty = rtAux.plot[5].ly[0].ToArray();
                    Array.Copy(tx, st29, ptx3, 0, bodeappendcount3);
                    Array.Copy(ty, st29, pty3, 0, bodeappendcount3);
                    grp2.Plots[11].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount6 > 0)
                {
                    tx = rtAux.plot[4].lx[1].ToArray();
                    ty = rtAux.plot[4].ly[1].ToArray();
                    Array.Copy(tx, st32, ptx2, 0, bodeappendcount6);
                    Array.Copy(ty, st32, pty2, 0, bodeappendcount6);
                    grp2.Plots[13].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount7 > 0)
                {
                    tx = rtAux.plot[5].lx[1].ToArray();
                    ty = rtAux.plot[5].ly[1].ToArray();
                    Array.Copy(tx, st33, ptx3, 0, bodeappendcount7);
                    Array.Copy(ty, st33, pty3, 0, bodeappendcount7);
                    grp2.Plots[15].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount10 > 0)
                {
                    tx = rtAux.plot[4].lx[2].ToArray();
                    ty = rtAux.plot[4].ly[2].ToArray();
                    Array.Copy(tx, st36, ptx2, 0, bodeappendcount10);
                    Array.Copy(ty, st36, pty2, 0, bodeappendcount10);
                    grp2.Plots[17].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount11 > 0)
                {
                    tx = rtAux.plot[5].lx[2].ToArray();
                    ty = rtAux.plot[5].ly[2].ToArray();
                    Array.Copy(tx, st37, ptx3, 0, bodeappendcount11);
                    Array.Copy(ty, st37, pty3, 0, bodeappendcount11);
                    grp2.Plots[19].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount14 > 0)
                {
                    tx = rtAux.plot[4].lx[3].ToArray();
                    ty = rtAux.plot[4].ly[3].ToArray();
                    Array.Copy(tx, st40, ptx2, 0, bodeappendcount14);
                    Array.Copy(ty, st40, pty2, 0, bodeappendcount14);
                    grp2.Plots[21].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount15 > 0)
                {
                    tx = rtAux.plot[5].lx[3].ToArray();
                    ty = rtAux.plot[5].ly[3].ToArray();
                    Array.Copy(tx, st41, ptx3, 0, bodeappendcount15);
                    Array.Copy(ty, st41, pty3, 0, bodeappendcount15);
                    grp2.Plots[23].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount18 > 0)
                {
                    tx = rtAux.plot[4].lx[4].ToArray();
                    ty = rtAux.plot[4].ly[4].ToArray();
                    Array.Copy(tx, st44, ptx2, 0, bodeappendcount18);
                    Array.Copy(ty, st44, pty2, 0, bodeappendcount18);
                    grp2.Plots[25].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount19 > 0)
                {
                    tx = rtAux.plot[5].lx[4].ToArray();
                    ty = rtAux.plot[5].ly[4].ToArray();
                    Array.Copy(tx, st45, ptx3, 0, bodeappendcount19);
                    Array.Copy(ty, st45, pty3, 0, bodeappendcount19);
                    grp2.Plots[27].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount22 > 0)
                {
                    tx = rtAux.plot[4].lx[5].ToArray();
                    ty = rtAux.plot[4].ly[5].ToArray();
                    Array.Copy(tx, st48, ptx2, 0, bodeappendcount22);
                    Array.Copy(ty, st48, pty2, 0, bodeappendcount22);
                    grp2.Plots[29].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount23 > 0)
                {
                    tx = rtAux.plot[5].lx[5].ToArray();
                    ty = rtAux.plot[5].ly[5].ToArray();
                    Array.Copy(tx, st49, ptx3, 0, bodeappendcount23);
                    Array.Copy(ty, st49, pty3, 0, bodeappendcount23);
                    grp2.Plots[31].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount26 > 0)
                {
                    tx = rtAux.plot[4].lx[6].ToArray();
                    ty = rtAux.plot[4].ly[6].ToArray();
                    Array.Copy(tx, st52, ptx2, 0, bodeappendcount26);
                    Array.Copy(ty, st52, pty2, 0, bodeappendcount26);
                    grp2.Plots[33].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount27 > 0)
                {
                    tx = rtAux.plot[5].lx[6].ToArray();
                    ty = rtAux.plot[5].ly[6].ToArray();
                    Array.Copy(tx, st53, ptx3, 0, bodeappendcount27);
                    Array.Copy(ty, st53, pty3, 0, bodeappendcount27);
                    grp2.Plots[35].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount30 > 0)
                {
                    tx = rtAux.plot[4].lx[7].ToArray();
                    ty = rtAux.plot[4].ly[7].ToArray();
                    Array.Copy(tx, st56, ptx2, 0, bodeappendcount30);
                    Array.Copy(ty, st56, pty2, 0, bodeappendcount30);
                    grp2.Plots[37].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount31 > 0)
                {
                    tx = rtAux.plot[5].lx[7].ToArray();
                    ty = rtAux.plot[5].ly[7].ToArray();
                    Array.Copy(tx, st57, ptx3, 0, bodeappendcount31);
                    Array.Copy(ty, st57, pty3, 0, bodeappendcount31);
                    grp2.Plots[39].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount34 > 0)
                {
                    tx = rtAux.plot[4].lx[8].ToArray();
                    ty = rtAux.plot[4].ly[8].ToArray();
                    Array.Copy(tx, st60, ptx2, 0, bodeappendcount34);
                    Array.Copy(ty, st60, pty2, 0, bodeappendcount34);
                    grp2.Plots[41].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount35 > 0)
                {
                    tx = rtAux.plot[5].lx[8].ToArray();
                    ty = rtAux.plot[5].ly[8].ToArray();
                    Array.Copy(tx, st61, ptx3, 0, bodeappendcount35);
                    Array.Copy(ty, st61, pty3, 0, bodeappendcount35);
                    grp2.Plots[43].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount38 > 0)
                {
                    tx = rtAux.plot[4].lx[9].ToArray();
                    ty = rtAux.plot[4].ly[9].ToArray();
                    Array.Copy(tx, st64, ptx2, 0, bodeappendcount38);
                    Array.Copy(ty, st64, pty2, 0, bodeappendcount38);
                    grp2.Plots[45].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount39 > 0)
                {
                    tx = rtAux.plot[5].lx[9].ToArray();
                    ty = rtAux.plot[5].ly[9].ToArray();
                    Array.Copy(tx, st65, ptx3, 0, bodeappendcount39);
                    Array.Copy(ty, st65, pty3, 0, bodeappendcount39);
                    grp2.Plots[47].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount42 > 0)
                {
                    tx = rtAux.plot[4].lx[10].ToArray();
                    ty = rtAux.plot[4].ly[10].ToArray();
                    Array.Copy(tx, st68, ptx2, 0, bodeappendcount42);
                    Array.Copy(ty, st68, pty2, 0, bodeappendcount42);
                    grp2.Plots[49].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount43 > 0)
                {
                    tx = rtAux.plot[5].lx[10].ToArray();
                    ty = rtAux.plot[5].ly[10].ToArray();
                    Array.Copy(tx, st69, ptx3, 0, bodeappendcount43);
                    Array.Copy(ty, st69, pty3, 0, bodeappendcount43);
                    grp2.Plots[51].PlotXYAppend(ptx3, pty3);
                }
                if (bodeappendcount46 > 0)
                {
                    tx = rtAux.plot[4].lx[11].ToArray();
                    ty = rtAux.plot[4].ly[11].ToArray();
                    Array.Copy(tx, st72, ptx2, 0, bodeappendcount46);
                    Array.Copy(ty, st72, pty2, 0, bodeappendcount46);
                    grp2.Plots[53].PlotXYAppend(ptx2, pty2);
                }
                if (bodeappendcount47 > 0)
                {
                    tx = rtAux.plot[5].lx[11].ToArray();
                    ty = rtAux.plot[5].ly[11].ToArray();
                    Array.Copy(tx, st73, ptx3, 0, bodeappendcount47);
                    Array.Copy(ty, st73, pty3, 0, bodeappendcount47);
                    grp2.Plots[55].PlotXYAppend(ptx3, pty3);
                }
                // ===================== Y축 자동 스케일 (Main + AUX 전체) =====================
                globalMax = rtMain.plot[3].Maxval[0];
                globalMin = rtMain.plot[3].Minval[0];

                for (int i = 1; i < rtMain.plot[3].Maxval.Length; i++)
                {
                    if (rtMain.plot[3].Maxval[i] > globalMax) globalMax = rtMain.plot[3].Maxval[i];
                    if (rtMain.plot[3].Minval[i] < globalMin) globalMin = rtMain.plot[3].Minval[i];
                }

                for (int ch = 0; ch < 12; ch++)
                {
                    for (int p = 4; p <= 5; p++)
                    {
                        if (rtAux.plot[p].Maxval.Length > ch)
                        {
                            double auxMax = rtAux.plot[p].Maxval[ch];
                            double auxMin = rtAux.plot[p].Minval[ch];
                            if (!(auxMax == 0 && auxMin == 0))
                            {
                                if (auxMax > globalMax) globalMax = auxMax;
                                if (auxMin < globalMin) globalMin = auxMin;
                            }
                        }
                    }
                }

                cmpval = Math.Abs(globalMax);
                if (cmpval < Math.Abs(globalMin)) cmpval = Math.Abs(globalMin);

                maxval = globalMax + (cmpval * GrpSpaceRate);
                minval = globalMin - (cmpval * GrpSpaceRate);

                if (double.IsNaN(minval) || double.IsNaN(maxval) || double.IsInfinity(minval) || double.IsInfinity(maxval))
                {
                    minval = -1;
                    maxval = 1;
                }
                else if (minval == maxval)
                {
                    if (minval == 0)
                    {
                        minval = -1;
                        maxval = 1;
                    }
                    else
                    {
                        double offset = Math.Abs(minval) * 0.05;
                        if (offset == 0) offset = 0.1;
                        minval -= offset;
                        maxval += offset;
                    }
                }

                // 최종 적용
                grp2.YAxes[1].Range = new Range(minval, maxval);

                double xmax = rtMain.plot[3].Maxval[2];
                double xmin = rtMain.plot[3].Minval[2];

                if (xmin == xmax)
                {
                    if (xmin == 0.0)
                    {
                        xmin = -1.0;
                        xmax = +1.0;
                    }
                    else
                    {
                        double offset = Math.Abs(xmin) * 0.1;
                        xmin -= offset;
                        xmax += offset;
                    }
                }
                else
                {
                    xmin -= xmin * GrpSpaceRate;
                    xmax += xmax * GrpSpaceRate;
                }

                if (xmin <= 0.045) xmin = 0.045;
                grp2.XAxes[0].Range = new Range(xmin, xmax);
            }*/
        }


        //private void RefreshGraphEIS()
        //{
        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
        //    double maxval, minval, cmpval;

        //    int plotcount0 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].Count;
        //    int plotcount1 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[1].Count;
        //    int appendcount0 = 0;
        //    int appendcount1 = 0;

        //    int auxplotcount0 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[0].Count; // Aux Zimg
        //    int auxplotcount1 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[0].Count;
        //    int auxplotcount2 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[1].Count;
        //    int auxplotcount3 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[1].Count;
        //    int auxplotcount4 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[2].Count;
        //    int auxplotcount5 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[2].Count;
        //    int auxplotcount6 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[3].Count;
        //    int auxplotcount7 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[3].Count;
        //    int auxplotcount8 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[4].Count;
        //    int auxplotcount9 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[4].Count;
        //    int auxplotcount10 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[5].Count;
        //    int auxplotcount11 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[5].Count;
        //    int auxplotcount12 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[6].Count;
        //    int auxplotcount13 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[6].Count;
        //    int auxplotcount14 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[7].Count;
        //    int auxplotcount15 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[7].Count;
        //    int auxplotcount16 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[8].Count;
        //    int auxplotcount17 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[8].Count;
        //    int auxplotcount18 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[9].Count;
        //    int auxplotcount19 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[9].Count;
        //    int auxplotcount20 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[10].Count;
        //    int auxplotcount21 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[10].Count;
        //    int auxplotcount22 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[0].ly[11].Count;
        //    int auxplotcount23 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[11].Count;

        //    int auxplotcount24 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[2].ly[0].Count; // Aux Zmag 
        //    int auxplotcount25 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[3].ly[0].Count;

        //    int auxappendcount0 = 0, auxappendcount1 = 0, auxappendcount2 = 0, auxappendcount3 = 0, auxappendcount4 = 0, auxappendcount5 = 0,
        //        auxappendcount6 = 0, auxappendcount7 = 0, auxappendcount8 = 0, auxappendcount9 = 0,auxappendcount10 = 0, auxappendcount11 = 0, 
        //        auxappendcount12 = 0, auxappendcount13 = 0, auxappendcount14 = 0, auxappendcount15 = 0,auxappendcount16 = 0, auxappendcount17 = 0, 
        //        auxappendcount18 = 0, auxappendcount19 = 0,auxappendcount20 = 0, auxappendcount21 = 0, auxappendcount22 = 0, auxappendcount23 = 0,
        //        auxappendcount24 = 0, auxappendcount25 = 0, auxappendcount26 = 0, auxappendcount27 = 0, auxappendcount28 = 0, auxappendcount29 = 0,
        //        auxappendcount30 = 0, auxappendcount31 = 0, auxappendcount32 = 0, auxappendcount33 = 0, auxappendcount34 = 0, auxappendcount35 = 0,
        //        auxappendcount36 = 0, auxappendcount37 = 0, auxappendcount38 = 0, auxappendcount39 = 0, auxappendcount40 = 0, auxappendcount41 = 0, 
        //        auxappendcount42 = 0, auxappendcount43 = 0, auxappendcount44 = 0, auxappendcount45 = 0, auxappendcount46 = 0, auxappendcount47 = 0, 
        //        auxappendcount48 = 0, auxappendcount49 = 0, auxappendcount50 = 0, auxappendcount51 = 0, auxappendcount52 = 0, auxappendcount53 = 0, 
        //        auxappendcount54 = 0, auxappendcount55 = 0, auxappendcount56 = 0, auxappendcount57 = 0, auxappendcount58 = 0, auxappendcount59 = 0, 
        //        auxappendcount60 = 0, auxappendcount61 = 0, auxappendcount62 = 0, auxappendcount63 = 0, auxappendcount64 = 0, auxappendcount65 = 0, 
        //        auxappendcount66 = 0, auxappendcount67 = 0, auxappendcount68 = 0, auxappendcount69 = 0,
        //        auxappendcount70 = 0, auxappendcount71 = 0;


        //    if (plotcount0 == 0 && plotcount1 == 0 && auxplotcount24 == 0 && auxplotcount25 == 0)
        //        return;

        //    if (plotcount0 == LastPlotPoint && plotcount1 == LastPlotPoint1)
        //        return;

        //    int st0 = 0, st1 = 0;
        //    int auxst0 = 0, auxst1 = 0, auxst2 = 0, auxst3 = 0, auxst4 = 0, auxst5 = 0, auxst6 = 0, auxst7 = 0, auxst8 = 0, auxst9 = 0,
        //        auxst10 = 0, auxst11 = 0, auxst12 = 0, auxst13 = 0, auxst14 = 0, auxst15 = 0, auxst16 = 0, auxst17 = 0, auxst18 = 0, auxst19 = 0,
        //        auxst20 = 0, auxst21 = 0, auxst22 = 0, auxst23 = 0, auxst24 = 0, auxst25 = 0, auxst26 = 0, auxst27 = 0, auxst28 = 0, auxst29 = 0,
        //        auxst30 = 0, auxst31 = 0, auxst32 = 0, auxst33 = 0, auxst34 = 0, auxst35 = 0, auxst36 = 0, auxst37 = 0, auxst38 = 0, auxst39 = 0,
        //        auxst40 = 0, auxst41 = 0, auxst42 = 0, auxst43 = 0, auxst44 = 0, auxst45 = 0, auxst46 = 0, auxst47 = 0, auxst48 = 0, auxst49 = 0,
        //        auxst50 = 0, auxst51 = 0, auxst52 = 0, auxst53 = 0, auxst54 = 0, auxst55 = 0, auxst56 = 0, auxst57 = 0, auxst58 = 0, auxst59 = 0,
        //        auxst60 = 0, auxst61 = 0, auxst62 = 0, auxst63 = 0, auxst64 = 0, auxst65 = 0, auxst66 = 0, auxst67 = 0, auxst68 = 0, auxst69 = 0,
        //        auxst70 = 0, auxst71 = 0;

        //    if (plotcount0 < LastPlotPoint || plotcount1 < LastPlotPoint1)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st0 = LastPlotPoint;
        //        appendcount0 = plotcount0 - LastPlotPoint;
        //        LastPlotPoint = plotcount0;
        //        st1 = LastPlotPoint1;
        //        appendcount1 = plotcount1 - LastPlotPoint1;
        //        LastPlotPoint1 = plotcount1;

        //        auxst0 = auxLastPlotPoint; auxappendcount0 = auxplotcount0 - auxLastPlotPoint;
        //        if (auxappendcount0 < 0) auxappendcount0 = 0; auxLastPlotPoint = auxplotcount0;
        //        auxst1 = auxLastPlotPoint1;auxappendcount1 = auxplotcount1 - auxLastPlotPoint1;
        //        if (auxappendcount1 < 0) auxappendcount1 = 0; auxLastPlotPoint1 = auxplotcount1;
        //        auxst2 = auxLastPlotPoint2;auxappendcount2 = auxplotcount2 - auxLastPlotPoint2;
        //        if (auxappendcount2 < 0) auxappendcount2 = 0;auxLastPlotPoint2 = auxplotcount2;
        //        auxst3 = auxLastPlotPoint3;auxappendcount3 = auxplotcount3 - auxLastPlotPoint3;
        //        if (auxappendcount3 < 0) auxappendcount3 = 0;auxLastPlotPoint3 = auxplotcount3;
        //        auxst4 = auxLastPlotPoint4;auxappendcount4 = auxplotcount4 - auxLastPlotPoint4;
        //        if (auxappendcount4 < 0) auxappendcount4 = 0;auxLastPlotPoint4 = auxplotcount4;
        //        auxst5 = auxLastPlotPoint5;auxappendcount5 = auxplotcount5 - auxLastPlotPoint5;
        //        if (auxappendcount5 < 0) auxappendcount5 = 0;auxLastPlotPoint5 = auxplotcount5;
        //        auxst6 = auxLastPlotPoint6; auxappendcount6 = auxplotcount6 - auxLastPlotPoint6;
        //        if (auxappendcount6 < 0) auxappendcount6 = 0;auxLastPlotPoint6 = auxplotcount6;
        //        auxst7 = auxLastPlotPoint7;auxappendcount7 = auxplotcount7 - auxLastPlotPoint7;
        //        if (auxappendcount7 < 0) auxappendcount7 = 0;auxLastPlotPoint7 = auxplotcount7;
        //        auxst8 = auxLastPlotPoint8; auxappendcount8 = auxplotcount8 - auxLastPlotPoint8;
        //        if (auxappendcount8 < 0) auxappendcount8 = 0;auxLastPlotPoint8 = auxplotcount8;
        //        auxst9 = auxLastPlotPoint9;auxappendcount9 = auxplotcount9 - auxLastPlotPoint9;
        //        if (auxappendcount9 < 0) auxappendcount9 = 0;auxLastPlotPoint9 = auxplotcount9;
        //        auxst10 = auxLastPlotPoint10;auxappendcount10 = auxplotcount10 - auxLastPlotPoint10;
        //        if (auxappendcount10 < 0) auxappendcount10 = 0;auxLastPlotPoint10 = auxplotcount10;
        //        auxst11 = auxLastPlotPoint11;auxappendcount11 = auxplotcount11 - auxLastPlotPoint11;
        //        if (auxappendcount11 < 0) auxappendcount11 = 0;auxLastPlotPoint11 = auxplotcount11;
        //        auxst12 = auxLastPlotPoint12;auxappendcount12 = auxplotcount12 - auxLastPlotPoint12;
        //        if (auxappendcount12 < 0) auxappendcount12 = 0;auxLastPlotPoint12 = auxplotcount12;
        //        auxst13 = auxLastPlotPoint13;auxappendcount13 = auxplotcount13 - auxLastPlotPoint13;
        //        if (auxappendcount13 < 0) auxappendcount13 = 0;auxLastPlotPoint13 = auxplotcount13;
        //        auxst14 = auxLastPlotPoint14;auxappendcount14 = auxplotcount14 - auxLastPlotPoint14;
        //        if (auxappendcount14 < 0) auxappendcount14 = 0;auxLastPlotPoint14 = auxplotcount14;
        //        auxst15 = auxLastPlotPoint15;auxappendcount15 = auxplotcount15 - auxLastPlotPoint15;
        //        if (auxappendcount15 < 0) auxappendcount15 = 0;auxLastPlotPoint15 = auxplotcount15;
        //        auxst16 = auxLastPlotPoint16;auxappendcount16 = auxplotcount16 - auxLastPlotPoint16;
        //        if (auxappendcount16 < 0) auxappendcount16 = 0;auxLastPlotPoint16 = auxplotcount16;
        //        auxst17 = auxLastPlotPoint17;auxappendcount17 = auxplotcount17 - auxLastPlotPoint17;
        //        if (auxappendcount17 < 0) auxappendcount17 = 0;auxLastPlotPoint17 = auxplotcount17;
        //        auxst18 = auxLastPlotPoint18;auxappendcount18 = auxplotcount18 - auxLastPlotPoint18;
        //        if (auxappendcount18 < 0) auxappendcount18 = 0;auxLastPlotPoint18 = auxplotcount18;
        //        auxst19 = auxLastPlotPoint19;auxappendcount19 = auxplotcount19 - auxLastPlotPoint19;
        //        if (auxappendcount19 < 0) auxappendcount19 = 0;auxLastPlotPoint19 = auxplotcount19;
        //        auxst20 = auxLastPlotPoint20;auxappendcount20 = auxplotcount20 - auxLastPlotPoint20;
        //        if (auxappendcount20 < 0) auxappendcount20 = 0;auxLastPlotPoint20 = auxplotcount20;
        //        auxst21 = auxLastPlotPoint21;auxappendcount21 = auxplotcount21 - auxLastPlotPoint21;
        //        if (auxappendcount21 < 0) auxappendcount21 = 0;auxLastPlotPoint21 = auxplotcount21;
        //        auxst22 = auxLastPlotPoint22;auxappendcount22 = auxplotcount22 - auxLastPlotPoint22;
        //        if (auxappendcount22 < 0) auxappendcount22 = 0;auxLastPlotPoint22 = auxplotcount22;
        //        auxst23 = auxLastPlotPoint23;auxappendcount23 = auxplotcount23 - auxLastPlotPoint23;
        //        if (auxappendcount23 < 0) auxappendcount23 = 0;auxLastPlotPoint23 = auxplotcount23;

        //        auxst23 = auxLastPlotPoint24;
        //        auxappendcount24 = auxst24 - auxLastPlotPoint24;
        //        auxLastPlotPoint24 = auxst24;

        //        auxst23 = auxLastPlotPoint25;
        //        auxappendcount25 = auxst25 - auxLastPlotPoint25;
        //        auxLastPlotPoint25 = auxst25;
        //    }

        //    int nPlot1 = 1;
        //    int nPlot2 = 2;

        //    double[] tx = null;double[] ty = null;
        //    double[] ptx0 = new double[appendcount0];double[] pty0 = new double[appendcount0];
        //    double[] ptx1 = new double[appendcount1];double[] pty1 = new double[appendcount1];

        //    double[] auxtx = null; double[] auxty = null;
        //    double[] auxptx0 = new double[auxappendcount0]; double[] auxpty0 = new double[auxappendcount0];
        //    double[] auxptx1 = new double[auxappendcount1]; double[] auxpty1 = new double[auxappendcount1];
        //    double[] auxtx1 = null; double[] auxty1 = null;
        //    double[] auxptx2 = new double[auxappendcount2]; double[] auxpty2 = new double[auxappendcount2];
        //    double[] auxptx3 = new double[auxappendcount3]; double[] auxpty3 = new double[auxappendcount3];
        //    double[] auxtx2 = null; double[] auxty2 = null;
        //    double[] auxptx4 = new double[auxappendcount4]; double[] auxpty4 = new double[auxappendcount4];
        //    double[] auxptx5 = new double[auxappendcount5]; double[] auxpty5 = new double[auxappendcount5];
        //    double[] auxtx3 = null; double[] auxty3 = null;
        //    double[] auxptx6 = new double[auxappendcount6]; double[] auxpty6 = new double[auxappendcount6];
        //    double[] auxptx7 = new double[auxappendcount7]; double[] auxpty7 = new double[auxappendcount7];
        //    double[] auxtx4 = null; double[] auxty4 = null;
        //    double[] auxptx8 = new double[auxappendcount8]; double[] auxpty8 = new double[auxappendcount8];
        //    double[] auxptx9 = new double[auxappendcount9]; double[] auxpty9 = new double[auxappendcount9];
        //    double[] auxtx5 = null; double[] auxty5 = null;
        //    double[] auxptx10 = new double[auxappendcount10]; double[] auxpty10 = new double[auxappendcount10];
        //    double[] auxptx11 = new double[auxappendcount11]; double[] auxpty11 = new double[auxappendcount11];
        //    double[] auxtx6 = null; double[] auxty6 = null;
        //    double[] auxptx12 = new double[auxappendcount12]; double[] auxpty12 = new double[auxappendcount12];
        //    double[] auxptx13 = new double[auxappendcount13]; double[] auxpty13 = new double[auxappendcount13];
        //    double[] auxtx7 = null; double[] auxty7 = null;
        //    double[] auxptx14 = new double[auxappendcount14]; double[] auxpty14 = new double[auxappendcount14];
        //    double[] auxptx15 = new double[auxappendcount15]; double[] auxpty15 = new double[auxappendcount15];
        //    double[] auxtx8 = null; double[] auxty8 = null;
        //    double[] auxptx16 = new double[auxappendcount16]; double[] auxpty16 = new double[auxappendcount16];
        //    double[] auxptx17 = new double[auxappendcount17]; double[] auxpty17 = new double[auxappendcount17];
        //    double[] auxtx9 = null; double[] auxty9 = null;
        //    double[] auxptx18 = new double[auxappendcount18]; double[] auxpty18 = new double[auxappendcount18];
        //    double[] auxptx19 = new double[auxappendcount19]; double[] auxpty19 = new double[auxappendcount19];
        //    double[] auxtx10 = null; double[] auxty10 = null;
        //    double[] auxptx20 = new double[auxappendcount20]; double[] auxpty20 = new double[auxappendcount20];
        //    double[] auxptx21 = new double[auxappendcount21]; double[] auxpty21 = new double[auxappendcount21];
        //    double[] auxtx11 = null; double[] auxty11 = null;
        //    double[] auxptx22 = new double[auxappendcount22]; double[] auxpty22 = new double[auxappendcount22];
        //    double[] auxptx23 = new double[auxappendcount23]; double[] auxpty23 = new double[auxappendcount23];

        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //    {
        //        if (appendcount0 > 0)
        //        {
        //            tx = rtgrp.plot[0].lx[0].ToArray();
        //            ty = rtgrp.plot[0].ly[0].ToArray();
        //            Array.Copy(tx, st0, ptx0, 0, appendcount0);
        //            Array.Copy(ty, st0, pty0, 0, appendcount0);
        //            grp1.Plots[0 + nPlot1].PlotXYAppend(ptx0, pty0);
        //        }
        //        if (appendcount1 > 0)
        //        {
        //            tx = rtgrp.plot[0].lx[1].ToArray();
        //            ty = rtgrp.plot[0].ly[1].ToArray();
        //            Array.Copy(tx, st1, ptx1, 0, appendcount1);
        //            Array.Copy(ty, st1, pty1, 0, appendcount1);
        //            grp1.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
        //        }

        //        if (auxappendcount0 > 0)
        //        {
        //            auxtx = rtauxgrp.plot[0].lx[0].ToArray(); auxty = rtauxgrp.plot[0].ly[0].ToArray();
        //            Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0); Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //            grp1.Plots[7].PlotXYAppend(auxptx0, auxpty0);
        //        }
        //        if (auxappendcount1 > 0)
        //        {
        //            auxtx = rtauxgrp.plot[1].lx[0].ToArray(); auxty = rtauxgrp.plot[1].ly[0].ToArray();
        //            Array.Copy(auxtx, auxst1, auxptx1, 0, auxappendcount1); Array.Copy(auxty, auxst1, auxpty1, 0, auxappendcount1);
        //            grp1.Plots[8].PlotXYAppend(auxptx1, auxpty1);
        //        }
        //        if (auxappendcount2 > 0)
        //        {
        //            auxtx1 = rtauxgrp.plot[0].lx[1].ToArray(); auxty1 = rtauxgrp.plot[0].ly[1].ToArray();
        //            Array.Copy(auxtx1, auxst2, auxptx2, 0, auxappendcount2); Array.Copy(auxty1, auxst2, auxpty2, 0, auxappendcount2);
        //            grp1.Plots[9].PlotXYAppend(auxptx2, auxpty2);
        //        }
        //        if (auxappendcount3 > 0)
        //        {
        //            auxtx1 = rtauxgrp.plot[1].lx[1].ToArray(); auxty1 = rtauxgrp.plot[1].ly[1].ToArray();
        //            Array.Copy(auxtx1, auxst3, auxptx3, 0, auxappendcount3); Array.Copy(auxty1, auxst3, auxpty3, 0, auxappendcount3);
        //            grp1.Plots[10].PlotXYAppend(auxptx3, auxpty3);
        //        }
        //        if (auxappendcount4 > 0)
        //        {
        //            auxtx2 = rtauxgrp.plot[0].lx[2].ToArray(); auxty2 = rtauxgrp.plot[0].ly[2].ToArray();
        //            Array.Copy(auxtx2, auxst4, auxptx4, 0, auxappendcount4); Array.Copy(auxty2, auxst4, auxpty4, 0, auxappendcount4);
        //            grp1.Plots[11].PlotXYAppend(auxptx4, auxpty4);
        //        }
        //        if (auxappendcount5 > 0)
        //        {
        //            auxtx2 = rtauxgrp.plot[1].lx[2].ToArray(); auxty2 = rtauxgrp.plot[1].ly[2].ToArray();
        //            Array.Copy(auxtx2, auxst5, auxptx5, 0, auxappendcount5); Array.Copy(auxty2, auxst5, auxpty5, 0, auxappendcount5);
        //            grp1.Plots[12].PlotXYAppend(auxptx5, auxpty5);
        //        }
        //        if (auxappendcount6 > 0)
        //        {
        //            auxtx3 = rtauxgrp.plot[0].lx[3].ToArray(); auxty3 = rtauxgrp.plot[0].ly[3].ToArray();
        //            Array.Copy(auxtx3, auxst6, auxptx6, 0, auxappendcount6); Array.Copy(auxty3, auxst6, auxpty6, 0, auxappendcount6);
        //            grp1.Plots[13].PlotXYAppend(auxptx6, auxpty6);
        //        }
        //        if (auxappendcount7 > 0)
        //        {
        //            auxtx3 = rtauxgrp.plot[1].lx[3].ToArray(); auxty3 = rtauxgrp.plot[1].ly[3].ToArray();
        //            Array.Copy(auxtx3, auxst7, auxptx7, 0, auxappendcount7); Array.Copy(auxty3, auxst7, auxpty7, 0, auxappendcount7);
        //            grp1.Plots[14].PlotXYAppend(auxptx7, auxpty7);
        //        }
        //        if (auxappendcount8 > 0)
        //        {
        //            auxtx4 = rtauxgrp.plot[0].lx[4].ToArray(); auxty4 = rtauxgrp.plot[0].ly[4].ToArray();
        //            Array.Copy(auxtx4, auxst8, auxptx8, 0, auxappendcount8); Array.Copy(auxty4, auxst8, auxpty8, 0, auxappendcount8);
        //            grp1.Plots[15].PlotXYAppend(auxptx8, auxpty8);
        //        }
        //        if (auxappendcount9 > 0)
        //        {
        //            auxtx4 = rtauxgrp.plot[1].lx[4].ToArray(); auxty4 = rtauxgrp.plot[1].ly[4].ToArray();
        //            Array.Copy(auxtx4, auxst9, auxptx9, 0, auxappendcount9); Array.Copy(auxty4, auxst9, auxpty9, 0, auxappendcount9);
        //            grp1.Plots[16].PlotXYAppend(auxptx9, auxpty9);
        //        }
        //        if (auxappendcount10 > 0)
        //        {
        //            auxtx5 = rtauxgrp.plot[0].lx[5].ToArray(); auxty5 = rtauxgrp.plot[0].ly[5].ToArray();
        //            Array.Copy(auxtx5, auxst10, auxptx10, 0, auxappendcount10); Array.Copy(auxty5, auxst10, auxpty10, 0, auxappendcount10);
        //            grp1.Plots[17].PlotXYAppend(auxptx10, auxpty10);
        //        }
        //        if (auxappendcount11 > 0)
        //        {
        //            auxtx5 = rtauxgrp.plot[1].lx[5].ToArray(); auxty5 = rtauxgrp.plot[1].ly[5].ToArray();
        //            Array.Copy(auxtx5, auxst11, auxptx11, 0, auxappendcount11); Array.Copy(auxty5, auxst11, auxpty11, 0, auxappendcount11);
        //            grp1.Plots[18].PlotXYAppend(auxptx11, auxpty11);
        //        }
        //        if (auxappendcount12 > 0)
        //        {
        //            auxtx6 = rtauxgrp.plot[0].lx[6].ToArray(); auxty6 = rtauxgrp.plot[0].ly[6].ToArray();
        //            Array.Copy(auxtx6, auxst12, auxptx12, 0, auxappendcount12); Array.Copy(auxty6, auxst12, auxpty12, 0, auxappendcount12);
        //            grp1.Plots[19].PlotXYAppend(auxptx12, auxpty12);
        //        }
        //        if (auxappendcount13 > 0)
        //        {
        //            auxtx6 = rtauxgrp.plot[1].lx[6].ToArray(); auxty6 = rtauxgrp.plot[1].ly[6].ToArray();
        //            Array.Copy(auxtx6, auxst13, auxptx13, 0, auxappendcount13); Array.Copy(auxty6, auxst13, auxpty13, 0, auxappendcount13);
        //            grp1.Plots[20].PlotXYAppend(auxptx13, auxpty13);
        //        }
        //        if (auxappendcount14 > 0)
        //        {
        //            auxtx7 = rtauxgrp.plot[0].lx[7].ToArray(); auxty7 = rtauxgrp.plot[0].ly[7].ToArray();
        //            Array.Copy(auxtx7, auxst14, auxptx14, 0, auxappendcount14); Array.Copy(auxty7, auxst14, auxpty14, 0, auxappendcount14);
        //            grp1.Plots[21].PlotXYAppend(auxptx14, auxpty14);
        //        }
        //        if (auxappendcount15 > 0)
        //        {
        //            auxtx7 = rtauxgrp.plot[1].lx[7].ToArray(); auxty7 = rtauxgrp.plot[1].ly[7].ToArray();
        //            Array.Copy(auxtx7, auxst15, auxptx15, 0, auxappendcount15); Array.Copy(auxty7, auxst15, auxpty15, 0, auxappendcount15);
        //            grp1.Plots[22].PlotXYAppend(auxptx15, auxpty15);
        //        }
        //        if (auxappendcount16 > 0)
        //        {
        //            auxtx8 = rtauxgrp.plot[0].lx[8].ToArray(); auxty8 = rtauxgrp.plot[0].ly[8].ToArray();
        //            Array.Copy(auxtx8, auxst16, auxptx16, 0, auxappendcount16); Array.Copy(auxty8, auxst16, auxpty16, 0, auxappendcount16);
        //            grp1.Plots[23].PlotXYAppend(auxptx16, auxpty16);
        //        }
        //        if (auxappendcount17 > 0)
        //        {
        //            auxtx8 = rtauxgrp.plot[1].lx[8].ToArray(); auxty8 = rtauxgrp.plot[1].ly[8].ToArray();
        //            Array.Copy(auxtx8, auxst17, auxptx17, 0, auxappendcount17); Array.Copy(auxty8, auxst17, auxpty17, 0, auxappendcount17);
        //            grp1.Plots[24].PlotXYAppend(auxptx17, auxpty17);
        //        }
        //        if (auxappendcount18 > 0)
        //        {
        //            auxtx9 = rtauxgrp.plot[0].lx[9].ToArray(); auxty9 = rtauxgrp.plot[0].ly[9].ToArray();
        //            Array.Copy(auxtx9, auxst18, auxptx18, 0, auxappendcount18); Array.Copy(auxty9, auxst18, auxpty18, 0, auxappendcount18);
        //            grp1.Plots[25].PlotXYAppend(auxptx18, auxpty18);
        //        }
        //        if (auxappendcount19 > 0)
        //        {
        //            auxtx9 = rtauxgrp.plot[1].lx[9].ToArray(); auxty9 = rtauxgrp.plot[1].ly[9].ToArray();
        //            Array.Copy(auxtx9, auxst19, auxptx19, 0, auxappendcount19); Array.Copy(auxty9, auxst19, auxpty19, 0, auxappendcount19);
        //            grp1.Plots[26].PlotXYAppend(auxptx19, auxpty19);
        //        }
        //        if (auxappendcount20 > 0)
        //        {
        //            auxtx10 = rtauxgrp.plot[0].lx[10].ToArray(); auxty10 = rtauxgrp.plot[0].ly[10].ToArray();
        //            Array.Copy(auxtx10, auxst20, auxptx20, 0, auxappendcount20); Array.Copy(auxty10, auxst20, auxpty20, 0, auxappendcount20);
        //            grp1.Plots[27].PlotXYAppend(auxptx20, auxpty20);
        //        }
        //        if (auxappendcount21 > 0)
        //        {
        //            auxtx10 = rtauxgrp.plot[1].lx[10].ToArray(); auxty10 = rtauxgrp.plot[1].ly[10].ToArray();
        //            Array.Copy(auxtx10, auxst21, auxptx21, 0, auxappendcount21); Array.Copy(auxty10, auxst21, auxpty21, 0, auxappendcount21);
        //            grp1.Plots[28].PlotXYAppend(auxptx21, auxpty21);
        //        }
        //        if (auxappendcount22 > 0)
        //        {
        //            auxtx11 = rtauxgrp.plot[0].lx[11].ToArray(); auxty11 = rtauxgrp.plot[0].ly[11].ToArray();
        //            Array.Copy(auxtx11, auxst22, auxptx22, 0, auxappendcount22); Array.Copy(auxty11, auxst22, auxpty22, 0, auxappendcount22);
        //            grp1.Plots[29].PlotXYAppend(auxptx22, auxpty22);
        //        }
        //        if (auxappendcount23 > 0)
        //        {
        //            auxtx11 = rtauxgrp.plot[1].lx[11].ToArray(); auxty11 = rtauxgrp.plot[1].ly[11].ToArray();
        //            Array.Copy(auxtx11, auxst23, auxptx23, 0, auxappendcount23); Array.Copy(auxty11, auxst23, auxpty23, 0, auxappendcount23);
        //            grp1.Plots[30].PlotXYAppend(auxptx23, auxpty23);
        //        }
        //        // ===== MAIN 축 =====
        //        maxval = rtgrp.plot[0].Maxval[0];
        //        minval = rtgrp.plot[0].Minval[0];
        //        if (maxval < rtgrp.plot[0].Maxval[1]) maxval = rtgrp.plot[0].Maxval[1];
        //        if (minval > rtgrp.plot[0].Minval[1]) minval = rtgrp.plot[0].Minval[1];

        //        cmpval = Math.Abs(maxval);
        //        if (cmpval < Math.Abs(minval)) cmpval = Math.Abs(minval);
        //        maxval = maxval + (cmpval * GrpSpaceRate);
        //        minval = minval - (cmpval * GrpSpaceRate);
        //        if (minval == maxval)
        //        {
        //            minval -= minval * 0.1;
        //            maxval += maxval * 0.1;
        //        }
        //        else if (maxval == 0.0)
        //        {
        //            minval = -1.0;
        //            maxval = +1.0;
        //        }
        //        grp1.YAxes[0].Range = new Range(minval, maxval);

        //        // ===== MAIN X축 =====
        //        maxval = rtgrp.plot[0].Maxval[2];
        //        minval = rtgrp.plot[0].Minval[2];
        //        cmpval = Math.Abs(maxval);
        //        if (cmpval < Math.Abs(minval)) cmpval = Math.Abs(minval);
        //        maxval = maxval + (cmpval * GrpSpaceRate);
        //        minval = minval - (cmpval * GrpSpaceRate);
        //        if (minval == maxval)
        //        {
        //            minval -= minval * 0.1;
        //            maxval += maxval * 0.1;
        //        }
        //        else if (maxval == 0.0)
        //        {
        //            minval = -1.0;
        //            maxval = +1.0;
        //        }
        //        grp1.XAxes[0].Range = new Range(minval, maxval);


        //        // ===== AUX1~AUX12 Y =====
        //        for (int ch = 0; ch < 12; ch++)
        //        {
        //            double auxMax = rtauxgrp.plot[0].Maxval[ch];
        //            double auxMin = rtauxgrp.plot[0].Minval[ch];
        //            double auxMax2 = rtauxgrp.plot[1].Maxval[ch];
        //            double auxMin2 = rtauxgrp.plot[1].Minval[ch];

        //            if (auxMax < auxMax2) auxMax = auxMax2;
        //            if (auxMin > auxMin2) auxMin = auxMin2;

        //            cmpval = Math.Abs(auxMax);
        //            if (cmpval < Math.Abs(auxMin)) cmpval = Math.Abs(auxMin);

        //            double auxYmax = auxMax + (cmpval * GrpSpaceRate);
        //            double auxYmin = auxMin - (cmpval * GrpSpaceRate);

        //            if (auxYmin == auxYmax)
        //            {
        //                auxYmin -= auxYmin * 0.1;
        //                auxYmax += auxYmax * 0.1;
        //            }
        //            else if (auxYmax == 0.0)
        //            {
        //                auxYmin = -1.0;
        //                auxYmax = +1.0;
        //            }

        //            grp1.YAxes[0].Range = new Range(
        //                Math.Min(grp1.YAxes[0].Range.Minimum, auxYmin),
        //                Math.Max(grp1.YAxes[0].Range.Maximum, auxYmax)
        //            );
        //        }
        //    }

        //    if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        if (appendcount0 > 0)
        //        {
        //            tx = rtgrp.plot[2].lx[0].ToArray();
        //            ty = rtgrp.plot[2].ly[0].ToArray();
        //            Array.Copy(tx, st0, ptx0, 0, appendcount0);
        //            Array.Copy(ty, st0, pty0, 0, appendcount0);
        //            grp2.Plots[0 + nPlot2].PlotXYAppend(ptx0, pty0);
        //            //grp2.Plots[0+nPlot2].PlotXY(rtgrp.plot[2].lx[0].ToArray(), rtgrp.plot[2].ly[0].ToArray());
        //        }
        //        if (appendcount1 > 0)
        //        {
        //            tx = rtgrp.plot[2].lx[1].ToArray();
        //            ty = rtgrp.plot[2].ly[1].ToArray();
        //            Array.Copy(tx, st1, ptx1, 0, appendcount1);
        //            Array.Copy(ty, st1, pty1, 0, appendcount1);
        //            grp2.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
        //            //grp2.Plots[0].PlotXY(rtgrp.plot[2].lx[1].ToArray(), rtgrp.plot[2].ly[1].ToArray()); // 0206 6
        //        }

        //        //    if (appendcount0 > 0)
        //        //    {
        //        //        tx = rtgrp.plot[3].lx[0].ToArray();
        //        //        ty = rtgrp.plot[3].ly[0].ToArray();
        //        //        Array.Copy(tx, st0, ptx0, 0, appendcount0);
        //        //        Array.Copy(ty, st0, pty0, 0, appendcount0);
        //        //        grp2.Plots[1 + nPlot2].PlotXYAppend(ptx0, pty0);
        //        //        //grp2.Plots[1+nPlot2].PlotXY(rtgrp.plot[3].lx[0].ToArray(), rtgrp.plot[3].ly[0].ToArray());
        //        //    }
        //        //    if (appendcount1 > 0)
        //        //    {
        //        //        tx = rtgrp.plot[3].lx[1].ToArray();
        //        //        ty = rtgrp.plot[3].ly[1].ToArray();
        //        //        Array.Copy(tx, st1, ptx1, 0, appendcount1);
        //        //        Array.Copy(ty, st1, pty1, 0, appendcount1);
        //        //        grp2.Plots[1].PlotXYAppend(ptx1, pty1);  // 0206 7
        //        //        //grp2.Plots[1].PlotXY(rtgrp.plot[3].lx[1].ToArray(), rtgrp.plot[3].ly[1].ToArray()); //0206 7
        //        //    }
        //        //}
        //    }
        //}


        //private void RefreshGraphQIS()
        //{
        //    grp1.Plots[8].LineColor = Color.DarkGray;
        //    grp1.Plots[8].PointColor = Color.DarkGray;
        //    grp1.Plots[8].LineStyle = LineStyle.Dot;
        //    grp1.Plots[10].LineColor = Color.DarkGray;
        //    grp1.Plots[10].PointColor = Color.DarkGray;
        //    grp1.Plots[10].LineStyle = LineStyle.Dot;
        //    grp1.Plots[12].LineColor = Color.DarkGray;
        //    grp1.Plots[12].PointColor = Color.DarkGray;
        //    grp1.Plots[12].LineStyle = LineStyle.Dot;
        //    grp1.Plots[14].LineColor = Color.DarkGray;
        //    grp1.Plots[14].PointColor = Color.DarkGray;
        //    grp1.Plots[14].LineStyle = LineStyle.Dot;
        //    grp1.Plots[16].LineColor = Color.DarkGray;
        //    grp1.Plots[16].PointColor = Color.DarkGray;
        //    grp1.Plots[16].LineStyle = LineStyle.Dot;
        //    grp1.Plots[18].LineColor = Color.DarkGray;
        //    grp1.Plots[18].PointColor = Color.DarkGray;
        //    grp1.Plots[18].LineStyle = LineStyle.Dot;
        //    grp1.Plots[20].LineColor = Color.DarkGray;
        //    grp1.Plots[20].PointColor = Color.DarkGray;
        //    grp1.Plots[20].LineStyle = LineStyle.Dot;
        //    grp1.Plots[22].LineColor = Color.DarkGray;
        //    grp1.Plots[22].PointColor = Color.DarkGray;
        //    grp1.Plots[22].LineStyle = LineStyle.Dot;
        //    grp1.Plots[24].LineColor = Color.DarkGray;
        //    grp1.Plots[24].PointColor = Color.DarkGray;
        //    grp1.Plots[24].LineStyle = LineStyle.Dot;
        //    grp1.Plots[26].LineColor = Color.DarkGray;
        //    grp1.Plots[26].PointColor = Color.DarkGray;
        //    grp1.Plots[26].LineStyle = LineStyle.Dot;
        //    grp1.Plots[28].LineColor = Color.DarkGray;
        //    grp1.Plots[28].PointColor = Color.DarkGray;
        //    grp1.Plots[28].LineStyle = LineStyle.Dot;
        //    grp1.Plots[30].LineColor = Color.DarkGray;
        //    grp1.Plots[30].PointColor = Color.DarkGray;
        //    grp1.Plots[30].LineStyle = LineStyle.Dot;

        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
        //    //double maxval;
        //    //double minval;
        //    //double cmpval;

        //    int plotcount0 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].Count;
        //    int plotcount1 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[1].Count;
        //    int appendcount0 = 0;
        //    int appendcount1 = 0;

        //    int auxplotcount0 = rtauxgrp.plot[2].ly[0].Count;
        //    int auxplotcount1 = rtauxgrp.plot[4].ly[0].Count;
        //    //int auxplotcount1 = rtauxgrp.plot[2].ly[0].Count;
        //    int auxappendcount = 0;
        //    int auxappendcount0 = 0;
        //    int auxappendcount1 = 0;

        //    if (plotcount0 == 0 && plotcount1 == 0) return;
        //    if (plotcount0 == LastPlotPoint && plotcount1 == LastPlotPoint1) return;
        //    //if (auxplotcount0 == 0 && auxplotcount1 == 0) return;
        //    //if (auxplotcount0 == auxLastPlotPoint0 && auxplotcount1 == auxLastPlotPoint0) return;
        //    int st0 = 0;
        //    int st1 = 0;
        //    int auxst0 = 0;
        //    int auxst1 = 0;

        //    //if (plotcount0 < LastPlotPoint)
        //    //{
        //    //    InitGraphType();
        //    //}
        //    //else
        //    //{
        //    //    st0 = LastPlotPoint;
        //    //    appendcount0 = plotcount0 - LastPlotPoint;
        //    //    LastPlotPoint = plotcount0;

        //    //    auxst0 = auxLastPlotPoint0;
        //    //    auxappendcount0 = auxplotcount0 - auxLastPlotPoint0;
        //    //    auxLastPlotPoint0 = auxplotcount0;

        //    //    //auxst1 = auxLastPlotPoint1;
        //    //    //auxappendcount1 = auxplotcount1 - auxLastPlotPoint1;
        //    //    //auxLastPlotPoint1 = auxplotcount1;
        //    //}

        //    //if (plotcount1 < LastPlotPoint1)
        //    //{
        //    //    LastPlotPoint1 = 0;
        //    //    st1 = 0;
        //    //    auxLastPlotPoint1 = 0;
        //    //    auxst1 = 0;

        //    //    grp1.Plots[0].ClearData(); // 0206 6
        //    //    grp2.Plots[0].ClearData(); // 0206 6
        //    //    grp2.Plots[1].ClearData(); // 0206 7
        //    //}
        //    //else
        //    //{
        //    //    st1 = LastPlotPoint1;
        //    //    appendcount1 = plotcount1 - LastPlotPoint1;
        //    //    LastPlotPoint1 = plotcount1;

        //    //    auxst1 = auxLastPlotPoint1;
        //    //    auxappendcount1 = auxplotcount1 - auxLastPlotPoint1;
        //    //    auxLastPlotPoint1 = auxplotcount1;
        //    //}
        //    if (plotcount0 < LastPlotPoint)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st0 = LastPlotPoint;
        //        appendcount0 = plotcount0 - LastPlotPoint;
        //        LastPlotPoint = plotcount0;
        //    }

        //    if (plotcount1 < LastPlotPoint1)
        //    {
        //        LastPlotPoint1 = 0;
        //        st1 = 0;

        //        grp1.Plots[0].ClearData();
        //        grp2.Plots[0].ClearData();
        //        grp2.Plots[1].ClearData();
        //    }
        //    else
        //    {
        //        st1 = LastPlotPoint1;
        //        appendcount1 = plotcount1 - LastPlotPoint1;
        //        LastPlotPoint1 = plotcount1;
        //    }

        //    // ✅ AUX 인덱스는 메인과 완전히 분리하여 독립 관리
        //    if (auxplotcount0 < auxLastPlotPoint0)
        //    {
        //        auxLastPlotPoint0 = 0;
        //        grp2.Plots[8].ClearData(); // Aux1 ch0
        //    }
        //    else
        //    {
        //        auxst0 = auxLastPlotPoint0;
        //        auxappendcount0 = auxplotcount0 - auxLastPlotPoint0;
        //        if (auxappendcount0 < 0) auxappendcount0 = 0;
        //        auxLastPlotPoint0 = auxplotcount0;
        //    }

        //    if (auxplotcount1 < auxLastPlotPoint1)
        //    {
        //        auxLastPlotPoint1 = 0;
        //        grp2.Plots[9].ClearData(); // Aux1 ch1
        //    }
        //    else
        //    {
        //        auxst1 = auxLastPlotPoint1;
        //        auxappendcount1 = auxplotcount1 - auxLastPlotPoint1;
        //        if (auxappendcount1 < 0) auxappendcount1 = 0;
        //        auxLastPlotPoint1 = auxplotcount1;
        //    }

        //    int nPlot1 = 1;
        //    int nPlot2 = 2;
        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx0 = new double[appendcount0];
        //    double[] pty0 = new double[appendcount0];
        //    double[] ptx1 = new double[appendcount1];
        //    double[] pty1 = new double[appendcount1];

        //    double[] auxtx = null;
        //    double[] auxty = null;
        //    double[] auxptx = new double[auxappendcount];
        //    double[] auxpty = new double[auxappendcount];
        //    double[] auxptx0 = new double[auxappendcount0];
        //    double[] auxpty0 = new double[auxappendcount0];
        //    double[] auxptx1 = new double[auxappendcount1];
        //    double[] auxpty1 = new double[auxappendcount1];

        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //    {
        //        if (appendcount0 > 0)
        //        {
        //            tx = rtgrp.plot[0].lx[0].ToArray();
        //            ty = rtgrp.plot[0].ly[0].ToArray();
        //            Array.Copy(tx, st0, ptx0, 0, appendcount0);
        //            Array.Copy(ty, st0, pty0, 0, appendcount0);
        //            grp1.Plots[0 + nPlot1].PlotXYAppend(ptx0, pty0);
        //            //grp1.Plots[0+nPlot1].PlotXY(rtgrp.plot[0].lx[0].ToArray(), rtgrp.plot[0].ly[0].ToArray());
        //        }

        //        if (appendcount1 > 0)
        //        {
        //            tx = rtgrp.plot[0].lx[1].ToArray();
        //            ty = rtgrp.plot[0].ly[1].ToArray();
        //            Array.Copy(tx, st1, ptx1, 0, appendcount1);
        //            Array.Copy(ty, st1, pty1, 0, appendcount1);
        //            grp1.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
        //                                                    //grp1.Plots[0].PlotXY(rtgrp.plot[0].lx[1].ToArray(), rtgrp.plot[0].ly[1].ToArray()); // 0206 6
        //        }

        //        //if (auxappendcount0 > 0) // aux1 ch0
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[0].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[0].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp1.Plots[7].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //if (auxappendcount0 > 0) // aux1 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[1].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[1].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp1.Plots[9].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount0 > 0) // aux1 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[2].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[2].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp1.Plots[11].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount0 > 0) // aux1 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[3].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[3].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp1.Plots[13].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //if (auxappendcount1 > 0) // aux2 ch0
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[4].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[4].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp1.Plots[15].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // aux2 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[5].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[5].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp1.Plots[17].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // aux2 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[6].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[6].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp1.Plots[19].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // aux2 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[7].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[7].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp1.Plots[21].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //if (auxappendcount2 > 0) // aux3 ch0
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[8].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[8].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp1.Plots[23].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // aux3 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[9].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[9].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp1.Plots[25].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // aux3 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[10].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[10].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp1.Plots[27].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // aux3 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[0].lx[11].ToArray();
        //        //    auxty = rtauxgrp.plot[0].ly[11].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp1.Plots[29].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //    }
        //    if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        if (appendcount0 > 0)
        //        {
        //            tx = rtgrp.plot[2].lx[0].ToArray();
        //            ty = rtgrp.plot[2].ly[0].ToArray();
        //            Array.Copy(tx, st0, ptx0, 0, appendcount0);
        //            Array.Copy(ty, st0, pty0, 0, appendcount0);
        //            grp2.Plots[0 + nPlot2].PlotXYAppend(ptx0, pty0);
        //        }
        //        if (appendcount1 > 0)
        //        {
        //            tx = rtgrp.plot[2].lx[1].ToArray();
        //            ty = rtgrp.plot[2].ly[1].ToArray();
        //            Array.Copy(tx, st1, ptx1, 0, appendcount1);
        //            Array.Copy(ty, st1, pty1, 0, appendcount1);
        //            grp2.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
        //        }

        //        if (auxappendcount0 > 0) // Aux1 ch0
        //        {
        //            auxtx = rtauxgrp.plot[2].lx[0].ToArray();
        //            auxty = rtauxgrp.plot[2].ly[0].ToArray();
        //            Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //            Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //            grp2.Plots[8].PlotXYAppend(auxptx0, auxpty0);
        //        }

        //        if (auxappendcount1 > 0) // Aux1 ch0
        //        {
        //            auxtx = rtauxgrp.plot[4].lx[0].ToArray();
        //            auxty = rtauxgrp.plot[4].ly[0].ToArray();
        //            Array.Copy(auxtx, auxst1, auxptx1, 0, auxappendcount1);
        //            Array.Copy(auxty, auxst1, auxpty1, 0, auxappendcount1);
        //            grp2.Plots[9].PlotXYAppend(auxptx1, auxpty1);
        //        }

        //        //if (auxappendcount0 > 0) // Aux1 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[1].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[1].ToArray();
        //        //    Array.Copy(auxtx, auxst1, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst1, auxpty0, 0, auxappendcount0);
        //        //    grp2.Plots[12].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount0 > 0) // Aux1 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[2].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[2].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp2.Plots[16].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount0 > 0) // Aux1 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[3].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[3].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp2.Plots[20].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //if (auxappendcount1 > 0) // Aux2 ch0
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[4].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[4].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp2.Plots[24].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // Aux2 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[5].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[5].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp2.Plots[28].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // Aux2 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[6].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[6].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp2.Plots[32].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // Aux2 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[7].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[7].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp2.Plots[36].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //if (auxappendcount2 > 0) // Aux3 ch0
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[8].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[8].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp2.Plots[40].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // Aux2 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[9].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[9].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp2.Plots[44].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // Aux2 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[10].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[10].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp2.Plots[48].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // Aux2 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[2].lx[11].ToArray();
        //        //    auxty = rtauxgrp.plot[2].ly[11].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp2.Plots[52].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //====================================================================//
        //        if (appendcount0 > 0)
        //        {
        //            tx = rtgrp.plot[3].lx[0].ToArray();
        //            ty = rtgrp.plot[3].ly[0].ToArray();
        //            grp2.Plots[1 + nPlot2].PlotXYAppend(tx, ty, st0, appendcount0);
        //        }
        //        if (appendcount1 > 0)
        //        {
        //            tx = rtgrp.plot[3].lx[1].ToArray();
        //            ty = rtgrp.plot[3].ly[1].ToArray();
        //            grp2.Plots[1].PlotXYAppend(tx, ty, st1, appendcount1); // 0206 7
        //        }

        //        //if (auxappendcount0 > 0) // Aux1 ch0
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[0].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[0].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp2.Plots[9].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //if (auxappendcount0 > 0) // Aux1 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[1].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[1].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp2.Plots[13].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount0 > 0) // Aux1 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[2].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[2].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp2.Plots[17].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount0 > 0) // Aux1 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[3].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[3].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
        //        //    grp2.Plots[21].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //if (auxappendcount1 > 0) // Aux2 ch0
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[4].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[4].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp2.Plots[25].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // Aux2 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[5].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[5].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp2.Plots[29].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // Aux2 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[6].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[6].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp2.Plots[33].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount1 > 0) // Aux2 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[7].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[7].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount1);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount1);
        //        //    grp2.Plots[37].PlotXYAppend(auxptx0, auxpty0);
        //        //}

        //        //if (auxappendcount2 > 0) // Aux3 ch0
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[8].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[8].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp2.Plots[41].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // Aux3 ch1
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[9].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[9].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp2.Plots[45].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // Aux3 ch2
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[10].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[10].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp2.Plots[49].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //        //if (auxappendcount2 > 0) // Aux3 ch3
        //        //{
        //        //    auxtx = rtauxgrp.plot[4].lx[11].ToArray();
        //        //    auxty = rtauxgrp.plot[4].ly[11].ToArray();
        //        //    Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount2);
        //        //    Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount2);
        //        //    grp2.Plots[53].PlotXYAppend(auxptx0, auxpty0);
        //        //}
        //    }
        //}

        private void RefreshGraphQIS()
        {
           /* grp1.Plots[8].LineColor = Color.DarkGray; grp1.Plots[8].PointColor = Color.DarkGray;grp1.Plots[8].LineStyle = LineStyle.Dot;
            grp1.Plots[10].LineColor = Color.DarkGray;grp1.Plots[10].PointColor = Color.DarkGray;grp1.Plots[10].LineStyle = LineStyle.Dot;
            grp1.Plots[12].LineColor = Color.DarkGray;grp1.Plots[12].PointColor = Color.DarkGray;grp1.Plots[12].LineStyle = LineStyle.Dot;
            grp1.Plots[14].LineColor = Color.DarkGray;grp1.Plots[14].PointColor = Color.DarkGray;grp1.Plots[14].LineStyle = LineStyle.Dot;
            grp1.Plots[16].LineColor = Color.DarkGray;grp1.Plots[16].PointColor = Color.DarkGray;grp1.Plots[16].LineStyle = LineStyle.Dot;
            grp1.Plots[18].LineColor = Color.DarkGray;grp1.Plots[18].PointColor = Color.DarkGray;grp1.Plots[18].LineStyle = LineStyle.Dot;
            grp1.Plots[20].LineColor = Color.DarkGray;grp1.Plots[20].PointColor = Color.DarkGray;grp1.Plots[20].LineStyle = LineStyle.Dot;
            grp1.Plots[22].LineColor = Color.DarkGray;grp1.Plots[22].PointColor = Color.DarkGray;grp1.Plots[22].LineStyle = LineStyle.Dot;
            grp1.Plots[24].LineColor = Color.DarkGray;grp1.Plots[24].PointColor = Color.DarkGray;grp1.Plots[24].LineStyle = LineStyle.Dot;
            grp1.Plots[26].LineColor = Color.DarkGray;grp1.Plots[26].PointColor = Color.DarkGray;grp1.Plots[26].LineStyle = LineStyle.Dot;
            grp1.Plots[28].LineColor = Color.DarkGray;grp1.Plots[28].PointColor = Color.DarkGray;grp1.Plots[28].LineStyle = LineStyle.Dot;
            grp1.Plots[30].LineColor = Color.DarkGray;grp1.Plots[30].PointColor = Color.DarkGray;grp1.Plots[30].LineStyle = LineStyle.Dot;

            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
            double maxval;
            double minval;
            double cmpval;

            int plotcount0 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[0].Count;
            int plotcount1 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[1].Count;
            int appendcount0 = 0;
            int appendcount1 = 0;

            int auxplotcount0 = rtauxgrp.plot[2].ly[0].Count;
            int auxplotcount1 = rtauxgrp.plot[4].ly[0].Count;

            int auxappendcount = 0;
            int auxappendcount0 = 0;
            int auxappendcount1 = 0;

            if (plotcount0 == 0 && plotcount1 == 0) return;
            if (plotcount0 == LastPlotPoint && plotcount1 == LastPlotPoint1) return;

            int st0 = 0;
            int st1 = 0;
            int auxst0 = 0;
            int auxst1 = 0;

            if (plotcount0 < LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st0 = LastPlotPoint;
                appendcount0 = plotcount0 - LastPlotPoint;
                LastPlotPoint = plotcount0;

                auxst0 = auxLastPlotPoint0;
                auxappendcount0 = auxplotcount0 - auxLastPlotPoint0;
                auxLastPlotPoint0 = auxplotcount0;
            }

            if (plotcount1 < LastPlotPoint1)
            {
                LastPlotPoint1 = 0;
                st1 = 0;
                auxLastPlotPoint1 = 0;
                auxst1 = 0;

                grp1.Plots[0].ClearData(); // 0206 6
                grp2.Plots[0].ClearData(); // 0206 6
                grp2.Plots[1].ClearData(); // 0206 7
            }
            else
            {
                st1 = LastPlotPoint1;
                appendcount1 = plotcount1 - LastPlotPoint1;
                LastPlotPoint1 = plotcount1;

                auxst1 = auxLastPlotPoint1;
                auxappendcount1 = auxplotcount1 - auxLastPlotPoint1;
                auxLastPlotPoint1 = auxplotcount1;
            }

            int nPlot1 = 1;
            int nPlot2 = 2;
            double[] tx = null;
            double[] ty = null;
            double[] ptx0 = new double[appendcount0];
            double[] pty0 = new double[appendcount0];
            double[] ptx1 = new double[appendcount1];
            double[] pty1 = new double[appendcount1];

            double[] auxtx = null;
            double[] auxty = null;
            double[] auxptx = new double[auxappendcount];
            double[] auxpty = new double[auxappendcount];
            double[] auxptx0 = new double[auxappendcount0];
            double[] auxpty0 = new double[auxappendcount0];
            double[] auxptx1 = new double[auxappendcount1];
            double[] auxpty1 = new double[auxappendcount1];

            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                if (appendcount0 > 0)
                {
                    tx = rtgrp.plot[0].lx[0].ToArray();
                    ty = rtgrp.plot[0].ly[0].ToArray();
                    Array.Copy(tx, st0, ptx0, 0, appendcount0);
                    Array.Copy(ty, st0, pty0, 0, appendcount0);
                    grp1.Plots[0 + nPlot1].PlotXYAppend(ptx0, pty0);
                }

                if (appendcount1 > 0)
                {
                    tx = rtgrp.plot[0].lx[1].ToArray();
                    ty = rtgrp.plot[0].ly[1].ToArray();
                    Array.Copy(tx, st1, ptx1, 0, appendcount1);
                    Array.Copy(ty, st1, pty1, 0, appendcount1);
                    grp1.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
                }

                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[0].ToArray();auxty = rtauxgrp.plot[0].ly[0].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[7].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch1
                {
                    auxtx = rtauxgrp.plot[0].lx[1].ToArray(); auxty = rtauxgrp.plot[0].ly[1].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[9].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[2].ToArray(); auxty = rtauxgrp.plot[0].ly[2].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[11].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[3].ToArray(); auxty = rtauxgrp.plot[0].ly[3].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[13].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[4].ToArray(); auxty = rtauxgrp.plot[0].ly[4].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[15].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[5].ToArray(); auxty = rtauxgrp.plot[0].ly[5].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[17].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[6].ToArray(); auxty = rtauxgrp.plot[0].ly[6].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[19].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[7].ToArray(); auxty = rtauxgrp.plot[0].ly[7].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[21].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[8].ToArray(); auxty = rtauxgrp.plot[0].ly[8].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[23].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[9].ToArray(); auxty = rtauxgrp.plot[0].ly[9].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[25].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    auxtx = rtauxgrp.plot[0].lx[10].ToArray(); auxty = rtauxgrp.plot[0].ly[10].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[27].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // aux1 ch0
                {
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp1.Plots[29].PlotXYAppend(auxptx0, auxpty0);
                    }
                }

                maxval = rtgrp.plot[0].Maxval[0];
                minval = rtgrp.plot[0].Minval[0];

                if (maxval < rtgrp.plot[0].Maxval[1]) maxval = rtgrp.plot[0].Maxval[1];
                if (minval > rtgrp.plot[0].Minval[1]) minval = rtgrp.plot[0].Minval[1];

                for (int i = 0; i < 12; i++)
                {
                    double auxMax = rtauxgrp.plot[0].Maxval[i];
                    double auxMin = rtauxgrp.plot[0].Minval[i];

                    if (auxMax != 0 || auxMin != 0) // 연결된 AUX만 반영
                    {
                        if (auxMax > maxval) maxval = auxMax;
                        if (auxMin < minval) minval = auxMin;
                    }
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval)) cmpval = Math.Abs(minval);
                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    minval -= minval * 0.1;
                    maxval += maxval * 0.1;
                }
                else if (maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }

                grp1.YAxes[0].Range = new Range(minval, maxval);

            }
            if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                if (appendcount0 > 0)
                {
                    tx = rtgrp.plot[2].lx[0].ToArray();
                    ty = rtgrp.plot[2].ly[0].ToArray();
                    Array.Copy(tx, st0, ptx0, 0, appendcount0);
                    Array.Copy(ty, st0, pty0, 0, appendcount0);
                    grp2.Plots[0 + nPlot2].PlotXYAppend(ptx0, pty0);
                }
                if (appendcount1 > 0)
                {
                    tx = rtgrp.plot[2].lx[1].ToArray();
                    ty = rtgrp.plot[2].ly[1].ToArray();
                    Array.Copy(tx, st1, ptx1, 0, appendcount1);
                    Array.Copy(ty, st1, pty1, 0, appendcount1);
                    grp2.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
                }

                if (auxappendcount0 > 0) // Aux1 ch0
                {
                    auxtx = rtauxgrp.plot[2].lx[0].ToArray();
                    auxty = rtauxgrp.plot[2].ly[0].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[8].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux1 ch1
                {
                    auxtx = rtauxgrp.plot[2].lx[1].ToArray();auxty = rtauxgrp.plot[2].ly[1].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[12].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux1 ch2
                {
                    auxtx = rtauxgrp.plot[2].lx[2].ToArray(); auxty = rtauxgrp.plot[2].ly[2].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[16].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux1 ch3
                {
                    auxtx = rtauxgrp.plot[2].lx[3].ToArray(); auxty = rtauxgrp.plot[2].ly[3].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[20].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux2 ch0
                {
                    auxtx = rtauxgrp.plot[2].lx[4].ToArray(); auxty = rtauxgrp.plot[2].ly[4].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[24].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux2 ch1
                {
                    auxtx = rtauxgrp.plot[2].lx[5].ToArray(); auxty = rtauxgrp.plot[2].ly[5].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[28].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux2 ch2
                {
                    auxtx = rtauxgrp.plot[2].lx[6].ToArray(); auxty = rtauxgrp.plot[2].ly[6].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[32].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux2 ch3
                {
                    auxtx = rtauxgrp.plot[2].lx[7].ToArray(); auxty = rtauxgrp.plot[2].ly[7].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[36].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux3 ch0
                {
                    auxtx = rtauxgrp.plot[2].lx[8].ToArray(); auxty = rtauxgrp.plot[2].ly[8].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[40].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux3 ch1
                {
                    auxtx = rtauxgrp.plot[2].lx[9].ToArray(); auxty = rtauxgrp.plot[2].ly[9].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[44].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux3 ch2
                {
                    auxtx = rtauxgrp.plot[2].lx[10].ToArray(); auxty = rtauxgrp.plot[2].ly[10].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[48].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount0 > 0) // Aux3 ch3
                {
                    auxtx = rtauxgrp.plot[2].lx[11].ToArray(); auxty = rtauxgrp.plot[2].ly[11].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[52].PlotXYAppend(auxptx0, auxpty0);
                    }
                }

                maxval = rtgrp.plot[2].Maxval[0];
                minval = rtgrp.plot[2].Minval[0];

                if (maxval < rtgrp.plot[2].Maxval[1]) maxval = rtgrp.plot[2].Maxval[1];
                if (minval > rtgrp.plot[2].Minval[1]) minval = rtgrp.plot[2].Minval[1];

                for (int i = 0; i < 12; i++)
                {
                    double auxMax = rtauxgrp.plot[2].Maxval[i];
                    double auxMin = rtauxgrp.plot[2].Minval[i];

                    if (auxMax != 0 || auxMin != 0) // 연결된 AUX만 반영
                    {
                        if (auxMax > maxval) maxval = auxMax;
                        if (auxMin < minval) minval = auxMin;
                    }
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval)) cmpval = Math.Abs(minval);
                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    minval -= minval * 0.1;
                    maxval += maxval * 0.1;
                }
                else if (maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }

                grp2.YAxes[0].Range = new Range(minval, maxval);
                //====================================================================//
                if (appendcount0 > 0)
                {
                    tx = rtgrp.plot[3].lx[0].ToArray();
                    ty = rtgrp.plot[3].ly[0].ToArray();
                    grp2.Plots[1 + nPlot2].PlotXYAppend(tx, ty, st0, appendcount0);
                }
                if (appendcount1 > 0)
                {
                    tx = rtgrp.plot[3].lx[1].ToArray();
                    ty = rtgrp.plot[3].ly[1].ToArray();
                    grp2.Plots[1].PlotXYAppend(tx, ty, st1, appendcount1); // 0206 7
                }

                if (auxappendcount1 > 0) // Aux1 ch0
                {
                    auxtx = rtauxgrp.plot[4].lx[0].ToArray();
                    auxty = rtauxgrp.plot[4].ly[0].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[9].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux1 ch1
                {
                    auxtx = rtauxgrp.plot[4].lx[1].ToArray(); auxty = rtauxgrp.plot[4].ly[1].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[13].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux1 ch2
                {
                    auxtx = rtauxgrp.plot[4].lx[2].ToArray(); auxty = rtauxgrp.plot[4].ly[2].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[17].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux1 ch3
                {
                    auxtx = rtauxgrp.plot[4].lx[3].ToArray(); auxty = rtauxgrp.plot[4].ly[3].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[21].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux2 ch0
                {
                    auxtx = rtauxgrp.plot[4].lx[4].ToArray(); auxty = rtauxgrp.plot[4].ly[4].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[25].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux2 ch1
                {
                    auxtx = rtauxgrp.plot[4].lx[5].ToArray(); auxty = rtauxgrp.plot[4].ly[5].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[29].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux2 ch2
                {
                    auxtx = rtauxgrp.plot[4].lx[6].ToArray(); auxty = rtauxgrp.plot[4].ly[6].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[33].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux2 ch3
                {
                    auxtx = rtauxgrp.plot[4].lx[7].ToArray(); auxty = rtauxgrp.plot[4].ly[7].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[37].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux3 ch0
                {
                    auxtx = rtauxgrp.plot[4].lx[8].ToArray(); auxty = rtauxgrp.plot[4].ly[8].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[41].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux3 ch1
                {
                    auxtx = rtauxgrp.plot[4].lx[9].ToArray(); auxty = rtauxgrp.plot[4].ly[9].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[45].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux3 ch2
                {
                    auxtx = rtauxgrp.plot[4].lx[10].ToArray(); auxty = rtauxgrp.plot[4].ly[10].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[49].PlotXYAppend(auxptx0, auxpty0);
                    }
                }
                if (auxappendcount1 > 0) // Aux3 ch3
                {
                    auxtx = rtauxgrp.plot[4].lx[11].ToArray(); auxty = rtauxgrp.plot[4].ly[11].ToArray();
                    if (auxtx.Length > auxst0 && (auxtx.Length - auxst0) >= auxappendcount0)
                    {
                        Array.Copy(auxtx, auxst0, auxptx0, 0, auxappendcount0);
                        Array.Copy(auxty, auxst0, auxpty0, 0, auxappendcount0);
                        grp2.Plots[53].PlotXYAppend(auxptx0, auxpty0);
                    }
                }

                maxval = rtgrp.plot[3].Maxval[0];
                minval = rtgrp.plot[3].Minval[0];

                if (maxval < rtgrp.plot[3].Maxval[1]) maxval = rtgrp.plot[3].Maxval[1];
                if (minval > rtgrp.plot[3].Minval[1]) minval = rtgrp.plot[3].Minval[1];

                for (int i = 0; i < 12; i++)
                {
                    double auxMax = rtauxgrp.plot[4].Maxval[i];
                    double auxMin = rtauxgrp.plot[4].Minval[i];

                    if (auxMax != 0 || auxMin != 0)
                    {
                        if (auxMax > maxval) maxval = auxMax;
                        if (auxMin < minval) minval = auxMin;
                    }
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval)) cmpval = Math.Abs(minval);
                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    minval -= minval * 0.1;
                    maxval += maxval * 0.1;
                }
                else if (maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }

                grp2.YAxes[1].Range = new Range(minval, maxval);
            }*/
        }

        private void RefreshGraphAxisTimeView(double time0, double time1)
        {
            double value = 0.0;
            
            if(xTimemode0 == true && time0 >= 0.0)
            {
                value = time0;
                if (value < 60.0)
                {
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
                }
                else if (value < 3600.0)
                {
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_mm;
                }
                else if (value < 86400)
                {
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_hh;
                }
                else
                {
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_dd;
                }
            }
            if (xTimemode1 == true && time1 >= 0.0)
            {
                value = time1;
                if (value < 60.0)
                {
                    grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
                }
                else if (value < 3600.0)
                {
                    grp2.XAxes[0].MajorDivisions.LabelFormat = fs_mm;
                }
                else if (value < 86400)
                {
                    grp2.XAxes[0].MajorDivisions.LabelFormat = fs_hh;
                }
                else
                {
                    grp2.XAxes[0].MajorDivisions.LabelFormat = fs_dd;
                }
            }        
        }

        //private void RefreshGraphPRR()
        //{
        //    int i;
        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;

        //    //double maxval;
        //    //double minval;
        //    //double cmpval;
        //    if (gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt == 0) return;

        //    int plotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].Count;
        //    int appendcount = 0;
        //    int st = 0;
        //    if (plotcount == 0) return;
        //    if (plotcount == LastPlotPoint) return;

        //    if (plotcount < LastPlotPoint)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st = LastPlotPoint;
        //        appendcount = plotcount - LastPlotPoint;
        //        LastPlotPoint = plotcount;
        //    }
        //    int nPlot1 = 1;
        //    int nPlot2 = 2;
        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx = new double[appendcount];
        //    double[] pty = new double[appendcount];
        //    double[] ptx1 = new double[appendcount];
        //    double[] pty1 = new double[appendcount];

        //    int ast = 0;
        //    int auxappendcount = appendcount;
        //    double[] aptx = new double[appendcount];
        //    double[] apty = new double[appendcount];

        //    double time0 = -1.0;
        //    double time1 = -1.0;
        //    int count;

        //    for (i = 0; i < gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt; i++)
        //    {
        //        ptx.Initialize();
        //        pty.Initialize();
        //        ptx1.Initialize();
        //        pty1.Initialize();
        //        if (i < 2)
        //        {
        //            if (i == 1)
        //            {
        //                if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //                {
        //                    tx = rtgrp.plot[0].lx[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
        //                    ty = rtgrp.plot[0].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
        //                    count = tx.Length;
        //                    if (count > appendcount) count = appendcount;
        //                    if (count > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, count);
        //                        Array.Copy(ty, st, pty, 0, count);
        //                        grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[count - 1];
        //                    }


        //                }
        //            }
        //            else
        //            {
        //                if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //                {
        //                    tx = rtgrp.plot[0].lx[i].ToArray();
        //                    ty = rtgrp.plot[0].ly[i].ToArray();
        //                    count = tx.Length;
        //                    if (count > appendcount) count = appendcount;
        //                    if (count > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, count);
        //                        Array.Copy(ty, st, pty, 0, count);
        //                        grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[count - 1];
        //                    }

        //                }
        //            }
        //        }

        //        if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //        {
        //            tx = rtgrp.plot[2].lx[i].ToArray();
        //            ty = rtgrp.plot[2].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + nPlot2].PlotXYAppend(ptx, pty);
        //            time1 = ptx[appendcount - 1];


        //            tx = rtgrp.plot[3].lx[i].ToArray();
        //            ty = rtgrp.plot[3].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + 3 + nPlot2].PlotXYAppend(ptx, pty);

        //            //// ========================================== Aux
        //            // --- Aux Cs ---
        //            int baseIdx = 8 + (i * 4);
        //            int csIdx = baseIdx;
        //            int cpIdx = baseIdx + 1;

        //            // --- Aux Cs ---
        //            tx = rtauxgrp.plot[8].lx[i].ToArray();
        //            ty = rtauxgrp.plot[8].ly[i].ToArray();
        //            int acount = Math.Min(appendcount, tx.Length);
        //            if (acount > 0)
        //            {
        //                Array.Copy(tx, ast, aptx, 0, acount);
        //                Array.Copy(ty, ast, apty, 0, acount);
        //                grp2.Plots[csIdx].PlotXYAppend(aptx, apty);
        //            }

        //            // --- Aux Cp ---
        //            tx = rtauxgrp.plot[9].lx[i].ToArray();
        //            ty = rtauxgrp.plot[9].ly[i].ToArray();
        //            acount = Math.Min(appendcount, tx.Length);
        //            if (acount > 0)
        //            {
        //                Array.Copy(tx, ast, aptx, 0, acount);
        //                Array.Copy(ty, ast, apty, 0, acount);
        //                grp2.Plots[cpIdx].PlotXYAppend(aptx, apty);
        //            }
        //            //tx = rtauxgrp.plot[8].lx[i].ToArray();
        //            //ty = rtauxgrp.plot[8].ly[i].ToArray();
        //            //int acount = Math.Min(appendcount, tx.Length);
        //            //if (acount > 0)
        //            //{
        //            //    Array.Copy(tx, ast, aptx, 0, acount);
        //            //    Array.Copy(ty, ast, apty, 0, acount);
        //            //    grp2.Plots[8].PlotXYAppend(aptx, apty); // <- Aux Cs
        //            //}

        //            //tx = rtauxgrp.plot[9].lx[i].ToArray();
        //            //ty = rtauxgrp.plot[9].ly[i].ToArray();
        //            //acount = Math.Min(appendcount, tx.Length);
        //            //if (acount > 0)
        //            //{
        //            //    Array.Copy(tx, ast, aptx, 0, acount);
        //            //    Array.Copy(ty, ast, apty, 0, acount);
        //            //    grp2.Plots[9].PlotXYAppend(aptx, apty); // <- Aux Cp
        //            //}
        //        }
        //    }

        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        RefreshGraphAxisTimeView(time0, time1);
        //    }
        //}

        //private void RefreshGraphPRR()
        //{
        //    int i;
        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;

        //    if (gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt == 0) return;

        //    int plotcount = rtgrp.plot[3].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].Count;
        //    int appendcount = 0;
        //    int st = 0;
        //    if (plotcount == 0) return;
        //    if (plotcount == LastPlotPoint) return;

        //    if (plotcount < LastPlotPoint)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st = LastPlotPoint;
        //        appendcount = plotcount - LastPlotPoint;
        //        LastPlotPoint = plotcount;
        //    }

        //    int nPlot1 = 1;
        //    int nPlot2 = 2;
        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx = new double[appendcount];
        //    double[] pty = new double[appendcount];

        //    double time0 = -1.0;
        //    double time1 = -1.0;
        //    int count;

        //    for (i = 0; i < gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt; i++)
        //    {
        //        ptx.Initialize();
        //        pty.Initialize();

        //        if (i < 2)
        //        {
        //            if (i == 1)
        //            {
        //                if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //                {
        //                    tx = rtgrp.plot[0].lx[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
        //                    ty = rtgrp.plot[0].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
        //                    count = Math.Min(tx.Length, appendcount);
        //                    if (count > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, count);
        //                        Array.Copy(ty, st, pty, 0, count);
        //                        grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[count - 1];
        //                    }
        //                }
        //            }
        //            else
        //            {
        //                if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //                {
        //                    tx = rtgrp.plot[0].lx[i].ToArray();
        //                    ty = rtgrp.plot[0].ly[i].ToArray();
        //                    count = Math.Min(tx.Length, appendcount);
        //                    if (count > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, count);
        //                        Array.Copy(ty, st, pty, 0, count);
        //                        grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[count - 1];
        //                    }
        //                }
        //            }
        //        }

        //        if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //        {
        //            // --- MAIN Cs, Cp ---
        //            tx = rtgrp.plot[2].lx[i].ToArray();
        //            ty = rtgrp.plot[2].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + nPlot2].PlotXYAppend(ptx, pty);
        //            time1 = ptx[appendcount - 1];

        //            tx = rtgrp.plot[3].lx[i].ToArray();
        //            ty = rtgrp.plot[3].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + 3 + nPlot2].PlotXYAppend(ptx, pty);

        //            // --- AUX ---
        //            int auxIdx = 0; // Aux CH0만 본다고 가정
        //            int baseIdx = 8 + (auxIdx * 4);

        //            for (int k = 0; k < 4; k++)
        //            {
        //                tx = rtauxgrp.plot[baseIdx + k].lx[auxIdx].ToArray();
        //                ty = rtauxgrp.plot[baseIdx + k].ly[auxIdx].ToArray();
        //                int acount = Math.Min(appendcount, tx.Length - st);
        //                if (acount > 0)
        //                {
        //                    double[] aptx = new double[acount];
        //                    double[] apty = new double[acount];
        //                    Array.Copy(tx, st, aptx, 0, acount);
        //                    Array.Copy(ty, st, apty, 0, acount);
        //                    grp2.Plots[baseIdx + k].PlotXYAppend(aptx, apty);
        //                }
        //            }

        //            //for (int auxIdx = 0; auxIdx < 12; auxIdx++)
        //            //{
        //            //    int auxBoard = auxIdx / 4;
        //            //    int chIdx = auxIdx % 4;
        //            //    int baseIdx = 8 + (auxIdx * 2);
        //            //    int csIdx = baseIdx;
        //            //    int cpIdx = baseIdx + 1;

        //            //    // --- Aux Cs ---
        //            //    tx = rtauxgrp.plot[8].lx[auxIdx].ToArray();
        //            //    ty = rtauxgrp.plot[8].ly[auxIdx].ToArray();
        //            //    int acount = Math.Min(appendcount, tx.Length - st);
        //            //    if (acount > 0)
        //            //    {
        //            //        double[] aptx = new double[acount];
        //            //        double[] apty = new double[acount];
        //            //        Array.Copy(tx, st, aptx, 0, acount);
        //            //        Array.Copy(ty, st, apty, 0, acount);
        //            //        grp2.Plots[csIdx].PlotXYAppend(aptx, apty);
        //            //    }

        //            //    // --- Aux Cp ---
        //            //    tx = rtauxgrp.plot[9].lx[auxIdx].ToArray();
        //            //    ty = rtauxgrp.plot[9].ly[auxIdx].ToArray();
        //            //    acount = Math.Min(appendcount, tx.Length - st);
        //            //    if (acount > 0)
        //            //    {
        //            //        double[] aptx = new double[acount];
        //            //        double[] apty = new double[acount];
        //            //        Array.Copy(tx, st, aptx, 0, acount);
        //            //        Array.Copy(ty, st, apty, 0, acount);
        //            //        grp2.Plots[cpIdx].PlotXYAppend(aptx, apty);
        //            //    }
        //            //}
        //        }
        //    }

        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        RefreshGraphAxisTimeView(time0, time1);
        //    }
        //}

        //private void RefreshGraphPRR()
        //{
        //    grp1.Plots[8].LineColor = Color.LightSkyBlue;
        //    grp1.Plots[8].PointColor = Color.LightSkyBlue;
        //    grp1.Plots[8].LineStyle = LineStyle.Solid;
        //    grp1.Plots[10].LineColor = Color.MediumPurple;
        //    grp1.Plots[10].PointColor = Color.MediumPurple;
        //    grp1.Plots[10].LineStyle = LineStyle.Solid;
        //    grp1.Plots[12].LineColor = Color.OliveDrab;
        //    grp1.Plots[12].PointColor = Color.OliveDrab;
        //    grp1.Plots[12].LineStyle = LineStyle.Solid;
        //    grp1.Plots[14].LineColor = Color.SaddleBrown;
        //    grp1.Plots[14].PointColor = Color.SaddleBrown;
        //    grp1.Plots[14].LineStyle = LineStyle.Solid;
        //    grp1.Plots[16].LineColor = Color.HotPink;
        //    grp1.Plots[16].PointColor = Color.HotPink;
        //    grp1.Plots[16].LineStyle = LineStyle.Solid;
        //    grp1.Plots[18].LineColor = Color.Lime;
        //    grp1.Plots[18].PointColor = Color.Lime;
        //    grp1.Plots[18].LineStyle = LineStyle.Solid;
        //    grp1.Plots[20].LineColor = Color.SteelBlue;
        //    grp1.Plots[20].PointColor = Color.SteelBlue;
        //    grp1.Plots[20].LineStyle = LineStyle.Solid;
        //    grp1.Plots[22].LineColor = Color.SlateBlue;
        //    grp1.Plots[22].PointColor = Color.SlateBlue;
        //    grp1.Plots[22].LineStyle = LineStyle.Solid;
        //    grp1.Plots[24].LineColor = Color.DarkCyan;
        //    grp1.Plots[24].PointColor = Color.DarkCyan;
        //    grp1.Plots[24].LineStyle = LineStyle.Solid;
        //    grp1.Plots[26].LineColor = Color.DarkOrange;
        //    grp1.Plots[26].PointColor = Color.DarkOrange;
        //    grp1.Plots[26].LineStyle = LineStyle.Solid;
        //    grp1.Plots[28].LineColor = Color.Coral;
        //    grp1.Plots[28].PointColor = Color.Coral;
        //    grp1.Plots[28].LineStyle = LineStyle.Solid;
        //    grp1.Plots[30].LineColor = Color.Gray;
        //    grp1.Plots[30].PointColor = Color.Gray;
        //    grp1.Plots[30].LineStyle = LineStyle.Solid;

        //    grp2.Plots[10].LineColor = Color.Crimson;
        //    grp2.Plots[10].PointColor = Color.Crimson;
        //    grp2.Plots[10].LineStyle = LineStyle.Solid;
        //    grp2.Plots[11].LineColor = Color.DodgerBlue;
        //    grp2.Plots[11].PointColor = Color.DodgerBlue;
        //    grp2.Plots[11].LineStyle = LineStyle.Solid;
        //    grp2.Plots[14].LineColor = Color.Chartreuse;
        //    grp2.Plots[14].PointColor = Color.Chartreuse;
        //    grp2.Plots[14].LineStyle = LineStyle.Solid;
        //    grp2.Plots[15].LineColor = Color.Indigo;
        //    grp2.Plots[15].PointColor = Color.Indigo;
        //    grp2.Plots[15].LineStyle = LineStyle.Solid;
        //    grp2.Plots[18].LineColor = Color.Turquoise;
        //    grp2.Plots[18].PointColor = Color.Turquoise;
        //    grp2.Plots[18].LineStyle = LineStyle.Solid;
        //    grp2.Plots[19].LineColor = Color.DarkSlateGray;
        //    grp2.Plots[19].PointColor = Color.DarkSlateGray;
        //    grp2.Plots[19].LineStyle = LineStyle.Solid;
        //    grp2.Plots[22].LineColor = Color.Orchid;
        //    grp2.Plots[22].PointColor = Color.Orchid;
        //    grp2.Plots[22].LineStyle = LineStyle.Solid;
        //    grp2.Plots[23].LineColor = Color.Tomato;
        //    grp2.Plots[23].PointColor = Color.Tomato;
        //    grp2.Plots[23].LineStyle = LineStyle.Solid;
        //    grp2.Plots[26].LineColor = Color.RoyalBlue;
        //    grp2.Plots[26].PointColor = Color.RoyalBlue;
        //    grp2.Plots[26].LineStyle = LineStyle.Solid;
        //    grp2.Plots[27].LineColor = Color.Maroon;
        //    grp2.Plots[27].PointColor = Color.Maroon;
        //    grp2.Plots[27].LineStyle = LineStyle.Solid;
        //    grp2.Plots[30].LineColor = Color.SpringGreen;
        //    grp2.Plots[30].PointColor = Color.SpringGreen;
        //    grp2.Plots[30].LineStyle = LineStyle.Solid;
        //    grp2.Plots[31].LineColor = Color.DarkOliveGreen;
        //    grp2.Plots[31].PointColor = Color.DarkOliveGreen;
        //    grp2.Plots[31].LineStyle = LineStyle.Solid;
        //    grp2.Plots[34].LineColor = Color.Plum;
        //    grp2.Plots[34].PointColor = Color.Plum;
        //    grp2.Plots[34].LineStyle = LineStyle.Solid;
        //    grp2.Plots[35].LineColor = Color.Navy;
        //    grp2.Plots[35].PointColor = Color.Navy;
        //    grp2.Plots[35].LineStyle = LineStyle.Solid;
        //    grp2.Plots[38].LineColor = Color.Khaki;
        //    grp2.Plots[38].PointColor = Color.Khaki;
        //    grp2.Plots[38].LineStyle = LineStyle.Solid;
        //    grp2.Plots[39].LineColor = Color.Peru;
        //    grp2.Plots[39].PointColor = Color.Peru;
        //    grp2.Plots[39].LineStyle = LineStyle.Solid;
        //    grp2.Plots[42].LineColor = Color.Aquamarine;
        //    grp2.Plots[42].PointColor = Color.Aquamarine;
        //    grp2.Plots[42].LineStyle = LineStyle.Solid;
        //    grp2.Plots[43].LineColor = Color.ForestGreen;
        //    grp2.Plots[43].PointColor = Color.ForestGreen;
        //    grp2.Plots[43].LineStyle = LineStyle.Solid;
        //    grp2.Plots[46].LineColor = Color.MediumOrchid;
        //    grp2.Plots[46].PointColor = Color.MediumOrchid;
        //    grp2.Plots[46].LineStyle = LineStyle.Solid;
        //    grp2.Plots[47].LineColor = Color.DarkRed;
        //    grp2.Plots[47].PointColor = Color.DarkRed;
        //    grp2.Plots[47].LineStyle = LineStyle.Solid;
        //    grp2.Plots[50].LineColor = Color.CornflowerBlue;
        //    grp2.Plots[50].PointColor = Color.CornflowerBlue;
        //    grp2.Plots[50].LineStyle = LineStyle.Solid;
        //    grp2.Plots[51].LineColor = Color.MidnightBlue;
        //    grp2.Plots[51].PointColor = Color.MidnightBlue;
        //    grp2.Plots[51].LineStyle = LineStyle.Solid;
        //    grp2.Plots[54].LineColor = Color.LightCoral;
        //    grp2.Plots[54].PointColor = Color.LightCoral;
        //    grp2.Plots[54].LineStyle = LineStyle.Solid;
        //    grp2.Plots[55].LineColor = Color.DeepSkyBlue;
        //    grp2.Plots[55].PointColor = Color.DeepSkyBlue;
        //    grp2.Plots[55].LineStyle = LineStyle.Solid;

        //    int i;
        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;

        //    if (gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt == 0) return;

        //    int plotcount = rtgrp.plot[3].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].Count;
        //    int appendcount = 0;
        //    int st = 0;
        //    if (plotcount == 0) return;
        //    if (plotcount == LastPlotPoint) return;

        //    if (plotcount < LastPlotPoint)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st = LastPlotPoint;
        //        appendcount = plotcount - LastPlotPoint;
        //        LastPlotPoint = plotcount;
        //    }

        //    int nPlot1 = 1;
        //    int nPlot2 = 2;
        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx = new double[appendcount];
        //    double[] pty = new double[appendcount];
        //    double[] ptx1 = new double[appendcount];
        //    double[] pty1 = new double[appendcount];
        //    double time0 = -1.0;
        //    double time1 = -1.0;
        //    int count;

        //    for (i = 0; i < gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt; i++)
        //    {
        //        ptx.Initialize();
        //        pty.Initialize();
        //        ptx1.Initialize();
        //        pty1.Initialize();
        //        if (i < 2)
        //        {
        //            if (i == 1)
        //            {
        //                if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //                {
        //                    tx = rtgrp.plot[0].lx[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
        //                    ty = rtgrp.plot[0].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
        //                    count = tx.Length;
        //                    if (count > appendcount) count = appendcount;
        //                    if (count > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, count);
        //                        Array.Copy(ty, st, pty, 0, count);
        //                        grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[count - 1];
        //                    }

        //                    for (int auxIdx = 0; auxIdx < 12; auxIdx++)
        //                    {
        //                        tx = rtauxgrp.plot[0].lx[auxIdx].ToArray();
        //                        ty = rtauxgrp.plot[0].ly[auxIdx].ToArray();
        //                        count = tx.Length;
        //                        if (count > appendcount) count = appendcount;
        //                        if (count > 0)
        //                        {
        //                            Array.Copy(tx, st, ptx, 0, count);
        //                            Array.Copy(ty, st, pty, 0, count);

        //                            int plotIndex = 7 + (auxIdx * 2);
        //                            grp1.Plots[plotIndex].PlotXYAppend(ptx, pty);
        //                            time0 = ptx[count - 1];
        //                        }
        //                    }
        //                }
        //            }
        //            else
        //            {
        //                if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //                {
        //                    tx = rtgrp.plot[0].lx[i].ToArray();
        //                    ty = rtgrp.plot[0].ly[i].ToArray();
        //                    count = tx.Length;
        //                    if (count > appendcount) count = appendcount;
        //                    if (count > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, count);
        //                        Array.Copy(ty, st, pty, 0, count);
        //                        grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[count - 1];
        //                    }
        //                }

        //                for (int auxIdx = 0; auxIdx < 12; auxIdx++)
        //                {
        //                    tx = rtauxgrp.plot[1].lx[auxIdx].ToArray();
        //                    ty = rtauxgrp.plot[1].ly[auxIdx].ToArray();

        //                    int available = tx.Length - st;
        //                    int copyCount = Math.Min(appendcount, available);

        //                    if (copyCount > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, copyCount);
        //                        Array.Copy(ty, st, pty, 0, copyCount);

        //                        int plotIndex = 8 + (auxIdx * 2);
        //                        grp1.Plots[plotIndex].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[copyCount - 1];
        //                    }
        //                }
        //            }
        //        }

        //        if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //        {
        //            tx = rtgrp.plot[2].lx[i].ToArray();
        //            ty = rtgrp.plot[2].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + nPlot2].PlotXYAppend(ptx, pty);
        //            time1 = ptx[appendcount - 1];

        //            tx = rtgrp.plot[3].lx[i].ToArray();
        //            ty = rtgrp.plot[3].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + 3 + nPlot2].PlotXYAppend(ptx, pty);

        //            for (int bd = 0; bd < 3; bd++) // AUX1~AUX3
        //            {
        //                for (int ch = 0; ch < 4; ch++) // Ch0~Ch3
        //                {
        //                    int auxIdx = bd * 4 + ch;
        //                    int uiBase = 8 + (bd * 32) + (ch * 8);

        //                    // R1 CS
        //                    var r1x = rtauxgrp.plot[4].lx[auxIdx].ToArray();
        //                    var r1y = rtauxgrp.plot[4].ly[auxIdx].ToArray();
        //                    AppendSafe(r1x, r1y, uiBase + 0, st, appendcount, ptx, pty);

        //                    // R2 CS
        //                    var r2x = rtauxgrp.plot[5].lx[auxIdx].ToArray();
        //                    var r2y = rtauxgrp.plot[5].ly[auxIdx].ToArray();
        //                    AppendSafe(r2x, r2y, uiBase + 1, st, appendcount, ptx, pty);

        //                    // R1 CP (기존 +4 → +2)
        //                    var c1x = rtauxgrp.plot[6].lx[auxIdx].ToArray();
        //                    var c1y = rtauxgrp.plot[6].ly[auxIdx].ToArray();
        //                    AppendSafe(c1x, c1y, uiBase + 2, st, appendcount, ptx, pty);

        //                    // R2 CP (기존 +5 → +3)
        //                    var c2x = rtauxgrp.plot[7].lx[auxIdx].ToArray();
        //                    var c2y = rtauxgrp.plot[7].ly[auxIdx].ToArray();
        //                    AppendSafe(c2x, c2y, uiBase + 3, st, appendcount, ptx, pty);
        //                }
        //            }
        //        }
        //    }
        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        RefreshGraphAxisTimeView(time0, time1);
        //    }
        //}
        //void AppendSafe(double[] srcX, double[] srcY, int uiIndex, int st, int appendcount,
        //        double[] ptx, double[] pty)
        //{
        //    if (srcX == null || srcY == null) return;
        //    int stLocal = Math.Min(st, srcX.Length);
        //    int avail = srcX.Length - stLocal;
        //    int cnt = Math.Min(appendcount, Math.Max(0, avail));
        //    if (cnt <= 0) return;

        //    Array.Copy(srcX, stLocal, ptx, 0, cnt);
        //    Array.Copy(srcY, stLocal, pty, 0, cnt);
        //    grp2.Plots[uiIndex].PlotXYAppend(ptx, pty);
        //}

        //private void RefreshGraphPRR()
        //{
        //    int i;
        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;

        //    if (gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt == 0) return;

        //    int plotcount = rtgrp.plot[3].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].Count;
        //    int appendcount = 0;
        //    int st = 0;
        //    int auxIdx = 0;

        //    int auxplotcount = rtauxgrp.plot[9].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].Count;
        //    int auxappendcount = 0;
        //    int auxst = 0;

        //    if (plotcount == 0 || auxplotcount == 0) return;
        //    if (plotcount == LastPlotPoint) return;
        //    if (auxplotcount == LastPlotPoint1) return;

        //    if (plotcount < LastPlotPoint || auxplotcount < LastPlotPoint1)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st = LastPlotPoint;
        //        appendcount = plotcount - LastPlotPoint;
        //        LastPlotPoint = plotcount;

        //        auxst = LastPlotPoint1;
        //        auxappendcount = auxplotcount - LastPlotPoint1;
        //        LastPlotPoint1 = auxplotcount;
        //    }

        //    //int nPlot1 = 1;
        //    int nPlot2 = 2;
        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx = new double[appendcount];
        //    double[] pty = new double[appendcount];
        //    double[] ptx1 = new double[appendcount];
        //    double[] pty1 = new double[appendcount];
        //    double time0 = -1.0;
        //    double time1 = -1.0;

        //    double[] tx1 = null;
        //    double[] ty1 = null;
        //    double[] auxptx = new double[auxappendcount];
        //    double[] auxpty = new double[auxappendcount];
        //    double[] auxptx1 = new double[auxappendcount];
        //    double[] auxpty1 = new double[auxappendcount];
        //    //int count;

        //    for (i = 0; i < gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt; i++)
        //    {
        //        ptx.Initialize();
        //        pty.Initialize();
        //        ptx1.Initialize();
        //        pty1.Initialize();
        //        //auxptx.Initialize();
        //        //auxpty.Initialize();
        //        //auxptx1.Initialize();
        //        //auxpty1.Initialize();

        //        if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //        {
        //            // --- MAIN Cs ---
        //            tx = rtgrp.plot[2].lx[i].ToArray();
        //            ty = rtgrp.plot[2].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + nPlot2].PlotXYAppend(ptx, pty);
        //            time1 = ptx[appendcount - 1];

        //            // --- MAIN Cp ---
        //            tx = rtgrp.plot[3].lx[i].ToArray();
        //            ty = rtgrp.plot[3].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + 3 + nPlot2].PlotXYAppend(ptx, pty);

        //            // --- Aux Rs ---
        //            tx1 = rtauxgrp.plot[6].lx[auxIdx].ToArray();
        //            ty1 = rtauxgrp.plot[6].ly[auxIdx].ToArray();
        //            if (auxappendcount > 0 && tx1.Length >= auxst + auxappendcount)
        //            {
        //                Array.Copy(tx1, auxst, auxptx, 0, auxappendcount);
        //                Array.Copy(ty1, auxst, auxpty, 0, auxappendcount);
        //                grp2.Plots[10].PlotXYAppend(auxptx, auxpty);
        //            }

        //            // --- Aux Rp ---
        //            tx1 = rtauxgrp.plot[7].lx[auxIdx].ToArray();
        //            ty1 = rtauxgrp.plot[7].ly[auxIdx].ToArray();
        //            if (auxappendcount > 0 && tx1.Length >= auxst + auxappendcount)
        //            {
        //                Array.Copy(tx1, auxst, auxptx, 0, auxappendcount);
        //                Array.Copy(ty1, auxst, auxpty, 0, auxappendcount);
        //                grp2.Plots[11].PlotXYAppend(auxptx, auxpty);
        //            }

        //            // --- Aux Cs ---
        //            tx1 = rtauxgrp.plot[9].lx[auxIdx].ToArray();
        //            ty1 = rtauxgrp.plot[9].ly[auxIdx].ToArray();
        //            if (auxappendcount > 0 && tx1.Length >= auxst + auxappendcount)
        //            {
        //                Array.Copy(tx1, auxst, auxptx, 0, auxappendcount);
        //                Array.Copy(ty1, auxst, auxpty, 0, auxappendcount);
        //                grp2.Plots[8].PlotXYAppend(auxptx, auxpty);
        //            }

        //            // --- Aux Cp ---
        //            tx1 = rtauxgrp.plot[10].lx[auxIdx].ToArray();
        //            ty1 = rtauxgrp.plot[10].ly[auxIdx].ToArray();
        //            if (auxappendcount > 0 && tx1.Length >= auxst + auxappendcount)
        //            {
        //                Array.Copy(tx1, auxst, auxptx, 0, auxappendcount);
        //                Array.Copy(ty1, auxst, auxpty, 0, auxappendcount);
        //                grp2.Plots[9].PlotXYAppend(auxptx, auxpty);
        //            }
        //        }
        //    }

        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        RefreshGraphAxisTimeView(time0, time1);
        //    }
        //}

        //private int[,] auxLastPlotPointMon0 = new int[3, 4];
        //private int[,] auxLastPlotPointMon1 = new int[3, 4];
        //private void RefreshGraphMON()
        //{
        //    grp1.Plots[8].LineColor = Color.LightSkyBlue;
        //    grp1.Plots[8].PointColor = Color.LightSkyBlue;
        //    grp1.Plots[8].LineStyle = LineStyle.Solid;
        //    grp1.Plots[10].LineColor = Color.MediumPurple;
        //    grp1.Plots[10].PointColor = Color.MediumPurple;
        //    grp1.Plots[10].LineStyle = LineStyle.Solid;
        //    grp1.Plots[12].LineColor = Color.OliveDrab;
        //    grp1.Plots[12].PointColor = Color.OliveDrab;
        //    grp1.Plots[12].LineStyle = LineStyle.Solid;
        //    grp1.Plots[14].LineColor = Color.SaddleBrown;
        //    grp1.Plots[14].PointColor = Color.SaddleBrown;
        //    grp1.Plots[14].LineStyle = LineStyle.Solid;
        //    grp1.Plots[16].LineColor = Color.HotPink;
        //    grp1.Plots[16].PointColor = Color.HotPink;
        //    grp1.Plots[16].LineStyle = LineStyle.Solid;
        //    grp1.Plots[18].LineColor = Color.Lime;
        //    grp1.Plots[18].PointColor = Color.Lime;
        //    grp1.Plots[18].LineStyle = LineStyle.Solid;
        //    grp1.Plots[20].LineColor = Color.SteelBlue;
        //    grp1.Plots[20].PointColor = Color.SteelBlue;
        //    grp1.Plots[20].LineStyle = LineStyle.Solid;
        //    grp1.Plots[22].LineColor = Color.SlateBlue;
        //    grp1.Plots[22].PointColor = Color.SlateBlue;
        //    grp1.Plots[22].LineStyle = LineStyle.Solid;
        //    grp1.Plots[24].LineColor = Color.DarkCyan;
        //    grp1.Plots[24].PointColor = Color.DarkCyan;
        //    grp1.Plots[24].LineStyle = LineStyle.Solid;
        //    grp1.Plots[26].LineColor = Color.DarkOrange;
        //    grp1.Plots[26].PointColor = Color.DarkOrange;
        //    grp1.Plots[26].LineStyle = LineStyle.Solid;
        //    grp1.Plots[28].LineColor = Color.Coral;
        //    grp1.Plots[28].PointColor = Color.Coral;
        //    grp1.Plots[28].LineStyle = LineStyle.Solid;
        //    grp1.Plots[30].LineColor = Color.Gray;
        //    grp1.Plots[30].PointColor = Color.Gray;
        //    grp1.Plots[30].LineStyle = LineStyle.Solid;

        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
        //    double maxval;
        //    double minval;
        //    double cmpval;

        //    int plotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[1].ly[0].Count;
        //    int appendcount = 0;
        //    int st = 0;
        //    if (plotcount == 0) return;
        //    if (plotcount == LastPlotPoint) return;
        //    if (plotcount < LastPlotPoint)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st = LastPlotPoint;
        //        appendcount = plotcount - LastPlotPoint;
        //        LastPlotPoint = plotcount;
        //    }
        //    int nPlot1 = 1;
        //    //int nPlot2 = 2;
        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx = new double[appendcount];
        //    double[] pty = new double[appendcount];
        //    double time0 = -1.0;
        //    double time1 = -1.0;
        //    //double[] auxptx = new double[auxappendcount];
        //    //double[] auxpty = new double[auxappendcount];

        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //    {
        //        tx = rtgrp.plot[0].lx[0].ToArray();
        //        ty = rtgrp.plot[0].ly[0].ToArray();
        //        Array.Copy(tx, st, ptx, 0, appendcount);
        //        Array.Copy(ty, st, pty, 0, appendcount);
        //        time0 = ptx[appendcount - 1];
        //        grp1.Plots[0 + nPlot1].PlotXYAppend(ptx, pty);
        //        //grp1.Plots[0+nPlot1].PlotXY(rtgrp.plot[0].lx[0].ToArray(), rtgrp.plot[0].ly[0].ToArray());

        //        cmpval = Math.Abs(rtgrp.plot[0].Maxval[0]);
        //        if (cmpval < Math.Abs(rtgrp.plot[0].Minval[0]))
        //        {
        //            cmpval = Math.Abs(rtgrp.plot[0].Minval[0]);
        //        }

        //        maxval = rtgrp.plot[0].Maxval[0] + (cmpval * GrpSpaceRate);
        //        minval = rtgrp.plot[0].Minval[0] - (cmpval * GrpSpaceRate);
        //        if (minval == maxval && maxval == 0.0)
        //        {
        //            minval = -1.0;
        //            maxval = +1.0;
        //        }
        //        grp1.YAxes[0].Range = new Range(minval, maxval);

        //        tx = rtgrp.plot[1].lx[0].ToArray();
        //        ty = rtgrp.plot[1].ly[0].ToArray();
        //        Array.Copy(tx, st, ptx, 0, appendcount);
        //        Array.Copy(ty, st, pty, 0, appendcount);
        //        grp1.Plots[1 + nPlot1].PlotXYAppend(ptx, pty);
        //        //grp1.Plots[1+nPlot1].PlotXY(rtgrp.plot[1].lx[0].ToArray(), rtgrp.plot[1].ly[0].ToArray());
        //        cmpval = Math.Abs(rtgrp.plot[1].Maxval[0]);
        //        if (cmpval < Math.Abs(rtgrp.plot[1].Minval[0]))
        //        {
        //            cmpval = Math.Abs(rtgrp.plot[1].Minval[0]);
        //        }

        //        maxval = rtgrp.plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
        //        minval = rtgrp.plot[1].Minval[0] - (cmpval * GrpSpaceRate);
        //        if (minval == maxval && maxval == 0.0)
        //        {
        //            minval = -1.0;
        //            maxval = +1.0;
        //        }
        //        grp1.YAxes[1].Range = new Range(minval, maxval);

        //        for (int bd = 0; bd < 3; bd++)
        //        {
        //            for (int ch = 0; ch < 4; ch++)
        //            {
        //                int plotIndex = 7 + (bd * 8) + (ch * 2);

        //                int auxplotcount = rtauxgrp.plot[0].ly[bd * 4 + ch].Count;
        //                int auxappendcount = auxplotcount - auxLastPlotPointMon0[bd, ch];

        //                if (auxappendcount > 0)
        //                {
        //                    double[] auxptx = new double[auxappendcount];
        //                    double[] auxpty = new double[auxappendcount];
        //                    Array.Copy(rtauxgrp.plot[0].lx[bd * 4 + ch].ToArray(), auxLastPlotPointMon0[bd, ch], auxptx, 0, auxappendcount);
        //                    Array.Copy(rtauxgrp.plot[0].ly[bd * 4 + ch].ToArray(), auxLastPlotPointMon0[bd, ch], auxpty, 0, auxappendcount);

        //                    //grp1.Plots[plotIndex].PlotXYAppend(auxptx, auxpty);
        //                    //auxLastPlotPointMon0[bd, ch] = auxplotcount;

        //                    //cmpval = Math.Abs(rtauxgrp.plot[0].Maxval[bd * 4 + ch]);
        //                    //if (cmpval < Math.Abs(rtauxgrp.plot[0].Minval[bd * 4 + ch]))
        //                    //    cmpval = Math.Abs(rtauxgrp.plot[0].Minval[bd * 4 + ch]);

        //                    //maxval = rtauxgrp.plot[0].Maxval[bd * 4 + ch] + (cmpval * GrpSpaceRate);
        //                    //minval = rtauxgrp.plot[0].Minval[bd * 4 + ch] - (cmpval * GrpSpaceRate);

        //                    //if (minval == maxval && maxval == 0.0)
        //                    //{
        //                    //    minval = -1.0;
        //                    //    maxval = +1.0;
        //                    //}
        //                    //grp1.YAxes[plotIndex].Range = new Range(minval, maxval);
        //                }

        //                int auxplotcount2 = rtauxgrp.plot[1].ly[bd * 4 + ch].Count;
        //                int auxappendcount2 = auxplotcount2 - auxLastPlotPointMon1[bd, ch];

        //                if (auxappendcount2 > 0)
        //                {
        //                    double[] auxptx = new double[auxappendcount2];
        //                    double[] auxpty = new double[auxappendcount2];
        //                    Array.Copy(rtauxgrp.plot[1].lx[bd * 4 + ch].ToArray(), auxLastPlotPointMon1[bd, ch], auxptx, 0, auxappendcount2);
        //                    Array.Copy(rtauxgrp.plot[1].ly[bd * 4 + ch].ToArray(), auxLastPlotPointMon1[bd, ch], auxpty, 0, auxappendcount2);

        //                    //int plotIndexBack = plotIndex + 1;
        //                    //grp1.Plots[plotIndexBack].PlotXYAppend(auxptx, auxpty);
        //                    //auxLastPlotPointMon1[bd, ch] = auxplotcount2;

        //                    //cmpval = Math.Abs(rtauxgrp.plot[1].Maxval[bd * 4 + ch]);
        //                    //if (cmpval < Math.Abs(rtauxgrp.plot[1].Minval[bd * 4 + ch]))
        //                    //    cmpval = Math.Abs(rtauxgrp.plot[1].Minval[bd * 4 + ch]);

        //                    //maxval = rtauxgrp.plot[1].Maxval[bd * 4 + ch] + (cmpval * GrpSpaceRate);
        //                    //minval = rtauxgrp.plot[1].Minval[bd * 4 + ch] - (cmpval * GrpSpaceRate);

        //                    //if (minval == maxval && maxval == 0.0)
        //                    //{
        //                    //    minval = -1.0;
        //                    //    maxval = +1.0;
        //                    //}
        //                    //grp1.YAxes[plotIndexBack].Range = new Range(minval, maxval);
        //                }
        //            }
        //        }
        //    }
        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        RefreshGraphAxisTimeView(time0, time1);
        //    }
        //}

        //private void RefreshGraphPRR()
        //{
        //    int i;
        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    //double maxval;
        //    //double minval;
        //    //double cmpval;
        //    if (gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt == 0) return;

        //    int plotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[3].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].Count;
        //    int appendcount = 0;
        //    int st = 0;
        //    if (plotcount == 0) return;
        //    if (plotcount == LastPlotPoint) return;


        //    if (plotcount < LastPlotPoint)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st = LastPlotPoint;
        //        appendcount = plotcount - LastPlotPoint;
        //        LastPlotPoint = plotcount;
        //    }
        //    int nPlot1 = 1;
        //    int nPlot2 = 2;
        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx = new double[appendcount];
        //    double[] pty = new double[appendcount];
        //    double[] ptx1 = new double[appendcount];
        //    double[] pty1 = new double[appendcount];
        //    double time0 = -1.0;
        //    double time1 = -1.0;
        //    int count;

        //    for (i = 0; i < gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt; i++)
        //    {
        //        ptx.Initialize();
        //        pty.Initialize();
        //        ptx1.Initialize();
        //        pty1.Initialize();
        //        if (i < 2)
        //        {
        //            if (i == 1)
        //            {
        //                if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //                {
        //                    tx = rtgrp.plot[0].lx[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
        //                    ty = rtgrp.plot[0].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
        //                    count = tx.Length;
        //                    if (count > appendcount) count = appendcount;
        //                    if (count > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, count);
        //                        Array.Copy(ty, st, pty, 0, count);
        //                        grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[count - 1];
        //                    }
        //                }
        //            }
        //            else
        //            {
        //                if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //                {
        //                    tx = rtgrp.plot[0].lx[i].ToArray();
        //                    ty = rtgrp.plot[0].ly[i].ToArray();
        //                    count = tx.Length;
        //                    if (count > appendcount) count = appendcount;
        //                    if (count > 0)
        //                    {
        //                        Array.Copy(tx, st, ptx, 0, count);
        //                        Array.Copy(ty, st, pty, 0, count);
        //                        grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
        //                        time0 = ptx[count - 1];
        //                    }
        //                }
        //            }
        //        }

        //        if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //        {
        //            tx = rtgrp.plot[2].lx[i].ToArray();
        //            ty = rtgrp.plot[2].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + nPlot2].PlotXYAppend(ptx, pty);
        //            time1 = ptx[appendcount - 1];


        //            tx = rtgrp.plot[3].lx[i].ToArray();
        //            ty = rtgrp.plot[3].ly[i].ToArray();
        //            Array.Copy(tx, st, ptx, 0, appendcount);
        //            Array.Copy(ty, st, pty, 0, appendcount);
        //            grp2.Plots[i + 3 + nPlot2].PlotXYAppend(ptx, pty);
        //        }
        //    }

        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        RefreshGraphAxisTimeView(time0, time1);
        //    }
        //}

        private void RefreshGraphPRR()
        {
            /*grp1.Plots[8].LineColor = Color.LightSkyBlue;grp1.Plots[8].PointColor = Color.LightSkyBlue;grp1.Plots[8].LineStyle = LineStyle.Solid;
            grp1.Plots[10].LineColor = Color.MediumPurple;grp1.Plots[10].PointColor = Color.MediumPurple;grp1.Plots[10].LineStyle = LineStyle.Solid;
            grp1.Plots[12].LineColor = Color.OliveDrab;grp1.Plots[12].PointColor = Color.OliveDrab;grp1.Plots[12].LineStyle = LineStyle.Solid;
            grp1.Plots[14].LineColor = Color.SaddleBrown;grp1.Plots[14].PointColor = Color.SaddleBrown;grp1.Plots[14].LineStyle = LineStyle.Solid;
            grp1.Plots[16].LineColor = Color.HotPink;grp1.Plots[16].PointColor = Color.HotPink;grp1.Plots[16].LineStyle = LineStyle.Solid;
            grp1.Plots[18].LineColor = Color.Lime;grp1.Plots[18].PointColor = Color.Lime;grp1.Plots[18].LineStyle = LineStyle.Solid;
            grp1.Plots[20].LineColor = Color.SteelBlue;grp1.Plots[20].PointColor = Color.SteelBlue;grp1.Plots[20].LineStyle = LineStyle.Solid;
            grp1.Plots[22].LineColor = Color.SlateBlue;grp1.Plots[22].PointColor = Color.SlateBlue;grp1.Plots[22].LineStyle = LineStyle.Solid;
            grp1.Plots[24].LineColor = Color.DarkCyan;grp1.Plots[24].PointColor = Color.DarkCyan;grp1.Plots[24].LineStyle = LineStyle.Solid;
            grp1.Plots[26].LineColor = Color.DarkOrange;grp1.Plots[26].PointColor = Color.DarkOrange;grp1.Plots[26].LineStyle = LineStyle.Solid;
            grp1.Plots[28].LineColor = Color.Coral;grp1.Plots[28].PointColor = Color.Coral;grp1.Plots[28].LineStyle = LineStyle.Solid;
            grp1.Plots[30].LineColor = Color.Gray;grp1.Plots[30].PointColor = Color.Gray;grp1.Plots[30].LineStyle = LineStyle.Solid;

            grp2.Plots[10].LineColor = Color.Crimson;grp2.Plots[10].PointColor = Color.Crimson;grp2.Plots[10].LineStyle = LineStyle.Solid;
            grp2.Plots[11].LineColor = Color.DodgerBlue;grp2.Plots[11].PointColor = Color.DodgerBlue;grp2.Plots[11].LineStyle = LineStyle.Solid;
            grp2.Plots[14].LineColor = Color.Chartreuse;grp2.Plots[14].PointColor = Color.Chartreuse;grp2.Plots[14].LineStyle = LineStyle.Solid;
            grp2.Plots[15].LineColor = Color.Indigo;grp2.Plots[15].PointColor = Color.Indigo;grp2.Plots[15].LineStyle = LineStyle.Solid;
            grp2.Plots[18].LineColor = Color.Turquoise;grp2.Plots[18].PointColor = Color.Turquoise;grp2.Plots[18].LineStyle = LineStyle.Solid;
            grp2.Plots[19].LineColor = Color.DarkSlateGray;grp2.Plots[19].PointColor = Color.DarkSlateGray;grp2.Plots[19].LineStyle = LineStyle.Solid;
            grp2.Plots[22].LineColor = Color.Orchid;grp2.Plots[22].PointColor = Color.Orchid;grp2.Plots[22].LineStyle = LineStyle.Solid;
            grp2.Plots[23].LineColor = Color.Tomato;grp2.Plots[23].PointColor = Color.Tomato;grp2.Plots[23].LineStyle = LineStyle.Solid;
            grp2.Plots[26].LineColor = Color.RoyalBlue;grp2.Plots[26].PointColor = Color.RoyalBlue;grp2.Plots[26].LineStyle = LineStyle.Solid;
            grp2.Plots[27].LineColor = Color.Maroon;grp2.Plots[27].PointColor = Color.Maroon;grp2.Plots[27].LineStyle = LineStyle.Solid;
            grp2.Plots[30].LineColor = Color.SpringGreen;grp2.Plots[30].PointColor = Color.SpringGreen;grp2.Plots[30].LineStyle = LineStyle.Solid;
            grp2.Plots[31].LineColor = Color.DarkOliveGreen;grp2.Plots[31].PointColor = Color.DarkOliveGreen;grp2.Plots[31].LineStyle = LineStyle.Solid;
            grp2.Plots[34].LineColor = Color.Plum;grp2.Plots[34].PointColor = Color.Plum;grp2.Plots[34].LineStyle = LineStyle.Solid;
            grp2.Plots[35].LineColor = Color.Navy;grp2.Plots[35].PointColor = Color.Navy;grp2.Plots[35].LineStyle = LineStyle.Solid;
            grp2.Plots[38].LineColor = Color.Khaki;grp2.Plots[38].PointColor = Color.Khaki;grp2.Plots[38].LineStyle = LineStyle.Solid;
            grp2.Plots[39].LineColor = Color.Peru;grp2.Plots[39].PointColor = Color.Peru;grp2.Plots[39].LineStyle = LineStyle.Solid;
            grp2.Plots[42].LineColor = Color.Aquamarine;grp2.Plots[42].PointColor = Color.Aquamarine;grp2.Plots[42].LineStyle = LineStyle.Solid;
            grp2.Plots[43].LineColor = Color.ForestGreen;grp2.Plots[43].PointColor = Color.ForestGreen;grp2.Plots[43].LineStyle = LineStyle.Solid;
            grp2.Plots[46].LineColor = Color.MediumOrchid;grp2.Plots[46].PointColor = Color.MediumOrchid;grp2.Plots[46].LineStyle = LineStyle.Solid;
            grp2.Plots[47].LineColor = Color.DarkRed;grp2.Plots[47].PointColor = Color.DarkRed;grp2.Plots[47].LineStyle = LineStyle.Solid;
            grp2.Plots[50].LineColor = Color.CornflowerBlue;grp2.Plots[50].PointColor = Color.CornflowerBlue;grp2.Plots[50].LineStyle = LineStyle.Solid;
            grp2.Plots[51].LineColor = Color.MidnightBlue;grp2.Plots[51].PointColor = Color.MidnightBlue;grp2.Plots[51].LineStyle = LineStyle.Solid;
            grp2.Plots[54].LineColor = Color.LightCoral;grp2.Plots[54].PointColor = Color.LightCoral;grp2.Plots[54].LineStyle = LineStyle.Solid;
            grp2.Plots[55].LineColor = Color.DeepSkyBlue;grp2.Plots[55].PointColor = Color.DeepSkyBlue;grp2.Plots[55].LineStyle = LineStyle.Solid;

            int i;
            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;

            if (gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt == 0) return;

            int plotcount = rtgrp.plot[3].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].Count;
            int appendcount = 0;
            int st = 0;
            if (plotcount == 0) return;
            if (plotcount == LastPlotPoint) return;

            if (plotcount < LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st = LastPlotPoint;
                appendcount = plotcount - LastPlotPoint;
                LastPlotPoint = plotcount;
            }

            int nPlot1 = 1;
            int nPlot2 = 2;
            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[appendcount];
            double[] pty = new double[appendcount];
            double[] ptx1 = new double[appendcount];
            double[] pty1 = new double[appendcount];
            double time0 = -1.0;
            double time1 = -1.0;
            int count;

            for (i = 0; i < gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt; i++)
            {
                ptx.Initialize();
                pty.Initialize();
                ptx1.Initialize();
                pty1.Initialize();
                if (i < 2)
                {
                    if (i == 1)
                    {
                        if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
                        {
                            tx = rtgrp.plot[0].lx[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
                            ty = rtgrp.plot[0].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[0].lx[0].ToArray(); // Aux1 ch0
                            ty = rtauxgrp.plot[0].ly[0].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[7].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[0].lx[1].ToArray();
                            ty = rtauxgrp.plot[0].ly[1].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[9].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[0].lx[2].ToArray();
                            ty = rtauxgrp.plot[0].ly[2].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[11].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[0].lx[3].ToArray();
                            ty = rtauxgrp.plot[0].ly[3].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[13].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[0].lx[4].ToArray();
                            ty = rtauxgrp.plot[0].ly[4].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[15].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[0].lx[5].ToArray();
                            ty = rtauxgrp.plot[0].ly[5].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[17].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[0].lx[6].ToArray();
                            ty = rtauxgrp.plot[0].ly[6].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[19].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[0].lx[7].ToArray();
                            ty = rtauxgrp.plot[0].ly[7].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[21].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[0].lx[8].ToArray();
                            ty = rtauxgrp.plot[0].ly[8].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[23].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[0].lx[9].ToArray();
                            ty = rtauxgrp.plot[0].ly[9].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[25].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[0].lx[10].ToArray();
                            ty = rtauxgrp.plot[0].ly[10].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[27].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[0].lx[11].ToArray();
                            ty = rtauxgrp.plot[0].ly[11].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[29].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                        }
                    }
                    else
                    {
                        if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
                        {
                            tx = rtgrp.plot[0].lx[i].ToArray();
                            ty = rtgrp.plot[0].ly[i].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[i + nPlot1].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[1].lx[0].ToArray();
                            ty = rtauxgrp.plot[1].ly[0].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[8].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[1].lx[1].ToArray();
                            ty = rtauxgrp.plot[1].ly[1].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[10].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[1].lx[2].ToArray();
                            ty = rtauxgrp.plot[1].ly[2].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[12].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[1].lx[3].ToArray();
                            ty = rtauxgrp.plot[1].ly[3].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[14].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[1].lx[4].ToArray();
                            ty = rtauxgrp.plot[1].ly[4].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[16].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[1].lx[5].ToArray();
                            ty = rtauxgrp.plot[1].ly[5].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[18].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[1].lx[6].ToArray();
                            ty = rtauxgrp.plot[1].ly[6].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[20].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }

                            tx = rtauxgrp.plot[1].lx[7].ToArray();
                            ty = rtauxgrp.plot[1].ly[7].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[22].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[1].lx[8].ToArray();
                            ty = rtauxgrp.plot[1].ly[8].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[24].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[1].lx[9].ToArray();
                            ty = rtauxgrp.plot[1].ly[9].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[26].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[1].lx[10].ToArray();
                            ty = rtauxgrp.plot[1].ly[10].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[28].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                            tx = rtauxgrp.plot[1].lx[11].ToArray();
                            ty = rtauxgrp.plot[1].ly[11].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[30].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                        }                     
                    }
                }

                if (GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
                {
                    tx = rtgrp.plot[2].lx[i].ToArray();
                    ty = rtgrp.plot[2].ly[i].ToArray();
                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);
                    grp2.Plots[i + nPlot2].PlotXYAppend(ptx, pty);
                    time1 = ptx[appendcount - 1];

                    tx = rtgrp.plot[3].lx[i].ToArray();
                    ty = rtgrp.plot[3].ly[i].ToArray();
                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);
                    grp2.Plots[i + 3 + nPlot2].PlotXYAppend(ptx, pty);

                    // ==================================== // Aux1 ch0
                    tx = rtauxgrp.plot[4].lx[0].ToArray();
                    ty = rtauxgrp.plot[4].ly[0].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[8].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[0].ToArray();
                    ty = rtauxgrp.plot[5].ly[0].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[9].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[0].ToArray();
                    ty = rtauxgrp.plot[6].ly[0].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[10].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[0].ToArray();
                    ty = rtauxgrp.plot[7].ly[0].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[11].PlotXYAppend(ptx, pty);
                    }

                    // ==================================== // Aux1 ch1
                    tx = rtauxgrp.plot[4].lx[1].ToArray();
                    ty = rtauxgrp.plot[4].ly[1].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[12].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[1].ToArray();
                    ty = rtauxgrp.plot[5].ly[1].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[13].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[1].ToArray();
                    ty = rtauxgrp.plot[6].ly[1].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[14].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[1].ToArray();
                    ty = rtauxgrp.plot[7].ly[1].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[15].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux1 ch2
                    tx = rtauxgrp.plot[4].lx[2].ToArray();
                    ty = rtauxgrp.plot[4].ly[2].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[16].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[2].ToArray();
                    ty = rtauxgrp.plot[5].ly[2].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[17].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[2].ToArray();
                    ty = rtauxgrp.plot[6].ly[2].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[18].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[2].ToArray();
                    ty = rtauxgrp.plot[7].ly[2].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[19].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux1 ch3
                    tx = rtauxgrp.plot[4].lx[3].ToArray();
                    ty = rtauxgrp.plot[4].ly[3].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[20].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[3].ToArray();
                    ty = rtauxgrp.plot[5].ly[3].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[21].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[3].ToArray();
                    ty = rtauxgrp.plot[6].ly[3].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[22].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[3].ToArray();
                    ty = rtauxgrp.plot[7].ly[3].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[23].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux2 ch0
                    tx = rtauxgrp.plot[4].lx[4].ToArray();
                    ty = rtauxgrp.plot[4].ly[4].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[24].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[4].ToArray();
                    ty = rtauxgrp.plot[5].ly[4].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[25].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[4].ToArray();
                    ty = rtauxgrp.plot[6].ly[4].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[26].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[4].ToArray();
                    ty = rtauxgrp.plot[7].ly[4].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[27].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux2 ch1
                    tx = rtauxgrp.plot[4].lx[5].ToArray();
                    ty = rtauxgrp.plot[4].ly[5].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[28].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[5].ToArray();
                    ty = rtauxgrp.plot[5].ly[5].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[29].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[5].ToArray();
                    ty = rtauxgrp.plot[6].ly[5].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[30].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[5].ToArray();
                    ty = rtauxgrp.plot[7].ly[5].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[31].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux2 ch2
                    tx = rtauxgrp.plot[4].lx[6].ToArray();
                    ty = rtauxgrp.plot[4].ly[6].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[32].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[6].ToArray();
                    ty = rtauxgrp.plot[5].ly[6].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[33].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[6].ToArray();
                    ty = rtauxgrp.plot[6].ly[6].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[34].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[6].ToArray();
                    ty = rtauxgrp.plot[7].ly[6].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[35].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux2 ch3
                    tx = rtauxgrp.plot[4].lx[7].ToArray();
                    ty = rtauxgrp.plot[4].ly[7].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[36].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[7].ToArray();
                    ty = rtauxgrp.plot[5].ly[7].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[37].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[7].ToArray();
                    ty = rtauxgrp.plot[6].ly[7].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[38].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[7].ToArray();
                    ty = rtauxgrp.plot[7].ly[7].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[39].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux3 ch0
                    tx = rtauxgrp.plot[4].lx[8].ToArray();
                    ty = rtauxgrp.plot[4].ly[8].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[40].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[8].ToArray();
                    ty = rtauxgrp.plot[5].ly[8].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[41].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[8].ToArray();
                    ty = rtauxgrp.plot[6].ly[8].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[42].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[8].ToArray();
                    ty = rtauxgrp.plot[7].ly[8].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[43].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux3 ch1
                    tx = rtauxgrp.plot[4].lx[9].ToArray();
                    ty = rtauxgrp.plot[4].ly[9].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[44].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[9].ToArray();
                    ty = rtauxgrp.plot[5].ly[9].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[45].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[9].ToArray();
                    ty = rtauxgrp.plot[6].ly[9].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[46].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[9].ToArray();
                    ty = rtauxgrp.plot[7].ly[9].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[47].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux3 ch2
                    tx = rtauxgrp.plot[4].lx[10].ToArray();
                    ty = rtauxgrp.plot[4].ly[10].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[48].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[10].ToArray();
                    ty = rtauxgrp.plot[5].ly[10].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[49].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[10].ToArray();
                    ty = rtauxgrp.plot[6].ly[10].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[50].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[10].ToArray();
                    ty = rtauxgrp.plot[7].ly[10].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[51].PlotXYAppend(ptx, pty);
                    }
                    // ==================================== // Aux3 ch3
                    tx = rtauxgrp.plot[4].lx[11].ToArray();
                    ty = rtauxgrp.plot[4].ly[11].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[52].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[5].lx[11].ToArray();
                    ty = rtauxgrp.plot[5].ly[11].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[53].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[6].lx[11].ToArray();
                    ty = rtauxgrp.plot[6].ly[11].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[54].PlotXYAppend(ptx, pty);
                    }
                    tx = rtauxgrp.plot[7].lx[11].ToArray();
                    ty = rtauxgrp.plot[7].ly[11].ToArray();
                    count = tx.Length;
                    if (count > appendcount) count = appendcount;
                    if (count > 0)
                    {
                        Array.Copy(tx, st, ptx, 0, count);
                        Array.Copy(ty, st, pty, 0, count);
                        grp2.Plots[55].PlotXYAppend(ptx, pty);
                    }
                }
            }
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                RefreshGraphAxisTimeView(time0, time1);
            }*/
        }

        private void RefreshGraphMON()
        {
            /*grp1.Plots[8].LineColor = Color.LightSkyBlue;grp1.Plots[8].PointColor = Color.LightSkyBlue;grp1.Plots[8].LineStyle = LineStyle.Solid;
            grp1.Plots[10].LineColor = Color.MediumPurple;grp1.Plots[10].PointColor = Color.MediumPurple;grp1.Plots[10].LineStyle = LineStyle.Solid;
            grp1.Plots[12].LineColor = Color.OliveDrab;grp1.Plots[12].PointColor = Color.OliveDrab;grp1.Plots[12].LineStyle = LineStyle.Solid;
            grp1.Plots[14].LineColor = Color.SaddleBrown;grp1.Plots[14].PointColor = Color.SaddleBrown;grp1.Plots[14].LineStyle = LineStyle.Solid;
            grp1.Plots[16].LineColor = Color.HotPink;grp1.Plots[16].PointColor = Color.HotPink;grp1.Plots[16].LineStyle = LineStyle.Solid;
            grp1.Plots[18].LineColor = Color.Lime;grp1.Plots[18].PointColor = Color.Lime;grp1.Plots[18].LineStyle = LineStyle.Solid;
            grp1.Plots[20].LineColor = Color.SteelBlue;grp1.Plots[20].PointColor = Color.SteelBlue;grp1.Plots[20].LineStyle = LineStyle.Solid;
            grp1.Plots[22].LineColor = Color.SlateBlue;grp1.Plots[22].PointColor = Color.SlateBlue;grp1.Plots[22].LineStyle = LineStyle.Solid;
            grp1.Plots[24].LineColor = Color.DarkCyan;grp1.Plots[24].PointColor = Color.DarkCyan;grp1.Plots[24].LineStyle = LineStyle.Solid;
            grp1.Plots[26].LineColor = Color.DarkOrange;grp1.Plots[26].PointColor = Color.DarkOrange;grp1.Plots[26].LineStyle = LineStyle.Solid;
            grp1.Plots[28].LineColor = Color.Coral;grp1.Plots[28].PointColor = Color.Coral;grp1.Plots[28].LineStyle = LineStyle.Solid;
            grp1.Plots[30].LineColor = Color.Gray;grp1.Plots[30].PointColor = Color.Gray;grp1.Plots[30].LineStyle = LineStyle.Solid;

            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
            double maxval;
            double minval;
            double cmpval;

            int plotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[1].ly[0].Count;
            int appendcount = 0;
            int auxplotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[0].Count;
            int auxappendcount = 0;

            int st = 0;
            int auxst = 0;

            if (plotcount == 0) return;
            if (plotcount == LastPlotPoint) return;
            if (plotcount < LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st = LastPlotPoint;
                appendcount = plotcount - LastPlotPoint;
                LastPlotPoint = plotcount;

                //auxst = auxLastPlotPoint;
                //auxappendcount = auxplotcount - auxLastPlotPoint;
                //auxLastPlotPoint = auxplotcount;

                auxst = auxLastPlotPoint;
                auxappendcount = auxplotcount - auxLastPlotPoint;

                if (auxappendcount < 0)
                {
                    auxLastPlotPoint = 1;
                    auxappendcount = auxplotcount;
                }
                auxLastPlotPoint = auxplotcount;

            }


            int nPlot1 = 1;
            //int nPlot2 = 2;
            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[appendcount];
            double[] pty = new double[appendcount];
            double time0 = -1.0;
            double time1 = -1.0;

            double[] auxptx = new double[auxappendcount];
            double[] auxpty = new double[auxappendcount];
            //double[] auxptx = new double[auxappendcount];
            //double[] auxpty = new double[auxappendcount];

            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                tx = rtgrp.plot[0].lx[0].ToArray();
                ty = rtgrp.plot[0].ly[0].ToArray();
                Array.Copy(tx, st, ptx, 0, appendcount);
                Array.Copy(ty, st, pty, 0, appendcount);
                time0 = ptx[appendcount - 1];
                grp1.Plots[0 + nPlot1].PlotXYAppend(ptx, pty);
                //grp1.Plots[0+nPlot1].PlotXY(rtgrp.plot[0].lx[0].ToArray(), rtgrp.plot[0].ly[0].ToArray());

                tx = rtauxgrp.plot[0].lx[0].ToArray();
                ty = rtauxgrp.plot[0].ly[0].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[7].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[1].ToArray();
                ty = rtauxgrp.plot[0].ly[1].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[9].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[2].ToArray();
                ty = rtauxgrp.plot[0].ly[2].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[11].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[3].ToArray();
                ty = rtauxgrp.plot[0].ly[3].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[13].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[4].ToArray();
                ty = rtauxgrp.plot[0].ly[4].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[15].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[5].ToArray();
                ty = rtauxgrp.plot[0].ly[5].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[17].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[6].ToArray();
                ty = rtauxgrp.plot[0].ly[6].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[19].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[7].ToArray();
                ty = rtauxgrp.plot[0].ly[7].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[21].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[8].ToArray();
                ty = rtauxgrp.plot[0].ly[8].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[23].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[9].ToArray();
                ty = rtauxgrp.plot[0].ly[9].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[25].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[10].ToArray();
                ty = rtauxgrp.plot[0].ly[10].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[27].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[0].lx[11].ToArray();
                ty = rtauxgrp.plot[0].ly[11].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[29].PlotXYAppend(auxptx, auxpty);
                }

                double globalMax = rtgrp.plot[0].Maxval[0];
                double globalMin = rtgrp.plot[0].Minval[0];
                for (int i = 0; i < 12; i++)
                {
                    double auxMax = rtauxgrp.plot[0].Maxval[i];
                    double auxMin = rtauxgrp.plot[0].Minval[i];
                    if (auxMax != 0 || auxMin != 0)
                    {
                        if (auxMax > globalMax) globalMax = auxMax;
                        if (auxMin < globalMin) globalMin = auxMin;
                    }
                }

                cmpval = Math.Abs(globalMax);
                if (cmpval < Math.Abs(globalMin)) cmpval = Math.Abs(globalMin);

                maxval = globalMax + (cmpval * GrpSpaceRate);
                minval = globalMin - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    minval -= minval * 0.1;
                    maxval += maxval * 0.1;
                }
                else if (maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }

                grp1.YAxes[0].Range = new Range(minval, maxval);

                tx = rtgrp.plot[1].lx[0].ToArray();
                ty = rtgrp.plot[1].ly[0].ToArray();
                Array.Copy(tx, st, ptx, 0, appendcount);
                Array.Copy(ty, st, pty, 0, appendcount);
                grp1.Plots[1 + nPlot1].PlotXYAppend(ptx, pty);
                //grp1.Plots[1+nPlot1].PlotXY(rtgrp.plot[1].lx[0].ToArray(), rtgrp.plot[1].ly[0].ToArray());

                tx = rtauxgrp.plot[1].lx[0].ToArray();
                ty = rtauxgrp.plot[1].ly[0].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[8].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[1].ToArray();
                ty = rtauxgrp.plot[1].ly[1].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[10].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[2].ToArray();
                ty = rtauxgrp.plot[1].ly[2].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[12].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[3].ToArray();
                ty = rtauxgrp.plot[1].ly[3].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[14].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[4].ToArray();
                ty = rtauxgrp.plot[1].ly[4].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[16].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[5].ToArray();
                ty = rtauxgrp.plot[1].ly[5].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[18].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[6].ToArray();
                ty = rtauxgrp.plot[1].ly[6].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[20].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[7].ToArray();
                ty = rtauxgrp.plot[1].ly[7].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[22].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[8].ToArray();
                ty = rtauxgrp.plot[1].ly[8].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[24].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[9].ToArray();
                ty = rtauxgrp.plot[1].ly[9].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[26].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[10].ToArray();
                ty = rtauxgrp.plot[1].ly[10].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[28].PlotXYAppend(auxptx, auxpty);
                }
                tx = rtauxgrp.plot[1].lx[11].ToArray();
                ty = rtauxgrp.plot[1].ly[11].ToArray();
                if (auxappendcount > 0 && tx.Length >= auxst + auxappendcount && ty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(tx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(ty, auxst, auxpty, 0, auxappendcount);
                    //time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[30].PlotXYAppend(auxptx, auxpty);
                }

                //cmpval = Math.Abs(rtgrp.plot[1].Maxval[0]);
                //if (cmpval < Math.Abs(rtgrp.plot[1].Minval[0]))
                //{
                //    cmpval = Math.Abs(rtgrp.plot[1].Minval[0]);
                //}

                //maxval = rtgrp.plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
                //minval = rtgrp.plot[1].Minval[0] - (cmpval * GrpSpaceRate);
                //if (minval == maxval && maxval == 0.0)
                //{
                //    minval = -1.0;
                //    maxval = +1.0;
                //}

                //grp1.YAxes[1].Range = new Range(minval, maxval);

                cmpval = Math.Abs(rtgrp.plot[1].Maxval[0]);
                if (cmpval < Math.Abs(rtgrp.plot[1].Minval[0]))
                    cmpval = Math.Abs(rtgrp.plot[1].Minval[0]);

                maxval = rtgrp.plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
                minval = rtgrp.plot[1].Minval[0] - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    if (minval == 0.0)
                    {
                        minval = -1.0;
                        maxval = +1.0;
                    }
                    else
                    {
                        double offset = Math.Abs(minval) * 0.05; // 5% 여유
                        if (offset == 0) offset = 0.1;
                        minval -= offset;
                        maxval += offset;
                    }
                }

                grp1.YAxes[1].Range = new Range(minval, maxval);

            }
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                RefreshGraphAxisTimeView(time0, time1);
            }*/
        }

        //private void RefreshGraphDCH()
        //{
        //    grp1.Plots[8].LineColor = Color.LightSkyBlue;
        //    grp1.Plots[8].PointColor = Color.LightSkyBlue;
        //    grp1.Plots[8].LineStyle = LineStyle.Solid;
        //    grp1.Plots[10].LineColor = Color.MediumPurple;
        //    grp1.Plots[10].PointColor = Color.MediumPurple;
        //    grp1.Plots[10].LineStyle = LineStyle.Solid;
        //    grp1.Plots[12].LineColor = Color.OliveDrab;
        //    grp1.Plots[12].PointColor = Color.OliveDrab;
        //    grp1.Plots[12].LineStyle = LineStyle.Solid;
        //    grp1.Plots[14].LineColor = Color.SaddleBrown;
        //    grp1.Plots[14].PointColor = Color.SaddleBrown;
        //    grp1.Plots[14].LineStyle = LineStyle.Solid;
        //    grp1.Plots[16].LineColor = Color.HotPink;
        //    grp1.Plots[16].PointColor = Color.HotPink;
        //    grp1.Plots[16].LineStyle = LineStyle.Solid;
        //    grp1.Plots[18].LineColor = Color.Lime;
        //    grp1.Plots[18].PointColor = Color.Lime;
        //    grp1.Plots[18].LineStyle = LineStyle.Solid;
        //    grp1.Plots[20].LineColor = Color.SteelBlue;
        //    grp1.Plots[20].PointColor = Color.SteelBlue;
        //    grp1.Plots[20].LineStyle = LineStyle.Solid;
        //    grp1.Plots[22].LineColor = Color.SlateBlue;
        //    grp1.Plots[22].PointColor = Color.SlateBlue;
        //    grp1.Plots[22].LineStyle = LineStyle.Solid;
        //    grp1.Plots[24].LineColor = Color.DarkCyan;
        //    grp1.Plots[24].PointColor = Color.DarkCyan;
        //    grp1.Plots[24].LineStyle = LineStyle.Solid;
        //    grp1.Plots[26].LineColor = Color.DarkOrange;
        //    grp1.Plots[26].PointColor = Color.DarkOrange;
        //    grp1.Plots[26].LineStyle = LineStyle.Solid;
        //    grp1.Plots[28].LineColor = Color.Coral;
        //    grp1.Plots[28].PointColor = Color.Coral;
        //    grp1.Plots[28].LineStyle = LineStyle.Solid;
        //    grp1.Plots[30].LineColor = Color.Gray;
        //    grp1.Plots[30].PointColor = Color.Gray;
        //    grp1.Plots[30].LineStyle = LineStyle.Solid;

        //    st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
        //    st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
        //    double maxval;
        //    double minval;
        //    double cmpval;

        //    int plotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[1].ly[0].Count;
        //    int appendcount = 0;
        //    int auxplotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[0].Count;
        //    int auxappendcount = 0;

        //    int st = 0;
        //    int auxst = 0;

        //    if (plotcount == 0) return;
        //    if (plotcount == LastPlotPoint) return;
        //    if (plotcount < LastPlotPoint)
        //    {
        //        InitGraphType();
        //    }
        //    else
        //    {
        //        st = LastPlotPoint;
        //        appendcount = plotcount - LastPlotPoint;
        //        LastPlotPoint = plotcount;

        //        auxst = auxLastPlotPoint1;
        //        auxappendcount = auxplotcount - auxLastPlotPoint1;
        //        auxLastPlotPoint1 = auxplotcount;
        //    }
        //    int nPlot1 = 1;
        //    //int nPlot2 = 2;
        //    double[] tx = null;
        //    double[] ty = null;
        //    double[] ptx = new double[appendcount];
        //    double[] pty = new double[appendcount];
        //    //double[] auxptx = new double[auxappendcount];
        //    //double[] auxpty = new double[auxappendcount];
        //    double time0 = -1.0;
        //    double time1 = -1.0;
        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
        //    {
        //        tx = rtgrp.plot[0].lx[0].ToArray();
        //        ty = rtgrp.plot[0].ly[0].ToArray();
        //        Array.Copy(tx, st, ptx, 0, appendcount);
        //        Array.Copy(ty, st, pty, 0, appendcount);
        //        time0 = ptx[appendcount - 1];
        //        grp1.Plots[0 + nPlot1].PlotXYAppend(ptx, pty);

        //        cmpval = Math.Abs(rtgrp.plot[0].Maxval[0]);
        //        if (cmpval < Math.Abs(rtgrp.plot[0].Minval[0]))
        //        {
        //            cmpval = Math.Abs(rtgrp.plot[0].Minval[0]);
        //        }

        //        maxval = rtgrp.plot[0].Maxval[0] + (cmpval * GrpSpaceRate);
        //        minval = rtgrp.plot[0].Minval[0] - (cmpval * GrpSpaceRate);
        //        if (minval == maxval && maxval == 0.0)
        //        {
        //            minval = -1.0;
        //            maxval = +1.0;
        //        }
        //        grp1.YAxes[0].Range = new Range(minval, maxval);

        //        tx = rtgrp.plot[1].lx[0].ToArray();
        //        ty = rtgrp.plot[1].ly[0].ToArray();
        //        Array.Copy(tx, st, ptx, 0, appendcount);
        //        Array.Copy(ty, st, pty, 0, appendcount);
        //        grp1.Plots[1 + nPlot1].PlotXYAppend(ptx, pty);
        //        //grp1.Plots[1 + nPlot1].PlotXY(rtgrp.plot[1].lx[0].ToArray(), rtgrp.plot[1].ly[0].ToArray());
        //        cmpval = Math.Abs(rtgrp.plot[1].Maxval[0]);
        //        if (cmpval < Math.Abs(rtgrp.plot[1].Minval[0]))
        //        {
        //            cmpval = Math.Abs(rtgrp.plot[1].Minval[0]);
        //        }

        //        maxval = rtgrp.plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
        //        minval = rtgrp.plot[1].Minval[0] - (cmpval * GrpSpaceRate);
        //        if (minval == maxval && maxval == 0.0)
        //        {
        //            minval = -1.0;
        //            maxval = +1.0;
        //        }
        //        grp1.YAxes[1].Range = new Range(minval, maxval);

        //        for (int bd = 0; bd < 3; bd++) // AUX1~AUX3
        //        {
        //            for (int ch = 0; ch < 4; ch++) // Ch0~Ch3
        //            {
        //                int auxplotcountEoc = rtauxgrp.plot[0].ly[bd * 4 + ch].Count;
        //                int auxappendcountEoc = auxplotcountEoc - auxLastPlotPointMon0[bd, ch];

        //                if (auxappendcountEoc > 0)
        //                {
        //                    double[] auxptx = new double[auxappendcountEoc];
        //                    double[] auxpty = new double[auxappendcountEoc];

        //                    Array.Copy(rtauxgrp.plot[0].lx[bd * 4 + ch].ToArray(), auxLastPlotPointMon0[bd, ch], auxptx, 0, auxappendcountEoc);
        //                    Array.Copy(rtauxgrp.plot[0].ly[bd * 4 + ch].ToArray(), auxLastPlotPointMon0[bd, ch], auxpty, 0, auxappendcountEoc);

        //                    int plotIndexEoc = 7 + (bd * 8) + (ch * 2);
        //                    grp1.Plots[plotIndexEoc].PlotXYAppend(auxptx, auxpty);

        //                    cmpval = Math.Abs(rtauxgrp.plot[0].Maxval[bd * 4 + ch]);
        //                    if (cmpval < Math.Abs(rtauxgrp.plot[0].Minval[bd * 4 + ch]))
        //                        cmpval = Math.Abs(rtauxgrp.plot[0].Minval[bd * 4 + ch]);

        //                    maxval = rtauxgrp.plot[0].Maxval[bd * 4 + ch] + (cmpval * GrpSpaceRate);
        //                    minval = rtauxgrp.plot[0].Minval[bd * 4 + ch] - (cmpval * GrpSpaceRate);

        //                    if (minval == maxval && maxval == 0.0)
        //                    {
        //                        minval = -1.0;
        //                        maxval = +1.0;
        //                    }
        //                    grp1.YAxes[plotIndexEoc].Range = new Range(minval, maxval);
        //                    auxLastPlotPointMon0[bd, ch] = auxplotcountEoc;
        //                }

        //                int auxplotcountTemp = rtauxgrp.plot[1].ly[bd * 4 + ch].Count;
        //                int auxappendcountTemp = auxplotcountTemp - auxLastPlotPointMon1[bd, ch];

        //                if (auxappendcountEoc > 0)
        //                {
        //                    double[] auxptx = new double[auxappendcountEoc];
        //                    double[] auxpty = new double[auxappendcountEoc];

        //                    Array.Copy(rtauxgrp.plot[0].lx[bd * 4 + ch].ToArray(), auxLastPlotPointMon0[bd, ch], auxptx, 0, auxappendcountEoc);
        //                    Array.Copy(rtauxgrp.plot[0].ly[bd * 4 + ch].ToArray(), auxLastPlotPointMon0[bd, ch], auxpty, 0, auxappendcountEoc);

        //                    int plotIndexEoc = 7 + (bd * 8) + (ch * 2);
        //                    grp1.Plots[plotIndexEoc].PlotXYAppend(auxptx, auxpty);

        //                    cmpval = Math.Abs(rtauxgrp.plot[0].Maxval[bd * 4 + ch]);
        //                    if (cmpval < Math.Abs(rtauxgrp.plot[0].Minval[bd * 4 + ch]))
        //                        cmpval = Math.Abs(rtauxgrp.plot[0].Minval[bd * 4 + ch]);

        //                    maxval = rtauxgrp.plot[0].Maxval[bd * 4 + ch] + (cmpval * GrpSpaceRate);
        //                    minval = rtauxgrp.plot[0].Minval[bd * 4 + ch] - (cmpval * GrpSpaceRate);

        //                    if (minval == maxval && maxval == 0.0)
        //                    {
        //                        minval = -1.0;
        //                        maxval = +1.0;
        //                    }

        //                    grp1.YAxes[plotIndexEoc].Range = new Range(minval, maxval);
        //                    auxLastPlotPointMon0[bd, ch] = auxplotcountEoc;
        //                }
        //            }
        //        }        
        //    }
        //    if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
        //    {
        //        RefreshGraphAxisTimeView(time0, time1);
        //    }
        //}
        private void RefreshGraphDCH()
        {
            /*grp1.Plots[8].LineColor = Color.LightSkyBlue;grp1.Plots[8].PointColor = Color.LightSkyBlue;grp1.Plots[8].LineStyle = LineStyle.Solid;
            grp1.Plots[10].LineColor = Color.MediumPurple;grp1.Plots[10].PointColor = Color.MediumPurple;grp1.Plots[10].LineStyle = LineStyle.Solid;
            grp1.Plots[12].LineColor = Color.OliveDrab;grp1.Plots[12].PointColor = Color.OliveDrab;grp1.Plots[12].LineStyle = LineStyle.Solid;
            grp1.Plots[14].LineColor = Color.SaddleBrown;grp1.Plots[14].PointColor = Color.SaddleBrown;grp1.Plots[14].LineStyle = LineStyle.Solid;
            grp1.Plots[16].LineColor = Color.HotPink;grp1.Plots[16].PointColor = Color.HotPink;grp1.Plots[16].LineStyle = LineStyle.Solid;
            grp1.Plots[18].LineColor = Color.Lime;grp1.Plots[18].PointColor = Color.Lime;grp1.Plots[18].LineStyle = LineStyle.Solid;
            grp1.Plots[20].LineColor = Color.SteelBlue;grp1.Plots[20].PointColor = Color.SteelBlue;grp1.Plots[20].LineStyle = LineStyle.Solid;
            grp1.Plots[22].LineColor = Color.SlateBlue;grp1.Plots[22].PointColor = Color.SlateBlue;grp1.Plots[22].LineStyle = LineStyle.Solid;
            grp1.Plots[24].LineColor = Color.DarkCyan;grp1.Plots[24].PointColor = Color.DarkCyan;grp1.Plots[24].LineStyle = LineStyle.Solid;
            grp1.Plots[26].LineColor = Color.DarkOrange;grp1.Plots[26].PointColor = Color.DarkOrange;grp1.Plots[26].LineStyle = LineStyle.Solid;
            grp1.Plots[28].LineColor = Color.Coral;grp1.Plots[28].PointColor = Color.Coral;grp1.Plots[28].LineStyle = LineStyle.Solid;
            grp1.Plots[30].LineColor = Color.Gray;grp1.Plots[30].PointColor = Color.Gray;grp1.Plots[30].LineStyle = LineStyle.Solid;

            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            st_aux_rt rtauxgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp;
            double maxval;
            double minval;
            double cmpval;

            int plotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.plot[1].ly[0].Count;
            int appendcount = 0;

            int auxplotcount = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtauxgrp.plot[1].ly[0].Count;
            int auxappendcount = 0;

            int st = 0;
            int auxst = 0;

            if (plotcount == 0) return;
            if (plotcount == LastPlotPoint) return;
            if (plotcount < LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st = LastPlotPoint;
                appendcount = plotcount - LastPlotPoint;
                LastPlotPoint = plotcount;

                auxst = auxLastPlotPoint1;
                auxappendcount = auxplotcount - auxLastPlotPoint1;
                auxLastPlotPoint1 = auxplotcount;
            }
            int nPlot1 = 1;
            //int nPlot2 = 2;
            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[appendcount];
            double[] pty = new double[appendcount];

            double[] auxtx = null;
            double[] auxty = null;
            double[] auxptx = new double[auxappendcount];
            double[] auxpty = new double[auxappendcount];
            double time0 = -1.0;
            double time1 = -1.0;
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3)
            {
                tx = rtgrp.plot[0].lx[0].ToArray();
                ty = rtgrp.plot[0].ly[0].ToArray();
                Array.Copy(tx, st, ptx, 0, appendcount);
                Array.Copy(ty, st, pty, 0, appendcount);
                time0 = ptx[appendcount - 1];
                grp1.Plots[0 + nPlot1].PlotXYAppend(ptx, pty);

                // AUX1
                auxtx = rtauxgrp.plot[0].lx[0].ToArray();
                auxty = rtauxgrp.plot[0].ly[0].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];
                    grp1.Plots[7].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[1].ToArray();
                auxty = rtauxgrp.plot[0].ly[1].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[9].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[2].ToArray();
                auxty = rtauxgrp.plot[0].ly[2].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[11].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[3].ToArray();
                auxty = rtauxgrp.plot[0].ly[3].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[13].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[4].ToArray();
                auxty = rtauxgrp.plot[0].ly[4].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[15].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[5].ToArray();
                auxty = rtauxgrp.plot[0].ly[5].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[17].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[6].ToArray();
                auxty = rtauxgrp.plot[0].ly[6].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[19].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[7].ToArray();
                auxty = rtauxgrp.plot[0].ly[7].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[21].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[8].ToArray();
                auxty = rtauxgrp.plot[0].ly[8].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[23].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[9].ToArray();
                auxty = rtauxgrp.plot[0].ly[9].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[25].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[10].ToArray();
                auxty = rtauxgrp.plot[0].ly[10].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[27].PlotXYAppend(auxptx, auxpty);
                }

                auxtx = rtauxgrp.plot[0].lx[11].ToArray();
                auxty = rtauxgrp.plot[0].ly[11].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    time0 = auxptx[auxappendcount - 1];grp1.Plots[29].PlotXYAppend(auxptx, auxpty);
                }

                // --- Main + AUX 전체 기준 축 설정 ---
                double globalMax = rtgrp.plot[0].Maxval[0];
                double globalMin = rtgrp.plot[0].Minval[0];

                for (int i = 0; i < 12; i++)
                {
                    double auxMax = rtauxgrp.plot[0].Maxval[i];
                    double auxMin = rtauxgrp.plot[0].Minval[i];
                    if (auxMax != 0 || auxMin != 0)
                    {
                        if (auxMax > globalMax) globalMax = auxMax;
                        if (auxMin < globalMin) globalMin = auxMin;
                    }
                }

                cmpval = Math.Abs(globalMax);
                if (cmpval < Math.Abs(globalMin)) cmpval = Math.Abs(globalMin);

                maxval = globalMax + (cmpval * GrpSpaceRate);
                minval = globalMin - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    minval -= minval * 0.1;
                    maxval += maxval * 0.1;
                }
                else if (maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }

                grp1.YAxes[0].Range = new Range(minval, maxval);
                //=================================================================
                tx = rtgrp.plot[1].lx[0].ToArray();
                ty = rtgrp.plot[1].ly[0].ToArray();
                Array.Copy(tx, st, ptx, 0, appendcount);
                Array.Copy(ty, st, pty, 0, appendcount);
                grp1.Plots[1 + nPlot1].PlotXYAppend(ptx, pty);
                grp1.Plots[1 + nPlot1].PlotXY(rtgrp.plot[1].lx[0].ToArray(), rtgrp.plot[1].ly[0].ToArray());

                // Aux1
                auxtx = rtauxgrp.plot[1].lx[0].ToArray();
                auxty = rtauxgrp.plot[1].ly[0].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[8].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[1].ToArray();
                auxty = rtauxgrp.plot[1].ly[1].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[10].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[2].ToArray();
                auxty = rtauxgrp.plot[1].ly[2].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[12].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[3].ToArray();
                auxty = rtauxgrp.plot[1].ly[3].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[14].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[4].ToArray();
                auxty = rtauxgrp.plot[1].ly[4].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[16].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[5].ToArray();
                auxty = rtauxgrp.plot[1].ly[5].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[18].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[6].ToArray();
                auxty = rtauxgrp.plot[1].ly[6].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[20].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[7].ToArray();
                auxty = rtauxgrp.plot[1].ly[7].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[22].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[8].ToArray();
                auxty = rtauxgrp.plot[1].ly[8].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[24].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[9].ToArray();
                auxty = rtauxgrp.plot[1].ly[9].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[26].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[10].ToArray();
                auxty = rtauxgrp.plot[1].ly[10].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[28].PlotXYAppend(auxptx, auxpty);
                }
                auxtx = rtauxgrp.plot[1].lx[11].ToArray();
                auxty = rtauxgrp.plot[1].ly[11].ToArray();
                if (auxappendcount > 0 && auxtx.Length >= auxst + auxappendcount && auxty.Length >= auxst + auxappendcount)
                {
                    Array.Copy(auxtx, auxst, auxptx, 0, auxappendcount);
                    Array.Copy(auxty, auxst, auxpty, 0, auxappendcount);
                    grp1.Plots[30].PlotXYAppend(auxptx, auxpty);
                }

                globalMax = rtgrp.plot[1].Maxval[0];
                globalMin = rtgrp.plot[1].Minval[0];

                for (int i = 0; i < 12; i++)
                {
                    double auxMax = rtauxgrp.plot[1].Maxval[i];
                    double auxMin = rtauxgrp.plot[1].Minval[i];
                    if (auxMax != 0 || auxMin != 0)
                    {
                        if (auxMax > globalMax) globalMax = auxMax;
                        if (auxMin < globalMin) globalMin = auxMin;
                    }
                }

                cmpval = Math.Abs(globalMax);
                if (cmpval < Math.Abs(globalMin)) cmpval = Math.Abs(globalMin);

                maxval = globalMax + (cmpval * GrpSpaceRate);
                minval = globalMin - (cmpval * GrpSpaceRate);

                if (minval == maxval)
                {
                    minval -= minval * 0.1;
                    maxval += maxval * 0.1;
                }
                else if (maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }

                grp1.YAxes[1].Range = new Range(minval, maxval);
            }
            if (GrpCtrlMode1 == 0 || GrpCtrlMode1 == 3 || GrpCtrlMode2 == 0 || GrpCtrlMode2 == 3)
            {
                RefreshGraphAxisTimeView(time0, time1);
            }*/
        }

        private void RefreshGraph()
        {
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;

            if (gBZA.SifLnkLst[serial].MBZAIF.buttonElements.isGraphReady)
                ShowRawGraph(gBZA.SifLnkLst[serial].MBZAIF.buttonElements.rawdata);

            if (techtype == enTechType.TECH_HFR)
            {
                RefreshGraphHFR();
                //===========================Zre/Vdc===========================//
                bool mainVisible = checkedListBox.CheckedItems.Contains("MAIN");
                grp1.Plots[1].Visible = mainVisible;
                grp1.Plots[2].Visible = mainVisible;

                string[] auxNames = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6", "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames.Length; i++)
                {
                    bool visible = checkedListBox.CheckedItems.Contains(auxNames[i]);

                    int plotIdx1 = 7 + (i * 2);
                    int plotIdx2 = 8 + (i * 2);
                    //int plotIdx2 = 32 + i;
                    int eisIdx = 8 + (i * 2);

                    if (plotIdx1 < grp1.Plots.Count)
                        grp1.Plots[plotIdx1].Visible = visible;

                    if (plotIdx2 < grp1.Plots.Count)
                        grp1.Plots[plotIdx2].Visible = visible;
                }
                //===========================Cs/Cp===========================//
                bool mainVisible1 = checkedListBox1.CheckedItems.Contains("MAIN");
                grp2.Plots[2].Visible = mainVisible1;
                grp2.Plots[3].Visible = mainVisible1;

                string[] auxNames1 = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6",
                    "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames1.Length; i++)
                {
                    bool visible = checkedListBox1.CheckedItems.Contains(auxNames1[i]);

                    int plotIdx1 = 8 + (i * 2);
                    int plotIdx2 = plotIdx1 + 1;

                    if (plotIdx1 < grp2.Plots.Count)
                        grp2.Plots[plotIdx1].Visible = visible;

                    if (plotIdx2 < grp2.Plots.Count)
                        grp2.Plots[plotIdx2].Visible = visible;
                }
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                RefreshGraphPRR();
                bool mainVisible = checkedListBox.CheckedItems.Contains("MAIN");
                grp1.Plots[1].Visible = mainVisible;
                grp1.Plots[2].Visible = mainVisible;

                string[] auxNames = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6", "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames.Length; i++)
                {
                    bool visible = checkedListBox.CheckedItems.Contains(auxNames[i]);

                    grp1.Plots[7 + (i * 2)].Visible = visible;
                    grp1.Plots[8 + (i * 2)].Visible = visible;
                    //grp1.Plots[31 + i].Visible = visible;
                }
                //======================================================================================================//
                bool mainVisible1 = checkedListBox1.CheckedItems.Contains("MAIN");
                // Main
                grp2.Plots[2].Visible = mainVisible1;
                grp2.Plots[3].Visible = mainVisible1;
                grp2.Plots[5].Visible = mainVisible1;
                grp2.Plots[6].Visible = mainVisible1;

                string[] auxNames1 = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6",
                    "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames1.Length; i++)
                {
                    bool visible = checkedListBox1.CheckedItems.Contains(auxNames1[i]);

                    int baseIdx = 8 + (i * 4);

                    for (int j = 0; j < 4; j++)
                    {
                        int idx = baseIdx + j;
                        if (grp2.Plots.Count > idx)
                            grp2.Plots[idx].Visible = visible;
                    }
                }
                //==========================================================================
                //bool mainVisible1 = checkedListBox1.CheckedItems.Contains("MAIN");
                //grp2.Plots[0].Visible = mainVisible1;
                //grp2.Plots[1].Visible = mainVisible1;

                //string[] auxNames1 = new string[]
                //{
                //    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6", "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                //};
                //for (int i = 0; i < auxNames1.Length; i++)
                //{
                //    bool visible = checkedListBox1.CheckedItems.Contains(auxNames1[i]);

                //    int plotIdx1 = 4 + (i * 4);
                //    int plotIdx2 = plotIdx1 + 1;

                //    if (plotIdx1 < grp2.Plots.Count)
                //        grp2.Plots[plotIdx1].Visible = visible;

                //    if (plotIdx2 < grp2.Plots.Count)
                //        grp2.Plots[plotIdx2].Visible = visible;
                //}
            }
            else if (techtype == enTechType.TECH_MON)
            {
                RefreshGraphMON();
                bool mainVisible = checkedListBox.CheckedItems.Contains("MAIN");
                grp1.Plots[1].Visible = mainVisible;
                grp1.Plots[2].Visible = mainVisible;

                string[] auxNames = new string[]
               {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6",
                    "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
               };

                for (int i = 0; i < auxNames.Length; i++)
                {
                    bool visible = checkedListBox.CheckedItems.Contains(auxNames[i]);

                    int frontIndex = 7 + (i * 2);
                    int backIndex = 8 + (i * 2);

                    if (frontIndex < grp1.Plots.Count)
                        grp1.Plots[frontIndex].Visible = visible;

                    if (backIndex < grp1.Plots.Count)
                        grp1.Plots[backIndex].Visible = visible;
                }
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                RefreshGraphQIS();
                bool mainVisible = checkedListBox.CheckedItems.Contains("MAIN");
                grp1.Plots[0].Visible = mainVisible;
                grp1.Plots[1].Visible = mainVisible;

                string[] auxNames = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6",
                    "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames.Length; i++)
                {
                    bool visible = checkedListBox.CheckedItems.Contains(auxNames[i]);
                    grp1.Plots[7 + (i * 2)].Visible = visible;
                }

                bool mainVisible1 = checkedListBox1.CheckedItems.Contains("MAIN");
                string[] auxNames1 = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6",
                    "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames1.Length; i++)
                {
                    bool visible = checkedListBox1.CheckedItems.Contains(auxNames1[i]);
                    grp2.Plots[0].Visible = mainVisible1;
                    grp2.Plots[1].Visible = mainVisible1;
                    grp2.Plots[2].Visible = mainVisible1;
                    grp2.Plots[3].Visible = mainVisible1;

                    int baseIdx = 8 + i * 4;
                    grp2.Plots[baseIdx].Visible = visible; // Mag Live 
                    grp2.Plots[baseIdx + 2].Visible = visible; // Mag Hist 
                    grp2.Plots[baseIdx + 1].Visible = visible; // Phase Live 
                    grp2.Plots[baseIdx + 3].Visible = visible; // Phase Hist
                }
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                RefreshGraphDCH();
                bool mainVisible = checkedListBox.CheckedItems.Contains("MAIN");
                grp1.Plots[1].Visible = mainVisible;
                grp1.Plots[2].Visible = mainVisible;

                string[] auxNames = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6",
                    "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames.Length; i++)
                {
                    bool visible = checkedListBox.CheckedItems.Contains(auxNames[i]);

                    int frontIndex = 7 + (i * 2);
                    int backIndex = 8 + (i * 2);
                    //int backIndex = 31 + i;

                    if (frontIndex < grp1.Plots.Count)
                        grp1.Plots[frontIndex].Visible = visible;

                    if (backIndex < grp1.Plots.Count)
                        grp1.Plots[backIndex].Visible = visible;
                }
            }
            else
            {
                RefreshGraphEIS();
                //=========================RefreshAuxNyquist=========================//
                bool mainVisible = checkedListBox.CheckedItems.Contains("MAIN");
                grp1.Plots[0].Visible = mainVisible;
                grp1.Plots[1].Visible = mainVisible;

                string[] auxNames = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6", "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames.Length; i++)
                {
                    bool visible = checkedListBox.CheckedItems.Contains(auxNames[i]);
                    grp1.Plots[7 + (i * 2)].Visible = visible;
                    grp1.Plots[8 + (i * 2)].Visible = visible;
                }

                bool mainVisible1 = checkedListBox1.CheckedItems.Contains("MAIN");
                string[] auxNames1 = new string[]
                {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6", "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

                for (int i = 0; i < auxNames1.Length; i++)
                {
                    bool visible = checkedListBox1.CheckedItems.Contains(auxNames1[i]);

                    grp2.Plots[0].Visible = mainVisible1;
                    grp2.Plots[1].Visible = mainVisible1;
                    grp2.Plots[2].Visible = mainVisible1;
                    grp2.Plots[3].Visible = mainVisible1;

                    int baseIdx = 8 + i * 4;
                    grp2.Plots[baseIdx].Visible = visible; // Mag Live
                    grp2.Plots[baseIdx + 2].Visible = visible; // Mag Hist
                    grp2.Plots[baseIdx + 1].Visible = visible; // Phase Live
                    grp2.Plots[baseIdx + 3].Visible = visible; // Phase Hist
                }
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

            Rtlegend.Visible = RtMenuGraphLegend.Checked;
            Properties.Settings.Default.RtGrpLegendView = MenuPlotLegend1.Checked;
            Properties.Settings.Default.Save();
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
            sfilt += "Pseudo Rs Rp (*.prr) | *.prr|";
            sfilt += "Eoc/Temp. monitor (*.vtm) | *.vtm|";
            sfilt += "Quick galvanostatic EIS (*.qis) | *.Qis|";
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
            else if (sext == ".DCH")
            {
                dlg.DefaultExt = "dch";
                dlg.FilterIndex = 6;
            }
            else
            {
                dlg.DefaultExt = "eis";
                dlg.FilterIndex = 1;
            }
            if (filename.Length < 5) dlg.InitialDirectory = gBZA.appcfg.PathSch;
            else dlg.InitialDirectory = Path.GetDirectoryName(filename); //  gBZA.appcfg.PathSch;
            dlg.FileName = Path.GetFileName(filename);
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                filename = dlg.FileName;
                gBZA.appcfg.PathSch = Path.GetDirectoryName(dlg.FileName);
 
                var Value = gBZA.ChLnkLst[sch];
                Value.mChInf.FileCond = filename;
                gBZA.ChLnkLst[sch] = Value;
                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);

                gBZA.SifLnkLst[serial].MBZAIF.condfilename[sifch] = filename;
            }
        }

        private void bttech_Click(object sender, EventArgs e)
        {
            SelectTechFile();
        }
        private void OpenTechFile(string filename)
        {
            frmTechniq frmTech = new frmTechniq(ch, filename);
            frmTech.ShowInTaskbar = false;
            frmTech.MdiParent = this.MdiParent;
            if (gBZA.appcfg.TechLocation == new Point(0, 0))
            {
                frmTech.StartPosition = FormStartPosition.CenterScreen;
            }
            else
            {
                frmTech.Location = gBZA.appcfg.TechLocation;
                frmTech.StartPosition = FormStartPosition.Manual;
            }

            frmTech.Show();
            frmTech.WindowState = FormWindowState.Normal;
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

        private void OpenDataEditor(string filename)
        {
            var deForm = new ZiveLab.ZM.Dataview.DataEditorForm(true);

            deForm.MsgBoxCaption = this.Text;
            deForm.UnitC = false;
            deForm.EnAlwaysOpenPath = false;
            deForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            deForm.TimeFormat = 1;

            deForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
            deForm.MdiParent = this.MdiParent;

            deForm.ShowInTaskbar = false;
            deForm.Initialize(0);

            deForm.Show();
            deForm.LoadData(filename);
        }

        //private void OpenDataEditor(string filename, int type = 2) // type 0 : General, 1 : Cycle, 2 : Eis
        //{
        //    DataEditorForm deForm = new DataEditorForm(true, true);
        //    deForm.MsgBoxCaption = this.Text;
        //    deForm.UnitC = false;
        //    deForm.IVManPath = GetIVManPath();
        //    deForm.GraphSetEx = gBZA.mGraphSetEx;
        //    deForm.EnAlwaysOpenPath = false;
        //    deForm.ZManPath = GetZManPath();
        //    deForm.AlwaysOpenPath = gBZA.appcfg.PathData;
        //    //deForm.SchTempPath = gBZA.appcfg.PathSchTemp;
        //    deForm.TimeFormat = 1;

        //    deForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
        //    //deForm.OpenGeneralGraphClick += DeForm_OpenGeneralGraphClick;
        //    //deForm.OpenCycleGraphClick += DeForm_OpenCycleGraphClick;
        //    deForm.OpenEisGraphClick += DeForm_OpenEisGraphClick;
        //    deForm.MdiParent = this.MdiParent;

        //    deForm.ShowInTaskbar = false;
        //    deForm.Initialize(0);

        //    deForm.Show();
        //    deForm.LoadData(filename, type);
        //}

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
                type = (eZimType)mfile.tmphead.systemInfo.mSIFCfg.Type;

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
            frmTech.ShowInTaskbar = false;
            frmTech.MdiParent = this.MdiParent;

            frmTech.StartPosition = FormStartPosition.CenterScreen;
            /*if (gBZA.appcfg.TechLocation == new Point(0, 0))
            {
                frmTech.StartPosition = FormStartPosition.CenterScreen;
            }
            else
            {
                frmTech.Location = gBZA.appcfg.TechLocation;
                frmTech.StartPosition = FormStartPosition.Manual;
            }
            */
            if(frmTech.bopen)  frmTech.Show();
            frmTech.WindowState = FormWindowState.Normal;
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
            //var panelControl = new PanelAboutWithTabs();
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
            if (gBZA.SifLnkLst[serial].MBZAIF.bLoadData[sifch])
            {
                if (MessageBox.Show("Are you sure you want to end the load process ?", gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
                {
                    MBZA_MapUtil.LoadDataStop(serial, sifch);
                }
                return;
            }

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
            saveDlg.InitialDirectory = Path.GetDirectoryName(gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch]);
            saveDlg.FileName = Path.GetFileName(gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch]);

            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }

            gBZA.appcfg.PathData = Path.GetDirectoryName(saveDlg.FileName);

            var Value = gBZA.ChLnkLst[sch];
            Value.mChInf.FileResult = saveDlg.FileName;
            gBZA.ChLnkLst[sch] = Value;
            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            gBZA.SifLnkLst[serial].MBZAIF.resfilename[sifch] = saveDlg.FileName;

            MBZA_MapUtil.LoadDataStart(serial, sifch);
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
            EisGraphForm egForm = new EisGraphForm(0, gBZA.mGraphSet, gBZA.mGraphSetEx, true);
            egForm.MsgBoxCaption = AppTitle;
            egForm.EnAlwaysOpenPath = false;
            egForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            egForm.ZManPath = GetZManPath();
            egForm.AllowTransparency = false;
            //egForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            egForm.UnitC = false;
            egForm.TimeFormat = 1;
            egForm.MdiParent = this.MdiParent;
            egForm.ShowInTaskbar = false;
            egForm.OpenDataEditorClick += EgForm_OpenDataEditorClick;
            egForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
            egForm.Show();

            if (filename != null)
            {
                egForm.LoadFiles(filename);
            }
        }

        //private void OpenResGraph(string[] filename)
        //{
        //    var ggForm = new ZiveLab.ZM.Dataview.GeneralGraphForm(0);
        //    ggForm.MsgBoxCaption = AppTitle;
        //    ggForm.EnAlwaysOpenPath = false;
        //    ggForm.AlwaysOpenPath = gBZA.appcfg.PathData;
        //    ggForm.AllowTransparency = false;
        //    ggForm.TimeFormat = 1;
        //    ggForm.MdiParent = this.MdiParent;
        //    ggForm.ShowInTaskbar = false;

        //    ggForm.Show();

        //    if (filename != null)
        //        ggForm.LoadFiles(filename);
        //}

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
                if (this.tabgrp.TabPages.Contains(this.TabGrp2) == false)
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
                    if (idx >= gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[nSelItem].plot[0].freq[0].Count) return;
                    double freq = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[nSelItem].plot[0].freq[0][idx];
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
                if (this.tabgrp.TabPages.Contains(this.TabGrp2) == false)
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
                        if (idx >= gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[nSelItem].plot[2].freq[0].Count) return;

                        double freq = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[nSelItem].plot[2].freq[0][idx];
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

        private void channelBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void legend1_ItemsChanged(object sender, CollectionChangeEventArgs e)
        {

        }
    }
}
