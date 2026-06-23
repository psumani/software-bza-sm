using C1.Win.C1FlexGrid;
using NationalInstruments;
using NationalInstruments.UI;
using SMLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Serialization;
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
        private int SelItem;
        private int ChgSelItem;
        private int SelNiItem;
        private int SelBdItem;

        private bool usefile;
        private int rtmode;
        private int rtsize;
        private int DataCount;

        private eZimType zimtype;
        private stTech mtech;
        private stTech_EIS techeis;


        private st_zim_rnginf[] ranges;
        private List<st_zim_zPacket> listPacket;

        st_graph_vars grpvars;

        st_zim_zPacket[] items;
        st_zim_zPacket[] fititems;

        public st_zim_rt mRtGrp;

        public FileResult mlogfile;
        
        private cls_rtdata mRtData;
        string[] sline;
        string[] sPoint;

        CheckBox[] ChkBoxNi;
        CheckBox[] ChkBoxBd;

        private frmAuxVdc auxForm;

        bool bSelectRng;
        bool begindlg;
        public frmCalibration(int tch, string tserial, int tsifch, int trng)
        {
            InitializeComponent();
            DoubleBuffered = true;

            bSelectRng = false;
            begindlg = true;
            SelItem = 0;
            ChgSelItem = 0;
            SelNiItem = 0;
            SelBdItem = 0;

            grpvars = new st_graph_vars();

            ChkBoxNi = new[]
            {
                chkitemA1,chkitemA2,chkitemA3,chkitemA4,chkitemA5,
                chkitemA6,chkitemA7,chkitemA8,chkitemA9,chkitemA10,
                chkitemA11,chkitemA12,chkitemA13
            };
            foreach (var cb in ChkBoxNi) cb.CheckedChanged += CheckBoxNi_CheckedChanged;

            ChkBoxBd = new[]
            {
                chkitemB1,chkitemB2,chkitemB3,chkitemB4,chkitemB5,
                chkitemB6,chkitemB7,chkitemB8,chkitemB9,chkitemB10,
                chkitemB11,chkitemB12,chkitemB13
            };
            foreach (var cb in ChkBoxBd) cb.CheckedChanged += CheckBoxBd_CheckedChanged;
            
            chkSrcNi.Checked = grpvars.ni.show[0];
            chkCalNi.Checked = grpvars.ni.show[0];

            chkSrcNi.CheckedChanged += CheckPlotNi_CheckedChanged;
            chkCalNi.CheckedChanged += CheckPlotNi_CheckedChanged;

            chkSrcBd1.Checked = grpvars.bode.show[0];
            chkSrcBd2.Checked = grpvars.bode.show[1];
            chkCalBd1.Checked = grpvars.bode.show[2];
            chkCalBd2.Checked = grpvars.bode.show[3];

            chkSrcBd1.CheckedChanged += CheckPlotBd_CheckedChanged;
            chkSrcBd2.CheckedChanged += CheckPlotBd_CheckedChanged;
            chkCalBd1.CheckedChanged += CheckPlotBd_CheckedChanged;
            chkCalBd2.CheckedChanged += CheckPlotBd_CheckedChanged;

            ranges = new st_zim_rnginf[MBZA_Constant.MAX_DEV_CHANNEL];
            for(int i=0; i< MBZA_Constant.MAX_DEV_CHANNEL; i++)
            {
                ranges[i] = new st_zim_rnginf(0);
            }


            listPacket = new List<st_zim_zPacket>();

            items = new st_zim_zPacket[DeviceConstants.MAX_EIS_FREQ_CNT];
            fititems = new st_zim_zPacket[DeviceConstants.MAX_EIS_FREQ_CNT];
            mRtGrp = new st_zim_rt();
            mRtData = new cls_rtdata();
            
            mlogfile = new FileResult();

            usefile = true;

            sline = EnumObject.GetNames(typeof(NationalInstruments.UI.LineStyle));
            sPoint = EnumObject.GetNames(typeof(NationalInstruments.UI.PointStyle));

            
            Initialize(tch, tserial, tsifch, trng);

            InitRtGraph();
            InitNiGraph();
            InitBdGraph();

            Initial_NiLegend();
            Initial_BdLegend();


            RefreshShowPlotNi();
            RefreshShowPlotBd();

            if (MBZA_MapUtil.SetCalibMode(Serial, sifch, true) == false)
            {
                MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public bool SaveCalGrpVarsToXml()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(st_graph_vars));
            try
            {
                using (FileStream fs = new FileStream(gBZA.FileCalGrpVars, FileMode.Create))
                {
                    serializer.Serialize(fs, grpvars);
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(string.Format("Failed to save file[Error:{0}].", ex.Message), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            return true;
        }

        public bool LoadXmlToCalGrpVars()
        {
            try
            {
                if (File.Exists(gBZA.FileGrpVars) == false)
                {
                    SaveCalGrpVarsToXml();
                }
                else
                {
                    XmlSerializer serializer = new XmlSerializer(typeof(st_graph_vars));
                    using (FileStream fs = new FileStream(gBZA.FileCalGrpVars, FileMode.Open))
                    {
                        grpvars = (st_graph_vars)serializer.Deserialize(fs);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(string.Format("Failed to read file[Error:{0}].", ex.Message), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            return true;
        }

        private void RefreshShowPlotNi()
        {
            int nPlot;
            int idx = SelNiItem - 1;
            int nAuxCh = -1;

            nPlot = 0;
            if (grpvars.showitems[0].showni == false)
            {
                grpvars.showitems[0].SetNiValue(false);
            }
            else
            {
                grpvars.showitems[0].SetNiValue(0, grpvars.ni.show[0]);
                grpvars.showitems[0].SetNiValue(1, grpvars.ni.show[1]);
            }
            
            grp1.Plots[nPlot].Visible = grpvars.showitems[0].ni.show[0];
            grp1.Plots[nPlot + 1].Visible = grpvars.showitems[0].ni.show[1];

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS ; i++)
            {
                nAuxCh = grpvars.showitems[i].nAuxCh;
                if (grpvars.nAuxChCount == 0 || grpvars.showitems[i].bExist == false || grpvars.showitems[i].showni == false || nAuxCh < 0)
                {
                    grpvars.showitems[i].SetNiValue(false);
                }
                else
                {
                    grpvars.showitems[i].SetNiValue(0, grpvars.ni.show[0]);
                    grpvars.showitems[i].SetNiValue(1, grpvars.ni.show[1]);
                }
                nPlot = i * 2;
                grp1.Plots[nPlot].Visible = grpvars.showitems[i].ni.show[0];
                grp1.Plots[nPlot + 1].Visible = grpvars.showitems[i].ni.show[1];
                
            }

            if (grpvars.nAuxChCount == 0)
            {
                Nilegend.Items[0].Visible = grp1.Plots[0].Visible;
                Nilegend.Items[1].Visible = grp1.Plots[1].Visible;
            }
            else
            {
                if (idx < 0)
                {
                    for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        Nilegend.Items[i * 2].Visible = grp1.Plots[i * 2].Visible;
                        Nilegend.Items[i * 2 + 1].Visible = grp1.Plots[i * 2 + 1].Visible;
                    }
                }
                else
                {
                    Nilegend.Items[idx * 2].Visible = grp1.Plots[idx * 2].Visible;
                    Nilegend.Items[idx * 2 + 1].Visible = grp1.Plots[idx * 2 + 1].Visible;
                }
            }
        }
        
        private void RefreshShowPlotBd()
        {
            int nPlot;
            int idx = SelBdItem - 1;
            int nAuxCh = -1;

            if (grpvars.showitems[0].showbode == false)
            {
                grpvars.showitems[0].SetBodeValue(false);
            }
            else
            {
                grpvars.showitems[0].SetBodeValue(0, grpvars.bode.show[0]);
                grpvars.showitems[0].SetBodeValue(1, grpvars.bode.show[1]);
                grpvars.showitems[0].SetBodeValue(2, grpvars.bode.show[2]);
                grpvars.showitems[0].SetBodeValue(3, grpvars.bode.show[3]);
            }

            grp2.Plots[0].Visible = grpvars.showitems[0].bode.show[0];
            grp2.Plots[1].Visible = grpvars.showitems[0].bode.show[1];
            grp2.Plots[2].Visible = grpvars.showitems[0].bode.show[2];
            grp2.Plots[3].Visible = grpvars.showitems[0].bode.show[3];

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                nAuxCh = grpvars.showitems[i].nAuxCh;
                if (grpvars.nAuxChCount == 0 || grpvars.showitems[i].bExist == false || grpvars.showitems[i].showbode == false || nAuxCh < 0)
                {
                    grpvars.showitems[i].SetBodeValue(false);
                }
                else
                {
                    grpvars.showitems[i].SetBodeValue(0, grpvars.bode.show[0]);
                    grpvars.showitems[i].SetBodeValue(1, grpvars.bode.show[1]);
                    grpvars.showitems[i].SetBodeValue(2, grpvars.bode.show[2]);
                    grpvars.showitems[i].SetBodeValue(3, grpvars.bode.show[3]);
                }
                nPlot = i * 4;
                grp2.Plots[nPlot].Visible = grpvars.showitems[i].bode.show[0];
                grp2.Plots[nPlot + 1].Visible = grpvars.showitems[i].bode.show[1];
                grp2.Plots[nPlot + 2].Visible = grpvars.showitems[i].bode.show[2];
                grp2.Plots[nPlot + 3].Visible = grpvars.showitems[i].bode.show[3];

            }

            if (grpvars.nAuxChCount == 0)
            {
                Bdlegend.Items[0].Visible = grp2.Plots[0].Visible;
                Bdlegend.Items[1].Visible = grp2.Plots[1].Visible;
                Bdlegend.Items[2].Visible = grp2.Plots[2].Visible;
                Bdlegend.Items[3].Visible = grp2.Plots[3].Visible;
            }
            else
            {
                if (idx < 0)
                {
                    for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
                    {
                        Bdlegend.Items[i * 4].Visible = grp2.Plots[i * 4].Visible;
                        Bdlegend.Items[i * 4 + 1].Visible = grp2.Plots[i * 4 + 1].Visible;
                        Bdlegend.Items[i * 4 + 2].Visible = grp2.Plots[i * 4 + 2].Visible;
                        Bdlegend.Items[i * 4 + 3].Visible = grp2.Plots[i * 4 + 3].Visible;
                    }
                }
                else
                {
                    Bdlegend.Items[idx * 4].Visible = grp2.Plots[idx * 4].Visible;
                    Bdlegend.Items[idx * 4 + 1].Visible = grp2.Plots[idx * 4 + 1].Visible;
                    Bdlegend.Items[idx * 4 + 2].Visible = grp2.Plots[idx * 4 + 2].Visible;
                    Bdlegend.Items[idx * 4 + 3].Visible = grp2.Plots[idx * 4 + 3].Visible;
                }
            }
            
        }

        private void CheckPlotNi_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox changedBox = sender as CheckBox;

            if (changedBox == null || begindlg)
                return;

            if (changedBox == chkSrcNi) grpvars.ni.show[0] = changedBox.Checked;
            else grpvars.ni.show[1] = changedBox.Checked;

            RefreshShowPlotNi();
        }

        private void CheckPlotBd_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox changedBox = sender as CheckBox;

            if (changedBox == null || begindlg)
                return;
            if (changedBox == chkSrcBd1) grpvars.bode.show[0] = changedBox.Checked;
            else if (changedBox == chkSrcBd2) grpvars.bode.show[1] = changedBox.Checked;
            else if (changedBox == chkCalBd1) grpvars.bode.show[2] = changedBox.Checked;
            else grpvars.bode.show[3] = changedBox.Checked;

            RefreshShowPlotBd();
        }

        private void CheckBoxNi_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox changedBox = sender as CheckBox;

            if (changedBox == null || begindlg)
                return;
            for(int i=0; i<MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if(changedBox == ChkBoxNi[i]) grpvars.showitems[i].showni = changedBox.Checked;
            }
            RefreshShowPlotNi();
        }

        private void CheckBoxBd_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox changedBox = sender as CheckBox;

            if (changedBox == null || begindlg)
                return;
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (changedBox == ChkBoxBd[i]) grpvars.showitems[i].showbode = changedBox.Checked;
                
            }
            RefreshShowPlotBd();
        }
        
        public void Initialize(int tch, string tserial, int tsifch, int trng)
        {
            string str;
            int nAuxBd = 0;
            int nAuxBdCh = 0;
            int idx = 0;
            int i;
            
            Size size1 = new Size(708, 494);
            Size size2 = new Size(850, 494);
            timer1.Stop();
            ch = tch;
            Serial = tserial;
            sifch = tsifch;

            grpvars.tRng = trng;

            if (grpvars.tRng < 0)
            {
                grpvars.tRng = 0;
                bSelectRng = true;
            }
            grpvars.CRng = grpvars.tRng/2;
            if ((grpvars.tRng % 2) > 0)
            {
                grpvars.OtherRng = grpvars.tRng-1;
                
            }
            else
            {
                grpvars.OtherRng = grpvars.tRng + 1;
            }

            cboItem.Items.Clear();


            grpvars.nAuxChCount = 0;

            ranges[0].ToWritePtr(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges.ToByteArray());
            if (gBZA.IsMCBZA(Serial))
            {
                grpvars.bAux = true;
                for (i = 0; i < MBZA_Constant.MAX_AUX_BOARD; i++)
                {
                    ranges[i + 1].ToWritePtr(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[i + 1].ranges.ToByteArray());
                }
            }
            else grpvars.bAux = false;
            
            grpvars.showitems[0].bExist = true;
            grpvars.showitems[0].SetValue(true);
            ChkBoxNi[0].Text = "Main";
            ChkBoxBd[0].Text = "Main";
            ChkBoxNi[0].Visible = true;
            ChkBoxNi[0].Checked = true;
            ChkBoxBd[0].Visible = true;
            ChkBoxBd[0].Checked = true;

            idx = 1;
            for (i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                grpvars.showitems[i].bExist = false;
                grpvars.showitems[i].nAuxCh = -1;
                grpvars.showitems[i].SetValue(false);
                ChkBoxNi[idx].Text = "Aux Ch";
                ChkBoxBd[idx].Text = "Aux Ch";
                ChkBoxNi[i].Visible = false;
                ChkBoxNi[i].Checked = false;
                ChkBoxBd[i].Visible = false;
                ChkBoxBd[i].Checked = false;
            }

            grpvars.showitems[0].mDummy = ranges[0].Gen.mDummy[grpvars.tRng];
            grpvars.showitems[0].mInfo = ranges[0].Gen.mEisIRngCalInfo[grpvars.tRng];
            grpvars.showitems[0].gain1 = ranges[0].Gen.iac_rng[grpvars.CRng].gain1;
            grpvars.showitems[0].gain2 = ranges[0].Gen.iac_rng[grpvars.CRng].gain2;

            idx = 1;
            for (i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                nAuxBd = (i - 1) / MBZA_Constant.MAX_AUX_CHANNEL+1;
                nAuxBdCh = (i - 1) % MBZA_Constant.MAX_AUX_CHANNEL;
                if (gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.EnaZIM[nAuxBd] == 1
                    && gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.ChkZIM[nAuxBd] == 1
                    && grpvars.bAux == true)
                {
                    grpvars.showitems[idx].bExist = true;
                    grpvars.showitems[idx].nAuxCh = i-1;
                    grpvars.showitems[idx].SetValue(true);
                    ChkBoxNi[idx].Visible = true;
                    ChkBoxNi[idx].Checked = true;
                    ChkBoxBd[idx].Visible = true;
                    ChkBoxBd[idx].Checked = true;

                    grpvars.showitems[idx].mDummy = ranges[0].Gen.mDummy[grpvars.tRng];
                    grpvars.showitems[idx].mInfo = ranges[nAuxBd].Aux.mEisIRngCalInfo[nAuxBdCh].items[grpvars.tRng];
                    grpvars.showitems[idx].gain1 = ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain1;
                    grpvars.showitems[idx].gain2 = ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain2;

                    grpvars.nAuxChCount++;
                    idx++;
                }
            }
            
            cboItem.Items.Add("Main");

            if (grpvars.nAuxChCount > 0)
            {
                for (i = 0; i < grpvars.nAuxChCount; i++)
                {
                    str = string.Format("Aux{0}", grpvars.showitems[i].nAuxCh + 1);
                    cboItem.Items.Add(str);

                    ChkBoxNi[i+1].Text = str;
                    ChkBoxBd[i+1].Text = str;
                    ChkBoxNi[i+1].Visible = true;
                    ChkBoxBd[i+1].Visible = true;
                    ChkBoxNi[i+1].Checked = grpvars.showitems[i+1].showni;
                    ChkBoxBd[i+1].Checked = grpvars.showitems[i+1].showbode;
                }
                cboItem.Enabled = true;

                lblitem.Visible = true;
                cboItem.Visible = true;

                grpboxni2.Visible = true;
                grpboxbd2.Visible = true;

                grp1.Size = size1;
                grp2.Size = size1;
            }
            else
            {
                cboItem.Enabled = false;

                lblitem.Visible = false;
                cboItem.Visible = false;

                grpboxni2.Visible = false;
                grpboxbd2.Visible = false;

                grp1.Size = size2;
                grp2.Size = size2;
            }
            SelItem = Math.Min(SelItem, grpvars.nAuxChCount);
            cboItem.SelectedIndex = SelItem;



            lblVdc.Enabled = (grpvars.nAuxChCount > 0)?true:false;
            InitPara();
            InitDataList();

            this.Text = string.Format("EIS calibration - CH{0}[{1}-{2}].", ch + 1, Serial, sifch + 1);
            

            str = string.Format("{0}\\Cal_{1}_rng{2}.zmf", Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetSerialNumber(), grpvars.tRng);
            sLogDataFile = Path.Combine(gBZA.appcfg.PathLog, str);

            
            mRtData.ApplyUseChannel(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg, tsifch);
            zimtype = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetZIMType();

            cborange.Items.Clear();

            var iRanges = Enum.GetValues(typeof(enCurrentRange)).Cast<enCurrentRange>();
            foreach (var item in iRanges)
            {
                cborange.Items.Add(item.GetDescription());
            }

            cborange.SelectedIndex = grpvars.tRng;

            mtech = new stTech();
            techeis = new stTech_EIS(0);

            mtech = gBZA.SifLnkLst[Serial].MBZAIF.techcalib[sifch];

            mtech.type = 3;
            mtech.irange = (ushort)grpvars.tRng;
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

        private void ShowMainData(int nItem = 0)
        {
            st_zim_rt rtgrp = new st_zim_rt();
            st_zim_zPacket mpacket = new st_zim_zPacket(0);
            stChStatusInf chstat = gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch];

            if (usefile)
            {
                rtgrp = mRtData.rtgrp;
            }
            else
            {
                if ((enTechType)gBZA.SifLnkLst[Serial].MBZAIF.Oldtech[sifch].type != enTechType.TECH_EIS)
                    return;

                rtgrp = gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rtgrp;
            }
            grdlist.Redraw = false;
            grdlist.Rows.Count = 2;
            int count = rtgrp.item[0].plot[3].ly[0].Count;
            if (count <= 0)
            {
                grdlist.Redraw = true;
                return;
            }
            grdlist.Rows.Count = count + 2;

            for (int row = 0; row < count; row++)
            {
                
                grdlist[row + 2, 0] = row + 1;
                grdlist[row + 2, 1] = GetDataString(rtgrp.item[nItem].plot[2].lx[0][row]);

                mpacket.freq = rtgrp.item[nItem].plot[2].lx[0][row];
                mpacket.zData[nItem].real = rtgrp.item[nItem].plot[0].lx[0][row];
                mpacket.zData[nItem].img = rtgrp.item[nItem].plot[0].ly[0][row] * -1.0;
                mpacket.zData[nItem].mag = rtgrp.item[nItem].plot[2].ly[0][row];
                mpacket.zData[nItem].phase = rtgrp.item[nItem].plot[3].ly[0][row];

                grdlist[row + 2, 2] = GetDataString(mpacket.zData[nItem].real);
                grdlist[row + 2, 3] = GetDataString(mpacket.zData[nItem].img);
                grdlist[row + 2, 4] = GetDataString(mpacket.zData[nItem].mag);
                grdlist[row + 2, 5] = GetDataString(mpacket.zData[nItem].phase);

                if (rtgrp.item[nItem].plot[0].lx[0].Count > row)
                {
                    grdlist[row + 2, 6] = GetDataString(rtgrp.item[nItem].plot[0].lx[0][row]);
                    grdlist[row + 2, 7] = GetDataString(rtgrp.item[nItem].plot[0].ly[0][row]);
                    grdlist[row + 2, 8] = GetDataString(rtgrp.item[nItem].plot[2].ly[0][row]);
                    grdlist[row + 2, 9] = GetDataString(rtgrp.item[nItem].plot[3].ly[0][row]);
                }
                else
                {
                    grdlist[row + 2, 6] = GetDataString(mpacket.zData[nItem].real);
                    grdlist[row + 2, 7] = GetDataString(mpacket.zData[nItem].img);
                    grdlist[row + 2, 8] = GetDataString(mpacket.zData[nItem].mag);
                    grdlist[row + 2, 9] = GetDataString(mpacket.zData[nItem].phase);
                }
            }

            grdlist.Redraw = true;
            //RefreshGraphEIS();
        }
        

        private bool ChkEisCalInf(int CRange, int nItem = 0)
        {
            st_zim_Eis_Cal_info pEis_cal_info = new st_zim_Eis_Cal_info(0);
            if (nItem == 0)
            {
                pEis_cal_info = ranges[0].Gen.mEisIRngCalInfo[CRange];
                //if (ranges[0].Gen.iac_rng[CRange / 2].gain1 == 1.0 && ranges[0].Gen.iac_rng[CRange / 2].gain2 == 1.0) return false;
            }
            else
            {
                int nAuxBd = (nItem - 1) / MBZA_Constant.MAX_AUX_CHANNEL;
                int nAuxBdCh = (nItem - 1) % MBZA_Constant.MAX_AUX_CHANNEL;
                pEis_cal_info = ranges[nAuxBd + 1].Aux.mEisIRngCalInfo[nAuxBdCh].items[CRange];
                //if (ranges[nAuxBd + 1].Aux.iac_gain[nAuxBdCh].items[CRange / 2].iac_gain1 == 1.0 && ranges[nAuxBd + 1].Aux.iac_gain[nAuxBdCh].items[CRange / 2].iac_gain2 == 1.0) return false;
            }

            if (double.IsNaN(pEis_cal_info.n1) || double.IsNaN(pEis_cal_info.n2) || double.IsNaN(pEis_cal_info.n3)
                    || double.IsNaN(pEis_cal_info.d1) || double.IsNaN(pEis_cal_info.d2) || double.IsNaN(pEis_cal_info.d3)) return false;

            if (pEis_cal_info.n1 == 0.0 || pEis_cal_info.n2 == 0.0 || pEis_cal_info.n3 == 0.0
                || pEis_cal_info.d1 == 0.0 || pEis_cal_info.d2 == 0.0 || pEis_cal_info.d3 == 0.0) return false;
            
            return true;
        }
        
        private void LoadFile()
        {
            int oldcycel = -1;
 
            bool[] ChkCalib = new bool[MBZA_Constant.MAX_AUXTYPE_CHANNELS];

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                ChkCalib[i] = false;
            }

            ChkCalib[0] = ChkEisCalInf(grpvars.tRng, 0);

            for (int i = 0; i < grpvars.nAuxChCount; i++)
            {
                ChkCalib[i] = ChkEisCalInf(grpvars.tRng, grpvars.showitems[i].nAuxCh+1); 
            }

            mRtGrp.Initialize();
            mRtData.Initialize(mlogfile.tmphead.tech);

            listPacket.Clear();

            grdlist.Redraw = false;
            grdlist.Rows.Count = 2;
            if (File.Exists(sLogDataFile) == true)
            {
                usefile = true;
            }
            else
            {
                usefile = false;
                grdlist.Redraw = true;
                RefreshGraphEIS();
                return;
            }
            

            if (mlogfile.Open(sLogDataFile) == true)
            {
                if (mlogfile.datacount == 0)
                {
                    usefile = false;
                    mlogfile.CloseFile();
                    return;
                }

                stDefTestData[] data = new stDefTestData[mlogfile.datacount];
                DataCount = mlogfile.read(0, ref data, mlogfile.datacount);
                mlogfile.CloseFile();

                if (DataCount != mlogfile.datacount)
                {
                    MessageBox.Show("Failed to read all data.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    usefile = false;
                    return;
                }
                grdlist.Rows.Count = DataCount + 2;
                mRtData.Append(data, DataCount, ref oldcycel);

                ProcApplyListPacket();

                fititems = listPacket.ToArray();

                if (ChkCalib[0] == true)
                {
                    ProcApplyFitting();
                }

                mRtGrp.Initialize();

                for (int i = 0; i < DataCount; i++)
                {
                    for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                    {
                        mRtGrp.item[j].plot[0].lx[0].Add(fititems[i].zData[j].real);
                        mRtGrp.item[j].plot[0].ly[0].Add(fititems[i].zData[j].img * -1.0);
                        mRtGrp.item[j].plot[2].lx[0].Add(fititems[i].freq);
                        mRtGrp.item[j].plot[2].ly[0].Add(fititems[i].zData[j].mag);
                        mRtGrp.item[j].plot[3].lx[0].Add(fititems[i].freq);
                        mRtGrp.item[j].plot[3].ly[0].Add(fititems[i].zData[j].phase);
                    }
                }

                for (int i = 0; i < DataCount; i++)
                {
                    grdlist[i + 2, 0] = i + 1;

                    grdlist[i + 2, 1] = GetDataString(mRtData.rtgrp.item[SelItem].plot[2].lx[0][i]);

                    grdlist[i + 2, 2] = GetDataString(mRtData.rtgrp.item[SelItem].plot[0].lx[0][i]);
                    grdlist[i + 2, 3] = GetDataString(mRtData.rtgrp.item[SelItem].plot[0].ly[0][i]);

                    grdlist[i + 2, 4] = GetDataString(mRtData.rtgrp.item[SelItem].plot[2].ly[0][i]);
                    grdlist[i + 2, 5] = GetDataString(mRtData.rtgrp.item[SelItem].plot[3].ly[0][i]);

                    grdlist[i + 2, 6] = GetDataString(mRtGrp.item[SelItem].plot[0].lx[0][i]);
                    grdlist[i + 2, 7] = GetDataString(mRtGrp.item[SelItem].plot[0].ly[0][i]);

                    grdlist[i + 2, 8] = GetDataString(mRtGrp.item[SelItem].plot[2].ly[0][i]);
                    grdlist[i + 2, 9] = GetDataString(mRtGrp.item[SelItem].plot[3].ly[0][i]);
                }
                RefreshGraphEIS();
                
            }
            else
            {
                usefile = false;
            }
            grdlist.Redraw = true;
        }

        private void ProcApplyListPacket()
        {
            int itemidx;
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

            listPacket.Clear();
            st_zim_zPacket mpacket;
            for (int i = 0; i < DataCount; i++)
            {
                mpacket = new st_zim_zPacket(0);
                mpacket.freq = rtgrp.item[SelItem].plot[2].lx[0][i]; ;
                mpacket.zData[0].real = rtgrp.item[0].plot[0].lx[0][i];
                mpacket.zData[0].img = rtgrp.item[0].plot[0].ly[0][i] * -1.0;
                mpacket.zData[0].mag = rtgrp.item[0].plot[2].ly[0][i]; //Math.Sqrt(mpacket.zData[0].real * mpacket.zData[0].real + mpacket.zData[0].img * mpacket.zData[0].img);
                mpacket.zData[0].phase = rtgrp.item[0].plot[3].ly[0][i];//Math.Atan2(mpacket.zData[0].img, mpacket.zData[0].real) * 180.0 / DeviceConstants.PI;
                for (int j = 0; j < grpvars.nAuxChCount; j++)
                {
                    itemidx = j + 1;
                    mpacket.zData[itemidx].real = rtgrp.item[itemidx].plot[0].lx[0][i];
                    mpacket.zData[itemidx].img = rtgrp.item[itemidx].plot[0].ly[0][i] * -1.0; 
                    mpacket.zData[itemidx].mag = rtgrp.item[itemidx].plot[2].ly[0][i]; //Math.Sqrt(mpacket.zData[itemidx].real * mpacket.zData[itemidx].real + mpacket.zData[itemidx].img * mpacket.zData[itemidx].img);
                    mpacket.zData[itemidx].phase = rtgrp.item[itemidx].plot[3].ly[0][i]; //Math.Atan2(mpacket.zData[itemidx].img, mpacket.zData[itemidx].real) * 180.0 / DeviceConstants.PI;
                }
                listPacket.Add(mpacket);
            }
        }

        private void ProcApplyFitting()
        {
            items = listPacket.ToArray();
            fititems = listPacket.ToArray();

            if (items == null)
            {
                MessageBox.Show("There was a problem with the calibration.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            ZCalibration zCal = new ZCalibration(items, ref fititems, items.Length, grpvars);

            zCal.ApplyGain(ref fititems, fititems.Length);
        }

        private void ApplyInductance(ref st_zim_zPacket[] packet1, ref st_zim_zPacket[] packet2, int Count, double dLs)
        {
            for (int i = 0; i < Count; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                {
                    packet1[i].zData[j].real = packet1[i].zData[j].real;
                    packet1[i].zData[j].img = packet1[i].zData[j].img + (2.0 * DeviceConstants.PI * packet1[i].freq * dLs);
                    packet1[i].zData[j].mag = Math.Sqrt((packet1[i].zData[j].real * packet1[i].zData[j].real) + (packet1[i].zData[j].img * packet1[i].zData[j].img));
                    packet1[i].zData[j].phase = Math.Atan2(packet1[i].zData[j].img, packet1[i].zData[j].real) * (double)180.0 / (double)DeviceConstants.PI;//angle in degree;

                    packet2[i].zData[j].real = packet1[i].zData[j].real;
                    packet2[i].zData[j].img = packet1[i].zData[j].img;
                    packet2[i].zData[j].mag = packet1[i].zData[j].mag;
                    packet2[i].zData[j].phase = packet1[i].zData[j].phase;
                }
            }
        }
       
        private void ProcFitting()
        {
            int nAuxBd;
            int nAuxBdCh;

            ranges[0].Gen.mDummy[grpvars.tRng].R = double.Parse(grdpara[1, 1].ToString());
            ranges[0].Gen.mDummy[grpvars.tRng].Ls = double.Parse(grdpara[2, 1].ToString());
            ranges[0].Gen.mDummy[grpvars.OtherRng].R = double.Parse(grdpara[1, 1].ToString());
            ranges[0].Gen.mDummy[grpvars.OtherRng].Ls = double.Parse(grdpara[2, 1].ToString());

            

            items = listPacket.ToArray();
            fititems = listPacket.ToArray();

            if (items == null)
            {
                MessageBox.Show("There was a problem with the calibration.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            // ApplyInductance(ref items, ref fititems, items.Length, 0.13847e-7);



            ZCalibration zCal = new ZCalibration(items, ref fititems, items.Length, grpvars, 0.0);
            if(fititems == null)
            {
                MessageBox.Show("There was a problem with the calibration.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            zCal.ApplyGain(ref fititems, fititems.Length);


            RefreshChangeTestData(fititems);

            for (int j = 0; j < grpvars.nAuxChCount+1; j++)
            {
                if (j == 0)
                {
                    ranges[0].Gen.iac_rng[grpvars.CRng].gain1 = zCal.vars[j].Gain;
                    ranges[0].Gen.iac_rng[grpvars.CRng].gain2 = zCal.vars[j].Gain;
                    zCal.vars[j].GetInformation(ref ranges[0].Gen.mEisIRngCalInfo[grpvars.tRng]);
                    zCal.vars[j].GetInformation(ref ranges[0].Gen.mEisIRngCalInfo[grpvars.OtherRng]);
                }
                else
                {
                    nAuxBd = grpvars.showitems[j].nAuxCh / MBZA_Constant.MAX_AUX_CHANNEL + 1;
                    nAuxBdCh = grpvars.showitems[j].nAuxCh % MBZA_Constant.MAX_AUX_CHANNEL;
                    ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain1 = zCal.vars[j].Gain;
                    ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain2 = zCal.vars[j].Gain;
                    zCal.vars[j].GetInformation(ref ranges[nAuxBd].Aux.mEisIRngCalInfo[nAuxBdCh].items[grpvars.tRng]);
                    zCal.vars[j].GetInformation(ref ranges[nAuxBd].Aux.mEisIRngCalInfo[nAuxBdCh].items[grpvars.OtherRng]);
                }                grpvars.showitems[j].gain1 = zCal.vars[j].Gain;
                grpvars.showitems[j].gain1 = zCal.vars[j].Gain;
                grpvars.showitems[j].gain2 = zCal.vars[j].Gain;
                zCal.vars[j].GetInformation(ref grpvars.showitems[j].mInfo);
            }
        }

        private void RefreshFitting()
        {
            int nAuxBd;
            int nAuxBdCh;

            ranges[0].Gen.mDummy[grpvars.tRng].R = double.Parse(grdpara[1, 1].ToString());
            ranges[0].Gen.mDummy[grpvars.tRng].Ls = double.Parse(grdpara[2, 1].ToString());
            ranges[0].Gen.mDummy[grpvars.OtherRng].R = double.Parse(grdpara[1, 1].ToString());
            ranges[0].Gen.mDummy[grpvars.OtherRng].Ls = double.Parse(grdpara[2, 1].ToString());

            items = listPacket.ToArray();
            fititems = listPacket.ToArray();

            st_zim_Eis_Cal_info mInf = new st_zim_Eis_Cal_info(0);

            grpvars.showitems[SelItem].mInfo.n1 = double.Parse(grdpara[3, 1].ToString());
            grpvars.showitems[SelItem].mInfo.n2 = double.Parse(grdpara[4, 1].ToString());
            grpvars.showitems[SelItem].mInfo.n3 = double.Parse(grdpara[5, 1].ToString());
            grpvars.showitems[SelItem].mInfo.d1 = double.Parse(grdpara[6, 1].ToString());
            grpvars.showitems[SelItem].mInfo.d2 = double.Parse(grdpara[7, 1].ToString());
            grpvars.showitems[SelItem].mInfo.d3 = double.Parse(grdpara[8, 1].ToString());
            grpvars.showitems[SelItem].gain1 = double.Parse(grdpara[9, 1].ToString());
            grpvars.showitems[SelItem].gain2 = double.Parse(grdpara[9, 1].ToString());

            items = listPacket.ToArray();
            fititems = listPacket.ToArray();

            

            if (items == null)
            {
                MessageBox.Show("There was a problem with the calibration.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            // ApplyInductance(ref items, ref fititems, items.Length, 0.13847e-7);


            ZCalibration zCal = new ZCalibration(items, ref fititems, items.Length, grpvars);

            zCal.ApplyGain(ref fititems, fititems.Length);

            RefreshChangeTestData(fititems);

            if (SelItem == 0)
            {
                ranges[0].Gen.mEisIRngCalInfo[grpvars.tRng] = grpvars.showitems[SelItem].mInfo;
                ranges[0].Gen.mEisIRngCalInfo[grpvars.OtherRng] = grpvars.showitems[SelItem].mInfo;

                ranges[0].Gen.mDummy[grpvars.tRng].R = double.Parse(grdpara[1, 1].ToString());
                ranges[0].Gen.mDummy[grpvars.tRng].Ls = double.Parse(grdpara[2, 1].ToString());
                ranges[0].Gen.mDummy[grpvars.OtherRng].R = double.Parse(grdpara[1, 1].ToString());
                ranges[0].Gen.mDummy[grpvars.OtherRng].Ls = double.Parse(grdpara[2, 1].ToString());
            }
            else
            {
                nAuxBd = grpvars.showitems[SelItem].nAuxCh / MBZA_Constant.MAX_AUX_CHANNEL + 1;
                nAuxBdCh = grpvars.showitems[SelItem].nAuxCh % MBZA_Constant.MAX_AUX_CHANNEL;

                ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain1 = zCal.vars[SelItem].Gain;
                ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain2 = zCal.vars[SelItem].Gain;

                zCal.vars[SelItem].GetInformation(ref ranges[nAuxBd].Aux.mEisIRngCalInfo[nAuxBdCh].items[grpvars.tRng]);
                zCal.vars[SelItem].GetInformation(ref ranges[nAuxBd].Aux.mEisIRngCalInfo[nAuxBdCh].items[grpvars.OtherRng]);
            }

            RefreshGraphEIS();
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
            grprt.PlotAreaColor = Color.FromArgb(grpvars.RT.BackColor);

            grprt.Plots[0].LineColor = Color.FromArgb(grpvars.RT.PlotColor[0]);   
            grprt.Plots[0].PointColor = Color.FromArgb(grpvars.RT.PlotColor[0]);
            grprt.Plots[0].SmoothUpdates = true;
            grprt.Plots[1].LineColor = Color.FromArgb(grpvars.RT.PlotColor[1]);
            grprt.Plots[1].PointColor = Color.FromArgb(grpvars.RT.PlotColor[1]);
            grprt.Plots[1].SmoothUpdates = true;

            grprt.XAxes[0].Caption = "Voltage(V)";
            grprt.XAxes[0].CaptionVisible = true;
            grprt.XAxes[0].CaptionForeColor = Color.FromArgb(grpvars.RT.AxisColor);  
            grprt.XAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.XAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.XAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
            grprt.XAxes[0].MajorDivisions.GridVisible = grpvars.RT.ShowGrid1 | grpvars.RT.ShowGrid2;

            grprt.XAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.XAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
            grprt.XAxes[0].MinorDivisions.GridVisible = false;

            grprt.YAxes[0].Caption = "Current(A)";
            grprt.YAxes[0].CaptionVisible = true;
            grprt.YAxes[0].CaptionForeColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.YAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.YAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.YAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
            grprt.YAxes[0].MajorDivisions.GridVisible = grpvars.RT.ShowGrid1;

            grprt.YAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.YAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
            grprt.YAxes[0].MinorDivisions.GridVisible = false;
            grprt.YAxes[0].AutoSpacing = true;

            grprt.YAxes[1].Caption = "";
            grprt.YAxes[1].CaptionVisible = true;
            grprt.YAxes[1].CaptionForeColor = Color.FromArgb(grpvars.RT.AxisColor);

            grprt.YAxes[1].MajorDivisions.TickColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.YAxes[1].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.YAxes[1].MajorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
            grprt.YAxes[1].MajorDivisions.GridVisible = grpvars.RT.ShowGrid2;

            grprt.YAxes[1].MinorDivisions.TickColor = Color.FromArgb(grpvars.RT.AxisColor);
            grprt.YAxes[1].MinorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
            grprt.YAxes[1].MinorDivisions.GridVisible = false;
            grprt.YAxes[1].AutoSpacing = true;

            lineToolStripMenuItem.Checked = grpvars.RT.LineVisible;
            pointToolStripMenuItem.Checked = grpvars.RT.PointVisible;

            legendToolStripMenuItem.Checked = false;
            RefreshRtLegend();
            
            if (grpvars.RT.LineVisible)
            {
                grprt.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.Solid;
                grprt.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            }
            else
            {
                grprt.Plots[0].LineStyle = NationalInstruments.UI.LineStyle.None;
                grprt.Plots[1].LineStyle = NationalInstruments.UI.LineStyle.None;
            }

            if (grpvars.RT.PointVisible)
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
                Rtlegend.Items[0].Source = grprt.Plots[0];
                Rtlegend.Items[1].Visible = true;
                Rtlegend.Items[1].Text = "Current";
                Rtlegend.Items[1].Source = grprt.Plots[1];
                legSize.Height = 55;
            }
            else
            {
                Rtlegend.Items[0].Visible = true;
                Rtlegend.Items[0].Text = "Current";
                Rtlegend.Items[0].Source = grprt.Plots[0];
                Rtlegend.Items[1].Visible = false;
                Rtlegend.Items[1].Text = "";
                Rtlegend.Items[1].Source = null;
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
                grprt.Location = new Point(172, 76);

            }
            else 
            {
                defaultToolStripMenuItem.Checked = false;
                maximumToolStripMenuItem.Checked = true;
                grprt.Location = new Point(5, 5);
                grprt.Size = new Size(this.ClientRectangle.Width - 16, this.ClientRectangle.Height - 16);
                
            }
            RefreshRtLegend();
        }

        private void InitNiGraph()
        {

            grp1.ResetZoomPan();

   
            grp1.PlotAreaColor = Color.FromArgb(grpvars.ni.BackColor);

            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.ni.AxisColor); 
            grp1.XAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.ni.AxisColor);
            grp1.XAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.ni.AxisColor);
            grp1.XAxes[0].CaptionForeColor = Color.FromArgb(grpvars.ni.AxisColor);

            grp1.XAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.ni.GridColor); 
            grp1.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.XAxes[0].MajorDivisions.GridVisible = grpvars.ni.ShowGrid;


            grp1.XAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.ni.GridColor);
            grp1.XAxes[0].MinorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.XAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[0].Caption = "-Z image(Ω)";
            grp1.YAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.ni.AxisColor);
            grp1.YAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.ni.AxisColor);
            grp1.YAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.ni.AxisColor);
            grp1.YAxes[0].CaptionForeColor = Color.FromArgb(grpvars.ni.AxisColor);
            grp1.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[0].MajorDivisions.GridVisible = grpvars.ni.ShowGrid;
            grp1.YAxes[1].Visible = false;

            int idx = 0;
            int nItem = 0;
            foreach (ScatterPlot mplot in grp1.Plots)
            {
                nItem = idx / 2;
                mplot.LineColor = Color.FromArgb(grpvars.ni.PlotColor[nItem]);
                mplot.PointColor = Color.FromArgb(grpvars.ni.PlotColor[nItem]);

                mplot.XAxis = grp1.XAxes[0];
                mplot.YAxis = grp1.YAxes[0];

                if (idx % 2 == 0)
                {
                    if (grpvars.bode.mPlot[idx].LineVisible) mplot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                    else mplot.LineStyle = NationalInstruments.UI.LineStyle.None;
                    if (grpvars.bode.mPlot[idx].PointVisible) mplot.PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
                    else mplot.PointStyle = NationalInstruments.UI.PointStyle.None;
                }
                else
                {
                    if (grpvars.ni.mPlot[idx / 2 + 1].LineVisible) mplot.LineStyle = NationalInstruments.UI.LineStyle.Dot;
                    else mplot.LineStyle = NationalInstruments.UI.LineStyle.None;
                    if (grpvars.ni.mPlot[idx / 2 + 1].PointVisible) mplot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                    else mplot.PointStyle = NationalInstruments.UI.PointStyle.None;
                }
                mplot.SmoothUpdates = true;

                if(nItem > grpvars.nAuxChCount) mplot.Visible = false;
                else mplot.Visible = true;

                idx++;
                
            }
            

            grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;


            grp1.Cursors[0].LabelBackColor = Color.FromArgb(grpvars.ni.BackColor);
            grp1.Cursors[0].Plot = grp1.Plots[0];
            grp1.Cursors[0].Color = grp1.Cursors[0].Plot.LineColor;
            grp1.Cursors[0].LabelForeColor = grp1.Cursors[0].Plot.LineColor;
            grp1.Cursors[0].Visible = false;
            grp1.Cursors[0].LabelVisible = false;

            RefreshNiLegend();

            gridToolStripMenuItem.Checked = grpvars.ni.ShowGrid;

            NiGrpMenuGraphModeZoom.Checked = false;
            NiGrpMenuGraphModeMove.Checked = false;
            NiGrpMenuGraphModeCursorNone.Checked = true;
            NiGrpMenuGraphModeCursorSrc1.Checked = false;
            NiGrpMenuGraphModeCursorCal1.Checked = false;
        }

        private void Initial_NiLegend()
        {
            string str, str1;
            LegendItem item;
            Nilegend.AutoSize = false;
            Nilegend.Items.Clear();
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (i == 0)
                {
                    str = "Source Zimg(Main)";
                    str1 = "Calibrated Zimg(Main)";
                }
                else
                {
                    str = string.Format("Source Zimg(Aux{0})", i);
                    str1 = string.Format("Calibrated Zimg(Aux{0})", i);
                }
                item = new LegendItem();
                item.Source = grp1.Plots[i * 2];
                item.Visible = grpvars.showitems[i].ni.show[0];
                item.Text = str;
                Nilegend.Items.Add(item);

                item = new LegendItem();
                item.Source = grp1.Plots[i * 2 + 1];
                item.Visible = grpvars.showitems[i].ni.show[1];
                item.Text = str1;
                Nilegend.Items.Add(item);
            }
        }

        private void Initial_BdLegend()
        {
            string str, str1, str2, str3;
            LegendItem item;
            Bdlegend.AutoSize = false;
            Bdlegend.Items.Clear();
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (i == 0)
                {
                    str = "Source Zmag(Main)";
                    str1 = "Source Zph(Main)";
                    str2 = "Calibrated Zmag(Main)";
                    str3 = "Calibrated Zph(Main)";
                }
                else
                {
                    str = string.Format("Source Zmag(Aux{0})", i);
                    str1 = string.Format("Source Zph(Aux{0})", i);
                    str2 = string.Format("Calibrated Zmag(Aux{0})", i);
                    str3 = string.Format("Calibrated Zph(Aux{0})", i);
                }
                item = new LegendItem();
                item.Source = grp2.Plots[i * 4];
                item.Visible = grpvars.showitems[i].bode.show[0];
                item.Text = str;
                Bdlegend.Items.Add(item);

                item = new LegendItem();
                item.Source = grp2.Plots[i * 4 + 1];
                item.Visible = grpvars.showitems[i].bode.show[1];
                item.Text = str1;
                Bdlegend.Items.Add(item);

                item = new LegendItem();
                item.Source = grp2.Plots[i * 4 + 2];
                item.Visible = grpvars.showitems[i].bode.show[2];
                item.Text = str2;
                Bdlegend.Items.Add(item);

                item = new LegendItem();
                item.Source = grp2.Plots[i * 4 + 3];
                item.Visible = grpvars.showitems[i].bode.show[3];
                item.Text = str3;
                Bdlegend.Items.Add(item);
            }
        }

        private void RefreshNiLegend()
        {
            int idx = SelNiItem - 1;
            
            chkSrcNi.Checked = grpvars.ni.show[0];
            chkCalNi.Checked = grpvars.ni.show[1];

            

            Nilegend.Visible = grpvars.ni.ShowLegend;
            NiGrpMenuGraphViewLegend.Checked = grpvars.ni.ShowLegend;
        }

        private void RefreshBdLegend()
        {
            int idx = SelBdItem - 1;
            

            chkSrcBd1.Checked = grpvars.bode.show[0];
            chkSrcBd2.Checked = grpvars.bode.show[1];
            chkCalBd1.Checked = grpvars.bode.show[2];
            chkCalBd2.Checked = grpvars.bode.show[3];
            
            Bdlegend.Visible = grpvars.bode.ShowLegend;
            BdGrpMenuGraphViewLegend.Checked = grpvars.bode.ShowLegend;

        }

        private void InitBdGraph()
        {
            

            grp2.PlotAreaColor = Color.FromArgb(grpvars.bode.BackColor);

            grp2.XAxes[0].Caption = "Frequency(Hz)";
            grp2.XAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.bode.AxisColor); 
            grp2.XAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.XAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.XAxes[0].CaptionForeColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.XAxes[0].ScaleType = ScaleType.Logarithmic;
            grp2.XAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
            grp2.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.XAxes[0].MinorDivisions.GridVisible = grpvars.bode.ShowGrid1 | grpvars.bode.ShowGrid2;
            grp2.XAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
            grp2.XAxes[0].MinorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
           // grp2.XAxes[0].MinorDivisions.GridVisible = false;

            grp2.YAxes[0].Caption = "Z magnitude(Ω)";
            grp2.YAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.YAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.YAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.YAxes[0].CaptionForeColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.YAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor); 
            grp2.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[0].MinorDivisions.GridVisible = grpvars.bode.ShowGrid1;
            grp2.YAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
            grp2.YAxes[0].MinorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            //grp2.YAxes[0].MinorDivisions.GridVisible = false;
            


            grp2.YAxes[1].Caption = "Z phase(°C)";
            grp2.YAxes[1].MajorDivisions.TickColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.YAxes[1].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.YAxes[1].MinorDivisions.TickColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.YAxes[1].CaptionForeColor = Color.FromArgb(grpvars.bode.AxisColor);
            grp2.YAxes[1].MajorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
            grp2.YAxes[1].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[1].MinorDivisions.GridVisible = grpvars.bode.ShowGrid1;
            grp2.YAxes[1].MinorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
            grp2.YAxes[1].MinorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp2.YAxes[1].MinorDivisions.GridVisible = false;
           

            int idx = 0;
            int nItem = 0;
            int plotidx = 0;
            int coloridx = 0;
            foreach (ScatterPlot mplot in grp2.Plots)
            {
                nItem = idx / 4;
                coloridx = idx / 2;
                plotidx = idx % 4;

                mplot.XAxis = grp2.XAxes[0];
                if (plotidx == 0)
                {
                    coloridx = nItem * 2;
                    mplot.LineColor = Color.FromArgb(grpvars.bode.PlotColor[coloridx]);
                    mplot.PointColor = Color.FromArgb(grpvars.bode.PlotColor[coloridx]);
                    mplot.YAxis = grp2.YAxes[0];
                    if (grpvars.bode.mPlot[idx].LineVisible) mplot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                    else mplot.LineStyle = NationalInstruments.UI.LineStyle.None;
                    if (grpvars.bode.mPlot[idx].PointVisible) mplot.PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
                    else mplot.PointStyle = NationalInstruments.UI.PointStyle.None;
                }
                else if (plotidx == 1)
                {
                    coloridx = nItem * 2 + 1;
                    mplot.LineColor = Color.FromArgb(grpvars.bode.PlotColor[coloridx]);
                    mplot.PointColor = Color.FromArgb(grpvars.bode.PlotColor[coloridx]);
                    mplot.YAxis = grp2.YAxes[1];
                    if (grpvars.bode.mPlot[idx].LineVisible) mplot.LineStyle = NationalInstruments.UI.LineStyle.Solid;
                    else mplot.LineStyle = NationalInstruments.UI.LineStyle.None;
                    if (grpvars.bode.mPlot[idx].PointVisible) mplot.PointStyle = NationalInstruments.UI.PointStyle.SolidCircle;
                    else mplot.PointStyle = NationalInstruments.UI.PointStyle.None;
                }
                else if (plotidx == 2)
                {
                    coloridx = nItem * 2;
                    mplot.LineColor = Color.FromArgb(grpvars.bode.PlotColor[coloridx]);
                    mplot.PointColor = Color.FromArgb(grpvars.bode.PlotColor[coloridx]);
                    mplot.YAxis = grp2.YAxes[0];
                    if (grpvars.bode.mPlot[idx].LineVisible) mplot.LineStyle = NationalInstruments.UI.LineStyle.Dot;
                    else mplot.LineStyle = NationalInstruments.UI.LineStyle.None;
                    if (grpvars.bode.mPlot[idx].PointVisible) mplot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                    else mplot.PointStyle = NationalInstruments.UI.PointStyle.None;
                }
                else
                {
                    coloridx = nItem * 2 + 1;
                    mplot.LineColor = Color.FromArgb(grpvars.bode.PlotColor[coloridx]);
                    mplot.PointColor = Color.FromArgb(grpvars.bode.PlotColor[coloridx]);
                    mplot.YAxis = grp2.YAxes[1];
                    if (grpvars.bode.mPlot[idx].LineVisible) mplot.LineStyle = NationalInstruments.UI.LineStyle.Dot;
                    else mplot.LineStyle = NationalInstruments.UI.LineStyle.None;
                    if (grpvars.bode.mPlot[idx].PointVisible) mplot.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
                    else mplot.PointStyle = NationalInstruments.UI.PointStyle.None;
                }

                if (nItem > grpvars.nAuxChCount) mplot.Visible = false;
                else mplot.Visible = true;
               

                idx++;
            }


            grp2.InteractionModeDefault = GraphDefaultInteractionMode.None;

            grp2.Cursors[0].LabelBackColor = Color.FromArgb(grpvars.bode.BackColor);
            grp2.Cursors[0].Plot = grp2.Plots[0];
            grp2.Cursors[0].Color = grp2.Cursors[0].Plot.LineColor;
            grp2.Cursors[0].LabelForeColor = grp2.Cursors[0].Plot.LineColor;
            grp2.Cursors[0].Visible = false;
            grp2.Cursors[0].LabelVisible = false;

            RefreshBdLegend();

            BdGrpMenuGraphModeZoom.Checked = false;
            BdGrpMenuGraphModeMove.Checked = false;

            BdGrpMenuGraphModeCursorNone.Checked = true;
            BdGrpMenuGraphModeCursorSrc1.Checked = false;
            BdGrpMenuGraphModeCursorSrc2.Checked = false;
            BdGrpMenuGraphModeCursorCal1.Checked = false;
            BdGrpMenuGraphModeCursorCal2.Checked = false;

            
            BdGrpMenuGraphViewGridY1.Checked = grpvars.bode.ShowGrid1;
            BdGrpMenuGraphViewGridY2.Checked = grpvars.bode.ShowGrid2;

        }
        private void frmCalibration_Load(object sender, EventArgs e)
        {
            begindlg = false;
        }
        
        Color GetTestStatusColor(stChStatusInf chstat)
        {
            enTestState stat = (enTestState)chstat.TestStatus;
            enStatError errstat = (enStatError)chstat.ErrorStatus;
            enEisState estat = (enEisState)chstat.eis_status.status;
            if (stat == enTestState.nc_Ready || stat == enTestState.Ready || stat == enTestState.nc_Stopped || stat == enTestState.Stopped || stat == enTestState.nc_Finished || stat == enTestState.Finished)
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

            if(ChgSelItem != SelItem)
            {
                SelItem = ChgSelItem;
                RefreshPara();
                if (brun == false) RefreshRt();
                InitDataList();
            }


            if (bcalibmode)
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
                    cborange.Enabled = bSelectRng;

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
                    cborange.Enabled = bSelectRng;//

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
                    mRtGrp.Initialize();
                
                    listPacket.Clear();
                   
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


            eZimType zimtype = (eZimType)chstat.ZimType;
            double crngval = ranges[0].Gen.iac_rng[chstat.Iac_in_rngno].realmax;
            if ((chstat.Iac_rngno % 2) > 0)
            {
                crngval *= ranges[0].Gen.iac_rng[chstat.Iac_in_rngno].controlgain;
            }

            lblRange.Text = string.Format("  Range: {0}/ {1}", SM_Number.ToRangeString(crngval, "A"), SM_Number.ToRangeString(ranges[0].Gen.vdc_rng[chstat.Vdc_rngno].realmax, "V"));

            if (chstat.Vdc >= 1000.0)
            {
                lblVdc.Text = string.Format("VDC: {0,8:###0.0##}KV", chstat.Vdc * 0.001);
            }
            else
            {
                lblVdc.Text = string.Format("VDC: {0,8:###0.0##} V", chstat.Vdc);
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
                if (chstat.DispPhase[0] >= 10.0)
                {
                    lblZphase.Text = string.Format(" Zphase: {0,8:###0.0##} °", chstat.DispPhase[0]);
                }
                else
                {
                    lblZphase.Text = string.Format(" Zphase: {0,8:###0.0##} °", chstat.DispPhase[0]);
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
                grprt.Plots[0].PlotXY(gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.dv[SelItem].vac, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.di, 0, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.count); //DeviceConstants.MAX_EIS_RT_RAW_POINT
            }
            else
            {
                grprt.Plots[0].PlotXY(gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.idx, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.dv[SelItem].vac, 0, gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rawdata.count); // V
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
            int idx;
            int plotidx;
            int nitem;
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


            idx = 0;

            foreach (ScatterPlot mplot in grp1.Plots)
            {
                nitem = idx / 2;

                if (nitem > grpvars.nAuxChCount)
                {
                    continue;
                }
                plotidx = idx % 2;
                if (plotidx == 0) mplot.PlotXY(rtgrp.item[nitem].plot[0].lx[0].ToArray(), rtgrp.item[nitem].plot[0].ly[0].ToArray());
                else mplot.PlotXY(mRtGrp.item[nitem].plot[0].lx[0].ToArray(), mRtGrp.item[nitem].plot[0].ly[0].ToArray());

                mplot.Visible = true;

                idx++;
            }

            idx = 0;

            foreach (ScatterPlot mplot in grp2.Plots)
            {


                nitem = idx / 4;
                if (nitem > grpvars.nAuxChCount)
                {
                    continue;
                }
                plotidx = idx % 4;

                if (plotidx == 0) mplot.PlotXY(rtgrp.item[nitem].plot[2].lx[0].ToArray(), rtgrp.item[nitem].plot[2].ly[0].ToArray());
                else if (plotidx == 1) mplot.PlotXY(rtgrp.item[nitem].plot[3].lx[0].ToArray(), rtgrp.item[nitem].plot[3].ly[0].ToArray());
                else if (plotidx == 2) mplot.PlotXY(mRtGrp.item[nitem].plot[2].lx[0].ToArray(), mRtGrp.item[nitem].plot[2].ly[0].ToArray());
                else mplot.PlotXY(mRtGrp.item[nitem].plot[3].lx[0].ToArray(), mRtGrp.item[nitem].plot[3].ly[0].ToArray());

                idx++;
            }
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
            grdpara.Cols[1].Width = 100;
            grdpara.Cols[1].DataType = typeof(double);
            grdpara.Cols[1].TextAlignFixed = TextAlignEnum.CenterCenter;
            grdpara.Cols[1].AllowEditing = true;
            grdpara.Cols[1].AllowSorting = false;
            grdpara.Cols[1].AllowFiltering = AllowFiltering.None;
            grdpara.Cols[1].AllowResizing = false;
            grdpara.Cols[1].AllowDragging = false;

            double gain;

            if ((grpvars.tRng % 2) == 0) gain = grpvars.showitems[SelItem].gain1;
            else gain = grpvars.showitems[SelItem].gain2;

            int row = 0;

            row++; grdpara[row, 0] = "Dummy R"; grdpara[row, 1] = GetDataString(grpvars.showitems[SelItem].mDummy.R);
            row++; grdpara[row, 0] = "Dummy Ls"; grdpara[row, 1] = GetDataString(grpvars.showitems[SelItem].mDummy.Ls);

            row++; grdpara[row, 0] = "N1"; grdpara[row, 1] = GetDataString(grpvars.showitems[SelItem].mInfo.n1);
            row++; grdpara[row, 0] = "N2"; grdpara[row, 1] = GetDataString(grpvars.showitems[SelItem].mInfo.n2);
            row++; grdpara[row, 0] = "N3"; grdpara[row, 1] = GetDataString(grpvars.showitems[SelItem].mInfo.n3);
            row++; grdpara[row, 0] = "D1"; grdpara[row, 1] = GetDataString(grpvars.showitems[SelItem].mInfo.d1);
            row++; grdpara[row, 0] = "D2"; grdpara[row, 1] = GetDataString(grpvars.showitems[SelItem].mInfo.d2);
            row++; grdpara[row, 0] = "D3"; grdpara[row, 1] = GetDataString(grpvars.showitems[SelItem].mInfo.d3);
            row++; grdpara[row, 0] = "Gain"; grdpara[row, 1] = GetDataString(gain);
            
            grdpara.Redraw = true;
        }

        private void RefreshPara()
        {
            int nAuxBd;
            int nAuxBdCh;
            st_zim_Eis_Cal_info mInfo;
            double gain;


            if (SelItem == 0)
            {
                mInfo = ranges[0].Gen.mEisIRngCalInfo[grpvars.tRng];
                if ((grpvars.tRng % 2) == 0) gain = ranges[0].Gen.iac_rng[grpvars.CRng].gain1;
                else gain = ranges[0].Gen.iac_rng[grpvars.CRng].gain2;
                
            }
            else
            {
                nAuxBd = (SelItem - 1) / MBZA_Constant.MAX_AUX_CHANNEL + 1;
                nAuxBdCh = (SelItem - 1) % MBZA_Constant.MAX_AUX_CHANNEL;
                mInfo = ranges[nAuxBd].Aux.mEisIRngCalInfo[nAuxBdCh].items[grpvars.tRng];
                if ((grpvars.tRng % 2) == 0) gain = ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain1;
                else gain = ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain2;
            }

            for(int i=0; i<MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if(i==0)
                {
                    grpvars.showitems[i].gain1 = ranges[0].Gen.iac_rng[grpvars.CRng].gain1;
                    grpvars.showitems[i].gain2 = ranges[0].Gen.iac_rng[grpvars.CRng].gain2;
                    grpvars.showitems[i].mInfo = ranges[0].Gen.mEisIRngCalInfo[grpvars.tRng];
                }
                else
                {
                    nAuxBd = (i - 1) / MBZA_Constant.MAX_AUX_CHANNEL + 1;
                    nAuxBdCh = (i - 1) % MBZA_Constant.MAX_AUX_CHANNEL;

                    grpvars.showitems[i].gain1 = ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain1;
                    grpvars.showitems[i].gain2 = ranges[nAuxBd].Aux.iac_gain[nAuxBdCh].items[grpvars.CRng].iac_gain2;
                    grpvars.showitems[i].mInfo = ranges[nAuxBd].Aux.mEisIRngCalInfo[nAuxBdCh].items[grpvars.tRng];
                }
                grpvars.showitems[i].mDummy.R = ranges[0].Gen.mDummy[grpvars.tRng].R;
                grpvars.showitems[i].mDummy.Ls = ranges[0].Gen.mDummy[grpvars.tRng].Ls;
            }


            int row = 0;

            row++; grdpara[row, 0] = "Dummy R"; grdpara[row, 1] = GetDataString(ranges[0].Gen.mDummy[grpvars.tRng].R);
            row++; grdpara[row, 0] = "Dummy Ls"; grdpara[row, 1] = GetDataString(ranges[0].Gen.mDummy[grpvars.tRng].Ls);

            row++; grdpara[row, 0] = "N1"; grdpara[row, 1] = GetDataString(mInfo.n1);
            row++; grdpara[row, 0] = "N2"; grdpara[row, 1] = GetDataString(mInfo.n2);
            row++; grdpara[row, 0] = "N3"; grdpara[row, 1] = GetDataString(mInfo.n3);
            row++; grdpara[row, 0] = "D1"; grdpara[row, 1] = GetDataString(mInfo.d1);
            row++; grdpara[row, 0] = "D2"; grdpara[row, 1] = GetDataString(mInfo.d2);
            row++; grdpara[row, 0] = "D3"; grdpara[row, 1] = GetDataString(mInfo.d3);
            row++; grdpara[row, 0] = "Gain"; grdpara[row, 1] = GetDataString(gain);
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
            string[] sTitle1 = new string[10] { "index", "Frequency(Hz)", "Source data", "Source data", "Source data", "Source data", "Calibration data", "Calibration data", "Calibration data", "Calibration data", };
            string[] sTitle2 = new string[10] { "index", "Frequency(Hz)", "Zreal", "Zimg", "Zmag", "Zphase", "Zreal", "Zimg", "Zmag", "Zphase", };
            int[] iwidth = new int[10] { 50, 95, 80, 80, 80, 80, 80, 80, 80, 80, };


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

            for (int i = 0; i < sTitle1.Length; i++)
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
            stChStatusInf chstat = gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch];
            stChStatusInf[] bdstat = gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf;
            bool bRefresh = false;
            if (usefile == true)
            {
                rtgrp = mRtData.rtgrp;
                if (rtgrp.item[0].plot[3].ly[0].Count != DataCount)
                {
                    DataCount = rtgrp.item[0].plot[3].ly[0].Count;
                    bRefresh = true;
                }
            }
            else
            {
                if ((enTechType)gBZA.SifLnkLst[Serial].MBZAIF.Oldtech[sifch].type == enTechType.TECH_EIS &&
                      gBZA.SifLnkLst[Serial].MBZAIF.OldCondfilename[sifch] == gBZA.SifLnkLst[Serial].MBZAIF.calcondfilename[sifch] &&
                      grpvars.tRng == gBZA.SifLnkLst[Serial].MBZAIF.Oldtech[sifch].irange)
                {
                    rtgrp = gBZA.SifLnkLst[Serial].MBZAIF.mChRtGrp[sifch].rtgrp;
                }
                else
                {
                    //MessageBox.Show("No data available.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                if (rtgrp.item[0].plot[3].ly[0].Count != DataCount)
                {
                    DataCount = rtgrp.item[0].plot[3].ly[0].Count;
                    bRefresh = true;
                }
            }

            int grdrowcount = grdlist.Rows.Count - 2;

            if (bRefresh || DataCount != grdrowcount)
            { 
                grdlist.Redraw = false;
                grdlist.Rows.Count = DataCount + 2;

                for (int row = grdrowcount; row < DataCount; row++)
                {
                    grdlist[row + 2, 0] = row + 1;

                    grdlist[row + 2, 1] = GetDataString(rtgrp.item[SelItem].plot[2].lx[0][row]);

                    grdlist[row + 2, 2] = GetDataString(rtgrp.item[SelItem].plot[0].lx[0][row]);
                    grdlist[row + 2, 3] = GetDataString(rtgrp.item[SelItem].plot[0].ly[0][row]);

                    grdlist[row + 2, 4] = GetDataString(rtgrp.item[SelItem].plot[2].ly[0][row]);
                    grdlist[row + 2, 5] = GetDataString(rtgrp.item[SelItem].plot[3].ly[0][row]);

                    grdlist[row + 2, 6] = GetDataString(rtgrp.item[SelItem].plot[0].lx[0][row]);
                    grdlist[row + 2, 7] = GetDataString(rtgrp.item[SelItem].plot[0].ly[0][row]);

                    grdlist[row + 2, 8] = GetDataString(rtgrp.item[SelItem].plot[2].ly[0][row]);
                    grdlist[row + 2, 9] = GetDataString(rtgrp.item[SelItem].plot[3].ly[0][row]);
                }

                grdlist.Redraw = true;
                RefreshGraphEIS();
            }
        }
        
        private void RefreshChangeTestData(st_zim_zPacket[] fititems, List<st_zim_zPacket>[] fitAuxList = null)
        {
            if (grdlist.Rows.Count < 3)
                return;

            grdlist.Redraw = false;

            mRtGrp.Initialize();

            int maxRow = Math.Min(fititems.Length, grdlist.Rows.Count - 2);

            for (int i = 0; i < maxRow; i++)
            {
                for (int j = 0; j < grpvars.nAuxChCount + 1; j++)
                {
                    mRtGrp.item[j].plot[0].lx[0].Add(fititems[i].zData[j].real);
                    mRtGrp.item[j].plot[0].ly[0].Add(fititems[i].zData[j].img * -1.0);
                    mRtGrp.item[j].plot[2].lx[0].Add(fititems[i].freq);
                    mRtGrp.item[j].plot[2].ly[0].Add(fititems[i].zData[j].mag);
                    mRtGrp.item[j].plot[3].lx[0].Add(fititems[i].freq);
                    mRtGrp.item[j].plot[3].ly[0].Add(fititems[i].zData[j].phase);
                }
                grdlist[i + 2, 6] = GetDataString(fititems[i].zData[SelItem].real);
                grdlist[i + 2, 7] = GetDataString(fititems[i].zData[SelItem].img);
                grdlist[i + 2, 8] = GetDataString(fititems[i].zData[SelItem].mag);
                grdlist[i + 2, 9] = GetDataString(fititems[i].zData[SelItem].phase); 
            }
            
            grdlist.Redraw = true;
        }

        
        private void lnkCalculate_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            ProcApplyListPacket();

            ProcFitting();

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
                mtech.irange = (ushort)grpvars.tRng;
  
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
            bool res = false;
            //gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges[0].ToWritePtr(ranges.ToByteArray());
            gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges.ToWritePtr(ranges[0].ToByteArray()); // 배열
            for (int i = 0; i < MBZA_Constant.MAX_AUX_BOARD; i++)
                gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[i + 1].ranges.ToWritePtr(ranges[i + 1].ToByteArray());

            if (grpvars.nAuxChCount > 0)
                res = MBZA_MapUtil.Save_MCBZA_Range_info(Serial, sifch);
            else
                res = MBZA_MapUtil.Save_Range_info(Serial, sifch);

            if (res == false)
            {
                MessageBox.Show("Failed to apply range information by sending it to the device.");
                this.Cursor = Cursors.Default;
                return;
            }

            gBZA.UpdateLastCalDate(Serial);



            string sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetSerialNumber());
            string sTitle;
            int nAuxBd;
            int nAuxBdCh;
            double drepfeq = 0.0;
            double drepmag = 0.0;
            double drepphase = 0.0;
            double crngval = ranges[0].Gen.iac_rng[grpvars.CRng].realmax;

            sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetSerialNumber());
            sTitle = string.Format("EIS{0}", grpvars.CRng + 1);
            crngval = ranges[0].Gen.iac_rng[grpvars.CRng].realmax;
            if ((grpvars.tRng % 2) > 0)
            {
                crngval *= ranges[0].Gen.iac_rng[grpvars.CRng].controlgain;
            }
            gBZA.WriteIniDoubleData(sTitle, "IRange", sFilename, crngval);
            //sitem = string.Format("DummyR{0}", i);
            //gBZA.WriteIniDoubleData(sTitle, sitem, sFilename, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges[0].mDummy[rng].R);

            for (int i = 1; i < grpvars.nAuxChCount + 1; i++)
            {
                nAuxBd = grpvars.showitems[i].nAuxCh / MBZA_Constant.MAX_AUX_CHANNEL + 1;
                nAuxBdCh = grpvars.showitems[i].nAuxCh % MBZA_Constant.MAX_AUX_CHANNEL;
                sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBd].GetSerialNumber());
                sTitle = string.Format("AUXBD{0}CH{1}_EIS{2}", nAuxBd, nAuxBdCh + 1, grpvars.CRng + 1);
                gBZA.WriteIniIntData(sTitle, "AuxCh", sFilename, grpvars.showitems[i].nAuxCh + 1);

            }


            if (fititems != null)
            {
                for (int j = 0; j < fititems.Length; j++)
                {
                    if (fititems[j].freq > 1.4 && fititems[j].freq < 1.6)
                    {
                        drepfeq = fititems[j].freq;
                        drepmag = fititems[j].zData[0].mag;
                        drepphase = fititems[j].zData[0].phase;

                        sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetSerialNumber());
                        sTitle = string.Format("EIS{0}", grpvars.CRng + 1);

                        gBZA.WriteIniDoubleData(sTitle, "Range", sFilename, crngval);
                        gBZA.WriteIniDoubleData(sTitle, "DummyR", sFilename, grpvars.showitems[0].mDummy.R);
                        gBZA.WriteIniDoubleData(sTitle, "Frequency", sFilename, drepfeq);
                        gBZA.WriteIniDoubleData(sTitle, "Zmag", sFilename, drepmag);
                        gBZA.WriteIniDoubleData(sTitle, "Zphase", sFilename, drepphase);

                        for (int i = 1; i < grpvars.nAuxChCount + 1; i++)
                        {
                            nAuxBd = grpvars.showitems[i].nAuxCh / MBZA_Constant.MAX_AUX_CHANNEL + 1;
                            nAuxBdCh = grpvars.showitems[i].nAuxCh % MBZA_Constant.MAX_AUX_CHANNEL;
                            sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBd].GetSerialNumber());
                            sTitle = string.Format("AUXBD{0}CH{1}_EIS{2}", nAuxBd, nAuxBdCh + 1, grpvars.CRng + 1);

                            drepfeq = fititems[j].freq;
                            drepmag = fititems[j].zData[i].mag;
                            drepphase = fititems[j].zData[i].phase;

                            gBZA.WriteIniDoubleData(sTitle, "Range", sFilename, crngval);
                            gBZA.WriteIniDoubleData(sTitle, "DummyR", sFilename, grpvars.showitems[0].mDummy.R);
                            gBZA.WriteIniDoubleData(sTitle, "Frequency", sFilename, drepfeq);
                            gBZA.WriteIniDoubleData(sTitle, "Zmag", sFilename, drepmag);
                            gBZA.WriteIniDoubleData(sTitle, "Zphase", sFilename, drepphase);
                        }
                    }
                }
            }

            MessageBox.Show("Succeed to apply range information by sending it to the device.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);

            this.Cursor = Cursors.Default;
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
            int ChgColor = gBZA.GetChgColor(grpvars.RT.BackColor);

            if (ChgColor != grpvars.RT.BackColor)
            {
                grpvars.RT.BackColor = ChgColor;
                SaveCalGrpVarsToXml();
                grprt.PlotAreaColor = Color.FromArgb(grpvars.RT.BackColor);
                backColorToolStripMenuItem.ForeColor = Color.FromArgb(grpvars.RT.BackColor);
            }
        }

        private void lineToolStripMenuItem_Click(object sender, EventArgs e)
        {
            grpvars.RT.LineVisible = lineToolStripMenuItem.Checked;
            SaveCalGrpVarsToXml();
            if (grpvars.RT.LineVisible)
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
            grpvars.RT.PointVisible = pointToolStripMenuItem.Checked;
            SaveCalGrpVarsToXml();
            if (grpvars.RT.PointVisible)
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
            int ChgColor = gBZA.GetChgColor(grpvars.RT.AxisColor);

            if(ChgColor != grpvars.RT.AxisColor)
            {
                grpvars.RT.AxisColor = ChgColor;
                SaveCalGrpVarsToXml();

                grprt.XAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.RT.AxisColor);
                grprt.XAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.RT.AxisColor);
                grprt.XAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.RT.AxisColor);
            }
        }

        private void NiGrpMenuGraphColorBackcolor_Click(object sender, EventArgs e)
        {
            int ChgColor = gBZA.GetChgColor(grpvars.ni.BackColor);

            if (ChgColor != grpvars.ni.BackColor)
            {
                grpvars.RT.BackColor = ChgColor;
                SaveCalGrpVarsToXml();
                grp1.PlotAreaColor = Color.FromArgb(grpvars.ni.BackColor);
            }
        }
        
        private void NiGrpMenuGraphColorGridcolor_Click(object sender, EventArgs e)
        {
            int ChgColor = gBZA.GetChgColor(grpvars.ni.GridColor);

            if (ChgColor != grpvars.ni.GridColor)
            {
                grpvars.ni.GridColor = ChgColor;
                SaveCalGrpVarsToXml();
                

                grp1.XAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.ni.GridColor);
                grp1.XAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.ni.GridColor);
                grp1.YAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.ni.GridColor);
                grp1.YAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.ni.GridColor);
            }
        }

        private void backColorToolStripMenuItem1_Click(object sender, EventArgs e)
        {

        }

        private void sourceZmagToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void sourceZphaseToolStripMenuItem_Click(object sender, EventArgs e)
        {

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

            grpvars.bode.ShowLegend = BdGrpMenuGraphViewLegend.Checked;
            SaveCalGrpVarsToXml();
            Bdlegend.Visible = grpvars.bode.ShowLegend;
        }

        private void NiGrpMenuGraphViewLegend_Click(object sender, EventArgs e)
        {
            if (NiGrpMenuGraphViewLegend.Checked == true) NiGrpMenuGraphViewLegend.Checked = false;
            else NiGrpMenuGraphViewLegend.Checked = true;

            grpvars.ni.ShowLegend = NiGrpMenuGraphViewLegend.Checked;
            SaveCalGrpVarsToXml();
            Nilegend.Visible = grpvars.ni.ShowLegend;
        }

        private void legendToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (legendToolStripMenuItem.Checked == true) legendToolStripMenuItem.Checked = false;
            else legendToolStripMenuItem.Checked = true;

            RefreshRtLegend();
        }
        
        private void gridToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(gridToolStripMenuItem.Checked) gridToolStripMenuItem.Checked = false;
            else gridToolStripMenuItem.Checked = true;
            grpvars.ni.ShowGrid = gridToolStripMenuItem.Checked;
            SaveCalGrpVarsToXml();

            grp1.XAxes[0].MajorDivisions.GridVisible = grpvars.ni.ShowGrid;
            grp1.YAxes[0].MajorDivisions.GridVisible = grpvars.ni.ShowGrid;
        }
        
        private void BdGrpMenuGraphViewGridY1_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphViewGridY1.Checked == true) BdGrpMenuGraphViewGridY1.Checked = false;
            else BdGrpMenuGraphViewGridY1.Checked = true;

            grpvars.bode.ShowGrid1 = BdGrpMenuGraphViewGridY1.Checked;
            SaveCalGrpVarsToXml();
            grp2.YAxes[0].MajorDivisions.GridVisible = grpvars.bode.ShowGrid1;
            grp2.XAxes[0].MajorDivisions.GridVisible = grpvars.bode.ShowGrid1 | grpvars.bode.ShowGrid2;
        }

        private void BdGrpMenuGraphViewGridY2_Click(object sender, EventArgs e)
        {
            if (BdGrpMenuGraphViewGridY2.Checked == true) BdGrpMenuGraphViewGridY2.Checked = false;
            else BdGrpMenuGraphViewGridY2.Checked = true;

            grpvars.bode.ShowGrid2 = BdGrpMenuGraphViewGridY2.Checked;
            SaveCalGrpVarsToXml();
            grp2.YAxes[1].MajorDivisions.GridVisible = grpvars.bode.ShowGrid2;
            grp2.XAxes[0].MajorDivisions.GridVisible = grpvars.bode.ShowGrid1 | grpvars.bode.ShowGrid2;
        }

        private void gridToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (gridToolStripMenuItem1.Checked) gridToolStripMenuItem1.Checked = false;
            else gridToolStripMenuItem1.Checked = true;
            grpvars.RT.ShowGrid1 = gridToolStripMenuItem1.Checked;
            grpvars.RT.ShowGrid2 = gridToolStripMenuItem1.Checked;
            SaveCalGrpVarsToXml();
            grprt.XAxes[0].MajorDivisions.GridVisible = grpvars.RT.ShowGrid1 | grpvars.RT.ShowGrid2;
            grprt.YAxes[0].MinorDivisions.GridVisible = grpvars.RT.ShowGrid1;
            grprt.YAxes[1].MinorDivisions.GridVisible = grpvars.RT.ShowGrid2;

        }

        private void gridToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            int ChgColor = gBZA.GetChgColor(grpvars.ni.GridColor);

            if (ChgColor != grpvars.ni.GridColor)
            {
                grpvars.RT.GridColor = ChgColor;
                SaveCalGrpVarsToXml();

                grprt.XAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
                grprt.XAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
                grprt.YAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
                grprt.YAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
                grprt.YAxes[1].MajorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
                grprt.YAxes[1].MinorDivisions.GridColor = Color.FromArgb(grpvars.RT.GridColor);
            }
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

        private void grprt_PlotDataChanged(object sender, XYPlotDataChangedEventArgs e)
        {

        }

        private void BtRfreshFit_Click(object sender, EventArgs e)
        {
            ProcApplyListPacket();
            RefreshFitting();
            MessageBox.Show("The set modifications have been applied.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        public bool SaveApplyDataFile()
        {
            FileResult tResfile = new FileResult();
            FileResult tSaveResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();

            saveDlg.CustomPlaces.Clear();

            for (int i = 0; i < 10; i++)
            {
                if (Directory.Exists(gBZA.appcfg.PathSch[i]))
                {
                    // 왼쪽 링크 바에 커스텀 폴더 추가
                    saveDlg.CustomPlaces.Add(gBZA.appcfg.PathSch[i]);
                }
            }


            string str = string.Format("{0}\\Cal_{1}_rng{2}_result.zmf", Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetSerialNumber(), grpvars.tRng);
            string sAppDatafile = Path.Combine(gBZA.appcfg.PathLog, str);


            Cursor = Cursors.WaitCursor;
            try
            {
                if (tResfile.Open(sLogDataFile) == false)
                {

                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }

                saveDlg.Title = "Save as applied data file.";
                saveDlg.DefaultExt = "*.zmf";
                saveDlg.Filter = "Data files of ZM (*.zmf) |*.zmf";
                saveDlg.OverwritePrompt = true;
                saveDlg.InitialDirectory = Path.GetDirectoryName(sAppDatafile);
                saveDlg.FileName = Path.GetFileName(sAppDatafile);

                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    return false;
                }

                sAppDatafile = saveDlg.FileName;

                if (File.Exists(sAppDatafile) == true)
                {
                    try
                    {
                        File.Delete(sAppDatafile);
                    }
                    catch (Exception ex)
                    {
                        tResfile.CloseFile();
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stDefTestData[] data = new stDefTestData[tResfile.datacount];
                int DataCount = tResfile.read(0, ref data, tResfile.datacount);

                if (tSaveResfile.Create(sAppDatafile, tResfile.tmphead) == false)
                {
                    MessageBox.Show("Failed to create new file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }
                int nAuxBd;
                int nAuxBdCh;
                for (int i = 0; i < fititems.Length; i++)
                {
                    if (data[i].fFreq == fititems[i].freq)
                    {
                        data[i].real = fititems[i].zData[0].real;
                        data[i].img = fititems[i].zData[0].img;

                        for (int j = 0; j < grpvars.nAuxChCount; j++)
                        {
                            if (grpvars.showitems[j + 1].nAuxCh < 0) continue;
                            nAuxBd = grpvars.showitems[j + 1].nAuxCh / MBZA_Constant.MAX_AUX_CHANNEL;
                            nAuxBdCh = grpvars.showitems[j + 1].nAuxCh % MBZA_Constant.MAX_AUX_CHANNEL;
                            data[i].mdata[nAuxBd].mdata[nAuxBdCh].Zre = fititems[i].zData[j + 1].real;
                            data[i].mdata[nAuxBd].mdata[nAuxBdCh].Zim = fititems[i].zData[j + 1].img;
                        }
                    }
                    else
                    {
                        if(MessageBox.Show("Data with inconsistent frequencies was found. \r\n Do you want to continue?", gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.Cancel)
                        {
                            tSaveResfile.CloseFile();
                            tResfile.CloseFile();
                            Cursor = Cursors.Default;
                            return false;
                        }
                    }
                    tSaveResfile.AppendData(data[i]);
                }
                tSaveResfile.CloseFile();
                tResfile.CloseFile();
                MessageBox.Show("Saving successfully.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);

                tSaveResfile.CloseFile();
                tResfile.CloseFile();

                MessageBox.Show("Failed to save.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                Cursor = Cursors.Default;
                return false;
            }
            Cursor = Cursors.Default;
            return true;
        }

        private void btSaveAsApplyData_Click(object sender, EventArgs e)
        {
            SaveApplyDataFile();
        }

        private void lblVdc_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (auxForm == null || auxForm.IsDisposed)
            {
                auxForm = new frmAuxVdc(ch);
                auxForm.Parent = null;
            }
            else
            {
                auxForm.SetCh(ch);
            }
            auxForm.Show();
            auxForm.TopMost = true;
        }

        private void lblprogfreq_Click(object sender, EventArgs e)
        {

        }

        private void Bdlegend_Enter(object sender, EventArgs e)
        {

        }

        private void Bdlegend_MouseClick(object sender, MouseEventArgs e)
        {

        }

        private void btSelAllNiItems_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                ChkBoxNi[i].Checked = true;
            }
        }

        private void btDeselAllNiItems_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                ChkBoxNi[i].Checked = false;
            }
        }

        private void btSelAllBdItems_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                ChkBoxBd[i].Checked = true;
            }
        }

        private void btDeselAllBdItems_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                ChkBoxBd[i].Checked = false;
            }
        }

        private void cboItemA_SelectedIndexChanged(object sender, EventArgs e)
        {
            RefreshNiLegend();
        }

        private void cboItemB_SelectedIndexChanged(object sender, EventArgs e)
        {
            RefreshBdLegend();
        }

        private void backColorToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            int ChgColor = gBZA.GetChgColor(grpvars.bode.BackColor);

            if (ChgColor != grpvars.bode.BackColor)
            {
                grpvars.bode.BackColor = ChgColor;
                SaveCalGrpVarsToXml();
                grp2.PlotAreaColor = Color.FromArgb(grpvars.bode.BackColor);
            }
        }

        private void gridColorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            int ChgColor = gBZA.GetChgColor(grpvars.bode.GridColor);

            if (ChgColor != grpvars.bode.GridColor)
            {
                grpvars.bode.GridColor = ChgColor;
                SaveCalGrpVarsToXml();
                
                grp2.XAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
                grp2.XAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
                grp2.YAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
                grp2.YAxes[0].MinorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
                grp2.YAxes[1].MajorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
                grp2.YAxes[1].MinorDivisions.GridColor = Color.FromArgb(grpvars.bode.GridColor);
            }
        }

        private void cboItem_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChgSelItem = cboItem.SelectedIndex;
        }

        private void cborange_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (begindlg == true) return;

            string str;

            grpvars.tRng = cborange.SelectedIndex;
            if (grpvars.tRng < 0)
            {
                grpvars.tRng = 0;
                bSelectRng = true;
            }

            if ((grpvars.tRng % 2) > 0)
            {
                grpvars.CRng = grpvars.tRng / 2;
            }
            else
            {
                grpvars.OtherRng = grpvars.tRng + 1;
            }

            str = string.Format("{0}\\Cal_{1}_rng{2}.zmf", Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetSerialNumber(), grpvars.tRng);
            sLogDataFile = Path.Combine(gBZA.appcfg.PathLog, str);

            DataCount = 0;

            LoadFile();
            RefreshPara();
            
        }
    }
}
