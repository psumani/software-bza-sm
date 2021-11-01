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
    public partial class frmSetDataFormat : Form
    {
        public frmSetDataFormat()
        {
            InitializeComponent();
            this.Icon = Properties.Resources.bm;
        }

        private void frmSetDataFormat_Load(object sender, EventArgs e)
        {
            panSetFormat.Initialize();
        }


    }
}
