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
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    public partial class frmDummyDlg : Form
    {

        public frmDummyDlg()
        {

            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.AutoScaleMode = AutoScaleMode.Dpi;

            mResistor0.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.RDummy[0]);
            mResistor1.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.RDummy[1]);
            mResistor2.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.RDummy[2]);
            mResistor3.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.RDummy[3]);
            mResistor4.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.RDummy[4]);
            mResistor5.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.RDummy[5]);
            mResistor6.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.RDummy[6]);
            mResistor7.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.RDummy[7]);

            mInduct0.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.LDummy[0]);
            mInduct1.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.LDummy[1]);
            mInduct2.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.LDummy[2]);
            mInduct3.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.LDummy[3]);
            mInduct4.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.LDummy[4]);
            mInduct5.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.LDummy[5]);
            mInduct6.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.LDummy[6]);
            mInduct7.Text = string.Format("{0:0.0#######e+0}", gBZA.appcfg.LDummy[7]);

            mPower.Text = string.Format("{0:0.0}", gBZA.appcfg.Power);
        }

        private void LnkLblClose_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void LnkLblRegOnly_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            double[] Rtmp = new double[MBZA_Constant.MAX_DUMMY];
            double[] Itmp = new double[MBZA_Constant.MAX_DUMMY];
            
            double Powtmp = 0.0;
            bool ret = true;


            if (double.TryParse(mResistor0.Text, out Rtmp[0]) == false) ret = false;
            if (double.TryParse(mResistor1.Text, out Rtmp[1]) == false) ret = false;
            if (double.TryParse(mResistor2.Text, out Rtmp[2]) == false) ret = false;
            if (double.TryParse(mResistor3.Text, out Rtmp[3]) == false) ret = false;
            if (double.TryParse(mResistor4.Text, out Rtmp[4]) == false) ret = false;
            if (double.TryParse(mResistor5.Text, out Rtmp[5]) == false) ret = false;
            if (double.TryParse(mResistor6.Text, out Rtmp[6]) == false) ret = false;
            if (double.TryParse(mResistor7.Text, out Rtmp[7]) == false) ret = false;
            if (double.TryParse(mInduct0.Text, out Itmp[0]) == false) ret = false;
            if (double.TryParse(mInduct1.Text, out Itmp[1]) == false) ret = false;
            if (double.TryParse(mInduct2.Text, out Itmp[2]) == false) ret = false;
            if (double.TryParse(mInduct3.Text, out Itmp[3]) == false) ret = false;
            if (double.TryParse(mInduct4.Text, out Itmp[4]) == false) ret = false;
            if (double.TryParse(mInduct5.Text, out Itmp[5]) == false) ret = false;
            if (double.TryParse(mInduct6.Text, out Itmp[6]) == false) ret = false;
            if (double.TryParse(mInduct7.Text, out Itmp[7]) == false) ret = false;
            if (double.TryParse(mPower.Text, out Powtmp) == false) ret = false;

            if (ret == true)
            {
                for (int i = 0; i < MBZA_Constant.MAX_DUMMY; i++)
                {
                    gBZA.appcfg.RDummy[i] = Rtmp[i];
                    gBZA.appcfg.LDummy[i] = Itmp[i];
                }
                
                gBZA.appcfg.Power = Powtmp;

                this.DialogResult = DialogResult.Cancel;
            }
            else
            {
                MessageBox.Show("Some of the entered values ​​cannot be replaced with numbers.\r\n Please check and try again.", "Dummy information.", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
