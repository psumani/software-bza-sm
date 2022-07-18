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

namespace ZiveLab.ZM
{
    
    public partial class frmSetMaxRange : Form
    {
        public double RealMaxVal;
        public double MaxVal;
        public double MinVal;
        public frmSetMaxRange(double tRealMaxVal, double tMax, double tMin)
        {
            InitializeComponent();
            RealMaxVal = tRealMaxVal;
            MaxVal = tMax;
            MinVal = tMin;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.AutoScaleMode = AutoScaleMode.Dpi;
            txtreal.Visible = true;
            label2.Visible = true;
            txtreal.Text = string.Format("{0:0.0#######e+0}", RealMaxVal);
            txtValue.Text = string.Format("{0:0.0#######e+0}", MaxVal);
            txtValue1.Text = string.Format("{0:0.0#######e+0}", MinVal);
        }

        public frmSetMaxRange(double tMax, double tMin)
        {
            InitializeComponent();

            MaxVal = tMax;
            MinVal = tMin;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.AutoScaleMode = AutoScaleMode.Dpi;
            txtreal.Visible = false;
            label2.Visible = false;
            txtValue.Text = string.Format("{0:0.0#######e+0}", MaxVal);
            txtValue1.Text = string.Format("{0:0.0#######e+0}", MinVal);
        }

        private void btok_Click(object sender, EventArgs e)
        {
            if (txtreal.Visible == true)
            {
                if (double.TryParse(txtreal.Text, out RealMaxVal) == false)
                {
                    MessageBox.Show("There is a problem with the input of the real maximum value. \r\n Please check and try again.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            if (double.TryParse(txtValue.Text, out MaxVal) == false)
            {
                MessageBox.Show("There is a problem with the input of the maximum value. \r\n Please check and try again.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (double.TryParse(txtValue1.Text, out MinVal) == false)
            {
                MessageBox.Show("There is a problem with the input of the minimum value. \r\n Please check and try again.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            else  this.DialogResult = DialogResult.OK;
        }

        private void btcancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
