using SMLib;
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

namespace ZiveLab.ZM
{
    public partial class frmRealview : Form
    {
        List<int> chs;
        BZAChPan[] chpan;
        public event EventHandler chevent;
        public event EventHandler evSizeChanged;
        public event EventHandler CloseThis;
        string fileinf;
        bool bload;
        public frmRealview(bool load)
        {
            bload = load;
            fileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");

            

            InitializeComponent();
            chs = new List<int>();
            chs.Clear();
            
            
            timer1.Stop();

            
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

            if (evSizeChanged != null)
            {
                foreach (Delegate ev in evSizeChanged.GetInvocationList())
                {
                    evSizeChanged -= (EventHandler)ev;
                }
            }

            chs = lst;

            if (File.Exists(fileinf) == false)
            {
                SaveChannelsInfo();
            }

            string sch;
            foreach (var ch in chs)
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
                            continue;
                        }
                    }
                }
                chs.Remove(ch);
            }


            chpan = new BZAChPan[chs.Count];
            timer1.Interval = (int)(500 / chs.Count);

            chs.Sort();
            int i = 0;
            pan.Controls.Clear();
            foreach (var ch in chs)
            {
                chpan[i] = new BZAChPan(ch, ref chevent, ref evSizeChanged, ref pan);
                pan.Controls.Add(chpan[i]);
            }

            timer1.Start();
        }

        void LoadChannelsInfo()
        {
            SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
            chs = mFile.LoadXmlToObj(fileinf, chs);

            string sch;
            if(chs.Count < 1)
            {
                MessageBox.Show("The channel to display is not registered or cannot be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            foreach (var ch in chs)
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
                            continue;
                        }
                    }
                }
                chs.Remove(ch);
            }

            chpan = new BZAChPan[chs.Count];
            timer1.Interval = (int)(500 / chs.Count);
            if (chevent != null)
            {
                foreach (Delegate ev in chevent.GetInvocationList())
                {
                    chevent -= (EventHandler)ev;
                }
            }
            if (evSizeChanged != null)
            {
                foreach (Delegate ev in evSizeChanged.GetInvocationList())
                {
                    evSizeChanged -= (EventHandler)ev;
                }
            }

            chs.Sort();
            int i = 0;

            pan.Controls.Clear();
            foreach (var ch in chs)
            {
                chpan[i] = new BZAChPan(ch, ref chevent,ref evSizeChanged,ref pan);
                pan.Controls.Add(chpan[i]);
            }

            timer1.Start();

        }

        void SaveChannelsInfo()
        {
            SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
            mFile.SaveObjToXml(fileinf, chs);
        }
        private void frmRealview_Load(object sender, EventArgs e)
        {
            if (bload == true)
            {
                if (gBZA.appcfg.GroupRealviewSize == new Size(0, 0) || gBZA.appcfg.GroupRealviewLocation == new Point(0, 0) || gBZA.appcfg.GroupRealviewLocation.X == -32000 || gBZA.appcfg.GroupRealviewLocation.Y == -32000)
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
            else
            {
                if (gBZA.appcfg.RealviewSize == new Size(0, 0) || gBZA.appcfg.RealviewLocation == new Point(0, 0) || gBZA.appcfg.RealviewLocation.X == -32000 || gBZA.appcfg.RealviewLocation.Y == -32000)
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

            if (bload)
            {
                if (File.Exists(fileinf))
                {
                    LoadChannelsInfo();
                }
            }
            evSizeChanged?.Invoke(pan, e);
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
            
        }

        private void pan_SizeChanged(object sender, EventArgs e)
        {
            if (bload)
            {
                gBZA.appcfg.GroupRealviewSize = this.Size;
                gBZA.appcfg.Save();
            }
            else
            {
                gBZA.appcfg.RealviewSize = this.Size;
                gBZA.appcfg.Save();
            }

            evSizeChanged?.Invoke(pan, e);
        }

        private void openChannelRegistrationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveChannelsInfo();
        }

        private void frmRealview_FormClosing(object sender, FormClosingEventArgs e)
        {
            Point pt = this.Location;
            if (pt.X != -32000 && pt.Y != -32000)
            {
                if (bload)
                {
                    gBZA.appcfg.GroupRealviewLocation = pt;
                    gBZA.appcfg.GroupRealviewSize = this.Size;
                    gBZA.appcfg.Save();
                }
                else
                {
                    gBZA.appcfg.RealviewLocation = pt;
                    gBZA.appcfg.RealviewSize = this.Size;
                    gBZA.appcfg.Save();
                }
            }
        }
    }
}
