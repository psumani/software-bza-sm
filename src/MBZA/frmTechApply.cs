using SMLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM
{
    public partial class frmTechApply : Form
    {
        public List<int> chklist;
        public string filename;
        bool bRegChannel;
        public frmTechApply(string filecond)
        {
            InitializeComponent();
            chklist = new List<int>();
            bRegChannel = false;
            filename = filecond;
            this.Text = "Select channels to apply the thchnique file to.";

            RefreshAppList();
        }

        public frmTechApply(string fileinf,List<int> list) // Register ch
        {
            InitializeComponent();
            chklist = new List<int>();
            if(list == null)
            {
                if (File.Exists(fileinf))
                {
                    SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
                    chklist = mFile.LoadXmlToObj(fileinf, chklist);
                }
            }
            else
            {
                chklist = list;
            }
            bRegChannel = true;
            filename = fileinf;
            this.Text = "Registering  channel(s) for real time monitor";

            RefreshRegList();
        }

        private void RefreshAppList()
        {
            int i = 0;
            int ich;
            string sfilename = "";

            lstbox.Items.Clear();
            foreach (var pair in gBZA.ChLnkLst)
            {
                if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                {
                    sfilename = gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.condfilename[pair.Value.SifCh];
                }
                else
                {
                    sfilename = pair.Value.mChInf.FileCond;
                }

                //if (gBZA.CheckStatusRun(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mChStatInf[pair.Value.SifCh])) continue;
                //if (gBZA.CheckStatusCalibMode(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mChStatInf[pair.Value.SifCh])) continue;

                ich = Convert.ToInt32(pair.Key) + 1;
                lstbox.Items.Add(string.Format("Channel {0}", ich));

                if(filename == sfilename)
                {
                    lstbox.SetItemChecked(i, true);
                }
                else
                {
                    lstbox.SetItemChecked(i, false);
                }

                i++;
            }
        }

        private bool FindRegChannel(int ich)
        {
            foreach(var value in chklist)
            {
                if(value == ich)
                {
                    return true;
                }
            }
            return false;
        }

        private void RefreshRegList()
        {
            int i = 0;
            int ich;

            lstbox.Items.Clear();
            foreach (var pair in gBZA.ChLnkLst)
            {
                if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial) == false) continue;

                //if (gBZA.CheckStatusRun(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mChStatInf[pair.Value.SifCh])) continue;
                //if (gBZA.CheckStatusCalibMode(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mChStatInf[pair.Value.SifCh])) continue;

                ich = Convert.ToInt32(pair.Key);

                lstbox.Items.Add(string.Format("Channel {0}", ich+1));

                if (chklist == null || chklist.Count <= 0)
                {
                    lstbox.SetItemChecked(i, false);
                }
                else
                {
                    lstbox.SetItemChecked(i, FindRegChannel(ich));
                }
                i++;
            }
        }

        private void frmTechApply_Load(object sender, EventArgs e)
        {
            


                
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

        private string CheckCanApply()
        {
            string rch;
            string sitem;
            string sch;
            int ich;
            string str = "";
            enTestState stat = enTestState.Ready;

            for (int i = 0; i < lstbox.Items.Count; i++)
            {
                if (lstbox.GetItemChecked(i) == true)
                {
                    sitem = lstbox.GetItemText(lstbox.Items[i]);
                    rch = sitem.Substring(8);
                    ich = Convert.ToInt32(rch) - 1;
                    sch = ich.ToString();
                    
                    if (gBZA.SifLnkLst.ContainsKey(gBZA.ChLnkLst[sch].sSerial))
                    {

                        stat = (enTestState)gBZA.SifLnkLst[gBZA.ChLnkLst[sch].sSerial].MBZAIF.mChStatInf[gBZA.ChLnkLst[sch].SifCh].TestStatus;
                        if (stat == enTestState.Running || stat == enTestState.nc_Running)
                        {
                            str += string.Format("{0},", rch);
                        }
                    }
                }
            }
            return str;
        }


        private void btok_Click(object sender, EventArgs e)
        {
            string rch;
            string sitem;
            string sch;
            int ich;
            string str;
            string str1;
            string smsg;

            if (bRegChannel == false)
            {
                str = CheckCanApply();
                if (str.Length > 1)
                {
                    str1 = str.Substring(0, str.Length - 1);
                    smsg = string.Format("The channels are running. \r\n  * Channels : {0}", str1);
                    MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }

            chklist.Clear();
            for (int i = 0; i < lstbox.Items.Count; i++)
            {
                if (lstbox.GetItemChecked(i) == true)
                {
                    sitem = lstbox.GetItemText(lstbox.Items[i]);
                    rch = sitem.Substring(8);
                    ich = Convert.ToInt32(rch) - 1;
                    sch = ich.ToString();
                    if (bRegChannel)
                    {
                        chklist.Add(ich);
                    }
                    else
                    {
                        var chlnkinf = gBZA.ChLnkLst[sch];
                        if (gBZA.SifLnkLst.ContainsKey(chlnkinf.sSerial))
                        {
                            gBZA.SifLnkLst[chlnkinf.sSerial].MBZAIF.condfilename[chlnkinf.SifCh] = chlnkinf.mChInf.FileCond = filename;
                        }
                        gBZA.ChLnkLst[sch] = chlnkinf;
                    }
                }
            }
            if (bRegChannel == false)
            {
                gBZA.SaveLinkChToXml(gBZA.FileLnkCh);
            }
            else
            {
                SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
                mFile.SaveObjToXml(filename, chklist);
            }
            
            DialogResult = DialogResult.OK;
        }

        private void btcancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }
    }
}
