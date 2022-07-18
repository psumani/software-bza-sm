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

namespace ZiveLab.ZM
{
    public partial class frmTechApply : Form
    {
        public List<string> chklist;
        public string filename;
        public frmTechApply(string filecond)
        {
            InitializeComponent();
            chklist = new List<string>();
            filename = filecond;
        }

        private void frmTechApply_Load(object sender, EventArgs e)
        {
            int i = 0;
            int ich;
            
            lstbox.Items.Clear();
            foreach (var pair in gBZA.ChLnkLst)
            {
                if (gBZA.CheckStatusRun(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mChStatInf[pair.Value.SifCh])) continue;
                if (gBZA.CheckStatusCalibMode(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mChStatInf[pair.Value.SifCh])) continue;

                ich = Convert.ToInt32(pair.Key) + 1;
                lstbox.Items.Add(string.Format("Channel {0}", ich));
                lstbox.SetItemChecked(i, true);
                i++;
            }
                
        }

        private void btselall_Click(object sender, EventArgs e)
        {
            for(int i=0; i< lstbox.Items.Count; i++)
            {
                lstbox.SetItemChecked(i, true);
            }
        }

        private void btdeselall_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < lstbox.Items.Count; i++)
            {
                lstbox.SetItemChecked(i, false);
            }
        }

        private void btok_Click(object sender, EventArgs e)
        {
            string rch;
            string sitem;
            string sch;
            int ich;
            
            
            for (int i = 0; i < lstbox.Items.Count; i++)
            {
                if (lstbox.GetItemChecked(i) == true)
                {
                    sitem = lstbox.GetItemText(lstbox.Items[i]);
                    rch = sitem.Substring(8);
                    ich = Convert.ToInt32(rch) - 1;
                    sch = ich.ToString();
                    var chlnkinf = gBZA.ChLnkLst[sch];
                    gBZA.SifLnkLst[chlnkinf.sSerial].MBZAIF.condfilename[chlnkinf.SifCh] = chlnkinf.mChInf.FileCond = filename;
                    gBZA.ChLnkLst[sch] = chlnkinf;
                }
            }
            gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            
            DialogResult = DialogResult.OK;
        }

        private void btcancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }
    }
}
