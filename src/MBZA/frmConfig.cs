using System;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Serialization;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM
{
    public partial class frmConfig : Form
    {
        string sch;
        string selsif;
        int selsifch;
        int selch;
        public event EventHandler CloseThis;
        public frmConfig()
        {
            InitializeComponent();

            selsif = "";
            selsifch = -1;
            selch = -1;
            sch = "";

            DoubleBuffered = true;

            
        }

        private void frmConfig_Load(object sender, EventArgs e)
        {
            RefreshListCh();
        }

        void RefreshListCh()
        {
            var list = gBZA.ChLnkLst.Keys.ToList();
            lstch.Items.Clear();

            if(list.Count < 1)
            {
                gBZA.ShowInfoBox("There are no registered channels.");
                return;
            }

            list.Sort();
            string str;
            foreach (var key in list)
            {

                str = string.Format("Channel {0}",(Convert.ToInt32(key) + 1));
                lstch.Items.Add(str);
            }

            lstch.SelectedIndex = 0;
        }
        
        

        private void frmConfig_FormClosing(object sender, FormClosingEventArgs e)
        {
            // mCommZim.CmdSetVdcAutoRange(1);
            Point pt = this.Location;
            if (pt.X != -32000 && pt.Y != -32000)
            {
                gBZA.appcfg.CfgLocation = pt;
                gBZA.appcfg.Save();
            }
        }

       
        private void frmConfig_FormClosed(object sender, FormClosedEventArgs e)
        {
            CloseThis?.Invoke(this, e);
        }

        private void lstch_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = lstch.SelectedItem.ToString();
            string str1;
            if (sch != str)
            {
                str1 = str.Substring(8);
                selch = Convert.ToInt32(str.Substring(8)) - 1;
                sch = selch.ToString();
                selsif = gBZA.ChLnkLst[sch].sSerial;
                selsifch = gBZA.ChLnkLst[sch].SifCh;

                grtinf.Text = string.Format("[ Channel {0} ({1}-{2}) ]", selch + 1, selsif, selsifch + 1);

                infoch.Initialize(selch, selsif, selsifch);
            }
        }

        private void ToolStripDummyInfo_Click(object sender, EventArgs e)
        {
            frmDummyDlg mdlg = new frmDummyDlg();
            if (mdlg.ShowDialog() == DialogResult.OK)
            {
            }
        }
    }
}
