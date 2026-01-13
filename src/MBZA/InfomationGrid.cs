using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;
using System.Reflection;
using System.Collections;
using SMLib;
using System.Runtime.InteropServices;

using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Utilities;
using ZiveLab.ZM.ZIM.Packets;
using System.IO;
using System.Xml.Serialization;
using System.Diagnostics;
using System.Text.RegularExpressions;

namespace ZiveLab.ZM
{
    public partial class InfomationGrid : UserControl
    {
        stPropIacCompLs propCompdummy;
        stPropIacCalib propiacCalib;
        stPropIac propiac;
        stPropIdc propidc;
        stPropVdc propvdc;
        stPropConnInf propconn;
        stPropSIF propsif;
        stPropZim propzim;
        stPropAux propaux;
        stPropauxrange propauxrange;
        stPropAuxCh Propauxch;

        int selch;
        bool bFirst;
        private string Serial;
        private int sifch;
        private ToolStrip toolStrip;
        private TreeNode SelectNode;
        private int[] bStat;
        public eDeviceType mtype;
        public string sSelSerial = "";
        public stSystemConfig mSysCfg;

        public InfomationGrid()
        {
            InitializeComponent();
            DoubleBuffered = true;
            bFirst = false;
            selch = -1;
            Serial = "";
            sifch = -1;
            propCompdummy = new stPropIacCompLs();
            propiacCalib = new stPropIacCalib();
            propiac = new stPropIac();
            propidc = new stPropIdc();
            propvdc = new stPropVdc();
            propconn = new stPropConnInf();
            propsif = new stPropSIF();
            propzim = new stPropZim();
            propaux = new stPropAux();
            propauxrange = new stPropauxrange();
            Propauxch = new stPropAuxCh();

            bStat = new int[6];
            for (int i = 0; i < 0; i++)
            {
                bStat[i] = 1;
            }
            toolStrip = null;
            SelectNode = null;

            this.imageList1.Images.Clear();
            this.imageList1.Images.Add(Properties.Resources.NetConfig);

            this.imageList1.Images.Add(Properties.Resources.object21);
            this.imageList1.Images.Add(Properties.Resources.object22);

            this.imageList1.Images.Add(Properties.Resources.greenchip1);
            this.imageList1.Images.Add(Properties.Resources.redchip1);

            this.imageList1.Images.Add(Properties.Resources.greenlink);
            this.imageList1.Images.Add(Properties.Resources.redlink);

            this.imageList1.Images.Add(Properties.Resources.folder);

            this.imageList1.Images.Add(Properties.Resources.deviceinfo);
            this.imageList1.Images.Add(Properties.Resources.ConnGate);
            this.imageList1.Images.Add(Properties.Resources.Device);
            this.imageList1.Images.Add(Properties.Resources.CalibItem);
            this.imageList1.Images.Add(Properties.Resources.CalibFail1);
            this.imageList1.Images.Add(Properties.Resources.AddClause);
            this.imageList1.Images.Add(Properties.Resources.chip1);
            //this.treeView1.Anchor = AnchorStyles.Top | AnchorStyles.Left;
            this.treeView1.CheckBoxes = false;
            this.treeView1.ImageList = this.imageList1;

            RecreatePropertyGridToolBar(null);

         }

        public void SetRefreshEvent(ref EventHandler eventrefresh)
        {
            eventrefresh += new EventHandler(Event_Refreshgrid);
        }

        public void Initialize(int tselch, string tserial, int tsifch)
        {
            
            Serial = tserial;
            sifch = tsifch;
            selch = tselch;
            RefreshTreeProc();
                        
        }

        private void UncheckedAll()
        {
            foreach (TreeNode node in treeView1.Nodes)
            {
                node.Checked = false;
                AllChildNodeChecked(node);
            }
        }

        private void CheckedAutoAll()
        {
            int ch;
            int[] nodeval;

            UncheckedAll();

            foreach (TreeNode node in treeView1.Nodes)
            {
                nodeval = StringKeyToInteger(node.Name);
                if (nodeval[0] < 1) continue;
                ch = nodeval[0] - 1;

                

                node.Checked = true;
                AllChildNodeChecked(node);
                
            }
        }

        private void AllChildNodeChecked(TreeNode node)
        {
            if (node == null) return;
            TreeNode node1;

            node1 = node.FirstNode;
            while (true)
            {
                if (node1 == null) return;
                node1.Checked = node.Checked;
                AllChildNodeChecked(node1);
                node1 = node1.NextNode;
            }

        }

        private void InitEisCalInf(ref st_zim_Eis_Cal_info pEis_cal_info)
        {
            pEis_cal_info.n1 = 0.0;
            pEis_cal_info.n2 = 0.0;
            pEis_cal_info.n3 = 0.0;
            pEis_cal_info.d1 = 0.0;
            pEis_cal_info.d2 = 0.0;
            pEis_cal_info.d3 = 0.0;
        }
        private bool ChkEisCalInf(st_zim_Eis_Cal_info pEis_cal_info)
        {
            if (double.IsNaN(pEis_cal_info.n1) || double.IsNaN(pEis_cal_info.n2) || double.IsNaN(pEis_cal_info.n3)
                    || double.IsNaN(pEis_cal_info.d1) || double.IsNaN(pEis_cal_info.d2) || double.IsNaN(pEis_cal_info.d3)) return false;

            if (pEis_cal_info.n1 == 0.0 || pEis_cal_info.n2 == 0.0 || pEis_cal_info.n3 == 0.0
                || pEis_cal_info.d1 == 0.0 || pEis_cal_info.d2 == 0.0 || pEis_cal_info.d3 == 0.0) return false;

            return true;
        }

        private bool ChkCompDummyInf(st_zim_dummy dummy)
        {
            if (double.IsNaN(dummy.Ls)) return false;
            if (double.IsNaN(dummy.R)) return false;
            if (dummy.Ls == 0.0 ) return false;
            if (dummy.R == 0.0) return false;
            return true;
        }

        int CreateNodePartIacGain(int rng, int vartype, TreeNode parentnode)
        {
            TreeNode node;

            int tmp = 0;
            bool bNoCalib = false;
            int trng = rng * 2;

            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];


            for (int i = 0; i < MBZA_Constant.Const_RangeIacGain.Count(); i++)
            {
                trng = rng * 2 + i;
                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), MBZA_Constant.Const_RangeIacGain[i]);
                node.Tag = (string)parentnode.Tag + "/" + MBZA_Constant.Const_RangeIacGain[i];

                if (vartype == 0)
                {
                    //if (ChkEisCalInf(p.ranges[0].mEisIRngCalInfo[trng]) == false)
                    if (ChkEisCalInf(p.ranges.Gen.mEisIRngCalInfo[trng]) == false) // 배열
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                    node.ImageIndex = tmp;
                    node.SelectedImageIndex = tmp;
                }
                else
                {
                    //if(ChkCompDummyInf(p.ranges[0].mDummy[trng]) == false)
                    if (ChkCompDummyInf(p.ranges.Gen.mDummy[trng]) == false) // 배열
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                    node.ImageIndex = tmp + 11;
                    node.SelectedImageIndex = tmp + 11;
                }


                node.ToolTipText = (string)node.Tag;
            }
            if (bNoCalib == true) return 2;
            return 1;
        }

        int CreateNodePartIdc(TreeNode parentnode)
        {
            TreeNode node;
            string stext;
            double tdouble;
            int tmp = 0;
            bool bNoCalib = false;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            eZimType zimtype = (eZimType)(p.info.cModel[0] - 0x30);

            for (int i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
            {
                //tdouble = p.ranges[0].iac_rng[i/2].realmax * 0.5;
                //if (i % 2 > 0) tdouble *= p.ranges[0].iac_rng[i/2].controlgain;
                tdouble = p.ranges.Gen.iac_rng[i / 2].realmax * 0.5;
                if (i % 2 > 0) tdouble *= p.ranges.Gen.iac_rng[i / 2].controlgain; // 배열

                stext = SM_Number.ToRangeString(tdouble, "A");

                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), stext);
                node.Tag = (string)parentnode.Tag + "/" + stext;

                //if (p.ranges[0].Idc_rnginf.idcofs[i].offset == 0.0 || p.ranges[0].Idc_rnginf.idcofs[i].offset == DeviceConstants.DEV_DEFAULT_IDC_OFFSET)
                if (p.ranges.Gen.Idc_rnginf.idcofs[i].offset == 0.0 || p.ranges.Gen.Idc_rnginf.idcofs[i].offset == DeviceConstants.DEV_DEFAULT_IDC_OFFSET) // 배열
                {
                    bNoCalib = true;
                    tmp = 2;
                }
                else
                {
                    tmp = 1;
                }

                node.ImageIndex = tmp;
                node.SelectedImageIndex = tmp;

                node.ToolTipText = (string)node.Tag;

            }

            if (bNoCalib == true)
            {
                return 2;
            }
            return 1;
        }

        int CreateNodePartIacItem(int rng, TreeNode parentnode)
        {
            TreeNode node;
            int tmp = 0;
            int trng = rng;
            bool bNoCalib = false;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];


            for (int i = 0; i < MBZA_Constant.Const_RangeIacItems.Count(); i++)
            {
                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), MBZA_Constant.Const_RangeIacItems[i]);
                node.Tag = (string)parentnode.Tag + "/" + MBZA_Constant.Const_RangeIacItems[i];

                if (i == 0)
                {
                    tmp = CreateNodePartIacGain(rng, i, node);
                    if (tmp == 1)
                    {
                        //if (p.ranges[0].iac_rng[rng].gain1 == 1.0 && p.ranges[0].iac_rng[rng].gain2 == 1.0)
                        if (p.ranges.Gen.iac_rng[rng].gain1 == 1.0 && p.ranges.Gen.iac_rng[rng].gain2 == 1.0) // 배열
                        {
                            tmp = 2;
                        }
                    }
                    if (tmp == 2) bNoCalib = true;
                    node.ImageIndex = tmp;
                    node.SelectedImageIndex = tmp;

                }
                else
                {
                    tmp = CreateNodePartIacGain(rng, i, node);
                    //if (ChkCompDummyInf(p.ranges[0].mDummy[trng]) == false)
                    if (ChkCompDummyInf(p.ranges.Gen.mDummy[trng]) == false) // 배열
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }

                    node.ImageIndex = tmp + 11;
                    node.SelectedImageIndex = tmp + 11;
                }

                node.ToolTipText = (string)node.Tag;


            }
            if (bNoCalib == true) return 2;
            return 1;
        }

        int CreateNodeAuxPartIacItem( TreeNode parentnode, int nAuxBoard, int nAuxCh, int rng)
        {
            TreeNode node;
            int tmp = 0;
            int trng = rng * 2;
            bool bNoCalib = false;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[nAuxBoard];


            for (int i = 0; i < MBZA_Constant.Const_RangeIacGain.Count(); i++)
            {
                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), MBZA_Constant.Const_RangeIacGain[i]);
                node.Tag = (string)parentnode.Tag + "/" + MBZA_Constant.Const_RangeIacGain[i];

                if (ChkEisCalInf(p.ranges.Aux.mEisIRngCalInfo[nAuxCh].items[trng]) == false) // 배열
                {
                    tmp = 2;
                }
                else
                {
                    tmp = 1;
                }
                if (tmp == 2) bNoCalib = true;
                node.ImageIndex = tmp;
                node.SelectedImageIndex = tmp;
                node.ToolTipText = (string)node.Tag;
                trng++;

            }
            if (bNoCalib == true) return 2;
            return 1;
        }

        int CreateNodePartIac(TreeNode parentnode)
        {
            TreeNode node;
            string stext;
            int tmp = 0;
            bool bNoCalib = false;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            eZimType zimtype = (eZimType)(p.info.cModel[0] - 0x30);

            for (int i = 0; i < DeviceConstants.MAX_IAC_RNGCNT; i++)
            {

                //stext = SM_Number.ToRangeString(p.ranges[0].iac_rng[i].realmax, "A");
                stext = SM_Number.ToRangeString(p.ranges.Gen.iac_rng[i].realmax, "A"); // 배열

                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), stext);
                node.Tag = (string)parentnode.Tag + "/" + stext;


                tmp = CreateNodePartIacItem(i, node);

                if (tmp == 2)
                {
                    bNoCalib = true;
                }

                node.ImageIndex = tmp;
                node.SelectedImageIndex = tmp;

                node.ToolTipText = (string)node.Tag;

            }

            if (bNoCalib == true)
            {
                return 2;
            }
            return 1;
        }

        int CreateNodeAuxPartIac(TreeNode parentnode, int nAuxBoard, int nAuxCh)
        {
            TreeNode node;
            string stext;
            int tmp = 0;
            bool bNoCalib = false;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            eZimType zimtype = (eZimType)(p.info.cModel[0] - 0x30);

            for (int i = 0; i < DeviceConstants.MAX_IAC_RNGCNT; i++)
            {

                //stext = SM_Number.ToRangeString(p.ranges[0].iac_rng[i].realmax, "A");
                stext = SM_Number.ToRangeString(p.ranges.Gen.iac_rng[i].realmax, "A"); // 배열

                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), stext);
                node.Tag = (string)parentnode.Tag + "/" + stext;

                tmp = CreateNodeAuxPartIacItem(node, nAuxBoard, nAuxCh, i);

                if(tmp == 1)
                {
                    if (p.ranges.Aux.iac_gain[nAuxCh].items[i].iac_gain1 == 1.0 && p.ranges.Aux.iac_gain[nAuxCh].items[i].iac_gain2 == 1.0) 
                    {
                        {
                            tmp = 2;
                        }
                    }
                }

                if (tmp == 2)
                {
                    bNoCalib = true;
                }

                node.ImageIndex = tmp;
                node.SelectedImageIndex = tmp;

                node.ToolTipText = (string)node.Tag;

            }

            if (bNoCalib == true)
            {
                return 2;
            }
            return 1;
        }

        int CreateNodePartVdc(TreeNode parentnode)
        {
            TreeNode node;
            string stext;
            int tmp = 0;
            bool bNoCalib = false;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            eZimType zimtype = (eZimType)(p.info.cModel[0] - 0x30);

            for (int i = 0; i < DeviceConstants.MAX_VDC_RNGCNT; i++)
            {

                //stext = SM_Number.ToRangeString(p.ranges[0].vdc_rng[i].realmax, "V");
                stext = SM_Number.ToRangeString(p.ranges.Gen.vdc_rng[i].realmax, "V"); // 배열

                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), stext);
                node.Tag = (string)parentnode.Tag + "/" + stext;
                //if (p.ranges[0].vdc_rng[i].gain == 1.0 && p.ranges[0].vdc_rng[i].offset == 0.0)
                if (p.ranges.Gen.vdc_rng[i].gain == 1.0 && p.ranges.Gen.vdc_rng[i].offset == 0.0) // 배열
                {
                    tmp = 2;
                }
                else
                {
                    tmp = 1;
                }

                node.ImageIndex = tmp;
                node.SelectedImageIndex = tmp;
                node.ToolTipText = (string)node.Tag;
                if (tmp == 2) bNoCalib = true;
            }

            if (bNoCalib == true)
            {
                return 2;
            }
            return 1;
        }

        int CreateNodePartAuxBd(TreeNode parentnode, int nAuxboard)
        {
            TreeNode node;
            string stext;
            bool bNoCalib = false;
            int tmp = 0;
            stSystemConfig p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg;
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg;

            eZimType zimtype = (eZimType)(p.mZimCfg[nAuxboard].info.cModel[0] - 0x30);

            for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNEL; i++)
            {
                stext = string.Format("Aux Channel {0}",i+1);

                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), stext);
                node.Tag = (string)parentnode.Tag + "/" + stext;
                tmp = CreateNodePartAuxRange(node, nAuxboard, i);

                if (tmp == 2) bNoCalib = true;
                tmp += 4;
                node.ImageIndex = tmp;
                node.SelectedImageIndex = tmp;
                node.ToolTipText = (string)node.Tag;
            }
            if (bNoCalib == true)
            {
                return 2;
            }
            return 1;
        }
        
        int CreateNodePartAuxRange(TreeNode parentnode, int nAuxBoard, int nAuxCh)
        {
            TreeNode node;
            int tmp = 0;
            bool bNoCalib = false;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            
            for (int i = 0; i < MBZA_Constant.Const_RangePartAux.Count(); i++)
            {
                node = parentnode.Nodes.Add(string.Format("{0}{1}/", parentnode.Name, i), MBZA_Constant.Const_RangePartAux[i]);
                node.Tag = (string)parentnode.Tag + "/" + MBZA_Constant.Const_RangePartAux[i];

                if (i == 0)
                {
                    tmp = CreateNodeAuxPartIac(node, nAuxBoard, nAuxCh);
                }
                else if (i == 1)
                {
                    tmp = 8;
                }
                else if (i == 2)
                {
                    if(p.ranges.Aux.vdc_rng[nAuxCh].gain ==1.0 && p.ranges.Aux.vdc_rng[nAuxCh].offset == 0.0)
                    {
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                }

                if (node != null)
                {
                    node.ImageIndex = tmp;
                    node.SelectedImageIndex = tmp;
                    node.ToolTipText = (string)node.Tag;
                }

                if (tmp == 2) bNoCalib = true;
            }

            if (bNoCalib == true)
            {
                return 2;
            }
            return 1;
        }

        int CreateNodePartRange(TreeNode parentnode)
        {
            TreeNode node;
            int tmp = 0;
            bool bNoCalib = false;
            stZimCfg p;


            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            for (int i = 0; i < MBZA_Constant.Const_RangePart.Count(); i++)
            {
                node = parentnode.Nodes.Add(string.Format("{0}{1}/", parentnode.Name, i), MBZA_Constant.Const_RangePart[i]);
                node.Tag = (string)parentnode.Tag + "/" + MBZA_Constant.Const_RangePart[i];

                if (i == 0)
                {
                    tmp = CreateNodePartIac(node);
                }
                else if (i == 1)
                {
                    tmp = CreateNodePartIdc(node);
                }
                else if (i == 2)
                {
                    // no calibration
                    //if ((p.ranges.vac_rng.gain == 1.0 || p.ranges.vac_rng.gain == 0.0)  && p.ranges.vac_rng.offset == 0.0)
                    //{
                    //    tmp = 2;
                    //}
                    //else
                    //{
                    //    tmp = 1;
                    //}
                    tmp = 8;
                }
                else if (i == 3)
                {
                    tmp = CreateNodePartVdc(node);
                }
                else if (i == 4)
                {
                    if ((p.ranges.Gen.rtd_rng.gain == 1.0 || p.ranges.Gen.rtd_rng.gain == 0.0) && p.ranges.Gen.rtd_rng.offset == 0.0) // 배열
                    {
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                }
                else if (i == 5)
                {
                    tmp = 8;
                }

                if (node != null)
                {
                    node.ImageIndex = tmp;
                    node.SelectedImageIndex = tmp;
                    node.ToolTipText = (string)node.Tag;
                }

                if (tmp == 2) bNoCalib = true;
            }

            if (bNoCalib == true)
            {
                return 2;
            }
            return 1;
        }

        public int RefreshTreeViewErr(TreeNode SelectItem = null)
        {
            treeView1.Nodes.Clear();
            
            return 0;
        }
               

        public int RefreshTreeView(TreeNode SelectItem = null)
        {
            TreeNode node;
            int i;
            int tmp = 0;
            stSystemConfig p;

            treeView1.Nodes.Clear();

            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg;
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg;

            if (gBZA.IsMCBZA(Serial)) 
            {
                for (i = 0; i < MBZA_Constant.Const_LootPartAux.Count(); i++)
                {
                    node = treeView1.Nodes.Add(string.Format("{0}/", i), MBZA_Constant.Const_LootPartAux[i]);
                    node.Tag = MBZA_Constant.Const_LootPartAux[i];
                    if (i == 0)
                    {
                        tmp = 9;
                    }
                    else if (i == 1)
                    {
                        tmp = 0;
                    }
                    else if (i == 2)
                    {
                        tmp = 10;
                    }
                    else if (i == 3)
                    {
                        tmp = CreateNodePartRange(node);
                        tmp += 2;
                    }
                    else if (i == 4 || i == 5 || i == 6)
                    {
                        if (p.EnaZIM[i - 3] == 0 || p.ChkZIM[i - 3] == 0)
                        {
                            tmp = 14;
                        }
                        else
                        {
                            tmp = CreateNodePartAuxBd(node, i - 3);
                            tmp += 2;
                        }
                    }
                    if (node != null)
                    {
                        node.ImageIndex = tmp;
                        node.SelectedImageIndex = tmp;
                        node.ToolTipText = (string)node.Tag;
                    }
                }
            }
            else
            {
                for (i = 0; i < MBZA_Constant.Const_LootPart.Count(); i++)
                {
                    node = treeView1.Nodes.Add(string.Format("{0}/", i), MBZA_Constant.Const_LootPart[i]);
                    node.Tag = MBZA_Constant.Const_LootPart[i];
                    if (i == 0)
                    {
                        tmp = 9;
                    }
                    else if (i == 1)
                    {
                        tmp = 0;
                    }
                    else if (i == 2)
                    {
                        tmp = 10;
                    }
                    if (i == 3)
                    {
                        tmp = CreateNodePartRange(node);
                        tmp += 2;
                    }

                    if (node != null)
                    {
                        node.ImageIndex = tmp;
                        node.SelectedImageIndex = tmp;
                        node.ToolTipText = (string)node.Tag;
                    }
                }
            }
            if (SelectItem != null)
            {
                treeView1.SelectedNode = SelectItem;
                treeView1.Refresh();
            }
            else
            {
                treeView1.SelectedNode = treeView1.Nodes[0];
                treeView1.Select();
            }
            treeView1.HideSelection = true;
            return 0;
        }

        public int RefreshNodeRangeVdcStat(TreeNode node)
        {
            TreeNode tnode;
            int tmp = 0;
            int rng;
            bool bCalib = true;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];

            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);
                rng = nodeval[2] - 1;

                if ((p.ranges.Gen.vdc_rng[rng].gain == 1.0 || p.ranges.Gen.vdc_rng[rng].gain == 0.0) && p.ranges.Gen.vdc_rng[rng].offset == 0.0) // 배열
                {
                    tmp = 2;
                    bCalib = false;
                }
                else
                {
                    tmp = 1;
                }

                tnode.ImageIndex = tmp;
                tnode.SelectedImageIndex = tmp;
                tnode = tnode.NextNode;
            }
            if (bCalib == true) tmp = 1;
            else tmp = 2;

            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;

            return tmp;
        }

        public int RefreshNodeRangeIdcStat(TreeNode node)
        {
            TreeNode tnode;
            bool bCalib = true;
            int tmp = 0;
            int trng = 0;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);
                trng = nodeval[2] - 1;
               
                if (p.ranges.Gen.Idc_rnginf.idcofs[trng].offset == 0.0 || p.ranges.Gen.Idc_rnginf.idcofs[trng].offset == DeviceConstants.DEV_DEFAULT_IDC_OFFSET) // 배열
                {
                    tmp = 2;
                    bCalib = false;
                }
                else
                {
                    tmp = 1;
                }

                tnode.ImageIndex = tmp;
                tnode.SelectedImageIndex = tmp;

                tnode = tnode.NextNode;
            }
            if (bCalib == true) tmp = 1;
            else tmp = 2;
            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;
            return tmp;
        }

        public int RefreshNodeRangeIacGainStat(int rng, int vartype, TreeNode node)
        {
            TreeNode tnode;
            int tmp = 0;
            bool bNoCalib = false;
            int trng = rng * 2;

            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);
                trng = rng * 2 + (nodeval[4] - 1);
                if (vartype == 0)
                {
                    //if (ChkEisCalInf(p.ranges[0].mEisIRngCalInfo[trng]) == false)
                    if (ChkEisCalInf(p.ranges.Gen.mEisIRngCalInfo[trng]) == false) // 배열
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }
                else
                {
                    //if (ChkCompDummyInf(p.ranges[0].mDummy[trng]) == false)
                    if (ChkCompDummyInf(p.ranges.Gen.mDummy[trng]) == false)
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                    tnode.ImageIndex = tmp + 11;
                    tnode.SelectedImageIndex = tmp + 11;
                }
                tnode = tnode.NextNode;
            }

            if (bNoCalib == true) tmp = 2;
            else tmp = 1;
            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;

            return tmp;
        }

        public int RefreshNodeRangeIacItemStat(int rng, TreeNode node)
        {
            TreeNode tnode;
            int tmp = 0;
            bool bNoCalib = false;

            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;

                nodeval = StringKeyToInteger(tnode.Name);
                if ((nodeval[3] - 1) == 0)
                {
                    tmp = RefreshNodeRangeIacGainStat(rng, nodeval[3] - 1, tnode);

                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                    if (tmp == 2) bNoCalib = true;
                }
                else
                {
                    tmp = RefreshNodeRangeIacGainStat(rng, nodeval[3] - 1, tnode);
                    //if (ChkCompDummyInf(p.ranges[0].mDummy[rng]) == false)
                    if (ChkCompDummyInf(p.ranges.Gen.mDummy[rng]) == false)
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }

                    tnode.ImageIndex = tmp + 11;
                    tnode.SelectedImageIndex = tmp + 11;
                }

                tnode = tnode.NextNode;
            }
            if (bNoCalib == true) tmp = 2;
            else tmp = 1;

            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;
            
            return tmp;
        }

        public int RefreshNodeRangeIacStat(TreeNode node)
        {
            TreeNode tnode;
            int tmp = 0;
            bool bCalib = true;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);

                tmp = RefreshNodeRangeIacItemStat(nodeval[2] - 1, tnode);

                if (tmp == 2) bCalib = false;
                tnode.ImageIndex = tmp;
                tnode.SelectedImageIndex = tmp;

                tnode = tnode.NextNode;
            }
            if (bCalib == true) tmp = 1;
            else tmp = 2;

            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;

            return tmp;
        }

        public int RefreshNodeRangeStat(TreeNode node)
        {
            TreeNode tnode;
            int tmp = 0;
            bool bCalib = true;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];

            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);

                if (nodeval[1] == 1)
                {
                    tmp = RefreshNodeRangeIacStat(tnode);
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }
                if (nodeval[1] == 2)
                {
                    tmp = RefreshNodeRangeIdcStat(tnode);
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }
                else if (nodeval[1] == 4)
                {
                    tmp = RefreshNodeRangeVdcStat(tnode);
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }
                else if (nodeval[1] == 5)
                {
                    if ((p.ranges.Gen.rtd_rng.gain == 1.0 || p.ranges.Gen.rtd_rng.gain == 0.0) && p.ranges.Gen.rtd_rng.offset == 0.0) 
                    {
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }
                if (tmp == 2) bCalib = false;
                tnode = tnode.NextNode;
            }

            if (bCalib == true) tmp = 1;
            else tmp = 2;

            tmp += 2;

            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;

            return tmp;
        }

        public int RefreshAuxNodeBoardStat(TreeNode node, int nAuxBoard)
        {
            TreeNode tnode;
            int tmp = 0;
            bool bCalib = true;
            stZimCfg p;
            stSystemConfig s;
            if (gBZA.SifLnkLst.ContainsKey(Serial))
            {
                p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];
                s = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg;
            }
            else
            {
                p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[nAuxBoard];
                s = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg;
            }

            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);

                if (nodeval[1] == 1 || nodeval[1] == 2 || nodeval[1] == 3 || nodeval[1] == 4)
                {
                    tmp = RefreshAuxNodeBdChStat(tnode, nAuxBoard, nodeval[1]-1);
                    if (tmp == 2) bCalib = false;
                    tmp += 4;
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                    
                }
                tnode = tnode.NextNode;
            }

            if (bCalib == true) tmp = 1;
            else tmp = 2;

            tmp += 2;
            if (s.EnaZIM[nAuxBoard] == 0 || s.ChkZIM[nAuxBoard] == 0) tmp = 14;

            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;

            return tmp;
        }

        public int RefreshAuxNodeBdChStat(TreeNode node, int nAuxBoard, int nAuxBdCh)
        {
            TreeNode tnode;
            int tmp = 0;
            bool bCalib = true;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[nAuxBoard];

            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);

                if (nodeval[2] == 1)
                {
                    tmp = RefreshAuxNodeRangeIacStat(tnode, nAuxBoard, nAuxBdCh);
                    if(tmp == 2) bCalib = false;
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }
                else if (nodeval[2] == 3)
                {
                    if (p.ranges.Aux.vdc_rng[nAuxBdCh].gain == 1.0 && p.ranges.Aux.vdc_rng[nAuxBdCh].offset == 0.0)
                    {
                        tmp = 2;
                        bCalib = false;
                    }
                    else
                    {
                        tmp = 1;
                    }
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }
                
                tnode = tnode.NextNode;
            }

            if (bCalib == true) tmp = 1;
            else tmp = 2;

            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;

            return tmp;
        }

        public int RefreshAuxNodeRangeIacStat(TreeNode node, int nAuxBoard, int nAuxBdCh)
        {
            TreeNode tnode;
            int tmp = 0;
            bool bCalib = true;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);

                if(nodeval[3] == 1 || nodeval[3] == 2 || nodeval[3] == 3 || nodeval[3] == 4)
                {
                    tmp = RefreshAuxNodeRangeIacItemStat(tnode, nAuxBoard, nAuxBdCh, nodeval[3]-1);

                    if (tmp == 1)
                    {
                        if (p.ranges.Aux.iac_gain[nAuxBdCh].items[(nodeval[3] - 1)].iac_gain1 == 1.0 && p.ranges.Aux.iac_gain[nAuxBdCh].items[(nodeval[3] - 1)].iac_gain2 == 1.0)
                        {
                            {
                                tmp = 2;
                            }
                        }
                    }

                    if (tmp == 2) bCalib = false;
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }

                tnode = tnode.NextNode;
            }

            if (bCalib == true) tmp = 1;
            else tmp = 2;

            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;

            return tmp;
        }

        public int RefreshAuxNodeRangeIacItemStat(TreeNode node, int nAuxBoard, int nAuxBdCh, int rng)
        {
            TreeNode tnode;
            int tmp = 0;
            int trng;
            bool bCalib = true;

            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;

                nodeval = StringKeyToInteger(tnode.Name);
                trng = rng * 2 + (nodeval[4] - 1);
                if (nodeval[4] == 1 || nodeval[4] == 2)
                {
                    if (ChkEisCalInf(p.ranges.Aux.mEisIRngCalInfo[nAuxBdCh].items[trng]) == false)
                    {
                        bCalib = false;
                        tmp = 2;
                    }
                    else tmp = 1;
                    tnode.ImageIndex = tmp;
                    tnode.SelectedImageIndex = tmp;
                }

                tnode = tnode.NextNode;
            }
            if (bCalib == true) tmp = 1;
            else tmp = 2;

            node.ImageIndex = tmp;
            node.SelectedImageIndex = tmp;

            return tmp;
        }

        public void RefreshTreeViewStat()
        {
            int[] nodeval;
            stSystemConfig p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg;
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg;
            foreach (TreeNode node in treeView1.Nodes)
            {
                nodeval = StringKeyToInteger(node.Name);
                if (nodeval[0] == 4)
                {
                    RefreshNodeRangeStat(node);
                }
                else
                {
                    if (gBZA.IsMCBZA(Serial))
                    {
                        if (nodeval[0] == 5 || nodeval[0] == 6 || nodeval[0] == 7)
                        {
                            RefreshAuxNodeBoardStat(node, nodeval[0]-4);
                        }
                    }
                }
            }
        }

        private void RecreatePropertyGridToolBar(TreeNode node)
        {
            ToolStripItem item;
            int index;
            string sName;
            if (node == null)
            {
                index = -1;
                sName = "";
            }
            else
            {
                index = node.ImageIndex;
                sName = node.Name;
                if (sName == "3/3/" || sName == "3/0/0/1/" || sName == "3/0/1/1/" || sName == "3/0/2/1/" || sName == "3/0/3/1/"
                     || sName == "4/0/" || sName == "4/1/" || sName == "4/2/" || sName == "4/3/" || sName == "5/0/" || sName == "5/1/" || sName == "5/2/" || sName == "5/3/"
                     || sName == "6/0/" || sName == "6/1/" || sName == "6/2/" || sName == "6/3/" || sName == "7/0/" || sName == "7/1/" || sName == "7/2/" || sName == "7/3/"
                     )
                {
                    index = 100;
                }
            }

            foreach (Control control in propertyGrid1.Controls)
            {
                toolStrip = control as ToolStrip;

                if (toolStrip != null)
                {
                   
                    toolStrip.Items.Clear();
                    toolStrip.AllowDrop = false;
                    toolStrip.Anchor = AnchorStyles.Top | AnchorStyles.Left;
                    toolStrip.AutoSize = true;
                    toolStrip.LayoutStyle = ToolStripLayoutStyle.HorizontalStackWithOverflow;
                    toolStrip.RenderMode = ToolStripRenderMode.Professional;
                    toolStrip.ShowItemToolTips = true;
                    toolStrip.ImageScalingSize = new System.Drawing.Size(16, 16);
                    toolStrip.Height = 20;
                    toolStrip.PerformLayout();

                    if (index < 0) return;

                    item = new ToolStripMenuItem();
                    item.Name = "LocalRefresh";
                    item.Image = ZM.Properties.Resources.ViewRefresh.ToBitmap();
                    item.Click += new EventHandler(BtLocalRefresh_Click);
                    item.ToolTipText = "Refresh properties.";
                    item.AutoToolTip = true;
                    item.Alignment = ToolStripItemAlignment.Left;
                    item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                    item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                    item.ImageTransparentColor = Color.Fuchsia;
                    toolStrip.Items.Add(item);

                    
                    if (index == 0  || index == 1 || index == 2 || index == 8 || index == 11 || index == 12 || index == 10 )
                    {
                        item = new ToolStripMenuItem();
                        item.Name = "BtLocalApply";
                        item.Image = ZM.Properties.Resources.Save;
                        item.Click += new EventHandler(BtLocalApply_Click);
                        item.ToolTipText = "Apply data.";
                        item.AutoToolTip = true;
                        item.Alignment = ToolStripItemAlignment.Left;
                        item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                        item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                        item.ImageTransparentColor = Color.Fuchsia;
                        toolStrip.Items.Add(item);
                    }

                    if (index == 1 || index == 2 || index == 8 || index == 11 || index == 12 || index == 0)
                    {
                        item = new ToolStripMenuItem();
                        item.Name = "BtChangeRange";
                        item.Image = ZM.Properties.Resources.settings_outline;
                        item.Click += new EventHandler(BtChangeRange_Click);
                        item.ToolTipText = "Initialize(Resetting) this range information.";
                        item.AutoToolTip = true;
                        item.Alignment = ToolStripItemAlignment.Left;
                        item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                        item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                        item.ImageTransparentColor = Color.Fuchsia;
                        toolStrip.Items.Add(item);
                    }

                    if (index == 1 || index == 2 )
                    { 
                        item = new ToolStripMenuItem();
                        item.Name = "BtStartCalib";
                        item.Image =ZM.Properties.Resources.object41.ToBitmap();
                        item.Click += new EventHandler(BtStartCalib_Click);
                        item.ToolTipText = "Calibration this item.";
                        item.AutoToolTip = true;
                        item.Alignment = ToolStripItemAlignment.Left;
                        item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                        item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                        item.ImageTransparentColor = Color.Fuchsia;
                        toolStrip.Items.Add(item);
                    }

                    if (index == 10)
                    {
                        item = new ToolStripMenuItem();
                        item.Name = "ChangeFwSif";
                        item.Image =ZM.Properties.Resources.Upload.ToBitmap();
                        item.Click += new EventHandler(ChangeFwSIF_Click);
                        item.ToolTipText = "Change firmware for SIF board.";
                        item.AutoToolTip = true;
                        item.Alignment = ToolStripItemAlignment.Left;
                        item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                        item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                        item.ImageTransparentColor = Color.Fuchsia;
                        toolStrip.Items.Add(item);

                        if (File.Exists("C:\\ZIVE DATA\\ZM\\Infor\\ZM_Report.src") == true)
                        {
                            item = new ToolStripMenuItem();
                            item.Name = "Reporting";
                            item.Image = ZM.Properties.Resources.ExportToExcel;
                            item.Click += new EventHandler(Reporting_Click);
                            item.ToolTipText = "Save device information to Excel.";
                            item.AutoToolTip = true;
                            item.Alignment = ToolStripItemAlignment.Left;
                            item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                            item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                            item.ImageTransparentColor = Color.Fuchsia;
                            toolStrip.Items.Add(item);
                        }
                    }

                    if (index == 3 || index == 4)
                    {
                        item = new ToolStripMenuItem();
                        item.Name = "ChangeFwZim";
                        item.Image =ZM.Properties.Resources.Upload.ToBitmap();
                        item.Click += new EventHandler(ChangeFwZIM_Click);
                        item.ToolTipText = "Change firmware for channel board.";
                        item.AutoToolTip = true;
                        item.Alignment = ToolStripItemAlignment.Left;
                        item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                        item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                        item.ImageTransparentColor = Color.Fuchsia;
                        toolStrip.Items.Add(item);
                        /*
                        item = new ToolStripMenuItem();
                        item.Name = "BtTestZim";
                        item.Image = ZM.Properties.Resources.DeviceTest;
                        item.Click += new EventHandler(BtTestZim_Click);
                        item.ToolTipText = "You can check the operation of the channel board.";
                        item.AutoToolTip = true;
                        item.Alignment = ToolStripItemAlignment.Left;
                        item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                        item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                        item.ImageTransparentColor = Color.Fuchsia;
                        toolStrip.Items.Add(item);*/
                    }
                    
                    toolStrip.ResumeLayout();
                    break;
                }
            }
        }
        
        private int[] StringKeyToInteger(string skey) // ch +1, device-ch, Vdc, temp, iac, Vac/no/ X1, X10,   
        {
            int[] nodeval = new int[6];

            int idx;
            int sfind;
            string str;

            Array.Clear(nodeval, 0, nodeval.Count());

            str = skey;
            sfind = 0;
            idx = 0;

            while (true)
            {
                sfind = str.IndexOf("/");
                if (sfind >= 0)
                {
                    nodeval[idx] = Convert.ToInt32(str.Substring(0, sfind)) + 1;
                    idx++;

                    str = str.Substring(sfind + 1);
                    if (skey.Count() == 0)
                    {
                        break;
                    }
                }
                else
                {
                    break;
                }
            }
            return nodeval;
        }

        private int[] NodeToInteger(TreeNode node)
        {
            int[] nodeval = new int[6];

            int idx;
            int sfind;
            int itemcount;

            string skey;

            Array.Clear(nodeval, 0, nodeval.Count());

            skey = node.Name;
            sfind = 0;
            idx = 0;
            itemcount = node.Level + 1;
            for (int i = 0; i < itemcount; i++)
            {
                sfind = skey.IndexOf("/");
                if (sfind >= 0)
                {
                    nodeval[idx] = Convert.ToInt32(skey.Substring(0, sfind))+1;
                    idx++;

                    skey = skey.Substring(sfind + 1);
                    if (skey.Count() == 0)
                    {
                        break;
                    }
                }
                else
                {
                    break;
                }
            }
            if (itemcount != idx)
            {
                return null;
            }
            return nodeval;
        }

        private bool GetChkAcculacy(TreeNode node)
        {
            int[] nodeval;
            int item;
            
            
            nodeval = NodeToInteger(node);

            if (nodeval[0] < 1) return false;
            item = nodeval[0] - 1;


            if (item == 2)
            {
                if (nodeval[1] < 1)
                {
                    return false;
                }
                return true;
            }
            else if (item == 3)
            {
                return true;
            }
            return false;
        }

        private bool GetChkCalib(TreeNode node)
        {
            int[] nodeval;
            int item;
            
            nodeval = NodeToInteger(node);

            if (nodeval[0] < 1) return false;
            item = nodeval[0] - 1;

            if (item == 0)
            {
                if (nodeval[1] < 1)
                {
                    return false;
                }
                return true;
            }
            else if (item == 2)
            {
                if (nodeval[1] < 1)
                {
                    return false;
                }
                return true;
            }
            else if (item == 3)
            {
                return true;
            }
            return false;
        }

        private object GetIacObjectProc(int[] nodeval)
        {
            int iRng;
            int itype;
            int igain;
            int iRng1;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            double[] rngval = new double[4];
            iRng = 0;
            igain = 0;

            if (nodeval[2] < 1)
            {
                for (int i = 0; i < DeviceConstants.MAX_IAC_RNGCNT; i++)
                {
                    //rngval[i] = p.ranges[0].iac_rng[i].realmax;
                    rngval[i] = p.ranges.Gen.iac_rng[i].realmax; // 배열
                }
                propiac.SetType((eZimType)(p.info.cModel[0] - 0x30), rngval);
                return propiac;
            }
            iRng = nodeval[2] - 1;

            if (nodeval[3] < 1)
            {
                //return p.ranges[0].iac_rng[iRng];
                return p.ranges.Gen.iac_rng[iRng]; // 배열
            }
            itype = nodeval[3] - 1;



            if (nodeval[4] < 1)
            {
                if (itype == 0)
                {
                    propiacCalib.SetInformation(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg, iRng, sifch);
                    return propiacCalib;

                }
                else
                {
                    propCompdummy.SetInformation(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg, iRng, sifch);
                    return propCompdummy;
                }

            }


            igain = nodeval[4] - 1;

            iRng1 = iRng * 2 + igain;

            if (itype == 0)
            {
                //return p.ranges[0].mEisIRngCalInfo[iRng1];
                return p.ranges.Gen.mEisIRngCalInfo[iRng1]; // 배열
            }

            //return p.ranges[0].mDummy[iRng1];
            return p.ranges.Gen.mDummy[iRng1]; // 배열
        }

        private object GetIdcObjectProc(int[] nodeval)
        {
            int iRng;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            double[] rngval = new double[DeviceConstants.MAX_IAC_CTRL_RNGCNT];
            iRng = 0;

            if (nodeval[2] < 1)
            {
                for (int i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
                {
                    //rngval[i] = p.ranges[0].iac_rng[i/2].realmax * 0.5;
                    //if (i % 2 > 0) rngval[i] *= p.ranges[0].iac_rng[i/2].controlgain;
                    rngval[i] = p.ranges.Gen.iac_rng[i / 2].realmax * 0.5;
                    if (i % 2 > 0) rngval[i] *= p.ranges.Gen.iac_rng[i / 2].controlgain; // 배열
                }
                //propidc.SetType((eZimType)(p.info.cModel[0] - 0x30), rngval, p.ranges[0].Idc_rnginf);
                propidc.SetType((eZimType)(p.info.cModel[0] - 0x30), rngval, p.ranges.Gen.Idc_rnginf); // 배열
                return propidc;
            }
            iRng = nodeval[2] - 1;

            //return p.ranges[0].Idc_rnginf.idcofs[iRng];
            return p.ranges.Gen.Idc_rnginf.idcofs[iRng]; // 배열
        }

        private object GetVdcObjectProc(int[] nodeval)
        {
            int iRng;
            double[] rngval = new double[2];
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

            iRng = 0;

            if (nodeval[2] < 1)
            {
                //rngval[0] = p.ranges[0].vdc_rng[0].realmax;
                //rngval[1] = p.ranges[0].vdc_rng[1].realmax;
                rngval[0] = p.ranges.Gen.vdc_rng[0].realmax;
                rngval[1] = p.ranges.Gen.vdc_rng[1].realmax; // 배열
                propvdc.SetType((eZimType)(p.info.cModel[0] - 0x30), rngval);
                return propvdc;
            }
            iRng = nodeval[2] - 1;
            if (iRng >= DeviceConstants.MAX_VDC_RNGCNT) return null;
            //return p.ranges[0].vdc_rng[iRng];
            return p.ranges.Gen.vdc_rng[iRng]; // 배열
        }

        

        private object GetRangeObject(int[] nodeval)
        {
            int item;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

            if (nodeval[1] < 1)
            {
                propzim.SetInformation(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg, sifch);
                return propzim;
            }
            item = nodeval[1] - 1;
            if (item == 0)
            {
                return GetIacObjectProc(nodeval);
            }
            else if (item == 1)
            {
                return GetIdcObjectProc(nodeval); ;
            }
            else if (item == 2)
            {
                //return p.ranges[0].vac_rng;
                return p.ranges.Gen.vac_rng;
            }
            else if (item == 3)
            {
                return GetVdcObjectProc(nodeval);
            }
            else if (item == 4)
            {
                //return p.ranges[0].rtd_rng;
                return p.ranges.Gen.rtd_rng; // 배열
            }
            else if (item == 5)
            {
                //return p.ranges[0].mSafety;
                return p.ranges.Gen.mSafety; // 배열
            }
            return null;
        }

        private object GetAuxBoardObject(int[] nodeval, int nAuxBoard)
        {
            int item;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];

            if (nodeval[1] < 1)
            {
                propaux.SetInformation(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg, nAuxBoard);
                return propaux;
            }
            item = nodeval[1] - 1;
            if (item == 0 || item == 1 || item == 2 || item == 3)
            {
                return GetAuxChObject(nodeval, nAuxBoard, item);
            }
            
            return null;
        }

        private object GetAuxChObject(int[] nodeval, int nAuxBoard, int nAuxCh)
        {
            int item;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];

            if (nodeval[2] < 1)
            {
                Propauxch.SetInformation(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg, nAuxBoard, nAuxCh);
                return Propauxch;
            }
            item = nodeval[2] - 1;
            if (item == 0)
            {
                return GetAuxIacObjectProc(nodeval, nAuxBoard, nAuxCh);
            }
            else if (item == 1)
            {
                return p.ranges.Aux.vac_rng[nAuxCh];
            }
            else if (item == 2)
            {
                return p.ranges.Aux.vdc_rng[nAuxCh];
            }
           
            return null;
        }

        private object GetAuxIacObjectProc(int[] nodeval, int nAuxBoard, int nAuxCh)
        {
            int item;
            int iRng;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBoard];
            double[] rngval = new double[4];

            if (nodeval[3] < 1)
            {
                for (int i = 0; i < DeviceConstants.MAX_IAC_RNGCNT; i++)
                {
                    rngval[i] = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[0].ranges.Gen.iac_rng[i].realmax; // 배열
                }
                propiac.SetType((eZimType)(p.info.cModel[0] - 0x30), rngval);
                return propiac;
            }

            iRng = nodeval[3] - 1;
            if (nodeval[4] < 1)
            {
                return p.ranges.Aux.iac_gain[nAuxCh].items[iRng]; // 배열
            }

            item = nodeval[4] - 1;

            if(item == 0)
            {
                return p.ranges.Aux.mEisIRngCalInfo[nAuxCh].items[iRng * 2];
            }
            else if (item == 1)
            {
                return p.ranges.Aux.mEisIRngCalInfo[nAuxCh].items[iRng * 2 + 1];
            }

            return null;
        }
        
        private object GetLootObject(TreeNode node)
        {
            int[] nodeval;
            int item;

            if (gBZA.SifLnkLst.ContainsKey(Serial) == false) return null;
            stZimCfg p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

            nodeval = NodeToInteger(node);

            if(nodeval == null)
            {
                return null;
            }
            if (nodeval[0] < 1)
            {
                return null;
            }
            item = nodeval[0]-1;
            if (item == 0)
            {
                propconn.SetInformation(gBZA.SifLnkLst[Serial].MBZAIF.mConnection);
                return propconn;
            }
            else if (item == 1)
            {
                return gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mConnCfg.mEthernetCfg;
            }
            else if (item == 2)
            {
                propsif.SetInformation(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg);
                return propsif;
            }
            else if (item == 3)
            {
                return GetRangeObject(nodeval);
            }
            else if (item == 4 || item == 5 || item == 6)
            {
                if (gBZA.IsMCBZA(Serial))
                {
                    return GetAuxBoardObject(nodeval, item-3);
                }
            }
                
            return null;
        }


        private void RefreshPropertyGrid(TreeNode node = null)
        {
            if (node == null)
            {
                RecreatePropertyGridToolBar(null);
                SelectNode = null;
                this.propertyGrid1.SelectedObject = null;
            }
            else
            {
                var obj = GetLootObject(node);

                if (obj == null)
                {
                    RecreatePropertyGridToolBar(null);
                    SelectNode = null;
                }
                else
                {
                    SelectNode = node;
                }
                RecreatePropertyGridToolBar(node);
                this.propertyGrid1.SelectedObject = obj;
            }

            FormUtil.ResizePropertyGridSplitter(this.propertyGrid1, 50);
        }
        
        
        #region ** comm function

        public bool UploadChannelInformation()
        {
            /*var p = FormMain.DeviceInfDict[this.sSerial].mDeviceInfo;
            if (SM_MapUtilities.WriteData((byte)this.DeviceIndex, (byte)this.Channel,
                (ushort)enCommCmdMain.System, (ushort)enCommCmdSystem.Information, (ushort)0,
                p.mChannelInfo[this.Channel].mSystem.mInfo.ToByteArray(), (uint)Marshal.SizeOf(typeof(stDefSysInfo))) == false)
            {
                return false;
            }

            if (SM_MapUtilities.WriteData((byte)this.DeviceIndex, (byte)this.Channel,
                (ushort)enCommCmdMain.System, (ushort)enCommCmdSystem.Configuration, (ushort)0,
                p.mChannelInfo[this.Channel].mSystem.mConfig.ToByteArray(), (uint)Marshal.SizeOf(typeof(stDefSysConfig))) == false)
            {
                return false;
            }

            if (SM_MapUtilities.WriteRangeData((byte)this.DeviceIndex, (byte)this.Channel,
                p.mChannelInfo[this.Channel].mSystem.mRange.ToByteArray(), (int)Marshal.SizeOf(typeof(stDefSysRange))) == false)
            {
                return false;
            }
            */
            return true;
        }

        public bool WriteROM_All()
        {
            /*
            if (SM_MapUtilities.WriteData((byte)this.DeviceIndex, (byte)this.Channel,
                (ushort)enCommCmdMain.System, (ushort)enCommCmdSystem.WriteRomAll, (ushort)0, null, 0) == false)
            {
                return false;
            }
            
            if (SM_MapUtilities.WriteData((byte)this.DeviceIndex, (byte)this.Channel,
            (ushort)enCommCmdMain.System, (ushort)enCommCmdSystem.BoosterWriteEeprom, (ushort)0, null, 0) == false)
            {
                return false;
            }
            */
            return true;
        }

        #endregion ** comm function
        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e) // 선택 노드
        {
            if (e.Node == null) return;

            string nodeKey = e.Node.Name;
            this.SelectNode = e.Node;
            if (!string.IsNullOrEmpty(nodeKey))
            {
                RefreshPropertyGrid(e.Node);
            }
        }

        public void auxtreenode()
        {

        }

        private void treeView1_AfterCheck(object sender, TreeViewEventArgs e)
        {
            AllChildNodeChecked(e.Node);
        }

        private void propertyGrid1_Resize(object sender, EventArgs e)
        {

        }

        private void Event_Refreshgrid(object sender, EventArgs e)
        {
            if (this.SelectNode == null) return;
            RefreshPropertyGrid(this.SelectNode);
        }

        void BtLocalRefresh_Click(object sender, EventArgs e)
        {
            if (this.SelectNode == null)
            {
                MessageBox.Show("There are no items selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (!string.IsNullOrEmpty(this.SelectNode.Name))
            {
                RefreshPropertyGrid(this.SelectNode);
            }
        }

        public enum enTestState
        {
            [Description("Ready.")]
            Ready,
            [Description("Running.")]
            Running,
            [Description("Calibration.")]
            Calibration,
            [Description("Finished.")]
            Finished,
            [Description("Stopped.")]
            Stopped,
            [Description("Ready(No calibration).")]
            nc_Ready = 0x20,
            [Description("Running(No calibration).")]
            nc_Running,
            [Description("Calibration(No calibration).")]
            nc_Calibration,
            [Description("Finished(No calibration).")]
            nc_Finished,
            [Description("Stopped(No calibration).")]
            nc_Stopped,
        }

        bool GetChRun(enTestState stat)
        {
            //if(stat == enTestState.Running || stat == enTestState.Calibration || stat == enTestState.nc_Running || stat == enTestState.nc_Calibration)
            if (stat == enTestState.Running || stat == enTestState.nc_Running)
                {
                return true;
            }
            return false;
        }

        void BtStartCalib_Click(object sender, EventArgs e)
        {
            if (this.SelectNode == null)
            {
                MessageBox.Show("There are no items selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (GetChRun((enTestState)gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch].TestStatus))
            {
                MessageBox.Show("Calibration cannot proceed because the current channel is in use.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            int[] nodeval;
            int item;

            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg;
            nodeval = NodeToInteger(this.SelectNode);
            
            if (nodeval == null)
            {
                MessageBox.Show("This feature is not supported.");
                return;
            }
            item = nodeval[0] - 1;

            if (item == 3)
            {
                item = nodeval[1] - 1;
                if (item == 0)
                {
                    item = (nodeval[2] - 1) * 2;
                    if (nodeval[3] == 1)
                    {
                        if (nodeval[4] == 2)
                        {
                            item++;
                        }
                    }
                    frmCalibration frm = new frmCalibration(selch, Serial, sifch, item);
                    frm.ShowDialog();
                    RefreshTreeViewStat();
                    RefreshPropertyGrid(this.SelectNode);
                    return;
                }
                else if (item == 1) //idc
                {
                    item = nodeval[2] - 1;
                    frmCalibCtrlIdc frm = new frmCalibCtrlIdc(selch, Serial, sifch, item);
                    frm.ShowDialog();
                    RefreshTreeViewStat();
                    RefreshPropertyGrid(this.SelectNode);
                    return;
                }
                else if (item == 2) //vac
                {

                }
                else if (item == 3) //vdc
                {
                    item = nodeval[2] - 1;
                    if (item >= 0 && item < 2)
                    {
                        if (MBZA_MapUtil.SetCalibMode(Serial, sifch, true) == false)
                        {
                            MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        frmCalibVdc frm = new frmCalibVdc(selch, Serial, sifch, item);
                        frm.ShowDialog();
                        RefreshTreeViewStat();
                        RefreshPropertyGrid(this.SelectNode);
                        if (MBZA_MapUtil.SetCalibMode(Serial, sifch, false) == false)
                        {
                            MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    return;
                }
                else if (item == 4)
                {
                    if (MBZA_MapUtil.SetCalibMode(Serial, sifch, true) == false)
                    {
                        MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    frmCalibRtd frm = new frmCalibRtd(selch, Serial, sifch);
                    frm.ShowDialog();
                    RefreshTreeViewStat();
                    RefreshPropertyGrid(this.SelectNode);
                    if (MBZA_MapUtil.SetCalibMode(Serial, sifch, false) == false)
                    {
                        MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    return;
                }
                else if (item == 5) //safety
                {
                    return;
                }
            }
            else
            {
                int nAuxBd = 0;
                int nAuxBdCh = 0;
                int iRng = 0;
                if (gBZA.IsMCBZA(Serial))
                {
                    if (item == 4 || item == 5 || nodeval[0] == 6)
                    {
                        nAuxBd = item - 3;
                        if (p.EnaZIM[nAuxBd] == 1 && p.ChkZIM[nAuxBd] == 1)
                        {
                            nAuxBdCh = nodeval[1] - 1;
                            if (nodeval[2] == 1)
                            {
                                iRng = (nodeval[3] - 1) * 2;
                                if (nodeval[4] == 2)
                                {
                                    iRng++;
                                }
                                frmCalibration frm = new frmCalibration(selch, Serial, sifch, iRng);
                                frm.ShowDialog();

                                RefreshTreeViewStat();
                                RefreshPropertyGrid(this.SelectNode);
                                return;
                            }
                            else if (nodeval[2] == 2)
                            {
                                return;
                            }
                            else if (nodeval[2] == 3)
                            {

                                if (MBZA_MapUtil.SetCalibMode(Serial, 0, true) == false)
                                {
                                    MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                                    return;
                                }
                                frmCalibVdc frm = new frmCalibVdc(selch, Serial, nAuxBd, nAuxBdCh);
                                frm.ShowDialog();
                                RefreshTreeViewStat();
                                RefreshPropertyGrid(this.SelectNode);
                                if (MBZA_MapUtil.SetCalibMode(Serial, 0, false) == false)
                                {
                                    MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                                }
                                return;
                            }
                        }
                    }

                }
            }
            MessageBox.Show("This feature is not supported.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        void AuxBtStartCalib_Click(object sender, EventArgs e)
        {
            TreeNode selectedNode = treeView1.SelectedNode;
            if (selectedNode == null)
            {
                MessageBox.Show("No node selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (selectedNode.Text != "X1" && selectedNode.Text != "X0.2")
            {
                MessageBox.Show("Please select X1 or X0.2 node.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (selectedNode.Parent == null ||
                selectedNode.Parent.Parent == null ||
                selectedNode.Parent.Parent.Parent == null ||
                selectedNode.Parent.Parent.Parent.Text != "Aux_Iac")
            {
                MessageBox.Show("Invalid AUX calibration structure.", gBZA.sMsgTitle,
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            TreeNode rangeNode = selectedNode.Parent.Parent; // 2A, 200mA, 20mA, 2mA
            TreeNode auxNode = rangeNode.Parent.Parent;

            int item = -1;
            switch (rangeNode.Text)
            {
                case "2A": item = (selectedNode.Text == "X1") ? 0 : 1; break;
                case "200mA": item = (selectedNode.Text == "X1") ? 2 : 3; break;
                case "20mA": item = (selectedNode.Text == "X1") ? 4 : 5; break;
                case "2mA": item = (selectedNode.Text == "X1") ? 6 : 7; break;
            }

            if (item < 0)
            {
                MessageBox.Show("Cannot determine calibration range.", gBZA.sMsgTitle,
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            frmCalibration frm = new frmCalibration(selch, Serial, sifch, item);
            frm.ShowDialog();
        }


        void BtLocalApply_Click(object sender, EventArgs e)
        {
            int[] nodeval;
            int nAuxBd;
            int nAuxBdCh;
            int iRng;
            int itype;
            int igain;
            int iRng1;
            stSystemConfig p;


            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg;
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg;


            if (treeView1.SelectedNode == null)
            {
                MessageBox.Show("Not selected a item.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (this.propertyGrid1.SelectedObject != null)
            {
                nodeval = NodeToInteger(treeView1.SelectedNode);
                if (nodeval == null)
                {
                    return;
                }
                if (nodeval[0] < 1)
                {
                    return;
                }


                if (nodeval[0] == 1)
                {
                    return;
                }
                else if (nodeval[0] == 2)
                {
                    gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mConnCfg.mEthernetCfg = (stEthernetCfg)this.propertyGrid1.SelectedObject;
                }
                else if (nodeval[0] == 3)
                {
                    stPropSIF prop = (stPropSIF)this.propertyGrid1.SelectedObject;
                    prop.GetInformation(ref gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg);
                    return;
                }
                else if (nodeval[0] == 4)
                {
                    
                    if (nodeval[1] == 1)
                    {
                        if (nodeval[2] < 1)
                        {
                            return;
                        }
                        iRng = nodeval[2] - 1;
                        if (nodeval[3] < 1)
                        {
                            p.mZimCfg[sifch].ranges.Gen.iac_rng[iRng] = (st_zim_adci_rnginf)this.propertyGrid1.SelectedObject; 
                        }
                        itype = nodeval[3] - 1;

                        if (nodeval[4] < 1)
                        {
                            return;
                        }
                        igain = nodeval[4] - 1;
                        iRng1 = iRng * 2 + igain;
                        if (itype == 0)
                        {
                            p.mZimCfg[sifch].ranges.Gen.mEisIRngCalInfo[iRng1] = (st_zim_Eis_Cal_info)this.propertyGrid1.SelectedObject; 
                        }
                        else
                        {
                            p.mZimCfg[sifch].ranges.Gen.mDummy[iRng1] = (st_zim_dummy)this.propertyGrid1.SelectedObject; 
                        }
                    }
                    else if (nodeval[1] == 2)
                    {
                        if (nodeval[2] < 1)
                        {
                            propidc.GetInformation(ref p.mZimCfg[sifch].ranges.Gen.Idc_rnginf); 
                            return;
                        }
                        else
                        {
                            iRng = nodeval[2] - 1;
                            p.mZimCfg[sifch].ranges.Gen.Idc_rnginf.idcofs[iRng] = (st_zim_Idc_rnginf_Ofs)this.propertyGrid1.SelectedObject; 
                        }
                    }
                    else if (nodeval[1] == 3)
                    {
                        p.mZimCfg[sifch].ranges.Gen.vac_rng = (st_zim_adcv_rnginf)this.propertyGrid1.SelectedObject; 
                    }
                    else if (nodeval[1] == 4)
                    {
                        if (nodeval[2] >= 1 && nodeval[2] < 3)
                        {
                            p.mZimCfg[sifch].ranges.Gen.vdc_rng[nodeval[2] - 1] = (st_zim_adcv_rnginf)this.propertyGrid1.SelectedObject; 
                        }
                    }
                    else if (nodeval[1] == 5)
                    {
                        p.mZimCfg[sifch].ranges.Gen.rtd_rng = (st_zim_adct_rnginf)this.propertyGrid1.SelectedObject; 
                    }
                    else if (nodeval[1] == 6)
                    {
                        p.mZimCfg[sifch].ranges.Gen.mSafety = (st_zim_Safety_inf)this.propertyGrid1.SelectedObject;
                    }
                    gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges.Gen = p.mZimCfg[sifch].ranges.Gen;
                }
                else
                {
                    if (gBZA.IsMCBZA(Serial))
                    {
                        if (nodeval[0] == 5 || nodeval[0] == 6 || nodeval[0] == 7)
                        {
                            nAuxBd = nodeval[1] - 4;
                            if (p.EnaZIM[nAuxBd] == 1 && p.ChkZIM[nAuxBd] == 1)
                            {
                                nAuxBdCh = nodeval[2] - 1;
                                if (nodeval[3] == 1)
                                {
                                    if (nodeval[4] == 1 || nodeval[4] == 2 || nodeval[4] == 3 || nodeval[4] == 4)
                                    {
                                        iRng = nodeval[4] - 1;
                                        p.mZimCfg[nAuxBd].ranges.Aux.iac_gain[nAuxBdCh].items[iRng] = (st_zimaux_iacgain)this.propertyGrid1.SelectedObject;
                                        if (nodeval[5] == 1 || nodeval[5] == 2)
                                        {
                                            igain = nodeval[5] - 1;
                                            iRng1 = iRng * 2 + igain;
                                            p.mZimCfg[nAuxBd].ranges.Aux.mEisIRngCalInfo[nAuxBdCh].items[iRng1] = (st_zim_Eis_Cal_info)this.propertyGrid1.SelectedObject;
                                        }
                                    }
                                }
                                else if (nodeval[3] == 2)
                                {
                                    return;
                                }
                                else if (nodeval[3] == 3)
                                {
                                    p.mZimCfg[nAuxBd].ranges.Aux.vdc_rng[nAuxBdCh] = (st_zim_vdc_rnginf)this.propertyGrid1.SelectedObject;
                                }
                            }
                        }
                        
                    }
                }
            }
            gBZA.SifLnkLst[Serial].mDevInf = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf;
        }

        void BtChangeRange_Click(object sender, EventArgs e)
        {
            int[] nodeval;
            int trng = 0;
            int trng1 = 0;
            int nAuxBd = 0;
            int nAuxBdCh = 0;
            int DummyBase = 1;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg;

            eZimType zimtype = (eZimType)(p.mZimCfg[sifch].info.cModel[0] - 0x30);
            if (treeView1.SelectedNode == null)
            {
                MessageBox.Show("Not selected a item.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error); ;
                return;
            }

            nodeval = NodeToInteger(treeView1.SelectedNode);

            if (nodeval[0] == 4)
            {
                if (nodeval[1] == 1)
                {
                    if (nodeval[2] >= 1 && nodeval[2] < 5)
                    {
                        trng = (nodeval[2] - 1) * 2;

                        if (nodeval[3] == 1 || nodeval[3] == 0)
                        {
                            if (nodeval[4] == 1 || nodeval[4] == 0)
                            {
                                p.mZimCfg[sifch].ranges.Gen.iac_rng[nodeval[2] - 1].gain1 = 1.0;
                                InitEisCalInf(ref p.mZimCfg[sifch].ranges.Gen.mEisIRngCalInfo[trng]);
                            }

                            if (nodeval[4] == 2 || nodeval[4] == 0)
                            {
                                p.mZimCfg[sifch].ranges.Gen.iac_rng[nodeval[2] - 1].gain2 = 1.0;
                                InitEisCalInf(ref p.mZimCfg[sifch].ranges.Gen.mEisIRngCalInfo[trng + 1]);
                            }
                        }
                        if (nodeval[3] == 2 || nodeval[3] == 0)
                        {
                            if (nodeval[4] == 1 || nodeval[4] == 0)
                            {
                                p.mZimCfg[sifch].ranges.Gen.mDummy[trng].R = gBZA.appcfg.RDummy[(nodeval[2] - 1) + DummyBase];
                                p.mZimCfg[sifch].ranges.Gen.mDummy[trng].Ls = gBZA.appcfg.LDummy[(nodeval[2] - 1) + DummyBase];
                            }

                            if (nodeval[4] == 2 || nodeval[4] == 0)
                            {
                                p.mZimCfg[sifch].ranges.Gen.mDummy[trng + 1].R = gBZA.appcfg.RDummy[(nodeval[2] - 1) + DummyBase];
                                p.mZimCfg[sifch].ranges.Gen.mDummy[trng + 1].Ls = gBZA.appcfg.LDummy[(nodeval[2] - 1) + DummyBase];
                            }
                        }

                        RefreshTreeViewStat();
                        RefreshPropertyGrid(treeView1.SelectedNode);
                    }
                }
                else if (nodeval[1] == 1)
                {
                    gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mConnCfg.mEthernetCfg.dhcp = 1;
                    gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mConnCfg.mEthernetCfg.SetGateway("169.254.17.1");
                    gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mConnCfg.mEthernetCfg.SetIPAddress("169.254.17.2");
                    gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mConnCfg.mEthernetCfg.SetSubnetmask("255.255.0.0");
                    RefreshTreeViewStat();
                    RefreshPropertyGrid(treeView1.SelectedNode);
                }
                else if (nodeval[1] == 2)
                {
                    if (nodeval[2] < 1)
                    {
                        for (int i = 0; i < DeviceConstants.MAX_IAC_RNGCNT; i++)
                        {
                            p.mZimCfg[sifch].ranges.Gen.Idc_rnginf.idcofs[i].offset = DeviceConstants.DEV_DEFAULT_IDC_OFFSET;
                        }
                    }
                    else
                    {
                        trng = nodeval[2] - 1;
                        p.mZimCfg[sifch].ranges.Gen.Idc_rnginf.idcofs[trng].offset = DeviceConstants.DEV_DEFAULT_IDC_OFFSET;
                    }

                    RefreshTreeViewStat();
                    RefreshPropertyGrid(treeView1.SelectedNode);
                }
                else if (nodeval[1] == 3)
                {
                    p.mZimCfg[sifch].ranges.Gen.vac_rng.gain = 1.0;
                    p.mZimCfg[sifch].ranges.Gen.vac_rng.offset = 0.0;
                    RefreshPropertyGrid(treeView1.SelectedNode);
                }
                else if (nodeval[1] == 4)
                {
                    if (nodeval[2] >= 1 && nodeval[2] < 3)
                    {
                        if (nodeval[2] - 1 == 0) ChangeRangeMaxMin(ref p.mZimCfg[sifch].ranges.Gen.vdc_rng[nodeval[2] - 1]);
                        else ChangeRangeMaxMin(ref p.mZimCfg[sifch].ranges.Gen.vdc_rng[nodeval[2] - 1], true);
                    }
                    RefreshTreeViewStat();
                    RefreshPropertyGrid(treeView1.SelectedNode);
                }
                else if (nodeval[1] == 5)
                {
                    p.mZimCfg[sifch].ranges.Gen.rtd_rng.gain = 1.0;
                    p.mZimCfg[sifch].ranges.Gen.rtd_rng.offset = 0.0;
                    RefreshTreeViewStat();
                    RefreshPropertyGrid(treeView1.SelectedNode);
                }
                else if (nodeval[1] == 6)
                {
                    p.mZimCfg[sifch].ranges.Gen.mSafety.Initialize(zimtype);
                    RefreshPropertyGrid(treeView1.SelectedNode);
                }
            }
            else
            {
                if (gBZA.IsMCBZA(Serial))
                {
                    if (nodeval[0] == 5 || nodeval[0] == 6 || nodeval[0] == 7)
                    {
                        if (nodeval[0] == 5 || nodeval[0] == 6 || nodeval[0] == 7)
                        {
                            nAuxBd = nodeval[1] - 4;
                            if (p.EnaZIM[nAuxBd] == 1 && p.ChkZIM[nAuxBd] == 1)
                            {
                                nAuxBdCh = nodeval[2] - 1;
                                if (nodeval[3] == 1)
                                {
                                    if (nodeval[4] == 1 || nodeval[4] == 2 || nodeval[4] == 3 || nodeval[4] == 4)
                                    {
                                        trng = nodeval[4] - 1;
                                        if(nodeval[5] == 0)
                                        {
                                            p.mZimCfg[nAuxBd].ranges.Aux.iac_gain[nAuxBdCh].items[trng].iac_gain1 = 1.0;
                                            p.mZimCfg[nAuxBd].ranges.Aux.iac_gain[nAuxBdCh].items[trng].iac_gain2 = 1.0;
                                        }    
                                        else if (nodeval[5] == 1 || nodeval[5] == 2)
                                        {
                                            trng1 = trng * 2 + (nodeval[5]-1);
                                            InitEisCalInf(ref p.mZimCfg[nAuxBd].ranges.Aux.mEisIRngCalInfo[nAuxBdCh].items[trng1]);
                                        }
                                    }

                                    RefreshTreeViewStat();
                                    RefreshPropertyGrid(treeView1.SelectedNode);
                                }
                                else if (nodeval[3] == 2)
                                {
                                    return;
                                }
                                else if (nodeval[3] == 3)
                                {
                                    ChangeRangeMaxMin(ref p.mZimCfg[nAuxBd].ranges.Aux.vdc_rng[nAuxBdCh], true);
                                    RefreshTreeViewStat();
                                    RefreshPropertyGrid(treeView1.SelectedNode);
                                }
                            }
                        }

                    }
                }
            }
            gBZA.SifLnkLst[Serial].mDevInf = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf;
        }
        
        void Reporting_Click(object sender, EventArgs e)
        {
            if(File.Exists("C:\\ZIVE DATA\\ZM\\Infor\\ZM_Report.src") == false)
            {
                MessageBox.Show("The file \"C:\\ZIVE DATA\\ZM\\Infor\\ZM_Report.src\" cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if(gBZA.SifLnkLst.ContainsKey(Serial) == false)
            {
                MessageBox.Show("There are no device selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (GetChRun((enTestState)gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[sifch].TestStatus))
            {
                MessageBox.Show("Calibration cannot proceed because the current channel is in use.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            string sexcelfile = string.Format("{0}\\RPT_{0}.xlsx", Serial);
            sexcelfile = Path.Combine(gBZA.appcfg.PathLog, sexcelfile);

            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf;
            string sBdType;
            int ChCount = 0;
            int AuxBdCount = 0;
            bool bBdEnable;
            bool bAuxSht = false;

            int i,j,k,l;
            int nlist;
            string sFilename;
            string sFilename1;
            string sTitle;
            string sItem;
            string sBdSerial;
            double dVdcx1;
            double dVdcx10;
            double dAuxChVdc;
            double dGain = 1.0;
            double dOffset = 0.0;
            string sDesc;

            Excel.Application xApp = null;
            Excel.Workbook xWB = null;
            Excel.Worksheet xShtheader = null;
            Excel.Worksheet[] xShtch = new Excel.Worksheet[7];
            Excel.Worksheet xShtItem = null;
            sFilename = gBZA.GetCalibLogFileName(Serial);

            for (i = 0; i < 7; i++)
            {
                xShtch[i] = null;
            }


            if (File.Exists(sexcelfile))
            {
                if (MessageBox.Show("The same file already exists.\r\n Are you sure you want to overwrite the file? ", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                {
                    return;
                }

                try
                {
                    File.Delete(sexcelfile);
                }
                catch 
                {
                    MessageBox.Show("The change to the file failed.\r\n Check if the file is missing or already in use, and try again.");
                    return;
                }
            }

            if (File.Exists(sexcelfile) == false)
            {
                File.Copy("C:\\ZIVE DATA\\ZM\\Infor\\ZM_Report.src", sexcelfile, true);
            }
            this.Cursor = Cursors.WaitCursor;
            try
            {
                xApp = new Excel.Application();
                xApp.Visible = false;
                
                xWB = xApp.Workbooks.Open(sexcelfile);
                xShtheader = xWB.Worksheets.get_Item(1) as Excel.Worksheet; //Header
                for (i = 0; i < 7; i++)
                {
                    xShtch[i] = xWB.Worksheets.get_Item(i + 2) as Excel.Worksheet;
                }


                //xShtheader.Cells[5, 4] = sOperator;
                //xShtheader.Cells[6, 4] = sSignature;
                xShtheader.Cells[7, 4] = DateTime.Now.ToString("yyyy-MM-dd");
                
                sTitle = "SIF";
                sBdType = gBZA.GetIniStrData(sTitle, "ModelType", sFilename, "");

                xShtheader.Cells[10, 1] = gBZA.GetIniStrData(sTitle, "ModelName", sFilename, "");
                xShtheader.Cells[10, 2] = gBZA.GetIniStrData(sTitle, "ModelDesc", sFilename, "");
                xShtheader.Cells[10, 3] = gBZA.GetIniStrData(sTitle, "SerialNumber", sFilename, "");
                xShtheader.Cells[10, 4] = gBZA.GetIniStrData(sTitle, "TestDate", sFilename, DateTime.Now.ToString("yyyy-MM-dd"));

                xShtheader.Cells[14, 1] = gBZA.GetIniStrData(sTitle, "SerialNumber", sFilename, "");
                xShtheader.Cells[14, 2] = gBZA.GetIniStrData(sTitle, "MacAddress", sFilename, "");
                xShtheader.Cells[14, 3] = gBZA.GetIniStrData(sTitle, "BoardVersion", sFilename, "");
                xShtheader.Cells[14, 4] = gBZA.GetIniStrData(sTitle, "FirmwareVersion", sFilename, "");

                xShtheader.Cells[16, 4] = gBZA.GetIniStrData(sTitle, "ChannelInfo", sFilename, "");
                ChCount = gBZA.GetIniIntData(sTitle, "ChCount", sFilename, 0);
                AuxBdCount = gBZA.GetIniIntData(sTitle, "AuxBoardCount", sFilename, 0);

                dVdcx1 = gBZA.GetIniDoubleData(sTitle, "Voltage_H", sFilename, 0.0);
                dVdcx10 = gBZA.GetIniDoubleData(sTitle, "Voltage_L", sFilename, 0.0);
                dAuxChVdc = gBZA.GetIniDoubleData(sTitle, "AuxCh_Voltage", sFilename, 0.0);
                
                sTitle = "ZM";
                xShtheader.Cells[30, 1] = gBZA.GetIniStrData(sTitle, "Version", sFilename, "");
                xShtheader.Cells[35, 2] = dVdcx1;
                xShtheader.Cells[36, 2] = dVdcx10;
             

                for (i = 0; i < 4; i++)
                {
                    sTitle = string.Format("BOARD{0}", i + 1);
                    bBdEnable = gBZA.GetIniboolData(sTitle, "Enabled", sFilename, false);
                    bAuxSht = false;

                    if (bBdEnable == false)
                    {
                        xShtheader.Cells[18 + i, 2] = "";
                        xShtheader.Cells[18 + i, 3] = "";
                        xShtheader.Cells[18 + i, 4] = "";
                        if (i == 0)
                        {
                            xApp.DisplayAlerts = false;
                            xShtch[i].Delete();
                            xApp.DisplayAlerts = true;
                        }
                        else
                        {
                            xApp.DisplayAlerts = false;
                            xShtch[i].Delete();
                            xShtch[i + 3].Delete();
                            xApp.DisplayAlerts = true;
                        }
                        continue;
                    }
                    else
                    {

                        sBdSerial = gBZA.GetIniStrData(sTitle, "SerialNumber", sFilename, "");
                        xShtheader.Cells[18 + i, 2] = sBdSerial;
                        xShtheader.Cells[18 + i, 3] = gBZA.GetIniStrData(sTitle, "FirmareVersion", sFilename, "");
                        xShtheader.Cells[18 + i, 4] = string.Format("{0} {1}", gBZA.GetIniStrData(sTitle, "BoardName", sFilename, ""), gBZA.GetIniStrData(sTitle, "BoardVersion", sFilename, ""));

                        sFilename1 = gBZA.GetCalibLogFileName(Serial, sBdSerial);

                        if (i == 0) xShtItem = xShtch[i];
                        else
                        {
                            if (sBdType == "MCBZA")
                            {
                                xShtItem = xShtch[i + 3];
                                xApp.DisplayAlerts = false;
                                xShtch[i].Delete();
                                xApp.DisplayAlerts = true;
                                bAuxSht = true;
                            }
                            else
                            {
                                xShtItem = xShtch[i];
                                xApp.DisplayAlerts = false;
                                xShtch[i + 3].Delete();
                                xApp.DisplayAlerts = true;
                            }
                        }
                    }
          
                    xShtItem.Cells[1, 1] = string.Format("S / N #{0}", sBdSerial);
                    nlist = Math.Min(gBZA.GetIniIntData(sTitle, "Count", sFilename1, 4), 4);
                    if(bAuxSht == false)
                    { 
                        sTitle = "VDC_X1";
                        nlist = Math.Min(gBZA.GetIniIntData(sTitle, "Count", sFilename1, 4), 4);
                        for (j = 0; j < nlist; j++)
                        {
                            sItem = string.Format("Target{0}", j + 1);
                            xShtItem.Cells[j + 3, 3] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                            sItem = string.Format("Real{0}", j + 1);
                            xShtItem.Cells[j + 3, 4] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                        }
                        dGain = gBZA.GetIniDoubleData(sTitle, "Gain", sFilename1, 0.0);
                        dOffset = gBZA.GetIniDoubleData(sTitle, "Offset", sFilename1, 0.0);
                        sDesc = string.Format("with {0:0.0V} range(Gain:{1:0.0#####}, Offset:{2:0.0#####}).", dVdcx1, dGain, dOffset);


                        xShtItem.Cells[7, 1] = sDesc;

                        sTitle = "VDC_X10";
                        nlist = Math.Min(gBZA.GetIniIntData(sTitle, "Count", sFilename1, 4), 4);
                        for (j = 0; j < nlist; j++)
                        {
                            sItem = string.Format("Target{0}", j + 1);
                            xShtItem.Cells[j + 8, 3] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                            sItem = string.Format("Real{0}", j + 1);
                            xShtItem.Cells[j + 8, 4] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                        }
                        dGain = gBZA.GetIniDoubleData(sTitle, "Gain", sFilename1, 0.0);
                        dOffset = gBZA.GetIniDoubleData(sTitle, "Offset", sFilename1, 0.0);
                        xShtItem.Cells[12, 1] = string.Format("with {0:0.0V} range(Gain:{1:0.0#####}, Offset:{2:0.0#####}).", dVdcx10, dGain, dOffset);

                        sTitle = "RTD";
                        nlist = Math.Min(gBZA.GetIniIntData(sTitle, "Count", sFilename1, 4), 4);
                        for (j = 0; j < nlist; j++)
                        {
                            sItem = string.Format("Target{0}", j + 1);
                            xShtItem.Cells[j + 14, 3] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                            sItem = string.Format("Real{0}", j + 1);
                            xShtItem.Cells[j + 14, 4] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                        }
                        dGain = gBZA.GetIniDoubleData(sTitle, "Gain", sFilename1, 0.0);
                        dOffset = gBZA.GetIniDoubleData(sTitle, "Offset", sFilename1, 0.0);
                        xShtItem.Cells[18, 1] = string.Format("with PT100 sensor(Gain:{0:0.0#####}, Offset:{1:0.0#####}).", dGain, dOffset);

                        sTitle = "IDC";
                        nlist = 8;
                        for (j = 0; j < nlist; j++)
                        {
                            sItem = string.Format("Range{0}_Offset", j + 1);
                            xShtItem.Cells[j + 20, 3] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                            sItem = string.Format("Range{0}_Read", j + 1);
                            xShtItem.Cells[j + 20, 4] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0) * 1000;
                        }

                        for (j = 0; j < 4; j++)
                        {
                            sTitle = string.Format("EIS{0}", j + 1);
                            xShtItem.Cells[j + 30, 1] = gBZA.GetIniDoubleData(sTitle, "Range", sFilename1, 0.0) * 1000;
                            xShtItem.Cells[j + 30, 2] = gBZA.GetIniDoubleData(sTitle, "DummyR", sFilename1, 0.0);
                            xShtItem.Cells[j + 30, 3] = gBZA.GetIniDoubleData(sTitle, "Frequency", sFilename1, 0.0);
                            xShtItem.Cells[j + 30, 4] = gBZA.GetIniDoubleData(sTitle, "Zmag", sFilename1, 0.0);
                            xShtItem.Cells[j + 30, 5] = gBZA.GetIniDoubleData(sTitle, "Zphase", sFilename1, 0.0);
                        }
                    }
                    else
                    {
                        l = 3;
                        for (j = 0; j < 4; j++)
                        {
                            sTitle = string.Format("AUXBD{0}CH{1}_VDC", i, j + 1);
                            nlist = Math.Min(gBZA.GetIniIntData(sTitle, "Count", sFilename1, 4), 4);
                            for (j = 0; j < nlist; j++)
                            {
                                sItem = string.Format("Target{0}", j + 1);
                                xShtItem.Cells[l, 3] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                                sItem = string.Format("Real{0}", j + 1);
                                xShtItem.Cells[l, 4] = gBZA.GetIniDoubleData(sTitle, sItem, sFilename1, 0.0);
                                l++;
                            }

                            dGain = gBZA.GetIniDoubleData(sTitle, "Gain", sFilename1, 0.0);
                            dOffset = gBZA.GetIniDoubleData(sTitle, "Offset", sFilename1, 0.0);
                            sDesc = string.Format("with {0:0.0V} range(Gain:{1:0.0#####}, Offset:{2:0.0#####}) of auxiliary channel {3}.", dAuxChVdc, dGain, dOffset, j + 1);
                            xShtItem.Cells[l, 1] = sDesc;
                            l++;
                        }
                        l++;
                        for (j = 0; j < 4; j++)
                        {
                            for (k = 0; k < 4; k++)
                            {
                                sTitle = string.Format("AUXBD{0}CH{1}_EIS", i, j + 1,k+1);
                                xShtItem.Cells[l, 1] = gBZA.GetIniDoubleData(sTitle, "Range", sFilename1, 0.0) * 1000;
                                xShtItem.Cells[l, 2] = gBZA.GetIniDoubleData(sTitle, "DummyR", sFilename1, 0.0);
                                xShtItem.Cells[l, 3] = gBZA.GetIniDoubleData(sTitle, "Frequency", sFilename1, 0.0);
                                xShtItem.Cells[l, 4] = gBZA.GetIniDoubleData(sTitle, "Zmag", sFilename1, 0.0);
                                xShtItem.Cells[l, 5] = gBZA.GetIniDoubleData(sTitle, "Zphase", sFilename1, 0.0);
                                l++;
                            }
                        }
                    }
                }
            }
            catch
            {
            }
            finally
            {
                xWB.Save();
                xApp.Visible = true;
                //              xWB.Close(true);
                //              xApp.Quit();
                /*for (i = 0; i < 4; i++)
                {
                    if (xShtch[i] != null) 
                    {
                        ReleaseExcelObject(xShtch[i]);
                    }
                }
                ReleaseExcelObject(xShtheader);
                ReleaseExcelObject(xWB);
                ReleaseExcelObject(xApp);*/

            }
            //           if(MessageBox.Show("An Excel file has been created successfully.\r\n Do you want to open the file to check it?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Error) == DialogResult.Yes)
            //           {
            //           }
            this.Cursor = Cursors.Default;
        }
        private void ReleaseExcelObject(object obj)
        {
            try
            {
                if (obj != null)
                {
                    Marshal.ReleaseComObject(obj);
                    obj = null;
                }
            }
            catch (Exception ex)
            {
                obj = null;
                throw ex;
            }
            finally
            {
                GC.Collect();
            }
        }

        void ChangeFwSIF_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "sif";
            dlg.Filter = "sif files (*.sif)|*.sif|All files (*.*)|*.*";
            dlg.Title = "Select the SIF firmware file to update.";

            dlg.FileName = Path.Combine(gBZA.appcfg.PathSIFFW, gBZA.appcfg.FileNameSIFFW);
            dlg.InitialDirectory = gBZA.appcfg.PathSIFFW;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                Cursor.Current = Cursors.WaitCursor;
                
                if (MBZA_MapUtil.UploadSifFirmware(Serial, dlg.FileName) == false)
                {
                    Cursor.Current = Cursors.Default;
                    MessageBox.Show("Firmware change failed.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                    

                gBZA.appcfg.PathSIFFW = Path.GetDirectoryName(dlg.FileName);
                gBZA.appcfg.FileNameSIFFW = Path.GetFileName(dlg.FileName);

                Cursor.Current = Cursors.Default;
                gBZA.ShowInfoBox("The firmware change has been successful. \r\n\r\nPlease restart the device.");

            }
        }

        void ChangeFwZIM_Click(object sender, EventArgs e)
        {
            int[] nodeval;
            int nBoard;
            
            if (treeView1.SelectedNode == null)
            {
                MessageBox.Show("Not selected a item.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            nodeval = NodeToInteger(treeView1.SelectedNode);
            if (nodeval == null)
            {
                return;
            }
            if (nodeval[0] < 4 && nodeval[0] > 7)
            {
                return;
            }
            nBoard = nodeval[0] - 4;

            frmBurnZIM frm = new frmBurnZIM(Serial, nBoard, true);
            frm.ShowDialog();

        }
        
        void BtTestZim_Click(object sender, EventArgs e)
        {
            int[] nodeval;
            int nBoard;

            if (treeView1.SelectedNode == null)
            {
                MessageBox.Show("Not selected a item.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            nodeval = NodeToInteger(treeView1.SelectedNode);
            if (nodeval == null)
            {
                return;
            }
            if (nodeval[0] < 4 && nodeval[0] > 7)
            {
                return;
            }
            nBoard = nodeval[0] - 4;

            frmTestDevice frm = new frmTestDevice(Serial, nBoard, true);
            frm.ShowDialog();
        }


        private void clearCalibrationItemsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        

        private void addCalibrationItemsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void addCalibrationCheckedItemsToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
            
        private void calibrationStartToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void acculacyCheckStartToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }


        private void treeView1_MouseDown(object sender, MouseEventArgs e)
        {
 //           if (e.Button == MouseButtons.Right)
//            {
                Point pt = new Point(e.X, e.Y);
                treeView1.PointToClient(pt);
                TreeNode Node = treeView1.GetNodeAt(pt);

                if (Node != null)
                {
        //            if (Node.Bounds.Contains(pt))
        //            {
                        if (treeView1.SelectedNode != null)
                        {
                            treeView1.SelectedNode.BackColor = treeView1.BackColor;
                            treeView1.SelectedNode.ForeColor = treeView1.ForeColor;
                        }
                        treeView1.SelectedNode = Node;
                        treeView1.SelectedNode.BackColor = SystemColors.Highlight;
                        treeView1.SelectedNode.ForeColor = SystemColors.HighlightText;

         //           }
                }
 //           }
        }
        private void ChangeRangeMaxMin(ref st_zim_adci_rnginf inf, bool bInit = false)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.realmax, inf.maximum, inf.minimum, bInit);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {
                inf.realmax = mdlg.RealMaxVal;
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                if (mdlg.bInit == true)
                {
                    inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                    inf.gain1 = 1.0;
                    inf.gain2 = 1.0;
                }
                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }
        
        private void ChangeRangeMaxMin(ref st_zim_adcv_rnginf inf,bool bInit = false)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.realmax, inf.maximum, inf.minimum, bInit);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {

                inf.realmax = mdlg.RealMaxVal;
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                if (mdlg.bInit == true)
                {
                    inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                    inf.gain = 1.0;
                    inf.offset = 0.0;
                }

                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }
        
        private void ChangeRangeMaxMin(ref st_zim_vdc_rnginf inf, bool bInit = false)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.realmax, inf.maximum, inf.minimum, bInit);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {
                inf.realmax = mdlg.RealMaxVal;
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                if (mdlg.bInit == true)
                {
                    inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                    inf.gain = 1.0;
                    inf.offset = 0.0;
                }
                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }

        private void ChangeRangeMaxMin(ref st_zim_adct_rnginf inf, bool bInit = false)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.maximum, inf.minimum, bInit);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;

                if (mdlg.bInit == true)
                {
                    inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                    inf.gain = 1.0;
                    inf.offset = 0.0;
                }
                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }

        private void ChangeRangeMaxMin(ref st_zim_adc_rnginf inf, bool bInit = false)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.maximum, inf.minimum, bInit);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                if (mdlg.bInit == true)
                {
                    inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                    inf.gain = 1.0;
                    inf.offset = 0.0;
                }
                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }

        private bool DoubleCharChecker(string str)
        {
            foreach (char c in str)
            {
                if (!c.Equals('-') && !c.Equals('.') && !Char.IsDigit(c) && !c.Equals('e') && !c.Equals('E'))
                    return false;
            }
            return true;
        }

        public string GetrangeFileName(string s, int c)
        {
            var p = gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c];
            return p.GetSerialNumber() + "_Ranges.xml";
        }
        void SaveToXml(string s, int c)
        {
            string sFullPath;

            sFullPath = Path.Combine(gBZA.appcfg.PathRangeInfo, GetrangeFileName(s, c));
            stRangeFile inf = new stRangeFile();

            inf.mZimCfg = gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c]; 
            

            XmlSerializer writer = new XmlSerializer(inf.GetType());
            StreamWriter file = new StreamWriter(sFullPath);
            try
            {
                writer.Serialize(file, inf);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            file.Close();
        }

        void SaveToXml(string s, int c, string sFullPath)
        {
            var p = gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c];

            stRangeFile inf = new stRangeFile();

            inf.mZimCfg = gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c];
            
            XmlSerializer writer = new XmlSerializer(inf.GetType());
            StreamWriter file = new StreamWriter(sFullPath);
            try
            {
                writer.Serialize(file, inf);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            file.Close();
        }

        void LoadFromXml(string s, int c )
        {
            stRangeFile_1 inf_1 = new stRangeFile_1();
            stRangeFile inf = new stRangeFile();
            string sFullPath;
            XmlSerializer Reader;

            sFullPath = Path.Combine(gBZA.appcfg.PathRangeInfo, GetrangeFileName(s, c));

            var file_inf = new FileInfo(sFullPath);
            StreamReader file = new StreamReader(sFullPath);


            try
            {
                if (file_inf.Length == MBZA_Constant.RANGE_XML_FILESIZE_1)
                {
                    Reader = new XmlSerializer(inf_1.GetType());
                    inf_1 = (stRangeFile_1)Reader.Deserialize(file);
                    gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c].ranges.Gen.ToWritePtr(inf_1.ranges.ToByteArray());
                }
                else
                {
                    Reader = new XmlSerializer(inf.GetType());
                    inf = (stRangeFile)Reader.Deserialize(file);
                    gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c].ToWritePtr(inf.mZimCfg.ToByteArray());
                }
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            file.Close();
        }

        void LoadFromXml(string s, int c, string sFullPath)
        {
            stRangeFile_1 inf_1 = new stRangeFile_1();
            stRangeFile inf = new stRangeFile();
            StreamReader file = new StreamReader(sFullPath);
            XmlSerializer Reader;

            var file_inf = new FileInfo(sFullPath);

            try
            {
                if (file_inf.Length == MBZA_Constant.RANGE_XML_FILESIZE_1)
                {
                    Reader = new XmlSerializer(inf_1.GetType());
                    inf_1 = (stRangeFile_1)Reader.Deserialize(file);
                    gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c].ranges.Gen.ToWritePtr(inf_1.ranges.ToByteArray());
                }
                else
                {
                    Reader = new XmlSerializer(inf.GetType());
                    inf = (stRangeFile)Reader.Deserialize(file);
                    gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c].ToWritePtr(inf.mZimCfg.ToByteArray());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            file.Close();
        }

        private void treeView1_DrawNode(object sender, DrawTreeNodeEventArgs e)
        {
            
           
        }
        
        private void toolStripVdcX1_Click(object sender, EventArgs e)
        {
            frmCalibVdc frm = new frmCalibVdc(selch, Serial, sifch, 0);
            frm.ShowDialog();

            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);
        }

        private void toolStripVdcX10_Click(object sender, EventArgs e)
        {
            frmCalibVdc frm = new frmCalibVdc(selch, Serial, sifch, 1);
            frm.ShowDialog();

            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);
        }

        private void toolStripCalibTemp_Click(object sender, EventArgs e)
        {
            frmCalibRtd frm = new frmCalibRtd(selch, Serial, sifch);
            frm.ShowDialog();

            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);
        }

        private void toolStripzerophase_Click(object sender, EventArgs e)
        {
            frmCalibration frm = new frmCalibration(selch, Serial, sifch, -1);
            frm.ShowDialog();

            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);
        }

        private void toolStripCalib0_Click(object sender, EventArgs e)
        {
            frmCalibration frm = new frmCalibration(selch, Serial, sifch, 0);
            frm.ShowDialog();

            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);
        }

        private void toolStripCalib1_Click(object sender, EventArgs e)
        {
            frmCalibration frm = new frmCalibration(selch, Serial, sifch, 1);
            frm.ShowDialog();

            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);
        }

        private void toolStripCalib2_Click(object sender, EventArgs e)
        {
            frmCalibration frm = new frmCalibration(selch,Serial, sifch, 2);
            frm.ShowDialog();

            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);
        }

        private void toolStripCalib3_Click(object sender, EventArgs e)
        {
            frmCalibration frm = new frmCalibration(selch, Serial, sifch, 3);
            frm.ShowDialog();

            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);
        }

        private void toolStripControlDevice_Click(object sender, EventArgs e)
        {

        }

        private void toolStripCheckHT_Click(object sender, EventArgs e)
        {

        }

        private void toolStripTest_Click(object sender, EventArgs e)
        {

        }

        

        private void loadChFileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Title = "Load the information of the ranges";
            dlg.Multiselect = false;
            dlg.DefaultExt = "xml";
            dlg.Filter = "XML files (*.xml)|*.xml|All files (*.*)|*.*";
            dlg.FileName = GetrangeFileName(Serial, sifch);
            dlg.InitialDirectory = gBZA.appcfg.PathRangeInfo;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                LoadFromXml(Serial, sifch, dlg.FileName);
                gBZA.appcfg.PathRangeInfo = Path.GetDirectoryName(dlg.FileName);

                RefreshTreeViewStat();
                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }

        private void saveChFileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog dlg = new SaveFileDialog();
            dlg.Title = "Saves the information of the ranges";
            dlg.DefaultExt = "xml";
            dlg.Filter = "XML files (*.xml)|*.xml|All files (*.*)|*.*";

            dlg.FileName = GetrangeFileName(Serial, sifch);
            dlg.InitialDirectory = gBZA.appcfg.PathRangeInfo;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                SaveToXml(Serial, sifch, dlg.FileName);
                gBZA.appcfg.PathRangeInfo = Path.GetDirectoryName(dlg.FileName);

            }
        }


        private void toolStripAppDummy_Click(object sender, EventArgs e)
        {
            int i = 0;
            int j = 0;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            eZimType zimtype = (eZimType)(p.info.cModel[0] - 0x30);

            for (i = 0; i < MBZA_Constant.MAX_IRANGE; i++)
            {
                j = i / 2;
                //p.ranges[0].mDummy[i].Ls = gBZA.appcfg.LDummy[j + 1];
                //p.ranges[0].mDummy[i].R = gBZA.appcfg.RDummy[j + 1];
                p.ranges.Gen.mDummy[i].Ls = gBZA.appcfg.LDummy[j + 1];
                p.ranges.Gen.mDummy[i].R = gBZA.appcfg.RDummy[j + 1]; // 배열
            }


            //p.ranges[0].mSafety.MaxPower = gBZA.appcfg.Power;
            p.ranges.Gen.mSafety.MaxPower = gBZA.appcfg.Power; // 배열
            gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch] = p;
            RefreshTreeViewStat();
            RefreshPropertyGrid(treeView1.SelectedNode);

        }

        void InitIacRangeInf(ref st_zim_adci_rnginf prng, double realmax, double max, double min)
        {
            prng.realmax = realmax;
            prng.maximum = max;
            prng.minimum = min;
            prng.factor = (max - min) / DeviceConstants.ADC_IAC_RESOLUTION;

            prng.controlgain = DeviceConstants.ADC_IAC_CONTROLGAIN0;
            prng.gain1 = 1.0;
            prng.gain2 = 1.0;
        }

        private void InitRangeInfo(ref st_zim_rnginf tRanges, eZimType zimtype)
        {
            int i = 0;
            int j = 0;

            tRanges.Gen.ID = DeviceConstants.ID_RANGEINFO;
            for (i = 0; i < MBZA_Constant.MAX_IRANGE; i++)
            {
                InitEisCalInf(ref tRanges.Gen.mEisIRngCalInfo[i]);
            }
            tRanges.Gen.Idc_rnginf.Initialize();
            for (i = 0; i < MBZA_Constant.MAX_IRANGE; i++)
            {
                j = i / 2;
                tRanges.Gen.mDummy[i].Ls = gBZA.appcfg.LDummy[j + 1];
                tRanges.Gen.mDummy[i].R = gBZA.appcfg.RDummy[j + 1];

            }



            //PT-1000 - 1000ohm : 0'C, RREF - 4000ohm
            //PT-100  -  100ohm : 0'C. RREF -  400ohm

            tRanges.Gen.mSafety.MaxPower = gBZA.appcfg.Power;

            tRanges.Gen.rtd_rng.maximum = DeviceConstants.ADC_RTD_CONST_MAX;
            tRanges.Gen.rtd_rng.minimum = DeviceConstants.ADC_RTD_CONST_MIN;
            tRanges.Gen.rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT100;
            tRanges.Gen.rtd_rng.gain = 1.0;
            tRanges.Gen.rtd_rng.offset = 0.0;

            InitIacRangeInf(ref tRanges.Gen.iac_rng[0], DeviceConstants.ADC_IAC_RNG1_RMAX, DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            InitIacRangeInf(ref tRanges.Gen.iac_rng[1], DeviceConstants.ADC_IAC_RNG2_RMAX, DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            InitIacRangeInf(ref tRanges.Gen.iac_rng[2], DeviceConstants.ADC_IAC_RNG3_RMAX, DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);
            InitIacRangeInf(ref tRanges.Gen.iac_rng[3], DeviceConstants.ADC_IAC_RNG4_RMAX, DeviceConstants.ADC_IAC_RNG4_MAX, DeviceConstants.ADC_IAC_RNG4_MIN);

            tRanges.Gen.vac_rng.maximum = DeviceConstants.ADC_VAC_RNG_MAX;
            tRanges.Gen.vac_rng.minimum = DeviceConstants.ADC_VAC_RNG_MIN;
            tRanges.Gen.vac_rng.factor = DeviceConstants.ADC_VAC_RNG_FACTOR;
            tRanges.Gen.vac_rng.gain = 1.0;
            tRanges.Gen.vac_rng.offset = 0.0;

            tRanges.Gen.vac_rng.maximum = DeviceConstants.ADC_VAC_RNG_MAX;
            tRanges.Gen.vac_rng.minimum = DeviceConstants.ADC_VAC_RNG_MIN;
            tRanges.Gen.vac_rng.factor = DeviceConstants.ADC_VAC_RNG_FACTOR;
            tRanges.Gen.vac_rng.gain = 1.0;
            tRanges.Gen.vac_rng.offset = 0.0;

            if (zimtype == eZimType.BZA100 || zimtype == eZimType.BZA60)
            {
                tRanges.Gen.vdc_rng[0].maximum = DeviceConstants.ADC_VDC_RNG0_MAX1;
                tRanges.Gen.vdc_rng[0].minimum = DeviceConstants.ADC_VDC_RNG0_MIN1;
                tRanges.Gen.vdc_rng[0].factor = DeviceConstants.ADC_VDC_RNG0_FACTOR;

                tRanges.Gen.vdc_rng[1].maximum = DeviceConstants.ADC_VDC_RNG1_MAX1;
                tRanges.Gen.vdc_rng[1].minimum = DeviceConstants.ADC_VDC_RNG1_MIN1;
                tRanges.Gen.vdc_rng[1].factor = DeviceConstants.ADC_VDC_RNG1_FACTOR;
            }
            else if (zimtype == eZimType.BZAAUX1)
            {
                tRanges.Aux.vdc_rng[0].maximum = DeviceConstants.ADC_AUX_VDC_MAX1;
                tRanges.Aux.vdc_rng[0].minimum = DeviceConstants.ADC_AUX_VDC_MIN1;
                tRanges.Aux.vdc_rng[0].factor = DeviceConstants.ADC_AUX_VDC_FACTOR1;

                tRanges.Aux.vdc_rng[1].maximum = DeviceConstants.ADC_AUX_VDC_MAX1;
                tRanges.Aux.vdc_rng[1].minimum = DeviceConstants.ADC_AUX_VDC_MIN1;
                tRanges.Aux.vdc_rng[1].factor = DeviceConstants.ADC_AUX_VDC_FACTOR1;
            }
            else
            {
                tRanges.Gen.vdc_rng[0].maximum = DeviceConstants.ADC_VDC_RNG0_MAX;
                tRanges.Gen.vdc_rng[0].minimum = DeviceConstants.ADC_VDC_RNG0_MIN;
                tRanges.Gen.vdc_rng[0].factor = DeviceConstants.ADC_VDC_RNG0_FACTOR;

                tRanges.Gen.vdc_rng[1].maximum = DeviceConstants.ADC_VDC_RNG1_MAX;
                tRanges.Gen.vdc_rng[1].minimum = DeviceConstants.ADC_VDC_RNG1_MIN;
                tRanges.Gen.vdc_rng[1].factor = DeviceConstants.ADC_VDC_RNG1_FACTOR;
            }

            if (zimtype == eZimType.BZA500)
            {
                tRanges.Gen.vdc_rng[0].realmax = DeviceConstants.ADC_VDC_RNG0_RMAX1;
                tRanges.Gen.vdc_rng[1].realmax = DeviceConstants.ADC_VDC_RNG1_RMAX1;
            }
            else if (zimtype == eZimType.BZA100)
            {
                tRanges.Gen.vdc_rng[0].realmax = DeviceConstants.ADC_VDC_RNG0_RMAX2;
                tRanges.Gen.vdc_rng[1].realmax = DeviceConstants.ADC_VDC_RNG1_RMAX2;
            }
            else if (zimtype == eZimType.BZA60)
            {
                tRanges.Gen.vdc_rng[0].realmax = DeviceConstants.ADC_VDC_RNG0_RMAX3;
                tRanges.Gen.vdc_rng[1].realmax = DeviceConstants.ADC_VDC_RNG1_RMAX3;
            }
            else if (zimtype == eZimType.BZAAUX1)
            {
                tRanges.Aux.vdc_rng[0].realmax = DeviceConstants.ADC_AUX_VDC_RMAX1;
                tRanges.Aux.vdc_rng[1].realmax = DeviceConstants.ADC_AUX_VDC_RMAX1;
            }
            else
            {
                tRanges.Gen.vdc_rng[0].realmax = DeviceConstants.ADC_VDC_RNG0_RMAX0;
                tRanges.Gen.vdc_rng[1].realmax = DeviceConstants.ADC_VDC_RNG1_RMAX0;
            }

        }

        private void RefreshTreeProc()
        {
            bool berr = false;
            bool bconn = true;
            if (gBZA.SifLnkLst.ContainsKey(Serial) == false)
            {
                berr = true;
            }
            else
            {
                if (gBZA.SifLnkLst[Serial].MBZAIF.bConnect == false)
                {
                    bconn = false;
                }
            }
            if (berr || bconn == false)
            {
                toolStripSplitButton1.Enabled = false;
                toolStripSplitButton2.Enabled = false;

                propertyGrid1.Enabled = false;
            }
            else
            {
                toolStripSplitButton1.Enabled = true;
                toolStripSplitButton2.Enabled = true;

                propertyGrid1.Enabled = true;
            }
            if(berr)
            {
                bFirst = false;
                RefreshTreeViewErr();
                RefreshPropertyGrid(treeView1.SelectedNode);
            }
            else
            {
                if (bFirst == true)
                {
                    RefreshTreeViewStat();
                    RefreshPropertyGrid(treeView1.SelectedNode);
                }
                else
                {
                    bFirst = true;
                    RefreshTreeView();
                }
            }
                
            
        }
        

        private void toolStripInitInfo_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("All range information on the device is initialized and writed in memory on the ZIM Board.\r\\n Would you like to continue?"
                , "Configuration", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
            {
                int auxch;
                var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
                eZimType type = (eZimType)(p.info.cModel[0] - 0x30);
                for(auxch=0; auxch < MBZA_Constant.MAX_AUX_CHANNEL; auxch ++)
                {
                    //InitRangeInfo(ref p.ranges[auxch], (eZimType)(p.info.cModel[0] - 0x30));
                    InitRangeInfo(ref p.ranges, (eZimType)(p.info.cModel[0] - 0x30)); // 배열
                }

                RefreshTreeViewStat();
                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }

        private void ToolStripRefreshbydevice_Click(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            bool res = MBZA_MapUtil.GetDeviceinfo(Serial);

            if(res == true)
            {
                RefreshTreeViewStat();
                RefreshPropertyGrid(treeView1.SelectedNode);
                this.Cursor = Cursors.Default;
                MessageBox.Show("Suceed.");
            }
            else
            {
                this.Cursor = Cursors.Default;
                MessageBox.Show("Failed to read.");
            }
            
        }

        private void ToolStripApplyDev_Click(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            bool res = MBZA_MapUtil.SaveDeviceinfo(Serial);

            this.Cursor = Cursors.Default;

            if(res == true)
                MessageBox.Show("Suceed.");
            else MessageBox.Show("Failed to change information.");
        }

        private void ToolStripWriteROM_Click(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;

            bool res = MBZA_MapUtil.WriteROM(Serial, sifch);

            this.Cursor = Cursors.Default;
            if (res == true)
                MessageBox.Show("Suceed.");
            else MessageBox.Show("Failed.");

        }
    }

}
