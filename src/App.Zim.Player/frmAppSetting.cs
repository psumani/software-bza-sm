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
            numBeginFreq.Value = (int)(Properties.Settings.Default.BeginCalibFreq);
            cboCalRng.Items.Clear();
            cboCalRng.Items.Insert(0, "CRange-0");
            cboCalRng.Items.Insert(1, "CRange-1");
            cboCalRng.Items.Insert(2, "CRange-2");
            cboCalRng.Items.Insert(3, "CRange-3");
            cboCalRng.Items.Insert(4, "CRange-4");
            cboCalRng.Items.Insert(5, "CRange-5");
            cboCalRng.Items.Insert(6, "CRange-6");
            cboCalRng.Items.Insert(7, "CRange-7");
            cboCalRng.SelectedIndex = (int)(Properties.Settings.Default.CalibRange);
        }
        
        private void btnOK_Click(object sender, EventArgs e)
        {
            
            Properties.Settings.Default.AutoConnDelay = (int)numconndelay.Value;
            Properties.Settings.Default.RefreshTime = (int)numRefreshtime.Value;
            Properties.Settings.Default.CommTimeOut = (int)numtimeout.Value;
            Properties.Settings.Default.CalibRange = (int)cboCalRng.SelectedIndex;
            Properties.Settings.Default.BeginCalibFreq = (double)numBeginFreq.Value;
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
