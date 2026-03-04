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
using System.Diagnostics;
using System.Reflection;
using Microsoft.Win32;
using System.Runtime.InteropServices;
using ZiveLab.ZM.Dataview;
using System.Xml.Serialization;

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

        double GrpSpaceRate;

        MBZA_ChannelInfo About;

        ToolTip toolTip;
        FormatString fs_ss;
        FormatString fs_mm;
        FormatString fs_hh;
        FormatString fs_dd;

        ImageList imageList;
        private List<RadioButton> rawRadioButtons;
        private int rdoAuxMon;
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

        private Point lastMousePos;
        private bool isDragging = false;
        bool begindlg;
        private Dictionary<int, int> plotToLegendMapGrp1;
        private Dictionary<int, int> plotToLegendMapGrp2;

        public BZAChPan(int ich, ref EventHandler evtimer, EventHandler evshowmax, Form tMdiparent)
        {
            InitializeComponent();
            DoubleBuffered = true;
            AuxDataView1.Visible = false;
            tabgrp.TabPages.Remove(Raw_DataPage);
            begindlg = true;

            isDragging = false;
            lastMousePos.X = 0;
            lastMousePos.Y = 0;

            GrpSpaceRate = 0.01;

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

            InitializeRadioButtons();
            rdoAuxMon = 0; // 0: vdc 1: Z
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

            LoadXmlToGrpVars();

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


            plotToLegendMapGrp1 = new Dictionary<int, int>();
            plotToLegendMapGrp2 = new Dictionary<int, int>();
            GraphSizeMode = 0;

            evtimer += new EventHandler(TimerProc);
            evShowmax += evshowmax;

            lblprog.LabelText = string.Format("Channel {0:00}", ch + 1);
            lblprog.Prog_Max = 1000;
            lblprog.Prog_Min = 0;
            lblprog.Prog_Val = 0;
            lblprog.Prog_Color = Color.DarkGray;

            InitGraphOption();
            InitGraphRt();
            InitGraphRawRt();
            InitGraph1();
            InitGraph2();
            InitAuxMonitorList();

            MakeAppTitle();

            OldTechType = -1;
            InitGraphType();
            RefreshGraphSize();
            RefreshTestInformation();
        }
        private void InitializeRadioButtons()
        {
            // RadioButton 리스트 생성
            rawRadioButtons = new List<RadioButton>();
            rawRadioButtons.Add(radioButton0);
            rawRadioButtons.Add(radioButton1); 
            rawRadioButtons.Add(radioButton2); 
            rawRadioButtons.Add(radioButton3); 
            rawRadioButtons.Add(radioButton4); 
            rawRadioButtons.Add(radioButton5); 
            rawRadioButtons.Add(radioButton6); 
            rawRadioButtons.Add(radioButton7); 
            rawRadioButtons.Add(radioButton8); 
            rawRadioButtons.Add(radioButton9); 
            rawRadioButtons.Add(radioButton10);
            rawRadioButtons.Add(radioButton11);
            rawRadioButtons.Add(radioButton12);
            for(int i=1;i<rawRadioButtons.Count;i++)
            {
                rawRadioButtons[i].Text = "Aux" + i;
            }
        }
        public bool SaveGrpVarsToXml()
        {
            /*XmlSerializer serializer = new XmlSerializer(typeof(st_GrpCh_vars));
            try
            {
                using (FileStream fs = new FileStream(gBZA.FileGrpVars, FileMode.Create))
                {
                    serializer.Serialize(fs, grpvars);
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(string.Format("Failed to save file[Error:{0}].",ex.Message), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }*/

            return true;
        }

        public bool LoadXmlToGrpVars()
        {
            /*try
            {
                if (File.Exists(gBZA.FileGrpVars) == false)
                {
                    SaveGrpVarsToXml();
                }
                else
                {
                    XmlSerializer serializer = new XmlSerializer(typeof(st_GrpCh_vars));
                    using (FileStream fs = new FileStream(gBZA.FileGrpVars, FileMode.Open))
                    {
                        grpvars = (st_GrpCh_vars)serializer.Deserialize(fs);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(string.Format("Failed to read file[Error:{0}].", ex.Message), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }*/

            return true;
        }


        #region Grpinit

        private void RefreshRtView()
        {
            foreach (int index in ChkListItem3.CheckedIndices)
            {
                grprt.Plots[index * 2].Visible = true;
                grprt.Plots[index * 2 + 1].Visible = true;
            }
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                if (grpvars.GrpItemsRT.GrpCtrlMode == 0)
                {
                    grprt.Plots[i * 2 + 1].Visible = false;
                }
                //grpvars.GrpItemsRT.mPlot[i * 2].LineVisible;
            }
            
        }

        private void RefreshRt(int ch = 0)
        {
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                if (grpvars.GrpItemsRT.GrpCtrlMode == 0)
                {
                    grprt.Plots[i * 2].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.dv[i].vac, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count);
                }
                else
                {
                    grprt.Plots[i * 2 + 1].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.dv[i].vac, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // V
                    grprt.Plots[i * 2].PlotXY(gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // I
                }
            }
        }
        private void ClearRt()
        {
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                grprt.Plots[i * 2].ClearData();
                grprt.Plots[i * 2 + 1].ClearData();
            }
        }

        private void InitGraphRt()
        {
            grprt.ResetZoomPan();

            grpvars.GrpItemsRT.GrpCtrlMode = 0;
            grpvars.GrpItemsRT.PlotCount = 1;
            grprt.ClearData();
            grprt.Plots.Clear();
            Rtlegend.Items.Clear();

            grprt.PlotAreaColor = grpvars.GrpItemsRT.BackColor;
            grprt.PlotAreaBorder = Border.Dotted;

            ScatterPlot tPlot;
            Size nPntSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            for (int i=0; i< grpvars.nAuxChCount + 1; i++)
            {
                tPlot = new ScatterPlot(grprt.XAxes[0], grprt.YAxes[0]);
                tPlot.LineColor = grpvars.GrpItemsRT.PlotColor[i*2];
                tPlot.PointColor = grpvars.GrpItemsRT.PlotColor[i*2];
                tPlot.LineWidth = DeviceConstants.Linewidth;
                tPlot.PointSize = nPntSize;
                if (grpvars.GrpItemsRT.ShowLine) tPlot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                else tPlot.LineStyle = NationalInstruments.UI.LineStyle.None;
                if (grpvars.GrpItemsRT.ShowPoint) tPlot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                else tPlot.PointStyle = NationalInstruments.UI.PointStyle.None;
                tPlot.SmoothUpdates = true;
                grprt.Plots.Add(tPlot);
                if(i==0)
                    Rtlegend.Items.Add(new LegendItem(tPlot, "main I"));
                else
                    Rtlegend.Items.Add(new LegendItem(tPlot, string.Format("Aux{0} I", i)));

                tPlot = new ScatterPlot(grprt.XAxes[0], grprt.YAxes[1]);
                tPlot.LineColor = grpvars.GrpItemsRT.PlotColor[i*2+1];
                tPlot.PointColor = grpvars.GrpItemsRT.PlotColor[i*2+1];
                tPlot.LineWidth = DeviceConstants.Linewidth;
                tPlot.PointSize = nPntSize;
                if (grpvars.GrpItemsRT.ShowLine) tPlot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                else tPlot.LineStyle = NationalInstruments.UI.LineStyle.None;
                if (grpvars.GrpItemsRT.ShowPoint) tPlot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                else tPlot.PointStyle = NationalInstruments.UI.PointStyle.None;
                tPlot.SmoothUpdates = true;
                grprt.Plots.Add(tPlot);
                if (i == 0)
                    Rtlegend.Items.Add(new LegendItem(tPlot, "main V"));
                else
                    Rtlegend.Items.Add(new LegendItem(tPlot, string.Format("Aux{0} V", i)));
            }
            
            initGraphRT_graphsetting();

            RtMenuGraphLine.Checked = grpvars.GrpItemsRT.ShowLine;
            RtMenuGraphPoint.Checked = grpvars.GrpItemsRT.ShowPoint;
            RtMenuGraphGrid.Checked = grpvars.GrpItemsRT.ShowGrid;
            RtMenuGraphLegend.Checked = grpvars.GrpItemsRT.ShowLegend;
            Rtlegend.Visible = grpvars.GrpItemsRT.ShowLegend;
            grpvars.GrpItemsRT.bStopRefresh = false;

            grprt.YAxes[0].Visible = true;
            if (grpvars.GrpItemsRT.GrpCtrlMode == 0)
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

            ClearRt();
            RefreshRt();
        }

        private void initGraphRT_graphsetting()
        {
            ChkListLegend3.Items.Clear();

            if (grpvars.GrpItemsRT.GrpCtrlMode == 0)
            {

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
                ChkListLegend3.Items.Add("Current", true);

                grprt.YAxes[1].Caption = "";
                grprt.YAxes[1].CaptionVisible = false;
                grprt.YAxes[1].CaptionForeColor = grpvars.GrpItemsRT.Axis_Color;
                grprt.YAxes[1].MajorDivisions.TickColor = grpvars.GrpItemsRT.Axis_Color;
                grprt.YAxes[1].MajorDivisions.LabelForeColor = grpvars.GrpItemsRT.Axis_Color;
                grprt.YAxes[1].MajorDivisions.LabelVisible = false;
                grprt.YAxes[1].MajorDivisions.GridColor = grpvars.GrpItemsRT.GridColor;
                grprt.YAxes[1].MajorDivisions.TickVisible = false;
                grprt.YAxes[1].MajorDivisions.GridVisible = grpvars.GrpItemsRT.ShowGrid;
                grprt.YAxes[1].MinorDivisions.TickColor = grpvars.GrpItemsRT.Axis_Color;
                grprt.YAxes[1].MinorDivisions.GridColor = grpvars.GrpItemsRT.GridColor;
                grprt.YAxes[1].MinorDivisions.GridVisible = false;
                grprt.YAxes[1].MinorDivisions.TickVisible = false;
                grprt.YAxes[1].AutoSpacing = true;

                foreach (int index in ChkListItem3.CheckedIndices)
                {
                    Rtlegend.Items[index * 2].Visible = true; //grprt.Plots
                    Rtlegend.Items[index * 2 + 1].Visible = false;
                }
            }
            else
            {
                grprt.XAxes[0].Caption = "Time";
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


                grprt.YAxes[0].Caption = "Voltage(V)";
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
                ChkListLegend3.Items.Add("Current", true);

                grprt.YAxes[1].Caption = "Current(A)";
                grprt.YAxes[1].CaptionVisible = true;
                grprt.YAxes[1].CaptionForeColor = grpvars.GrpItemsRT.Axis_Color;
                grprt.YAxes[1].MajorDivisions.TickColor = grpvars.GrpItemsRT.Axis_Color;
                grprt.YAxes[1].MajorDivisions.LabelForeColor = grpvars.GrpItemsRT.Axis_Color;
                grprt.YAxes[1].MajorDivisions.LabelVisible = true;
                grprt.YAxes[1].MajorDivisions.GridColor = grpvars.GrpItemsRT.GridColor;
                grprt.YAxes[1].MajorDivisions.TickVisible = true;
                grprt.YAxes[1].MajorDivisions.GridVisible = grpvars.GrpItemsRT.ShowGrid;
                grprt.YAxes[1].MinorDivisions.TickColor = grpvars.GrpItemsRT.Axis_Color;
                grprt.YAxes[1].MinorDivisions.GridColor = grpvars.GrpItemsRT.GridColor;
                grprt.YAxes[1].MinorDivisions.GridVisible = false;
                grprt.YAxes[1].MinorDivisions.TickVisible = false;
                grprt.YAxes[1].AutoSpacing = true;
                ChkListLegend3.Items.Add("Voltage", true);

                foreach (int index in ChkListItem3.CheckedIndices)
                {
                    Rtlegend.Items[index * 2].Visible = true;
                    Rtlegend.Items[index * 2 + 1].Visible = true;
                }
            }
        }


        private void SetGraphRawRtAxes()
        {
            if (grpvars.GrpItemsRaw.GrpCtrlMode == 0)
            {
                rawgrp.XAxes[0].Caption = "Voltage(V)";
                rawgrp.XAxes[0].CaptionVisible = true;
                rawgrp.XAxes[0].CaptionForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.XAxes[0].MajorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.XAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.XAxes[0].MajorDivisions.LabelVisible = true;
                rawgrp.XAxes[0].MajorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.XAxes[0].MajorDivisions.GridVisible = grpvars.GrpItemsRaw.ShowGrid;
                rawgrp.XAxes[0].MajorDivisions.TickVisible = true;
                rawgrp.XAxes[0].MinorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.XAxes[0].MinorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.XAxes[0].MinorDivisions.TickVisible = false;
                rawgrp.XAxes[0].MinorDivisions.GridVisible = false;
                rawgrp.YAxes[0].AutoSpacing = true;


                rawgrp.YAxes[0].Caption = "Current(A)";
                rawgrp.YAxes[0].CaptionVisible = true;
                rawgrp.YAxes[0].CaptionForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[0].MajorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[0].MajorDivisions.LabelVisible = true;
                rawgrp.YAxes[0].MajorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.YAxes[0].MajorDivisions.TickVisible = true;
                rawgrp.YAxes[0].MajorDivisions.GridVisible = grpvars.GrpItemsRaw.ShowGrid;
                rawgrp.YAxes[0].MinorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[0].MinorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.YAxes[0].MinorDivisions.TickVisible = false;
                rawgrp.YAxes[0].MinorDivisions.GridVisible = false;
                rawgrp.YAxes[0].AutoSpacing = true;
                ChkListLegend4.Items.Add("Current", true);

                rawgrp.YAxes[1].Caption = "";
                rawgrp.YAxes[1].CaptionVisible = false;
                rawgrp.YAxes[1].CaptionForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[1].MajorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[1].MajorDivisions.LabelForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[1].MajorDivisions.LabelVisible = false;
                rawgrp.YAxes[1].MajorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.YAxes[1].MajorDivisions.TickVisible = false;
                rawgrp.YAxes[1].MajorDivisions.GridVisible = grpvars.GrpItemsRaw.ShowGrid;
                rawgrp.YAxes[1].MinorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[1].MinorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.YAxes[1].MinorDivisions.GridVisible = false;
                rawgrp.YAxes[1].MinorDivisions.TickVisible = false;
                rawgrp.YAxes[1].AutoSpacing = true;
            }
            else
            {
                rawgrp.XAxes[0].Caption = "Index";
                rawgrp.XAxes[0].CaptionVisible = true;
                rawgrp.XAxes[0].CaptionForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.XAxes[0].MajorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.XAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.XAxes[0].MajorDivisions.LabelVisible = true;
                rawgrp.XAxes[0].MajorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.XAxes[0].MajorDivisions.GridVisible = grpvars.GrpItemsRaw.ShowGrid;
                rawgrp.XAxes[0].MajorDivisions.TickVisible = true;
                rawgrp.XAxes[0].MinorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.XAxes[0].MinorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.XAxes[0].MinorDivisions.TickVisible = false;
                rawgrp.XAxes[0].MinorDivisions.GridVisible = false;
                rawgrp.YAxes[0].AutoSpacing = true;


                rawgrp.YAxes[0].Caption = "Voltage(V)";
                rawgrp.YAxes[0].CaptionVisible = true;
                rawgrp.YAxes[0].CaptionForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[0].MajorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[0].MajorDivisions.LabelVisible = true;
                rawgrp.YAxes[0].MajorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.YAxes[0].MajorDivisions.TickVisible = true;
                rawgrp.YAxes[0].MajorDivisions.GridVisible = grpvars.GrpItemsRaw.ShowGrid;
                rawgrp.YAxes[0].MinorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[0].MinorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.YAxes[0].MinorDivisions.TickVisible = false;
                rawgrp.YAxes[0].MinorDivisions.GridVisible = false;
                rawgrp.YAxes[0].AutoSpacing = true;
                ChkListLegend4.Items.Add("Voltage", true);

                rawgrp.YAxes[1].Caption = "Current(A)";
                rawgrp.YAxes[1].CaptionVisible = true;
                rawgrp.YAxes[1].CaptionForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[1].MajorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[1].MajorDivisions.LabelForeColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[1].MajorDivisions.LabelVisible = true;
                rawgrp.YAxes[1].MajorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.YAxes[1].MajorDivisions.TickVisible = true;
                rawgrp.YAxes[1].MajorDivisions.GridVisible = grpvars.GrpItemsRaw.ShowGrid;
                rawgrp.YAxes[1].MinorDivisions.TickColor = grpvars.GrpItemsRaw.Axis_Color;
                rawgrp.YAxes[1].MinorDivisions.GridColor = grpvars.GrpItemsRaw.GridColor;
                rawgrp.YAxes[1].MinorDivisions.GridVisible = false;
                rawgrp.YAxes[1].MinorDivisions.TickVisible = false;
                rawgrp.YAxes[1].AutoSpacing = true;
                ChkListLegend4.Items.Add("Current", true);
            }
        }
        private void InitGraphRawRt() // Raw Data Test code
        {
            rawgrp.ResetZoomPan();

            grpvars.GrpItemsRaw.GrpCtrlMode = 1;
            ChkListLegend4.Items.Clear();


            grpvars.GrpItemsRaw.PlotCount = 1;
            rawgrp.ClearData();
            rawgrp.Plots.Clear();
            SetGraphRawRtAxes();

            rawgrp.PlotAreaColor = grpvars.GrpItemsRaw.BackColor;
            rawgrp.PlotAreaBorder = Border.Dotted;
            
            ScatterPlot tPlot;
            Size nPntSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                tPlot = new ScatterPlot(rawgrp.XAxes[0], rawgrp.YAxes[0]);
                tPlot.LineColor = grpvars.GrpItemsRaw.PlotColor[i * 2];
                tPlot.PointColor = grpvars.GrpItemsRaw.PlotColor[i * 2];
                tPlot.LineWidth = DeviceConstants.Linewidth;
                tPlot.PointSize = nPntSize;
                if (grpvars.GrpItemsRaw.ShowLine) tPlot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                else tPlot.LineStyle = NationalInstruments.UI.LineStyle.None;
                if (grpvars.GrpItemsRaw.ShowPoint) tPlot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                else tPlot.PointStyle = NationalInstruments.UI.PointStyle.None;
                tPlot.SmoothUpdates = true;
                rawgrp.Plots.Add(tPlot);

                tPlot = new ScatterPlot(rawgrp.XAxes[0], rawgrp.YAxes[1]);
                tPlot.LineColor = grpvars.GrpItemsRaw.PlotColor[i * 2 + 1];
                tPlot.PointColor = grpvars.GrpItemsRaw.PlotColor[i * 2 + 1];
                tPlot.LineWidth = DeviceConstants.Linewidth;
                tPlot.PointSize = nPntSize;
                if (grpvars.GrpItemsRaw.ShowLine) tPlot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                else tPlot.LineStyle = NationalInstruments.UI.LineStyle.None;
                if (grpvars.GrpItemsRaw.ShowPoint) tPlot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                else tPlot.PointStyle = NationalInstruments.UI.PointStyle.None;
                tPlot.SmoothUpdates = true;
                rawgrp.Plots.Add(tPlot);
            }



            RawRtMenuGraphLine.Checked = grpvars.GrpItemsRaw.ShowLine;
            RawRtMenuGraphPoint.Checked = grpvars.GrpItemsRaw.ShowPoint;
            RawRtMenuGraphGrid.Checked = grpvars.GrpItemsRaw.ShowGrid;
            RawRtMenuGraphLegend.Checked = grpvars.GrpItemsRaw.ShowLegend;
            RawRtlegend.Visible = grpvars.GrpItemsRaw.ShowLegend;


            rawgrp.YAxes[0].Visible = true;
            if (grpvars.GrpItemsRaw.GrpCtrlMode == 0)
            {
                RawRtMenuGraphMode1.Checked = true;
                rawgrp.YAxes[1].Visible = false;
                RawRtMenuGraphMode2.Checked = false;
            }
            else
            {
                RawRtMenuGraphMode1.Checked = false;
                rawgrp.YAxes[1].Visible = true;
                RawRtMenuGraphMode2.Checked = true;
            }

            RawRtlegend.Width = 82;
            
        }

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

        private void InitGraphOption()
        {
            //CboLegendItem1.Items.Clear();
            ChkListItem1.Items.Clear();
            
            ChkListItem2.Items.Clear();
            
            ChkListItem3.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                if (i == 0)
                {
                    //CboLegendItem1.Items.Add("Main");
                    ChkListItem1.Items.Add("Main", true);
                    
                    ChkListItem2.Items.Add("Main", true);
                    
                    ChkListItem3.Items.Add("Main", true);
                }
                else
                {
                    //CboLegendItem1.Items.Add(string.Format("Aux{0}", i));
                    ChkListItem1.Items.Add(string.Format("Aux{0}", i), true);
                    
                    ChkListItem2.Items.Add(string.Format("Aux{0}", i), true);
                    
                    ChkListItem3.Items.Add(string.Format("Aux{0}", i), true);
                }
            }
        }

        private void InitGraph1()
        {
            
            grp1.ResetZoomPan();

            grp1.ClearData();
            grp1.Plots.Clear();

            grpvars.GrpItems1.GrpCtrlMode = 0;
            grpvars.GrpItems1.PlotCount = 1;

            grp1.XAxes[0].MajorDivisions.TickColor = grpvars.GrpItems1.Axis_Color;
            grp1.XAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItems1.Axis_Color;
            grp1.XAxes[0].MinorDivisions.TickColor = grpvars.GrpItems1.Axis_Color;
            grp1.XAxes[0].MinorDivisions.TickVisible = false;
            grp1.XAxes[0].CaptionForeColor = grpvars.GrpItems1.Axis_Color;

            grp1.XAxes[0].MajorDivisions.GridColor = grpvars.GrpItems1.GridColor;
            grp1.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.XAxes[0].MajorDivisions.GridVisible = grpvars.GrpItems1.ShowGridX; 
            grp1.YAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[0].MajorDivisions.TickColor = grpvars.GrpItems1.Axis_Color;
            grp1.YAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItems1.Axis_Color;
            grp1.YAxes[0].MinorDivisions.TickColor = grpvars.GrpItems1.Axis_Color;
            grp1.YAxes[0].MinorDivisions.TickVisible = false;
            grp1.YAxes[0].CaptionForeColor = grpvars.GrpItems1.Axis_Color;

            grp1.YAxes[0].MajorDivisions.GridColor = grpvars.GrpItems1.GridColor;
            grp1.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[0].MajorDivisions.GridVisible = grpvars.GrpItems1.ShowGridY1;
            grp1.YAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[1].MajorDivisions.TickColor = grpvars.GrpItems1.Axis_Color;
            grp1.YAxes[1].MajorDivisions.LabelForeColor = grpvars.GrpItems1.Axis_Color;
            grp1.YAxes[1].MinorDivisions.TickColor = grpvars.GrpItems1.Axis_Color;
            grp1.YAxes[1].MinorDivisions.TickVisible = false;
            grp1.YAxes[1].CaptionForeColor = grpvars.GrpItems1.Axis_Color;

            grp1.YAxes[1].MajorDivisions.GridColor = grpvars.GrpItems1.GridColor;
            grp1.YAxes[1].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[1].MajorDivisions.GridVisible = grpvars.GrpItems1.ShowGridY2;
            grp1.YAxes[1].MinorDivisions.GridVisible = false;

            ScatterPlot tPlot;
            Size nPntSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                for (int j = 0; j < MBZA_Constant.MAX_GRAPH_PLOTS; j++)
                {
                    tPlot = new ScatterPlot(grp1.XAxes[0], grp1.YAxes[0]); // sang
                    tPlot.HistoryCapacity = 100000;
                    tPlot.LineColor = grpvars.GrpItems1.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                    tPlot.PointColor = grpvars.GrpItems1.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                    tPlot.LineWidth = DeviceConstants.Linewidth;
                    tPlot.PointSize = nPntSize;
                    if (grpvars.GrpItems1.ShowLine) tPlot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                    else tPlot.LineStyle = NationalInstruments.UI.LineStyle.None;
                    if (grpvars.GrpItems1.ShowPoint) tPlot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                    else tPlot.PointStyle = NationalInstruments.UI.PointStyle.None;
                    tPlot.SmoothUpdates = true;
                    grp1.Plots.Add(tPlot);
                }
            }
            
            grp1.PlotAreaColor = grpvars.GrpItems1.BackColor;
            grp1.PlotAreaBorder = Border.Dotted;

            MenuPlotGridX1.Checked = grpvars.GrpItems1.ShowGridX = true;
            MenuPlotGridY11.Checked = grpvars.GrpItems1.ShowGridY1 = true;
            MenuPlotGridY12.Checked = grpvars.GrpItems1.ShowGridY2 = true;
            MenuGraphLine1.Checked = grpvars.GrpItemsRT.ShowLine; //
            MenuGraphPoint1.Checked = grpvars.GrpItemsRT.ShowPoint;


            grp1.Cursors[0].LabelBackColor = grpvars.GrpItems1.BackColor;

            legend1.Visible = grpvars.GrpItems1.ShowLegend;
            MenuPlotLegend1.Checked = grpvars.GrpItems1.ShowLegend;

            lblcsfreq1.Visible = false;
            grp1.CaptionVisible = false;

            ApplyGraphModeMenu(1);
            RefreshGraphMode(1);

        }

        private void InitGraph2()
        {

            grp2.ResetZoomPan();

            grp2.ClearData();
            grp2.Plots.Clear();

            grpvars.GrpItems2.GrpCtrlMode = 0;
            grpvars.GrpItems2.PlotCount = 1;

            grp2.XAxes[0].MajorDivisions.TickColor = grpvars.GrpItems2.Axis_Color;
            grp2.XAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItems2.Axis_Color;
            grp2.XAxes[0].MinorDivisions.TickColor = grpvars.GrpItems2.Axis_Color;
            grp2.XAxes[0].MinorDivisions.TickVisible = false;
            grp2.XAxes[0].CaptionForeColor = grpvars.GrpItems2.Axis_Color;

            grp2.XAxes[0].MajorDivisions.GridColor = grpvars.GrpItems2.GridColor;
            grp2.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.XAxes[0].MajorDivisions.GridVisible = grpvars.GrpItems2.ShowGridX;
            grp2.YAxes[0].MinorDivisions.GridVisible = false;

            grp2.YAxes[0].MajorDivisions.TickColor = grpvars.GrpItems2.Axis_Color;
            grp2.YAxes[0].MajorDivisions.LabelForeColor = grpvars.GrpItems2.Axis_Color;
            grp2.YAxes[0].MinorDivisions.TickColor = grpvars.GrpItems2.Axis_Color;
            grp2.YAxes[0].MinorDivisions.TickVisible = false;
            grp2.YAxes[0].CaptionForeColor = grpvars.GrpItems2.Axis_Color;

            grp2.YAxes[0].MajorDivisions.GridColor = grpvars.GrpItems2.GridColor;
            grp2.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[0].MajorDivisions.GridVisible = grpvars.GrpItems2.ShowGridY1;
            grp2.YAxes[0].MinorDivisions.GridVisible = false;

            grp2.YAxes[1].MajorDivisions.TickColor = grpvars.GrpItems2.Axis_Color;
            grp2.YAxes[1].MajorDivisions.LabelForeColor = grpvars.GrpItems2.Axis_Color;
            grp2.YAxes[1].MinorDivisions.TickColor = grpvars.GrpItems2.Axis_Color;
            grp2.YAxes[1].MinorDivisions.TickVisible = false;
            grp2.YAxes[1].CaptionForeColor = grpvars.GrpItems2.Axis_Color;

            grp2.YAxes[1].MajorDivisions.GridColor = grpvars.GrpItems2.GridColor;
            grp2.YAxes[1].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[1].MajorDivisions.GridVisible = grpvars.GrpItems2.ShowGridY2;
            grp2.YAxes[1].MinorDivisions.GridVisible = false;

            ScatterPlot tPlot;
            Size nPntSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                for (int j = 0; j < MBZA_Constant.MAX_GRAPH_PLOTS; j++)
                {
                    tPlot = new ScatterPlot(grp2.XAxes[0], grp2.YAxes[1]);
                    tPlot.HistoryCapacity = 100000;
                    tPlot.LineColor = grpvars.GrpItems2.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                    tPlot.PointColor = grpvars.GrpItems2.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                    tPlot.LineWidth = DeviceConstants.Linewidth;
                    tPlot.PointSize = nPntSize;
                    if (grpvars.GrpItems1.ShowLine) tPlot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                    else tPlot.LineStyle = NationalInstruments.UI.LineStyle.None;
                    if (grpvars.GrpItems1.ShowPoint) tPlot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                    else tPlot.PointStyle = NationalInstruments.UI.PointStyle.None;
                    tPlot.SmoothUpdates = true;
                    grp2.Plots.Add(tPlot);
                }
            }

            grp2.PlotAreaColor = grpvars.GrpItems1.BackColor;
            grp2.PlotAreaBorder = Border.Dotted;

            MenuPlotGridX2.Checked = grpvars.GrpItems2.ShowGridX = true;
            MenuPlotGridY21.Checked = grpvars.GrpItems2.ShowGridY1 = true;
            MenuPlotGridY22.Checked = grpvars.GrpItems2.ShowGridY2 = true;
            MenuGraphLine2.Checked = grpvars.GrpItems2.ShowLine = true; //
            MenuGraphPoint2.Checked = grpvars.GrpItems2.ShowPoint = true;

            grp2.Cursors[0].LabelBackColor = grpvars.GrpItems2.BackColor;

            legend2.Visible = grpvars.GrpItems2.ShowLegend;
            MenuPlotLegend2.Checked = grpvars.GrpItems2.ShowLegend;

            lblcsfreq1.Visible = false;
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
                    legend2.Visible = grpvars.GrpItemsRT.ShowLegend;
                    if (this.tabgrp.TabPages.Contains(this.TabGrpRaw) == false) this.tabgrp.TabPages.Add(this.TabGrpRaw);
                    Rtlegend.Visible = grpvars.GrpItemsRaw.ShowLegend;
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
                grpvars.GrpItems1.LastPlotPoint = 0;
                grpvars.GrpItems2.LastPlotPoint = 0;
                grpvars.GrpItems1.GrpCtrlMode = 0;
                grpvars.GrpItems2.GrpCtrlMode = 0;

                grp1.ClearData();
                grp2.ClearData();

                ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
                ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);

                RefreshGraphMode(1);
                RefreshGraphMode(2);
                RefreshLegendSize();
            }
        }

        private void InitGraphQIS()
        {
            int nPlot;
            int outindex;
            TabGrpRaw.Text = "AC waveform";
            TabGrp1.Text = "Nyquist plot";

            ChkListLegend1.Items.Clear();
            ChkListLegend2.Items.Clear();

            grp1.XAxes[0].Caption = "Zreal(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grpvars.GrpItems1.xTimemode = false;
            grp1.XAxes[0].Visible = true;
            //ChkListLegend1.Items.Add("Zreal", true);

            grp1.YAxes[0].Caption = "-Zimage(Ω)";
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[0].Visible = true;
            ChkListLegend1.Items.Add("-Zimage", true);

            grp1.YAxes[1].Caption = "";
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[1].Visible = false;

            legend1.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS; ;
                grp1.Plots[nPlot].Visible = true;
                grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                if(i == 0) legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], "-Zimg"));
                else legend1.Items.Add(new LegendItem(grp1.Plots[nPlot],string.Format("-Zimg(Aux{0})",i)));
                if (!plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp1.Add(nPlot, legend1.Items.Count - 1);
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
                nPlot++;
                grp1.Plots[nPlot].Visible = false;
                nPlot++;
                grp1.Plots[nPlot].Visible = false;

            }
            grpvars.GrpItems1.GrpPlotCount = 2;

            TabGrp2.Text = "Bode plot";

            grp2.XAxes[0].Caption = "Frequency(Hz)";
            grp2.XAxes[0].ScaleType = ScaleType.Logarithmic;
            grp2.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grpvars.GrpItems2.xTimemode = false;
            grp2.XAxes[0].Visible = true;

            grp2.YAxes[0].Caption = "Zmag(Ω)";
            //grp2.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp2.YAxes[0].Visible = true;
            ChkListLegend2.Items.Add("Zmag", true);

            grp2.YAxes[1].Caption = "Zphase(°C)";
            //grp2.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.##");
            grp2.YAxes[1].Visible = true;
            ChkListLegend2.Items.Add("Zphase", true);

            legend2.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                grp2.Plots[nPlot].Visible = true;
                grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
                grp2.Plots[nPlot].YAxis = grp2.YAxes[0];
                if (i == 0) legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], "Zmag"));
                else legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], string.Format("Zmag(Aux{0})", i)));
                if (!plotToLegendMapGrp2.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp2.Add(nPlot, legend2.Items.Count - 1);
                nPlot++;
                grp2.Plots[nPlot].Visible = true;
                grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
                grp2.Plots[nPlot].YAxis = grp2.YAxes[1];
                if (i == 0) legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], "Zphase"));
                else legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], string.Format("Zphase(Aux{0})", i)));
                if (!plotToLegendMapGrp2.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp2.Add(nPlot, legend2.Items.Count - 1);
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;

            }
            grpvars.GrpItems2.GrpPlotCount = 4;
        }

        private void InitGraphMON()
        {
            int nPlot;
            int outindex;
            TabGrpRaw.Text = "AC waveform";

            TabGrp1.Text = "Eoc,Temp. vs t";


            ChkListLegend1.Items.Clear();
            ChkListLegend2.Items.Clear();

            grp1.XAxes[0].Caption = "Time(s)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grpvars.GrpItems1.xTimemode = true;
            grp1.XAxes[0].Visible = true;

            grp1.YAxes[0].Caption = "Eoc(V)";
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[0].Visible = true;
            ChkListLegend1.Items.Add("Eoc", true);

            grp1.YAxes[1].Caption = "Temp.(°C)";
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[1].Visible = true;
            ChkListLegend1.Items.Add("Temp.", true);

            legend1.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                grp1.Plots[nPlot].Visible = true;
                grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                if (i == 0) legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], "Eoc"));
                else legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], string.Format("Eoc(Aux{0})", i)));
                if (!plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp1.Add(nPlot, legend1.Items.Count - 1);
                nPlot++;
                
                if (i == 0)
                {
                    grp1.Plots[nPlot].Visible = true;
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
                    legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], "Temp."));
                    if (!plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                        plotToLegendMapGrp1.Add(nPlot, legend1.Items.Count - 1);
                }
                else
                {
                    grp1.Plots[nPlot].Visible = false;
                    //legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], string.Format("Temp.(Aux{0})", i)));
                }
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
                nPlot++;
                grp1.Plots[nPlot].Visible = false;

            }
            grpvars.GrpItems1.GrpPlotCount = 2;
            grpvars.GrpItems2.GrpPlotCount = 0;
        }

        private void InitGraphDCH()
        {
            int nPlot;
            int outindex;
            TabGrpRaw.Text = "AC waveform";

            TabGrp1.Text = "Vdc,Temp. vs t";

            ChkListLegend1.Items.Clear();
            ChkListLegend2.Items.Clear();

            grp1.XAxes[0].Caption = "Time(s)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grpvars.GrpItems1.xTimemode = true;
            grp1.XAxes[0].Visible = true;

            grp1.YAxes[0].Caption = "Vdc(V)";
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[0].Visible = true;
            ChkListLegend1.Items.Add("Vdc", true);

            grp1.YAxes[1].Caption = "Temp.(°C)";
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[1].Visible = true;
            ChkListLegend1.Items.Add("Temp.", true);

            legend1.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                grp1.Plots[nPlot].Visible = true;
                grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                if (i == 0) legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], "Vdc"));
                else legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], string.Format("Vdc(Aux{0})", i)));
                if (!plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp1.Add(nPlot, legend1.Items.Count - 1);
                nPlot++;

                if (i == 0)
                {
                    grp1.Plots[nPlot].Visible = true;
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
                    legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], "Temp."));
                    if (!plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                        plotToLegendMapGrp1.Add(nPlot, legend1.Items.Count - 1);
                }
                else
                {
                    grp1.Plots[nPlot].Visible = false;
                    //legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], string.Format("Temp.(Aux{0})", i)));
                }
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
                nPlot++;
                grp1.Plots[nPlot].Visible = false;

            }
            grpvars.GrpItems1.GrpPlotCount = 2;
            grpvars.GrpItems2.GrpPlotCount = 0;
        }

        private void InitGraphEIS()
        {
            int nPlot;
            int outindex;
            TabGrpRaw.Text = "AC waveform";
            TabGrp1.Text = "Nyquist plot";

            ChkListLegend1.Items.Clear();
            ChkListLegend2.Items.Clear();

            grp1.XAxes[0].Caption = "Zreal(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grpvars.GrpItems1.xTimemode = false;
            grp1.XAxes[0].Visible = true;

            grp1.YAxes[0].Caption = "-Zimg(Ω)";
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[0].Visible = true;
            ChkListLegend1.Items.Add("-Zimg(Ω)",true);

            grp1.YAxes[1].Caption = "";
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[1].Visible = false;

            legend1.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS; ;
                grp1.Plots[nPlot].Visible = true;
                grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                if (i == 0)
                {
                    legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], "-Zimg"));
                }
                else legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], string.Format("-Zimg(Aux{0})", i)));
                if(!plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp1.Add(nPlot, legend1.Items.Count - 1);
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
                nPlot++;
                grp1.Plots[nPlot].Visible = false;
                nPlot++;
                grp1.Plots[nPlot].Visible = false;

            }
            grpvars.GrpItems1.GrpPlotCount = 2;

            TabGrp2.Text = "Bode plot";

            grp2.XAxes[0].Caption = "Frequency(Hz)";
            grp2.XAxes[0].ScaleType = ScaleType.Logarithmic;
            grp2.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grpvars.GrpItems2.xTimemode = false;
            grp2.XAxes[0].Visible = true;

            grp2.YAxes[0].Caption = "Zmag(Ω)";
            //grp2.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp2.YAxes[0].Visible = true;
            ChkListLegend2.Items.Add("Zmag", true);

            grp2.YAxes[1].Caption = "Zphase(°C)";
            //grp2.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.##");
            grp2.YAxes[1].Visible = true;
            ChkListLegend2.Items.Add("ZPhase", true);

            legend2.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                grp2.Plots[nPlot].Visible = true;
                grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
                grp2.Plots[nPlot].YAxis = grp2.YAxes[0];
                if (i == 0) legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], "Zmag"));
                else legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], string.Format("Zmag(Aux{0})", i)));
                if (!plotToLegendMapGrp2.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp2.Add(nPlot, legend2.Items.Count - 1);
                nPlot++;
                grp2.Plots[nPlot].Visible = true;
                grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
                grp2.Plots[nPlot].YAxis = grp2.YAxes[1];
                if (i == 0) legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], "Zphase"));
                else legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], string.Format("Zphase(Aux{0})", i)));
                if (!plotToLegendMapGrp2.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp2.Add(nPlot, legend2.Items.Count - 1);
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;

            }
            grpvars.GrpItems2.GrpPlotCount = 4;
        }

        private void InitGraphHFR()
        {
            int nPlot;
            int outindex;
            TabGrpRaw.Text = "AC waveform";
            TabGrp1.Text = "Zre,Vdc vs t";

            ChkListLegend1.Items.Clear();
            ChkListLegend2.Items.Clear();

            grp1.XAxes[0].Caption = "Time(s)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grpvars.GrpItems1.xTimemode = true;
            grp1.XAxes[0].Visible = true;

            grp1.YAxes[0].Caption = "Zreal(Ω)"; 
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[0].Visible = true;
            ChkListLegend1.Items.Add("Zre", true);

            grp1.YAxes[1].Caption = "Vdc(V)";
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[1].Visible = true;
            ChkListLegend1.Items.Add("Vdc", true);

            legend1.Items.Clear();
            legend2.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                grp1.Plots[nPlot].Visible = true;
                grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                if (i == 0)
                {
                    legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], "Zreal"));
                }
                else
                {
                    legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], string.Format("Zreal(Aux{0})", i)));
                }
                if (!plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp1.Add(nPlot, legend1.Items.Count-1);
                nPlot++;
                grp1.Plots[nPlot].Visible = true;
                grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
                if (i == 0) legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], "Vdc"));
                else legend1.Items.Add(new LegendItem(grp1.Plots[nPlot], string.Format("Vdc(Aux{0})", i)));
                if (!plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp1.Add(nPlot, legend1.Items.Count-1);
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
                nPlot++;
                grp1.Plots[nPlot].Visible = false;

            }
            grpvars.GrpItems1.GrpPlotCount = 2;


            TabGrp2.Text = "Cs,Cp vs t";

            grp2.XAxes[0].Caption = "Time(s)";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grpvars.GrpItems1.xTimemode = true;
            grp2.XAxes[0].Visible = true;

            grp2.YAxes[0].Caption = "Cs(uF)";
            //grp2.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp2.YAxes[0].Visible = true;
            ChkListLegend2.Items.Add("Cs", true);

            grp2.YAxes[1].Caption = "Cp(uF)";
            //grp2.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.##");
            grp2.YAxes[1].Visible = true;
            ChkListLegend2.Items.Add("Cp", true);

            legend2.Items.Clear();
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                grp2.Plots[nPlot].Visible = true;
                grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
                grp2.Plots[nPlot].YAxis = grp2.YAxes[0];
                if (i == 0)
                {
                    legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], "Cs"));
                }
                else
                {
                    legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], string.Format("Cs(Aux{0})", i)));
                }
                if (!plotToLegendMapGrp2.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp2.Add(nPlot, legend2.Items.Count - 1);
                nPlot++;
                grp2.Plots[nPlot].Visible = true;
                grp2.Plots[nPlot].XAxis = grp2.XAxes[0];
                grp2.Plots[nPlot].YAxis = grp2.YAxes[1];
                if (i == 0) legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], "Cp"));
                else legend2.Items.Add(new LegendItem(grp2.Plots[nPlot], string.Format("Cp(Aux{0})", i)));
                if (!plotToLegendMapGrp2.TryGetValue(nPlot, out outindex))
                    plotToLegendMapGrp2.Add(nPlot, legend2.Items.Count - 1);
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;
                nPlot++;
                grp2.Plots[nPlot].Visible = false;

            }
            grpvars.GrpItems2.GrpPlotCount = 2;
        }

        private void InitGraphPRR()
        {
            
            var grp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch];

            grp1.ClearData();
            grp2.ClearData();
            TabGrpRaw.Text = "AC waveform";

            if (techprr.rdendfreq != 0.0)
            {
                if (techprr.rpcalmode == 0)
                    TabGrp1.Text = "Rs,P_Rp(Rp end-Rp) vs t";
                else TabGrp1.Text = "Rs,P_Rp(Rp-Rs) vs t";
            }
            else
            {
                TabGrp1.Text = "Rs,P_Rp(Rp-Rs) vs t";
            }

            ChkListLegend1.Items.Clear();
            ChkListLegend2.Items.Clear();

            grp1.XAxes[0].Caption = "Time(s)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grpvars.GrpItems1.xTimemode = true;
            grp1.XAxes[0].Visible = true;

            grp1.YAxes[0].Caption = "R(Ω)";
            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[0].Visible = true;
 
            grp1.YAxes[1].Caption = "";
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp1.YAxes[1].Visible = false;


            TabGrp2.Text = "Cs,Cp vs t";

            grp2.XAxes[0].Caption = "Time(s)";
            grp2.XAxes[0].ScaleType = ScaleType.Linear;
            grp2.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grpvars.GrpItems1.xTimemode = true;
            grp2.XAxes[0].Visible = true;

            grp2.YAxes[0].Caption = "Cs(uF)";
            //grp2.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            grp2.YAxes[0].Visible = true;

            grp2.YAxes[1].Caption = "Cp(uF)";
            //grp2.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.##");
            grp2.YAxes[1].Visible = true;

            for (int j = 0; j < 6; j++)
            {
                if (j == 0) 
                {
                    ChkListLegend1.Items.Add("Rs", true);
                    ChkListLegend2.Items.Add("R1 - Cs", true);
                }
                else if (j == 1)
                {
                    ChkListLegend1.Items.Add("P_Rp", true);
                    ChkListLegend2.Items.Add("R2 - Cs", true);                  
                }
                else if (j == 2)
                {
                    if (grp.arrcnt > 2)
                    {
                        ChkListLegend1.Items.Add("P_Rp2", true);
                        ChkListLegend2.Items.Add("R3 - Cs", true);
                    }
                }
                else if (j == 3)
                {
                    ChkListLegend2.Items.Add("R1 | Cp", true);
                }
                else if (j == 4)
                {
                    ChkListLegend2.Items.Add("R2 | Cp", true);
                }
                else if (j == 5)
                {
                    if (grp.arrcnt > 2)
                        ChkListLegend2.Items.Add("R3 | Cp", true);
                }
            }
                

            int nLegend;
            int nPlot;
            int nPlot1 = 0;// 1;
            int nPlot2 = 0;// 2;
            int outindex = 0;

            legend1.Items.Clear();
            legend2.Items.Clear();

            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                nLegend = i * 6;

                for (int j = 0; j < 6; j++)
                {
                    grp1.Plots[nPlot + j + nPlot1].XAxis = grp1.XAxes[0];
                    grp2.Plots[nPlot + j + nPlot2].XAxis = grp2.XAxes[0];

                    if (j < 3)
                    {
                        grp1.Plots[nPlot + j + nPlot1].YAxis = grp1.YAxes[0];
                        grp2.Plots[nPlot + j + nPlot2].YAxis = grp2.YAxes[0];
                    }
                    else
                    {
                        grp1.Plots[nPlot + j + nPlot1].YAxis = grp1.YAxes[1];
                        grp2.Plots[nPlot + j + nPlot2].YAxis = grp2.YAxes[1];
                    }
                    string prefixch = (i == 0) ? "" : "Aux" + i + " ";

                    if (j == 0)
                    {
                        legend1.Items.Add(new LegendItem(grp1.Plots[nPlot + j + nPlot1], prefixch+"Rs"));
                        legend2.Items.Add(new LegendItem(grp2.Plots[nPlot + j + nPlot2], prefixch + "R1 - Cs"));
                        if (!plotToLegendMapGrp1.TryGetValue(nPlot + j + nPlot1, out outindex))
                            plotToLegendMapGrp1.Add(nPlot + j + nPlot1, legend1.Items.Count-1);
                        if (!plotToLegendMapGrp2.TryGetValue(nPlot + j + nPlot2, out outindex))
                            plotToLegendMapGrp2.Add(nPlot + j + nPlot2, legend2.Items.Count - 1);
                    }
                    else if (j == 1)
                    {
                        legend1.Items.Add(new LegendItem(grp1.Plots[nPlot + j + nPlot1], prefixch + "P_Rp" ));
                        legend2.Items.Add(new LegendItem(grp2.Plots[nPlot + j + nPlot2], prefixch + "R2 - Cs"));
                        if (!plotToLegendMapGrp1.TryGetValue(nPlot + j + nPlot1, out outindex))
                            plotToLegendMapGrp1.Add(nPlot + j + nPlot1, legend1.Items.Count - 1);
                        if (!plotToLegendMapGrp2.TryGetValue(nPlot + j + nPlot2, out outindex))
                            plotToLegendMapGrp2.Add(nPlot + j + nPlot2, legend2.Items.Count - 1);
                    }
                    else if (j == 2)
                    {
                        if (grp.arrcnt > 2)
                        {
                            legend1.Items.Add(new LegendItem(grp1.Plots[nPlot + j + nPlot1], prefixch + "P_Rp2"));
                            if (!plotToLegendMapGrp1.TryGetValue(nPlot + j + nPlot1, out outindex))
                                plotToLegendMapGrp1.Add(nPlot + j + nPlot1, legend1.Items.Count - 1);
                        }
                        legend2.Items.Add(new LegendItem(grp2.Plots[nPlot + j + nPlot2], prefixch + "R3 - Cs"));
                        if (!plotToLegendMapGrp2.TryGetValue(nPlot + j + nPlot2, out outindex))
                            plotToLegendMapGrp2.Add(nPlot + j + nPlot2, legend2.Items.Count - 1);
                    }
                    else if (j == 3)
                    {
                        legend2.Items.Add(new LegendItem(grp2.Plots[nPlot + j + nPlot2], prefixch + "R1 | Cp"));
                        if (!plotToLegendMapGrp2.TryGetValue(nPlot + j + nPlot2, out outindex))
                            plotToLegendMapGrp2.Add(nPlot + j + nPlot2, legend2.Items.Count - 1);
                    }
                    else if (j == 4)
                    {
                        legend2.Items.Add(new LegendItem(grp2.Plots[nPlot + j + nPlot2], prefixch + "R2 | Cp"));
                        if (!plotToLegendMapGrp2.TryGetValue(nPlot + j + nPlot2, out outindex))
                            plotToLegendMapGrp2.Add(nPlot + j + nPlot2, legend2.Items.Count - 1);
                    }
                    else if (j == 5)
                    {
                        
                            legend2.Items.Add(new LegendItem(grp2.Plots[nPlot + j + nPlot2], prefixch + "R3 | Cp"));
                            if (!plotToLegendMapGrp2.TryGetValue(nPlot + j + nPlot2, out outindex))
                                plotToLegendMapGrp2.Add(nPlot + j + nPlot2, legend2.Items.Count - 1);
                    }
                }

                if(grp.arrcnt<3)
                {
                    grp2.Plots[plotToLegendMapGrp2[nPlot + 2]].Visible = false;
                    legend2.Items[plotToLegendMapGrp2[nPlot + 2]].Visible = false;
                    grp2.Plots[plotToLegendMapGrp2[nPlot + 5]].Visible = false;
                    legend2.Items[plotToLegendMapGrp2[nPlot + 5]].Visible = false;
                }
                /*for (int j = 0; j < 3; j++)
                {
                    if (grp.barr[j])
                    {
                        if (j == 2)
                        {
                            grp1.Plots[nPlot + j + nPlot1].Visible = false;
                            legend1.Items[nLegend + j].Visible = false;
                        }
                        else
                        {
                            grp1.Plots[nPlot + j + nPlot1].Visible = true;
                            legend1.Items[nLegend + j].Visible = true;
                        }
                        grp1.Plots[nPlot + j + 3 + nPlot1].Visible = false;
                        legend1.Items[nLegend + j + 3].Visible = true;

                        grp2.Plots[nPlot + j + nPlot2].Visible = true;
                        grp2.Plots[nPlot + j + 3 + nPlot2].Visible = true;

                        legend2.Items[nLegend + j].Visible = true;
                        legend2.Items[nLegend + j + 3].Visible = true;
                    }
                    else
                    {
                        grp1.Plots[nPlot + j + nPlot1].Visible = false;
                        grp1.Plots[nPlot + j + 3 + nPlot1].Visible = false;
                        legend1.Items[nLegend + j].Visible = false;
                        legend1.Items[nLegend + j + 3].Visible = false;

                        grp2.Plots[nPlot + j + nPlot2].Visible = false;
                        grp2.Plots[nPlot + j + 3 + nPlot2].Visible = false;
                        legend2.Items[nLegend + j].Visible = false;
                        legend2.Items[nLegend + j + 3].Visible = false;
                    }
                }*/
            }
            grpvars.GrpItems1.GrpPlotCount = 2;
            grpvars.GrpItems2.GrpPlotCount = grp.arrcnt * 2;
        }

        #endregion Grpinit

        public void SetbtSize(bool bEnable)
        {
            btSize.Enabled = bEnable; 
        }
        

        private void BZAChPan_Load(object sender, EventArgs e)
        {
            begindlg = false;
        }
        

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

                if (grpvars.GrpItemsRT.bStopRefresh == false) RefreshRt(); 
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
                MenuModeZoom2.Checked = (grpvars.GrpItems2.GrpCtrlMode == 1) ? true : false;
                MenuModeMove2.Checked = (grpvars.GrpItems2.GrpCtrlMode == 2) ? true : false;
                MenuModeCursor20.Checked = (grpvars.GrpItems2.GrpCtrlMode == 0 || grpvars.GrpItems2.GrpCtrlMode == 3) ? true : false;
                MenuModeCursor21.Checked = (grpvars.GrpItems2.GrpCtrlMode == 4) ? true : false;
                MenuModeCursor22.Checked = (grpvars.GrpItems2.GrpCtrlMode == 5) ? true : false;
                MenuModeCursor23.Checked = (grpvars.GrpItems2.GrpCtrlMode == 6) ? true : false;
                MenuModeCursor24.Checked = (grpvars.GrpItems2.GrpCtrlMode == 7) ? true : false;
                MenuModeCursor25.Checked = (grpvars.GrpItems2.GrpCtrlMode == 8) ? true : false;
                MenuModeCursor26.Checked = (grpvars.GrpItems2.GrpCtrlMode == 9) ? true : false;
            }
            else
            {
                MenuModeZoom1.Checked = (grpvars.GrpItems1.GrpCtrlMode == 1) ? true : false;
                MenuModeMove1.Checked = (grpvars.GrpItems1.GrpCtrlMode == 2) ? true : false;
                MenuModeCursor10.Checked = (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3) ? true : false;
                MenuModeCursor11.Checked = (grpvars.GrpItems1.GrpCtrlMode == 4) ? true : false;
                MenuModeCursor12.Checked = (grpvars.GrpItems1.GrpCtrlMode == 5) ? true : false;
                MenuModeCursor13.Checked = (grpvars.GrpItems1.GrpCtrlMode == 6) ? true : false;
                MenuModeCursor14.Checked = (grpvars.GrpItems1.GrpCtrlMode == 7) ? true : false;
                MenuModeCursor15.Checked = (grpvars.GrpItems1.GrpCtrlMode == 8) ? true : false;
                MenuModeCursor16.Checked = (grpvars.GrpItems1.GrpCtrlMode == 9) ? true : false;
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
                if (grpvars.GrpItems2.GrpCtrlMode == 0)
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
                    grp2.Cursors[0].Visible = false;
                    grp2.Cursors[0].LabelVisible = false;
                }
                else if (grpvars.GrpItems2.GrpCtrlMode == 1)
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
                    grp2.Cursors[0].Visible = false;
                    grp2.Cursors[0].LabelVisible = false;
                }
                else if (grpvars.GrpItems2.GrpCtrlMode == 2)
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
                    grp2.Cursors[0].Visible = false;
                    grp2.Cursors[0].LabelVisible = false;
                }
                else
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;

                    nPlot = grpvars.GrpItems2.GrpCtrlMode - 3;
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
                if (grpvars.GrpItems1.GrpCtrlMode == 0)
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;
                    grp1.Cursors[0].Visible = false;
                    grp1.Cursors[0].LabelVisible = false;
                }
                else if (grpvars.GrpItems1.GrpCtrlMode == 1)
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
                    grp1.Cursors[0].Visible = false;
                    grp1.Cursors[0].LabelVisible = false;
                }
                else if (grpvars.GrpItems1.GrpCtrlMode == 2)
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
                    grp1.Cursors[0].Visible = false;
                    grp1.Cursors[0].LabelVisible = false;
                }
                else
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;

                    nPlot = grpvars.GrpItems1.GrpCtrlMode - 3;
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
            Color ret = grpvars.GrpItems1.PlotColor[nPlot];
            if (nGrp == 2) ret = grpvars.GrpItems1.PlotColor[nPlot];
            return ret;
        }

        private void SetPlotColor(int nGrp, int nPlot, Color incolor)
        {
            if (nGrp == 2) grpvars.GrpItems2.PlotColor[nPlot] = incolor;
            else grpvars.GrpItems1.PlotColor[nPlot] = incolor;
            SaveGrpVarsToXml();
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
            if (nGrp == 2) cd.Color = grpvars.GrpItems2.BackColor;
            else cd.Color = grpvars.GrpItems1.BackColor;


            if (cd.ShowDialog() == DialogResult.OK)
            {
                if (nGrp == 2)
                {
                    grpvars.GrpItems2.BackColor = cd.Color;
                    grp2.PlotAreaColor = grpvars.GrpItems2.BackColor;
                }
                else
                {
                    grpvars.GrpItems1.BackColor = cd.Color;
                    grp1.PlotAreaColor = grpvars.GrpItems1.BackColor;
                }
                SaveGrpVarsToXml();
            }
        }

        private void ChgGrpAxisColor(int nGrp)
        {
            ColorDialog cd = new ColorDialog();
            if (nGrp == 2) cd.Color = grpvars.GrpItems2.Axis_Color;
            else cd.Color = grpvars.GrpItems1.Axis_Color;


            if (cd.ShowDialog() == DialogResult.OK)
            {
                ScatterGraph grp;
                if (nGrp == 2)
                {
                    grpvars.GrpItems2.Axis_Color = cd.Color;
                    grp = grp2;
                }
                else
                {
                    grpvars.GrpItems1.Axis_Color = cd.Color;
                    grp = grp1;
                }
                SaveGrpVarsToXml();

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
            if (nGrp == 2) cd.Color = grpvars.GrpItems2.GridColor;
            else cd.Color = grpvars.GrpItems1.GridColor;


            if (cd.ShowDialog() == DialogResult.OK)
            {
                ScatterGraph grp;
                if (nGrp == 2)
                {
                    grpvars.GrpItems2.GridColor = cd.Color;
                    grp = grp2;
                }
                else
                {
                    grpvars.GrpItems1.GridColor = cd.Color;
                    grp = grp1;
                }
                SaveGrpVarsToXml();

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


        #endregion GrpUtil


        #region GrpRefresh

        private void RefreshLegendSize(int index)
        {
/*            Point tpos;

            if (index == 1)
            {
                legend1.AutoSize = false;
                legend1.Width = 80;
                legend1.Height = 23 * grpvars.GrpItems1.GrpPlotCount + 8;

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
            else
            {
                Rtlegend.Width = 80;
                Rtlegend.Height = 23 * 2 + 8;

                int auxCount = 0;
                string[] auxNames = {
                    "AUX1", "AUX2", "AUX3", "AUX4", "AUX5", "AUX6",
                    "AUX7", "AUX8", "AUX9", "AUX10", "AUX11", "AUX12"
                };

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
            else if (techtype == enTechType.TECH_DCH)
            {
                RefreshGraphDCH();
            }
            else
            {
                RefreshGraphEIS();
            }
        }

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


        

        private void RefreshGraphSize()
        {
            bool isMCBZA = gBZA.IsMCBZA(serial);
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
                        tabgrp.Size = new Size(this.Size.Width - 175, this.Size.Height - 110);
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
            bool isMCBZA = gBZA.IsMCBZA(serial);
            stChStatusInf chstat = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch];
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;
            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            if (rdoAuxMon == 0)
            {
                for (int i = 0; i < grpvars.nAuxChCount && i < 12; i++) //chstat.Aux_Vdc.Length
                {
                    double vdcValue = chstat.Aux_Vdc[i];
                    string formattedValue = $"{vdcValue:0.000} V";
                    listAuxMon.Items[i].SubItems[1].Text = formattedValue;
                }
            }
            else if(rdoAuxMon == 1)
            {
                
                for (int i = 0; i < grpvars.nAuxChCount && i < 12; i++) //
                {
                    double zValue = gBZA.SifLnkLst[serial].MBZAIF.mChStatInf[sifch].DispMag[i];
                    /*if(rtgrp.item[ch].plot[2].ly[0].Count>0)
                    {
                        switch (techtype)
                        {
                            //case enTechType.TECH_HFR:
                            case enTechType.TECH_EIS:
                            case enTechType.TECH_QIS:
                                zValue = rtgrp.item[ch].plot[2].ly[0][rtgrp.item[ch].plot[2].ly[0].Count - 1];
                                break;
                        }
                    }*/
                    string formattedValue = $"{zValue:0.00000} Ω";
                    listAuxMon.Items[i].SubItems[1].Text = formattedValue;
                }
            }

            //var mrng = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges[0];
            var mrng = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges; // 배열
            TimeSpan ElapsedTime = TimeSpan.FromMilliseconds(chstat.RunTimeStamp);
            bool brun = gBZA.CheckStatusRun(chstat);
            bool bcalibMode = gBZA.CheckStatusCalibMode(chstat);
            
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

            for(int i=0; i < rawRadioButtons.Count;i++)
            {
                if(rawRadioButtons[i].Checked)
                {
                    if(i==0)
                    {
                        auxSlot = 0;
                        index = 0;
                        break;
                    }
                    else
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

            if (grpvars.GrpItemsRaw.GrpCtrlMode == 0)
            {
                rawgrp.Plots[0].PlotXY(vacBuffer.ToArray(), iacBuffer.ToArray());
                rawgrp.Plots[0].Visible = true;
                rawgrp.Plots[1].Visible = false;

                rawgrp.Plots[0].XAxis = rawgrp.XAxes[0];
                rawgrp.Plots[0].YAxis = rawgrp.YAxes[0];
                
            }
            else if (grpvars.GrpItemsRaw.GrpCtrlMode == 1)
            {
                rawgrp.Plots[1].PlotXY(idxBuffer.ToArray(), iacBuffer.ToArray());
                rawgrp.Plots[0].PlotXY(idxBuffer.ToArray(), vacBuffer.ToArray());

                rawgrp.Plots[0].Visible = true;
                rawgrp.Plots[1].Visible = true;

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
                rawgrp.XAxes[0].Range = new Range(xMin, xMax);
            }
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
        
        private void RefreshGraphHFR()
        {
            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            

            int plotcount = rtgrp.item[0].plot[3].ly[0].Count;
            int appendcount = 0;
            if (plotcount == 0) return;
            if (plotcount == grpvars.GrpItems1.LastPlotPoint) return;
            int st = 0;

            if (plotcount < grpvars.GrpItems1.LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st = grpvars.GrpItems1.LastPlotPoint;
                appendcount = plotcount - grpvars.GrpItems1.LastPlotPoint;
                grpvars.GrpItems1.LastPlotPoint = plotcount;
            }

            int nPlot;
            double maxval;
            double minval;
            double cmpval;

            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[appendcount];
            double[] pty = new double[appendcount];
            double time0 = -1.0;
            double time1 = -1.0;


            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3)
            {
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;

                    tx = rtgrp.item[i].plot[0].lx[0].ToArray();
                    ty = rtgrp.item[i].plot[0].ly[0].ToArray();

                    Array.Copy(tx, st, ptx, 0, appendcount);
                    if(i == 0) time0 = ptx[appendcount - 1];
                    Array.Copy(ty, st, pty, 0, appendcount);

                    grp1.Plots[nPlot].PlotXYAppend(ptx, pty);

                    if (maxval < rtgrp.item[i].plot[0].Maxval[0]) maxval = rtgrp.item[i].plot[0].Maxval[0];
                    if (minval > rtgrp.item[i].plot[0].Minval[0]) minval = rtgrp.item[i].plot[0].Minval[0];
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < minval)
                {
                    cmpval = minval;
                }

                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);
                if (minval == maxval && maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }
                grp1.YAxes[0].Range = new Range(minval, maxval);

                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;

                    tx = rtgrp.item[i].plot[1].lx[0].ToArray();
                    ty = rtgrp.item[i].plot[1].ly[0].ToArray();

                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);

                    grp1.Plots[nPlot+1].PlotXYAppend(ptx, pty);

                    if (maxval < rtgrp.item[i].plot[1].Maxval[0]) maxval = rtgrp.item[i].plot[1].Maxval[0];
                    if (minval > rtgrp.item[i].plot[1].Minval[0]) minval = rtgrp.item[i].plot[1].Minval[0];
                }
                cmpval = Math.Abs(maxval);
                if (cmpval < minval)
                {
                    cmpval = minval;
                }

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

                grp1.YAxes[1].Range = new Range(minval, maxval);

            }

            if (grpvars.GrpItems2.GrpCtrlMode == 0 || grpvars.GrpItems2.GrpCtrlMode == 3)
            {
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;

                    tx = rtgrp.item[i].plot[2].lx[0].ToArray();
                    ty = rtgrp.item[i].plot[2].ly[0].ToArray();

                    Array.Copy(tx, st, ptx, 0, appendcount);
                    if (i == 0) time1 = ptx[appendcount - 1];
                    Array.Copy(ty, st, pty, 0, appendcount);

                    grp2.Plots[nPlot].PlotXYAppend(ptx, pty);

                    if (maxval < rtgrp.item[i].plot[2].Maxval[0]) maxval = rtgrp.item[i].plot[2].Maxval[0];
                    if (minval > rtgrp.item[i].plot[2].Minval[0]) minval = rtgrp.item[i].plot[2].Minval[0];
                }


                cmpval = Math.Abs(maxval);
                if (cmpval < minval)
                {
                    cmpval = minval;
                }

                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);
                if (minval == maxval && maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }
                grp2.YAxes[0].Range = new Range(minval, maxval);

                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;

                    tx = rtgrp.item[i].plot[3].lx[0].ToArray();
                    ty = rtgrp.item[i].plot[3].ly[0].ToArray();

                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);

                    grp2.Plots[nPlot + 1].PlotXYAppend(ptx, pty);

                    if (maxval < rtgrp.item[i].plot[3].Maxval[0]) maxval = rtgrp.item[i].plot[3].Maxval[0];
                    if (minval > rtgrp.item[i].plot[3].Minval[0]) minval = rtgrp.item[i].plot[3].Minval[0];
                }
                cmpval = Math.Abs(maxval);
                if (cmpval < minval)
                {
                    cmpval = minval;
                }

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
            }

            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3 || grpvars.GrpItems2.GrpCtrlMode == 0 || grpvars.GrpItems2.GrpCtrlMode == 3)
            {
                RefreshGraphAxisTimeView(time0, time1);
            }
        }

        private void RefreshGraphEIS()
        {
            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            double maxval;
            double minval;
            double cmpval;

            int plotcount0 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[0].plot[2].ly[0].Count; // mag
            int plotcount1 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[0].plot[3].ly[0].Count; // phase
            int appendcount0 = 0;
            int appendcount1 = 0;

            if (plotcount0 == 0 && plotcount1 == 0) return;

            if (plotcount0 == grpvars.GrpItems1.LastPlotPoint && plotcount1 == grpvars.GrpItems1.LastPlotPoint1) return;

            int st0 = 0;
            int st1 = 0;

            if (plotcount0 < grpvars.GrpItems1.LastPlotPoint || plotcount1 < grpvars.GrpItems1.LastPlotPoint1)
            {
                InitGraphType();
            }
            else
            {
                st0 = grpvars.GrpItems1.LastPlotPoint;
                appendcount0 = plotcount0 - grpvars.GrpItems1.LastPlotPoint;
                grpvars.GrpItems1.LastPlotPoint = plotcount0;

                st1 = grpvars.GrpItems1.LastPlotPoint1;
                appendcount1 = plotcount1 - grpvars.GrpItems1.LastPlotPoint1;
                grpvars.GrpItems1.LastPlotPoint1 = plotcount1;
            }
            int nPlot;
            
            double[] tx = null;
            double[] ty = null;
            double[] ptx0 = new double[appendcount0];
            double[] pty0 = new double[appendcount0];
            double[] ptx1 = new double[appendcount1];
            double[] pty1 = new double[appendcount1];

            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3)
            {
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    if (appendcount0 > 0)
                    {
                        tx = rtgrp.item[i].plot[0].lx[0].ToArray();
                        ty = rtgrp.item[i].plot[0].ly[0].ToArray();
                        Array.Copy(tx, st0, ptx0, 0, appendcount0);
                        Array.Copy(ty, st0, pty0, 0, appendcount0);
                        grp1.Plots[nPlot].PlotXYAppend(ptx0, pty0);
                        //grp1.Plots[0+nPlot1].PlotXY(rtgrp.plot[0].lx[0].ToArray(), rtgrp.plot[0].ly[0].ToArray());
                        if (maxval < rtgrp.item[i].plot[0].Maxval[0]) maxval = rtgrp.item[i].plot[0].Maxval[0];
                        if (minval > rtgrp.item[i].plot[0].Minval[0]) minval = rtgrp.item[i].plot[0].Minval[0];
                    }
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
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

                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    if (maxval < rtgrp.item[i].plot[0].Maxval[2]) maxval = rtgrp.item[i].plot[0].Maxval[2];
                    if (minval > rtgrp.item[i].plot[0].Minval[2]) minval = rtgrp.item[i].plot[0].Minval[2];
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
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

                grp1.XAxes[0].Range = new Range(minval, maxval);
            }

            if (grpvars.GrpItems2.GrpCtrlMode == 0 || grpvars.GrpItems2.GrpCtrlMode == 3)
            {
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    if (appendcount0 > 0) // mag
                    {
                        tx = rtgrp.item[i].plot[2].lx[0].ToArray();
                        ty = rtgrp.item[i].plot[2].ly[0].ToArray();
                        Array.Copy(tx, st0, ptx0, 0, appendcount0);
                        Array.Copy(ty, st0, pty0, 0, appendcount0);
                        grp2.Plots[nPlot].PlotXYAppend(ptx0, pty0);
                        //grp2.Plots[0+nPlot2].PlotXY(rtgrp.plot[2].lx[0].ToArray(), rtgrp.plot[2].ly[0].ToArray());
                        if (maxval < rtgrp.item[i].plot[2].Maxval[0]) maxval = rtgrp.item[i].plot[2].Maxval[0];
                        if (minval > rtgrp.item[i].plot[2].Minval[0]) minval = rtgrp.item[i].plot[2].Minval[0];
                    }

                }
                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
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

                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    if (appendcount1 > 0) // phase
                    {
                        tx = rtgrp.item[i].plot[3].lx[0].ToArray();
                        ty = rtgrp.item[i].plot[3].ly[0].ToArray();
                        Array.Copy(tx, st1, ptx1, 0, appendcount1);
                        Array.Copy(ty, st1, pty1, 0, appendcount1);
                        grp2.Plots[nPlot + 1].PlotXYAppend(ptx1, pty1); // 0206 6
                        //grp2.Plots[0].PlotXY(rtgrp.plot[2].lx[1].ToArray(), rtgrp.plot[2].ly[1].ToArray()); // 0206 6
                        if (maxval < rtgrp.item[i].plot[3].Maxval[0]) maxval = rtgrp.item[i].plot[3].Maxval[0];
                        if (minval > rtgrp.item[i].plot[3].Minval[0]) minval = rtgrp.item[i].plot[3].Minval[0];
                    }
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
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

          
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;

                    if (maxval < rtgrp.item[i].plot[3].Maxval[2]) maxval = rtgrp.item[i].plot[3].Maxval[2]; // frequency
                    if (minval > rtgrp.item[i].plot[3].Minval[2]) minval = rtgrp.item[i].plot[3].Minval[2];
                }

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
                else
                {
                    minval -= minval * GrpSpaceRate;
                    maxval += maxval * GrpSpaceRate;
                }
                if (minval <= 0.045) minval = 0.045;
                grp2.XAxes[0].Range = new Range(minval, maxval);
            }
        }

        private void RefreshGraphQIS()
        {
            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            double maxval;
            double minval;
            double cmpval;

            int plotcount0 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[0].plot[2].ly[0].Count;
            int plotcount1 = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[0].plot[3].ly[1].Count;
            int appendcount0 = 0;
            int appendcount1 = 0;

            if (plotcount0 == 0 && plotcount1 == 0) return;

            if (plotcount0 == grpvars.GrpItems1.LastPlotPoint && plotcount1 == grpvars.GrpItems1.LastPlotPoint1) return;

            int st0 = 0;
            int st1 = 0;

            if (plotcount0 < grpvars.GrpItems1.LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st0 = grpvars.GrpItems1.LastPlotPoint;
                appendcount0 = plotcount0 - grpvars.GrpItems1.LastPlotPoint;
                grpvars.GrpItems1.LastPlotPoint = plotcount0;
            }

            int nPlot;
            if (plotcount1 < grpvars.GrpItems1.LastPlotPoint1)
            {
                grpvars.GrpItems1.LastPlotPoint1 = 0;
                st1 = 0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    for(int j = 0; j< MBZA_Constant.MAX_GRAPH_PLOTS; j++)
                    {
                        grp1.Plots[nPlot+j].ClearData();
                    }
                }
            }
            else
            {
                st1 = grpvars.GrpItems1.LastPlotPoint1;
                appendcount1 = plotcount1 - grpvars.GrpItems1.LastPlotPoint1;
                grpvars.GrpItems1.LastPlotPoint1 = plotcount1;
            }

            double[] tx = null;
            double[] ty = null;
            double[] ptx0 = new double[appendcount0];
            double[] pty0 = new double[appendcount0];
            double[] ptx1 = new double[appendcount1];
            double[] pty1 = new double[appendcount1];
            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3)
            {
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    if (appendcount0 > 0)
                    {
                        tx = rtgrp.item[i].plot[0].lx[0].ToArray();
                        ty = rtgrp.item[i].plot[0].ly[0].ToArray();
                        Array.Copy(tx, st0, ptx0, 0, appendcount0);
                        Array.Copy(ty, st0, pty0, 0, appendcount0);
                        grp1.Plots[nPlot].PlotXYAppend(ptx0, pty0);
                        if (maxval < rtgrp.item[i].plot[0].Maxval[0]) maxval = rtgrp.item[i].plot[0].Maxval[0];
                        if (minval > rtgrp.item[i].plot[0].Minval[0]) minval = rtgrp.item[i].plot[0].Minval[0];
                    }
                    /*if (appendcount1 > 0)
                    {
                        tx = rtgrp.item[i].plot[0].lx[1].ToArray();
                        ty = rtgrp.item[i].plot[0].ly[1].ToArray();
                        Array.Copy(tx, st1, ptx1, 0, appendcount1);
                        Array.Copy(ty, st1, pty1, 0, appendcount1);
                        grp1.Plots[nPlot].PlotXYAppend(ptx1, pty1); // 0206 6
                        if (maxval < rtgrp.item[i].plot[0].Maxval[1]) maxval = rtgrp.item[i].plot[0].Maxval[1];
                        if (minval > rtgrp.item[i].plot[0].Minval[1]) minval = rtgrp.item[i].plot[0].Minval[1];
                    }*/
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
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

                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    if (maxval < rtgrp.item[i].plot[0].Maxval[2]) maxval = rtgrp.item[i].plot[0].Maxval[2];
                    if (minval > rtgrp.item[i].plot[0].Minval[2]) minval = rtgrp.item[i].plot[0].Minval[2];
                }
                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
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

                grp1.XAxes[0].Range = new Range(minval, maxval);
            }

            if (grpvars.GrpItems2.GrpCtrlMode == 0 || grpvars.GrpItems2.GrpCtrlMode == 3)
            {
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    if (appendcount0 > 0)
                    {
                        tx = rtgrp.item[i].plot[2].lx[0].ToArray();
                        ty = rtgrp.item[i].plot[2].ly[0].ToArray();
                        Array.Copy(tx, st0, ptx0, 0, appendcount0);
                        Array.Copy(ty, st0, pty0, 0, appendcount0);
                        grp2.Plots[nPlot].PlotXYAppend(ptx0, pty0);
                        if (maxval < rtgrp.item[i].plot[2].Maxval[0]) maxval = rtgrp.item[i].plot[2].Maxval[0];
                        if (minval > rtgrp.item[i].plot[2].Minval[0]) minval = rtgrp.item[i].plot[2].Minval[0];
                    }
                    /*if (appendcount1 > 0)
                    {
                        tx = rtgrp.item[i].plot[2].lx[1].ToArray();
                        ty = rtgrp.item[i].plot[2].ly[1].ToArray();
                        Array.Copy(tx, st1, ptx1, 0, appendcount1);
                        Array.Copy(ty, st1, pty1, 0, appendcount1);
                        grp2.Plots[nPlot].PlotXYAppend(ptx1, pty1); // 0206 6
                        if (maxval < rtgrp.item[i].plot[2].Maxval[1]) maxval = rtgrp.item[i].plot[2].Maxval[1];
                        if (minval > rtgrp.item[i].plot[2].Minval[1]) minval = rtgrp.item[i].plot[2].Minval[1];
                    }*/
                }
                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
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

                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    if (appendcount0 > 0)
                    {
                        tx = rtgrp.item[i].plot[3].lx[0].ToArray();
                        ty = rtgrp.item[i].plot[3].ly[0].ToArray();
                        grp2.Plots[nPlot + 1].PlotXYAppend(tx, ty, st0, appendcount0);
                        if (maxval < rtgrp.item[i].plot[3].Maxval[0]) maxval = rtgrp.item[i].plot[3].Maxval[0];
                        if (minval > rtgrp.item[i].plot[3].Minval[0]) minval = rtgrp.item[i].plot[3].Minval[0];
                    }
                    /*if (appendcount1 > 0)
                    {
                        tx = rtgrp.item[i].plot[3].lx[1].ToArray();
                        ty = rtgrp.item[i].plot[3].ly[1].ToArray();
                        grp2.Plots[nPlot + 1].PlotXYAppend(tx, ty, st1, appendcount1); // 0206 7
                        if (maxval < rtgrp.item[i].plot[3].Maxval[1]) maxval = rtgrp.item[i].plot[2].Maxval[1];
                        if (minval > rtgrp.item[i].plot[3].Minval[1]) minval = rtgrp.item[i].plot[2].Minval[1];
                    }*/
                }

                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
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

                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    if (maxval < rtgrp.item[i].plot[3].Maxval[2]) maxval = rtgrp.item[i].plot[3].Maxval[2];
                    if (minval > rtgrp.item[i].plot[3].Maxval[2]) minval = rtgrp.item[i].plot[3].Minval[2];
                }
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
                else
                {
                    minval -= minval * GrpSpaceRate;
                    maxval += maxval * GrpSpaceRate;
                }
                if (minval <= 0.045) minval = 0.045;
                grp2.XAxes[0].Range = new Range(minval, maxval);
            }
        }

        private void RefreshGraphAxisTimeView(double time0, double time1)
        {
            double value = 0.0;
            
            if(time0 >= 0.0)
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
            if (time1 >= 0.0)
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

        private void RefreshGraphPRR()
        {
            int i;
            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            //double maxval;
            //double minval;
            //double cmpval;
            if (gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt == 0) return;

            int plotcount = rtgrp.item[0].plot[3].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].Count;
            int appendcount = 0;
            int st = 0;
            if (plotcount == 0) return;
            if (plotcount == grpvars.GrpItems1.LastPlotPoint) return;


            if (plotcount < grpvars.GrpItems1.LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st = grpvars.GrpItems1.LastPlotPoint;
                appendcount = plotcount - grpvars.GrpItems1.LastPlotPoint;
                grpvars.GrpItems1.LastPlotPoint = plotcount;
            }
            int nPlot;

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
                
                if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3)
                {
                    if (i == 1)
                    {
                        for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                        {
                            nPlot = j * MBZA_Constant.MAX_GRAPH_PLOTS;

                            tx = rtgrp.item[j].plot[0].lx[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
                            ty = rtgrp.item[j].plot[0].ly[gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].arrcnt - 1].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[nPlot + i].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                        }
                    }
                    else if (i == 0)
                    { 
                        for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                        {
                            nPlot = j * MBZA_Constant.MAX_GRAPH_PLOTS;

                            tx = rtgrp.item[j].plot[0].lx[i].ToArray();
                            ty = rtgrp.item[j].plot[0].ly[i].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[nPlot + i].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                        }
                    }
                    else if(i == 2)
                    {
                        for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                        {
                            nPlot = j * MBZA_Constant.MAX_GRAPH_PLOTS;

                            tx = rtgrp.item[j].plot[0].lx[i].ToArray();
                            ty = rtgrp.item[j].plot[0].ly[i].ToArray();
                            count = tx.Length;
                            if (count > appendcount) count = appendcount;
                            if (count > 0)
                            {
                                Array.Copy(tx, st, ptx, 0, count);
                                Array.Copy(ty, st, pty, 0, count);
                                grp1.Plots[nPlot + i].PlotXYAppend(ptx, pty);
                                time0 = ptx[count - 1];
                            }
                        }
                    }
                }

                if (grpvars.GrpItems2.GrpCtrlMode == 0 || grpvars.GrpItems2.GrpCtrlMode == 3)
                {
                    for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                    {
                        nPlot = j * MBZA_Constant.MAX_GRAPH_PLOTS;
                        tx = rtgrp.item[j].plot[2].lx[i].ToArray();
                        ty = rtgrp.item[j].plot[2].ly[i].ToArray();
                        Array.Copy(tx, st, ptx, 0, appendcount);
                        Array.Copy(ty, st, pty, 0, appendcount);
                        grp2.Plots[nPlot + i].PlotXYAppend(ptx, pty);
                        time1 = ptx[appendcount - 1];


                        tx = rtgrp.item[j].plot[3].lx[i].ToArray();
                        ty = rtgrp.item[j].plot[3].ly[i].ToArray();
                        Array.Copy(tx, st, ptx, 0, appendcount);
                        Array.Copy(ty, st, pty, 0, appendcount);
                        grp2.Plots[nPlot + i + 3].PlotXYAppend(ptx, pty);
                    }
                }
            }


            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3 || grpvars.GrpItems2.GrpCtrlMode == 0 || grpvars.GrpItems2.GrpCtrlMode == 3)
            {
                RefreshGraphAxisTimeView(time0, time1);
            }

        }

        private void RefreshGraphMON()
        {
            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            double maxval;
            double minval;
            double cmpval;

            int plotcount = rtgrp.item[0].plot[1].ly[0].Count;
            int appendcount = 0;
            int st = 0;
            if (plotcount == 0) return;
            if (plotcount == grpvars.GrpItems1.LastPlotPoint) return;
            if (plotcount < grpvars.GrpItems1.LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st = grpvars.GrpItems1.LastPlotPoint;
                appendcount = plotcount - grpvars.GrpItems1.LastPlotPoint;
                grpvars.GrpItems1.LastPlotPoint = plotcount;
            }
            int nPlot;

            int nPlot1 = 1;
            //int nPlot2 = 2;
            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[appendcount];
            double[] pty = new double[appendcount];
            double time0 = -1.0;
            double time1 = -1.0;

            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3)
            {
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    tx = rtgrp.item[i].plot[0].lx[0].ToArray();
                    ty = rtgrp.item[i].plot[0].ly[0].ToArray();
                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);
                    time0 = ptx[appendcount - 1];
                    grp1.Plots[nPlot].PlotXYAppend(ptx, pty);

                    if (maxval < rtgrp.item[i].plot[0].Maxval[0]) maxval = rtgrp.item[i].plot[0].Maxval[0];
                    if (minval > rtgrp.item[i].plot[0].Minval[0]) minval = rtgrp.item[i].plot[0].Minval[0];
                }
                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);
                if (minval == maxval && maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }
                grp1.YAxes[0].Range = new Range(minval, maxval);

                maxval = -99999.0;
                minval = 99999.0;
                //for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    int i = 0;
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    tx = rtgrp.item[i].plot[1].lx[0].ToArray();
                    ty = rtgrp.item[i].plot[1].ly[0].ToArray();
                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);
                    grp1.Plots[1 + nPlot].PlotXYAppend(ptx, pty);
                    if (maxval < rtgrp.item[i].plot[1].Maxval[0]) maxval = rtgrp.item[i].plot[1].Maxval[0];
                    if (minval > rtgrp.item[i].plot[1].Minval[0]) minval = rtgrp.item[i].plot[1].Minval[0];
                }
                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);
                if (minval == maxval && maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }
                grp1.YAxes[1].Range = new Range(minval, maxval);
            }
           
            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3 || grpvars.GrpItems2.GrpCtrlMode == 0 || grpvars.GrpItems2.GrpCtrlMode == 3)
            {
                RefreshGraphAxisTimeView(time0, time1);
            }
        }

        private void RefreshGraphDCH()
        {
            st_zim_rt rtgrp = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            double maxval;
            double minval;
            double cmpval;

            int plotcount = rtgrp.item[0].plot[1].ly[0].Count;
            int appendcount = 0;
            int st = 0;
            if (plotcount == 0) return;
            if (plotcount == grpvars.GrpItems1.LastPlotPoint) return;
            if (plotcount < grpvars.GrpItems1.LastPlotPoint)
            {
                InitGraphType();
            }
            else
            {
                st = grpvars.GrpItems1.LastPlotPoint;
                appendcount = plotcount - grpvars.GrpItems1.LastPlotPoint;
                grpvars.GrpItems1.LastPlotPoint = plotcount;
            }
            int nPlot;
            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[appendcount];
            double[] pty = new double[appendcount];
            double time0 = -1.0;
            double time1 = -1.0;

            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3)
            {
                maxval = -99999.0;
                minval = 99999.0;
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    tx = rtgrp.item[i].plot[0].lx[0].ToArray();
                    ty = rtgrp.item[i].plot[0].ly[0].ToArray();
                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);
                    time0 = ptx[appendcount - 1];
                    grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
                    if (maxval < rtgrp.item[i].plot[0].Maxval[0]) maxval = rtgrp.item[i].plot[0].Maxval[0];
                    if (minval > rtgrp.item[i].plot[0].Minval[0]) minval = rtgrp.item[i].plot[0].Minval[0];
                }
                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);
                if (minval == maxval && maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }
                grp1.YAxes[0].Range = new Range(minval, maxval);

                maxval = -99999.0;
                minval = 99999.0;
                //for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    int i = 0;
                    nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS;
                    tx = rtgrp.item[i].plot[1].lx[0].ToArray();
                    ty = rtgrp.item[i].plot[1].ly[0].ToArray();
                    Array.Copy(tx, st, ptx, 0, appendcount);
                    Array.Copy(ty, st, pty, 0, appendcount);
                    grp1.Plots[nPlot + 1].PlotXYAppend(ptx, pty);
                    if (maxval < rtgrp.item[i].plot[1].Maxval[0]) maxval = rtgrp.item[i].plot[1].Maxval[0];
                    if (minval > rtgrp.item[i].plot[1].Minval[0]) minval = rtgrp.item[i].plot[1].Minval[0];
                }
                cmpval = Math.Abs(maxval);
                if (cmpval < Math.Abs(minval))
                {
                    cmpval = Math.Abs(minval);
                }
                maxval = maxval + (cmpval * GrpSpaceRate);
                minval = minval - (cmpval * GrpSpaceRate);
                if (minval == maxval && maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }
                grp1.YAxes[1].Range = new Range(minval, maxval);
            }
           
            if (grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3 || grpvars.GrpItems1.GrpCtrlMode == 0 || grpvars.GrpItems1.GrpCtrlMode == 3)
            {
                RefreshGraphAxisTimeView(time0, time1);
            }
        }


        #endregion GrpRefresh

        #region RtGrpMenu
        private void RtMenuGraphMode1_Click(object sender, EventArgs e)
        {
            grpvars.GrpItemsRT.Type = 0;
            grpvars.GrpItemsRT.GrpCtrlMode = 0;
            RtMenuGraphMode2.Checked = false;
            grprt.XAxes[0].Caption = "Voltage(V)";
            grprt.YAxes[0].Caption = "Current(A)";
            initGraphRT_graphsetting();
            RefreshRtView();
        }

        private void RtMenuGraphMode2_Click(object sender, EventArgs e)
        {
            grpvars.GrpItemsRT.Type = 1;
            grpvars.GrpItemsRT.GrpCtrlMode = 1;
            RtMenuGraphMode1.Checked = false;
            grprt.XAxes[0].Caption = "Time";
            grprt.YAxes[0].Caption = "Voltage(V)";
            grprt.YAxes[1].Caption = "Current(A)";
            initGraphRT_graphsetting();
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
            int grptype = 3;
            frmSetPlotsColor spc = new frmSetPlotsColor(ch, grpvars, grptype);
            if (spc.ShowDialog() == DialogResult.OK)
            {
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    for (int j = 0; j < 2; j++)
                    {
                        grprt.Plots[i * 2 + j].LineColor = grpvars.GrpItemsRT.PlotColor[i * 2 + j];
                        grprt.Plots[i * 2 + j].PointColor = grpvars.GrpItemsRT.PlotColor[i * 2 + j];
                    }
                }
                this.BeginInvoke(new System.Action(() =>
                {
                    grprt.Invalidate();
                    grprt.Update();
                }));
            }
            /*ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_Plot1_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_Plot1_Color = cd.Color;
                Properties.Settings.Default.Save();
                grprt.Plots[0].LineColor = Properties.Settings.Default.RtGrp_Plot1_Color;
                grprt.Plots[0].PointColor = Properties.Settings.Default.RtGrp_Plot1_Color;
            }*/
        }

        private void MenuGraphPlotColor1_Click(object sender, EventArgs e) //MenuPlotColor11_Click
        {
            int grptype = 1;
            frmSetPlotsColor spc = new frmSetPlotsColor(ch, grpvars, grptype);
            if (spc.ShowDialog() == DialogResult.OK)
            {
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    for (int j = 0; j < MBZA_Constant.MAX_GRAPH_PLOTS; j++)
                    {
                        grp1.Plots[i * MBZA_Constant.MAX_GRAPH_PLOTS + j].LineColor = grpvars.GrpItems1.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                        grp1.Plots[i * MBZA_Constant.MAX_GRAPH_PLOTS + j].PointColor = grpvars.GrpItems1.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                    }
                }
                this.BeginInvoke(new System.Action(() =>
                {
                    grp1.Invalidate();
                    grp1.Update();
                }));
            }
        }

        private void MenuGraphPlotColor2_Click(object sender, EventArgs e)
        {
            int grptype = 2;
            frmSetPlotsColor spc = new frmSetPlotsColor(ch, grpvars, grptype);
            if (spc.ShowDialog() == DialogResult.OK)
            {
                for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
                {
                    for (int j = 0; j < MBZA_Constant.MAX_GRAPH_PLOTS; j++)
                    {
                        grp2.Plots[i * MBZA_Constant.MAX_GRAPH_PLOTS + j].LineColor = grpvars.GrpItems2.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                        grp2.Plots[i * MBZA_Constant.MAX_GRAPH_PLOTS + j].PointColor = grpvars.GrpItems2.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                    }
                }
                this.BeginInvoke(new System.Action(() =>
                {
                    grp2.Invalidate();
                    grp2.Update();
                }));
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
            if (MenuModeZoom1.Checked) grpvars.GrpItems1.GrpCtrlMode = 0;
            else grpvars.GrpItems1.GrpCtrlMode = 1;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
            RefreshGraphMode(1);
        }

        private void MenuModeMove1_Click(object sender, EventArgs e)
        {
            if (MenuModeMove1.Checked) grpvars.GrpItems1.GrpCtrlMode = 0;
            else grpvars.GrpItems1.GrpCtrlMode = 2;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor10_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor10.Checked) grpvars.GrpItems1.GrpCtrlMode = 0;
            else grpvars.GrpItems1.GrpCtrlMode = 3;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
            RefreshGraphMode(1);   
        }

        private void MenuModeCursor11_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor11.Checked) grpvars.GrpItems1.GrpCtrlMode = 3;
            else grpvars.GrpItems1.GrpCtrlMode = 4;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor12_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor12.Checked) grpvars.GrpItems1.GrpCtrlMode = 3;
            else grpvars.GrpItems1.GrpCtrlMode = 5;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor13_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor13.Checked) grpvars.GrpItems1.GrpCtrlMode = 3;
            else grpvars.GrpItems1.GrpCtrlMode = 6;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor14_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor14.Checked) grpvars.GrpItems1.GrpCtrlMode = 3;
            else grpvars.GrpItems1.GrpCtrlMode = 7;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor15_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor15.Checked) grpvars.GrpItems1.GrpCtrlMode = 3;
            else grpvars.GrpItems1.GrpCtrlMode = 8;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
            RefreshGraphMode(1);
        }

        private void MenuModeCursor16_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor16.Checked) grpvars.GrpItems1.GrpCtrlMode = 3;
            else grpvars.GrpItems1.GrpCtrlMode = 9;
            ApplyMenuGraphMode(1, grpvars.GrpItems1.GrpCtrlMode);
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
            if (MenuModeZoom2.Checked) grpvars.GrpItems2.GrpCtrlMode = 0;
            else grpvars.GrpItems2.GrpCtrlMode = 1;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
            RefreshGraphMode(2);
        }

        private void MenuModeMove2_Click(object sender, EventArgs e)
        {
            if (MenuModeMove2.Checked) grpvars.GrpItems2.GrpCtrlMode = 0;
            else grpvars.GrpItems2.GrpCtrlMode = 2;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor20_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor20.Checked) grpvars.GrpItems2.GrpCtrlMode = 0;
            else grpvars.GrpItems2.GrpCtrlMode = 3;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
            RefreshGraphMode(2);
            
        }

        private void MenuModeCursor21_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor21.Checked) grpvars.GrpItems2.GrpCtrlMode = 3;
            else grpvars.GrpItems2.GrpCtrlMode = 4;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor22_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor22.Checked) grpvars.GrpItems2.GrpCtrlMode = 3;
            else grpvars.GrpItems2.GrpCtrlMode = 5;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor23_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor23.Checked) grpvars.GrpItems2.GrpCtrlMode = 3;
            else grpvars.GrpItems2.GrpCtrlMode = 6;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor24_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor24.Checked) grpvars.GrpItems2.GrpCtrlMode = 3;
            else grpvars.GrpItems2.GrpCtrlMode = 7;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor25_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor25.Checked) grpvars.GrpItems2.GrpCtrlMode = 3;
            else grpvars.GrpItems2.GrpCtrlMode = 8;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
            RefreshGraphMode(2);
        }

        private void MenuModeCursor26_Click(object sender, EventArgs e)
        {
            if (MenuModeCursor26.Checked) grpvars.GrpItems2.GrpCtrlMode = 3;
            else grpvars.GrpItems2.GrpCtrlMode = 9;
            ApplyMenuGraphMode(2, grpvars.GrpItems2.GrpCtrlMode);
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
        private void DeForm_OpensGraphClick(object sender, EventArgs e)
        {
            DataViewEventArgs dvea = (DataViewEventArgs)e;
            string[] slist = new string[1];
            slist[0] = dvea.DataFileName;
            OpenResGraph(slist);
        }
        private void OpenDataEditor(string filename)
        {
            DataEditorForm deForm = new DataEditorForm();
            deForm.MsgBoxCaption = this.Text;

            deForm.EnAlwaysOpenPath = false;
            deForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            deForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            deForm.TimeFormat = 1;
            deForm.OpenDataEditorEvent += EgForm_OpenDataEditorClick;
            deForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
            deForm.OpenGraphClick += DeForm_OpensGraphClick;

            deForm.ExtAppPath = gBZA._ExtAppPath;
            //deForm.MdiParent = this.MdiParent;

            deForm.ShowInTaskbar = false;
            deForm.Initialize(0);

            deForm.Show();
            deForm.LoadData(filename);
        }
        

        private void EgForm_OpenDataEditorClick(object sender, EventArgs e)
        {
            DataViewEventArgs dvea = (DataViewEventArgs)e;

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
            //frmTech.MdiParent = this.MdiParent;

            
            if (gBZA.appcfg.TechLocation == new Point(0, 0))
            {
                frmTech.StartPosition = FormStartPosition.CenterScreen;
                gBZA.appcfg.TechLocation = frmTech.Location;
                gBZA.appcfg.Save();
            }
            else
            {
                frmTech.StartPosition = FormStartPosition.Manual;
                frmTech.Location = gBZA.appcfg.TechLocation;
                frmTech.StartPosition = FormStartPosition.Manual;
            }
            
            if(frmTech.bopen)  frmTech.Show();
            frmTech.WindowState = FormWindowState.Normal;
        }

        private void EgForm_OpenTechEditorClick(object sender, EventArgs e)
        {
            DataViewEventArgs dvea = (DataViewEventArgs)e;
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
            grpvars.GrpItems1.LegendMove = true;
            grpvars.GrpItems1.LegendPointS = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
        }

        private void legend1_MouseMove(object sender, MouseEventArgs e)
        {

        }

        private void legend1_MouseUp(object sender, MouseEventArgs e)
        {
            grpvars.GrpItems1.LegendMove = false;
        }

        private void legend2_MouseDown(object sender, MouseEventArgs e)
        {
            grpvars.GrpItems2.LegendMove = true;
            grpvars.GrpItems2.LegendPointS = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
        }

        private void legend2_MouseMove(object sender, MouseEventArgs e)
        {
            if (grpvars.GrpItems2.LegendMove == false) return;
            grpvars.GrpItems2.LegendPointE = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
            Point temp = new Point((legend2.Location.X + (grpvars.GrpItems2.LegendPointE.X - grpvars.GrpItems2.LegendPointS.X)),
                            (legend2.Location.Y + (grpvars.GrpItems2.LegendPointE.Y - grpvars.GrpItems2.LegendPointS.Y)));
            grpvars.GrpItems2.LegendPointS = grpvars.GrpItems2.LegendPointE;
            legend2.Location = temp;
        }

        private void legend2_MouseUp(object sender, MouseEventArgs e)
        {
            grpvars.GrpItems2.LegendMove = false;
        }

        private void Rtlegend_MouseDown(object sender, MouseEventArgs e)
        {
            grpvars.GrpItemsRT.LegendMove = true;
            grpvars.GrpItemsRT.LegendPointS = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
        }

        private void Rtlegend_MouseMove(object sender, MouseEventArgs e)
        {
            if (grpvars.GrpItemsRT.LegendMove == false) return;
            grpvars.GrpItemsRT.LegendPointE = ((Control)sender).PointToScreen(new Point(e.X, e.Y));
            Point temp = new Point((Rtlegend.Location.X + (grpvars.GrpItemsRT.LegendPointE.X - grpvars.GrpItemsRT.LegendPointS.X)),
                            (Rtlegend.Location.Y + (grpvars.GrpItemsRT.LegendPointE.Y - grpvars.GrpItemsRT.LegendPointS.Y)));
            grpvars.GrpItemsRT.LegendPointS = grpvars.GrpItemsRT.LegendPointE;
            Rtlegend.Location = temp;
        }

        private void Rtlegend_MouseUp(object sender, MouseEventArgs e)
        {
            grpvars.GrpItemsRT.LegendMove = false;
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
            GeneralGraphForm ggForm = new GeneralGraphForm(0);

            var assembly = Assembly.GetExecutingAssembly();
            AssemblyTitleAttribute titleAttribute = (AssemblyTitleAttribute)Attribute.GetCustomAttribute(assembly, typeof(AssemblyTitleAttribute));

            ggForm.MsgBoxCaption = titleAttribute.Title;
            ggForm.EnAlwaysOpenPath = false;
            ggForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            ggForm.AllowTransparency = false;
            ggForm.OpenDataEditorClick += EgForm_OpenDataEditorClick;
            ggForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;

            ggForm.ExtAppPath = gBZA._ExtAppPath;
            ggForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            //ggForm.UnitC = false;
            ggForm.TimeFormat = 1;
            //ggForm.MdiParent = this.MdiParent;
            ggForm.ShowInTaskbar = false;
            ggForm.Show();
            
            if (filename != null)
            {
                ggForm.LoadFiles(filename);
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
            if (grpvars.GrpItemsRT.bStopRefresh) grpvars.GrpItemsRT.bStopRefresh = false;
            else grpvars.GrpItemsRT.bStopRefresh = true;
        }

        private void grp1_CursorChanged(object sender, EventArgs e)
        {
            
        }

        private void grp1_PlotAreaMouseDown(object sender, MouseEventArgs e)
        {

        }

        private void grp1_PlotAreaMouseMove(object sender, MouseEventArgs e)
        {
            if (grpvars.GrpItems1.GrpCtrlMode > 3)
            {
                if (this.tabgrp.TabPages.Contains(this.TabGrp2) == false)
                {
                    lblcsfreq1.Visible = false;
                    grp1.CaptionVisible = false;
                    return;
                }
                int idx = grp1.Cursors[0].GetCurrentIndex();
                if (grpvars.GrpItems1.LastCursorIndex != idx)
                {
                    grpvars.GrpItems1.LastCursorIndex = idx;
                    if (idx < 0) return;
                    if (idx >= gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[grpvars.GrpItems1.SelItem].plot[0].freq[0].Count) return;
                    double freq = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[grpvars.GrpItems1.SelItem].plot[0].freq[0][idx];
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
            if (grpvars.GrpItems2.GrpCtrlMode > 3)
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
                    if (grpvars.GrpItems2.LastCursorIndex != idx)
                    {
                        grpvars.GrpItems2.LastCursorIndex = idx;
                        if (idx < 0) return;
                        if (idx >= gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[grpvars.GrpItems1.SelItem].plot[2].freq[0].Count) return;

                        double freq = gBZA.SifLnkLst[serial].MBZAIF.mChRtGrp[sifch].rtgrp.item[grpvars.GrpItems1.SelItem].plot[2].freq[0][idx];
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

        private void ChkListItem1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int nPlot = 0;
            int outindex = 0;
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;
            if (begindlg)
                return;
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS; 
                switch (techtype)
                {
                    case enTechType.TECH_DCH:
                    case enTechType.TECH_MON:
                    case enTechType.TECH_HFR:
                    case enTechType.TECH_EIS:
                    case enTechType.TECH_QIS:
                        grp1.Plots[nPlot].Visible = false;
                        grp1.Plots[nPlot + 1].Visible = false;
                        if (plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                            legend1.Items[plotToLegendMapGrp1[nPlot]].Visible = false;
                        if (plotToLegendMapGrp1.TryGetValue(nPlot+1, out outindex))
                            legend1.Items[plotToLegendMapGrp1[nPlot + 1]].Visible = false;
                        break;
                    case enTechType.TECH_PRR:
                        for (int j = 0; j < 3; j++)
                        {
                            grp1.Plots[nPlot + j].Visible = false;
                            if (plotToLegendMapGrp1.TryGetValue(nPlot+j, out outindex))
                                legend1.Items[plotToLegendMapGrp1[nPlot + j]].Visible = false;
                        }
                        break;
                }
            }
            foreach (int index in ChkListItem1.CheckedIndices)
            {
                nPlot = index * MBZA_Constant.MAX_GRAPH_PLOTS;
                switch (techtype)
                {
                    case enTechType.TECH_DCH:
                    case enTechType.TECH_MON:
                    case enTechType.TECH_HFR:
                    case enTechType.TECH_EIS:
                    case enTechType.TECH_QIS:
                    case enTechType.TECH_PRR:
                        foreach (int plottype in ChkListLegend1.CheckedIndices)
                        {
                            grp1.Plots[nPlot + plottype].Visible = true;
                            if (plotToLegendMapGrp1.TryGetValue(nPlot + plottype, out outindex))
                                legend1.Items[plotToLegendMapGrp1[nPlot + plottype]].Visible = true;
                        }
                        break;
                }
            }
        }

        private void btSelAll1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ChkListItem1.Items.Count; i++)
            {
                ChkListItem1.SetItemChecked(i, true);
            }
            ChkListItem1_SelectedIndexChanged(null, null);
        }

        private void btDeselAll1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ChkListItem1.Items.Count; i++)
            {
                ChkListItem1.SetItemChecked(i, false);
            }
            ChkListItem1_SelectedIndexChanged(null, null);
        }

        private void ChkListItem2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int nPlot = 0;
            int outindex = 0;
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;
            if (begindlg)
                return;
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                nPlot = i * MBZA_Constant.MAX_GRAPH_PLOTS; 
                switch (techtype)
                {
                    case enTechType.TECH_HFR:
                    case enTechType.TECH_EIS:
                    case enTechType.TECH_QIS:
                        grp2.Plots[nPlot].Visible = false;
                        grp2.Plots[nPlot + 1].Visible = false;
                        if (plotToLegendMapGrp2.TryGetValue(nPlot, out outindex))
                            legend2.Items[plotToLegendMapGrp2[nPlot]].Visible = false;
                        if (plotToLegendMapGrp2.TryGetValue(nPlot+1, out outindex))
                            legend2.Items[plotToLegendMapGrp2[nPlot+1]].Visible = false;
                        break;
                    case enTechType.TECH_PRR:
                        for (int j = 0; j < MBZA_Constant.MAX_GRAPH_PLOTS; j++)
                        {
                            grp2.Plots[nPlot + j].Visible = false;
                            if (plotToLegendMapGrp2.TryGetValue(nPlot+j, out outindex))
                                legend2.Items[plotToLegendMapGrp2[nPlot+j]].Visible = false;
                        }
                        break;
                }
            }
            foreach (int index in ChkListItem2.CheckedIndices)
            {
                nPlot = index * MBZA_Constant.MAX_GRAPH_PLOTS;
                switch (techtype)
                {
                    case enTechType.TECH_PRR:
                    case enTechType.TECH_HFR:
                    case enTechType.TECH_EIS:
                    case enTechType.TECH_QIS:
                        foreach (int plottype in ChkListLegend2.CheckedIndices)
                        {
                            grp2.Plots[nPlot + plottype].Visible = true;
                            legend2.Items[plotToLegendMapGrp2[nPlot + plottype]].Visible = true;
                        }
                        break;
                }

            }
        }

        private void btSelAll2_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ChkListItem2.Items.Count; i++)
            {
                ChkListItem2.SetItemChecked(i, true);
            }
            ChkListItem2_SelectedIndexChanged(null, null);
        }

        private void btDeselAll2_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ChkListItem2.Items.Count; i++)
            {
                ChkListItem2.SetItemChecked(i, false);
            }
            ChkListItem2_SelectedIndexChanged(null, null);
        }

        private void ChkListLegend1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int nPlot = 0;
            int outindex = 0;
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;
            if (begindlg)
                return;
            // items depend on technique
            foreach (int index in ChkListItem1.CheckedIndices)
            {
                nPlot = index * MBZA_Constant.MAX_GRAPH_PLOTS;
                switch (techtype)
                {
                    case enTechType.TECH_DCH:
                    case enTechType.TECH_MON:
                    case enTechType.TECH_HFR:
                    case enTechType.TECH_EIS:
                    case enTechType.TECH_QIS:
                        grp1.Plots[nPlot].Visible = false;
                        grp1.Plots[nPlot + 1].Visible = false;
                        if (plotToLegendMapGrp1.TryGetValue(nPlot, out outindex))
                            legend1.Items[plotToLegendMapGrp1[nPlot]].Visible = false;
                        if (plotToLegendMapGrp1.TryGetValue(nPlot+1, out outindex))
                            legend1.Items[plotToLegendMapGrp1[nPlot+1]].Visible = false;
                        foreach (int plottype in ChkListLegend1.CheckedIndices)
                        {
                            grp1.Plots[nPlot + plottype].Visible = true;
                            if (plotToLegendMapGrp1.TryGetValue(nPlot + plottype, out outindex))
                                legend1.Items[plotToLegendMapGrp1[nPlot + plottype]].Visible = true;
                        }
                        break;
                    case enTechType.TECH_PRR:
                        for (int i = 0; i < 3; i++)
                        {
                            grp1.Plots[nPlot + i].Visible = false;
                            if (plotToLegendMapGrp1.TryGetValue(nPlot+i, out outindex))
                                legend1.Items[plotToLegendMapGrp1[nPlot + i]].Visible = false;
                        }
                        foreach (int plottype in ChkListLegend1.CheckedIndices)
                        {
                            grp1.Plots[nPlot + plottype].Visible = true;
                            if (plotToLegendMapGrp1.TryGetValue(nPlot + plottype, out outindex))
                                legend1.Items[plotToLegendMapGrp1[nPlot + plottype]].Visible = true;
                        }
                        break;
                }
            }
        }

        private void ChkListLegend2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int nPlot = 0;
            int outindex = 0;
            enTechType techtype = (enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type;
            if (begindlg)
                return;
            // 
            foreach (int index in ChkListItem2.CheckedIndices)
            {
                nPlot = index * MBZA_Constant.MAX_GRAPH_PLOTS; 
                switch (techtype)
                {
                    case enTechType.TECH_HFR:
                    case enTechType.TECH_EIS:
                    case enTechType.TECH_QIS:
                        grp2.Plots[nPlot].Visible = false;
                        grp2.Plots[nPlot + 1].Visible = false;
                        if (plotToLegendMapGrp2.TryGetValue(nPlot, out outindex))
                            legend2.Items[plotToLegendMapGrp2[nPlot]].Visible = false;
                        if (plotToLegendMapGrp2.TryGetValue(nPlot+1, out outindex))
                            legend2.Items[plotToLegendMapGrp2[nPlot+1]].Visible = false;
                        foreach (int plottype in ChkListLegend2.CheckedIndices)
                        {
                            grp2.Plots[nPlot + plottype].Visible = true;
                            legend2.Items[plotToLegendMapGrp2[nPlot + plottype]].Visible = true;
                        }
                        break;
                    case enTechType.TECH_PRR:
                        for(int i=0;i< MBZA_Constant.MAX_GRAPH_PLOTS; i++)
                        {
                            grp2.Plots[nPlot+i].Visible = false;
                            if (plotToLegendMapGrp2.TryGetValue(nPlot + i, out outindex))
                                legend2.Items[plotToLegendMapGrp2[nPlot + i]].Visible = false;
                        }
                        foreach (int plottype in ChkListLegend2.CheckedIndices)
                        {
                            grp2.Plots[nPlot + plottype].Visible = true;
                            legend2.Items[plotToLegendMapGrp2[nPlot + plottype]].Visible = true;
                        }
                        break;
                }
                
            }
        }

        private void ChkListItem3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int nPlot = 0;
            if (begindlg)
                return;
            // 
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                grprt.Plots[i * 2].Visible = false;
                grprt.Plots[i * 2 + 1].Visible = false;
                //grpvars.GrpItemsRT.mPlot[i * 2].LineVisible = false;
                Rtlegend.Items[i * 2].Visible = false;
                Rtlegend.Items[i * 2 + 1].Visible = false;
            }
            foreach (int index in ChkListItem3.CheckedIndices)
            {
                nPlot = index * 2; // 
                foreach (int plottype in ChkListLegend3.CheckedIndices)
                {
                    grprt.Plots[nPlot + plottype].Visible = true;
                    Rtlegend.Items[nPlot + plottype].Visible = true;
                }
            }
            //RefreshRtView();
            grprt.Invalidate();
            grprt.Update();
        }

        private void btSelAll3_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ChkListItem3.Items.Count; i++)
            {
                ChkListItem3.SetItemChecked(i, true);
            }
            ChkListItem3_SelectedIndexChanged(null, null);
        }

        private void btDeselAll3_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ChkListItem3.Items.Count; i++)
            {
                ChkListItem3.SetItemChecked(i, false);
            }
            ChkListItem3_SelectedIndexChanged(null, null);
        }

        private void ChkListLegend3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int nPlot = 0;
            if (begindlg)
                return;
            // 
            foreach (int index in ChkListItem3.CheckedIndices)
            {
                nPlot = index * 2;
                grprt.Plots[nPlot].Visible = false;
                grprt.Plots[nPlot + 1].Visible = false;
                Rtlegend.Items[nPlot].Visible = false;
                Rtlegend.Items[nPlot + 1].Visible = false;
                foreach (int plottype in ChkListLegend3.CheckedIndices)
                {
                    grprt.Plots[nPlot + plottype].Visible = true;
                    Rtlegend.Items[nPlot + plottype].Visible = true;
                }
            }
            grprt.Invalidate();
            grprt.Update();
        }

        private void RawRtMenuGraphMode_Click(object sender, EventArgs e)
        {
            if (sender == RawRtMenuGraphMode1)
            {
                RawRtMenuGraphMode1.Checked = true;
                rawgrp.YAxes[1].Visible = false;
                RawRtMenuGraphMode2.Checked = false;
                grpvars.GrpItemsRaw.GrpCtrlMode = 0;
            }
            else if (sender == RawRtMenuGraphMode2)
            {
                RawRtMenuGraphMode1.Checked = false;
                rawgrp.YAxes[1].Visible = true;
                RawRtMenuGraphMode2.Checked = true;
                grpvars.GrpItemsRaw.GrpCtrlMode = 1;
            }
            SetGraphRawRtAxes();
        }

        private void InitAuxMonitorList()
        {
            listAuxMon.BeginUpdate();
            listAuxMon.Clear();

            listAuxMon.View = View.Details;
            listAuxMon.GridLines = true;
            listAuxMon.FullRowSelect = true;
            listAuxMon.CheckBoxes = false;
            listAuxMon.MultiSelect = true;
            listAuxMon.LabelEdit = false;
            listAuxMon.LabelWrap = false;

            listAuxMon.Columns.Clear();
            listAuxMon.Columns.Add("Aux", 45, HorizontalAlignment.Center);
            listAuxMon.Columns.Add("Value", 90, HorizontalAlignment.Center);

            listAuxMon.Items.Clear();
            for (int i = 1; i < grpvars.nAuxChCount + 1; i++)
            {
                AddAuxMonitorItem(i - 1, 0.0);
            }
            listAuxMon.EndUpdate();

            rdoAuxMon1.Checked = true;
        }
        private void AddAuxMonitorItem(int nCh, double value)
        {
            ListViewItem lvItem;
            lvItem = new ListViewItem(new string[] { string.Format("{0}", nCh + 1), string.Format("{0:0.0#####}", value) });
            listAuxMon.Items.Add(lvItem);
        }

        private void rdoAuxMon_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton rb = sender as RadioButton;
            if (rb == null)
                return;

            if (!rb.Checked)
                return;
            
            if (rb.Name == "rdoAuxMon1") // vdc
            {
                rdoAuxMon = 0; 
            }
            else if (rb.Name == "rdoAuxMon2") // z
            {
                rdoAuxMon = 1;
            }
        }
    }
}
