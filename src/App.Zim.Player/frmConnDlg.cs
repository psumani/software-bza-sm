using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Utilities;

namespace App.Zim.Player
{
    public partial class frmConnDlg : Form
    {
        public CommObj mCommZim;
        public stConnCfg mConnCfg;
        PingHost pingHost;
        public frmConnDlg()
        {
            InitializeComponent();

            this.Icon = Properties.Resources.bm;

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


            if (mCommZim.isConnected == false) this.Text = "Select a device, Not connected.";
            else
            {
                this.Text = string.Format("Select a device, Connected {0}[{1}].", mCommZim.mComm.HostName, Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
            }
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

            Findlist.Items.Clear();
            labelWarning.Visible = false;

            pingHost = new PingHost();// new PingHost(pingCompleted);

            progScan.Maximum = pingHost.ListOfIPs.Count;
            progScan.Value = 0;
            progScan.Step = 1;

            var success = Task.Run(async () => { await pingHost.ScanAsync(); }).Wait(300000);



            try
            {
                var dic = pingHost.SearchedDevice;//.ToSortedDictionary();
                foreach (var pair in dic)
                {
                    var ip = pair.Key;
                   // var mac = string.Join(":", pair.Value.GetAddressBytes().Select(b => b.ToString("X2")));
                   // var hostName = ip.GetHostName();
                    var str = string.Format("{0} [{1}]", ip, pair.Value);

                   // var str = string.Format("{0} [{1}] {2}", ip, mac, hostName);
                    Findlist.Items.Add(str);
                }
            }
            catch
            {
            }

            labelWarning.Visible = (pingHost.SearchedDevice.Count == 0);

            // Set cursor as default arrow
            Cursor.Current = Cursors.Default;
        }
        
        private void pingCompleted(object sender, EventArgs e)
        {
            if (progScan.InvokeRequired)
            {
                progScan.Invoke(new Action(() => { progScan.Value++; }));
            }
            else
            {
                progScan.PerformStep();
            }
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
