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
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM
{
    public partial class FrmCalibAuxsVdc : Form
    {
        private string Serial;
        int usingChCount;
        string[] sRngInfItem;
        string[] sCalibRMS;
        string[] sResRMS;
        private bool[] ExistChs;
        private int[] UsingChNo;
        private st_zim_rnginf[] ranges;
        CheckBox[] ChkBoxCh;

        bool begindlg;
        public FrmCalibAuxsVdc(string tSerial)
        {
            InitializeComponent();

            int auxch = 0;
            int i, j;
           
            Serial = tSerial;
            sRngInfItem = new string[] {"Maximum(V)", "Minimum(V)", "Factor", "Gain", "Offset",};
            begindlg = true;

            ExistChs = new bool[MBZA_Constant.MAX_AUX_CHANNELS];
            UsingChNo = new int[MBZA_Constant.MAX_AUX_CHANNELS];
            sCalibRMS = new string[MBZA_Constant.MAX_AUX_CHANNELS];
            sResRMS = new string[MBZA_Constant.MAX_AUX_CHANNELS];

            for (i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                ExistChs[i] = false;
                UsingChNo[i] = -1;
                sCalibRMS[i] = "";
                sResRMS[i] = "";
            }

            ChkBoxCh = new[]
            {
                chkitemB1,chkitemB2,chkitemB3,chkitemB4,chkitemB5,
                chkitemB6,chkitemB7,chkitemB8,chkitemB9,chkitemB10,
                chkitemB11,chkitemB12
            };
            foreach (var cb in ChkBoxCh) cb.CheckedChanged += CheckBoxCh_CheckedChanged;

            ranges = new st_zim_rnginf[MBZA_Constant.MAX_AUX_BOARD];
            usingChCount = 0;
            for (i = 0; i < MBZA_Constant.MAX_AUX_BOARD; i++)
            {
                ranges[i] = new st_zim_rnginf(0);
                ranges[i].ToWritePtr(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[i + 1].ranges.ToByteArray());

                if(gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.EnaZIM[i+1] == 1 && gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.ChkZIM[i + 1] == 1)
                {
                    for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNEL; j++)
                    {
                        auxch = i * MBZA_Constant.MAX_AUX_CHANNEL + j;
                        ExistChs[i] = true;
                        UsingChNo[usingChCount] = auxch;
                        ChkBoxCh[auxch].Checked = true;
                        usingChCount++;
                    }
                }
                else
                {
                    for (j = 0; j < MBZA_Constant.MAX_AUX_CHANNEL; j++)
                    {
                        auxch = i * MBZA_Constant.MAX_AUX_CHANNEL + j;
                        ChkBoxCh[auxch].Checked = false;
                        ChkBoxCh[auxch].Enabled = false;
                    }
                }
            }

            InitView();
        }
        private void AddListRealItem(int nCh, double value)
        {
            ListViewItem lvItem;
            lvItem = new ListViewItem(new string[] { string.Format("{0}",nCh+1), string.Format("{0:0.0#####}", value) });
            ListRealVal.Items.Add(lvItem);
        }

        private void AddListRngInfItem(int index)
        {
            ListViewItem lvItem;
            string[] str = new string[usingChCount + 1];
            int nAuxBd;
            int nAuxBdCh;
            double value;

            str[0] = sRngInfItem[index];
            for (int i = 0; i < usingChCount; i++)
            {
                nAuxBd = UsingChNo[i] / MBZA_Constant.MAX_AUX_CHANNEL;
                nAuxBdCh = UsingChNo[i] % MBZA_Constant.MAX_AUX_CHANNEL;
                switch (index)
                {
                    case 0: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].maximum; break;
                    case 1: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].minimum; break;
                    case 2: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].factor; break;
                    case 3: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].gain; break;
                    case 4: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].offset; break;
                    default: return;
                }
                str[i + 1] = string.Format("{0:0.0#####}", value);
                
            }
            lvItem = new ListViewItem(str);
            listRngInf.Items.Add(lvItem);
        }



        private void InitListRangeInf()
        {
            listRngInf.BeginUpdate();

            ListRealVal.Clear();

            listRngInf.View = View.Details;
            listRngInf.GridLines = true;
            listRngInf.FullRowSelect = true;
            listRngInf.CheckBoxes = false;
            listRngInf.MultiSelect = true;
            listRngInf.LabelEdit = false;
            listRngInf.LabelWrap = false;

            listRngInf.Columns.Clear();
            listRngInf.Columns.Add("Item", 120, HorizontalAlignment.Center);
            for (int i = 0; i < usingChCount; i++)
            {
                listRngInf.Columns.Add(string.Format("CH{0}", UsingChNo[i]+1), 120, HorizontalAlignment.Center);
            }
            listRngInf.Items.Clear();

            for (int i = 0; i < 5; i++)
            {
                AddListRngInfItem(i);
            }

            listRngInf.EndUpdate();
        }

        private void RefreshListRngInfItem(int index)
        {
            int nAuxBd;
            int nAuxBdCh;
            double value;

            for (int i = 0; i < usingChCount; i++)
            {
                nAuxBd = UsingChNo[i] / MBZA_Constant.MAX_AUX_CHANNEL;
                nAuxBdCh = UsingChNo[i] % MBZA_Constant.MAX_AUX_CHANNEL;
                switch (index)
                {
                    case 0: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].maximum; break;
                    case 1: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].minimum; break;
                    case 2: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].factor; break;
                    case 3: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].gain; break;
                    case 4: value = ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].offset; break;
                    default: return;
                }
                listRngInf.Items[index].SubItems[i+1].Text = string.Format("{0:0.0#####}", value);
            }
        }

        private void RefreshListRangeInf()
        {
            listRngInf.BeginUpdate();
            RefreshListRngInfItem(3);
            RefreshListRngInfItem(4);
            listRngInf.EndUpdate();
        }

        private void InitListReal()
        {
            ListRealVal.BeginUpdate();

            ListRealVal.Clear();

            ListRealVal.View = View.Details;
            ListRealVal.GridLines = true;
            ListRealVal.FullRowSelect = true;
            ListRealVal.CheckBoxes = false;
            ListRealVal.MultiSelect = true;
            ListRealVal.LabelEdit = false;
            ListRealVal.LabelWrap = false;

            ListRealVal.Columns.Clear();
            ListRealVal.Columns.Add("Channel", 70, HorizontalAlignment.Center);
            ListRealVal.Columns.Add("Value(V)", 120, HorizontalAlignment.Center);

            ListRealVal.Items.Clear();
            for(int i=0; i< usingChCount; i++)
            {
                AddListRealItem(UsingChNo[i], 0.0);
            }
            ListRealVal.EndUpdate();
        }

        private void RefreshListReal()
        {
            double value;

            ListRealVal.BeginUpdate();
            for (int i = 0; i < usingChCount; i++)
            {
                value = gBZA.SifLnkLst[Serial].MBZAIF.mChStatInf[0].Aux_Vdc[UsingChNo[i]];
                if (chkCalib1.Checked == false)
                {
                    value = value * Convert.ToDouble(listRngInf.Items[3].SubItems[UsingChNo[i] + 1].Text) + Convert.ToDouble(listRngInf.Items[4].SubItems[UsingChNo[i] + 1].Text);
                }
                ListRealVal.Items[UsingChNo[i]].SubItems[1].Text = string.Format("{0:0.0#####}", value);
            }
            ListRealVal.EndUpdate();
        }

        private void AddList(ref ListView mlstv)
        {
            ListViewItem lvItem;
            string[] str = new string[MBZA_Constant.MAX_AUXTYPE_CHANNELS];

            str[0] = txtTarget1.Text;
            for (int i = 0; i < usingChCount; i++)
            {
                str[UsingChNo[i] + 1] = ListRealVal.Items[UsingChNo[i]].SubItems[1].Text;
            }

            lvItem = new ListViewItem(str);
            mlstv.Items.Add(lvItem);
        }
        
        private void InitList(ref ListView mlstv)
        {
            mlstv.BeginUpdate();

            mlstv.Clear();

            mlstv.View = View.Details;
            mlstv.GridLines = true;
            mlstv.FullRowSelect = true;
            mlstv.CheckBoxes = false;
            mlstv.MultiSelect = true;
            mlstv.LabelEdit = false;
            mlstv.LabelWrap = false;

            mlstv.Columns.Clear();
            mlstv.Columns.Add("Target", 120, HorizontalAlignment.Center);
            for (int i = 0; i < usingChCount; i++)
            {
                mlstv.Columns.Add(string.Format("CH{0}", UsingChNo[i] + 1), 120, HorizontalAlignment.Center);
            }
            mlstv.Items.Clear();
            mlstv.EndUpdate();
        }

        private void InitView()
        {
            InitListRangeInf();
            InitListReal();

            InitList(ref listCalib);
            InitList(ref listResult);

            LoadLogInfo();
            
        }

        private void btRefresh1_Click(object sender, EventArgs e)
        {
            RefreshListReal();
        }

        private void LoadLogInfo()
        {
            string sFilename;
            string sTitle;
            
            

            for (int i = 0; i < MBZA_Constant.MAX_AUX_BOARD; i++)
            {
                if (gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.EnaZIM[i + 1] == 1 && gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.ChkZIM[i + 1] == 1)
                {
                    sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[i + 1].GetSerialNumber());
                    for (int j = 0; j < MBZA_Constant.MAX_AUX_CHANNEL; j++)
                    {
                        sTitle = string.Format("AUXBD{0}CH{1}_VDC", i + 1, j + 1);
                        ranges[i].Aux.vdc_rng[j].gain = gBZA.GetIniDoubleData(sTitle, "Gain", sFilename, ranges[i].Aux.vdc_rng[j].gain);
                        ranges[i].Aux.vdc_rng[j].offset = gBZA.GetIniDoubleData(sTitle, "Offset", sFilename, ranges[i].Aux.vdc_rng[j].offset); // 배열
                    }
                }
            }
    
            

            int count;
            string sitem;
            string[] str = new string[usingChCount + 1];
            ListViewItem lvItem;
            int nAuxBd = UsingChNo[0] / MBZA_Constant.MAX_AUX_CHANNEL;
            int nAuxBdCh = UsingChNo[0] % MBZA_Constant.MAX_AUX_CHANNEL;

            sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBd + 1].GetSerialNumber());
            sTitle = string.Format("AUXBD{0}CH{1}_VDC", nAuxBd + 1, nAuxBdCh + 1);
            count = gBZA.GetIniIntData(sTitle, "Count", sFilename, 0);

            for (int i = 0; i < count; i++)
            {
                for (int j = 0; j < usingChCount; j++)
                {
                    nAuxBd = UsingChNo[j] / MBZA_Constant.MAX_AUX_CHANNEL;
                    nAuxBdCh = UsingChNo[j] % MBZA_Constant.MAX_AUX_CHANNEL;
                    sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBd + 1].GetSerialNumber());
                    sTitle = string.Format("AUXBD{0}CH{1}_VDC", nAuxBd + 1, nAuxBdCh + 1);
                    if (j== 0)
                    {
                        sitem = string.Format("Target{0}", i + 1);
                        str[0] = gBZA.GetIniDoubleData(sTitle, sitem, sFilename, 0.0).ToString();
                    }
                    sitem = string.Format("Real{0}", i + 1);
                    str[j + 1] = gBZA.GetIniDoubleData(sTitle, sitem, sFilename, 0.0).ToString();
                    
                }
                lvItem = new ListViewItem(str);
                listResult.Items.Add(lvItem);
            }

            RefreshListRangeInf();
        }

        private void SaveLogInfo()
        {

            string sFilename;
            string sTitle;
            string sitem;
            string sValue;
            int nAuxBd;
            int nAuxBdCh;

            for (int j = 0; j < usingChCount; j++)
            {
                nAuxBd = UsingChNo[j] / MBZA_Constant.MAX_AUX_CHANNEL;
                nAuxBdCh = UsingChNo[j] % MBZA_Constant.MAX_AUX_CHANNEL;
                sFilename = gBZA.GetCalibLogFileName(Serial, gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[nAuxBd + 1].GetSerialNumber());
                sTitle = string.Format("AUXBD{0}CH{1}_VDC", nAuxBd + 1, nAuxBdCh + 1);
                gBZA.WriteIniDoubleData(sTitle, "Gain", sFilename, ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].gain);
                gBZA.WriteIniDoubleData(sTitle, "Offset", sFilename, ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].offset);
               
                gBZA.WriteIniIntData(sTitle, "Count", sFilename, listResult.Items.Count);

                for (int row = 0; row < listResult.Items.Count; row++)
                {
                    sitem = string.Format("Target{0}", row + 1);
                    sValue = listResult.Items[row].SubItems[0].Text.Replace("\r", "").Replace("\n", "");
                    gBZA.WriteIniDoubleData(sTitle, sitem, sFilename, Convert.ToDouble(sValue));

                    sitem = string.Format("Real{0}", row + 1);
                    sValue = listResult.Items[row].SubItems[UsingChNo[j] + 1].Text.Replace("\r", "").Replace("\n", "");
                    gBZA.WriteIniDoubleData(sTitle, sitem, sFilename, Convert.ToDouble(sValue));
                }
            }
            gBZA.UpdateLastCalDate(Serial);            
        }

        private void BtOpenFolder_Click(object sender, EventArgs e)
        {
            try
            {
                if (System.IO.Directory.Exists(gBZA.appcfg.PathLog))
                {
                    // 탐색기에서 폴더 열기
                    Process.Start("explorer.exe", gBZA.appcfg.PathLog);
                }
                else
                {
                    Console.WriteLine("The folder path does not exist.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }

        private void btLBAdd1_Click(object sender, EventArgs e)
        {
            AddList(ref listCalib);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AddList(ref listResult);
        }

        private void btLBRem1_Click(object sender, EventArgs e)
        {
            if (listCalib.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            if (listCalib.SelectedItems.Count == 0)
            {
                MessageBox.Show("Not found selected items."); return;
            }
            for (int i = listCalib.SelectedItems.Count - 1; i >= 0; i--)
            {
                listCalib.Items.Remove(listCalib.SelectedItems[i]);
            }
        }

        private void btLARem1_Click(object sender, EventArgs e)
        {
            if (listResult.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            if (listResult.SelectedItems.Count == 0)
            {
                MessageBox.Show("Not found selected items."); return;
            }
            for (int i = listResult.SelectedItems.Count - 1; i >= 0; i--)
            {
                listResult.Items.Remove(listResult.SelectedItems[i]);
            }
        }

        private void SetCalibMode(bool bcalib = false)
        {
            if (MBZA_MapUtil.SetCalibMode(Serial, 0, bcalib) == false)
            {
                MessageBox.Show("The command failed[SetCalibMode].");
            }
        }

        void CalibInputOperProc(int index)
        {
            ListView mlstv;
            int s;
            double mX;
            double mY;
            double Sx;
            double Sy;
            double Sxx;
            double Sxy;
            double dTemp;
            double dGain;
            double dOfs;
            double SStot = 0.0;
            double SSres = 0.0;
            double dSquare;

            s = 0;
            Sx = 0.0;
            Sy = 0.0;
            Sxx = 0.0;
            Sxy = 0.0;
            mlstv = listCalib;

            for (s = 0; s < mlstv.Items.Count; s++)
            {
                mX = Convert.ToDouble(mlstv.Items[s].SubItems[index+1].Text.Trim());
                mY = Convert.ToDouble(mlstv.Items[s].SubItems[0].Text.Trim());
                Sx += mX;
                Sy += mY;
                Sxx += (mX * mX);
                Sxy += (mX * mY);
            }
            dTemp = (s * Sxx) - (Sx * Sx);

            dOfs = ((Sxx * Sy - Sx * Sxy) / dTemp);
            dGain = ((s * Sxy - Sx * Sy) / dTemp);

            Sy = Sy / s;
            SStot = 0.0;
            SSres = 0.0;

            for (s = 0; s < mlstv.Items.Count; s++)
            {
                mX = Convert.ToDouble(mlstv.Items[s].SubItems[index + 1].Text.Trim());
                mX = mX * dGain + dOfs;
                mY = Convert.ToDouble(mlstv.Items[s].SubItems[0].Text.Trim());

                SStot += (mY - Sy) * (mY - Sy);
                SSres += (mY - mX) * (mY - mX);
            }

            if (s > 0)
            {
                if (SStot == 0.0)
                {
                    dSquare = 0.0f;
                }
                else if (SSres == 0.0)
                {
                    dSquare = 1.0f;
                }
                else
                {
                    dSquare = (float)(1.0 - (SSres / SStot));
                }
            }
            else
            {
                if (SStot == 0.0)
                {
                    dSquare = 0.0f;
                }
                else if (SSres == 0.0)
                {
                    dSquare = 1.0f;
                }
                else
                {
                    dSquare = (float)(1.0 - (SSres / SStot));
                }
            }
            

            sCalibRMS[index] = string.Format("{0:0.0#####}", dSquare);
            listRngInf.Items[3].SubItems[index+1].Text = string.Format("{0:0.0#####}", dGain);
            listRngInf.Items[4].SubItems[index+1].Text = string.Format("{0:0.0#####}", dOfs);
        }

        void CheckInputOperProc(int index)
        {
            ListView mlstv;
            int s;
            double mX;
            double mY;
            double Sx;
            double Sy;

            double SStot = 0.0;
            double SSres = 0.0;
            double dSquare;

            mlstv = listResult;
            s = 0;
            Sx = 0.0;
            Sy = 0.0;

            for (s = 0; s < mlstv.Items.Count; s++)
            {
                mX = Convert.ToDouble(mlstv.Items[s].SubItems[index+1].Text.Trim());
                mY = Convert.ToDouble(mlstv.Items[s].SubItems[0].Text.Trim());
                Sx += mX;
                Sy += mY;
            }

            Sy = Sy / s;

            for (s = 0; s < mlstv.Items.Count; s++)
            {
                mX = Convert.ToDouble(mlstv.Items[s].SubItems[index+1].Text.Trim());
                mY = Convert.ToDouble(mlstv.Items[s].SubItems[0].Text.Trim());

                SStot += (mY - Sy) * (mY - Sy);
                SSres += (mY - mX) * (mY - mX);
            }

            if (s > 0)
            {
                if (SStot == 0.0)
                {
                    dSquare = 0.0f;
                }
                else if (SSres == 0.0)
                {
                    dSquare = 1.0f;
                }
                else
                {
                    dSquare = (float)(1.0 - (SSres / SStot));
                }
            }
            else
            {
                if (SStot == 0.0)
                {
                    dSquare = 0.0f;
                }
                else if (SSres == 0.0)
                {
                    dSquare = 1.0f;
                }
                else
                {
                    dSquare = (float)(1.0 - (SSres / SStot));
                }
            }
            sResRMS[index] = string.Format("{0:0.0#####}", dSquare);
        }

        private void btGetCalInf1_Click(object sender, EventArgs e)
        {
            if (listCalib.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            for (int i = 0; i < usingChCount; i++)
            {
                CalibInputOperProc(UsingChNo[i]);
            }
            string str = "";
            for (int i = 0; i < usingChCount; i++)
            {
                str += sCalibRMS[UsingChNo[i]] + "\\ ";
            }
            txtCalibSquare.Text = str;
        }

        private void btCheckCal_Click(object sender, EventArgs e)
        {
            if (listResult.Items.Count == 0)
            {
                MessageBox.Show("Not found items."); return;
            }
            for(int i = 0; i < usingChCount; i++)
            {
                CheckInputOperProc(UsingChNo[i]);
            }
            string str = "";
            for (int i = 0; i < usingChCount; i++)
            {
                str += sResRMS[UsingChNo[i]] + "\\ ";
            }
            txtResSquare.Text = str;
        }

        private void btApply1_Click(object sender, EventArgs e)
        {
            int nAuxBd;
            int nAuxBdCh;

            for (int i = 0; i < usingChCount; i++)
            {
                nAuxBd = UsingChNo[i] / MBZA_Constant.MAX_AUX_CHANNEL;
                nAuxBdCh = UsingChNo[i] % MBZA_Constant.MAX_AUX_CHANNEL;
                ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].gain = Convert.ToDouble(listRngInf.Items[3].SubItems[UsingChNo[i] + 1].Text);
                ranges[nAuxBd].Aux.vdc_rng[nAuxBdCh].offset = Convert.ToDouble(listRngInf.Items[4].SubItems[UsingChNo[i] + 1].Text);
            }

            for (int i = 0; i < MBZA_Constant.MAX_AUX_BOARD; i++)
            {
                if (gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.EnaZIM[i + 1] == 1 && gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.ChkZIM[i + 1] == 1)
                {
                    gBZA.SifLnkLst[Serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[i + 1].ranges.ToWritePtr(ranges[i].ToByteArray());
                    if (MBZA_MapUtil.Save_Range_info(Serial, i + 1) == false)
                    {
                        MessageBox.Show("The operation failed.");
                        return;
                    }
                }
            }
            SaveLogInfo();
            MessageBox.Show("The operation has been successful.");
        }

        private void btClose_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void chkCalib1_CheckedChanged(object sender, EventArgs e)
        {
            RefreshListReal();
        }

        private void btSelAllBdItems_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                ChkBoxCh[i].Checked = true;
            }
        }

        private void btDeselAllBdItems_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                ChkBoxCh[i].Checked = false;
            }
        }

        private void CheckBoxCh_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox changedBox = sender as CheckBox;

            if (changedBox == null || begindlg)
                return;
            for (int i = 0; i < MBZA_Constant.MAX_AUX_CHANNELS; i++)
            {
                if (changedBox == ChkBoxCh[i])
                {
                    // ExistChs 
                    if (changedBox.Checked == false)
                        pop_ch(i);
                    else
                        push_ch(i);
                }

            }
        }
        private void pop_ch(int chnum)
        {
            for (int j = 0; j < usingChCount; j++)
            {
                if (chnum == UsingChNo[j])
                {
                    for(int i = j; i< usingChCount - 1 ;i++)
                    {
                        UsingChNo[i] = UsingChNo[i + 1];
                    }
                    UsingChNo[usingChCount - 1] = -1;
                    usingChCount--;
                    break;
                }
            }
        }
        private void push_ch(int chnum)
        {
            if(usingChCount == 0)
            {
                UsingChNo[0] = chnum;
                usingChCount++;
                return;
            }
            for (int j = 0; j < usingChCount; j++)
            {
                if (chnum == UsingChNo[j])
                    return;
                if (chnum < UsingChNo[j])
                {
                    for (int i = usingChCount - 1; i >= j; i--)
                    {
                        UsingChNo[i + 1] = UsingChNo[i];
                    }
                    UsingChNo[j] = chnum;
                    usingChCount++;
                    break;
                }
            }
        }

        private void FrmCalibAuxsVdc_Load(object sender, EventArgs e)
        {
            begindlg = false;
        }
    }
}
