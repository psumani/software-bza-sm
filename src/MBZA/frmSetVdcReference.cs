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

        public frmSetVdcReference(double currentValue)
        {
            InitializeComponent();
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.ControlBox = true;
            ReferenceValue = currentValue;
            txtValue.Text = currentValue.ToString("0.000");
            txtreal.Text = currentValue.ToString("0.000"); 
            btcancel.DialogResult = DialogResult.Cancel;
        }
        private void btok_Click(object sender, EventArgs e)
        {
            double val;

            if (double.TryParse(txtValue.Text, out val))
            {
                ReferenceValue = val;
                txtreal.Text = val.ToString("0.000");
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            else
            {
                MessageBox.Show("Please enter a valid number.",
                                "Invalid Input",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
            }
        }
    }
}
