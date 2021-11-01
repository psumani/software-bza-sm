using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Serialization;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Utilities;

namespace App.Zim.Player
{
    public partial class frmBatPara : Form
    {
        public CommObj mCommZim;
        public stWebSiteFATHeader mWebSiteFATheader;
        
        private string sWebRoot;
        private string sListFile;

        private int limitidx;
        private int lmtpagenum;
        

        private int SelectedIndex;
        private string sFileLimit;
        private string sLimitInfor;

        private stWebSiteLimitInfo devitem;
        private stWebSiteLimitInfo selitem;
        
        private List<stWebSiteLimitInfo> itemlist;
        private List<sFileInfo> findlist;
        public frmBatPara()
        {
            limitidx = -1;
            SelectedIndex = -1;
            InitializeComponent();
            if (Properties.Settings.Default.BatParaFile.Length < 3)
            {
                Properties.Settings.Default.BatParaFile = "C:\\ZIVE DATA\\BM\\Infor\\BAT.lmt";
                Properties.Settings.Default.Save();
            }
            sListFile = Properties.Settings.Default.BatParaFile;
            Directory.CreateDirectory(Path.GetDirectoryName(sListFile));

            sWebRoot = "C:\\ZIVE DATA\\BM\\Tmp\\webService\\";
            Directory.CreateDirectory(Path.GetDirectoryName(sWebRoot));

            sFileLimit = Path.Combine("C:\\ZIVE DATA\\BM\\Tmp\\webService\\", DeviceConstants.S_WEB_LIMITFILE);
            lmtpagenum = defWebSiteInfomation.LIMIT_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK;

            
        }

        private void frmBatPara_Load(object sender, EventArgs e)
        {
            int i;

            SelectedIndex = -1;
            LoadListFromXml(sListFile);
            
            for (i=0; i< itemlist.Count; i++)
            {
                listBox1.Items.Add(Encoding.Default.GetString(itemlist[i].Alias).Trim('\0'));
            }
            if(itemlist.Count < 1)
            {
                selitem = new stWebSiteLimitInfo(0);
                SelectedIndex = -1;
                RefreshItem();
            }
            else
            {
                listBox1.SelectedIndex = 0;
            }


            ReadWebSiteInfo();

            txtcount.Text = mWebSiteFATheader.FileCount.ToString();


            ReadInLimitformation();
        }

        private void RefreshItem()
        {
            txtselalias.Text =  Encoding.Default.GetString(selitem.Alias).Trim('\0');

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

            txtselalias.Text = Encoding.Default.GetString(selitem.Alias).Trim('\0');

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
                listBox1.Items.Clear();
                for (i = 0; i < itemlist.Count; i++)
                {
                    listBox1.Items.Add(Encoding.Default.GetString(itemlist[i].Alias).Trim('\0'));
                }

                if (itemlist.Count < 1)
                {
                    SelectedIndex = -1;
                    selitem = new stWebSiteLimitInfo(0);

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
                Properties.Settings.Default.BatParaFile = dlg.FileName;
                Properties.Settings.Default.Save();

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
            itemlist = new List<stWebSiteLimitInfo>();
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
                itemlist = (List<stWebSiteLimitInfo>)Reader.Deserialize(file);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            file.Close();
        }
        
        private void ReadInLimitformation()
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("No connection.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            ReadLimitInfo();
            
            rtxtnote.Text = sLimitInfor;
            RefreshInformation();
        }
        
        public bool ReadWebSiteInfo()
        {
            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("No connection.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            return mCommZim.ReadData(ref mWebSiteFATheader);
        }

        private void ReadLimitInfo()
        {
            int i;
            string sFileName = string.Empty;

            if (mCommZim.isConnected == false)
            {
                MessageBox.Show("No connection.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            limitidx = -1;
            for (i = 0; i < mWebSiteFATheader.FileCount; i++)
            {
                sFileName = Encoding.Default.GetString(mWebSiteFATheader.sFileHeaders[i].Name).Trim('\0');
                sFileName.ToLower();
                if (sFileName.IndexOf(DeviceConstants.S_WEB_LIMITFILE) >= 0)
                {
                    limitidx = i;
                    
                    break;
                }
            }

            txtidx.Text = limitidx.ToString();
            if (limitidx < 0)
            {
                sLimitInfor = "";
                return;
            }

            byte[] buffer = new byte[mWebSiteFATheader.sFileHeaders[limitidx].Size];
            Array.Clear(buffer, 0, mWebSiteFATheader.sFileHeaders[limitidx].Size);
            mCommZim.ReadNand(mWebSiteFATheader.sFileHeaders[limitidx].StartPageNum, ref buffer, mWebSiteFATheader.sFileHeaders[limitidx].Size);

            sLimitInfor = Encoding.Default.GetString(buffer).Trim('\0');    

            sFileName = Encoding.Default.GetString(mWebSiteFATheader.sFileHeaders[i].Name).Trim('\0');
            sFileName = Path.Combine(sWebRoot, sFileName);

            Directory.CreateDirectory(Path.GetDirectoryName(sFileName));

            if (File.Exists(sFileName))
            {
                File.Delete(sFileName);
            }
            FileStream fs = File.Create(sFileName);
            fs.Write(buffer, 0, mWebSiteFATheader.sFileHeaders[i].Size);
            fs.Close();
        }

        private bool ApplyLimitInfo()
        {
            if (limitidx < 0) return false;
            string str;

            mWebSiteFATheader.sFileHeaders[limitidx].StartPageNum = lmtpagenum;
            str = Encoding.Default.GetString(mWebSiteFATheader.sFileHeaders[limitidx].Name).Trim('\0');
            str = Path.Combine(sWebRoot, str);

            var info = new FileInfo(str);
            mWebSiteFATheader.sFileHeaders[limitidx].Size = (int)info.Length;

            byte[] buffer = mWebSiteFATheader.ToByteArray();
            int block = defWebSiteInfomation.HEAD_BLOCK_BASE;
            int page = defWebSiteInfomation.HEAD_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK;

            if (mCommZim.EreaseNandBlock(block) == false) return false;
            if (mCommZim.ProgramNand(page, buffer) == false) return false;

            block = defWebSiteInfomation.LIMIT_BLOCK_BASE;

            if (mCommZim.EreaseNandBlock(block) == false) return false;
            

            FileStream fs = File.Open(str, FileMode.Open, FileAccess.Read, FileShare.Read);
            byte[] tdata = new byte[defWebSiteInfomation.PAGE_SIZE];

            int nRead = 0;
            int ipage = lmtpagenum;

         
            do
            {
                nRead = fs.Read(tdata, 0, tdata.Length);
                if (nRead > 0)
                {
                    byte[] trdata = new byte[nRead];
                    Array.Copy(tdata, trdata, nRead);

                    if (mCommZim.ProgramNand(ipage, trdata) == false) return false;
                    ipage++;
                    Application.DoEvents();
                }

            } while (nRead > 0);

            fs.Close();

            Thread.Sleep(1000);

            mCommZim.RefreshWebSite();

            return true;
        }

        private byte[] GetInformationArray(string sitem)
        {
            int stPnt = 0;
            int EdPnt = 0;
            string str = "";

            

            stPnt = sLimitInfor.IndexOf(sitem);
            if (stPnt < 0)
            {
                str = "";
            }
            else
            {
                stPnt += sitem.Count();
                EdPnt = sLimitInfor.IndexOf(';', stPnt);
                if (EdPnt < 0)
                {
                    str = "";
                }
                else
                {
                    str = sLimitInfor.Substring(stPnt, EdPnt - stPnt).Trim('\"');
                }
            }
            return Encoding.ASCII.GetBytes(str);
        }

        private double GetInformationDouble(string sitem)
        {
            int stPnt = 0;
            int EdPnt = 0;
            string str;
            double tmpdb = double.NaN;



            stPnt = sLimitInfor.IndexOf(sitem);
            if (stPnt < 0)
            {
                tmpdb = double.NaN;
            }
            else
            {
                stPnt += sitem.Count();
                EdPnt = sLimitInfor.IndexOf(';', stPnt);
                if (EdPnt < 0)
                {
                    tmpdb = double.NaN;
                }
                else
                {
                    str = sLimitInfor.Substring(stPnt, EdPnt - stPnt);
                    if (Double.TryParse(str, out tmpdb) == false)
                    {
                        tmpdb = double.NaN;
                    }
                    else
                    {

                    }
                }
            }
            return tmpdb;
        }

        private void RefreshInformation()
        {
            devitem = new stWebSiteLimitInfo(itemlist.Count);
            if (sLimitInfor.Count() < 1)
            {
                MessageBox.Show("The device's web support service could not find information about the limit.json file.\r\n Therefore, the device setting information is displayed as default value.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                txtalias.Text = "Default";

                if (devitem.zrehigh.Equals(double.NaN)) txtzrehigh.Text = "null";
                else txtzrehigh.Text = devitem.zrehigh.ToString();

                if (devitem.zmodhigh.Equals(double.NaN)) txtzmodhigh.Text = "null";
                else txtzmodhigh.Text = devitem.zmodhigh.ToString();

                if (devitem.zimaghigh.Equals(double.NaN)) txtzimaghigh.Text = "null";
                else txtzimaghigh.Text = devitem.zimaghigh.ToString();

                if (devitem.templimit.Equals(double.NaN)) txttemplimit.Text = "null";
                else txttemplimit.Text = devitem.templimit.ToString();

                if (devitem.zphlimit.Equals(double.NaN)) txtzphlimit.Text = "null";
                else txtzphlimit.Text = devitem.zphlimit.ToString();

                if (devitem.prslimit.Equals(double.NaN)) txtprslimit.Text = "null";
                else txtprslimit.Text = devitem.prslimit.ToString();

                if (devitem.prplimit.Equals(double.NaN)) txtprplimit.Text = "null";
                else txtprplimit.Text = devitem.prplimit.ToString();

                if (devitem.sohlimit.Equals(double.NaN)) txtsohlimit.Text = "null";
                else txtsohlimit.Text = devitem.sohlimit.ToString();

                if (devitem.eoclimit.Equals(double.NaN)) txteoclimit.Text = "null";
                else txteoclimit.Text = devitem.eoclimit.ToString();

                if (devitem.soceoc.Equals(double.NaN)) txtsoceoc.Text = "null";
                else txtsoceoc.Text = devitem.soceoc.ToString();

                if (devitem.gsocrp.Equals(double.NaN)) txtgsocrp.Text = "null";
                else txtgsocrp.Text = devitem.gsocrp.ToString();

                if (devitem.osocrp.Equals(double.NaN)) txtosocrp.Text = "null";
                else txtosocrp.Text = devitem.osocrp.ToString();

                if (devitem.gsoceoc.Equals(double.NaN)) txtgsoceoc.Text = "null";
                else txtgsoceoc.Text = devitem.gsoceoc.ToString();

                if (devitem.osoceoc.Equals(double.NaN)) txtosoceoc.Text = "null";
                else txtosoceoc.Text = devitem.osoceoc.ToString();

                if (devitem.rseol.Equals(double.NaN)) txtrseol.Text = "null";
                else txtrseol.Text = devitem.rseol.ToString();

                if (devitem.rsnew.Equals(double.NaN)) txtrsnew.Text = "null";
                else txtrsnew.Text = devitem.rsnew.ToString();

                if (devitem.vlimit.Equals(double.NaN)) txtvlimit.Text = "null";
                else txtvlimit.Text = devitem.vlimit.ToString();

                BuildNewInformation();

            }
            else
            {
                sLimitInfor.ToLower();

                devitem.Alias = GetInformationArray("alias=");
                devitem.zrehigh = GetInformationDouble("zrehigh=");
                devitem.zmodhigh = GetInformationDouble("zmodhigh=");
                devitem.zimaghigh = GetInformationDouble("zimaghigh=");
                devitem.templimit = GetInformationDouble("templimit=");
                devitem.zphlimit = GetInformationDouble("zphlimit=");
                devitem.prslimit = GetInformationDouble("prslimit=");
                devitem.prplimit = GetInformationDouble("prplimit=");
                devitem.sohlimit = GetInformationDouble("sohlimit=");
                devitem.eoclimit = GetInformationDouble("eoclimit=");
                devitem.soceoc = GetInformationDouble("soceoc=");
                devitem.gsocrp = GetInformationDouble("gsocrp=");
                devitem.osocrp = GetInformationDouble("osocrp=");
                devitem.gsoceoc = GetInformationDouble("gsoceoc=");
                devitem.osoceoc = GetInformationDouble("osoceoc=");
                devitem.rseol = GetInformationDouble("rseol=");
                devitem.rsnew = GetInformationDouble("rsnew=");
                devitem.vlimit = GetInformationDouble("vlimit=");
                txtalias.Text = Encoding.Default.GetString(devitem.Alias).Trim('\0');

                if (devitem.zrehigh.Equals(double.NaN)) txtzrehigh.Text = "null";
                else txtzrehigh.Text = devitem.zrehigh.ToString();

                if (devitem.zmodhigh.Equals(double.NaN)) txtzmodhigh.Text = "null";
                else txtzmodhigh.Text = devitem.zmodhigh.ToString();

                if (devitem.zimaghigh.Equals(double.NaN)) txtzimaghigh.Text = "null";
                else txtzimaghigh.Text = devitem.zimaghigh.ToString();

                if (devitem.templimit.Equals(double.NaN)) txttemplimit.Text = "null";
                else txttemplimit.Text = devitem.templimit.ToString();

                if (devitem.zphlimit.Equals(double.NaN)) txtzphlimit.Text = "null";
                else txtzphlimit.Text = devitem.zphlimit.ToString();

                if (devitem.prslimit.Equals(double.NaN)) txtprslimit.Text = "null";
                else txtprslimit.Text = devitem.prslimit.ToString();

                if (devitem.prplimit.Equals(double.NaN)) txtprplimit.Text = "null";
                else txtprplimit.Text = devitem.prplimit.ToString();

                if (devitem.sohlimit.Equals(double.NaN)) txtsohlimit.Text = "null";
                else txtsohlimit.Text = devitem.sohlimit.ToString();

                if (devitem.eoclimit.Equals(double.NaN)) txteoclimit.Text = "null";
                else txteoclimit.Text = devitem.eoclimit.ToString();

                if(devitem.soceoc.Equals(double.NaN)) txtsoceoc.Text = "null";
                else txtsoceoc.Text = devitem.soceoc.ToString();

                if (devitem.gsocrp.Equals(double.NaN)) txtgsocrp.Text = "null";
                else txtgsocrp.Text = devitem.gsocrp.ToString();

                if (devitem.osocrp.Equals(double.NaN)) txtosocrp.Text = "null";
                else txtosocrp.Text = devitem.osocrp.ToString();

                if (devitem.gsoceoc.Equals(double.NaN)) txtgsoceoc.Text = "null";
                else txtgsoceoc.Text = devitem.gsoceoc.ToString();

                if (devitem.osoceoc.Equals(double.NaN)) txtosoceoc.Text = "null";
                else txtosoceoc.Text = devitem.osoceoc.ToString();

                if (devitem.rseol.Equals(double.NaN)) txtrseol.Text = "null";
                else txtrseol.Text = devitem.rseol.ToString();

                if (devitem.rsnew.Equals(double.NaN)) txtrsnew.Text = "null";
                else txtrsnew.Text = devitem.rsnew.ToString();

                if (devitem.vlimit.Equals(double.NaN)) txtvlimit.Text = "null";
                else txtvlimit.Text = devitem.vlimit.ToString();
            }
        }

        private void btRead_Click(object sender, EventArgs e)
        {
            sLimitInfor = rtxtnote.Text;
            RefreshInformation();
        }

        private double SetInformationDouble(string sitem, ref string sVal)
        {
            double tmpdb;
            int stPnt = 0;
            int EdPnt = 0;
            string snew;
            string str = "";
            string str1 = "";

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

            stPnt = sLimitInfor.IndexOf(sitem);
            if (stPnt >= 0)
            {
                stPnt += sitem.Count();
                EdPnt = sLimitInfor.IndexOf(';', stPnt);
                if (EdPnt >= 0) 
                {

                    str1 = sitem + sLimitInfor.Substring(stPnt, EdPnt - stPnt);
                    snew = sitem + str;
                    sLimitInfor = sLimitInfor.Replace(str1, snew);
                }
            }
            sVal = str;
            return tmpdb;
        }

        private byte[] SetInformationString(string sitem, string sVal)
        {
            int stPnt = 0;
            int EdPnt = 0;
            string snew;
            string str = "";

            stPnt = sLimitInfor.IndexOf(sitem);
            if (stPnt >= 0)
            {
                stPnt += sitem.Count();
                EdPnt = sLimitInfor.IndexOf(';', stPnt);
                if (EdPnt >= 0)
                {

                    str = sitem + "\"" + sLimitInfor.Substring(stPnt, EdPnt - stPnt) + "\"";
                    snew = sitem + "\"" +  sVal + "\"";
                    sLimitInfor = sLimitInfor.Replace(str, snew);
                }
            }
            
            return Encoding.ASCII.GetBytes(sVal);
        }

        private double AddLimitInformation(string sitem, ref string sVal)
        {
            string str;
            double tmpdb = double.NaN;

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
            sLimitInfor += sitem + str + ";\r\n";
            return tmpdb;
        }

        private void btWrite_Click(object sender, EventArgs e)
        {
            BuildChangeInformation();
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
                Console.WriteLine(excpt.Message);
            }
        }

        private void StringToFile()
        {
            byte[] tdata = new byte[defWebSiteInfomation.PAGE_SIZE];

            if (File.Exists(sFileLimit))
            {
                File.Delete(sFileLimit);
            }

            FileStream fs = File.Create(sFileLimit);
            byte[] buffer = Encoding.ASCII.GetBytes(sLimitInfor);
            fs.Write(buffer, 0, buffer.Count());
            fs.Close();
        }

        private void FileToString()
        {
            if (File.Exists(sFileLimit))
            {
                MessageBox.Show("file not found.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                sLimitInfor = "";
                return;
            }

            FileStream fs = File.Open(sFileLimit, FileMode.Open, FileAccess.Read, FileShare.Read);
            byte[] tdata = new byte[defWebSiteInfomation.PAGE_SIZE];
            string str;
            int nRead = 0;

            sLimitInfor = "";
            do
            {
                nRead = fs.Read(tdata, 0, tdata.Length);
                if (nRead > 0)
                {
                    byte[] trdata = new byte[nRead];
                    Array.Copy(tdata, trdata, nRead);
                    str = tdata.ToString();
                    sLimitInfor += str;
                }

            } while (nRead > 0);

            fs.Close();
        }

        private void BuildChangeInformation()
        {
            string str;
            sLimitInfor = rtxtnote.Text;

            str = txtalias.Text.Trim();
            devitem.Alias = SetInformationString("alias=", str);

            str = txtzrehigh.Text.Trim().ToLower();
            devitem.zrehigh = SetInformationDouble("zrehigh=", ref str);
            txtzrehigh.Text = str;

            str = txtzmodhigh.Text.Trim().ToLower();
            devitem.zmodhigh = SetInformationDouble("zmodhigh=", ref str);
            txtzmodhigh.Text = str;

            str = txtzimaghigh.Text.Trim().ToLower();
            devitem.zimaghigh = SetInformationDouble("zimaghigh=", ref str);
            txtzimaghigh.Text = str;

            str = txttemplimit.Text.Trim().ToLower();
            devitem.templimit = SetInformationDouble("templimit=", ref str);
            txttemplimit.Text = str;

            str = txtzphlimit.Text.Trim().ToLower();
            devitem.zphlimit = SetInformationDouble("zphlimit=", ref str);
            txtzphlimit.Text = str;

            str = txtprslimit.Text.Trim().ToLower();
            devitem.prslimit = SetInformationDouble("prslimit=", ref str);
            txtprslimit.Text = str;

            str = txtprplimit.Text.Trim().ToLower();
            devitem.prplimit = SetInformationDouble("prplimit=", ref str);
            txtprplimit.Text = str;

            str = txtsohlimit.Text.Trim().ToLower();
            devitem.sohlimit = SetInformationDouble("sohlimit=", ref str);
            txtsohlimit.Text = str;

            str = txteoclimit.Text.Trim().ToLower();
            devitem.eoclimit = SetInformationDouble("eoclimit=", ref str);
            txteoclimit.Text = str;

            str = txtsoceoc.Text.Trim().ToLower();
            devitem.soceoc = SetInformationDouble("soceoc=", ref str);
            txtsoceoc.Text = str;

            str = txtgsocrp.Text.Trim().ToLower();
            devitem.gsocrp = SetInformationDouble("gsocrp=", ref str);
            txtgsocrp.Text = str;

            str = txtosocrp.Text.Trim().ToLower();
            devitem.osocrp = SetInformationDouble("osocrp=", ref str);
            txtosocrp.Text = str;

            str = txtgsoceoc.Text.Trim().ToLower();
            devitem.gsoceoc = SetInformationDouble("gsoceoc=", ref str);
            txtgsoceoc.Text = str;

            str = txtosoceoc.Text.Trim().ToLower();
            devitem.osoceoc = SetInformationDouble("osoceoc=", ref str);
            txtosoceoc.Text = str;

            str = txtrseol.Text.Trim().ToLower();
            devitem.rseol = SetInformationDouble("rseol=", ref str);
            txtrseol.Text = str;

            str = txtrsnew.Text.Trim().ToLower();
            devitem.rsnew = SetInformationDouble("rsnew=", ref str);
            txtrsnew.Text = str;

            str = txtvlimit.Text.Trim().ToLower();
            devitem.rsnew = SetInformationDouble("vlimit=", ref str);
            txtvlimit.Text = str;

            rtxtnote.Text = sLimitInfor;
        }

        private byte[] AddLimitInfoString(string sitem, string sVal)
        {
            sLimitInfor += sitem + "\"" + sVal + "\";\r\n";
            return Encoding.ASCII.GetBytes(sVal);
        }

        private void BuildNewInformation()
        {
            string str;
            sLimitInfor = "";

            str = txtalias.Text.Trim();
            devitem.Alias = AddLimitInfoString("alias=", str);

            str = txtzrehigh.Text.Trim().ToLower();
            devitem.zrehigh = AddLimitInformation("zrehigh=", ref str);
            txtzrehigh.Text = str;

            str = txtzmodhigh.Text.Trim().ToLower();
            devitem.zmodhigh = AddLimitInformation("zmodhigh=", ref str);
            txtzmodhigh.Text = str;

            str = txtzimaghigh.Text.Trim().ToLower();
            devitem.zimaghigh = AddLimitInformation("zimaghigh=", ref str);
            txtzimaghigh.Text = str;
            
            str = txttemplimit.Text.Trim().ToLower();
            devitem.templimit = AddLimitInformation("templimit=", ref str);
            txttemplimit.Text = str;

            str = txtzphlimit.Text.Trim().ToLower();
            devitem.zphlimit = AddLimitInformation("zphlimit=", ref str);
            txtzphlimit.Text = str;

            str = txtprslimit.Text.Trim().ToLower();
            devitem.prslimit = AddLimitInformation("prslimit=", ref str);
            txtprslimit.Text = str;

            str = txtprplimit.Text.Trim().ToLower();
            devitem.prplimit = AddLimitInformation("prplimit=", ref str);
            txtprplimit.Text = str;

            str = txtsohlimit.Text.Trim().ToLower();
            devitem.sohlimit = AddLimitInformation("sohlimit=", ref str);
            txtsohlimit.Text = str;

            str = txteoclimit.Text.Trim().ToLower();
            devitem.eoclimit = AddLimitInformation("eoclimit=", ref str);
            txteoclimit.Text = str;

            str = txtsoceoc.Text.Trim().ToLower();
            devitem.soceoc = AddLimitInformation("soceoc=", ref str);
            txtsoceoc.Text = str;

            str = txtgsocrp.Text.Trim().ToLower();
            devitem.gsocrp = AddLimitInformation("gsocrp=", ref str);
            txtgsocrp.Text = str;

            str = txtosocrp.Text.Trim().ToLower();
            devitem.osocrp = AddLimitInformation("osocrp=", ref str);
            txtosocrp.Text = str;

            str = txtgsoceoc.Text.Trim().ToLower();
            devitem.gsoceoc = AddLimitInformation("gsoceoc=", ref str);
            txtgsoceoc.Text = str;

            str = txtosoceoc.Text.Trim().ToLower();
            devitem.osoceoc = AddLimitInformation("osoceoc=", ref str);
            txtosoceoc.Text = str;

            str = txtrseol.Text.Trim().ToLower();
            devitem.rseol = AddLimitInformation("rseol=", ref str);
            txtrseol.Text = str;

            str = txtrsnew.Text.Trim().ToLower();
            devitem.rsnew = AddLimitInformation("rsnew=", ref str);
            txtrsnew.Text = str;

            str = txtvlimit.Text.Trim().ToLower();
            devitem.vlimit = AddLimitInformation("vlimit=", ref str);
            txtvlimit.Text = str;

            rtxtnote.Text = sLimitInfor;

        }
        private void btWriteNew_Click(object sender, EventArgs e)
        {
            BuildNewInformation();
        }

        private void btrefresh_Click(object sender, EventArgs e)
        {
            if (ReadWebSiteInfo() == false)
            {
                MessageBox.Show("Failed load information.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            txtcount.Text = mWebSiteFATheader.FileCount.ToString();
            ReadInLimitformation();
            MessageBox.Show("Succeed.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btapply_Click(object sender, EventArgs e)
        {
            BuildNewInformation();

            StringToFile();

            if (ApplyLimitInfo() == false)
            {
                MessageBox.Show("Failed.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                MessageBox.Show("Succeed.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btloadlistfile_Click(object sender, EventArgs e)
        {
            // LoadToListFile();
            int i;

            LoadListFromXml(sListFile);

            listBox1.Items.Clear();
            for (i = 0; i < itemlist.Count; i++)
            {
                listBox1.Items.Add(Encoding.Default.GetString(itemlist[i].Alias).Trim('\0'));
            }

            if (itemlist.Count < 1)
            {
                SelectedIndex = -1;
                selitem = new stWebSiteLimitInfo(0);

                RefreshItem();
            }
            else
            {
                listBox1.SelectedIndex = 0;
            }
        }

        private void btsavelistfile_Click(object sender, EventArgs e)
        {
            //SaveAsListFile();

            if (itemlist.Count < 1)
            {
                MessageBox.Show("Not found items.", "Battery parameters", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            SaveListToXml(sListFile);
        }

        private void btApplyItem_Click(object sender, EventArgs e)
        {
            devitem = selitem;

            txtalias.Text = Encoding.Default.GetString(devitem.Alias).Trim('\0');
            
            if (devitem.zrehigh.Equals(double.NaN)) txtzrehigh.Text = "null";
            else txtzrehigh.Text = devitem.zrehigh.ToString();

            if (devitem.zmodhigh.Equals(double.NaN)) txtzmodhigh.Text = "null";
            else txtzmodhigh.Text = devitem.zmodhigh.ToString();

            if (devitem.zimaghigh.Equals(double.NaN)) txtzimaghigh.Text = "null";
            else txtzimaghigh.Text = devitem.zimaghigh.ToString();

            if (devitem.templimit.Equals(double.NaN)) txttemplimit.Text = "null";
            else txttemplimit.Text = devitem.templimit.ToString();

            if (devitem.zphlimit.Equals(double.NaN)) txtzphlimit.Text = "null";
            else txtzphlimit.Text = devitem.zphlimit.ToString();

            if (devitem.prslimit.Equals(double.NaN)) txtprslimit.Text = "null";
            else txtprslimit.Text = devitem.prslimit.ToString();

            if (devitem.prplimit.Equals(double.NaN)) txtprplimit.Text = "null";
            else txtprplimit.Text = devitem.prplimit.ToString();

            if (devitem.sohlimit.Equals(double.NaN)) txtsohlimit.Text = "null";
            else txtsohlimit.Text = devitem.sohlimit.ToString();

            if (devitem.eoclimit.Equals(double.NaN)) txteoclimit.Text = "null";
            else txteoclimit.Text = devitem.eoclimit.ToString();

            if (devitem.soceoc.Equals(double.NaN)) txtsoceoc.Text = "null";
            else txtsoceoc.Text = devitem.soceoc.ToString();

            if (devitem.gsocrp.Equals(double.NaN)) txtgsocrp.Text = "null";
            else txtgsocrp.Text = devitem.gsocrp.ToString();

            if (devitem.osocrp.Equals(double.NaN)) txtosocrp.Text = "null";
            else txtosocrp.Text = devitem.osocrp.ToString();

            if (devitem.gsoceoc.Equals(double.NaN)) txtgsoceoc.Text = "null";
            else txtgsoceoc.Text = devitem.gsoceoc.ToString();

            if (devitem.osoceoc.Equals(double.NaN)) txtosoceoc.Text = "null";
            else txtosoceoc.Text = devitem.osoceoc.ToString();

            if (devitem.rseol.Equals(double.NaN)) txtrseol.Text = "null";
            else txtrseol.Text = devitem.rseol.ToString();

            if (devitem.rsnew.Equals(double.NaN)) txtrsnew.Text = "null";
            else txtrsnew.Text = devitem.rsnew.ToString();

            if (devitem.vlimit.Equals(double.NaN)) txtvlimit.Text = "null";
            else txtvlimit.Text = devitem.vlimit.ToString();

            BuildNewInformation();
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
                        stmp1 = Encoding.Default.GetString(itemlist[i].Alias).Trim('\0');
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

                    stmp = Encoding.Default.GetString(itemlist[i].Alias).Trim('\0');
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

                listBox1.Items.Add(Encoding.Default.GetString(selitem.Alias).Trim('\0'));

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
                selitem = new stWebSiteLimitInfo(0);
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

                selitem.Alias = Encoding.ASCII.GetBytes(frm.sInValue);

                Update_SelItem();

                itemlist[SelectedIndex] = selitem;

                listBox1.Items[SelectedIndex] = Encoding.Default.GetString(selitem.Alias).Trim('\0');
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
            frmCalWebVars frm = new frmCalWebVars() { type = 0, minfo = selitem }; 

            if(frm.ShowDialog() == DialogResult.OK)
            {
                selitem = frm.minfo;
                RefreshItem();
            }
        }

        private void btcalvoc_Click(object sender, EventArgs e)
        {
            frmCalWebVars frm = new frmCalWebVars() { type = 1, minfo = selitem };

            if (frm.ShowDialog() == DialogResult.OK)
            {
                selitem = frm.minfo;
                RefreshItem();
            }
        }
    }
}
