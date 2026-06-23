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
using ZiveLab.ZM.Dataview;

namespace ZiveLab.ZM
{
    public partial class frmSetOption : Form
    {
        private frmMdiMain MdiParent;
        public frmSetOption(frmMdiMain tMdiparent = null)
        {
            InitializeComponent();
            this.Icon = gBZA.BitmapToIcon(Properties.Resources.SettingsFile);
            MdiParent = tMdiparent;
            cboTimeFormat.Items.Clear();

            cboTimeFormat.Items.Add("TimeText");
            cboTimeFormat.Items.Add("Normal");
            cboTimeFormat.Items.Add("Exponent");
   
            cboCUnit.Items.Clear();

            cboCUnit.Items.Add("Ah");
            cboCUnit.Items.Add("Coulomb");

            ListData.Items.Clear();
            foreach (DataColItem gdcol in gBZA.mDataViewSet._dataConvSet.DataColList)
            {
                ListData.Items.Add(gdcol.ToString());
            }

        }

        public void SetLanguage(int langidx)
        {
            Properties.Resources.Culture = DataviewCommon.SetLanguage(this, langidx, typeof(frmSetOption));
        }

        private void Update(bool bUpdate = true)
        {
            UpdateDataItems(bUpdate);
            UpdateRecentDataPath(bUpdate);
            UpdateRecentSchPath(bUpdate);

            if (bUpdate)
            {
                gBZA.appcfg.PathZManData = txtZmanDataPath.Text;

                gBZA.appcfg.UsePathAlwaysData = chkUseDefaultDataPath.Checked;
                gBZA.appcfg.PathAlwaysData = txtDataPath.Text;
                gBZA.appcfg.UsePathAlwaysSch = chkUseDefaultSchPath.Checked;
                gBZA.appcfg.PathAlwaysSch = txtSchPath.Text;

                gBZA.mDataViewSet._dataConvSet.TimeFormat = cboTimeFormat.SelectedIndex;
                gBZA.mDataViewSet._dataConvSet.UnitC = (cboCUnit.SelectedIndex == 1) ? true : false;

                gBZA.SaveAppCfg();
                gBZA.SaveDataViewSet();
            }
            else
            {

                txtZmanDataPath.Text = gBZA.appcfg.PathZManData;
                chkUseDefaultDataPath.Checked = gBZA.appcfg.UsePathAlwaysData;
                txtDataPath.Text = gBZA.appcfg.PathAlwaysData;
                chkUseDefaultSchPath.Checked = gBZA.appcfg.UsePathAlwaysSch;
                txtSchPath.Text = gBZA.appcfg.PathAlwaysSch;

                cboTimeFormat.SelectedIndex = gBZA.mDataViewSet._dataConvSet.TimeFormat;
                cboCUnit.SelectedIndex = gBZA.mDataViewSet._dataConvSet.UnitC ? 1 : 0;

                ChkFloatCfg.Checked = gBZA.appcfg.CfgFloating;
                ChkFloatMainView.Checked = gBZA.appcfg.MainViewFloating;
                ChkFloatSingleCh.Checked = gBZA.appcfg.RealFloating;
                ChkFloatRegCh.Checked = gBZA.appcfg.RegRealFloating;
                ChkFloatGrpCh.Checked = gBZA.appcfg.GrpRealFloating;
                ChkFloatGraph.Checked = gBZA.appcfg.GraphFloating;
                ChkFloatEditor.Checked = gBZA.appcfg.EditFloating;
                ChkFloatDatatool.Checked = gBZA.appcfg.DataToolFloating;
                ChkFloatAuxVolt.Checked = gBZA.appcfg.AuxVdcFloating;

            }
            
        }
        private void UpdateDataItems(bool bUpdate = true)
        {
            if (bUpdate)
            {

                for (int i = 0; i < ListData.Items.Count; i++)
                {
                    gBZA.mDataViewSet._dataConvSet.DataColList[i].Enable = ListData.GetItemChecked(i);
                }
            }
            else
            {
                for (int i = 0; i < ListData.Items.Count; i++)
                {
                    ListData.SetItemChecked(i, gBZA.mDataViewSet._dataConvSet.DataColList[i].Enable);
                }
            }
        }

        private void UpdateRecentDataPath(bool bUpdate = true)
        {
            if(bUpdate)
            {
                for (int i = 0; i < 10; i++)
                {
                    gBZA.appcfg.PathData[i] = lstRecentDataPath.Items[i].SubItems[1].Text;
                }
            }
            else
            {
                lstRecentDataPath.Clear();
                lstRecentDataPath.View = View.Details;
                lstRecentDataPath.FullRowSelect = true;
                lstRecentDataPath.GridLines = true;
                
                lstRecentDataPath.Columns.Clear();
                lstRecentDataPath.Columns.Add("Index",100);
                lstRecentDataPath.Columns.Add("Remembered path", lstRecentDataPath.Width-100);

                for (int i=0; i<10; i++)
                {
                    ListViewItem item = new ListViewItem(string.Format("{0}", i + 1)); // First column
                    item.SubItems.Add(gBZA.appcfg.PathData[i]);                // Second column              
                    lstRecentDataPath.Items.Add(item);
                }
            }
        }

        private void UpdateRecentSchPath(bool bUpdate = true)
        {
            if (bUpdate)
            {
                for (int i = 0; i < 10; i++)
                {
                    gBZA.appcfg.PathSch[i] = lstRecentSchPath.Items[i].SubItems[1].Text;
                }
            }
            else
            {
                lstRecentSchPath.Clear();
                lstRecentSchPath.View = View.Details;
                lstRecentSchPath.FullRowSelect = true;
                lstRecentSchPath.GridLines = true;

                lstRecentSchPath.Columns.Clear();
                lstRecentSchPath.Columns.Add("Index", 100);
                lstRecentSchPath.Columns.Add("Remembered path", lstRecentSchPath.Width - 100);
                
                for (int i = 0; i < 10; i++)
                {
                    ListViewItem item = new ListViewItem(string.Format("{0}", i + 1)); // First column
                    item.SubItems.Add(gBZA.appcfg.PathSch[i]);                // Second column              
                    lstRecentSchPath.Items.Add(item);
                }
            }
        }


        private void frmSetOption_Load(object sender, EventArgs e)
        {
            InitView();
        }

        private void btDefaultZmanPath_Click(object sender, EventArgs e)
        {
            txtZmanDataPath.Text = Path.Combine("C:\\ZIVE DATA\\ZM\\", "ZManData");
        }

        private void InitView()
        {
            Update(false);
        }

        private void lnkZmanPathh_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            dlg.SelectedPath = txtZmanDataPath.Text;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                txtZmanDataPath.Text = dlg.SelectedPath;
            }
        }

        private void lnkDataPath_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            dlg.SelectedPath = txtDataPath.Text;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                txtDataPath.Text = dlg.SelectedPath;
            }
        }

        private void lnkDefaultDataPath_Click(object sender, EventArgs e)
        {
            txtDataPath.Text = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Data");
        }

        private void lnkSchPath_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            dlg.SelectedPath = txtSchPath.Text;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                txtSchPath.Text = dlg.SelectedPath;
            }
        }

        private void lnkDefaultSchPath_Click(object sender, EventArgs e)
        {
            txtDataPath.Text = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Sch");
        }

        private void btInitRecentDataPath_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < 10; i++)
            {
                lstRecentDataPath.Items[i].SubItems[1].Text = "";
            }
            lstRecentDataPath.Items[0].SubItems[1].Text = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Data"); 
        }

        private void btInitRecentSchPath_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < 10; i++)
            {
                lstRecentSchPath.Items[i].SubItems[1].Text = "";
            }
            lstRecentSchPath.Items[0].SubItems[1].Text = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Sch");
        }

        private void btChkallDataItem_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ListData.Items.Count; i++)
            {
                ListData.SetItemChecked(i, true);
            }
        }

        private void btUnchkallDataItem_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ListData.Items.Count; i++)
            {
                ListData.SetItemChecked(i, false);
            }
        }

        private void lnkResetWindows_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

            if (MdiParent.frmMainView != null)
            {
                MdiParent.frmMainView.StartPosition = FormStartPosition.Manual;
                MdiParent.frmMainView.Size = gBZA.appcfg.MainViewSize;
                MdiParent.frmMainView.Location = gBZA.appcfg.MainViewLocation;
            }

            if (MdiParent.frmRtView != null)
            {
                MdiParent.frmRtView.StartPosition = FormStartPosition.Manual;
                MdiParent.frmRtView.Size = gBZA.appcfg.RealviewSize;
                MdiParent.frmRtView.Location = gBZA.appcfg.RealviewLocation;
            }

            if (MdiParent.frmRegRtView != null)
            {
                MdiParent.frmRegRtView.StartPosition = FormStartPosition.Manual;
                MdiParent.frmRegRtView.Size = gBZA.appcfg.RegRealviewSize;
                MdiParent.frmRegRtView.Location = gBZA.appcfg.RegRealviewLocation;
            }

            if (MdiParent.frmGrpRtView != null)
            {
                MdiParent.frmGrpRtView.StartPosition = FormStartPosition.Manual;
                MdiParent.frmGrpRtView.Size = gBZA.appcfg.GroupRealviewSize;
                MdiParent.frmGrpRtView.Location = gBZA.appcfg.GroupRealviewLocation;
            }

            if (MdiParent.frmcfg != null)
            {
                MdiParent.frmcfg.Location = gBZA.appcfg.CfgLocation;
                MdiParent.frmcfg.StartPosition = FormStartPosition.Manual;
                MdiParent.frmcfg.Size = gBZA.appcfg.CfgSize;
            }

            if (MdiParent.frmResTools != null)
            {
                MdiParent.frmResTools.Size = gBZA.appcfg.DataToolSize;
                MdiParent.frmResTools.Location = gBZA.appcfg.DataToolLocation;
                MdiParent.frmResTools.StartPosition = FormStartPosition.Manual;
            }

            if (MdiParent.auxForm != null)
            {
                MdiParent.auxForm.StartPosition = FormStartPosition.Manual;
                MdiParent.auxForm.Location = gBZA.appcfg.AuxVdcLocation;
                MdiParent.auxForm.Size = gBZA.appcfg.AuxVdcSize;
            }
        }

        private void tabWindow_Click(object sender, EventArgs e)
        {

        }

        private void btApply1_Click(object sender, EventArgs e)
        {
            UpdateRecentDataPath(true);
            UpdateRecentSchPath(true);
            gBZA.appcfg.PathZManData = txtZmanDataPath.Text;

            gBZA.appcfg.UsePathAlwaysData = chkUseDefaultDataPath.Checked;
            gBZA.appcfg.PathAlwaysData = txtDataPath.Text;
            gBZA.appcfg.UsePathAlwaysSch = chkUseDefaultSchPath.Checked;
            gBZA.appcfg.PathAlwaysSch = txtSchPath.Text;

            gBZA.SaveAppCfg();
        }

        private void btApply2_Click(object sender, EventArgs e)
        {
            UpdateDataItems(true);
            gBZA.mDataViewSet._dataConvSet.TimeFormat = cboTimeFormat.SelectedIndex;
            gBZA.mDataViewSet._dataConvSet.UnitC = (cboCUnit.SelectedIndex == 1) ? true : false;
            gBZA.SaveDataViewSet();

        }

        private void ChkFloatCfg_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.CfgFloating = ChkFloatCfg.Checked;
            gBZA.SaveAppCfg();
        }

        private void ChkFloatMainView_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.MainViewFloating = ChkFloatMainView.Checked;
            gBZA.SaveAppCfg();
        }

        private void ChkFloatSingleCh_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.RealFloating = ChkFloatSingleCh.Checked;
            gBZA.SaveAppCfg();
        }

        private void ChkFloatRegCh_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.RegRealFloating = ChkFloatRegCh.Checked;
            gBZA.SaveAppCfg(); 
        }

        private void ChkFloatGrpCh_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.GrpRealFloating = ChkFloatGrpCh.Checked;
            gBZA.SaveAppCfg(); 
        }

        private void ChkFloatGraph_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.GraphFloating = ChkFloatGraph.Checked;
            gBZA.SaveAppCfg(); 
        }

        private void ChkFloatEditor_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.EditFloating = ChkFloatEditor.Checked;
            gBZA.SaveAppCfg();
        }

        private void ChkFloatDatatool_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.DataToolFloating = ChkFloatDatatool.Checked;
            gBZA.SaveAppCfg(); 
        }

        private void ChkFloatAuxVolt_CheckedChanged(object sender, EventArgs e)
        {
            gBZA.appcfg.AuxVdcFloating = ChkFloatAuxVolt.Checked;
            gBZA.SaveAppCfg();
        }

        private void lnkResetZM_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.MainLocation = new Point(0, 0);
            gBZA.appcfg.MainSize = new Size(1584, 796);
            

            MdiParent.StartPosition = FormStartPosition.Manual;
            MdiParent.Location = gBZA.appcfg.MainLocation;
            MdiParent.Size = gBZA.appcfg.MainSize;

            gBZA.SaveAppCfg();
        }

        private void lnkResetCfg_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.CfgLocation = new Point(0, 0);
            gBZA.appcfg.CfgSize = new Size(900, 445);
            
            if (MdiParent.frmcfg != null)
            {
                MdiParent.frmcfg.StartPosition = FormStartPosition.Manual;
                MdiParent.frmcfg.Size = gBZA.appcfg.RealviewSize;
                MdiParent.frmcfg.Location = gBZA.appcfg.RealviewLocation;
            }

            gBZA.SaveAppCfg();
        }

        private void lnkResetMainView_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.MainViewLocation = new Point(20, 20);
            gBZA.appcfg.MainViewSize = new Size(1440, 580);
            
            if (MdiParent.frmMainView != null)
            {
                MdiParent.frmMainView.StartPosition = FormStartPosition.Manual;
                MdiParent.frmMainView.Size = gBZA.appcfg.MainViewSize;
                MdiParent.frmMainView.Location = gBZA.appcfg.MainViewLocation;
            }

            gBZA.SaveAppCfg();
        }

        private void lnkResetSingleCh_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.RealviewLocation = new Point(0, 0);
            gBZA.appcfg.RealviewSize = new Size(600, 500);

            if (MdiParent.frmRtView != null)
            {
                MdiParent.frmRtView.StartPosition = FormStartPosition.Manual;
                MdiParent.frmRtView.Size = gBZA.appcfg.RealviewSize;
                MdiParent.frmRtView.Location = gBZA.appcfg.RealviewLocation;
            }

            gBZA.SaveAppCfg();
        }

        private void lnkResetRegCh_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            int regch = gBZA.GetRegRMChs();
            gBZA.appcfg.RegRealviewLocation = new Point(0, 0);
            if (regch <= 1)
            {
                gBZA.appcfg.RegRealviewSize = new Size(600, 500);
            }
            else if (regch == 2)
            {
                gBZA.appcfg.RegRealviewSize = new Size(1200, 500);
            }
            else if (regch == 3)
            {
                gBZA.appcfg.RegRealviewSize = new Size(1800, 500);
            }
            else if (regch == 4)
            {
                gBZA.appcfg.RegRealviewSize = new Size(1200, 1000);
            }
            else
            {
                gBZA.appcfg.RegRealviewSize = new Size(1800, 1000);
            }


            if (MdiParent.frmRegRtView != null)
            {
                MdiParent.frmRegRtView.StartPosition = FormStartPosition.Manual;
                MdiParent.frmRegRtView.Size = gBZA.appcfg.RegRealviewSize;
                MdiParent.frmRegRtView.Location = gBZA.appcfg.RegRealviewLocation;
            }

            gBZA.SaveAppCfg();
        }

        private void lnkResetGrpCh_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            int grpch = gBZA.GetGrpRMChs();
            gBZA.appcfg.GroupRealviewLocation = new Point(50, 50);
            if (grpch <= 1)
            {
                gBZA.appcfg.GroupRealviewSize = new Size(600, 500);
            }
            else if (grpch == 2)
            {
                gBZA.appcfg.GroupRealviewSize = new Size(1200, 500);
            }
            else if (grpch == 3)
            {
                gBZA.appcfg.GroupRealviewSize = new Size(1800, 500);
            }
            else if (grpch == 4)
            {
                gBZA.appcfg.GroupRealviewSize = new Size(1200, 1000);
            }
            else
            {
                gBZA.appcfg.GroupRealviewSize = new Size(1800, 1000);
            }

            if (MdiParent.frmGrpRtView != null)
            {
                MdiParent.frmGrpRtView.StartPosition = FormStartPosition.Manual;
                MdiParent.frmGrpRtView.Size = gBZA.appcfg.GroupRealviewSize;
                MdiParent.frmGrpRtView.Location = gBZA.appcfg.GroupRealviewLocation;
            }

            gBZA.SaveAppCfg();
        }

        private void lnkResetTech_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.TechLocation = new Point(0, 0);

            

            gBZA.SaveAppCfg();
        }

        private void lnkResetGraph_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.GraphLocation = new Point(0, 0);
            gBZA.appcfg.GraphSize = new Size(1055, 639);
            gBZA.SaveAppCfg();
        }

        private void lnkResetEditor_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.EditLocation = new Point(0, 0);
            gBZA.appcfg.EditSize = new Size(896, 754);
            gBZA.SaveAppCfg();
        }

        private void lnkResetDataTool_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.DataToolLocation = new Point(0, 0);
            gBZA.appcfg.DataToolSize = new Size(1350, 887);

            if (MdiParent.frmResTools != null)
            {
                MdiParent.frmResTools.StartPosition = FormStartPosition.Manual;
                MdiParent.frmResTools.Size = gBZA.appcfg.DataToolSize;
                MdiParent.frmResTools.Location = gBZA.appcfg.DataToolLocation;
            }

            gBZA.SaveAppCfg();
        }

        private void lnkResetAuxvolt_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            gBZA.appcfg.AuxVdcLocation = new Point(0, 0);
            gBZA.appcfg.AuxVdcSize = new Size(680, 430);

            frmMdiMain MdiParent = ((frmMdiMain)this.Parent);
            if (MdiParent.auxForm != null)
            {
                MdiParent.auxForm.StartPosition = FormStartPosition.Manual;
                MdiParent.auxForm.Location = gBZA.appcfg.AuxVdcLocation;
                MdiParent.auxForm.Size = gBZA.appcfg.AuxVdcSize;
            }

            
            gBZA.SaveAppCfg();
        }
    }
}
