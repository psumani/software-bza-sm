using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace App.RemoteTest
{
    public partial class frmDataView : Form
    {
        string fileRes;
        public frmDataView(string tfres)
        {
            InitializeComponent();
            fileRes = tfres;
            richTextBox1.Text = "";
            this.Text = "View " + fileRes;
        }

        private void frmDataView_Load(object sender, EventArgs e)
        {
            FileStream fs;
            string str;
            if (File.Exists(fileRes) == false)
            {
                return;
            }

            try
            {
                fs = new FileStream(fileRes, FileMode.Open, FileAccess.Read);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Remote control", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            StreamReader sr = new StreamReader(fs, Encoding.UTF8);

            while ((str = sr.ReadLine()) != null)
            {
                str += "\r\n";
                richTextBox1.AppendText(str);
            }
            sr.Close();
            fs.Close();
        }
    }
}
