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

namespace ZiveLab.ZM
{
    public partial class frmSetBatPara : Form
    {
        public int type;
        public double socmax;
        public double socmin;
        public double typemax;
        public double typemin;
        public double typegain;
        public double typeoffset;

        public stBatParaInfo minfo;

        double dMax1, dMax2, dMin1, dMin2;
        double dgain, doffset;
        public frmSetBatPara()
        {
            InitializeComponent();

        }

        private void frmCalWebVars_Load(object sender, EventArgs e)
        {
            

            if (type == 0)
            {
                this.Text = "Calculate SOC-Rp variables.";
                grpbox2.Text = "[ Rp ]";
                if (minfo.socrp.MaxVal.Equals(double.NaN)) txtMax1.Text = "null";
                else txtMax1.Text = minfo.socrp.MaxVal.ToString();

                if (minfo.socrp.MinVal.Equals(double.NaN)) txtMin1.Text = "null";
                else txtMin1.Text = minfo.socrp.MinVal.ToString();

                if (minfo.rp.MaxVal.Equals(double.NaN)) txtMax2.Text = "null";
                else txtMax2.Text = minfo.rp.MaxVal.ToString();

                if (minfo.rp.MinVal.Equals(double.NaN)) txtMin2.Text = "null";
                else txtMin2.Text = minfo.rp.MinVal.ToString();

                if (minfo.gsocrp.Equals(double.NaN)) txtgain.Text = "null";
                else txtgain.Text = minfo.gsocrp.ToString();

                if (minfo.osocrp.Equals(double.NaN)) txtoffset.Text = "null";
                else txtoffset.Text = minfo.osocrp.ToString();

                dMax1 = minfo.socrp.MaxVal;
                dMin1 = minfo.socrp.MinVal;
                dMax2 = minfo.rp.MaxVal;
                dMin2 = minfo.rp.MinVal;
                dgain = minfo.gsocrp;
                doffset = minfo.osocrp;
            }
            else
            {
                this.Text = "Calculate SOC-Eoc variables.";
                grpbox2.Text = "[ Eoc ]";
                if (minfo.socvoc.MaxVal.Equals(double.NaN)) txtMax1.Text = "null";
                else txtMax1.Text = minfo.socvoc.MaxVal.ToString();

                if (minfo.socvoc.MinVal.Equals(double.NaN)) txtMin1.Text = "null";
                else txtMin1.Text = minfo.socvoc.MinVal.ToString();

                if (minfo.voc.MaxVal.Equals(double.NaN)) txtMax2.Text = "null";
                else txtMax2.Text = minfo.voc.MaxVal.ToString();

                if (minfo.voc.MinVal.Equals(double.NaN)) txtMin2.Text = "null";
                else txtMin2.Text = minfo.voc.MinVal.ToString();

                if (minfo.gsoceoc.Equals(double.NaN)) txtgain.Text = "null";
                else txtgain.Text = minfo.gsoceoc.ToString();

                if (minfo.osoceoc.Equals(double.NaN)) txtoffset.Text = "null";
                else txtoffset.Text = minfo.osoceoc.ToString();

                dMax1 = minfo.socvoc.MaxVal;
                dMin1 = minfo.socvoc.MinVal;
                dMax2 = minfo.voc.MaxVal;
                dMin2 = minfo.voc.MinVal;
                dgain = minfo.gsoceoc;
                doffset = minfo.osoceoc;
            }

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        private double GetDoubleFromString(ref string sVal)
        {
            double tmpdb;
            string str;
            str = sVal;
            if (sVal == "null") tmpdb = double.NaN;
            else
            {
                if (Double.TryParse(sVal, out tmpdb) == false)
                {
                    tmpdb = double.NaN;
                    str = "null";
                }
            }

            sVal = str;
            return tmpdb;
        }

        void CalibCalculateProc()
        {
            int s;
            double mx1;
            double mx2;
            double my1;
            double my2;

            double Sx;
            double Sy;
            double Sxx;
            double Sxy;
            double dTemp;

            if (type == 0)
            {
                mx1 = 1.0 / dMin2;
                mx2 = 1.0 / dMax2;
                my1 = dMin1;
                my2 = dMax1;
            }
            else
            {
                mx1 = dMin2;
                mx2 = dMax2;
                my1 = dMin1;
                my2 = dMax1;
            }


            s = 2;
            Sx = mx1 + mx2;
            Sy = my1 + my2;

            Sxx = (mx1 * mx1) + (mx2 * mx2);
            Sxy = (mx1 * my1) + (mx2 * my2);
            
            dTemp = (s * Sxx) - (Sx * Sx);
            doffset = ((Sxx * Sy - Sx * Sxy) / dTemp);
            dgain = ((s * Sxy - Sx * Sy) / dTemp);

            dgain = ((int)(dgain * 1000.0)) * 0.001;
            doffset = ((int)(doffset * 1000.0)) * 0.001;

        }

        private void CalcVars(bool bapplay)
        {

            string str;

            str = txtMax1.Text;
            dMax1 = GetDoubleFromString(ref str);
            txtMax1.Text = str;

            str = txtMin1.Text;
            dMin1 = GetDoubleFromString(ref str);
            txtMin1.Text = str;

            str = txtMax2.Text;
            dMax2 = GetDoubleFromString(ref str);
            txtMax2.Text = str;

            str = txtMin2.Text;
            dMin2 = GetDoubleFromString(ref str);
            txtMin2.Text = str;

            if (dMax1.Equals(double.NaN)
                || dMax2.Equals(double.NaN)
                || dMax2.Equals(double.NaN)
                || dMax2.Equals(double.NaN))
            {
                dgain = double.NaN;
                doffset = double.NaN;
            }
            else
            {
                CalibCalculateProc();
               
            }
            
            if (dgain.Equals(double.NaN)) txtgain.Text = "null";
            else txtgain.Text = dgain.ToString();

            if (doffset.Equals(double.NaN)) txtoffset.Text = "null";
            else txtoffset.Text = doffset.ToString();

            if (bapplay == true)
            {
                
                if(type == 0)
                {
                    minfo.socrp.MaxVal = dMax1;
                    minfo.socrp.MinVal = dMin1;
                    minfo.rp.MaxVal = dMax2;
                    minfo.rp.MinVal = dMin2;
                    minfo.gsocrp = dgain;
                    minfo.osocrp = doffset;
                }
                else
                {
                    minfo.socvoc.MaxVal = dMax1;
                    minfo.socvoc.MinVal = dMin1;
                    minfo.voc.MaxVal = dMax2;
                    minfo.voc.MinVal = dMin2;
                    minfo.gsoceoc = dgain;
                    minfo.osoceoc = doffset;
                }
            }

        }

        private void lnklblcal_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            CalcVars(false);
        }

        private void btOk_Click(object sender, EventArgs e)
        {
            CalcVars(true);

            DialogResult = DialogResult.OK;
        }
    }
}
