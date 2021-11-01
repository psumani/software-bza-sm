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
    public partial class frmCountdown : Form
    {
        private int nCount = 0;
        public frmCountdown(int nStart)
        {
            InitializeComponent();

            nCount = nStart;
        }

        private void frmCountdown_Load(object sender, EventArgs e)
        {
            lblView.Text = nCount.ToString();
            timer1.Interval = 1000;
            timer1.Start();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (nCount <= 0)
            {
                timer1.Stop();
                this.DialogResult = DialogResult.OK;
            }
            else
            {
                nCount--;
                lblView.Text = nCount.ToString();
            }
        }
    }
}
