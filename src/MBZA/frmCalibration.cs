using C1.Win.C1FlexGrid;
using NationalInstruments;
using NationalInstruments.UI;
using SMLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Analysis;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    public partial class frmCalibration : Form
    {
        private string Serial;
        private string sLogDataFile;
        
        private int sifch;
        private int ch;
        private int rng;
        private bool usefile;
        private int rtmode;
        private int rtsize;
        private int DataCount;

        private eZimType zimtype;
        private stTech mtech;
        private stTech_EIS techeis;
        private List<st_zim_zPacket> listPacket;
        st_zim_zPacket[] items;
        st_zim_zPacket[] fititems;
        public st_zim_rt mRtGrp;
        public FileResult mlogfile;
        private st_zim_rnginf ranges;
        private cls_rtdata mRtData;
        string[] sline;
        string[] sPoint
;        public frmCalibration(int tch, string tserial, int tsifch, int trng)
        {
            InitializeComponent();
            DoubleBuffered = true;

            ranges = new st_zim_rnginf(0);
            listPacket = new List<st_zim_zPacket>();

            items = new st_zim_zPacket[DeviceConstants.MAX_EIS_FREQ_CNT];
            fititems = new st_zim_zPacket[DeviceConstants.MAX_EIS_FREQ_CNT];
            mRtGrp = new st_zim_rt();

            mlogfile = new FileResult();
            mRtData = new cls_rtdata();

            usefile = true;

            sline = EnumObject.GetNames(typeof(NationalInstruments.UI.LineStyle));
            sPoint = EnumObject.GetNames(typeof(NationalInstruments.UI.PointStyle));

            InitPara();
            InitDataList();
            Initialize(tch, tserial, tsifch, trng);

            InitRtGraph();
            InitNiGraph();
            InitBdGraph();

            if (MBZA_MapUtil.SetCalibMode(Serial, sifch, true) == false)
            {
                MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public void Initialize(int tch, string tserial, int tsifch, int trng)
        {
            timer1.Stop();
            ch = tch;
            Serial = tserial;
            sifch = tsifch;

            this.Text = string.Format("EIS calibration - CH{0}[{1}-{2}].", ch + 1, Serial, sifch + 1);

            if (trng < 0)
            {
                rng = 0;
            }
            rng = trng;

            string str = string.Format("{0}\\Cal_{1}_rng{2}.zmf", Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetSerialNumber(), rng);
            sLogDataFile = Path.Combine(gBZA.appcfg.PathLog, str);


            ranges = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges;

            zimtype = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetZIMType();
            cborange.Items.Clear();

            var iRanges = Enum.GetValues(typeof(enCurrentRange)).Cast<enCurrentRange>();
            foreach (var item in iRanges)
            {
                cborange.Items.Add(item.GetDescription());
            }

            cborange.SelectedIndex = rng;

            mtech = new stTech();
            techeis = new stTech_EIS(0);

            mtech = gBZA.SifLnkLst[Serial].MBZAIF.techcalib[sifch];

            mtech.type = 3;
            mtech.irange = (ushort)rng;
            mtech.GetEIS(ref techeis);
           
            techeis.iteration = 1;

            mtech.SetEIS(techeis);

            mRtData.Initialize(mtech);

            gBZA.SifLnkLst[Serial].MBZAIF.techcalib[sifch] = mtech;
            
            DataCount = 0;

            LoadFile();

            InitView();
            timer1.Start();
        }
        private bool ChkEisCalInf(int CRange)
        {
            st_zim_Eis_Cal_info pEis_cal_info = new st_zim_Eis_Cal_info(0);

            pEis_cal_info = ranges.mEisIRngCalInfo[CRange];

            if (double.IsNaN(pEis_cal_info.n1) || double.IsNaN(pEis_cal_info.n2) || double.IsNaN(pEis_cal_info.n3)
                    || double.IsNaN(pEis_cal_info.d1) || double.IsNaN(pEis_cal_info.d2) || double.IsNaN(pEis_cal_info.d3)) return false;

            if (pEis_cal_info.n1 == 0.0 || pEis_cal_info.n2 == 0.0 || pEis_cal_info.n3 == 0.0
                || pEis_cal_info.d1 == 0.0 || pEis_cal_info.d2 == 0.0 || pEis_cal_info.d3 == 0.0) return false;

            /*if(ranges.iac_rng[CRange / 2].gain == 1.0 && ranges.iac_rng[CRange / 2].offset == 1.0) 
            {
                return false;
            }
            */
            return true;
        }
        private void LoadFile()
        {
            int oldcycel = -1;
            if(File.Exists(sLogDataFile) == true)
            {
                usefile = true;
            }
            else
            {
                usefile = false;
                return;
            }
            bool ChkCalib = ChkEisCalInf(rng);
            if (mlogfile.Open(sLogDataFile) == true)
            {
                if (mlogfile.datacount > 0)
                {
                    stDefTestData[] data = new stDefTestData[mlogfile.datacount];
                    DataCount = mlogfile.read(0, ref data, mlogfile.datacount);
                    
                    if (DataCount != mlogfile.datacount)
                    {
                        MessageBox.Show("Failed to read all data.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    mRtData.Initialize(mlogfile.tmphead.tech);
                    mRtData.Append(data, DataCount, ref oldcycel);
                    grdlist.Rows.Count = DataCount + 2;
                    st_zim_zPacket mpacket = new st_zim_zPacket(0);
                    mRtGrp.Initialize();
                    for (int i=0; i< DataCount; i++)
                    {
                        mpacket.freq = data[i].fFreq;
                        mpacket.real = data[i].real;
                        mpacket.img = data[i].img;
                        mpacket.mag = Math.Sqrt(mpacket.real * mpacket.real + mpacket.img * mpacket.img);
                        mpacket.phase = Math.Atan2(mpacket.img, mpacket.real) * 180.0 / DeviceConstants.PI;
                        if (ChkCalib == false)
                        {
                            
                         }

                        listPacket.Add(mpacket);

                        grdlist[i + 2, 0] = i + 1;

                        grdlist[i + 2, 1] = GetDataString(mpacket.freq);

                        grdlist[i + 2, 2] = GetDataString(mpacket.real);
                        grdlist[i + 2, 3] = GetDataString(mpacket.img);

                        grdlist[i + 2, 4] = GetDataString(mpacket.mag);
                        grdlist[i + 2, 5] = GetDataString(mpacket.phase);
                        if (ChkCalib == false)
                        {
                            mRtGrp.plot[0].lx[0].Add(mpacket.real);
                            mRtGrp.plot[0].ly[0].Add(mpacket.img * -1.0);

                            mRtGrp.plot[2].lx[0].Add(mpacket.freq);
                            mRtGrp.plot[2].ly[0].Add(mpacket.mag);
                            mRtGrp.plot[3].lx[0].Add(mpacket.freq);
                            mRtGrp.plot[3].ly[0].Add(mpacket.phase);

                            grdlist[i + 2, 6] = GetDataString(mpacket.real);
                            grdlist[i + 2, 7] = GetDataString(mpacket.img);

                            grdlist[i + 2, 8] = GetDataString(mpacket.mag);
                            grdlist[i + 2, 9] = GetDataString(mpacket.phase);
                        }
                    }

                    if (ChkCalib)
                    {
                        mRtGrp.Initialize();
                        ProcApplyFitting(rng);
                    }
                   
                    DataCount = 0;
                }
                else
                {
                    usefile = false;
                }
                mlogfile.CloseFile();
            }
            else
            {
                usefile = false;
            }
        }
        
        private void InitView()
        {
            
            RefreshPara();

            numdelay.Value = (decimal)mtech.ondelay;
            txtbeginfreq.Text = GetFreqString(ref techeis.initfreq);
            txtFinishfreq.Text = GetFreqString(ref techeis.finalfreq);
            numdensity.Value = (decimal)((techeis.density<1)?1: techeis.density);

            ViewStatus();
        }

        private string GetFreqString(ref double freq)
        {
            if (freq > DeviceConstants.MAX_EIS_FREQUENCY) freq = DeviceConstants.MAX_EIS_FREQUENCY;
            if (freq < DeviceConstants.MIN_EIS_FREQUENCY) freq = DeviceConstants.MIN_EIS_FREQUENCY;

            return string.Format("{0:#0.###}", freq);
        }

        private string GetDataString(double val)
        {
          
            return string.Format("{0:G6}", val);
        }


        private void InitRtGraph()
        {
            rtmode = 0;
            rtsize = 0;
            grprt.PlotAreaColor = Properties.Settings.Default.RtGrp_BackColor;
       
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
            grprt.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;

            grprt.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.XAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.XAxes[0].MinorDivisions.GridVisible = false;

            grprt.YAxes[0].Caption = "Current(A)";
            grprt.YAxes[0].CaptionVisible = true;
            grprt.YAxes[0].CaptionForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;

            grprt.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.YAxes[0].MinorDivisions.GridVisible = false;
            grprt.YAxes[0].AutoSpacing = true;

            grprt.YAxes[1].Caption = "";
            grprt.YAxes[1].CaptionVisible = true;
            grprt.YAxes[1].CaptionForeColor = Properties.Settings.Default.RtGrp_Axis_Color;

            grprt.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.YAxes[1].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;

            grprt.YAxes[1].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            grprt.YAxes[1].MinorDivisions.GridColor = Properties.Settings.Default.RtGrp_GridColor;
            grprt.YAxes[1].MinorDivisions.GridVisible = false;
            grprt.YAxes[1].AutoSpacing = true;

            lineToolStripMenuItem.Checked = Properties.Settings.Default.RtGrp_Plot_ViewLine;
            pointToolStripMenuItem.Checked = Properties.Settings.Default.RtGrp_Plot_ViewPoint;

            legendToolStripMenuItem.Checked = false;
            RefreshRtLegend();

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
                vVsIToolStripMenuItem.Checked = true;
                grprt.YAxes[1].Visible = false;
                tVsIVToolStripMenuItem.Checked = false;
            }
            else
            {
                vVsIToolStripMenuItem.Checked = false;
                grprt.YAxes[1].Visible = true;
                tVsIVToolStripMenuItem.Checked = true;
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
                    grprt.XAxes[0].Visible = false;
                    grprt.YAxes[0].Visible = true;
                    grprt.YAxes[1].Visible = true;
                }
            }
            RefreshRt();
            ChgRTGraphSize();
        }

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
                legSize.Height = 55;
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
            Rtlegend.Visible = legendToolStripMenuItem.Checked;
        }
        
        private void ChgRTGraphSize()
        {
            if (rtsize == 0)
            {
                defaultToolStripMenuItem.Checked = true;
                maximumToolStripMenuItem.Checked = false;
                grprt.Size = new Size(162, 144);
                grprt.Location = new Point(170, 76);

            }
            else 
            {
                defaultToolStripMenuItem.Checked = false;
                maximumToolStripMenuItem.Checked = true;

                grprt.Size = new Size(this.ClientRectangle.Width - 16, this.ClientRectangle.Height - 16);
                grprt.Location = new Point(8, 6);
            }
            RefreshRtLegend();
        }

        private void InitNiGraph()
        {

            grp1.ResetZoomPan();

            NiGrpMenuGraphViewSrcLine.Checked = Properties.Settings.Default.NiGrp_Plot1_Lineview;
            NiGrpMenuGraphViewSrcPoint.Checked = Properties.Settings.Default.NiGrp_Plot1_Pointview;
            NiGrpMenuGraphViewCalLine.Checked = Properties.Settings.Default.NiGrp_Plot2_Lineview;
            NiGrpMenuGraphViewCalPoint.Checked = Properties.Settings.Default.NiGrp_Plot2_Pointview;

            if(Properties.Settings.Default.NiGrp_Plot1_Lineview) grp1.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.NiGrp_Plot2_Lineview) grp1.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            else grp1.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.NiGrp_Plot1_Pointview) grp1.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
            else grp1.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.NiGrp_Plot2_Pointview) grp1.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
            grp1.PlotAreaColor = Properties.Settings.Default.NiGrp_Backcolor;

            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.NiGrp_Axis_Color;
            grp1.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.NiGrp_Axis_Color;
            grp1.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.NiGrp_Axis_Color;
            grp1.XAxes[0].CaptionForeColor = Properties.Settings.Default.NiGrp_Axis_Color;

            grp1.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.NiGrp_Grid_Color;
            grp1.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.NiGrp_Grid_View; 


            grp1.XAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.NiGrp_Grid_Color;
            grp1.XAxes[0].MinorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.XAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[0].Caption = "-Z image(Ω)";
            grp1.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.NiGrp_Axis_Color;
            grp1.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.NiGrp_Axis_Color;
            grp1.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.NiGrp_Axis_Color;
            grp1.YAxes[0].CaptionForeColor = Properties.Settings.Default.NiGrp_Axis_Color;
            grp1.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.NiGrp_Grid_View;
            grp1.YAxes[1].Visible = false;

            grp1.Plots[0].LineColor = Properties.Settings.Default.NiGrp_Plot1_color;
            grp1.Plots[0].PointColor = Properties.Settings.Default.NiGrp_Plot1_color;
            grp1.Plots[0].SmoothUpdates = true;
            grp1.Plots[1].LineColor = Properties.Settings.Default.NiGrp_Plot1_color;
            grp1.Plots[1].PointColor = Properties.Settings.Default.NiGrp_Plot1_color;
            grp1.Plots[1].SmoothUpdates = true;

            grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;

            grp1.Cursors[0].LabelBackColor = Properties.Settings.Default.NiGrp_Backcolor;
            grp1.Cursors[0].Plot = grp1.Plots[0];
            grp1.Cursors[0].Color = grp1.Cursors[0].Plot.LineColor;
            grp1.Cursors[0].LabelForeColor = grp1.Cursors[0].Plot.LineColor;
            grp1.Cursors[0].Visible = false;
            grp1.Cursors[0].LabelVisible = false;

            Nilegend.Visible = Properties.Settings.Default.NiGrp_Legend_View;
            NiGrpMenuGraphViewLegend.Checked = Properties.Settings.Default.NiGrp_Legend_View;

            NiGrpMenuGraphModeZoom.Checked = false;
            NiGrpMenuGraphModeMove.Checked = false;
            NiGrpMenuGraphModeCursorNone.Checked = true;
            NiGrpMenuGraphModeCursorSrc1.Checked = false;
            NiGrpMenuGraphModeCursorCal1.Checked = false;

            NiGrpMenuGraphViewSrcLine.Checked = Properties.Settings.Default.NiGrp_Plot1_Lineview;
            NiGrpMenuGraphViewSrcPoint.Checked = Properties.Settings.Default.NiGrp_Plot1_Pointview;
            NiGrpMenuGraphViewCalLine.Checked = Properties.Settings.Default.NiGrp_Plot2_Lineview;
            NiGrpMenuGraphViewCalPoint.Checked = Properties.Settings.Default.NiGrp_Plot2_Pointview;

        }

        private void InitBdGraph()
        {
            if(Properties.Settings.Default.BdGrp_Plot1_Lineview) grp2.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.BdGrp_Plot2_Lineview) grp2.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.BdGrp_Plot3_Lineview) grp2.Plots[2].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            else grp2.Plots[2].LineStyle = NationalInstruments.UI.LineStyle.None;
            if (Properties.Settings.Default.BdGrp_Plot4_Lineview) grp2.Plots[3].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            else grp2.Plots[3].LineStyle = NationalInstruments.UI.LineStyle.None;

            if (Properties.Settings.Default.BdGrp_Plot1_Pointview) grp2.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
            else grp2.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.BdGrp_Plot1_Pointview) grp2.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
            else grp2.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.BdGrp_Plot1_Pointview) grp2.Plots[2].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[2].PointStyle = NationalInstruments.UI.PointStyle.None;
            if (Properties.Settings.Default.BdGrp_Plot1_Pointview) grp2.Plots[3].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[3].PointStyle = NationalInstruments.UI.PointStyle.None;

            grp2.PlotAreaColor = Properties.Settings.Default.BdGrp_Backcolor;

            grp2.XAxes[0].Caption = "Frequency(Hz)";
            grp2.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.XAxes[0].CaptionForeColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.XAxes[0].ScaleType = ScaleType.Logarithmic;
            grp2.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
            grp2.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.XAxes[0].MinorDivisions.GridVisible = Properties.Settings.Default.BdGrp_Grid_Y1view | Properties.Settings.Default.BdGrp_Grid_Y2view;
            grp2.XAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
            grp2.XAxes[0].MinorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.XAxes[0].MinorDivisions.GridVisible = false;

            grp2.YAxes[0].Caption = "Z magnitude(Ω)";
            grp2.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.YAxes[0].CaptionForeColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
            grp2.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[0].MinorDivisions.GridVisible = Properties.Settings.Default.BdGrp_Grid_Y1view;
            grp2.YAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
            grp2.YAxes[0].MinorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[0].MinorDivisions.GridVisible = false;
            


            grp2.YAxes[1].Caption = "Z phase(°C)";
            grp2.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.YAxes[1].MinorDivisions.TickColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.YAxes[1].CaptionForeColor = Properties.Settings.Default.BdGrp_Axis_Color;
            grp2.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
            grp2.YAxes[1].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[1].MinorDivisions.GridVisible = Properties.Settings.Default.BdGrp_Grid_Y2view;
            grp2.YAxes[1].MinorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
            grp2.YAxes[1].MinorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[1].MinorDivisions.GridVisible = false;

            grp2.Plots[0].LineColor = Properties.Settings.Default.BdGrp_Plot1_color;
            grp2.Plots[0].PointColor = Properties.Settings.Default.BdGrp_Plot1_color;
            grp2.Plots[0].SmoothUpdates = true;
            grp2.Plots[1].LineColor = Properties.Settings.Default.BdGrp_Plot2_color;
            grp2.Plots[1].PointColor = Properties.Settings.Default.BdGrp_Plot2_color;
            grp2.Plots[1].SmoothUpdates = true;
            grp2.Plots[2].LineColor = Properties.Settings.Default.BdGrp_Plot1_color;
            grp2.Plots[2].PointColor = Properties.Settings.Default.BdGrp_Plot1_color;
            grp2.Plots[2].SmoothUpdates = true;
            grp2.Plots[3].LineColor = Properties.Settings.Default.BdGrp_Plot2_color;
            grp2.Plots[3].PointColor = Properties.Settings.Default.BdGrp_Plot2_color;
            grp2.Plots[3].SmoothUpdates = true;

            grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;

            grp2.Cursors[0].LabelBackColor = Properties.Settings.Default.BdGrp_Backcolor;
            grp2.Cursors[0].Plot = grp2.Plots[0];
            grp2.Cursors[0].Color = grp2.Cursors[0].Plot.LineColor;
            grp2.Cursors[0].LabelForeColor = grp2.Cursors[0].Plot.LineColor;
            grp2.Cursors[0].Visible = false;
            grp2.Cursors[0].LabelVisible = false;

            Bdlegend.Visible = Properties.Settings.Default.BdGrp_Legend_View;
            BdGrpMenuGraphViewLegend.Checked = Properties.Settings.Default.BdGrp_Legend_View;

            BdGrpMenuGraphModeZoom.Checked = false;
            BdGrpMenuGraphModeMove.Checked = false;

            BdGrpMenuGraphModeCursorNone.Checked = true;
            BdGrpMenuGraphModeCursorSrc1.Checked = false;
            BdGrpMenuGraphModeCursorSrc2.Checked = false;
            BdGrpMenuGraphModeCursorCal1.Checked = false;
            BdGrpMenuGraphModeCursorCal2.Checked = false;

            sourceZmagnitudeToolStripMenuItem.Checked = Properties.Settings.Default.BdGrp_Plot1_Lineview;
            sourceZmagnitudePointToolStripMenuItem.Checked = Properties.Settings.Default.BdGrp_Plot1_Pointview;

            sourceZphaseToolStripMenuItem1.Checked = Properties.Settings.Default.BdGrp_Plot2_Lineview;
            sourceZphasePointToolStripMenuItem.Checked = Properties.Settings.Default.BdGrp_Plot2_Pointview;

            calibrationZmagnitudeToolStripMenuItem1.Checked = Properties.Settings.Default.BdGrp_Plot3_Lineview;
            calibrationZmagnitudePointToolStripMenuItem.Checked = Properties.Settings.Default.BdGrp_Plot3_Pointview;

            calibrationZphaseToolStripMenuItem1.Checked = Properties.Settings.Default.BdGrp_Plot4_Lineview;
            calibrationZphasePointToolStripMenuItem.Checked = Properties.Settings.Default.BdGrp_Plot4_Pointview;


            BdGrpMenuGraphViewGridY1.Checked = Properties.Settings.Default.BdGrp_Grid_Y1view;
            BdGrpMenuGraphViewGridY2.Checked = Properties.Settings.Default.BdGrp_Grid_Y2view;

        }
        private void frmCalibration_Load(object sender, EventArgs e)
        {
            
        }
        
        Color GetTestStatusColor(stChStatusInf chstat)
        {
            enTestState stat = (enTestState)chstat.TestStatus;
            enStatError errstat = (enStatError)chstat.ErrorStatus;
            enEisState estat = (enEisState)chstat.eis_status.status;
            if (stat == enTestState.nc_Ready || stat == enTestState.Ready || stat == enTestState.nc_Stopped || stat == enTestState.Stopped)
            {
                if (errstat == enStatError.NoError) return Color.Black;
                else return Color.DarkRed;
            }
            else
            {
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
                if (errstat == enStatError.NoError) str = string.Format(" Status: {0}", ((enTestState)chstat.TestStatus).GetDescription());
                else str = string.Format(" Status: {0}", errstat.GetDescription());
            }
            else
            {
                str = string.Format(" Status: {0}", ((enTestState)chstat.TestStatus).GetDescription());
            }
           

            return str;
        }
        string GetErrStatus(stChStatusInf chstat)
        {
            string str;

            str = string.Format("  Error: {0}", ((enStatError)chstat.LastError).GetDescription());

            return str;
        }



        private void ViewStatus()
        {
            stChStatusInf chstat = gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch];
            TimeSpan ElapsedTime = TimeSpan.FromMilliseconds(chstat.RunTimeStamp);
            bool brun = gBZA.CheckStatusRun(chstat);
            bool bcalibmode = gBZA.CheckStatusCalibMode(chstat);

            lblprog.Prog_Val = (int)(((double)chstat.eis_status.freqindex / (double)chstat.eis_status.freqcount) * 1000.0);

            lblTestStatus.Text = GetTestStatus(chstat);
            lblErrStatus.Text = GetErrStatus(chstat);

            if(bcalibmode)
            {
                if (brun)
                {
                    numdelay.Enabled = false;
                    txtbeginfreq.Enabled = false;
                    txtFinishfreq.Enabled = false;
                    numdensity.Enabled = false;
                    cborange.Enabled = false;

                    lnkCalculate.Enabled = false;
                    lnksave.Enabled = false;

                    grdpara.Enabled = false;
                }
                else
                {
                    numdelay.Enabled = true;
                    txtbeginfreq.Enabled = true;
                    txtFinishfreq.Enabled = true;
                    numdensity.Enabled = true;
                    cborange.Enabled = false;//

                    lnkCalculate.Enabled = true;
                    lnksave.Enabled = true;

                    grdpara.Enabled = true;
                }
            }
            else
            {
                if (brun)
                {
                    numdelay.Enabled = false;
                    txtbeginfreq.Enabled = false;
                    txtFinishfreq.Enabled = false;
                    numdensity.Enabled = false;
                    cborange.Enabled = false;

                    lnkCalculate.Enabled = false;
                    lnksave.Enabled = false;

                    grdpara.Enabled = false;
                }
                else
                {
                    numdelay.Enabled = true;
                    txtbeginfreq.Enabled = true;
                    txtFinishfreq.Enabled = true;
                    numdensity.Enabled = true;
                    cborange.Enabled = false;//

                    lnkCalculate.Enabled = true;
                    lnksave.Enabled = true;

                    grdpara.Enabled = true;
                }
            }

            if (brun)
            {
                if (lnkstart.Text.Substring(0, 5) == "Start")
                {
                    usefile = false;
                    listPacket.Clear();
                    mRtGrp.Initialize();
                    
                    DataCount = 0;
                    grdlist.Rows.Count = 2;
                    RefreshGraphEIS();
                }

                lnkstart.Text = "Stop calibration.";
                
                RefreshRt();
            }
            else
            {

                lnkstart.Text = "Start calibration.";
                
            }


            

            RefreshDataList();

            labelElapsedTime.Text = string.Format("Elapsed: {0,4:###0}:{1:00}:{2:00}", ElapsedTime.Hours, ElapsedTime.Minutes, ElapsedTime.Seconds);


            eZimType zimtype = (eZimType)chstat.ZimType; // (eZimType)(gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].info.cModel[0] - 0x30);
            double crngval = ranges.iac_rng[chstat.Iac_in_rngno].realmax;
            if((chstat.Iac_rngno % 2) > 0)
            {
                crngval *= ranges.iac_rng[chstat.Iac_in_rngno].controlgain;
            }
            
            lblRange.Text = string.Format("  Range: {0}/ {1}", SM_Number.ToRangeString(crngval, "A"), SM_Number.ToRangeString(ranges.vdc_rng[chstat.Vdc_rngno].realmax, "V"));
            
            if (chstat.Vdc >= 1000.0)
            {
                lblVdc.Text = string.Format("    VDC: {0,8:###0.0##}KV", chstat.Vdc * 0.001);
            }
            else
            {
                lblVdc.Text = string.Format("    VDC: {0,8:###0.0##} V", chstat.Vdc);
            }

            lblTemp.Text = string.Format(" PT-100: {0,8:###0.0##} °C", chstat.Temperature);

            if (bcalibmode)
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
                lblZmag.Text = "   Zmag: -------- mΩ";
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
            lblVdc.ForeColor = lblTestStatus.ForeColor;
            lblTemp.ForeColor = lblTestStatus.ForeColor;
            lblfreq.ForeColor = lblTestStatus.ForeColor;
            lblZmag.ForeColor = lblTestStatus.ForeColor;
            lblZphase.ForeColor = lblTestStatus.ForeColor;
            lblprogfreq.ForeColor = lblTestStatus.ForeColor;

        }
        private void RefreshRt()
        {

            grprt.Plots[0].ClearData();
            grprt.Plots[1].ClearData();
            if (rtmode == 0)
            {
                grprt.Plots[0].PlotXY(gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.dv, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.count); //DeviceConstants.MAX_EIS_RT_RAW_POINT
            }
            else
            {
                grprt.Plots[0].PlotXY(gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.dv, 0, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // V
                grprt.Plots[1].PlotXY(gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // I
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
                    grprt.XAxes[0].Visible = false;
                    grprt.YAxes[0].Visible = true;
                    grprt.YAxes[1].Visible = true;
                }
            }

            RefreshRtLegend();
        }

        private void RefreshGraphEIS()
        {

            st_zim_rt rtgrp = new st_zim_rt();

            if (usefile == true)
            {
                rtgrp = mRtData.rtgrp;
            }
            else
            {
                if ((enTechType)gBZA.SifLnkLst[Serial].MBZAIF.Oldtech[sifch].type == enTechType.TECH_EIS &&
                      gBZA.SifLnkLst[Serial].MBZAIF.OldCondfilename[sifch] == gBZA.SifLnkLst[Serial].MBZAIF.calcondfilename[sifch])
                {
                    rtgrp = gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rtgrp;
                }
            }


            grp1.Plots[0].PlotXY(rtgrp.plot[0].lx[0].ToArray(), rtgrp.plot[0].ly[0].ToArray());
            grp1.Plots[1].PlotXY(mRtGrp.plot[0].lx[0].ToArray(), mRtGrp.plot[0].ly[0].ToArray());
            grp1.Plots[0].Visible = true;
            grp1.Plots[1].Visible = true;
            


            grp2.Plots[0].PlotXY(rtgrp.plot[2].lx[0].ToArray(), rtgrp.plot[2].ly[0].ToArray());
            grp2.Plots[1].PlotXY(rtgrp.plot[3].lx[0].ToArray(), rtgrp.plot[3].ly[0].ToArray());

            grp2.Plots[2].PlotXY(mRtGrp.plot[2].lx[0].ToArray(), mRtGrp.plot[2].ly[0].ToArray());
            grp2.Plots[3].PlotXY(mRtGrp.plot[3].lx[0].ToArray(), mRtGrp.plot[3].ly[0].ToArray());

            grp2.Plots[0].Visible = true;
            grp2.Plots[1].Visible = true;
            grp2.Plots[2].Visible = true;
            grp2.Plots[3].Visible = true;


        }
        private void InitPara()
        {
            grdpara.Redraw = false;
            grdpara.Cols.Count = 2;
            grdpara.Cols.Fixed = 1;
            grdpara.Rows.Count = 10;
            grdpara.Rows.Fixed = 1;
            grdpara.SelectionMode = SelectionModeEnum.Cell;

            //grdpara.Styles.Highlight.BackColor = Color.Azure;
            //grdpara.Styles.Highlight.ForeColor = Color.Black;
            //grdpara.Styles.Focus.ForeColor = Color.Black;
            //grdpara.Styles.Focus.BackColor = Color.White;

            grdpara[0, 0] = "Item";
            grdpara.Cols[0].Width = 80;
            grdpara.Cols[0].DataType = typeof(string);
            grdpara.Cols[0].TextAlignFixed = TextAlignEnum.CenterCenter;
            grdpara.Cols[0].AllowEditing = false;
            grdpara.Cols[0].AllowSorting = false;
            grdpara.Cols[0].AllowFiltering = AllowFiltering.None;
            grdpara.Cols[0].AllowResizing = false;
            grdpara.Cols[0].AllowDragging = false;

            grdpara[0, 1] = "Value";
            grdpara.Cols[1].Width = 80;
            grdpara.Cols[1].DataType = typeof(double);
            grdpara.Cols[1].TextAlignFixed = TextAlignEnum.CenterCenter;
            grdpara.Cols[1].AllowEditing = true;
            grdpara.Cols[1].AllowSorting = false;
            grdpara.Cols[1].AllowFiltering = AllowFiltering.None;
            grdpara.Cols[1].AllowResizing = false;
            grdpara.Cols[1].AllowDragging = false;

            int row = 0;

            row++; grdpara[row, 0] = "Dummy R"; grdpara[row, 1] = GetDataString(ranges.mDummy[rng].R);
            row++; grdpara[row, 0] = "Dummy Ls"; grdpara[row, 1] = GetDataString(ranges.mDummy[rng].Ls);

            row++; grdpara[row, 0] = "N1"; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].n1);
            row++; grdpara[row, 0] = "N2"; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].n2);
            row++; grdpara[row, 0] = "N3"; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].n3);
            row++; grdpara[row, 0] = "D1"; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].d1);
            row++; grdpara[row, 0] = "D2"; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].d2);
            row++; grdpara[row, 0] = "D3"; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].d3);
            if ((rng % 2) == 0)
            {
                row++; grdpara[row, 0] = "Gain"; grdpara[row, 1] = GetDataString(ranges.iac_rng[rng / 2].gain1);
            }
            else
            {
                row++; grdpara[row, 0] = "Gain"; grdpara[row, 1] = GetDataString(ranges.iac_rng[rng / 2].gain2);
            }
            
            grdpara.Redraw = true;
        }
        
        private void RefreshPara()
        {
            int row = 0;
            row++; grdpara[row, 1] = GetDataString(ranges.mDummy[rng].R);
            row++; grdpara[row, 1] = GetDataString(ranges.mDummy[rng].Ls);

            row++; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].n1);
            row++; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].n2);
            row++; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].n3);
            row++; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].d1);
            row++; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].d2);
            row++; grdpara[row, 1] = GetDataString(ranges.mEisIRngCalInfo[rng].d3);
            if ((rng % 2) == 0)
            {
                row++; grdpara[row, 0] = "Gain"; grdpara[row, 1] = GetDataString(ranges.iac_rng[rng / 2].gain1);
            }
            else
            {
                row++; grdpara[row, 0] = "Gain"; grdpara[row, 1] = GetDataString(ranges.iac_rng[rng / 2].gain2);
            }
        }

        void AddMergedRange(CellRange rng)
        {
            if (!rng.IsSingleCell)
            {
                RemoveMergedRange(rng);
                grdlist.MergedRanges.Add(rng);
            }
        }
        void RemoveMergedRange(CellRange rng)
        {
            for (int i = 0; i < grdlist.MergedRanges.Count; i++)
            {
                if (RangesIntersect(rng, grdlist.MergedRanges[i]))
                {
                    grdlist.MergedRanges.RemoveAt(i);
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

        private void InitDataList()
        {
            string[] sTitle1 = new string[10] { "index", "Frequency(Hz)", "Source data", "Source data", "Source data", "Source data", "Calibration data", "Calibration data", "Calibration data", "Calibration data",};
            string[] sTitle2 = new string[10] { "index", "Frequency(Hz)",       "Zreal",        "Zimg",        "Zmag",      "Zphase",            "Zreal",             "Zimg",             "Zmag",           "Zphase",};
            int[] iwidth = new int[10]        {      50,             95,            80,            80,            80,            80,                 80,                 80,                 80,                 80,};


            grdlist.Redraw = false;
            grdlist.Cols.Count = 10;
            grdlist.Cols.Fixed = 1;
            grdlist.Rows.Count = 2;
            grdlist.Rows.Fixed = 2;
            grdlist.SelectionMode = SelectionModeEnum.Row;

            //grdlist.Styles.Highlight.BackColor = Color.Azure;
            //grdlist.Styles.Highlight.ForeColor = Color.Black;
            //grdlist.Styles.Focus.ForeColor = Color.Black;
            //grdlist.Styles.Focus.BackColor = Color.White;

            for (int i = 0; i < 10; i++)
            {
                grdlist[0, i] = sTitle1[i];
                grdlist[1, i] = sTitle2[i];

                grdlist.Cols[i].Width = iwidth[i];
                grdlist.Cols[i].TextAlignFixed = TextAlignEnum.CenterCenter;
                if (i == 0)
                {
                    grdlist.Cols[i].DataType = typeof(int);
                    grdlist.Cols[i].TextAlign = TextAlignEnum.CenterCenter;
                }
                else
                {
                    grdlist.Cols[i].DataType = typeof(string);
                    grdlist.Cols[i].TextAlign = TextAlignEnum.RightCenter;
                }
                grdlist.Cols[i].AllowEditing = false;
                grdlist.Cols[i].AllowSorting = false;
                grdlist.Cols[i].AllowFiltering = AllowFiltering.None;
                grdlist.Cols[i].AllowResizing = false;
                grdlist.Cols[i].AllowDragging = false;
            }

            grdlist.AllowMerging = AllowMergingEnum.Custom;

            AddMergedRange(grdlist.GetCellRange(0, 0, 1, 0));
            AddMergedRange(grdlist.GetCellRange(0, 1, 1, 1));

            AddMergedRange(grdlist.GetCellRange(0, 2, 0, 5));
            AddMergedRange(grdlist.GetCellRange(0, 6, 0, 9));

            grdlist.Redraw = true;

        }
        private void RefreshDataList()
        {
            st_zim_rt rtgrp = new st_zim_rt();
            st_zim_zPacket mpacket = new st_zim_zPacket(0);
            stChStatusInf chstat = gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch];

            if (usefile == true)
            {
                rtgrp = mRtData.rtgrp;
                if (rtgrp.plot[3].ly[0].Count != DataCount)
                {
                    DataCount = rtgrp.plot[3].ly[0].Count;
                    RefreshGraphEIS();
                }
            }
            else
            {
                if ((enTechType)gBZA.SifLnkLst[Serial].MBZAIF.Oldtech[sifch].type == enTechType.TECH_EIS &&
                      gBZA.SifLnkLst[Serial].MBZAIF.OldCondfilename[sifch] == gBZA.SifLnkLst[Serial].MBZAIF.calcondfilename[sifch] &&
                      rng == gBZA.SifLnkLst[Serial].MBZAIF.Oldtech[sifch].irange)
                {
                    rtgrp = gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rtgrp;

                    if (rtgrp.plot[3].ly[0].Count != DataCount)
                    {
                        DataCount = rtgrp.plot[3].ly[0].Count;

                        grdlist.Redraw = false;

                        int grdrowcount = grdlist.Rows.Count - 2;
                        grdlist.Rows.Count = DataCount + 2;

                        for (int row = grdrowcount; row < DataCount; row++)
                        {
                            if (usefile == false)
                            {
                                mpacket.freq = rtgrp.plot[0].freq[0][row];
                                mpacket.real = rtgrp.plot[0].lx[0][row];
                                mpacket.img = rtgrp.plot[0].ly[0][row] * -1.0;
                                mpacket.mag = rtgrp.plot[2].ly[0][row];
                                mpacket.phase = rtgrp.plot[3].ly[0][row];

                                mRtGrp.plot[0].lx[0].Add(mpacket.real);
                                mRtGrp.plot[0].ly[0].Add(mpacket.img * -1.0);

                                mRtGrp.plot[2].lx[0].Add(mpacket.freq);
                                mRtGrp.plot[2].ly[0].Add(mpacket.mag);
                                mRtGrp.plot[3].lx[0].Add(mpacket.freq);
                                mRtGrp.plot[3].ly[0].Add(mpacket.phase);

                                listPacket.Add(mpacket);
                            }

                            grdlist[row + 2, 0] = row + 1;

                            grdlist[row + 2, 1] = GetDataString(rtgrp.plot[2].lx[0][row]);

                            grdlist[row + 2, 2] = GetDataString(rtgrp.plot[0].lx[0][row]);
                            grdlist[row + 2, 3] = GetDataString(rtgrp.plot[0].ly[0][row]);

                            grdlist[row + 2, 4] = GetDataString(rtgrp.plot[2].ly[0][row]);
                            grdlist[row + 2, 5] = GetDataString(rtgrp.plot[3].ly[0][row]);

                            grdlist[row + 2, 6] = GetDataString(mRtGrp.plot[0].lx[0][row]);
                            grdlist[row + 2, 7] = GetDataString(mRtGrp.plot[0].ly[0][row]);

                            grdlist[row + 2, 8] = GetDataString(mRtGrp.plot[2].ly[0][row]);
                            grdlist[row + 2, 9] = GetDataString(mRtGrp.plot[3].ly[0][row]);

                        }
                        grdlist.Redraw = true;
                        RefreshGraphEIS();
                    }
                }
            }
        }

        private void RefreshChangeTestData(st_zim_zPacket[] fititems)
        {
            mRtGrp.Initialize();

            grdlist.Redraw = false;

            for (int i = 0; i < fititems.Length; i++)
            {
                
                grdlist[i + 2, 6] = GetDataString(fititems[i].real); ;
                grdlist[i + 2, 7] = GetDataString(fititems[i].img);
                grdlist[i + 2, 8] = GetDataString(fititems[i].mag);
                grdlist[i + 2, 9] = GetDataString(fititems[i].phase);

                mRtGrp.plot[0].lx[0].Add(fititems[i].real);
                mRtGrp.plot[0].ly[0].Add(fititems[i].img * -1.0);

                mRtGrp.plot[2].lx[0].Add(fititems[i].freq);
                mRtGrp.plot[2].ly[0].Add(fititems[i].mag);
                mRtGrp.plot[3].lx[0].Add(fititems[i].freq);
                mRtGrp.plot[3].ly[0].Add(fititems[i].phase);
            }
            grdlist.Redraw = true;
        }


        private void ProcFitting(int CRange)
        {
            int trng = CRange / 2;
            


            items = listPacket.ToArray();
            fititems = listPacket.ToArray();
            if (items == null)
            {
                MessageBox.Show("There was a problem with the calibration.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            ZCalibration zCal = new ZCalibration(items, ref fititems, items.Length, 0.0, ranges.mDummy[CRange]); 

            if((CRange%2) == 0) ranges.iac_rng[trng].gain1 = zCal.Gain;
            else ranges.iac_rng[trng].gain2 = zCal.Gain;

            zCal.ApplyGain(ref fititems, fititems.Length, zCal.Gain);

            RefreshChangeTestData(fititems);
            ranges.mEisIRngCalInfo[CRange].n1 = zCal.Coefficients[0];
            ranges.mEisIRngCalInfo[CRange].n2 = zCal.Coefficients[1];
            ranges.mEisIRngCalInfo[CRange].n3 = zCal.Coefficients[2];
            ranges.mEisIRngCalInfo[CRange].d1 = zCal.Coefficients[3];
            ranges.mEisIRngCalInfo[CRange].d2 = zCal.Coefficients[4];
            ranges.mEisIRngCalInfo[CRange].d3 = zCal.Coefficients[5];

            /*
            int trng1 = trng * 2;
            ranges.mEisIRngCalInfo[trng1].n1 = zCal.Coefficients[0];
            ranges.mEisIRngCalInfo[trng1].n2 = zCal.Coefficients[1];
            ranges.mEisIRngCalInfo[trng1].n3 = zCal.Coefficients[2];
            ranges.mEisIRngCalInfo[trng1].d1 = zCal.Coefficients[3];
            ranges.mEisIRngCalInfo[trng1].d2 = zCal.Coefficients[4];
            ranges.mEisIRngCalInfo[trng1].d3 = zCal.Coefficients[5];
            trng1++;
            ranges.mEisIRngCalInfo[trng1].n1 = zCal.Coefficients[0];
            ranges.mEisIRngCalInfo[trng1].n2 = zCal.Coefficients[1];
            ranges.mEisIRngCalInfo[trng1].n3 = zCal.Coefficients[2];
            ranges.mEisIRngCalInfo[trng1].d1 = zCal.Coefficients[3];
            ranges.mEisIRngCalInfo[trng1].d2 = zCal.Coefficients[4];
            ranges.mEisIRngCalInfo[trng1].d3 = zCal.Coefficients[5];
            */
        }

        private void ProcApplyFitting(int CRange)
        {
            items = listPacket.ToArray();
            fititems = listPacket.ToArray();

            if (items == null)
            {
                MessageBox.Show("There was a problem with the calibration.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            double tgain = 1.0;
            if ((CRange % 2) == 0) tgain = ranges.iac_rng[CRange / 2].gain1;
            else tgain = ranges.iac_rng[CRange / 2].gain2;
            ZCalibration zCal = new ZCalibration(items, ref fititems, items.Length, ranges.mEisIRngCalInfo[CRange], tgain, ranges.mDummy[CRange]);

            zCal.ApplyGain(ref fititems, fititems.Length, zCal.Gain);

            RefreshChangeTestData(fititems);
        }

        private void lnkCalculate_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            ProcFitting(rng);

            RefreshPara();
            RefreshGraphEIS();
        }
        public void RefreshFrequency(ref string sval, ref double freq)
        {
            double val;

            if (string.IsNullOrWhiteSpace(sval))
                return;
            if (double.TryParse(sval, out val))
            {
                freq = val;
            }

            if (freq > DeviceConstants.MAX_EIS_FREQUENCY)
                freq = DeviceConstants.MAX_EIS_FREQUENCY;
            if (freq < DeviceConstants.MIN_EIS_FREQUENCY)
                freq = DeviceConstants.MIN_EIS_FREQUENCY;

            sval = string.Format("{0:#0.###}", freq);
        }
        private void lnkstart_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            string str;
            string sfilename;
            if (lnkstart.Text.Substring(0,5) == "Start")
            {

                mtech.type = 0;
                mtech.ondelay = (double)numdelay.Value;
                mtech.ondelaystable = 1;
                mtech.irange = (ushort)rng;

                str = txtbeginfreq.Text;
                RefreshFrequency(ref str, ref techeis.initfreq);
                txtbeginfreq.Text = str;

                str = txtFinishfreq.Text;
                RefreshFrequency(ref str, ref techeis.finalfreq);
                txtFinishfreq.Text = str;

                techeis.density = (ushort)numdensity.Value;
                techeis.iteration = 1;
                techeis.bias = 0.0;

                mtech.SetEIS(techeis);
                gBZA.SifLnkLst[Serial].MBZAIF.techcalib[sifch] = mtech;

                FileCondition fc = new FileCondition();
                if (fc.Save(gBZA.SifLnkLst[Serial].MBZAIF.calcondfilename[sifch], gBZA.SifLnkLst[Serial].MBZAIF.techcalib[sifch]) == false)
                {
                    gBZA.ShowInfoBox("Failed to save condition file of calibration test.");
                }
                

                if (MBZA_MapUtil.UploadCalibTechnique(Serial, sifch) == false)
                {
                    MessageBox.Show("There is a problem when transferring technical files.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                

                sfilename = sLogDataFile;

                gBZA.SifLnkLst[Serial].MBZAIF.resfilename[sifch] = sfilename;

                str = ch.ToString();

                var LnkCh = gBZA.ChLnkLst[str];
                LnkCh.mChInf.FileCond = gBZA.SifLnkLst[Serial].MBZAIF.condfilename[sifch];
                LnkCh.mChInf.FileResult = sfilename;
                gBZA.ChLnkLst[str] = LnkCh;

                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);

                if (MBZA_MapUtil.CtrlStart(Serial,sifch,true) == false)
                {
                    MessageBox.Show("Calibration test failed to start.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

            }
            else
            {
                if (MBZA_MapUtil.CtrlStop(Serial, sifch) == false)
                {
                    MessageBox.Show("Failed to terminate calibration test.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void lnksave_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;

            bool res = MBZA_MapUtil.Save_Range_info(Serial, sifch);



            if (res == false)
            {
                MessageBox.Show("Failed to apply range information by sending it to the device.");
                this.Cursor = Cursors.Default;
                return;
            }

            res = MBZA_MapUtil.WriteROM(Serial, sifch);

            this.Cursor = Cursors.Default;
            if (res == true)
                MessageBox.Show("Range information is written to ROM.");
            else MessageBox.Show("Failed to write range information to ROM.");

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            ViewStatus();
        }
        
        private void vVsIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            rtmode = 0;
            tVsIVToolStripMenuItem.Checked = false;
            grprt.XAxes[0].Caption = "Voltage(V)";
            grprt.YAxes[0].Caption = "Current(A)";

            RefreshRt();
        }

        private void tVsIVToolStripMenuItem_Click(object sender, EventArgs e)
        {
            rtmode = 1;
            vVsIToolStripMenuItem.Checked = false;
            grprt.XAxes[0].Caption = "Time";
            grprt.YAxes[0].Caption = "Voltage(V)";
            grprt.YAxes[1].Caption = "Current(A)";

            RefreshRt();
        }

        private void defaultToolStripMenuItem_Click(object sender, EventArgs e)
        {
            rtsize = 0;

            maximumToolStripMenuItem.Checked = false;
            RefreshRt();
            ChgRTGraphSize();
            
        }

        private void maximumToolStripMenuItem_Click(object sender, EventArgs e)
        {
            rtsize = 1;

            defaultToolStripMenuItem.Checked = false;
            RefreshRt();
            ChgRTGraphSize();

        }

        private void backColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_BackColor;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_BackColor = cd.Color;
                Properties.Settings.Default.Save();
                grprt.PlotAreaColor = Properties.Settings.Default.RtGrp_BackColor;
                backColorToolStripMenuItem.ForeColor = Properties.Settings.Default.RtGrp_BackColor;
            }
        }

        private void lineToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Properties.Settings.Default.RtGrp_Plot_ViewLine = lineToolStripMenuItem.Checked;
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

        private void pointToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Properties.Settings.Default.RtGrp_Plot_ViewPoint = pointToolStripMenuItem.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.RtGrp_Plot_ViewPoint)
            {
                grprt.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                grprt.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.EmptySquare;
            }
            else
            {
                grprt.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
                grprt.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
            }
        }

        private void plot1ColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_Plot1_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_Plot1_Color = cd.Color;
                Properties.Settings.Default.Save();
                grprt.Plots[0].LineColor = Properties.Settings.Default.RtGrp_Plot1_Color;
                grprt.Plots[0].PointColor = Properties.Settings.Default.RtGrp_Plot1_Color;
                grprt.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Plot1_Color;
                grprt.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Plot1_Color;
                grprt.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Plot1_Color;
              
                plot1ColorToolStripMenuItem.ForeColor = Properties.Settings.Default.RtGrp_Plot1_Color;
            }
        }

        private void plot2ColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_Plot2_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_Plot2_Color = cd.Color;
                Properties.Settings.Default.Save();
                grprt.Plots[1].LineColor = Properties.Settings.Default.RtGrp_Plot2_Color;
                grprt.Plots[1].PointColor = Properties.Settings.Default.RtGrp_Plot2_Color;
                grprt.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Plot2_Color;
                grprt.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Plot2_Color;
                grprt.YAxes[1].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Plot2_Color;
                plot2ColorToolStripMenuItem.ForeColor = Properties.Settings.Default.RtGrp_Plot2_Color;
            }
        }

        private void NiGrpMenuGraphModeZoom_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphModeZoom.Checked == true)
            {
                grp1.Cursors[0].Visible = NiGrpMenuGraphModeCursor.Checked;
                grp1.Cursors[0].LabelVisible = NiGrpMenuGraphModeCursor.Checked;
  
                NiGrpMenuGraphModeZoom.Checked = false;
                grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;
             }
            else
            {
                NiGrpMenuGraphModeZoom.Checked = true;
                NiGrpMenuGraphModeMove.Checked = false;
                grp1.Cursors[0].Visible = false;
                grp1.Cursors[0].LabelVisible = false;

                grp1.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;

            }
            
        }

        private void NiGrpMenuGraphModeMove_Click(object sender, EventArgs e)
        {
            if(NiGrpMenuGraphModeMove.Checked == true)
            {
                grp1.Cursors[0].Visible = NiGrpMenuGraphModeCursor.Checked;
                grp1.Cursors[0].LabelVisible = NiGrpMenuGraphModeCursor.Checked;
                NiGrpMenuGraphModeMove.Checked = false;
                grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;
            }
            else
            {
                grp1.Cursors[0].Visible = false;
                grp1.Cursors[0].LabelVisible = false;
                NiGrpMenuGraphModeMove.Checked = true;
                NiGrpMenuGraphModeZoom.Checked = false;
                grp1.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
            }
        }
        

        private void xAxisColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.RtGrp_Axis_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.RtGrp_Axis_Color = cd.Color;
                Properties.Settings.Default.Save();
                grprt.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
                grprt.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.RtGrp_Axis_Color;
                grprt.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.RtGrp_Axis_Color;
            }
        }

        private void NiGrpMenuGraphColorBackcolor_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.NiGrp_Backcolor;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.NiGrp_Backcolor = cd.Color;
                Properties.Settings.Default.Save();
                grp1.PlotAreaColor = Properties.Settings.Default.NiGrp_Backcolor;
            }
        }

        private void NiGrpMenuGraphColorSrccolor_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.NiGrp_Plot1_color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.NiGrp_Plot1_color = cd.Color;
                Properties.Settings.Default.Save();
                grp1.Plots[0].LineColor = Properties.Settings.Default.NiGrp_Plot1_color;
                grp1.Plots[0].PointColor = Properties.Settings.Default.NiGrp_Plot1_color;
                grp1.Plots[1].LineColor = Properties.Settings.Default.NiGrp_Plot1_color;
                grp1.Plots[1].PointColor = Properties.Settings.Default.NiGrp_Plot1_color;
            }
        }

        private void NiGrpMenuGraphColorGridcolor_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.NiGrp_Grid_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.NiGrp_Grid_Color = cd.Color;
                Properties.Settings.Default.Save();

                grp1.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.NiGrp_Grid_Color;
                grp1.XAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.NiGrp_Grid_Color;
                grp1.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.NiGrp_Grid_Color;
                grp1.YAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.NiGrp_Grid_Color;
            }
        }

        private void backColorToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.BdGrp_Backcolor;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.BdGrp_Backcolor = cd.Color;
                Properties.Settings.Default.Save();
                grp2.PlotAreaColor = Properties.Settings.Default.BdGrp_Backcolor;
            }
        }

        private void sourceZmagToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.BdGrp_Plot1_color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.BdGrp_Plot1_color = cd.Color;
                Properties.Settings.Default.Save();

                grp2.Plots[0].LineColor = Properties.Settings.Default.BdGrp_Plot1_color;
                grp2.Plots[0].PointColor = Properties.Settings.Default.BdGrp_Plot1_color;
                grp2.Plots[2].LineColor = Properties.Settings.Default.BdGrp_Plot1_color;
                grp2.Plots[2].PointColor = Properties.Settings.Default.BdGrp_Plot1_color;
            }
        }

        private void sourceZphaseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.BdGrp_Plot2_color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.BdGrp_Plot2_color = cd.Color;
                Properties.Settings.Default.Save();
                grp2.Plots[1].LineColor = Properties.Settings.Default.BdGrp_Plot2_color;
                grp2.Plots[1].PointColor = Properties.Settings.Default.BdGrp_Plot2_color;
                grp2.Plots[3].LineColor = Properties.Settings.Default.BdGrp_Plot2_color;
                grp2.Plots[3].PointColor = Properties.Settings.Default.BdGrp_Plot2_color;
            }
        }
        
        private void BdGrpMenuGraphModeZoom_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphModeZoom.Checked == true)
            {
                BdGrpMenuGraphModeZoom.Checked = false;
                if(BdGrpMenuGraphModeCursorNone.Checked == true)
                {
                    grp2.Cursors[0].Visible = false;
                    grp2.Cursors[0].LabelVisible = false;
                }
                else
                {
                    grp2.Cursors[0].Visible = true;
                    grp2.Cursors[0].LabelVisible = true;
                }
                grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
            }
            else
            {
                BdGrpMenuGraphModeZoom.Checked = true;
                BdGrpMenuGraphModeMove.Checked = false;
                grp2.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
            }
        }

        private void BdGrpMenuGraphModeMove_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphModeMove.Checked == true)
            {
                BdGrpMenuGraphModeMove.Checked = false;
                if (BdGrpMenuGraphModeCursorNone.Checked == true)
                {
                    grp2.Cursors[0].Visible = false;
                    grp2.Cursors[0].LabelVisible = false;
                }
                else
                {
                    grp2.Cursors[0].Visible = true;
                    grp2.Cursors[0].LabelVisible = true;
                }
                grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
            }
            else
            {
                BdGrpMenuGraphModeMove.Checked = true;
                BdGrpMenuGraphModeZoom.Checked = false;
                grp2.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
            }
        }

        private void frmCalibration_SizeChanged(object sender, EventArgs e)
        {
            if(rtsize == 1)
            {
                ChgRTGraphSize();
            }
        }

        private void NiGrpMenuGraphInitialize_Click(object sender, EventArgs e)
        {
            grp1.ResetZoomPan();
        }

        private void NiGrpMenuGraphUndo_Click(object sender, EventArgs e)
        {
            grp1.UndoZoomPan();
        }
        

        private void BdGrpMenuGraphUndo_Click(object sender, EventArgs e)
        {
            grp2.UndoZoomPan();
        }

        private void BdGrpMenuGraphInitialize_Click(object sender, EventArgs e)
        {
            grp1.ResetZoomPan();
        }

        private void NiGrpMenuGraphModeCursorNone_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphModeCursorNone.Checked == false)
            {
                NiGrpMenuGraphModeCursorNone.Checked = true;
                NiGrpMenuGraphModeCursorSrc1.Checked = false;
                NiGrpMenuGraphModeCursorCal1.Checked = false;
                if (NiGrpMenuGraphModeZoom.Checked == true)
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
                }
                else if (NiGrpMenuGraphModeMove.Checked == true)
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
                }
                else
                {
                    grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;
                }
                grp1.Cursors[0].Visible = false;
                grp1.Cursors[0].LabelVisible = false;
            }
        }

        private void NiGrpMenuGraphModeCursorSrc1_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphModeCursorSrc1.Checked == false)
            {
                NiGrpMenuGraphModeCursorNone.Checked = false;
                NiGrpMenuGraphModeCursorSrc1.Checked = true;
                NiGrpMenuGraphModeCursorCal1.Checked = false;


                NiGrpMenuGraphModeZoom.Checked = false;
                NiGrpMenuGraphModeMove.Checked = false;
                grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;
                grp1.Cursors[0].Plot = grp1.Plots[0];
                grp1.Cursors[0].Color = grp1.Cursors[0].Plot.LineColor;
                grp1.Cursors[0].LabelForeColor = grp1.Cursors[0].Plot.LineColor;
                grp1.Cursors[0].Visible = true;
                grp1.Cursors[0].LabelVisible = true;
            }
        }

        private void NiGrpMenuGraphModeCursorCal1_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphModeCursorCal1.Checked == false)
            {
                NiGrpMenuGraphModeCursorNone.Checked = false;
                NiGrpMenuGraphModeCursorSrc1.Checked = false;
                NiGrpMenuGraphModeCursorCal1.Checked = true;


                NiGrpMenuGraphModeZoom.Checked = false;
                NiGrpMenuGraphModeMove.Checked = false;

                grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;
                grp1.Cursors[0].Plot = grp1.Plots[1];
                grp1.Cursors[0].Color = grp1.Cursors[0].Plot.LineColor;
                grp1.Cursors[0].LabelForeColor = grp1.Cursors[0].Plot.LineColor;
                grp1.Cursors[0].Visible = true;
                grp1.Cursors[0].LabelVisible = true;
            }
        }

        private void BdGrpMenuGraphModeCursorNone_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphModeCursorNone.Checked == false)
            {
                BdGrpMenuGraphModeCursorNone.Checked = true;
                BdGrpMenuGraphModeCursorSrc1.Checked = false;
                BdGrpMenuGraphModeCursorSrc2.Checked = false;
                BdGrpMenuGraphModeCursorCal1.Checked = false;
                BdGrpMenuGraphModeCursorCal2.Checked = false;

                if (BdGrpMenuGraphModeZoom.Checked == true)
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
                }
                else if (BdGrpMenuGraphModeMove.Checked == true)
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.PanXY;
                }
                else
                {
                    grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
                }
                grp2.Cursors[0].Visible = false;
                grp2.Cursors[0].LabelVisible = false;
            }
        }

        private void BdGrpMenuGraphModeCursorSrc1_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphModeCursorSrc1.Checked == false)
            {
                BdGrpMenuGraphModeCursorNone.Checked = false;
                BdGrpMenuGraphModeCursorSrc1.Checked = true;
                BdGrpMenuGraphModeCursorSrc2.Checked = false;
                BdGrpMenuGraphModeCursorCal1.Checked = false;
                BdGrpMenuGraphModeCursorCal2.Checked = false;


                BdGrpMenuGraphModeZoom.Checked = false;
                BdGrpMenuGraphModeMove.Checked = false;

                grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
                grp2.Cursors[0].Plot = grp2.Plots[0];
                grp2.Cursors[0].Color = grp2.Plots[0].LineColor;
                grp2.Cursors[0].LabelForeColor = grp2.Plots[0].LineColor;
                grp2.Cursors[0].Visible = true;
                grp2.Cursors[0].LabelVisible = true;
            }
        }

        private void BdGrpMenuGraphModeCursorSrc2_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphModeCursorSrc2.Checked == false)
            {
                BdGrpMenuGraphModeCursorNone.Checked = false;
                BdGrpMenuGraphModeCursorSrc1.Checked = false;
                BdGrpMenuGraphModeCursorSrc2.Checked = true;
                BdGrpMenuGraphModeCursorCal1.Checked = false;
                BdGrpMenuGraphModeCursorCal2.Checked = false;


                BdGrpMenuGraphModeZoom.Checked = false;
                BdGrpMenuGraphModeMove.Checked = false;

                grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
                grp2.Cursors[0].Plot = grp2.Plots[1];
                grp2.Cursors[0].Color = grp2.Plots[1].LineColor;
                grp2.Cursors[0].LabelForeColor = grp2.Plots[1].LineColor;
                grp2.Cursors[0].Visible = true;
                grp2.Cursors[0].LabelVisible = true;
            }
        }

        private void BdGrpMenuGraphModeCursorCal1_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphModeCursorCal1.Checked == false)
            {
                BdGrpMenuGraphModeCursorNone.Checked = false;
                BdGrpMenuGraphModeCursorSrc1.Checked = false;
                BdGrpMenuGraphModeCursorSrc2.Checked = false;
                BdGrpMenuGraphModeCursorCal1.Checked = true;
                BdGrpMenuGraphModeCursorCal2.Checked = false;


                BdGrpMenuGraphModeZoom.Checked = false;
                BdGrpMenuGraphModeMove.Checked = false;

                grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
                grp2.Cursors[0].Plot = grp2.Plots[2];
                grp2.Cursors[0].Color = grp2.Plots[2].LineColor;
                grp2.Cursors[0].LabelForeColor = grp2.Plots[2].LineColor;
                grp2.Cursors[0].Visible = true;
                grp2.Cursors[0].LabelVisible = true;
            }
        }

        private void BdGrpMenuGraphModeCursorCal2_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphModeCursorCal2.Checked == false)
            {
                BdGrpMenuGraphModeCursorNone.Checked = false;
                BdGrpMenuGraphModeCursorSrc1.Checked = false;
                BdGrpMenuGraphModeCursorSrc2.Checked = false;
                BdGrpMenuGraphModeCursorCal1.Checked = false;
                BdGrpMenuGraphModeCursorCal2.Checked = true;


                BdGrpMenuGraphModeZoom.Checked = false;
                BdGrpMenuGraphModeMove.Checked = false;

                grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;
                grp2.Cursors[0].Plot = grp2.Plots[3];
                grp2.Cursors[0].Color = grp2.Plots[3].LineColor;
                grp2.Cursors[0].LabelForeColor = grp2.Plots[3].LineColor;
                grp2.Cursors[0].Visible = true;
                grp2.Cursors[0].LabelVisible = true;
            }
        }

        private void BdGrpMenuGraphViewLegend_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphViewLegend.Checked == true) BdGrpMenuGraphViewLegend.Checked = false;
            else BdGrpMenuGraphViewLegend.Checked = true;

            Properties.Settings.Default.BdGrp_Legend_View = BdGrpMenuGraphViewLegend.Checked;
            Properties.Settings.Default.Save();
            Bdlegend.Visible = Properties.Settings.Default.BdGrp_Legend_View;
        }

        private void NiGrpMenuGraphViewLegend_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphViewLegend.Checked == true) NiGrpMenuGraphViewLegend.Checked = false;
            else NiGrpMenuGraphViewLegend.Checked = true;

            Properties.Settings.Default.NiGrp_Legend_View = NiGrpMenuGraphViewLegend.Checked;
            Properties.Settings.Default.Save();
            Nilegend.Visible = Properties.Settings.Default.NiGrp_Legend_View;
        }

        private void legendToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (legendToolStripMenuItem.Checked == true) legendToolStripMenuItem.Checked = false;
            else legendToolStripMenuItem.Checked = true;

            RefreshRtLegend();
        }

        private void NiGrpMenuGraphViewSrcLine_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphViewSrcLine.Checked) NiGrpMenuGraphViewSrcLine.Checked = false;
            else NiGrpMenuGraphViewSrcLine.Checked = true;

            Properties.Settings.Default.NiGrp_Plot1_Lineview = NiGrpMenuGraphViewSrcLine.Checked;
            Properties.Settings.Default.Save();

            if (Properties.Settings.Default.NiGrp_Plot1_Lineview) grp1.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp1.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
        }

        private void NiGrpMenuGraphViewSrcPoint_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphViewSrcPoint.Checked) NiGrpMenuGraphViewSrcPoint.Checked = false;
            else NiGrpMenuGraphViewSrcPoint.Checked = true;
            Properties.Settings.Default.NiGrp_Plot1_Pointview = NiGrpMenuGraphViewSrcPoint.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.NiGrp_Plot1_Pointview) grp1.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
            else grp1.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
        }

        private void NiGrpMenuGraphViewCalLine_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphViewCalLine.Checked) NiGrpMenuGraphViewCalLine.Checked = false;
            else NiGrpMenuGraphViewCalLine.Checked = true;
            Properties.Settings.Default.NiGrp_Plot2_Lineview = NiGrpMenuGraphViewCalLine.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.NiGrp_Plot2_Lineview) grp1.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            else grp1.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
        }

        private void NiGrpMenuGraphViewCalPoint_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphViewCalPoint.Checked) NiGrpMenuGraphViewCalPoint.Checked = false;
            else NiGrpMenuGraphViewCalPoint.Checked = true;
            Properties.Settings.Default.NiGrp_Plot2_Pointview = NiGrpMenuGraphViewCalPoint.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.NiGrp_Plot2_Pointview) grp1.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp1.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
        }

        private void gridToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(gridToolStripMenuItem.Checked) gridToolStripMenuItem.Checked = false;
            else gridToolStripMenuItem.Checked = true;
            Properties.Settings.Default.NiGrp_Grid_View = gridToolStripMenuItem.Checked;
            Properties.Settings.Default.Save();

            grp1.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.NiGrp_Grid_View;
            grp1.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.NiGrp_Grid_View;
        }

        private void gridColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog cd = new ColorDialog();
            cd.Color = Properties.Settings.Default.BdGrp_Grid_Color;

            if (cd.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.BdGrp_Grid_Color = cd.Color;
                Properties.Settings.Default.Save();

                grp2.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
                grp2.XAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
                grp2.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
                grp2.YAxes[0].MinorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
                grp2.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
                grp2.YAxes[1].MinorDivisions.GridColor = Properties.Settings.Default.BdGrp_Grid_Color;
            }
        }

        private void sourceZmagnitudeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (sourceZmagnitudeToolStripMenuItem.Checked) sourceZmagnitudeToolStripMenuItem.Checked = false;
            else sourceZmagnitudeToolStripMenuItem.Checked = true;
            Properties.Settings.Default.BdGrp_Plot1_Lineview = sourceZmagnitudeToolStripMenuItem.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.BdGrp_Plot1_Lineview) grp2.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
        }

        private void sourceZmagnitudePointToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (sourceZmagnitudePointToolStripMenuItem.Checked) sourceZmagnitudePointToolStripMenuItem.Checked = false;
            else sourceZmagnitudePointToolStripMenuItem.Checked = true;
            Properties.Settings.Default.BdGrp_Plot1_Pointview = sourceZmagnitudePointToolStripMenuItem.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.BdGrp_Plot1_Pointview) grp2.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
            else grp2.Plots[0].PointStyle = NationalInstruments.UI.PointStyle.None;
        }

        private void sourceZphaseToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (sourceZphaseToolStripMenuItem1.Checked) sourceZphaseToolStripMenuItem1.Checked = false;
            else sourceZphaseToolStripMenuItem1.Checked = true;
            Properties.Settings.Default.BdGrp_Plot2_Lineview = sourceZphaseToolStripMenuItem1.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.BdGrp_Plot2_Lineview) grp2.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            else grp2.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
        }

        private void sourceZphasePointToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (sourceZphasePointToolStripMenuItem.Checked) sourceZphasePointToolStripMenuItem.Checked = false;
            else sourceZphasePointToolStripMenuItem.Checked = true;
            Properties.Settings.Default.BdGrp_Plot2_Pointview = sourceZphasePointToolStripMenuItem.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.BdGrp_Plot2_Pointview) grp2.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
            else grp2.Plots[1].PointStyle = NationalInstruments.UI.PointStyle.None;
        }

        private void calibrationZmagnitudeToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (calibrationZmagnitudeToolStripMenuItem1.Checked) calibrationZmagnitudeToolStripMenuItem1.Checked = false;
            else calibrationZmagnitudeToolStripMenuItem1.Checked = true;
            Properties.Settings.Default.BdGrp_Plot3_Lineview = calibrationZmagnitudeToolStripMenuItem1.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.BdGrp_Plot3_Lineview) grp2.Plots[2].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            else grp2.Plots[2].LineStyle = NationalInstruments.UI.LineStyle.None;
        }

        private void calibrationZmagnitudePointToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (calibrationZmagnitudePointToolStripMenuItem.Checked) calibrationZmagnitudePointToolStripMenuItem.Checked = false;
            else calibrationZmagnitudePointToolStripMenuItem.Checked = true;
            Properties.Settings.Default.BdGrp_Plot3_Pointview = calibrationZmagnitudePointToolStripMenuItem.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.BdGrp_Plot3_Pointview) grp2.Plots[2].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[2].PointStyle = NationalInstruments.UI.PointStyle.None;
        }

        private void calibrationZphaseToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (calibrationZphaseToolStripMenuItem1.Checked) calibrationZphaseToolStripMenuItem1.Checked = false;
            else calibrationZphaseToolStripMenuItem1.Checked = true;
            Properties.Settings.Default.BdGrp_Plot4_Lineview = calibrationZphaseToolStripMenuItem1.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.BdGrp_Plot4_Lineview) grp2.Plots[3].LineStyle = NationalInstruments.UI.LineStyle.Dot;
            else grp2.Plots[3].LineStyle = NationalInstruments.UI.LineStyle.None;
        }

        private void calibrationZphasePointToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (calibrationZphasePointToolStripMenuItem.Checked) calibrationZphasePointToolStripMenuItem.Checked = false;
            else calibrationZphasePointToolStripMenuItem.Checked = true;
            Properties.Settings.Default.BdGrp_Plot4_Pointview = calibrationZphasePointToolStripMenuItem.Checked;
            Properties.Settings.Default.Save();
            if (Properties.Settings.Default.BdGrp_Plot4_Pointview) grp2.Plots[3].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            else grp2.Plots[3].PointStyle = NationalInstruments.UI.PointStyle.None;
        }

        private void BdGrpMenuGraphViewGridY1_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphViewGridY1.Checked == true) BdGrpMenuGraphViewGridY1.Checked = false;
            else BdGrpMenuGraphViewGridY1.Checked = true;

            Properties.Settings.Default.BdGrp_Grid_Y1view = BdGrpMenuGraphViewGridY1.Checked;
            Properties.Settings.Default.Save();
            grp2.YAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.BdGrp_Grid_Y1view;
            grp2.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.BdGrp_Grid_Y1view | Properties.Settings.Default.BdGrp_Grid_Y2view;
        }

        private void BdGrpMenuGraphViewGridY2_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphViewGridY2.Checked == true) BdGrpMenuGraphViewGridY2.Checked = false;
            else BdGrpMenuGraphViewGridY2.Checked = true;

            Properties.Settings.Default.BdGrp_Grid_Y2view = BdGrpMenuGraphViewGridY2.Checked;
            Properties.Settings.Default.Save();
            grp2.YAxes[1].MajorDivisions.GridVisible = Properties.Settings.Default.BdGrp_Grid_Y2view;
            grp2.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.BdGrp_Grid_Y1view | Properties.Settings.Default.BdGrp_Grid_Y2view;
        }

        private void gridToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (gridToolStripMenuItem1.Checked) gridToolStripMenuItem1.Checked = false;
            else gridToolStripMenuItem1.Checked = true;

            Properties.Settings.Default.RtGrp_GridView = gridToolStripMenuItem1.Checked;
            Properties.Settings.Default.Save();

            grprt.XAxes[0].MajorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            grprt.YAxes[0].MinorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;
            grprt.YAxes[1].MinorDivisions.GridVisible = Properties.Settings.Default.RtGrp_GridView;

        }

        private void gridToolStripMenuItem2_Click(object sender, EventArgs e)
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

        private void Nilegend_ItemsChanged(object sender, CollectionChangeEventArgs e)
        {
            
        }

        private void Nilegend_MouseDoubleClick(object sender, MouseEventArgs e)
        {

        }

        private void grprt_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (rtsize == 0)
            {
                rtsize = 1;
                defaultToolStripMenuItem.Checked = false;
                maximumToolStripMenuItem.Checked = true;
            }
            else
            {
                rtsize = 0;
                defaultToolStripMenuItem.Checked = true;
                maximumToolStripMenuItem.Checked = false;
            }
            RefreshRt();
            ChgRTGraphSize();
        }

        private void frmCalibration_FormClosing(object sender, FormClosingEventArgs e)
        {
            timer1.Stop();

            if (MBZA_MapUtil.SetCalibMode(Serial, sifch, false) == false)
            {
                MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

    }
}
