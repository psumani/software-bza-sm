using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Utilities;

namespace App.ZIM.FactorySetting
{
    public partial class frmConnDlg : Form
    {
        public CommObj mCommZim;
        PingHost1 pingHost1;
        public frmConnDlg(ref CommObj mSetCommZim)
        {
            mCommZim = mSetCommZim;
            InitializeComponent();
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
                Properties.Settings.Default.IP0 = mCommZim.mConnTargetCfg.IpAddress[0];
                Properties.Settings.Default.IP1 = mCommZim.mConnTargetCfg.IpAddress[1];
                Properties.Settings.Default.IP2 = mCommZim.mConnTargetCfg.IpAddress[2];
                Properties.Settings.Default.IP3 = mCommZim.mConnTargetCfg.IpAddress[3];
                Properties.Settings.Default.Port = mCommZim.mConnTargetCfg.Port;
                Properties.Settings.Default.Save();

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
            pingHost1 = new PingHost1(chkdhcp.Checked);// new PingHost(pingCompleted);

            pingHost1.chksearchdhcp = chkdhcp.Checked;

            if (mCommZim.isConnected)
            {
                mCommZim.Dispose();
            }
            Findlist.Items.Clear();
            FindErrlist.Items.Clear();

            

            var success = Task.Run(async () => { await pingHost1.ScanAsync();  }).Wait(300000);

            try
            {
                var dic = pingHost1.SearchedDevice;//.ToSortedDictionary();
                foreach (var pair in dic)
                {
                    var ip = pair.Key;
                    var mac = string.Join(":", pair.Value.mac.GetAddressBytes().Select(b => b.ToString("X2")));
                    var str = string.Format("{0} [{1}/ Device:{2}]::{3}", ip, mac, ((eDeviceType)(pair.Value.findsifcfg.Type)).GetDescription(), pair.Value.findsifcfg.GetSerialNumber());
                    Findlist.Items.Add(str);
                }

                dic = pingHost1.SearchedErrDevice;//.ToSortedDictionary();
                foreach (var pair in dic)
                {
                    var ip = pair.Key;
                    var mac = string.Join(":", pair.Value.mac.GetAddressBytes().Select(b => b.ToString("X2")));
                    var hostName = ip.GetHostName();

                    var str = string.Format("{0} [{1}/ Device:{2}]::{3}", ip, mac, ((eDeviceType)(pair.Value.findsifcfg.Type)).GetDescription(), pair.Value.findsifcfg.GetSerialNumber());
                    if (pair.Value.busy == true)
                    {
                        str += ": Busy";
                    }
                    else
                    {
                        str += ": Ready";
                    }

                    FindErrlist.Items.Add(str);
                }
                


            }
            catch
            { }

            // Set cursor as default arrow
            Cursor.Current = Cursors.Default;
        }
        
        private void pingCompleted(object sender, EventArgs e)
        {
            
        }

        private void Findlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (pingHost1 == null) return;
            if (Findlist.SelectedIndex < 0) return;

            mCommZim.mConnTargetCfg.IpAddress = mCommZim.HostNameToIP(pingHost1.SearchedDevice.ElementAt(Findlist.SelectedIndex).Key);

            txtIP0.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[0]);
            txtIP1.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[1]);
            txtIP2.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[2]);
            txtIP3.Text = string.Format("{0}", mCommZim.mConnTargetCfg.IpAddress[3]);
        }

        
    }
}
