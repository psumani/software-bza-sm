using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Media;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    public partial class frmInputValue : Form
    {
        public string sInValue;
        public int inType;
        public frmInputValue(string sItem, string sValue,int Type = 0)
        {
            InitializeComponent();

            this.Text = "Change " + sItem + " value";
            this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.EditInput);
            inType = Type;

            if (inType == 0)
            {
                chkbox.Visible = false;
                lblIPSplash.Visible = false;
                txtIP0.Visible = false;
                txtIP1.Visible = false;
                txtIP2.Visible = false;
                txtIP3.Visible = false;
                txtValue.Visible = true;
                txtValue.Text = sValue;
            }
            else if (inType == 1)
            {
                chkbox.Visible = true;
                lblIPSplash.Visible = false;
                txtIP0.Visible = false;
                txtIP1.Visible = false;
                txtIP2.Visible = false;
                txtIP3.Visible = false;
                txtValue.Visible = false;
                chkbox.Text = "Enabled";
                if (sValue == "Enabled") chkbox.Checked = true;
                else chkbox.Checked = false;
            }
            else if (inType == 2)
            {
                chkbox.Visible = false;
                lblIPSplash.Visible = true;
                txtIP0.Visible = true;
                txtIP1.Visible = true;
                txtIP2.Visible = true;
                txtIP3.Visible = true;
                txtValue.Visible = false;
               
                IPAddress ip;
                if (IPAddress.TryParse(sValue, out ip) == true)
                {
                    byte[] IpByte = ip.GetAddressBytes();
                    txtIP0.Text = IpByte[0].ToString();
                    txtIP1.Text = IpByte[1].ToString();
                    txtIP2.Text = IpByte[2].ToString();
                    txtIP3.Text = IpByte[3].ToString();
                }
            }
            else if (inType == 3)
            {
                chkbox.Visible = false;
                lblIPSplash.Visible = false;
                txtIP0.Visible = false;
                txtIP1.Visible = false;
                txtIP2.Visible = false;
                txtIP3.Visible = false;
                txtValue.Visible = true;
                txtValue.MaxLength = 20;
                txtValue.Text = sValue;
            }
            sInValue = sValue;
        }

        private void btOk_Click(object sender, EventArgs e)
        {
            if (inType == 0)
            {
                if (DoubleCharChecker(txtValue.Text) == false)
                {
                    MessageBox.Show("Invalid input, please check.");
                }
                else
                {
                    sInValue = txtValue.Text;
                    this.DialogResult = DialogResult.OK;
                }
            }
            else if (inType == 1)
            {
                if (chkbox.Checked == true) sInValue = "Enabled";
                else sInValue = "Disabled";
                this.DialogResult = DialogResult.OK;
            }
            else if (inType == 2)
            {
                IPAddress ip;
                byte[] IpByte = new byte[4];

                sInValue = string.Format("{0:##0}.{1:##0}.{2:##0}.{3:##0}", txtIP0.Text, txtIP1.Text, txtIP2.Text, txtIP3.Text);
                if (IPAddress.TryParse(sInValue, out ip) == true)
                {
                    this.DialogResult = DialogResult.OK;
                }
            }
            else if (inType == 3)
            { 
                 sInValue = txtValue.Text;
                 this.DialogResult = DialogResult.OK;
            }
        }
        private void btCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void txtValue_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (inType == 0)
            {
                if (DoubleCharChecker(e.KeyChar) == false)
                {
                    e.Handled = true;
                    SystemSounds.Asterisk.Play();
                    //          SystemSounds.Beep.Play();
                }
            }
        }

        private bool DoubleCharChecker(char c)
        {

            if (c.Equals('-') || c.Equals('.') || c.Equals('e') || c.Equals('E') || Char.IsDigit(c))
                return true;

            return false;
        }

        private bool DoubleCharChecker(string str)
        {
            foreach (char c in str)
            {
                if (!c.Equals('-') && !c.Equals('.') && !Char.IsDigit(c) && !c.Equals('e') && !c.Equals('E'))
                    return false;
            }
            return true;
        }
    }
}
