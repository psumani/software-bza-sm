using Microsoft.WindowsAPICodePack;
using Microsoft.WindowsAPICodePack.Dialogs;
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
    public partial class frmStart : Form
    {
        public string sSerial;
        public int iSifCh;
        public int ich;
        int oldindex;
        public string sch;
        public List<int> lstch;
        public List<stTech_Info> lstTech;
        stTech_Info minfo;
        stTech mtech;
        bool bFirst;
        bool bError;
        bool bGroup;
        DateTime currdate;
        public frmStart(bool tGroup, List<int> tlstch = null)
        {
            InitializeComponent();
            bFirst = true;
            bGroup = tGroup;
            oldindex = -1;

            bError = false;
            if (tlstch.Count < 1 || tlstch == null)
            {
                MessageBox.Show("There is no channel selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                DialogResult = DialogResult.Cancel;
                return;
            }


            lstch = new List<int>();
            lstTech = new List<stTech_Info>();
            mtech = new stTech(0);
            minfo = new stTech_Info(0);
            
            chkapptech.Checked = true;

            lstch = tlstch;

            listbox1.Items.Clear();
            lstTech.Clear();
            foreach (var val in lstch)
            {
                listbox1.Items.Add(string.Format("CH-{0}", val + 1));
                if (GetTechInfo(val, ref minfo) == true)
                {
                    lstTech.Add(minfo);
                }
                else
                {
                    MessageBox.Show(string.Format("There is a problem with the condition file specified for channel {0}.", val + 1), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    bError = true;
                    DialogResult = DialogResult.Cancel;
                    return;
                }
            }

            listbox1.SelectedIndex = 0;

            ich = lstch[listbox1.SelectedIndex];
            sch = ich.ToString();
            sSerial = gBZA.ChLnkLst[sch].sSerial;
            iSifCh = gBZA.ChLnkLst[sch].SifCh;
            minfo = lstTech[listbox1.SelectedIndex];
            if (bGroup == false)
            {
                groupBox3.Visible = false;
                this.Text = string.Format("Set the experimental start conditions for channel {0}.", ich + 1);
            }
            else
            {
                this.Text = "Set the experimental start conditions for group channels.";
            }
            this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.StartLogging);
        }

        private bool GetTechInfo(int ch, ref stTech_Info minfo)
        {
            string tsch = ch.ToString();
            string tsSerial = gBZA.ChLnkLst[tsch].sSerial;
            int tiSifCh = gBZA.ChLnkLst[tsch].SifCh;
            stTech tmtech = new stTech(0);
            if(gBZA.SifLnkLst.ContainsKey(tsSerial))
            {
                txttechfile.Text = gBZA.SifLnkLst[tsSerial].MBZAIF.condfilename[tiSifCh];
                FileCondition fc = new FileCondition();
                if (fc.OpenFile(txttechfile.Text, ref tmtech) == false)
                {
                    return false;
                }
                minfo = tmtech.info;
                return true;
            }

            return false;
        }

        private void RefreshInformation()
        {
            if (bGroup == true)
            {
                ich = lstch[listbox1.SelectedIndex];
                sch = ich.ToString();
                sSerial = gBZA.ChLnkLst[sch].sSerial;
                iSifCh = gBZA.ChLnkLst[sch].SifCh;
                minfo = lstTech[listbox1.SelectedIndex];
            }

            txttechfile.Text = gBZA.SifLnkLst[sSerial].MBZAIF.condfilename[iSifCh];
            oldindex = listbox1.SelectedIndex;
            if (chkapptech.Checked == true)
            {
                FileCondition fc = new FileCondition();
                if (fc.OpenFile(txttechfile.Text, ref mtech) == false)
                {
                    return;
                }
                minfo = mtech.info;
            }
            txtbatid.Text = Encoding.UTF8.GetString(minfo.batid).Trim('\0');
            txtcapa.Text = string.Format("{0:0.0##}", minfo.Capa);
            txtuser.Text = Encoding.UTF8.GetString(minfo.creator).Trim('\0');

            txtbatid.ReadOnly = chkapptech.Checked;
            txtcapa.ReadOnly = chkapptech.Checked;
            txtuser.ReadOnly = chkapptech.Checked;
        }
        private void frmStart_Load(object sender, EventArgs e)
        {
            if (bError)
            {
                DialogResult = DialogResult.Cancel;
            }
            else
            {

                string sPath = gBZA.appcfg.PathAlwaysData;
                if (gBZA.appcfg.UsePathAlwaysData == false)
                {
                    if (gBZA.appcfg.PathData[0].Trim().Length > 5)
                    {
                        sPath = gBZA.appcfg.PathData[0];
                        if (!Directory.Exists(sPath)) sPath = gBZA.appcfg.PathAlwaysData;
                    }
                }
                    
                RefreshInformation();
   
                txtfilepath.Text = sPath;
                txtfilename.Text = "";
                txtmemo.Text = "";
                bFirst = false;
            }
        }

        private void btselpath_Click(object sender, EventArgs e)
        {
            SaveMenuProc(sender, e);
        }

        private void RecentSaveDataFileItem_Click(object sender, EventArgs e)
        {
            ToolStripMenuItem clickedItem = sender as ToolStripMenuItem;
            if (clickedItem == null) return;
            string sPath;

            string filePath = clickedItem.Tag as string;
            if (filePath == "Default") sPath = gBZA.appcfg.PathAlwaysData;
            else if (filePath == "Select")
            {
                //frmSelectFolderDlg mSeldlg = new frmSelectFolderDlg(true);
                //mSeldlg.ShowDialog();

                CommonOpenFileDialog dialog = new CommonOpenFileDialog();
                dialog.Title = "Set result file location.";
                if (gBZA.appcfg.PathData[0].Trim().Length < 5) sPath = gBZA.appcfg.PathAlwaysData;
                else
                {
                    sPath = gBZA.appcfg.PathData[0];
                    if (!Directory.Exists(sPath)) sPath = gBZA.appcfg.PathAlwaysData;
                }
                dialog.InitialDirectory = sPath;
                dialog.IsFolderPicker = true;
                if (dialog.ShowDialog() == CommonFileDialogResult.Ok)
                {
                    sPath = dialog.FileName;
                }
                else sPath = txtfilepath.Text;
            }
            else if (Directory.Exists(filePath))
            {
                sPath = filePath;
            }
            else
            {
                sPath = txtfilepath.Text;
            }
            txtfilepath.Text = sPath;
        }

        private void SaveMenuProc(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            ContextMenuStrip recentMenu = new ContextMenuStrip();
            recentMenu.Items.Clear();

            ToolStripMenuItem item;
            item = new ToolStripMenuItem("Select folder.");
            item.Tag = "Select"; // 실제 파일 경로는 Tag에 보관
            item.ToolTipText = "Select"; // 마우스 올렸을 때 전체 경로 표시
            item.Click += RecentSaveDataFileItem_Click; // 클릭 이벤트 연결
            recentMenu.Items.Add(item);
            recentMenu.Items.Add(new ToolStripSeparator());

            string sitem = string.Format("Default Path({0}).", gBZA.appcfg.PathAlwaysData);
            item = new ToolStripMenuItem(sitem);
            item.Tag = "Default"; // 실제 파일 경로는 Tag에 보관
            item.ToolTipText = sitem; // 마우스 올렸을 때 전체 경로 표시
            item.Click += RecentSaveDataFileItem_Click; // 클릭 이벤트 연결
            recentMenu.Items.Add(item);
            recentMenu.Items.Add(new ToolStripSeparator());

            if (gBZA.recentDataFiles.Count == 0)
            {
                // 최근 항목이 없을 때 안내 메시지 추가
                ToolStripMenuItem emptyItem = new ToolStripMenuItem("There are no recent items.");
                emptyItem.Enabled = false;
                recentMenu.Items.Add(emptyItem);
            }
            else
            {

                System.Collections.Specialized.StringCollection recentDataPath = new System.Collections.Specialized.StringCollection();

                foreach (string filePath in gBZA.recentDataFiles)
                {
                    if (!recentDataPath.Contains(filePath))
                    {
                        recentDataPath.Insert(0, filePath);
                    }
                }
                
                if (recentDataPath.Contains(gBZA.appcfg.PathAlwaysData))
                {
                    recentDataPath.Remove(gBZA.appcfg.PathAlwaysData);
                }


                if (recentDataPath.Count == 0)
                {
                    // 최근 항목이 없을 때 안내 메시지 추가
                    ToolStripMenuItem emptyItem = new ToolStripMenuItem("There are no recent items.");
                    emptyItem.Enabled = false;
                    recentMenu.Items.Add(emptyItem);
                }
                else
                {
                    var uniqueArray = recentDataPath.Cast<string>().Distinct().ToArray();
                    System.Collections.Specialized.StringCollection uniqueCollection = new System.Collections.Specialized.StringCollection();
                    uniqueCollection.AddRange(uniqueArray);


                    // 최근 항목들을 메뉴에 동적으로 추가
                    foreach (string sPath in uniqueCollection)
                    {
                        // 파일명만 표시하고, 전체 경로는 ToolTip이나 Tag에 저장
                        string sShortenPath = gBZA.ShortenPath(sPath);
                        item = new ToolStripMenuItem(sShortenPath);

                        item.Tag = sPath; // 실제 파일 경로는 Tag에 보관
                        item.ToolTipText = sPath; // 마우스 올렸을 때 전체 경로 표시
                        item.Click += RecentSaveDataFileItem_Click; // 클릭 이벤트 연결

                        recentMenu.Items.Add(item);

                        recentMenu.Items.Add(new ToolStripSeparator());
                    }

                    
                    ToolStripMenuItem clearItem = new ToolStripMenuItem("Empty Recent Items");
                    clearItem.Click += (s, ev) =>
                    {
                        gBZA.ClearRecenDatatFile();
                    };
                    recentMenu.Items.Add(clearItem);
                }
            }
            recentMenu.Show(btn, new Point(btn.Width / 2, btn.Height));
        }

        private void listbox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bFirst == false && bGroup == true)
            {
                if (oldindex > -1 && oldindex != listbox1.SelectedIndex)
                {
                    minfo = lstTech[oldindex];
                    minfo.batid = Encoding.UTF8.GetBytes(txtbatid.Text.Trim());
                    minfo.Capa = Convert.ToDouble(txtcapa.Text);
                    minfo.creator = Encoding.UTF8.GetBytes(txtuser.Text.Trim());
                    lstTech[oldindex] = minfo;
                }
                RefreshInformation();
            }
        }

        private void btcancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        private string chkresultfile()
        {
            stLinkSifCh LnkCh = new stLinkSifCh(0);
            string sifid;
            int sifch;

            string serrch = "";
            string sname;
            string sfilename;
            string sPath;
            string sTimePath;
            string sTimefname;
            string sTechfname;

            sTimePath = currdate.ToString("yyyyMMdd");
            sTimefname = currdate.ToString("hhmmss");
            sfilename = txtfilename.Text.Trim();
            sTechfname = Path.GetFileName(txttechfile.Text.Trim());

            sPath = Path.Combine(txtfilepath.Text, sTechfname);
            sPath = Path.Combine(sPath, sTimePath);
            Directory.CreateDirectory(sPath);

            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;

                gBZA.SifLnkLst[sifid].MBZAIF.mresfile[sifch].CloseFile();

                if (sfilename.Length < 1) sname = string.Format("{0}_{1:00}.zmf", sTimefname, val + 1);
                else sname = string.Format("{0}_{1:00}.zmf", sfilename, val + 1);

                sname = Path.Combine(sPath, sname);
                

                if (File.Exists(sname))
                {
                    serrch += string.Format("{0:00} ", val + 1);
                }
            }
            return serrch;
        }

        private bool DeleteResultfiles()
        {
            stLinkSifCh LnkCh = new stLinkSifCh(0);
            string sifid;
            int sifch;

            string sname;
            string sfilename;
            string sPath;
            string sTimePath;
            string sTimefname;
            string sTechfname;

            sTimePath = currdate.ToString("yyyyMMdd");
            sTimefname = currdate.ToString("hhMMss");
            sfilename = txtfilename.Text.Trim();
            sTechfname = Path.GetFileName(txttechfile.Text.Trim());
            sPath = Path.Combine(txtfilepath.Text, sTechfname);
            sPath = Path.Combine(sPath, sTimePath);

            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;

                if (sfilename.Length < 1) sname = string.Format("{0}_{1:00}.zmf", sTimefname, val + 1);
                else sname = string.Format("{0}_{1:00}.zmf", sfilename, val + 1);

                sname = Path.Combine(sPath, sname);

                if (File.Exists(sname))
                {
                    try
                    {
                        File.Delete(sname);
                    }
                    catch(Exception e)
                    {
                        MessageBox.Show(string.Format("{0}[{1}].", e.Message,val + 1), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return false;
                    }
                }
            }
            return true;
        }
        private string chkTechfile()
        {
            string serrch = "";
            FileCondition fc = new FileCondition();
            stLinkSifCh LnkCh = new stLinkSifCh(0);
            stTech tech = new stTech(0);
            string sifid;
            int sifch;
            double tmpI = 0.0;
            ushort irng;
            enTechType techtype;
            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;

                if (fc.OpenFile(gBZA.SifLnkLst[sifid].MBZAIF.condfilename[sifch], ref tech) == false)
                {
                    serrch += string.Format("   -> {0:00}::Technique file error detection.\r\n ", val + 1);
                }
                
                gBZA.SifLnkLst[sifid].MBZAIF.tech[sifch] = tech;
                //tmpI = (double)gBZA.SifLnkLst[sifid].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges[0].mSafety.MaxPower / gBZA.SifLnkLst[sifid].MBZAIF.mChStatInf[sifch].Vdc;
                tmpI = (double)gBZA.SifLnkLst[sifid].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges.Gen.mSafety.MaxPower / gBZA.SifLnkLst[sifid].MBZAIF.mChStatInf[sifch].Vdc; // 배열


                irng = getLimitRangeI(sifid, sifch, tmpI, (enTechType)tech.type);
                if (tech.irange < irng)
                {
                    serrch += string.Format("   ->{0:00}::Range use error exceeding permissible power.\r\n ", val + 1);
                }

                techtype = (enTechType)tech.type;

                if (techtype == enTechType.TECH_HFR)
                {
                    stTech_HFR hfr = new stTech_HFR(0);
                    tech.GetHFR(ref hfr);

                    if (hfr.totaltime < MBZA_Constant.MIN_TOTALTIME)
                    {
                        serrch += string.Format("The minimum value for the total time setting is {0}second.", MBZA_Constant.MIN_TOTALTIME);
                    }
                    if (hfr.interval < MBZA_Constant.MIN_INTERVALTIME)
                    {
                        serrch += string.Format("The minimum value for the interval time setting is {0}second.", MBZA_Constant.MIN_INTERVALTIME);
                    }
                    
                }
                else if (techtype == enTechType.TECH_MON)
                {
                    stTech_MON mon = new stTech_MON(0);
                    tech.GetMON(ref mon);

                    if (mon.totaltime < MBZA_Constant.MIN_TOTALTIME)
                    {
                        serrch += string.Format("The minimum value for the total time setting is {0}second.", MBZA_Constant.MIN_TOTALTIME);
                    }
                    if (mon.sampletime < MBZA_Constant.MIN_SAMPLETIME)
                    {
                        serrch += string.Format("The minimum value for the sampling time setting is {0}second.", MBZA_Constant.MIN_SAMPLETIME);
                    }
                }
                else if (techtype == enTechType.TECH_PRR)
                {
                    stTech_PRR prr = new stTech_PRR(0);
                    tech.GetPRR(ref prr);
                    if (prr.totaltime < MBZA_Constant.MIN_TOTALTIME)
                    {
                        serrch += string.Format("The minimum value for the total time setting is {0}second.", MBZA_Constant.MIN_TOTALTIME);
                    }
                    if (prr.interval < MBZA_Constant.MIN_INTERVALTIME)
                    {
                        serrch += string.Format("The minimum value for the interval time setting is {0}second.", MBZA_Constant.MIN_INTERVALTIME);
                    }
                }
                else if (techtype == enTechType.TECH_QIS)
                {
                  
                }
                else if (techtype == enTechType.TECH_DCH)
                {
                    stTech_DCH dch = new stTech_DCH(0);
                    tech.GetDCH(ref dch);
                    if (dch.sampletime < MBZA_Constant.MIN_SAMPLETIME)
                    {
                        serrch += string.Format("The minimum value for the sampling time setting is {0}second.", MBZA_Constant.MIN_SAMPLETIME);
                    }
                }
                else
                {
                    
                }
            }

            
            return serrch;
        }

        private ushort getLimitRangeI(string sifid, int sifch, double current, enTechType type)
        {
            ushort orng = 0;
            ushort rng = 0;
            double tmp = 0.0;
            double tmp1 = Math.Abs(current);
            while (true)
            {
                //tmp = gBZA.SifLnkLst[sifid].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges[0].iac_rng[rng].realmax;
                tmp = gBZA.SifLnkLst[sifid].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].ranges.Gen.iac_rng[rng].realmax; // 배열

                if (type == enTechType.TECH_DCH) tmp *= 0.5;

                if (tmp1 < tmp)
                {
                    orng++;
                    tmp = tmp * 0.2;
                    if (tmp1 < tmp)
                    {
                        orng++;
                        if ((DeviceConstants.MAX_IAC_RNGCNT - 1) <= rng) break;
                    }
                    else break;
                }
                else break;

                rng++;
            }

            return orng;
        }

        private string UploadTechfile()
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
                if(MBZA_MapUtil.UploadTechnique(sifid, sifch) == false)
                {
                    serrch += string.Format("{0:00} ", val + 1);
                }
            }
            return serrch;
        }

        private string StartChannel()
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
                if (MBZA_MapUtil.CtrlStart(sifid, sifch,false) == false)
                {
                    serrch += string.Format("{0:00} ", val + 1);
                }
            }
            return serrch;
        }

        private string chkrungroup()
        {
            string serrch = "";
            stLinkSifCh LnkCh = new stLinkSifCh(0);
            string sifid;
            int sifch;

            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;

                if (gBZA.CheckStatusRun(gBZA.SifLnkLst[sifid].MBZAIF.mChStatInf[sifch]) || gBZA.CheckStatusCalibMode(gBZA.SifLnkLst[sifid].MBZAIF.mChStatInf[sifch]))
                {
                    serrch += string.Format("{0:00} ", val + 1);
                }
            }
            return serrch;
        }

        private int GetWillSampleCount(stTech tTech)
        {
            int count = 0;
            double tmp;
            enTechType techtype = (enTechType)tTech.type;

            if (techtype  == enTechType.TECH_HFR)
            {
                stTech_HFR hfr = new stTech_HFR(0);
                tTech.GetHFR(ref hfr);
                count = (int)(hfr.totaltime / hfr.interval);
            }
            else if (techtype == enTechType.TECH_MON)
            {
                stTech_MON mon = new stTech_MON(0);
                tTech.GetMON(ref mon);
                count = (int)(mon.totaltime / mon.sampletime);
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                stTech_PRR prr = new stTech_PRR(0);
                tTech.GetPRR(ref prr);
                tmp = 3.0;
                if (prr.rdendfreq == 0.0)
                {
                    tmp = 2.0;
                }
                count = (int)(prr.totaltime / (prr.interval * tmp));
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                stTech_QIS qis = new stTech_QIS(0);
                tTech.GetQIS(ref qis);
                count = qis.GetFreqCount();
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                //stTech_DCH dch = new stTech_DCH(0);
                //tTech.GetDCH(ref dch);
                //count = (int)(dch.totaltime / dch.sampletime);
            }
            else
            {
                stTech_EIS eis = new stTech_EIS(0);
                tTech.GetEIS(ref eis);
                count = eis.GetFreqCount();
            }
            return count;
        }

        private string chkSamplesOfTechfile()
        {
            string serrch = "";
            stLinkSifCh LnkCh = new stLinkSifCh(0);
            string sifid;
            int sifch;

            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;

                if(GetWillSampleCount(gBZA.SifLnkLst[sifid].MBZAIF.tech[sifch]) > MBZA_Constant.MAX_DATA_CNT)
                {
                    serrch += string.Format("{0:00} ", val + 1);
                }
            }
            
            return serrch;
        }


        private void btstart_Click(object sender, EventArgs e)
        {
            string sPath;
            string sname;
            string sTimePath;
            string sTimefname; 
            string sfilename;
            string sTechfname;
            string sifid;
            int sifch;
            stResHeader head = new stResHeader(0);
            FileCondition fc = new FileCondition();
            stLinkSifCh LnkCh = new stLinkSifCh(0);
            string serr;
            string smsg = "";
            
            currdate = DateTime.Now;
            sTimePath = currdate.ToString("yyyyMMdd");
            sTimefname = currdate.ToString("hhmmss");
            sTechfname = Path.GetFileName(txttechfile.Text.Trim());
            sPath = Path.Combine(txtfilepath.Text, sTechfname);
            sPath = Path.Combine(sPath, sTimePath);

            serr = chkrungroup();
            if (serr.Trim().Length > 0)
            {
                smsg = string.Format("Channels({0}) does not exist or is currently in progress.\r\nAre you sure you want to start testing without channels in progress ?", serr);
                if (MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
                {
                    return;
                }
            }

            serr = chkresultfile();
            if (serr.Trim().Length > 0)
            {
                smsg = string.Format("A result file for channels({0}) already exists.\r\nAre you sure you want to delete all existing files and start testing ?", serr);
                if (MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
                {
                    return;
                }
            }
            
            serr = chkTechfile();
            if (serr.Trim().Length > 0)
            {

                smsg = string.Format("There is a problem with the technique file set for channels. \r\n{0} \r\n Please check and try again.", serr);
                gBZA.ShowErrBox(smsg);
                return;
            }

            serr = chkSamplesOfTechfile();

            if (serr.Trim().Length > 0)
            {

                smsg = string.Format("In the channel below, the expected number of experimental data in the technical file has exceeded the maximum storable {0} experimental data. \r\nPlease check the contents of the technical file and try again.\r\n\r\n * Channel: {1}", MBZA_Constant.MAX_DATA_CNT, serr);
                gBZA.ShowErrBox(smsg);
                return;
            }

            serr = UploadTechfile();
            if (serr.Trim().Length > 0)
            {
                smsg = string.Format("There is a problem when transferring the contents of the description file set on channels({0}). \r\nPlease check and try again.", serr);
                gBZA.ShowErrBox(smsg);
                return;
            }

            if (DeleteResultfiles() == false)
            {
                return;
            }
           
            minfo = lstTech[oldindex];
            minfo.batid = Encoding.UTF8.GetBytes(txtbatid.Text.Trim());
            minfo.Capa = Convert.ToDouble(txtcapa.Text);
            minfo.creator = Encoding.UTF8.GetBytes(txtuser.Text.Trim());
            lstTech[oldindex] = minfo;
            int index = 0;

            

            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;
                minfo = lstTech[index];
                index++;

                head.SetTechFilename(Encoding.UTF8.GetBytes(gBZA.SifLnkLst[sifid].MBZAIF.condfilename[sifch]));
                head.SetMemo(Encoding.UTF8.GetBytes(txtmemo.Text.Trim()));
                head.mInfo.Error = 0;
                head.tech = gBZA.SifLnkLst[sifid].MBZAIF.tech[sifch];
                head.systemInfo = gBZA.SifLnkLst[sifid].MBZAIF.mDevInf.mSysCfg;
                
                if (chkapptech.Checked == true)
                {
                    head.mInfo.Capa = head.tech.info.Capa;
                    head.SetBattId(head.tech.info.batid);
                    head.SetUser(head.tech.info.creator);
                }
                else
                {
                    Array.Clear(head.mInfo.batid, 0, DeviceConstants.BATIDSIZE);
                    Array.Copy(minfo.batid,head.mInfo.batid, minfo.batid.Length);
                    head.mInfo.Capa = minfo.Capa;
                    Array.Clear(head.mInfo.user, 0, DeviceConstants.USERSIZE);
                    Array.Copy(minfo.creator, head.mInfo.user, minfo.creator.Length);
                }

                if(txtfilename.Text.Trim().Length < 1) sname = string.Format("{0}_{1:00}.zmf", sTimefname, val + 1);
                else sname = string.Format("{0}_{1:00}.zmf", txtfilename.Text, val + 1);

               
                sfilename = Path.Combine(sPath, sname);


                gBZA.SifLnkLst[sifid].MBZAIF.mHeadinf[sifch] = head.mInfo;
                gBZA.SifLnkLst[sifid].MBZAIF.mresfile[sifch].SetHead(head);
                
                gBZA.SifLnkLst[sifid].MBZAIF.resfilename[sifch] = sfilename;
                MBZA_MapUtil.UploadResheadinfo(sifid, sifch);
                LnkCh.mChInf.FileCond = gBZA.SifLnkLst[sifid].MBZAIF.condfilename[sifch];
                LnkCh.mChInf.FileResult = sfilename;

                gBZA.ChLnkLst[val.ToString()] = LnkCh;
            }
            gBZA.MemoryRecentDataFile(txtfilepath.Text.Trim()); //gBZA.appcfg. ApplyDataPath(txtfilepath.Text.Trim());
            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);

            DialogResult = DialogResult.OK;
         
        }

        private void chkapptech_CheckedChanged(object sender, EventArgs e)
        {
            if (bFirst == false) RefreshInformation(); 
        }
    }
}
