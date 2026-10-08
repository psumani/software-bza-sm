using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ZiveLab.ZM
{
    public partial class frmSetVdcReference : Form
    {
        public double ReferenceValue { get; private set; }
        public double MaxValue { get; private set; }
        public double MinValue { get; private set; }
        public bool AutoRange { get; private set; }
        public frmSetVdcReference(double RefValue, double maxval, double minval,bool auto)
        {
            InitializeComponent();
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            
            this.ControlBox = true;
            ReferenceValue = RefValue;
            MaxValue = maxval;
            MinValue = minval;
            AutoRange = auto;
            txtmax.Text = maxval.ToString("0.000");
            txtmin.Text = minval.ToString("0.000");
            txtValue.Text = RefValue.ToString("0.000");
            chkautorng.Checked = auto;
            groupBox1.Enabled = !AutoRange;
            btcancel.DialogResult = DialogResult.Cancel;
        }
        private void btok_Click(object sender, EventArgs e)
        {
            double val;

            if (double.TryParse(txtmax.Text, out val))
            {
                MaxValue = val;
                txtmax.Text = val.ToString("0.000");
            }
            else
            {
                MessageBox.Show("Please enter a valid number.",
                                "Invalid Input",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

            if (double.TryParse(txtmin.Text, out val))
            {
                MinValue = val;
                txtmin.Text = val.ToString("0.000");
            }
            else
            {
                MessageBox.Show("Please enter a valid number.",
                                "Invalid Input",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }

            if (double.TryParse(txtValue.Text, out val))
            {
                ReferenceValue = val;
                txtValue.Text = val.ToString("0.000");
            }
            else
            {
                MessageBox.Show("Please enter a valid number.",
                                "Invalid Input",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
            AutoRange = chkautorng.Checked;
            this.DialogResult = DialogResult.OK;        
            this.Close();
        }

        private void frmSetVdcReference_Load(object sender, EventArgs e)
        {

        }

        private void chkautorng_CheckedChanged(object sender, EventArgs e)
        {
            groupBox1.Enabled = !chkautorng.Checked;
        }

        private void chkautorng_CheckStateChanged(object sender, EventArgs e)
        {

        }
    }
}
