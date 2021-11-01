using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;

namespace App.ZIM.FactorySetting
{
    public partial class frmInputString : Form
    {
        private CommObj mCommZim;
        private stConnCfg mConnCfg;
        private stUserEthernetCfg mUserConnCfg;
        public frmInputString(ref CommObj mSetCommObj)
        {
            InitializeComponent();
            this.Icon = Properties.Resources.BatMag;
            mCommZim = mSetCommObj;
            mConnCfg = new stConnCfg();
            mUserConnCfg = new stUserEthernetCfg(0);
            RefreshHostname();
        }

        public void RefreshHostname()
        {
            if (mCommZim.isConnected == true)
            {
                if (mCommZim.ReadData(ref mConnCfg) == true)
                {
                    txtinput.Text = string.Format("{0}", Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                    mUserConnCfg.ToWritePtr(mConnCfg.mEthernetCfg.ToNoMacByteArray());
                }
            }

        }

        private void btok_Click(object sender, EventArgs e)
        {
            int len;
            string str = txtinput.Text.Trim();
            len = str.Length;
            byte[] temp = Encoding.ASCII.GetBytes(str);
            Array.Clear(mUserConnCfg.hostname, 0,  20);
            Array.Copy(temp, mUserConnCfg.hostname, len);

            if (mCommZim.isConnected == true)
            {
                if (mCommZim.WriteData(mUserConnCfg) == false)
                {
                    MessageBox.Show("The transmission has been failed.");
                }
                RefreshHostname();
                if (mCommZim.CmdStoreConnCfgInfo() == false)
                {
                    MessageBox.Show("Save failed.");
                }
                else
                { 
                    MessageBox.Show("It was successfully applied.");
                }
            }
            else
            {
                MessageBox.Show("Not connected.");
            }
        }

        private void frmInputString_Load(object sender, EventArgs e)
        {
            
        }

        private void btcancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void btInit_Click(object sender, EventArgs e)
        {
            txtinput.Text = string.Format("ZIM-{0:X2}{1:X2}", mConnCfg.mEthernetCfg.Mac[4], mConnCfg.mEthernetCfg.Mac[5]);
        }
    }
}
