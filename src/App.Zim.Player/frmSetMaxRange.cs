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
    
    public partial class frmSetMaxRange : Form
    {
        public double MaxVal;
        public frmSetMaxRange(double tMax)
        {
            InitializeComponent();
            MaxVal = tMax;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.AutoScaleMode = AutoScaleMode.Dpi;

            txtValue.Text = string.Format("{0:0.0#######e+0}", MaxVal);
        }

        private void btok_Click(object sender, EventArgs e)
        {
            if (double.TryParse(txtValue.Text, out MaxVal) == false) this.DialogResult = DialogResult.Cancel;
            else  this.DialogResult = DialogResult.OK;
        }

        private void btcancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
