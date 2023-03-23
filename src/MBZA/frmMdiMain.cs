using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DataManager;
using DataManager.CommClass;
using Microsoft.Win32;
using System.Diagnostics;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;
using SMLib;

namespace ZiveLab.ZM
{
    public partial class frmMdiMain : Form
    {
        public string AppTitle;
        public string AppVer;

        public event EventHandler evTimer;
        private int AniIdx;
        private int MaxAniCnt;
        private Icon[] AniIcons;

        private bool bExit;
        private bool bRefresh;


        frmMain     frmMainView;
        frmRealview frmRtView;
        frmRealview frmRegRtView;
        frmRealview frmGrpRtView;

        frmConfig frmcfg;

        frmDataTools frmResTools;

        bool bClose;
        bool bFirst;

        public frmMdiMain()
        {
            InitializeComponent();

            DoubleBuffered = true;
            bClose = false;
            bFirst = true;
            this.MakeAppTitle();
            this.MaxAniCnt = 10;

            this.Text = AppTitle;
            gBZA.sMsgTitle = AppTitle;

            gBZA.appcfg = new AppConfig();
            gBZA.appcfg.Load();
            //MakeAppFolder();

            bRefresh = false;
            bExit = false;
            
            frmMainView = null;
            frmRtView = null;
            frmRegRtView = null;
            frmGrpRtView = null;
            frmcfg = null;
            frmResTools = null;

            this.Icon = ZM.Properties.Resources.zm1;
            this.FormClosing += this.frmMdiMain_FormClosing;
            this.notifyIcon1.DoubleClick += this.notifyIcon1_DoubleClick;

            this.MainMenu.ImageScalingSize = new System.Drawing.Size(24, 24);

            this.notifyIcon1.Icon = Properties.Resources.zm1;
            this.notifyIcon1.BalloonTipText = "";
            this.notifyIcon1.BalloonTipIcon = ToolTipIcon.None;
            this.notifyIcon1.BalloonTipTitle = AppTitle;

            this.notifyIcon1.Text = AppTitle;
            this.notifyIcon1.Visible = false;

            this.AniIcons = new Icon[this.MaxAniCnt];
            this.AniIdx = 0;
            this.AniIcons[0] = ZM.Properties.Resources.zm1_0000;
            this.AniIcons[1] = ZM.Properties.Resources.zm1_0001;
            this.AniIcons[2] = ZM.Properties.Resources.zm1_0002;
            this.AniIcons[3] = ZM.Properties.Resources.zm1_0003;
            this.AniIcons[4] = ZM.Properties.Resources.zm1_0004;
            this.AniIcons[5] = ZM.Properties.Resources.zm1_0005;
            this.AniIcons[6] = ZM.Properties.Resources.zm1_0006;
            this.AniIcons[7] = ZM.Properties.Resources.zm1_0007;
            this.AniIcons[8] = ZM.Properties.Resources.zm1_0008;
            this.AniIcons[9] = ZM.Properties.Resources.zm1_0009;




            this.WindowState = FormWindowState.Minimized;
            this.Visible = false;

            gBZA.FileLnkCh = Path.Combine(gBZA.appcfg.PathSysInfo, "ZM.mcl");

            gBZA.ChLnkLst = new Dictionary<string, stLinkSifCh>();
            gBZA.SifLnkLst = new Dictionary<string, stLinkSIF>();
            gBZA.SifLnkLst.Clear();

            if (File.Exists(gBZA.FileLnkCh) == true)
            {
                gBZA.LoadXmlToLinkCh(gBZA.FileLnkCh);
            }
            else
            {
                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            }

        }

        

        public void MakeAppFolder()
        {
            try
            {

                if (gBZA.appcfg.PathZIMFW.Length < 5) gBZA.appcfg.PathZIMFW = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Firmware");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathZIMFW))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathZIMFW);
                }

                if (gBZA.appcfg.FileNameZIMFW.Length < 5) gBZA.appcfg.FileNameZIMFW = "default.zim";

                if (gBZA.appcfg.PathSIFFW.Length < 5) gBZA.appcfg.PathSIFFW = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Firmware");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathSIFFW))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathSIFFW);
                }

                if (gBZA.appcfg.PathRemote.Length < 5) gBZA.appcfg.PathRemote = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Remote");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathRemote))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathRemote);
                }

                if (gBZA.appcfg.FileNameSIFFW.Length < 5) gBZA.appcfg.FileNameSIFFW = "default.sif";

                if (gBZA.appcfg.PathData.Length < 5) gBZA.appcfg.PathData = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Data");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathData))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathData);
                }

                if (gBZA.appcfg.PathSch.Length < 5) gBZA.appcfg.PathSch = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Sch");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathSch))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathSch);
                }

                if (gBZA.appcfg.PathSysInfo.Length < 5) gBZA.appcfg.PathSysInfo = Path.Combine("C:\\ZIVE DATA\\ZM\\", "infor");

                if (!System.IO.Directory.Exists(Path.GetDirectoryName(gBZA.appcfg.PathSysInfo)))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathSysInfo);
                }

                if (gBZA.appcfg.PathRangeInfo.Length < 5) gBZA.appcfg.PathRangeInfo = Path.Combine("C:\\ZIVE DATA\\ZM\\", "infor\\board");

                if (!System.IO.Directory.Exists(Path.GetDirectoryName(gBZA.appcfg.PathRangeInfo)))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathRangeInfo);
                }

                if (gBZA.appcfg.PathSchTemp.Length < 5) gBZA.appcfg.PathSchTemp = Path.Combine(gBZA.appcfg.PathSch, "Temp");
                if (!System.IO.Directory.Exists(gBZA.appcfg.PathSchTemp))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathSchTemp);
                }

                if (gBZA.appcfg.PathLog.Length < 5) gBZA.appcfg.PathLog = Path.Combine("C:\\ZIVE DATA\\ZM\\", "log");

                if (!System.IO.Directory.Exists(Path.GetDirectoryName(gBZA.appcfg.PathLog)))
                {
                    System.IO.Directory.CreateDirectory(gBZA.appcfg.PathLog);
                }


                if (gBZA.appcfg.BatLimitFile.Length < 3)
                {
                    gBZA.appcfg.BatLimitFile = "C:\\ZIVE DATA\\ZM\\Infor\\BAT.lmt";
                }

                gBZA.appcfg.Save();
            }
            catch
            {

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

        void ShowBalloon(string sinfo)
        {
            this.notifyIcon1.BalloonTipIcon = ToolTipIcon.Info;
            this.notifyIcon1.BalloonTipTitle = AppTitle;
            this.notifyIcon1.BalloonTipText = sinfo;
            this.notifyIcon1.ShowBalloonTip(1000);
        }


        bool ExecuteSplash(bool bFirst = false)
        {
            frmSplash frm = new frmSplash(bFirst);
            frm.Text = AppTitle;
            frm.Icon = ZM.Properties.Resources.zm1;
            frm.TopMost = true;

            

            if (frm.ShowDialog() == DialogResult.Cancel)
            {
                if (bFirst == true)
                {
                    this.bExit = true;
                    this.notifyIcon1.Visible = false;
                    Application.Exit();
                }
                return false;
            }

            if (frm.changeBZA == true) ShowBalloon("A change in the device has been detected.");
            else ShowBalloon("There are no changes to the device.");

            return true;
        }

        private void frmMdiMain_Load(object sender, EventArgs e)
        {
            if (ExecuteSplash(true) == true)
            {
                this.Cursor = Cursors.WaitCursor;

                gBZA.ConnectSifs();
                foreach (var pair in gBZA.ChLnkLst)
                {
                    if (pair.Value.bChkSIF == true)
                    {
                        if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                        {
                            
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.Lnkch[pair.Value.SifCh] = Convert.ToInt32(pair.Key);
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.OldCondfilename[pair.Value.SifCh] = pair.Value.mChInf.OldFileCond;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.condfilename[pair.Value.SifCh] = pair.Value.mChInf.FileCond;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.resfilename[pair.Value.SifCh] = pair.Value.mChInf.FileResult;
                            pair.Value.mDevInf.ToWritePtr(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mDevInf.ToByteArray());

                        }
                    }
                }

                View_MainHome();

                

            }
            else
            {
                return;
            }


            if (gBZA.appcfg.MainSize == new Size(0, 0))
            {
                this.StartPosition = FormStartPosition.WindowsDefaultLocation;
                this.Size = new Size(1242, 366);
                gBZA.appcfg.MainLocation = this.Location;
                gBZA.appcfg.MainSize = this.Size;
                this.WindowState = FormWindowState.Maximized;
                gBZA.appcfg.MainWinStatus = this.WindowState;
                gBZA.appcfg.Save();
            }
            else
            {
                this.WindowState = gBZA.appcfg.MainWinStatus;
                if (this.WindowState == FormWindowState.Normal)
                {
                    this.StartPosition = FormStartPosition.Manual;
                    this.Location = gBZA.appcfg.MainLocation;
                    this.Size = gBZA.appcfg.MainSize;
                }
            }

            this.notifyIcon1.Visible = true;
            this.ShowInTaskbar = true;
            this.Visible = true;

            
            this.Activate();


            this.timer1.Interval = 100;
            this.timer1.Start();
            bFirst = false;
            bRefresh = true;
            this.Cursor = Cursors.Default;
        }


        private void OpenRealMonCh(int ch)
        {
            if (frmRtView == null)
            {
                frmRtView = new frmRealview(2);
                frmRtView.ShowInTaskbar = false;

                frmRtView.MdiParent = this;
                frmRtView.CloseThis += FrmRealview_CloseThis;

                if (gBZA.appcfg.RealviewSize == new Size(0, 0) )
                {
                    frmRtView.StartPosition = FormStartPosition.CenterParent;
                    frmRtView.WindowState = FormWindowState.Normal;

                    gBZA.appcfg.RtWinStatus = frmRtView.WindowState;
                    gBZA.appcfg.RealviewLocation = frmRtView.Location;
                    gBZA.appcfg.RealviewSize = frmRtView.Size;
                    gBZA.appcfg.Save();
                }
                else
                {
                    frmRtView.WindowState = gBZA.appcfg.RtWinStatus;
                    if (gBZA.appcfg.RtWinStatus == FormWindowState.Normal)
                    {
                        frmRtView.StartPosition = FormStartPosition.Manual;
                        frmRtView.Location = gBZA.appcfg.RealviewLocation;
                        frmRtView.Size = gBZA.appcfg.RealviewSize;
                    }
                }

                
                frmRtView.SetChannel(ch);
                frmRtView.Show();
            }
            else
            {
                if(frmRtView.WindowState == FormWindowState.Minimized)
                {
                    frmRtView.WindowState = gBZA.appcfg.RtWinStatus;
                    if (frmRtView.WindowState == FormWindowState.Normal)
                    {
                        frmRtView.StartPosition = FormStartPosition.Manual;
                        frmRtView.Location = gBZA.appcfg.RealviewLocation;
                        frmRtView.Size = gBZA.appcfg.RealviewSize; 
                    }
                }
                frmRtView.SetChannel(ch);
                frmRtView.Activate();
            }
        }


        private void EventChRtView(object sender, EventArgs e)
        {

            Button bt = (Button)sender;
            string str = (string)bt.Tag;
            int ch = Convert.ToInt32(str);

            OpenRealMonCh(ch);
        }
        private void EventGroupRtView(object sender, EventArgs e)
        {

            OpenRealMon(true);

        }

        private void EventOpenGraph(object sender, EventArgs e)
        {

            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string sch = ch.ToString();
            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;
            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.resfilename[iSifCh];

            string[] sfile = new string[1];
            sfile[0] = filename;
            OpenGraph(sfile);

        }

        private void EventOpenEditor(object sender, EventArgs e)
        {

            Button bt = (Button)sender;
            int ch = Convert.ToInt32(bt.Tag);
            string sch = ch.ToString();
            string sSerial = gBZA.ChLnkLst[sch].sSerial;
            int iSifCh = gBZA.ChLnkLst[sch].SifCh;
            string filename = gBZA.SifLnkLst[sSerial].MBZAIF.resfilename[iSifCh];

            OpenDataEditor(filename);
        }
        private void View_MainHome()
        {
            if (frmMainView == null)
            {
                frmMainView = new frmMain(ref evTimer);
                frmMainView.MdiParent = this;
                frmMainView.evGroupRtView += EventGroupRtView;
                frmMainView.evOpenGraph += EventOpenGraph;
                frmMainView.evOpenEditor += EventOpenEditor;
                frmMainView.evChRtView += EventChRtView;
                frmMainView.CloseThis += frmMain_CloseThis;

                frmMainView.WindowState = gBZA.appcfg.MainViewWinStatus;
                if (gBZA.appcfg.MainViewWinStatus == FormWindowState.Normal)
                {
                    if (gBZA.appcfg.MainViewSize == new Size(0, 0))
                    {
                        frmMainView.StartPosition = FormStartPosition.CenterParent;
                    }
                    else
                    {
                        frmMainView.Location = gBZA.appcfg.MainViewLocation;
                        frmMainView.Size = gBZA.appcfg.MainViewSize;
                        frmMainView.StartPosition = FormStartPosition.Manual;
                    }
                }
                frmMainView.Show();
            }
            else
            {
                frmMainView.InitMainView();
                if (frmMainView.WindowState == FormWindowState.Minimized)
                {
                    frmMainView.WindowState = gBZA.appcfg.MainViewWinStatus;
                    if (gBZA.appcfg.MainViewWinStatus == FormWindowState.Normal)
                    {
                        frmMainView.Location = gBZA.appcfg.MainViewLocation;
                        frmMainView.Size = gBZA.appcfg.MainViewSize;
                        frmMainView.StartPosition = FormStartPosition.Manual;
                    }
                }
                frmMainView.Activate();
            }
        }

        private void notifyIcon1_DoubleClick(object sender, EventArgs e)
        {
            if (this.Visible == false)
            {
                this.Visible = true;
                this.WindowState = gBZA.appcfg.MainWinStatus;
                
                if (this.WindowState == FormWindowState.Normal)
                {
                    this.Location = gBZA.appcfg.MainLocation;
                    this.Size = gBZA.appcfg.MainSize;
                }

                this.Activate();
                this.ShowInTaskbar = true;
            }
            else
            {
                this.Visible = false;
                this.WindowState = FormWindowState.Minimized;
                this.ShowInTaskbar = false;
            }

        }

        private void frmMdiMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            UpdateChannels();

            if (this.bExit == false)
            {
                e.Cancel = true;
                //this.Hide();
                //this.Visible = false;
                this.WindowState = FormWindowState.Minimized;
                //this.ShowInTaskbar = false;
            }
            else
            {
                bClose = true;
            }
        }

        private void RefreshDeviceRegBZA()
        {
            this.timer1.Stop();
            bRefresh = false;
            this.Visible = false;
            notifyIcon1.Visible = false;
            /*
            if (frmMainView != null)
            {
                frmMainView.Close();
            }
            */
            if (ExecuteSplash() == true)
            {
                gBZA.ConnectSifs();
                foreach (var pair in gBZA.ChLnkLst)
                {
                    if (pair.Value.bChkSIF == true)
                    {
                        if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                        {
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.condfilename[pair.Value.SifCh] = pair.Value.mChInf.FileCond;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.resfilename[pair.Value.SifCh] = pair.Value.mChInf.FileResult;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.bRemote[pair.Value.SifCh] = pair.Value.mChInf.bRemote;
                            gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.RemoteCh[pair.Value.SifCh] = Convert.ToInt32(pair.Key);
                            pair.Value.mDevInf.ToWritePtr(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mDevInf.ToByteArray());
                        }
                    }
                }

                View_MainHome();

            }

            try
            {
                this.Visible = true;

                this.WindowState = gBZA.appcfg.MainWinStatus;

                if (this.WindowState == FormWindowState.Normal)
                {
                    this.Location = gBZA.appcfg.MainLocation;
                    this.Size = gBZA.appcfg.MainSize;
                }
                this.Activate();

                this.timer1.Start();
                
            }
            catch
            {

            }
            bRefresh = true;
            notifyIcon1.Visible = true;
        }
        private void ViewRegBZA()
        {
            bRefresh = false;
            frmRegBZA frm = new frmRegBZA();
            frm.ShowDialog();
            View_MainHome();
            bRefresh = true;

        }

        private void frmMain_CloseThis(object sender, EventArgs e)
        {
            frmMainView = null;
        }

        private void frmcfg_CloseThis(object sender, EventArgs e)
        {

            frmcfg = null;
        }


        private void FrmRealview_CloseThis(object sender, EventArgs e)
        {
            frmRtView = null;
        }

        private void FrmRegRealview_CloseThis(object sender, EventArgs e)
        {


            frmRegRtView = null;

        }

        private void FrmGrpRealview_CloseThis(object sender, EventArgs e)
        {


            frmGrpRtView = null;

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
            catch (Exception ex)
            {
                Debug.WriteLine(string.Format("Cannot find IVMan path in registry. [{0}]", ex.Message));

                return string.Empty;
            }

            return result;
        }

        private void DeForm_OpenEisGraphClick(object sender, EventArgs e)
        {
            DataViewerEventArgs dvea = (DataViewerEventArgs)e;
            string[] slist = new string[1];
            slist[0] = dvea.DataFileName;
            OpenGraph(slist);
        }

        private void OpenDataEditor(string filename, int type = 2) // type 0 : General, 1 : Cycle, 2 : Eis
        {
            DataEditorForm deForm = new DataEditorForm(true, true);
            deForm.MsgBoxCaption = this.Text;
            deForm.UnitC = false;
            deForm.IVManPath = GetIVManPath();
            deForm.GraphSetEx = new GraphSetEx(type);
            deForm.EnAlwaysOpenPath = true;
            deForm.ZManPath = GetZManPath();
            deForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            //deForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            deForm.TimeFormat = 1;

            deForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
            //deForm.OpenGeneralGraphClick += DeForm_OpenGeneralGraphClick;
            //deForm.OpenCycleGraphClick += DeForm_OpenCycleGraphClick;
            deForm.OpenEisGraphClick += DeForm_OpenEisGraphClick;

            deForm.MdiParent = this;
            deForm.ShowInTaskbar = false;
            deForm.Initialize(0);
            
            deForm.Show();
            if (filename != null)
            {
                deForm.LoadData(filename, type);
            }

        }

        

        private void EgForm_OpenDataEditorClick(object sender, EventArgs e)
        {
            DataViewerEventArgs dvea = (DataViewerEventArgs)e;

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
                stTech mtech = new stTech(0);
                FileCondition fc = new FileCondition();
                str = Encoding.UTF8.GetString(mfile.tmphead.mInfo.techfile).Trim('\0');
                techfilename = Path.GetFileName(str);
                techfullpath = Path.Combine(gBZA.appcfg.PathSchTemp, techfilename);
                type = (eZimType)mfile.tmphead.inf_sif.Type;

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
            frmTech.MdiParent = this;
            if (gBZA.appcfg.TechLocation == new Point(0, 0))
            {
                frmTech.StartPosition = FormStartPosition.CenterScreen;
            }
            else
            {
                frmTech.Location = gBZA.appcfg.TechLocation;
                frmTech.StartPosition = FormStartPosition.Manual;
            }
            
            if (frmTech.loaderr == false)
            {
                frmTech.Show();
            }
            frmTech.WindowState = FormWindowState.Normal;
        }

        private void EgForm_OpenTechEditorClick(object sender, EventArgs e)
        {
            DataViewerEventArgs dvea = (DataViewerEventArgs)e;
            string stechfile = "";
            eZimType type = eZimType.UNKNOWN;

            if (SaveTempTechFileofResFile(dvea.DataFileName, ref stechfile, ref type) == false)
            {
                MessageBox.Show("Failed to generate tested technical file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }


            OpenTechFile(-1, stechfile, type);
        }

        private void OpenGraph(string[] filename = null)
        {
            EisGraphForm egForm = new EisGraphForm(0, new GraphSet(), new DataManager.CommClass.GraphSetEx(2), true);
            egForm.MsgBoxCaption = AppTitle;
            egForm.EnAlwaysOpenPath = true;
            egForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            egForm.AllowTransparency = false;
            egForm.ZManPath = GetZManPath();
            //egForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            egForm.UnitC = false;
            egForm.TimeFormat = 1;
            egForm.MdiParent = this;
            egForm.ShowInTaskbar = false;
            egForm.OpenDataEditorClick += EgForm_OpenDataEditorClick;
            egForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
            egForm.Show();

            if (filename != null)
            {
                egForm.LoadFiles(filename);
            }
        }

        private void modifyTheDevicesRegistrationToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            RefreshDeviceRegBZA();
        }

        private void batteryParameterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmBatPara frm = new frmBatPara();
            frm.ShowDialog();
        }

        private void configurationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmcfg == null)
            {
                frmcfg = new frmConfig();
                frmcfg.MdiParent = this;
                frmcfg.CloseThis += frmcfg_CloseThis;
                if (gBZA.appcfg.RtWinStatus == FormWindowState.Normal)
                {
                    if (gBZA.appcfg.RealviewSize == new Size(0, 0))
                    {
                        frmcfg.StartPosition = FormStartPosition.CenterParent;
                    }
                    else
                    {
                        frmcfg.Location = gBZA.appcfg.CfgLocation;
                        frmcfg.Size = gBZA.appcfg.CfgSize;
                        frmcfg.StartPosition = FormStartPosition.Manual;
                    }

                    frmcfg.WindowState = FormWindowState.Maximized;
                }
                frmcfg.WindowState = gBZA.appcfg.CfgWinStatus;
                frmcfg.Show();

            }
            else
            {
                frmcfg.WindowState = gBZA.appcfg.RtWinStatus;
                if (gBZA.appcfg.RtWinStatus == FormWindowState.Normal)
                {
                    frmcfg.Location = gBZA.appcfg.RealviewLocation;
                    frmcfg.Size = gBZA.appcfg.RealviewSize;
                }

                frmcfg.Activate();
            }
            
        }

        private void exitApp()
        {
            if (MessageBox.Show("Are you sure you want to quit?", gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
            {
                return;
            }
            this.timer1.Stop();
            this.bExit = true;
            
            gBZA.DisonnectSifs();
            this.notifyIcon1.Visible = false;
            Application.Exit();
        }

        private void exitToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            exitApp();
            
        }

        private void techniqueToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenTechFile(-1, "");
        }

        private void graphToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenGraph();
        }

        private void dataEditorToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenDataEditor(null);
        }

        bool CheckMonActiveRegCh()
        {
            SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
            List<int> tlst = new List<int>();
            string sfileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            tlst = mFile.LoadXmlToObj(sfileinf, null);
            int count = 0;
            string sch;
            if (tlst == null)
            {
                MessageBox.Show("The channel to display is not registered or cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            if (tlst.Count < 1)
            {
                MessageBox.Show("The channel to display is not registered or cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            foreach (var ch in tlst)
            {
                sch = ch.ToString();
                if (gBZA.ChLnkLst.ContainsKey(sch))
                {
                    var Value = gBZA.ChLnkLst[sch];
                    if (gBZA.SifLnkLst.ContainsKey(Value.sSerial))
                    {
                        if (gBZA.SifLnkLst[Value.sSerial].bLinked == true
                            && gBZA.SifLnkLst[Value.sSerial].MBZAIF.bConnect == true)
                        {
                            count++;
                            continue;
                        }
                    }
                }
            }

            if (count == 0)
            {
                MessageBox.Show("The channel to display is not registered or cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        private void OpenRealMon(bool bgroup = false)
        {
            if (bgroup == false)
            {
                if (CheckMonActiveRegCh() == false)
                {
                    return;
                }
                if (frmRegRtView == null)
                {
                    frmRegRtView = new frmRealview(0);
                    frmRegRtView.ShowInTaskbar = false;
                    //frmRegRtView.MdiParent = this;

                    if (gBZA.appcfg.RegRealviewSize == new Size(0, 0) )
                    {
                        frmRegRtView.StartPosition = FormStartPosition.CenterParent;
                        frmRegRtView.WindowState = FormWindowState.Normal;
                        frmRegRtView.Size = gBZA.appcfg.RegRealviewSize;
                        gBZA.appcfg.RegRtWinStatus = frmRegRtView.WindowState;
                        gBZA.appcfg.Save();
                    }
                    else
                    {
                        frmRegRtView.WindowState = gBZA.appcfg.RegRtWinStatus;
                        if (frmRegRtView.WindowState == FormWindowState.Normal)
                        {
                            frmRegRtView.Location = gBZA.appcfg.RegRealviewLocation;
                            frmRegRtView.Size = gBZA.appcfg.RegRealviewSize;
                            frmRegRtView.StartPosition = FormStartPosition.Manual;
                        }
                    }
                  
                    frmRegRtView.CloseThis += FrmRegRealview_CloseThis;
                    frmRegRtView.Show();
                }
                else
                {
                    if(frmRegRtView.WindowState == FormWindowState.Minimized)
                    {
                        frmRegRtView.WindowState = gBZA.appcfg.RegRtWinStatus;
                        if (frmRegRtView.WindowState == FormWindowState.Normal)
                        {
                            frmRegRtView.Location = gBZA.appcfg.RegRealviewLocation;
                            frmRegRtView.Size = gBZA.appcfg.RegRealviewSize;
                        }
                    }
                    
                    frmRegRtView.Activate();

                }
            }
            else
            {
                List<int> lst;
                int ich;

                lst = new List<int>();

                foreach (var pair in gBZA.ChLnkLst)
                {
                    if (pair.Value.mChInf.bSelected == true)
                    {
                        if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                        {
                            if (gBZA.SifLnkLst[pair.Value.sSerial].bLinked == true
                                    && gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.bConnect == true)
                            {
                                ich = Convert.ToInt32(pair.Key);
                                lst.Add(ich);
                                continue;
                            }
                        }
                    }
                }
                
                if (lst.Count < 1)
                {
                    gBZA.ShowInfoBox("There is no channel selected.");
                    return;
                }

                if (frmGrpRtView == null)
                {
                    frmGrpRtView = new frmRealview(1);
                    frmGrpRtView.ShowInTaskbar = false;
                    frmGrpRtView.MdiParent = this;
                    if (gBZA.appcfg.GroupRealviewSize == new Size(0, 0) )
                    {
                        frmGrpRtView.StartPosition = FormStartPosition.CenterParent;
                        frmGrpRtView.WindowState = FormWindowState.Normal;
                        frmGrpRtView.Size = gBZA.appcfg.GroupRealviewSize;
                        gBZA.appcfg.GrpRtWinStatus = frmGrpRtView.WindowState;
                        gBZA.appcfg.Save();
                    }
                    else
                    {
                        frmGrpRtView.WindowState = gBZA.appcfg.GrpRtWinStatus;
                        if (frmGrpRtView.WindowState == FormWindowState.Normal)
                        {
                            frmGrpRtView.Location = gBZA.appcfg.GroupRealviewLocation;
                            frmGrpRtView.Size = gBZA.appcfg.GroupRealviewSize;
                            frmGrpRtView.StartPosition = FormStartPosition.Manual;
                        }
                    }

                    frmGrpRtView.CloseThis += FrmGrpRealview_CloseThis;
                    frmGrpRtView.SetChannel(lst);
                    frmGrpRtView.Show();
                }
                else
                {
                    if (frmGrpRtView.WindowState == FormWindowState.Minimized)
                    {
                        frmGrpRtView.WindowState = gBZA.appcfg.GrpRtWinStatus;
                        if (frmGrpRtView.WindowState == FormWindowState.Normal)
                        {
                            frmGrpRtView.Location = gBZA.appcfg.GroupRealviewLocation;
                            frmGrpRtView.Size = gBZA.appcfg.GroupRealviewSize;
                        }
                    }
                    frmGrpRtView.SetChannel(lst);
                    
                    frmGrpRtView.Activate();
                }
            }
        }

        
        private void toolStripbtRegist_Click(object sender, EventArgs e)
        {
            RefreshDeviceRegBZA();
        }

        private void toolStripbtBattPara_Click(object sender, EventArgs e)
        {
            frmBatPara frm = new frmBatPara();
            frm.ShowDialog();
        }

        private void toolStripbtTech_Click(object sender, EventArgs e)
        {
            OpenTechFile(-1, "");
        }

        private void toolStripBtGraph_Click(object sender, EventArgs e)
        {
            OpenGraph();
        }

        private void toolStripBtReport_Click(object sender, EventArgs e)
        {
            OpenDataEditor(null);
        }

        private void toolStripBtRealMon_Click(object sender, EventArgs e)
        {
            OpenRealMon();
        }

        private void toolStripRtRegCh_Click(object sender, EventArgs e)
        {
            string fileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            frmTechApply frm = new frmTechApply(fileinf, null);
            if (frm.ShowDialog() == DialogResult.OK)
            {

            }
        }

        private void viewHomeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (this.Visible == false)
            {
                this.Visible = true;
                this.WindowState = gBZA.appcfg.MainWinStatus;

                if (this.WindowState == FormWindowState.Normal)
                {
                    this.Location = gBZA.appcfg.MainLocation;
                    this.Size = gBZA.appcfg.MainSize;
                }
                this.Activate();

            }
            else
            {
                this.Visible = false;
                this.WindowState = FormWindowState.Minimized;
            }
        }

        private void realtimeMonitorToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenRealMon();
        }

        private void techniqueToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenTechFile(-1, "");
        }

        private void graphToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenGraph();
        }

       
        private void dataEditorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenDataEditor(null);
        }

        private void batteryParameterToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            frmBatPara frm = new frmBatPara();
            frm.ShowDialog();
        }

        private void modifyTheDevicesRegistrationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            RefreshDeviceRegBZA();
        }

        private void configurationToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (frmcfg == null)
            {
                frmcfg = new frmConfig();
                if (gBZA.appcfg.CfgLocation == new Point(0, 0))
                {
                    frmcfg.StartPosition = FormStartPosition.CenterScreen;
                }
                else
                {
                    frmcfg.Location = gBZA.appcfg.CfgLocation;
                    frmcfg.StartPosition = FormStartPosition.Manual;
                }

                frmcfg.CloseThis += frmcfg_CloseThis;
                frmcfg.Show();

            }
            else
            {
                frmcfg.Activate();
            }
        }

        private void setDefaultWindowToolStripMenuItem_Click(object sender, EventArgs e)
        {
            gBZA.appcfg.InitLocationSize();
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            exitApp();
        }

        private void frmMdiMain_LocationChanged(object sender, EventArgs e)
        {
            if (bClose || bFirst) return;
            if (this.WindowState == FormWindowState.Minimized)
            {
                return;
            }
            if (this.WindowState == FormWindowState.Normal)
            {
                gBZA.appcfg.MainLocation = this.Location;
                gBZA.appcfg.MainSize = this.Size;
            }
            gBZA.appcfg.MainWinStatus = this.WindowState;
            gBZA.appcfg.Save();
        }

        private void frmMdiMain_SizeChanged(object sender, EventArgs e)
        {
            if (bClose || bFirst) return;
            if (this.WindowState == FormWindowState.Minimized)
            {
                return;
            }
            if (this.WindowState == FormWindowState.Normal)
            {
                gBZA.appcfg.MainLocation = this.Location;
                gBZA.appcfg.MainSize = this.Size;
            }
            gBZA.appcfg.MainWinStatus = this.WindowState;
            gBZA.appcfg.Save();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            this.notifyIcon1.Icon = this.AniIcons[AniIdx];
            this.AniIdx++;
            if (this.AniIdx >= this.MaxAniCnt)
            {
                this.AniIdx = 0;
            }
            if (frmMainView != null &&  bRefresh)
            {
                if (frmMainView.bFirst == false && frmMainView.bClose == false)
                {
                    evTimer?.Invoke(this, e);
                }
                
            }
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
            OpenRealMon();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            string fileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            frmTechApply frm = new frmTechApply(fileinf, null);
            if (frm.ShowDialog() == DialogResult.OK)
            {

            }
        }

        private void closeAllDocumentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (System.Windows.Forms.Form TheForm in this.MdiChildren)
            {
                TheForm.Close();
                TheForm.Dispose();
            }
        }

        private void homeMonitorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            View_MainHome();
        }

        private void MonitorofchannelstoolStripButton_Click(object sender, EventArgs e)
        {
            View_MainHome();
        }

        private void frmMdiMain_MdiChildActivate(object sender, EventArgs e)
        {
            if (bClose || bFirst) return;
            if (ActiveMdiChild == null)
            {
                return;
            }
            if (frmRtView == ActiveMdiChild)
            {
                if (frmRtView.WindowState == FormWindowState.Minimized)
                {
                    frmRtView.WindowState = gBZA.appcfg.RegRtWinStatus;
                    if (frmRtView.WindowState == FormWindowState.Normal)
                    {
                        frmRtView.Location = gBZA.appcfg.RegRealviewLocation;
                        frmRtView.Size = gBZA.appcfg.RegRealviewSize;
                    }
                }
            }
            else if (frmGrpRtView == ActiveMdiChild)
            {
                if (frmGrpRtView.WindowState == FormWindowState.Minimized)
                {
                    frmGrpRtView.WindowState = gBZA.appcfg.GrpRtWinStatus;
                    if (frmGrpRtView.WindowState == FormWindowState.Normal)
                    {
                        frmGrpRtView.Location = gBZA.appcfg.GroupRealviewLocation;
                        frmGrpRtView.Size = gBZA.appcfg.GroupRealviewSize;
                    }
                }
            }
            else if (frmMainView == ActiveMdiChild)
            {
                if (frmMainView.WindowState == FormWindowState.Minimized)
                {
                    frmMainView.WindowState = gBZA.appcfg.MainViewWinStatus;
                    if (frmMainView.WindowState == FormWindowState.Normal)
                    {
                        frmMainView.Location = gBZA.appcfg.MainViewLocation;
                        frmMainView.Size = gBZA.appcfg.MainViewSize;
                    }
                }
            }
            else if (frmcfg == ActiveMdiChild)
            {
                if (frmcfg.WindowState == FormWindowState.Minimized)
                {
                    frmcfg.WindowState = gBZA.appcfg.CfgWinStatus;
                    if (frmcfg.WindowState == FormWindowState.Normal)
                    {
                        frmcfg.Location = gBZA.appcfg.CfgLocation;
                        frmcfg.Size = gBZA.appcfg.CfgSize;
                    }
                }
                
            }
        }
        
        private void UpdateChannels()
        {
            ChannelInf mlnkchinf = new ChannelInf(0);

            foreach (var pair in gBZA.ChLnkLst)
            {
                if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                {
                    mlnkchinf = gBZA.ChLnkLst[pair.Key].mChInf;
                    mlnkchinf.FileCond = gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.condfilename[pair.Value.SifCh];
                    mlnkchinf.OldFileCond = gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.OldCondfilename[pair.Value.SifCh];
                    mlnkchinf.FileResult = gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.resfilename[pair.Value.SifCh];
                    mlnkchinf.bRemote = gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.bRemote[pair.Value.SifCh];
                    gBZA.ChLnkLst[pair.Key].mChInf.ToWritePtr(mlnkchinf.ToByteArray());
                }
            }
            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
        }

        private void frmMdiMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAboutBox frm = new FrmAboutBox();
            frm.ShowDialog();
        }

        int GetRegRMChs()
        {
            int RegChCount = 0;
            string sch;
            string fileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
            List<int> tlst = new List<int>();
            List<int> chs = new List<int>();

            tlst = mFile.LoadXmlToObj(fileinf, chs);
            
            if (tlst.Count < 1)
            {
                return 0;
            }

            foreach (var ch in tlst)
            {
                sch = ch.ToString();
                if (gBZA.ChLnkLst.ContainsKey(sch))
                {
                    var value = gBZA.ChLnkLst[sch];
                    if (gBZA.SifLnkLst.ContainsKey(value.sSerial))
                    {
                        if (gBZA.SifLnkLst[value.sSerial].bLinked == true
                            && gBZA.SifLnkLst[value.sSerial].MBZAIF.bConnect == true)
                        {
                            RegChCount++;
                            continue;
                        }
                    }
                }
            }
            return RegChCount;
        }

        int GetGrpRMChs()
        {
            int GrpChCount = 0;

            foreach (var pair in gBZA.ChLnkLst)
            {
                if (pair.Value.mChInf.bSelected == true)
                {
                    if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                    {
                        if (gBZA.SifLnkLst[pair.Value.sSerial].bLinked == true
                                && gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.bConnect == true)
                        {
                            GrpChCount++;
                            continue;
                        }
                    }
                }
            }
            return GrpChCount;
        }

        private void Memu_RstWinPos_Click(object sender, EventArgs e)
        {
            gBZA.appcfg.InitLocationSize(GetRegRMChs(), GetGrpRMChs());
            gBZA.appcfg.Save();


            if (frmMainView != null)
            {
                frmMainView.WindowState = gBZA.appcfg.MainViewWinStatus;
               if (frmMainView.WindowState == FormWindowState.Normal)
                {
                    frmMainView.Size = gBZA.appcfg.MainViewSize;
                    frmMainView.Location = gBZA.appcfg.MainViewLocation;
                    frmMainView.StartPosition = FormStartPosition.Manual;
                }
            }

            if (frmRtView != null)
            {
                frmRtView.WindowState = gBZA.appcfg.RtWinStatus;
                if (gBZA.appcfg.RtWinStatus == FormWindowState.Normal)
                {
                    frmRtView.Size = gBZA.appcfg.RealviewSize;
                    frmRtView.StartPosition = FormStartPosition.Manual;
                    frmRtView.Location = gBZA.appcfg.RealviewLocation;
                }

            }
            
            if (frmRegRtView != null)
            {
                frmRegRtView.WindowState = gBZA.appcfg.RegRtWinStatus;
                if (frmRegRtView.WindowState == FormWindowState.Normal)
                {
                    frmRegRtView.Size = gBZA.appcfg.RegRealviewSize;
                    frmRegRtView.Location = gBZA.appcfg.RegRealviewLocation;
                    frmRegRtView.StartPosition = FormStartPosition.Manual;
                }

            }

            if (frmGrpRtView != null)
            {
                frmGrpRtView.WindowState = gBZA.appcfg.GrpRtWinStatus;
                if (frmGrpRtView.WindowState == FormWindowState.Normal)
                {
                    frmGrpRtView.Size = gBZA.appcfg.GroupRealviewSize;
                    frmGrpRtView.Location = gBZA.appcfg.GroupRealviewLocation;
                    frmGrpRtView.StartPosition = FormStartPosition.Manual;
                }

            }

            if (frmcfg != null)
            {
                frmcfg.WindowState = gBZA.appcfg.RtWinStatus;
                if (gBZA.appcfg.RtWinStatus == FormWindowState.Normal)
                {
                    frmcfg.Size = gBZA.appcfg.CfgSize;
                    frmcfg.Location = gBZA.appcfg.CfgLocation;
                    frmcfg.StartPosition = FormStartPosition.Manual;
                }
            }
        }

        private void frmDataTools_CloseThis(object sender, EventArgs e)
        {


            frmResTools = null;

        }

        private void MenuconvPrrDataToTextFile_Click(object sender, EventArgs e)
        {
            if (frmResTools == null)
            {
                frmResTools = new frmDataTools();
                frmResTools.ShowInTaskbar = false;
                frmResTools.MdiParent = null;

                frmResTools.StartPosition = FormStartPosition.CenterScreen;
                frmResTools.WindowState = FormWindowState.Normal;

                frmResTools.CloseThis += frmDataTools_CloseThis;
                frmResTools.Show();
            }
            else
            {
                frmResTools.WindowState = FormWindowState.Normal;
                frmResTools.Activate();
            }
        }
    }
}
