using SMLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ZiveLab.ZM
{
    public partial class frmRealview : Form
    {
        List<int> chs;
        List<int> chs1;
        public event EventHandler chevent;
        public event EventHandler CloseThis;
        string fileinf;
        int iMode;
        public bool bClose;
        public bool bFirst;
        Point OriginalLocation;
        Size OriginalSize;
        public frmRealview(int tmode, int ich = -1) // 0-reg, 1-grp, 2-ingle
        {
            InitializeComponent();

            iMode = tmode;
            DoubleBuffered = true;
            fileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            bClose = false;
            bFirst = true;

            if (iMode == 0)
            {
                this.Text = "Real-time monitor.";
            }
            else if(iMode == 2)
            {
                this.Text = string.Format("Real-time monitor of channel {0}.", ich + 1);
            }
            else
            {
                this.Text = "Real-time monitor of the group.";
            }

            Properties.Settings.Default.MaxWinCh = -1;
            Properties.Settings.Default.GrpMaxWinCh = -1;

            
            chs = new List<int>();
            chs1 = new List<int>();

            OriginalSize = new Size(484, 393);

            timer1.Stop();

            
        }

        public void SetChannel(int ich)
        {
            timer1.Stop();
            iMode = 2;

            if (chevent != null)
            {
                foreach (Delegate ev in chevent.GetInvocationList())
                {
                    chevent -= (EventHandler)ev;
                }
            }
            chs.Clear();
            chs.Add(ich);

            chs1 = chs;
            timer1.Interval = (int)(500 / chs.Count);

            chs.Sort();

            pan.Controls.Clear();
    
            BZAChPan chpan = new BZAChPan(ich, ref chevent, new EventHandler(ShowMaxChild), this.MdiParent);
            chpan.SetbtSize(false);

            pan.Controls.Add(chpan);

            chpan.MaxWindowsProc(true);
            OriginalLocation = chpan.Location;
            //OriginalSize = chpan.Size;
            chpan.Location = new Point(0, 0);
            chpan.Size = new Size(pan.Size.Width - 6, pan.Size.Height - 6);
            pan.AutoScroll = false;

            this.Text = string.Format("Real-time monitor of channel {0}.",ich+1);

            timer1.Start();
        }

        public void SetChannel(List<int> lst)
        {
           
            timer1.Stop();
       
            if (chevent != null)
            {
                foreach (Delegate ev in chevent.GetInvocationList())
                {
                    chevent -= (EventHandler)ev;
                }
            }

            chs.Clear();
            string sch;
            foreach (var ch in lst)
            {
                sch = ch.ToString();
                if (gBZA.ChLnkLst.ContainsKey(sch))
                {
                    var value = gBZA.ChLnkLst[sch];
                    if(gBZA.SifLnkLst.ContainsKey(value.sSerial))
                    {
                        if(gBZA.SifLnkLst[value.sSerial].bLinked == true 
                            && gBZA.SifLnkLst[value.sSerial].MBZAIF.bConnect == true)
                        {
                            chs.Add(ch);
                            continue;
                        }
                    }
                }
            }

            chs1 = chs;
            timer1.Interval = (int)(500 / chs.Count);
            if (timer1.Interval < 500) timer1.Interval = 500;

            chs.Sort();
            pan.Controls.Clear();
            foreach (var ch in chs)
            {
                pan.Controls.Add(new BZAChPan(ch, ref chevent, new EventHandler(ShowMaxChild),this.MdiParent));

            }
            ShowChildWindows();
            timer1.Start();
        }

        void LoadChannelsInfo()
        {
            SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
            List<int> tlst = new List<int>();

            tlst = mFile.LoadXmlToObj(fileinf, chs);
            chs.Clear();
            string sch;
            if(tlst.Count < 1)
            {
                MessageBox.Show("The channel to display is not registered or cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            chs.Clear();
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
                            chs.Add(ch);
                            continue;
                        }
                    }
                }
            }

            chs1 = chs;
            if (chs.Count < 1) return;
            else timer1.Interval = (int)(500 / chs.Count);
            if (timer1.Interval < 500) timer1.Interval = 500;

            if (chevent != null)
            {
                foreach (Delegate ev in chevent.GetInvocationList())
                {
                    chevent -= (EventHandler)ev;
                }
            }
            
            chs.Sort();
            pan.Controls.Clear();
            foreach (var ch in chs)
            {
                pan.Controls.Add(new BZAChPan(ch, ref chevent, new EventHandler(ShowMaxChild),this.MdiParent));
            }
            if (iMode == 1) Properties.Settings.Default.GrpMaxWinCh = -1;
            else Properties.Settings.Default.MaxWinCh = -1;

            ShowChildWindows();

            timer1.Start();

        }
        
        private void ShowMaxChild(object sender, EventArgs e)
        {
            BZAChPan chpan = (BZAChPan)sender;
            if (chpan.bMaxWindow)
            {
                if (iMode == 1)
                {
                    Properties.Settings.Default.GrpMaxWinCh = -1;
                }
                else if (iMode == 0)
                {
                    Properties.Settings.Default.MaxWinCh = -1;
                }
            }
            else
            {
                if (iMode == 1)
                {
                    Properties.Settings.Default.GrpMaxWinCh = chpan.ch;
                }
                else if (iMode == 0)
                {
                    Properties.Settings.Default.MaxWinCh = chpan.ch;
                }
            }
            Properties.Settings.Default.Save();
            
            ShowChildWindows();
        }

        void SaveChannelsInfo()
        {
            SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
            mFile.SaveObjToXml(fileinf, chs);
        }
        private void frmRealview_Load(object sender, EventArgs e)
        {
            
            if (iMode == 0)
            {
                this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.Monitor);
            }
            else if (iMode == 2)
            {
                this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.Monitor);
            }
            else
            {
                this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.Monitor);
            }

            if (iMode == 1)
            {
                if (gBZA.appcfg.GroupRealviewSize == new Size(0, 0) || gBZA.appcfg.GroupRealviewLocation == new Point(0, 0))
                {
                    this.StartPosition = FormStartPosition.CenterParent;
                }
                else
                {
                    this.Location = gBZA.appcfg.GroupRealviewLocation;
                    this.Size = gBZA.appcfg.GroupRealviewSize;
                    this.StartPosition = FormStartPosition.Manual;

                }
            }
            else if(iMode == 2)
            {
                if (gBZA.appcfg.RealviewSize == new Size(0, 0) || gBZA.appcfg.RealviewLocation == new Point(0, 0))
                {
                    this.StartPosition = FormStartPosition.CenterParent;
                }
                else
                {
                    this.Location = gBZA.appcfg.RealviewLocation;
                    this.Size = gBZA.appcfg.RealviewSize;
                    this.StartPosition = FormStartPosition.Manual;
                }
            }
            else
            {
                if (gBZA.appcfg.RegRealviewSize == new Size(0, 0) || gBZA.appcfg.RegRealviewLocation == new Point(0, 0))
                {
                    this.StartPosition = FormStartPosition.CenterParent;
                }
                else
                {
                    this.Location = gBZA.appcfg.RegRealviewLocation;
                    this.Size = gBZA.appcfg.RegRealviewSize;
                    this.StartPosition = FormStartPosition.Manual;
                }
            }

            if (iMode == 0)
            {
                if (File.Exists(fileinf))
                {
                    LoadChannelsInfo();
                    if (chs.Count < 1)
                    {
                        frmTechApply frm = new frmTechApply(fileinf);
                        if (frm.ShowDialog() == DialogResult.OK)
                        {
                            LoadChannelsInfo();
                        }
                    }
                }
                else
                {
                    frmTechApply frm = new frmTechApply(fileinf);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        LoadChannelsInfo();
                    }
                }
            }
            ShowChildWindows();
            bFirst = false;
        }

        void ShowChildWindows()
        {
            if (iMode == 2)
            {
                return;
            }

            int i = 0;
            BZAChPan chpan;
            int SelCh;

            if (iMode == 0)
            {
                SelCh = Properties.Settings.Default.MaxWinCh;
            }
            else 
            {
                SelCh = Properties.Settings.Default.GrpMaxWinCh;
            }
           
            if (SelCh >= 0)
            {
                /*chpan = (BZAChPan)pan.Controls[0];
                chpan.Size = new Size(0, 0);

                chpan = (BZAChPan)pan.Controls[1];
                OriginalLocation = chpan.Location;
                //OriginalSize = chpan.Size;
                chpan.Location = new Point(0, 0);
                chpan.Size = new Size(pan.Size.Width - 6, pan.Size.Height - 6);
                pan.AutoScroll = false;
                chpan.MaxWindowsProc(true);
                */
                i = 0;
                foreach (var ch in chs)
                {
                    chpan = (BZAChPan)pan.Controls[i];
                    if (chpan.ch == SelCh)
                    {
                        chpan.MaxWindowsProc(true);
                        OriginalLocation = chpan.Location;
                        //OriginalSize = chpan.Size;
                        chpan.Location = new Point(0, 0);
                        chpan.Size = new Size(pan.Size.Width - 6, pan.Size.Height - 6);
                        pan.AutoScroll = false;
                    }
                    else
                    {
                        chpan.MaxWindowsProc(false);
                        chpan.Size = new Size(0,0);
                    }
                    i++;
                }
            }
            else
            {
                
                i = 0;
                foreach (var ch in chs)
                {
                    chpan = (BZAChPan)pan.Controls[i];
                    if (chpan.Size.Width > OriginalSize.Width && chpan.Size.Height > OriginalSize.Height)
                    {
                        chpan.Location = OriginalLocation;
                    }
                    chpan.Size = OriginalSize;
                    chpan.MaxWindowsProc(false);
                    pan.AutoScroll = true;
                    i++;
                }
                /*
                chpan = (BZAChPan)pan.Controls[0];
                chpan.Size = OriginalSize;
                chpan.MaxWindowsProc(false);

                chpan = (BZAChPan)pan.Controls[1];
                chpan.Location = OriginalLocation;
                chpan.Size = OriginalSize;
                chpan.MaxWindowsProc(false);*/
            }
            
        }

        void ResizeWindow()
        {
            int i = 0;
            BZAChPan chpan;
            int SelCh;

            if (iMode == 0)
            {
                SelCh = Properties.Settings.Default.MaxWinCh;
            }
            else if (iMode == 1)
            {
                SelCh = Properties.Settings.Default.GrpMaxWinCh;
            }
            else
            {
                if (pan.Controls.Count < 1)
                {
                    return;
                }
                chpan = (BZAChPan)pan.Controls[0];
                if (chpan.bMaxWindow)
                {
                    chpan.Location = new Point(0, 0);
                    chpan.Size = new Size(pan.Size.Width - 6, pan.Size.Height - 6);
                }
                return;
            }

            if (SelCh >= 0)
            {
                /*chpan = (BZAChPan)pan.Controls[1];
                chpan.Location = new Point(0, 0);
                chpan.Size = new Size(pan.Size.Width - 6, pan.Size.Height - 6);*/
                
                i = 0;
                foreach (var ch in chs)
                {
                    chpan = (BZAChPan)pan.Controls[i];
                    if (chpan.bMaxWindow)
                    {
                        chpan.Location = new Point(0, 0);
                        chpan.Size = new Size(pan.Size.Width - 6, pan.Size.Height - 6);
                    }
                }
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            chevent?.Invoke(this, e);
        }

        private void frmRealview_SizeChanged(object sender, EventArgs e)
        {
            
        }

        private void frmRealview_Move(object sender, EventArgs e)
        {
            
        }

        private void frmRealview_FormClosed(object sender, FormClosedEventArgs e)
        { 
            CloseThis?.Invoke(this, e);
        }

        private void frmRealview_LocationChanged(object sender, EventArgs e)
        {
            if (bClose || bFirst) return;
            if (this.WindowState == FormWindowState.Minimized) return;
            Point pt = this.Location;
            if (iMode == 1)
            {
                gBZA.appcfg.GrpRtWinStatus = this.WindowState;
                if (this.WindowState == FormWindowState.Normal)
                {
                    gBZA.appcfg.GroupRealviewSize = this.Size;
                    gBZA.appcfg.GroupRealviewLocation = pt;
                }
            }
            else if (iMode == 2)
            {
                gBZA.appcfg.RtWinStatus = this.WindowState;
                if (this.WindowState == FormWindowState.Normal)
                {
                    gBZA.appcfg.RealviewSize = this.Size;
                    gBZA.appcfg.RealviewLocation = pt;
                }
            }
            else
            {
                gBZA.appcfg.RegRtWinStatus = this.WindowState;
                if (this.WindowState == FormWindowState.Normal)
                {
                    gBZA.appcfg.RegRealviewSize = this.Size;
                    gBZA.appcfg.RegRealviewLocation = pt;
                }
            }
        }

        private void pan_SizeChanged(object sender, EventArgs e)
        {
            if (bClose || bFirst) return;
            if (this.WindowState == FormWindowState.Minimized) return;
            if (iMode == 1)
            {
                gBZA.appcfg.GrpRtWinStatus = this.WindowState;
                if (this.WindowState == FormWindowState.Normal)
                {
                    gBZA.appcfg.GroupRealviewSize = this.Size;
                }
            }
            else if(iMode == 2)
            {
                gBZA.appcfg.RtWinStatus = this.WindowState;
                if (this.WindowState == FormWindowState.Normal)
                {
                    gBZA.appcfg.RealviewSize = this.Size;
                }
            }
            else
            {
                gBZA.appcfg.RegRtWinStatus = this.WindowState;
                if (this.WindowState == FormWindowState.Normal)
                {
                    gBZA.appcfg.RegRealviewSize = this.Size;
                }
            }
            ResizeWindow();
        }

        private void frmRealview_FormClosing(object sender, FormClosingEventArgs e)
        {
            bClose = true;
           
        }

        private void frmRealview_Activated(object sender, EventArgs e)
        {
            
        }

        private void frmRealview_MdiChildActivate(object sender, EventArgs e)
        {

        }
    }
}
