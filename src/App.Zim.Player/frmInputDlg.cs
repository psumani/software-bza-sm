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
    public partial class frmInputDlg : Form
    {

        public frmInputDlg()
        {

            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.AutoScaleMode = AutoScaleMode.Dpi;

            mResistor0.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.RDummy0);
            mResistor1.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.RDummy1);
            mResistor2.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.RDummy2);
            mResistor3.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.RDummy3);
            mResistor4.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.RDummy4);
            mResistor5.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.RDummy5);

            mInduct0.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.Inductance0);
            mInduct1.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.Inductance1);
            mInduct2.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.Inductance2);
            mInduct3.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.Inductance3);
            mInduct4.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.Inductance4);
            mInduct5.Text = string.Format("{0:0.0#######e+0}", Properties.Settings.Default.Inductance5);

            mPower.Text = string.Format("{0:0.0}", Properties.Settings.Default.Power);
        }

        private void LnkLblClose_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void LnkLblRegOnly_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            double Rtmp0 = 0.0;
            double Rtmp1 = 0.0;
            double Rtmp2 = 0.0;
            double Rtmp3 = 0.0;
            double Rtmp4 = 0.0;
            double Rtmp5 = 0.0;

            double Itmp0 = 0.0;
            double Itmp1 = 0.0;
            double Itmp2 = 0.0;
            double Itmp3 = 0.0;
            double Itmp4 = 0.0;
            double Itmp5 = 0.0;

            double Powtmp = 0.0;
            bool ret = true;


            if (double.TryParse(mResistor0.Text, out Rtmp0) == false) ret = false;
            if (double.TryParse(mResistor1.Text, out Rtmp1) == false) ret = false;
            if (double.TryParse(mResistor2.Text, out Rtmp2) == false) ret = false;
            if (double.TryParse(mResistor3.Text, out Rtmp3) == false) ret = false;
            if (double.TryParse(mResistor4.Text, out Rtmp4) == false) ret = false;
            if (double.TryParse(mResistor5.Text, out Rtmp5) == false) ret = false;
            if (double.TryParse(mInduct0.Text, out Itmp0) == false) ret = false;
            if (double.TryParse(mInduct1.Text, out Itmp1) == false) ret = false;
            if (double.TryParse(mInduct2.Text, out Itmp2) == false) ret = false;
            if (double.TryParse(mInduct3.Text, out Itmp3) == false) ret = false;
            if (double.TryParse(mInduct4.Text, out Itmp4) == false) ret = false;
            if (double.TryParse(mInduct5.Text, out Itmp5) == false) ret = false;
            if (double.TryParse(mPower.Text, out Powtmp) == false) ret = false;

            if (ret == true)
            {
                Properties.Settings.Default.RDummy0 = Rtmp0;
                Properties.Settings.Default.RDummy1 = Rtmp1;
                Properties.Settings.Default.RDummy2 = Rtmp2;
                Properties.Settings.Default.RDummy3 = Rtmp3;
                Properties.Settings.Default.RDummy4 = Rtmp4;
                Properties.Settings.Default.RDummy5 = Rtmp5;

                Properties.Settings.Default.Inductance0 = Itmp0; 
                Properties.Settings.Default.Inductance1 = Itmp1; 
                Properties.Settings.Default.Inductance2 = Itmp2;
                Properties.Settings.Default.Inductance3 = Itmp3; 
                Properties.Settings.Default.Inductance4 = Itmp4; 
                Properties.Settings.Default.Inductance5 = Itmp5;

                Properties.Settings.Default.Power = Powtmp;
                Properties.Settings.Default.Save();

                this.DialogResult = DialogResult.Cancel;
            }
            else
            {
                MessageBox.Show("Some of the entered values ​​cannot be replaced with numbers.\r\n Please check and try again.", "Dummy information.", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LnkLblRegApply_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            double Rtmp0 = 0.0;
            double Rtmp1 = 0.0;
            double Rtmp2 = 0.0;
            double Rtmp3 = 0.0;
            double Rtmp4 = 0.0;
            double Rtmp5 = 0.0;

            double Itmp0 = 0.0;
            double Itmp1 = 0.0;
            double Itmp2 = 0.0;
            double Itmp3 = 0.0;
            double Itmp4 = 0.0;
            double Itmp5 = 0.0;

            double Powtmp = 0.0;

            bool ret = true;


            if (double.TryParse(mResistor0.Text, out Rtmp0) == false) ret = false;
            if (double.TryParse(mResistor1.Text, out Rtmp1) == false) ret = false;
            if (double.TryParse(mResistor2.Text, out Rtmp2) == false) ret = false;
            if (double.TryParse(mResistor3.Text, out Rtmp3) == false) ret = false;
            if (double.TryParse(mResistor4.Text, out Rtmp4) == false) ret = false;
            if (double.TryParse(mResistor5.Text, out Rtmp5) == false) ret = false;
            if (double.TryParse(mInduct0.Text, out Itmp0) == false) ret = false;
            if (double.TryParse(mInduct1.Text, out Itmp1) == false) ret = false;
            if (double.TryParse(mInduct2.Text, out Itmp2) == false) ret = false;
            if (double.TryParse(mInduct3.Text, out Itmp3) == false) ret = false;
            if (double.TryParse(mInduct4.Text, out Itmp4) == false) ret = false;
            if (double.TryParse(mInduct5.Text, out Itmp5) == false) ret = false;

            if (double.TryParse(mPower.Text, out Powtmp) == false) ret = false;

            if (ret == true)
            {
                Properties.Settings.Default.RDummy0 = Rtmp0;
                Properties.Settings.Default.RDummy1 = Rtmp1;
                Properties.Settings.Default.RDummy2 = Rtmp2;
                Properties.Settings.Default.RDummy3 = Rtmp3;
                Properties.Settings.Default.RDummy4 = Rtmp4;
                Properties.Settings.Default.RDummy5 = Rtmp5;

                Properties.Settings.Default.Inductance0 = Itmp0;
                Properties.Settings.Default.Inductance1 = Itmp1;
                Properties.Settings.Default.Inductance2 = Itmp2;
                Properties.Settings.Default.Inductance3 = Itmp3;
                Properties.Settings.Default.Inductance4 = Itmp4;
                Properties.Settings.Default.Inductance5 = Itmp5;

                Properties.Settings.Default.Power = Powtmp;

                Properties.Settings.Default.Save();

                this.DialogResult = DialogResult.OK;
            }
            else
            {
                MessageBox.Show("Some of the entered values ​​cannot be replaced with numbers.\r\n Please check and try again.", "Dummy information.", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
