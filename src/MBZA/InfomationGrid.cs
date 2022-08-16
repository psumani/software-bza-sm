using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
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

namespace ZiveLab.ZM
{
    public partial class InfomationGrid : UserControl
    {
        stPropIacCompLs propCompdummy;
        stPropIacCalib propiacCalib;
        stPropIac propiac;
        stPropVdc propvdc;
        stPropConnInf propconn;
        stPropSIF propsif;
        stPropZim propzim;
        int selch;
        bool bFirst;
        private string Serial;
        private int sifch;
        private ToolStrip toolStrip;
        private TreeNode SelectNode;
        private int[] bStat;

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
            propvdc = new stPropVdc();
            propconn = new stPropConnInf();
            propsif = new stPropSIF();
            propzim = new stPropZim();

            bStat = new int[6];
            for (int i = 0; i < 0; i++)
            {
                bStat[i] = 1;
            }
            toolStrip = null;
            SelectNode = null;

            this.imageList1.Images.Clear();
            this.imageList1.Images.Add(Properties.Resources.object11);
            this.imageList1.Images.Add(Properties.Resources.object21);
            this.imageList1.Images.Add(Properties.Resources.object22);
            this.imageList1.Images.Add(Properties.Resources.object31);
            this.imageList1.Images.Add(Properties.Resources.object32);
            this.imageList1.Images.Add(Properties.Resources.object41);
            this.imageList1.Images.Add(Properties.Resources.object42);
            this.imageList1.Images.Add(Properties.Resources.object12);
            this.imageList1.Images.Add(Properties.Resources.folder);
            this.imageList1.Images.Add(Properties.Resources.ConnGate);
            this.imageList1.Images.Add(Properties.Resources.Device);
            this.imageList1.Images.Add(Properties.Resources.chip1);
            this.imageList1.Images.Add(Properties.Resources.Config);
            this.imageList1.Images.Add(Properties.Resources.deviceinfo);
            this.imageList1.Images.Add(Properties.Resources.object21);
            this.imageList1.Images.Add(Properties.Resources.object22);
            this.imageList1.Images.Add(Properties.Resources.folder);
            this.imageList1.Images.Add(Properties.Resources.folder);

            //this.treeView1.Anchor = AnchorStyles.Top | AnchorStyles.Left;
            this.treeView1.CheckBoxes = false;
            this.treeView1.ImageList = this.imageList1;

            RecreatePropertyGridToolBar(-1);

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
                    if (ChkEisCalInf(p.ranges.mEisIRngCalInfo[trng]) == false)
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
                    if(ChkCompDummyInf(p.ranges.mDummy[trng]) == false)
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                    node.ImageIndex = 13;
                    node.SelectedImageIndex = 13;
                }


                node.ToolTipText = (string)node.Tag;
            }
            if (bNoCalib == true) return 2;
            return 1;
        }
        int CreateNodePartIacItem(int rng,TreeNode parentnode)
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

                if(i == 0)
                {
                    tmp = CreateNodePartIacGain(rng, i, node);
                    if (tmp == 1)
                    {
                        if (p.ranges.iac_rng[rng].gain1 == 1.0 && p.ranges.iac_rng[rng].gain2 == 1.0)
                        {
                            tmp = 2;
                        }
                    }
                    if (tmp == 2) bNoCalib = true;
                    node.ImageIndex = tmp + 15;
                    node.SelectedImageIndex = tmp + 15;
                    
                }
                else
                {
                    tmp = CreateNodePartIacGain(rng, i, node);
                    if (ChkCompDummyInf(p.ranges.mDummy[trng]) == false)
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                    node.ImageIndex = tmp + 15;
                    node.SelectedImageIndex = tmp + 15;
                }
               
                node.ToolTipText = (string)node.Tag;

                
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

                stext = SM_Number.ToRangeString(p.ranges.iac_rng[i].realmax, "A");

                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), stext);
                node.Tag = (string)parentnode.Tag + "/" + stext;


                tmp = CreateNodePartIacItem(i, node);

                if (tmp == 2)
                {
                    bNoCalib = true;
                }

                node.ImageIndex = tmp+13;
                node.SelectedImageIndex = tmp+13;

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

                stext = SM_Number.ToRangeString(p.ranges.vdc_rng[i].realmax, "V");

                node = parentnode.Nodes.Add(String.Format("{0}{1}/", parentnode.Name, i), stext);
                node.Tag = (string)parentnode.Tag + "/" + stext;
                if (p.ranges.vdc_rng[i].gain == 1.0 && p.ranges.vdc_rng[i].offset == 0.0)
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
                node = parentnode.Nodes.Add(string.Format("{0}{1}/", parentnode.Name,i), MBZA_Constant.Const_RangePart[i]);
                node.Tag = (string)parentnode.Tag + "/" + MBZA_Constant.Const_RangePart[i];

                if (i == 0)
                {
                    tmp = CreateNodePartIac(node);
                    tmp = 8;
                }
                else if (i == 1)
                {
                    // no calibration
                    //if (p.ranges.vac_rng.gain == 1.0 && p.ranges.vac_rng.offset == 0.0)
                    //{
                    //    tmp = 2;
                    //}
                    //else
                    //{
                    //    tmp = 1;
                    //}
                    tmp = 13;
                }
                else if (i == 2)
                {
                    tmp = CreateNodePartVdc(node);
                    tmp = 8;
                }
                else if (i == 3)
                {
                    if (p.ranges.rtd_rng.gain == 1.0 && p.ranges.rtd_rng.offset == 0.0)
                    {
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                }
                else if (i == 4)
                {
                    tmp = 13;
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
            treeView1.Nodes.Clear();

            int tmp = 0;


            for (int i = 0; i < MBZA_Constant.Const_LootPart.Count(); i++)
            {


                node = treeView1.Nodes.Add(string.Format("{0}/", i), MBZA_Constant.Const_LootPart[i]);
                node.Tag = MBZA_Constant.Const_LootPart[i];
                if (i == 0)
                {
                    tmp = 9;
                }
                else if (i == 1)
                {
                    tmp = 13;
                }
                else if (i == 2)
                {
                    tmp = 10;
                }
                if (i == 3)
                {
                    tmp = CreateNodePartRange(node);
                    tmp = 11;
                }
                
                if (node != null)
                {
                    node.ImageIndex = tmp;
                    node.SelectedImageIndex = tmp;
                    node.ToolTipText = (string)node.Tag;
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
            }
            treeView1.HideSelection = true;
            return 0;
        }

        public void RefreshNodeRangeVdcStat(TreeNode node)
        {
            TreeNode tnode;
            int tmp = 0;
            int rng;
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
                if (p.ranges.vdc_rng[rng].gain == 1.0 && p.ranges.vdc_rng[rng].offset == 0.0)
                {
                    tmp = 2;
                }
                else
                {
                    tmp = 1;
                }

                tnode.ImageIndex = tmp;
                tnode.SelectedImageIndex = tmp;
                tnode = tnode.NextNode;
            }
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
                    if (ChkEisCalInf(p.ranges.mEisIRngCalInfo[trng]) == false)
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
                    if (ChkCompDummyInf(p.ranges.mDummy[trng]) == false)
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                }
                tnode = tnode.NextNode;
            }
            if (bNoCalib == true) return 2;
            return 1;
        }

        public int RefreshNodeRangeIacItemStat(int rng,TreeNode node)
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
                    if (ChkCompDummyInf(p.ranges.mDummy[rng]) == false)
                    {
                        bNoCalib = true;
                        tmp = 2;
                    }
                    else
                    {
                        tmp = 1;
                    }
                }

                tnode = tnode.NextNode;
            }
            if (bNoCalib == true) return 2;
            return 1;
        }
        public void RefreshNodeRangeIacStat(TreeNode node)
        {
            TreeNode tnode;
            int tmp = 0;
          
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];
            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);

                tmp = RefreshNodeRangeIacItemStat(nodeval[2]-1, tnode);

                tnode.ImageIndex = tmp;
                tnode.SelectedImageIndex = tmp;

                tnode = tnode.NextNode;
            }

        }
        public void RefreshNodeRangeStat(TreeNode node)
        {
            TreeNode tnode;
            int tmp = 0;
            stZimCfg p;
            if (gBZA.SifLnkLst.ContainsKey(Serial)) p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            else p = gBZA.ChLnkLst[selch.ToString()].mDevInf.mSysCfg.mZimCfg[sifch];

            int[] nodeval;

            tnode = node.FirstNode;
            while (true)
            {
                if (tnode == null) break;
                nodeval = StringKeyToInteger(tnode.Name);

                if(nodeval[1] == 1)
                {
                    RefreshNodeRangeIacStat(tnode);
                }
                else if (nodeval[1] == 2)
                {
                    
                }
                else if (nodeval[1] == 3)
                {
                    RefreshNodeRangeVdcStat(tnode);
                }
                else if (nodeval[1] == 4)
                {
                    if (p.ranges.rtd_rng.gain == 1.0 && p.ranges.rtd_rng.offset == 0.0)
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

                tnode = tnode.NextNode;
            }

        }

        public void RefreshTreeViewStat()
        {
            int[] nodeval;

            foreach (TreeNode node in treeView1.Nodes)
            {
                nodeval = StringKeyToInteger(node.Name);
                if (nodeval[0] == 4)
                {
                    RefreshNodeRangeStat(node);
                }
            }
            
        }

        private void RecreatePropertyGridToolBar(int index)
        {
            
            ToolStripItem item; 
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

                    if (index < 16 && index != 8)
                    {
                        item = new ToolStripMenuItem();
                        item.Name = "LocalRefresh";
                        item.Image = ZM.Properties.Resources.ViewRefresh.ToBitmap();
                        item.Click += new EventHandler(LocalRefresh_Click);
                        item.ToolTipText = "Refresh properties.";
                        item.AutoToolTip = true;
                        item.Alignment = ToolStripItemAlignment.Left;
                        item.DisplayStyle = ToolStripItemDisplayStyle.Image;
                        item.ImageScaling = ToolStripItemImageScaling.SizeToFit;
                        item.ImageTransparentColor = Color.Fuchsia;
                        toolStrip.Items.Add(item);
                    }

                    if (index < 8 || index == 13  || index == 15)
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

                    if (index == 1 || index == 2 || index == 15 || index == 17)
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
                    }

                    if (index == 11)
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
                        toolStrip.Items.Add(item);

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
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

            
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
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];


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
                    rngval[i] = p.ranges.iac_rng[i].realmax;
                }
                propiac.SetType((eZimType)(p.info.cModel[0] - 0x30), rngval);
                return propiac;
            }
            iRng = nodeval[2] - 1;

            if (nodeval[3] < 1)
            {
                return p.ranges.iac_rng[iRng];
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

            if(itype == 0)
            {
                return p.ranges.mEisIRngCalInfo[iRng1];
            }

            return p.ranges.mDummy[iRng1];
        }

        private object GetVdcObjectProc(int[] nodeval)
        {
            int iRng;
            double[] rngval = new double[2];
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

            iRng = 0;

            if (nodeval[2] < 1)
            {
                rngval[0] = p.ranges.vdc_rng[0].realmax;
                rngval[1] = p.ranges.vdc_rng[1].realmax;
                propvdc.SetType((eZimType)(p.info.cModel[0] - 0x30), rngval);
                return propvdc;
            }
            iRng = nodeval[2] - 1;
            if(iRng >= DeviceConstants.MAX_VDC_RNGCNT) return null;
            return p.ranges.vdc_rng[iRng];
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
                return p.ranges.vac_rng;
            }
            else if (item == 2)
            {
                return GetVdcObjectProc(nodeval);
            }
            else if (item == 3)
            {
                return p.ranges.rtd_rng;
            }
            else if (item == 4)
            {
                return p.ranges.mSafety;
            }

            return null;
        }

        private object GetLootObject(TreeNode node)
        {
            int[] nodeval;
            int item;

            if (gBZA.SifLnkLst.ContainsKey(Serial) == false) return null;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

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
            
            return null;
        }

        private void RefreshPropertyGrid(TreeNode node = null)
        {

            if (node == null)
            {
                RecreatePropertyGridToolBar(-1);
                SelectNode = null;
                this.propertyGrid1.SelectedObject = null;
            }
            else
            {
                var obj = GetLootObject(node);

                if (obj == null)
                {
                    RecreatePropertyGridToolBar(-1);
                    SelectNode = null;
                }
                else
                {
                    SelectNode = node;
                }
                RecreatePropertyGridToolBar(node.ImageIndex);
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

        public bool Refresh_RangeInformation()
        {
            /*
            if (SM_MapUtilities.RefreshServer((byte)this.DeviceIndex, (byte)this.Channel, (byte)enServerComand.RefreshSystemInformation, 0)
                 == false)
            {
                return false;
            }

            if (SM_MapUtilities.RefreshServer((byte)this.DeviceIndex, (byte)this.Channel, (byte)enServerComand.RefreshSystemConfiguration, 0)
                 == false)
            {
                return false;
            }

            if (SM_MapUtilities.RefreshServer((byte)this.DeviceIndex, (byte)this.Channel, (byte)enServerComand.RefreshSystemRange, 0)
                 == false)
            {
                return false;
            }
            */
            return true;
        }

        #endregion ** comm function

        
       

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            string nodeKey = e.Node.Name;
            this.SelectNode = e.Node;
            if (!string.IsNullOrEmpty(nodeKey))
            {
                RefreshPropertyGrid(e.Node);
            }
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
        void LocalRefresh_Click(object sender, EventArgs e)
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

            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
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
                    if(nodeval[3] == 1)
                    {
                        if(nodeval[4] == 2)
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
                else if (item == 1) //vac
                {
                }
                else if (item == 2)
                {
                    item = nodeval[2] - 1;
                    if (item >= 0 && item < 2)
                    {
                        if (MBZA_MapUtil.SetCalibMode(Serial, sifch, true) == false)
                        {
                            MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        frmCalibVdc frm = new frmCalibVdc(selch,Serial, sifch, item);
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
                else if (item == 3)
                {
                    if(MBZA_MapUtil.SetCalibMode(Serial, sifch, true) == false)
                    {
                        MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    frmCalibRtd frm = new frmCalibRtd(selch,Serial, sifch);
                    frm.ShowDialog();
                    RefreshTreeViewStat();
                    RefreshPropertyGrid(this.SelectNode);
                    if (MBZA_MapUtil.SetCalibMode(Serial, sifch, false) == false)
                    {
                        MessageBox.Show("Failed set calibration mode.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    return;
                }
                else if (item == 4) //safety
                {

                }
            }
            MessageBox.Show("This feature is not supported.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        void BtLocalApply_Click(object sender, EventArgs e)
        {
            int[] nodeval;
            int iRng;
            int itype;
            int igain;
            int iRng1;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

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
                            p.ranges.iac_rng[iRng] = (st_zim_adci_rnginf)this.propertyGrid1.SelectedObject;
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
                            p.ranges.mEisIRngCalInfo[iRng1] = (st_zim_Eis_Cal_info)this.propertyGrid1.SelectedObject;
                        }
                        else
                        {
                            p.ranges.mDummy[iRng1] = (st_zim_dummy)this.propertyGrid1.SelectedObject;
                        }
                    }
                    else if (nodeval[1] == 2)
                    {
                        p.ranges.vac_rng = (st_zim_adcv_rnginf)this.propertyGrid1.SelectedObject;
                    }
                    else if (nodeval[1] == 3)
                    {
                        if (nodeval[2] >= 1 && nodeval[2] < 3)
                        {
                            p.ranges.vdc_rng[nodeval[2] - 1] = (st_zim_adcv_rnginf)this.propertyGrid1.SelectedObject;
                        }
                    }
                    else if (nodeval[1] == 4)
                    {
                        p.ranges.rtd_rng = (st_zim_adct_rnginf)this.propertyGrid1.SelectedObject;
                    }
                    else if (nodeval[1] == 5)
                    {
                        p.ranges.mSafety = (st_zim_Safety_inf)this.propertyGrid1.SelectedObject;
                    }
                }
            }

            gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch] = p;
            gBZA.SifLnkLst[Serial].mDevInf = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf;
        }

        void BtChangeRange_Click(object sender, EventArgs e)
        {
            int[] nodeval;
            int trng = 0;
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            if(treeView1.SelectedNode == null)
            {
                MessageBox.Show("Not selected a item.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);;
                return;
            }

            nodeval = NodeToInteger(treeView1.SelectedNode);

            if(nodeval[0] == 4)
            {
                if (nodeval[1] == 1)
                {
                    if (nodeval[2] >= 1 && nodeval[2] < 5)
                    {
                        /*if(nodeval[3] == 0)
                        {
                            ChangeRangeMaxMin(ref p.ranges.iac_rng[nodeval[2]-1]);
                        }
                        else if (nodeval[3] == 1)
                        {*/
                        trng = (nodeval[2] - 1) * 2;
                        InitEisCalInf(ref p.ranges.mEisIRngCalInfo[trng]);
                        InitEisCalInf(ref p.ranges.mEisIRngCalInfo[trng+1]);
                        p.ranges.iac_rng[nodeval[2] - 1].gain1 = 1.0;
                        p.ranges.iac_rng[nodeval[2] - 1].gain2 = 1.0;

                        RefreshTreeViewStat();
                        RefreshPropertyGrid(treeView1.SelectedNode);
                        //}
                    }
                }
                else if (nodeval[1] == 2)
                {
                    ChangeRangeMaxMin(ref p.ranges.vac_rng);
                }
                else if (nodeval[1] == 3)
                {
                    if (nodeval[2] >= 1 && nodeval[2] < 3)
                    {
                        ChangeRangeMaxMin(ref p.ranges.vdc_rng[nodeval[2] - 1]);
                    }
                }
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
                gBZA.appcfg.Save();
                Cursor.Current = Cursors.Default;
                gBZA.ShowInfoBox("The firmware change has been successful. \r\n\r\nPlease restart the device.");

            }
        }

        void ChangeFwZIM_Click(object sender, EventArgs e)
        {
            frmBurnZIM frm = new frmBurnZIM(Serial, sifch, true);
            frm.ShowDialog();
        }

        void BtTestZim_Click(object sender, EventArgs e)
        {
            frmTestDevice frm = new frmTestDevice(Serial, sifch, true);
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
        private void ChangeRangeMaxMin(ref st_zim_adci_rnginf inf)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.realmax, inf.maximum, inf.minimum);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {

                if (inf.realmax == mdlg.RealMaxVal && inf.maximum == mdlg.MaxVal && inf.minimum == mdlg.MinVal)
                {
                    return;
                }
                inf.realmax = mdlg.RealMaxVal;
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                inf.gain1 = 1.0;
                inf.gain2 = 1.0;

                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }
        
        private void ChangeRangeMaxMin(ref st_zim_adcv_rnginf inf)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.realmax, inf.maximum, inf.minimum);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {

                if (inf.realmax == mdlg.RealMaxVal &&  inf.maximum == mdlg.MaxVal && inf.minimum == mdlg.MinVal)
                {
                    return;
                }
                inf.realmax = mdlg.RealMaxVal;
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                inf.gain = 1.0;
                inf.offset = 0.0;

                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }

        private void ChangeRangeMaxMin(ref st_zim_vdc_rnginf inf)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.realmax, inf.maximum, inf.minimum);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {

                if (inf.realmax == mdlg.RealMaxVal && inf.maximum == mdlg.MaxVal && inf.minimum == mdlg.MinVal)
                {
                    return;
                }
                inf.realmax = mdlg.RealMaxVal;
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                inf.gain = 1.0;
                inf.offset = 0.0;

                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }

        private void ChangeRangeMaxMin(ref st_zim_adct_rnginf inf)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.maximum, inf.minimum);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {

                if (inf.maximum == mdlg.MaxVal && inf.minimum == mdlg.MinVal)
                {
                    return;
                }
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                inf.gain = 1.0;
                inf.offset = 0.0;

                RefreshPropertyGrid(treeView1.SelectedNode);
            }
        }

        private void ChangeRangeMaxMin(ref st_zim_adc_rnginf inf)
        {
            frmSetMaxRange mdlg = new frmSetMaxRange(inf.maximum, inf.minimum);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {

                if (inf.maximum == mdlg.MaxVal && inf.minimum == mdlg.MinVal)
                {
                    return;
                }
                inf.maximum = mdlg.MaxVal;
                inf.minimum = mdlg.MinVal;
                inf.factor = (inf.maximum - inf.minimum) / 16777216.0; //24bit
                inf.gain = 1.0;
                inf.offset = 0.0;

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
            var p = gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c];

            sFullPath = Path.Combine(gBZA.appcfg.PathRangeInfo, GetrangeFileName(s, c));

            stRangeFile inf = new stRangeFile();

            inf.parent.SetInformation(selch, s, c);

            inf.ranges = p.ranges;

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

            inf.parent.SetInformation(selch, s, c);

            inf.ranges = p.ranges;

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

            stRangeFile inf = new stRangeFile();
            string sFullPath;
            var p = gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c];

            sFullPath = Path.Combine(gBZA.appcfg.PathRangeInfo, GetrangeFileName(s, c));

            StreamReader file = new StreamReader(sFullPath);

            XmlSerializer Reader = new XmlSerializer(inf.GetType());

            try
            {
                inf = (stRangeFile)Reader.Deserialize(file);

                p.ranges = inf.ranges;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            file.Close();
        }

        void LoadFromXml(string s, int c, string sFullPath)
        {

            stRangeFile inf = new stRangeFile();

            var p = gBZA.SifLnkLst[s].MBZAIF.mDevInf.mSysCfg.mZimCfg[c];

            StreamReader file = new StreamReader(sFullPath);

            XmlSerializer Reader = new XmlSerializer(inf.GetType());

            try
            {
                inf = (stRangeFile)Reader.Deserialize(file);

                p.ranges = inf.ranges;

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
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

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
                gBZA.appcfg.Save();

            }
        }

        private void saveChFileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];
            
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
                gBZA.appcfg.Save();

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
                p.ranges.mDummy[i].Ls = gBZA.appcfg.LDummy[j + 1];
                p.ranges.mDummy[i].R = gBZA.appcfg.RDummy[j + 1];
            }
            

            p.ranges.mSafety.MaxPower = gBZA.appcfg.Power;
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
          
            tRanges.ID = DeviceConstants.ID_RANGEINFO;
            for (i = 0; i < MBZA_Constant.MAX_IRANGE; i++)
            {
                InitEisCalInf(ref tRanges.mEisIRngCalInfo[i]);
            }
            
            for (i = 0; i < MBZA_Constant.MAX_IRANGE; i++)
            {
                j = i / 2;
                tRanges.mDummy[i].Ls = gBZA.appcfg.LDummy[j+1];
                tRanges.mDummy[i].R = gBZA.appcfg.RDummy[j+1];
            }



            //PT-1000 - 1000ohm : 0'C, RREF - 4000ohm
            //PT-100  -  100ohm : 0'C. RREF -  400ohm

            tRanges.mSafety.MaxPower = gBZA.appcfg.Power;

            tRanges.rtd_rng.maximum = DeviceConstants.ADC_RTD_CONST_MAX;
            tRanges.rtd_rng.minimum = DeviceConstants.ADC_RTD_CONST_MIN;
            tRanges.rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT100;
            tRanges.rtd_rng.gain = 1.0;
            tRanges.rtd_rng.offset = 0.0;

            InitIacRangeInf(ref tRanges.iac_rng[0], DeviceConstants.ADC_IAC_RNG1_RMAX, DeviceConstants.ADC_IAC_RNG1_MAX, DeviceConstants.ADC_IAC_RNG1_MIN);
            InitIacRangeInf(ref tRanges.iac_rng[1], DeviceConstants.ADC_IAC_RNG2_RMAX, DeviceConstants.ADC_IAC_RNG2_MAX, DeviceConstants.ADC_IAC_RNG2_MIN);
            InitIacRangeInf(ref tRanges.iac_rng[2], DeviceConstants.ADC_IAC_RNG3_RMAX, DeviceConstants.ADC_IAC_RNG3_MAX, DeviceConstants.ADC_IAC_RNG3_MIN);
            InitIacRangeInf(ref tRanges.iac_rng[3], DeviceConstants.ADC_IAC_RNG4_RMAX, DeviceConstants.ADC_IAC_RNG4_MAX, DeviceConstants.ADC_IAC_RNG4_MIN);
            
            tRanges.vac_rng.maximum = DeviceConstants.ADC_VAC_RNG_MAX;
            tRanges.vac_rng.minimum = DeviceConstants.ADC_VAC_RNG_MIN;
            tRanges.vac_rng.factor = DeviceConstants.ADC_VAC_RNG_FACTOR;
            tRanges.vac_rng.gain = 1.0;
            tRanges.vac_rng.offset = 0.0;

            tRanges.vac_rng.maximum = DeviceConstants.ADC_VAC_RNG_MAX;
            tRanges.vac_rng.minimum = DeviceConstants.ADC_VAC_RNG_MIN;
            tRanges.vac_rng.factor = DeviceConstants.ADC_VAC_RNG_FACTOR;
            tRanges.vac_rng.gain = 1.0;
            tRanges.vac_rng.offset = 0.0;

            if (zimtype == eZimType.BZA100 || zimtype == eZimType.BZA60)
            {
                tRanges.vdc_rng[0].maximum = DeviceConstants.ADC_VDC_RNG0_MAX1;
                tRanges.vdc_rng[0].minimum = DeviceConstants.ADC_VDC_RNG0_MIN1;
                tRanges.vdc_rng[0].factor = DeviceConstants.ADC_VDC_RNG0_FACTOR;

                tRanges.vdc_rng[1].maximum = DeviceConstants.ADC_VDC_RNG1_MAX1;
                tRanges.vdc_rng[1].minimum = DeviceConstants.ADC_VDC_RNG1_MIN1;
                tRanges.vdc_rng[1].factor = DeviceConstants.ADC_VDC_RNG1_FACTOR;
            }
            else
            {
                tRanges.vdc_rng[0].maximum = DeviceConstants.ADC_VDC_RNG0_MAX;
                tRanges.vdc_rng[0].minimum = DeviceConstants.ADC_VDC_RNG0_MIN;
                tRanges.vdc_rng[0].factor = DeviceConstants.ADC_VDC_RNG0_FACTOR;

                tRanges.vdc_rng[1].maximum = DeviceConstants.ADC_VDC_RNG1_MAX;
                tRanges.vdc_rng[1].minimum = DeviceConstants.ADC_VDC_RNG1_MIN;
                tRanges.vdc_rng[1].factor = DeviceConstants.ADC_VDC_RNG1_FACTOR;
            }
            
            if (zimtype == eZimType.BZA500)
            {
                tRanges.vdc_rng[0].realmax = DeviceConstants.ADC_VDC_RNG0_RMAX1;
                tRanges.vdc_rng[1].realmax = DeviceConstants.ADC_VDC_RNG1_RMAX1;
            }
            else if (zimtype == eZimType.BZA100)
            {
                tRanges.vdc_rng[0].realmax = DeviceConstants.ADC_VDC_RNG0_RMAX2;
                tRanges.vdc_rng[1].realmax = DeviceConstants.ADC_VDC_RNG1_RMAX2;
            }
            else if (zimtype == eZimType.BZA60)
            {
                tRanges.vdc_rng[0].realmax = DeviceConstants.ADC_VDC_RNG0_RMAX3;
                tRanges.vdc_rng[1].realmax = DeviceConstants.ADC_VDC_RNG1_RMAX3;
            }
            else
            {
                tRanges.vdc_rng[0].realmax = DeviceConstants.ADC_VDC_RNG0_RMAX0;
                tRanges.vdc_rng[1].realmax = DeviceConstants.ADC_VDC_RNG1_RMAX0;
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
                var p = gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

                InitRangeInfo(ref p.ranges, (eZimType)(p.info.cModel[0] - 0x30));
                gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges = p.ranges;
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
