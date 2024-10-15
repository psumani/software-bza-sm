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
    public partial class frmSelEditTypeDlg : Form
    {
        public bool bgraph;
        public frmSelEditTypeDlg()
        {
            InitializeComponent();
            rdoEditor1.Checked = true;
            bgraph = true;
            this.Focus();
        }

        private void bttypeok_Click(object sender, EventArgs e)
        {
            bgraph = rdoEditor1.Checked;
            this.DialogResult = DialogResult.OK;
        }
    }
}
