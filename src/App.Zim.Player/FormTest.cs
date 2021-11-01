using ZiveLab.Device.ZIM.Win.Panels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Primer;

namespace App.Zim.Player
{
    public partial class FormTest : Form
    {
        public FormTest()
        {
            InitializeComponent();
            this.Icon = Properties.Resources.bm;
            NumericFormatter NF = new NumericFormatter();
            var a = string.Format(NF, "{0:%#.0p}", 123456.789);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var x = new double[5] { 1, 10, 100, 1000, 10000 };
            var y1 = new double[5] { 1, 2, 3, 4, 5 };
            var y2 = new double[5] { 1, 2, 3, 4, 5 };

            var ZData = new ObservableCollection<ZItem>(); 
            for (int i = 0; i < x.Length; i++)
            {
                var item = new ZItem() { Frequency = x[i], Impedance = new Complex(y1[i], y2[i]) };
                ZData.Add(item);
            }

            //panelBode.ZData = ZData;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            panelBode.ZData = new ObservableCollection<ZItem>();
        }
    }
}
