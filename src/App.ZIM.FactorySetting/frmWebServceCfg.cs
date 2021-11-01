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
using System.Xml.Serialization;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Utilities;

namespace App.ZIM.FactorySetting
{
    public partial class frmWebServceCfg : Form
    {
        public CommObj mCommZim;
        public stWebSiteFATHeader mWebSiteFATheader;
        private string PathWebService;
        public frmWebServceCfg(ref CommObj mSetCommZim, ref stWebSiteFATHeader mFATheader)
        {
            InitializeComponent();

            this.Icon = Properties.Resources.BatMag;

            progSendWebApp.Maximum = 0;
            progSendWebApp.Value = 0;
            mCommZim = mSetCommZim;
            mWebSiteFATheader = mFATheader;
            if (Properties.Settings.Default.PathWebService.Length < 3)
            {
                Properties.Settings.Default.PathWebService = Application.StartupPath + "\\webService";
                Directory.CreateDirectory(Properties.Settings.Default.PathWebService);
                Properties.Settings.Default.Save();
            }
            PathWebService = Properties.Settings.Default.PathWebService;
            LnklblSelFolder.Text = PathWebService;
            RefreshFindList();
        }

        private void GetBytes(ref byte[] dst, string src)
        {
            byte[] temp = Encoding.ASCII.GetBytes(src);

            Array.Copy(temp, dst, temp.Length);
        }

        private void GenerateWebSiteFATHeader()
        {
            string sfname;
            int pagenum = defWebSiteInfomation.FILE_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK;
            int lmtpagenum = defWebSiteInfomation.LIMIT_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK;
            bool lmt;
            mWebSiteFATheader.Initialize(defWebSiteInfomation.WEBSITE_ID, LstFindFile.Items.Count);

            Array.Clear(mWebSiteFATheader.existroot, 0, defWebSiteInfomation.MAX_FILE_NAME);
            GetBytes(ref mWebSiteFATheader.existroot, PathWebService);

            progSendWebApp.Maximum = LstFindFile.Items.Count;
            progSendWebApp.Step = 1;
            progSendWebApp.Value = 0;

            for (int i = 0; i < LstFindFile.Items.Count; i++)
            {
                lmt = false;
                sFileInfo fi = (sFileInfo)LstFindFile.Items[i];
                sfname = fi.ToString();
                Array.Clear(mWebSiteFATheader.sFileHeaders[i].Name, 0, defWebSiteInfomation.MAX_FILE_NAME);
                GetBytes(ref mWebSiteFATheader.sFileHeaders[i].Name, sfname);

                mWebSiteFATheader.sFileHeaders[i].Size = fi.Size;
                if (sfname.IndexOf(DeviceConstants.S_WEB_LIMITFILE) >= 0) lmt = true;

                if (lmt == true)
                {
                    mWebSiteFATheader.sFileHeaders[i].StartPageNum = lmtpagenum;
                    mWebSiteFATheader.sFileHeaders[i].Size = defWebSiteInfomation.PAGE_SIZE;
                }
                else mWebSiteFATheader.sFileHeaders[i].StartPageNum = pagenum;

                fi.StartPageNum = mWebSiteFATheader.sFileHeaders[i].StartPageNum;

                int mod = mWebSiteFATheader.sFileHeaders[i].Size % defWebSiteInfomation.PAGE_SIZE;
                int div = mWebSiteFATheader.sFileHeaders[i].Size / defWebSiteInfomation.PAGE_SIZE;

                int plus = mod > 0 ? div + 1 : div;

                if (lmt == false) pagenum += plus;
                progSendWebApp.PerformStep();
            }
        }
        

        void RefreshFilesInListBox(string root, ref ListBox lstbox)
        {
            lstbox.Items.Clear();

            DirSearch("", root, ref lstbox);

            //DirectoryInfo di = new DirectoryInfo(dlg.SelectedPath);
            try
            {
                foreach (string f in Directory.GetFiles(root))
                {
                    sFileInfo fi = new sFileInfo("", f);
                    lstbox.Items.Add(fi);
                }
            }
            catch
            {

            }
        }
        void DirSearch(string root, string sDir, ref ListBox lstbox)
        {
            try
            {
                foreach (string d in Directory.GetDirectories(sDir))
                {
                    string[] arr = d.Split('\\');

                    string rdir = Path.Combine(root, arr.Last());

                    foreach (string f in Directory.GetFiles(d))
                    {
                        sFileInfo fi = new sFileInfo(rdir, f);

                        lstbox.Items.Add(fi);
                    }
                    DirSearch(rdir, d, ref lstbox);
                }
            }
            catch (System.Exception excpt)
            {
                Console.WriteLine(excpt.Message);
            }
        }
        private void ApplyInformation()
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("No connection.");
                return;
            }


            if (mCommZim.WriteData(mWebSiteFATheader,ref progSendWebApp) == false)
            {
                MessageBox.Show("Transfer failed.");
                return;
            }
            if (mCommZim.RefreshWebSite() == false)
            {
                MessageBox.Show("Transfer failed.");
                return;
            }

            MessageBox.Show("The transfer was successful.");
        }
        void RefreshFindList()
        {
            RefreshFilesInListBox(PathWebService, ref LstFindFile);
            lblFindInfo.Text = string.Format("Find files:{0}", LstFindFile.Items.Count);
        }
        private void LnklblSelFolder_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            dlg.SelectedPath = Properties.Settings.Default.PathWebService;
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                PathWebService = dlg.SelectedPath;
                LnklblSelFolder.Text = PathWebService;
                RefreshFindList();
            }
        }

        private void LnklblRefFindItems_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            RefreshFindList();
        }

        private void LnklblApplyService_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            PathWebService = LnklblSelFolder.Text;
            Properties.Settings.Default.PathWebService = PathWebService;
            Properties.Settings.Default.Save();

            GenerateWebSiteFATHeader();
            ApplyInformation();
        }
    }
}
