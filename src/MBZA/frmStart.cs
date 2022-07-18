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
        public frmStart(List<int> tlstch = null)
        {
            InitializeComponent();
            bFirst = true;
            oldindex = -1;
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
                if(GetTechInfo(val,ref minfo) == true)
                {
                    lstTech.Add(minfo);
                }
                else
                {
                    MessageBox.Show(string.Format("There is a problem with the condition file specified for channel {0}.", val + 1), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    DialogResult = DialogResult.Cancel;
                    return;
                }
            }
            listbox1.SelectedIndex = 0;
            if(lstch.Count == 1)
            {
                groupBox3.Visible = false;
            }
        }

        private bool GetTechInfo(int ch, ref stTech_Info minfo)
        {
            string tsch = ch.ToString();
            string tsSerial = gBZA.ChLnkLst[tsch].sSerial;
            int tiSifCh = gBZA.ChLnkLst[tsch].SifCh;
            stTech tmtech = new stTech(0);

            txttechfile.Text = gBZA.SifLnkLst[tsSerial].MBZAIF.condfilename[tiSifCh];
            FileCondition fc = new FileCondition();
            if (fc.OpenFile(txttechfile.Text, ref tmtech) == false)
            {
                return false;
            }
            minfo = tmtech.info;
            return true;
        }

        private void RefreshInformation()
        {
            ich = lstch[listbox1.SelectedIndex];
            sch = ich.ToString();
            sSerial = gBZA.ChLnkLst[sch].sSerial;
            iSifCh = gBZA.ChLnkLst[sch].SifCh;
            minfo = lstTech[listbox1.SelectedIndex];
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
            txtfilepath.Text = gBZA.appcfg.PathData;
            txtfilename.Text = "";

            RefreshInformation();

            txtmemo.Text = "";
            bFirst = false;
        }

        private void btselpath_Click(object sender, EventArgs e)
        {
            CommonOpenFileDialog dialog = new CommonOpenFileDialog();
            dialog.InitialDirectory = txtfilepath.Text;
            dialog.IsFolderPicker = true;
            if (dialog.ShowDialog() == CommonFileDialogResult.Ok)
            {
                txtfilepath.Text = dialog.FileName;
            }
        }

        private void listbox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bFirst == false)
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
            string serrch = "";
            string sname;
            string sfilename;

            stLinkSifCh LnkCh = new stLinkSifCh(0);
            string sifid;
            int sifch;

            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;

                gBZA.SifLnkLst[sifid].MBZAIF.mresfile[sifch].CloseFile();

                sname = string.Format("{0}{1:000}.zmf", txtfilename.Text, val + 1);
                sfilename = Path.Combine(txtfilepath.Text, sname);

                if (File.Exists(sfilename))
                {
                    serrch += string.Format("{0:00} ", val + 1);
                }
            }
            return serrch;
        }

        private bool DeleteResultfiles()
        {
            string sname;
            string sfilename;

            stLinkSifCh LnkCh = new stLinkSifCh(0);
            string sifid;
            int sifch;

            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;

                gBZA.SifLnkLst[sifid].MBZAIF.mresfile[sifch].CloseFile();

                sname = string.Format("{0}{1:000}.zmf", txtfilename.Text, val + 1);
                sfilename = Path.Combine(txtfilepath.Text, sname);

                if (File.Exists(sfilename))
                {
                    try
                    {
                        File.Delete(sfilename);
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
             
            foreach (var val in lstch)
            {
                LnkCh = gBZA.ChLnkLst[val.ToString()];
                sifid = LnkCh.sSerial;
                sifch = LnkCh.SifCh;

                if (fc.OpenFile(gBZA.SifLnkLst[sifid].MBZAIF.condfilename[sifch], ref tech) == false)
                {
                    serrch += string.Format("{0:00} ", val + 1);
                }
                
                gBZA.SifLnkLst[sifid].MBZAIF.tech[sifch] = tech;
            }

            
            return serrch;
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
        private void btstart_Click(object sender, EventArgs e)
        {
            string sname;
            string sfilename;
            string sifid;
            int sifch;
            stResHeader head = new stResHeader(0);
            FileCondition fc = new FileCondition();
            stLinkSifCh LnkCh = new stLinkSifCh(0);
            string serr;
            string smsg = "";

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

                smsg = string.Format("There is a problem with the technique file set for channels({0}). Please check and try again.", serr);
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
                head.SetTechFile(Encoding.UTF8.GetBytes(gBZA.SifLnkLst[sifid].MBZAIF.condfilename[sifch]));
                head.SetMemo(Encoding.UTF8.GetBytes(txtmemo.Text.Trim()));
                head.mInfo.Error = 0;
                head.tech = gBZA.SifLnkLst[sifid].MBZAIF.tech[sifch];
                head.inf_sif = gBZA.SifLnkLst[sifid].MBZAIF.mDevInf.mSysCfg.mSIFCfg;
                head.inf_sifch = gBZA.SifLnkLst[sifid].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch];

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

                sname = string.Format("{0}{1:000}.zmf", txtfilename.Text, val + 1);
                sfilename = Path.Combine(txtfilepath.Text, sname);
                
                
                gBZA.SifLnkLst[sifid].MBZAIF.mHeadinf[sifch] = head.mInfo;
                gBZA.SifLnkLst[sifid].MBZAIF.mresfile[sifch].SetHead(head);
                
                gBZA.SifLnkLst[sifid].MBZAIF.resfilename[sifch] = sfilename;
                MBZA_MapUtil.UploadResheadinfo(sifid, sifch);
                LnkCh.mChInf.FileCond = gBZA.SifLnkLst[sifid].MBZAIF.condfilename[sifch];
                LnkCh.mChInf.FileResult = sfilename;

                gBZA.ChLnkLst[val.ToString()] = LnkCh;
            }


            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);

            DialogResult = DialogResult.OK;
         
        }

        private void chkapptech_CheckedChanged(object sender, EventArgs e)
        {
            if (bFirst == false) RefreshInformation(); 
        }
    }
}
