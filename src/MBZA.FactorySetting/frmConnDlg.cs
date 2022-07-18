using System;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM.FactorySetting
{
    public partial class frmConnDlg : Form
    {
        public CommObj mCommZim;
        PingHost pingHost;
        public frmConnDlg(ref CommObj mSetCommZim)
        {
            mCommZim = mSetCommZim;
            InitializeComponent();
            this.Icon = ZM.FactorySetting.Properties.Resources.ZMFactorySetting;
            DoubleBuffered = true;
        }

        private void frmConnDlg_Load(object sender, EventArgs e)
        {
            if (mCommZim == null) throw new NullReferenceException("mCommZim");

            txtIP0.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[0]);
            txtIP1.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[1]);
            txtIP2.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[2]);
            txtIP3.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[3]);
            txtPort.Text = string.Format("{0}", mCommZim.mConnTargetCfg.Port);
        }

        private void btnConnect_Click(object sender, EventArgs e)
        {
            mCommZim.mConnTargetCfg.Port = Convert.ToInt32(txtPort.Text);
            mCommZim.mConnTargetCfg.IpAddress[0] = Convert.ToByte(txtIP0.Text);
            mCommZim.mConnTargetCfg.IpAddress[1] = Convert.ToByte(txtIP1.Text);
            mCommZim.mConnTargetCfg.IpAddress[2] = Convert.ToByte(txtIP2.Text);
            mCommZim.mConnTargetCfg.IpAddress[3] = Convert.ToByte(txtIP3.Text);
            
            if (mCommZim.Connect())
            {
                ZM.FactorySetting.Properties.Settings.Default.IP0 = mCommZim.mConnTargetCfg.IpAddress[0];
                ZM.FactorySetting.Properties.Settings.Default.IP1 = mCommZim.mConnTargetCfg.IpAddress[1];
                ZM.FactorySetting.Properties.Settings.Default.IP2 = mCommZim.mConnTargetCfg.IpAddress[2];
                ZM.FactorySetting.Properties.Settings.Default.IP3 = mCommZim.mConnTargetCfg.IpAddress[3];
                ZM.FactorySetting.Properties.Settings.Default.Port = mCommZim.mConnTargetCfg.Port;
                ZM.FactorySetting.Properties.Settings.Default.Save();

                
                this.DialogResult = DialogResult.OK;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void btnFind_Click(object sender, EventArgs e)
        {
            // Set cursor as hourglass
            Cursor.Current = Cursors.WaitCursor;

            if(mCommZim.isConnected)
            {
                mCommZim.Dispose();
            }
            Findlist.Items.Clear();

            pingHost = new PingHost(chkdhcp.Checked);// new PingHost(pingCompleted);
           
            var success = Task.Run(async () => { await pingHost.ScanAsync(); }).Wait(300000);
            try
            {
                var dic = pingHost.SearchedDevice;//.ToSortedDictionary();
                foreach (var pair in dic)
                {
                    var ip = pair.Key;
                    string str = string.Format("{0} ", ip);
                    if (pair.Value.bConnected == 0)
                    {
                        str += "[Failed connect]";
                    }
                    else if (pair.Value.bBza == 0)
                    {
                        str += string.Format("[ Not BZA:{0} ]", ((eDeviceType)pair.Value.mFindSifCfg.Type).GetDescription(), pair.Value.mFindSifCfg.GetSerialNumber());
                    }
                    else if (pair.Value.bBusy == 1)
                    {
                        str += string.Format("[ Busy:{0} ]", ((eDeviceType)pair.Value.mFindSifCfg.Type).GetDescription(), pair.Value.mFindSifCfg.GetSerialNumber());
                    }
                    else 
                    {
                        string str1 = string.Format("[ {0}/{1} ]", ((eDeviceType)pair.Value.mFindSifCfg.Type).GetDescription(), pair.Value.mFindSifCfg.GetSerialNumber());
                        str += str1;
                    }
                    
                    Findlist.Items.Add(str);
                }
            }
            catch
            {
                MessageBox.Show("Error Searching devices.");
            }

            labelWarning.Visible = (pingHost.SearchedDevice.Count == 0);

            // Set cursor as default arrow
            Cursor.Current = Cursors.Default;
        }
        
        private void pingCompleted(object sender, EventArgs e)
        {

        }

        private void Findlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (pingHost == null) return;
            if (Findlist.SelectedIndex < 0) return;
            mCommZim.mConnTargetCfg.IpAddress = mCommZim.HostNameToIP(pingHost.SearchedDevice.ElementAt(Findlist.SelectedIndex).Key);

            txtIP0.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[0]);
            txtIP1.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[1]);
            txtIP2.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[2]);
            txtIP3.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[3]);
        }
    }
}
