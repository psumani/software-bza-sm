using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace App.Zim.Player
{
    public partial class frmAppSetting : Form
    {
        public frmAppSetting()
        {
            InitializeComponent();

        }

        private void frmAppSetting_Load(object sender, EventArgs e)
        {
            numRefreshtime.Value = Properties.Settings.Default.RefreshTime;
            numconndelay.Value = Properties.Settings.Default.AutoConnDelay;
            numtimeout.Value = Properties.Settings.Default.CommTimeOut;
            numfreq.Value = (int)(Properties.Settings.Default.FinalCalibFreq * 1000.0);
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            
            Properties.Settings.Default.AutoConnDelay = (int)numconndelay.Value;
            Properties.Settings.Default.RefreshTime = (int)numRefreshtime.Value;
            Properties.Settings.Default.CommTimeOut = (int)numtimeout.Value;
            Properties.Settings.Default.FinalCalibFreq = (double)numfreq.Value / 1000.0;
            
            Properties.Settings.Default.Save();
            this.DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
