using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM.FactorySetting
{
    public partial class frmInputString : Form
    {
        private CommObj mCommZim;
        private stConnCfg mConnCfg;
        private stConnCfg mUserConnCfg;
        public frmInputString(ref CommObj mSetCommObj)
        {
            InitializeComponent();
            this.Icon = ZM.FactorySetting.Properties.Resources.ZMFactorySetting;
            mCommZim = mSetCommObj;
  
            mConnCfg = new stConnCfg();
            mUserConnCfg = new stConnCfg(0);
            RefreshHostname();
        }

        public void RefreshHostname()
        {
            if (mCommZim.isConnected == true)
            {
                if (mCommZim.ReadData(ref mConnCfg) == true)
                {
                    txtinput.Text = string.Format("{0}", Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                    mUserConnCfg.ToWritePtr(mConnCfg.ToByteArray());
                }
            }

        }

        private void btok_Click(object sender, EventArgs e)
        {
            int len;
            string str = txtinput.Text.Trim();
            len = str.Length;
            byte[] temp = Encoding.ASCII.GetBytes(str);
            Array.Clear(mUserConnCfg.mEthernetCfg.hostname, 0,  20);
            Array.Copy(temp, mUserConnCfg.mEthernetCfg.hostname, len);

            if (mCommZim.isConnected == true)
            {
                if (mCommZim.CmdStoreConnCfgInfo(ref mUserConnCfg) == false)
                {
                    MessageBox.Show("Save failed.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                RefreshHostname();

            }
            else
            {
                MessageBox.Show("Not connected.", gFs.AppTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);


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
            txtinput.Text = string.Format("BZA-{0:X2}{1:X2}", mConnCfg.mEthernetCfg.Mac[4], mConnCfg.mEthernetCfg.Mac[5]);
        }
    }
}
