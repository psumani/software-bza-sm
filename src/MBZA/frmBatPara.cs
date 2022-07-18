using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Serialization;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;

namespace ZiveLab.ZM
{
    public partial class frmBatPara : Form
    {
        private string sListFile;

        private int SelectedIndex;

        private stBatParaInfo selitem;
        
        private List<stBatParaInfo> itemlist;
        private List<sFileInfo> findlist;
        public frmBatPara()
        {
            SelectedIndex = -1;
            InitializeComponent();
            
            sListFile = gBZA.appcfg.BatLimitFile;
            Directory.CreateDirectory(Path.GetDirectoryName(sListFile));

            this.Text = string.Format("Setting battery parameter[{0}].", sListFile);
        }

        private void frmBatPara_Load(object sender, EventArgs e)
        {
            int i;

            SelectedIndex = -1;
            LoadListFromXml(sListFile);
            
            for (i=0; i< itemlist.Count; i++)
            {
                listBox1.Items.Add(Encoding.UTF8.GetString(itemlist[i].Alias).Trim('\0'));
            }
            if(itemlist.Count < 1)
            {
                selitem = new stBatParaInfo(0);
                SelectedIndex = -1;
                RefreshItem();
            }
            else
            {
                listBox1.SelectedIndex = 0;
            }

        }

        private void RefreshItem()
        {
            txtselalias.Text =  Encoding.UTF8.GetString(selitem.Alias).Trim('\0');

            if (selitem.zrehigh.Equals(double.NaN)) txtselzrehigh.Text = "null";
            else txtselzrehigh.Text = selitem.zrehigh.ToString();

            if (selitem.zmodhigh.Equals(double.NaN)) txtselzmodhigh.Text = "null";
            else txtselzmodhigh.Text = selitem.zmodhigh.ToString();

            if (selitem.zimaghigh.Equals(double.NaN)) txtselzimaghigh.Text = "null";
            else txtselzimaghigh.Text = selitem.zimaghigh.ToString();

            if (selitem.templimit.Equals(double.NaN)) txtseltemplimit.Text = "null";
            else txtseltemplimit.Text = selitem.templimit.ToString();

            if (selitem.zphlimit.Equals(double.NaN)) txtselzphlimit.Text = "null";
            else txtselzphlimit.Text = selitem.zphlimit.ToString();

            if (selitem.prslimit.Equals(double.NaN)) txtselprslimit.Text = "null";
            else txtselprslimit.Text = selitem.prslimit.ToString();

            if (selitem.prplimit.Equals(double.NaN)) txtselprplimit.Text = "null";
            else txtselprplimit.Text = selitem.prplimit.ToString();

            if (selitem.sohlimit.Equals(double.NaN)) txtselsohlimit.Text = "null";
            else txtselsohlimit.Text = selitem.sohlimit.ToString();

            if (selitem.eoclimit.Equals(double.NaN)) txtseleoclimit.Text = "null";
            else txtseleoclimit.Text = selitem.eoclimit.ToString();

            if (selitem.soceoc.Equals(double.NaN)) txtselsoceoc.Text = "null";
            else txtselsoceoc.Text = selitem.soceoc.ToString();

            if (selitem.gsocrp.Equals(double.NaN)) txtselgsocrp.Text = "null";
            else txtselgsocrp.Text = selitem.gsocrp.ToString();

            if (selitem.osocrp.Equals(double.NaN)) txtselosocrp.Text = "null";
            else txtselosocrp.Text = selitem.osocrp.ToString();

            if (selitem.gsoceoc.Equals(double.NaN)) txtselgsoceoc.Text = "null";
            else txtselgsoceoc.Text = selitem.gsoceoc.ToString();

            if (selitem.osoceoc.Equals(double.NaN)) txtselosoceoc.Text = "null";
            else txtselosoceoc.Text = selitem.osoceoc.ToString();

            if (selitem.rseol.Equals(double.NaN)) txtselrseol.Text = "null";
            else txtselrseol.Text = selitem.rseol.ToString();

            if (selitem.rsnew.Equals(double.NaN)) txtselrsnew.Text = "null";
            else txtselrsnew.Text = selitem.rsnew.ToString();

            if (selitem.vlimit.Equals(double.NaN)) txtselvlimit.Text = "null";
            else txtselvlimit.Text = selitem.vlimit.ToString();
        }

        private void UpdateItem()
        {
            if(listBox1.SelectedIndex >= listBox1.Items.Count || listBox1.SelectedIndex < 0)
            {
                MessageBox.Show("Not selected item.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            txtselalias.Text = Encoding.UTF8.GetString(selitem.Alias).Trim('\0');

            if (selitem.zrehigh.Equals(double.NaN)) txtselzrehigh.Text = "null";
            else txtselzrehigh.Text = selitem.zrehigh.ToString();

            if (selitem.zmodhigh.Equals(double.NaN)) txtselzmodhigh.Text = "null";
            else txtselzmodhigh.Text = selitem.zmodhigh.ToString();

            if (selitem.zimaghigh.Equals(double.NaN)) txtselzimaghigh.Text = "null";
            else txtselzimaghigh.Text = selitem.zimaghigh.ToString();

            if (selitem.templimit.Equals(double.NaN)) txtseltemplimit.Text = "null";
            else txtseltemplimit.Text = selitem.templimit.ToString();

            if (selitem.zphlimit.Equals(double.NaN)) txtselzphlimit.Text = "null";
            else txtselzphlimit.Text = selitem.zphlimit.ToString();

            if (selitem.prslimit.Equals(double.NaN)) txtselprslimit.Text = "null";
            else txtselprslimit.Text = selitem.prslimit.ToString();

            if (selitem.prplimit.Equals(double.NaN)) txtselprplimit.Text = "null";
            else txtselprplimit.Text = selitem.prplimit.ToString();

            if (selitem.prplimit.Equals(double.NaN)) txtselprplimit.Text = "null";
            else txtselprplimit.Text = selitem.prplimit.ToString();

            if (selitem.sohlimit.Equals(double.NaN)) txtselsohlimit.Text = "null";
            else txtselsohlimit.Text = selitem.sohlimit.ToString();

            if (selitem.eoclimit.Equals(double.NaN)) txtseleoclimit.Text = "null";
            else txtseleoclimit.Text = selitem.eoclimit.ToString();

            if (selitem.soceoc.Equals(double.NaN)) txtselsoceoc.Text = "null";
            else txtselsoceoc.Text = selitem.soceoc.ToString();

            if (selitem.gsocrp.Equals(double.NaN)) txtselgsocrp.Text = "null";
            else txtselgsocrp.Text = selitem.gsocrp.ToString();

            if (selitem.osocrp.Equals(double.NaN)) txtselosocrp.Text = "null";
            else txtselosocrp.Text = selitem.osocrp.ToString();

            if (selitem.gsoceoc.Equals(double.NaN)) txtselgsoceoc.Text = "null";
            else txtselgsoceoc.Text = selitem.gsoceoc.ToString();

            if (selitem.osoceoc.Equals(double.NaN)) txtselosoceoc.Text = "null";
            else txtselosoceoc.Text = selitem.osoceoc.ToString();

            if (selitem.rseol.Equals(double.NaN)) txtselrseol.Text = "null";
            else txtselrseol.Text = selitem.rseol.ToString();

            if (selitem.rsnew.Equals(double.NaN)) txtselrsnew.Text = "null";
            else txtselrsnew.Text = selitem.rsnew.ToString();

            if (selitem.vlimit.Equals(double.NaN)) txtselvlimit.Text = "null";
            else txtselvlimit.Text = selitem.vlimit.ToString();
        }

        private void LoadToListFile()
        {
            int i;
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Title = "Load the parameters of battery";
            dlg.Multiselect = false;
            dlg.DefaultExt = "Lmt";
            dlg.Filter = "BAT Parameter files (*.Lmt)|*.Lmt|All files (*.*)|*.*";
            dlg.FileName = sListFile;
            dlg.InitialDirectory = Path.GetDirectoryName(Path.GetDirectoryName(sListFile));

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                LoadListFromXml(dlg.FileName);
                gBZA.appcfg.BatLimitFile = dlg.FileName;
                gBZA.appcfg.Save();
                listBox1.Items.Clear();
                for (i = 0; i < itemlist.Count; i++)
                {
                    listBox1.Items.Add(Encoding.UTF8.GetString(itemlist[i].Alias).Trim('\0'));
                }

                if (itemlist.Count < 1)
                {
                    SelectedIndex = -1;
                    selitem = new stBatParaInfo(0);

                    RefreshItem();
                }
                else
                {
                    listBox1.SelectedIndex = 0;
                }
            }
        }

        private void SaveAsListFile()
        {
            if(itemlist.Count < 1)
            {
                MessageBox.Show("Not found items.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            SaveFileDialog dlg = new SaveFileDialog();
            dlg.Title = "Saves the parameters of battery";
            dlg.DefaultExt = "Lmt";
            dlg.Filter = "BAT Parameter files (*.Lmt)|*.Lmt|All files (*.*)|*.*";
            dlg.FileName = sListFile;
            dlg.InitialDirectory = Path.GetDirectoryName(sListFile);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                SaveListToXml(dlg.FileName);
                gBZA.appcfg.BatLimitFile = dlg.FileName;
                gBZA.appcfg.Save();

            }
        }

        void SaveListToXml(string sFullPath)
        {
            XmlSerializer writer = new XmlSerializer(itemlist.GetType());
            StreamWriter file = new StreamWriter(sFullPath);
            try
            {
                writer.Serialize(file, itemlist);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            file.Close();
        }


        void LoadListFromXml(string sFullPath)
        {
            itemlist = new List<stBatParaInfo>();
            itemlist.Clear();

            if (File.Exists(sFullPath) == false)
            {
                MessageBox.Show("Not found parameter list of battery.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            StreamReader file = new StreamReader(sFullPath);

            

            XmlSerializer Reader = new XmlSerializer(itemlist.GetType());

            try
            {
                itemlist = (List<stBatParaInfo>)Reader.Deserialize(file);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            file.Close();
        }
        
        private void btclose_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void GetBytes(ref byte[] dst, string src)
        {
            byte[] temp = Encoding.ASCII.GetBytes(src);

            Array.Copy(temp, dst, temp.Length);
        }

        private void BytesToStr(ref byte[] dst, string src)
        {
            byte[] temp = Encoding.ASCII.GetBytes(src);

            Array.Copy(temp, dst, temp.Length);
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

        void RefreshFilesInList(string root)
        {
            findlist = new List<sFileInfo>();

            DirSearch("", root, ref findlist);

            //DirectoryInfo di = new DirectoryInfo(dlg.SelectedPath);
            try
            {
                foreach (string f in Directory.GetFiles(root))
                {
                    sFileInfo fi = new sFileInfo("", f);
                    findlist.Add(fi);
                }
            }
            catch
            {

            }
        }
        void DirSearch(string root, string sDir, ref List<sFileInfo> lst)
        {
            try
            {
                foreach (string d in Directory.GetDirectories(sDir))
                {
                    string[] arr = d.Split('\\');

                    string rdir = Path.Combine(root, arr.Last());

                    foreach (string f in Directory.GetFiles(d))
                    {
                        sFileInfo fi = new sFileInfo(rdir, f);

                        lst.Add(fi);
                    }
                    DirSearch(rdir, d, ref lst);
                }
            }
            catch (System.Exception excpt)
            {
                Debug.WriteLine(excpt.Message);
            }
        }
       
        private void btloadlistfile_Click(object sender, EventArgs e)
        {
            int i;

            LoadListFromXml(sListFile);

            listBox1.Items.Clear();
            for (i = 0; i < itemlist.Count; i++)
            {
                listBox1.Items.Add(Encoding.UTF8.GetString(itemlist[i].Alias).Trim('\0'));
            }

            if (itemlist.Count < 1)
            {
                SelectedIndex = -1;
                selitem = new stBatParaInfo(0);

                RefreshItem();
            }
            else
            {
                listBox1.SelectedIndex = 0;
            }
        }

        private void btsavelistfile_Click(object sender, EventArgs e)
        {
            if (itemlist.Count < 1)
            {
                MessageBox.Show("Not found items.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            SaveListToXml(sListFile);
        }

        private string GetDefaultAlias()
        {
            int i;
            int j;
            bool bFind;
            string stmp;
            string stmp1;

            j = 0;
            while(true)
            {
                stmp = string.Format("Limit{0}", j);
                bFind = false;
                if (itemlist.Count > 0)
                {
                    for (i = 0; i < itemlist.Count; i++)
                    {
                        stmp1 = Encoding.UTF8.GetString(itemlist[i].Alias).Trim('\0');
                        if (stmp == stmp1)
                        {
                            bFind = true;
                            break;
                        }
                    }
                }

                if(bFind == false)
                {
                    break;
                }
                Application.DoEvents();
                j++;
            }
            return stmp;
        }

        private bool CheckSameAlias(string sName,bool bNew = false)
        {
            int i;
            bool bFind;
            string stmp;


            bFind = false;
            if (itemlist.Count > 0)
            {
                for (i = 0; i < itemlist.Count; i++)
                {
                    if (bNew == false && i == SelectedIndex) continue;

                    stmp = Encoding.UTF8.GetString(itemlist[i].Alias).Trim('\0');
                    if (sName == stmp)
                    {
                        bFind = true;
                        break;
                    }
                }
            }
                
            return bFind;
        }


        private void btadditem_Click(object sender, EventArgs e)
        {
            string sDefault;
            sDefault = GetDefaultAlias();
            
            frmInputValue frm = new frmInputValue(" alias/memo.", sDefault, 3);
            if(frm.ShowDialog() == DialogResult.OK)
            {

                if(CheckSameAlias(frm.sInValue,true) == true)
                {
                    MessageBox.Show("This alias is already in use.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                selitem.Alias = Encoding.ASCII.GetBytes(frm.sInValue);

                Update_SelItem();

                itemlist.Add(selitem);

                listBox1.Items.Add(Encoding.UTF8.GetString(selitem.Alias).Trim('\0'));

                listBox1.SelectedIndex = listBox1.Items.Count - 1;
            }
            
        }

        private void gtdelitem_Click(object sender, EventArgs e)
        {
            if (listBox1.Items.Count < 1 || SelectedIndex < 0 || SelectedIndex >= itemlist.Count)
            {
                MessageBox.Show("Not selected a item.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            itemlist.RemoveAt(SelectedIndex);
            listBox1.Items.RemoveAt(SelectedIndex);
            if (listBox1.Items.Count > 0)
            {
                if (SelectedIndex >= listBox1.Items.Count) listBox1.SelectedIndex = listBox1.Items.Count - 1;
                else listBox1.SelectedIndex = SelectedIndex;

            }
            else
            {
                selitem = new stBatParaInfo(0);
                SelectedIndex = -1;
                RefreshItem();
            }
        }

        private void Update_SelItem()
        {
            string str;

            str = txtselzrehigh.Text;
            selitem.zrehigh = GetDoubleFromString(ref str);
            txtselzrehigh.Text = str;

            str = txtselzmodhigh.Text;
            selitem.zmodhigh = GetDoubleFromString(ref str);
            txtselzmodhigh.Text = str;

            str = txtselzimaghigh.Text;
            selitem.zimaghigh = GetDoubleFromString(ref str);
            txtselzimaghigh.Text = str;

            str = txtseltemplimit.Text;
            selitem.templimit = GetDoubleFromString(ref str);
            txtseltemplimit.Text = str;

            str = txtselzphlimit.Text;
            selitem.zphlimit = GetDoubleFromString(ref str);
            txtselzphlimit.Text = str;

            str = txtselprslimit.Text;
            selitem.prslimit = GetDoubleFromString(ref str);
            txtselprslimit.Text = str;

            str = txtselprplimit.Text;
            selitem.prplimit = GetDoubleFromString(ref str);
            txtselprplimit.Text = str;

            str = txtselsohlimit.Text;
            selitem.sohlimit = GetDoubleFromString(ref str);
            txtselsohlimit.Text = str;

            str = txtseleoclimit.Text;
            selitem.eoclimit = GetDoubleFromString(ref str);
            txtseleoclimit.Text = str;

            str = txtselsoceoc.Text;
            selitem.soceoc = GetDoubleFromString(ref str);
            txtselsoceoc.Text = str;

            str = txtselgsocrp.Text;
            selitem.gsocrp = GetDoubleFromString(ref str);
            txtselgsocrp.Text = str;

            str = txtselosocrp.Text;
            selitem.osocrp = GetDoubleFromString(ref str);
            txtselosocrp.Text = str;

            str = txtselgsoceoc.Text;
            selitem.gsoceoc = GetDoubleFromString(ref str);
            txtselgsoceoc.Text = str;

            str = txtselosoceoc.Text;
            selitem.osoceoc = GetDoubleFromString(ref str);
            txtselosoceoc.Text = str;

            str = txtselrseol.Text;
            selitem.rseol = GetDoubleFromString(ref str);
            txtselrseol.Text = str;

            str = txtselrsnew.Text;
            selitem.rsnew = GetDoubleFromString(ref str);
            txtselrsnew.Text = str;

            str = txtselvlimit.Text;
            selitem.vlimit = GetDoubleFromString(ref str);
            txtselvlimit.Text = str;
        }
        private void btupdate_Click(object sender, EventArgs e)
        {

            if (listBox1.Items.Count < 1 || SelectedIndex < 0 || SelectedIndex >= itemlist.Count)
            {
                MessageBox.Show("Not selected a item.","Battery parameters",MessageBoxButtons.OK,MessageBoxIcon.Information);
                return;
            }
            

            string sDefault;
            sDefault = txtselalias.Text;

            frmInputValue frm = new frmInputValue(" alias/memo.", sDefault, 3);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                if (CheckSameAlias(frm.sInValue) == true)
                {
                    MessageBox.Show("This alias is already in use.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                selitem.Alias = Encoding.UTF8.GetBytes(frm.sInValue);

                Update_SelItem();

                itemlist[SelectedIndex] = selitem;

                listBox1.Items[SelectedIndex] = Encoding.UTF8.GetString(selitem.Alias).Trim('\0');
                listBox1.SelectedIndex = SelectedIndex;

                RefreshItem();
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(listBox1.SelectedIndex < 0 || listBox1.SelectedIndex >= listBox1.Items.Count || listBox1.Items.Count < 1)
            {
                return;
            }
            SelectedIndex = listBox1.SelectedIndex;
            selitem = itemlist[SelectedIndex];

            RefreshItem();
        }

        private void btcalrp_Click(object sender, EventArgs e)
        {
            frmSetBatPara frm = new frmSetBatPara() { type = 0, minfo = selitem }; 

            if(frm.ShowDialog() == DialogResult.OK)
            {
                selitem = frm.minfo;
                RefreshItem();
            }
        }

        private void btcalvoc_Click(object sender, EventArgs e)
        {
            frmSetBatPara frm = new frmSetBatPara() { type = 1, minfo = selitem };

            if (frm.ShowDialog() == DialogResult.OK)
            {
                selitem = frm.minfo;
                RefreshItem();
            }
        }
    }
}
