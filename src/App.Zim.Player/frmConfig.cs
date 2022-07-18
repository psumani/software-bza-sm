using System;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Serialization;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;

namespace App.Zim.Player
{
    public partial class frmConfig : Form
    {
        public CommObj mCommZim;

        public stSystemConfig mSysCfg;
        public stConnCfg mConnCfg;
        public stEthernetCfg mConnStat;
        public st_zim_rnginf ranges;
        public stWebSiteFATHeader mWebSiteFATheader;
        st_zim_device mZim;
        public bool bLoad;
        public frmConfig()
        {
            InitializeComponent();

            this.Icon = Properties.Resources.bm;

            DoubleBuffered = true;
            bLoad = false;

            
        }

        private void frmConfig_Load(object sender, EventArgs e)
        {
            if (mCommZim == null) throw new NullReferenceException("mCommZim");

            mSysCfg = new stSystemConfig(0);
            mConnCfg = new stConnCfg(0);
            ranges = new st_zim_rnginf(0);
            mConnStat = new stEthernetCfg(0);
            mWebSiteFATheader = new stWebSiteFATHeader(defWebSiteInfomation.WEBSITE_ID, 0);

            mCommZim.ReadData(ref mConnCfg);
            mCommZim.ReadData(ref mSysCfg);
            mCommZim.ReadData(ref ranges);

            mCommZim.ReadData(ref mWebSiteFATheader);
            mCommZim.ReadConnectStatus(ref mConnStat);

            mCommZim.CmdSetVdcAutoRange(0);


            cboIacRng.Items.Clear();
            cboIacRng.Items.Insert(0, GetCurrentRangeDescription(0));
            cboIacRng.Items.Insert(1, GetCurrentRangeDescription(2));
            cboIacRng.Items.Insert(2, GetCurrentRangeDescription(4));
            cboIacRng.Items.Insert(3, GetCurrentRangeDescription(6));

            cboRngEisCal.Items.Clear();
            cboRngEisCal.Items.Insert(0, GetCurrentRangeDescription(0));
            cboRngEisCal.Items.Insert(1, GetCurrentRangeDescription(1));
            cboRngEisCal.Items.Insert(2, GetCurrentRangeDescription(2));
            cboRngEisCal.Items.Insert(3, GetCurrentRangeDescription(3));
            cboRngEisCal.Items.Insert(4, GetCurrentRangeDescription(4));
            cboRngEisCal.Items.Insert(5, GetCurrentRangeDescription(5));
            cboRngEisCal.Items.Insert(6, GetCurrentRangeDescription(6));
            cboRngEisCal.Items.Insert(7, GetCurrentRangeDescription(7));


            cboIacRng.SelectedIndex = 0;

            cboSelVdc.SelectedIndex = 0;
            cboRngEisCal.SelectedIndex = 0;

            SetControlZIM(false);

            RefreshConnInfo();
            RefreshCommInfo();
            RefreshBoardInfo();
            RefreshIacRangeInfo();
            RefreshVacRangeInfo();
            RefreshVdcRangeInfo();
            RefreshTempRangeInfo();
            RefreshEisCalInfo();
            bLoad = true;
        }

        private string GetCurrentRangeDescription(int index)
        {
            string str = "";
            eZimType ztype = (eZimType)(mSysCfg.mZimCfg.cModel[0] - 0x30);
            if (ztype == eZimType.BZA60HZ)
            {
                str = "200mA";
                switch (index)
                {
                    case 0: str = "200mA"; break;
                    case 1: str = "40mA"; break;
                    case 2: str = "20mA"; break;
                    case 3: str = "4mA"; break;
                    case 4: str = "2mA"; break;
                    case 5: str = "400uA"; break;
                    case 6: str = "200uA"; break;
                    case 7: str = "40uA"; break;
                }
            }
            else
            {
                str = "2A";
                switch (index)
                {
                    case 0: str = "2A"; break;
                    case 1: str = "400mA"; break;
                    case 2: str = "200mA"; break;
                    case 3: str = "40mA"; break;
                    case 4: str = "20mA"; break;
                    case 5: str = "4mA"; break;
                    case 6: str = "2mA"; break;
                    case 7: str = "400uA"; break;
                }
            }
            return str;
        }

        private void SetControlZIM(bool bLoadOn)
        {
            mZim.ctrl_do.data = (ushort)((cboIacRng.SelectedIndex << 1) & 0xE);

            if (cboSelVdc.SelectedIndex == 0) mZim.ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;

            if (bLoadOn == true) mZim.ctrl_do.data |= DeviceConstants.DEVDO_CONT_SD;

            mCommZim.WriteData(mZim.ctrl_do);
        }
        private void RefreshConnInfo()
        {
            ListViewItem lvItem;
            string str;

            listConnStat.Columns.Clear();
            listConnStat.Items.Clear();
            listConnStat.Clear();

            listConnStat.View = View.Details;
            listConnStat.GridLines = true;
            listConnStat.FullRowSelect = true;
            listConnStat.CheckBoxes = false;
            listConnStat.MultiSelect = true;
            listConnStat.LabelEdit = false;
            listConnStat.LabelWrap = false;

            listConnStat.Columns.Add("Item", 150, HorizontalAlignment.Center);
            listConnStat.Columns.Add("Value", 150, HorizontalAlignment.Center);

            str = BitConverter.ToString(mConnStat.Mac);

            lvItem = new ListViewItem(new string[] { "Mac Address", str });
            lvItem.BackColor = Color.LightGray;
            listConnStat.Items.Add(lvItem);

            str = (mConnStat.dhcp == 1) ? "Using DHCP" : "Manually";
            lvItem = new ListViewItem(new string[] { "Configure IP", str });
            lvItem.BackColor = Color.LightGray;
            listConnStat.Items.Add(lvItem);

            str = string.Format("{0}.{1}.{2}.{3}", mConnStat.IpAddress[0]
                                                   , mConnStat.IpAddress[1]
                                                   , mConnStat.IpAddress[2]
                                                  , mConnStat.IpAddress[3]);
            lvItem = new ListViewItem(new string[] { "IP Address", str });
            lvItem.BackColor = Color.LightGray;
            listConnStat.Items.Add(lvItem);

            str = string.Format("{0}.{1}.{2}.{3}", mConnStat.SubnetMask[0]
                                                   , mConnStat.SubnetMask[1]
                                                   , mConnStat.SubnetMask[2]
                                                  , mConnStat.SubnetMask[3]);
            lvItem = new ListViewItem(new string[] { "Subnetmask", str });
            lvItem.BackColor = Color.LightGray;
            listConnStat.Items.Add(lvItem);


            str = string.Format("{0}.{1}.{2}.{3}", mConnStat.Gateway[0]
                                                   , mConnStat.Gateway[1]
                                                   , mConnStat.Gateway[2]
                                                  , mConnStat.Gateway[3]);
            lvItem = new ListViewItem(new string[] { "Gateway", str });
            lvItem.BackColor = Color.LightGray;
            listConnStat.Items.Add(lvItem);
        }

        private void RefreshCommInfo()
        {
            ListViewItem lvItem;
            string str;

            listNetInf.Columns.Clear();
            listNetInf.Items.Clear();
            listNetInf.Clear();

            listNetInf.View = View.Details;
            listNetInf.GridLines = true;
            listNetInf.FullRowSelect = true;
            listNetInf.CheckBoxes = false;
            listNetInf.MultiSelect = true;
            listNetInf.LabelEdit = false;
            listNetInf.LabelWrap = false;

            listNetInf.Columns.Add("Item", 150, HorizontalAlignment.Center);
            listNetInf.Columns.Add("Value", 150, HorizontalAlignment.Center);

            str = BitConverter.ToString(mConnCfg.mEthernetCfg.Mac);

            lvItem = new ListViewItem(new string[] { "Mac Address", str });
            lvItem.BackColor = Color.LightGray;
            listNetInf.Items.Add(lvItem);

            if (mConnCfg.mEthernetCfg.dhcp == 1) str = "Enabled";
            else str = "Disabled";
            lvItem = new ListViewItem(new string[] { "DHCP", str });

            listNetInf.Items.Add(lvItem);

            str = string.Format("{0}.{1}.{2}.{3}", mConnCfg.mEthernetCfg.IpAddress[0]
                                                   , mConnCfg.mEthernetCfg.IpAddress[1]
                                                   , mConnCfg.mEthernetCfg.IpAddress[2]
                                                  , mConnCfg.mEthernetCfg.IpAddress[3]);
            lvItem = new ListViewItem(new string[] { "IP Address", str });
            listNetInf.Items.Add(lvItem);

            str = string.Format("{0}.{1}.{2}.{3}", mConnCfg.mEthernetCfg.SubnetMask[0]
                                                   , mConnCfg.mEthernetCfg.SubnetMask[1]
                                                   , mConnCfg.mEthernetCfg.SubnetMask[2]
                                                  , mConnCfg.mEthernetCfg.SubnetMask[3]);
            lvItem = new ListViewItem(new string[] { "Subnetmask", str });
            listNetInf.Items.Add(lvItem);


            str = string.Format("{0}.{1}.{2}.{3}", mConnCfg.mEthernetCfg.Gateway[0]
                                                   , mConnCfg.mEthernetCfg.Gateway[1]
                                                   , mConnCfg.mEthernetCfg.Gateway[2]
                                                  , mConnCfg.mEthernetCfg.Gateway[3]);
            lvItem = new ListViewItem(new string[] { "Gateway", str });
            listNetInf.Items.Add(lvItem);

            str = string.Format("{0}", mConnCfg.mEthernetCfg.Port);
            lvItem = new ListViewItem(new string[] { "Port number", str });
            listNetInf.Items.Add(lvItem);

            str = Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0');
            lvItem = new ListViewItem(new string[] { "Hostname", str });
            listNetInf.Items.Add(lvItem);

            str = string.Format("ID=0x{0:X2}(Files={1}ea).", mWebSiteFATheader.ID, mWebSiteFATheader.FileCount);

            lvItem = new ListViewItem(new string[] { "Web site information", str });
            lvItem.BackColor = Color.LightGray;
            listNetInf.Items.Add(lvItem);
        }

        private void RefreshBoardInfo()
        {
            ListViewItem imtem;
            string str;
            string str1;

            listDevInf.Columns.Clear();
            listDevInf.Items.Clear();
            listDevInf.Clear();

            listDevInf.View = View.Details;
            listDevInf.GridLines = true;
            listDevInf.FullRowSelect = true;
            listDevInf.CheckBoxes = false;
            listDevInf.MultiSelect = true;
            listDevInf.LabelEdit = false;
            listDevInf.LabelWrap = false;

            listDevInf.Columns.Add("Item", 150, HorizontalAlignment.Center);
            listDevInf.Columns.Add("Value", 150, HorizontalAlignment.Center);


            imtem = new ListViewItem(new string[] { "SIF Serial number", mSysCfg.mSIFCfg.GetSerialNumber() });
            imtem.BackColor = Color.LightGray;
            listDevInf.Items.Add(imtem);

            str = string.Format("{0}.{1}.{2}.{3}", mSysCfg.mSIFCfg.BoardVersion.Major
                                                  , mSysCfg.mSIFCfg.BoardVersion.Minor
                                                  , mSysCfg.mSIFCfg.BoardVersion.Revision
                                                  , mSysCfg.mSIFCfg.BoardVersion.Build);
            imtem = new ListViewItem(new string[] { "SIF Board version", str });
            imtem.BackColor = Color.LightGray;
            listDevInf.Items.Add(imtem);

            str = string.Format("{0}.{1}.{2}.{3}", mSysCfg.mSIFCfg.FirmwareVersion.Major
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Minor
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Revision
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Build);
            imtem = new ListViewItem(new string[] { "SIF Firmware version", str });
            imtem.BackColor = Color.LightGray;
            listDevInf.Items.Add(imtem);

            str = mSysCfg.mZimCfg.GetSerialNumber();
            imtem = new ListViewItem(new string[] { "ZIM Serial number", str });
            imtem.BackColor = Color.LightGray;
            listDevInf.Items.Add(imtem);

            str1 = string.Format("{0:d04}", mSysCfg.mZimCfg.ZimBDVersion);

            str = string.Format("{0}.{1}.{2}.{3}", str1.Substring(0, str1.Length - 3)
                                                        , str1.Substring(str1.Length - 3, 1)
                                                        , str1.Substring(str1.Length - 2, 1)
                                                        , str1.Substring(str1.Length - 1, 1));
            imtem = new ListViewItem(new string[] { "ZIM Board version", str });
            imtem.BackColor = Color.LightGray;
            listDevInf.Items.Add(imtem);

            str1 = string.Format("{0:d04}", mSysCfg.mZimCfg.ZimFWVersion);

            str = string.Format("{0}.{1}.{2}.{3}", str1.Substring(0, str1.Length - 3)
                                                        , str1.Substring(str1.Length - 3, 1)
                                                        , str1.Substring(str1.Length - 2, 1)
                                                        , str1.Substring(str1.Length - 1, 1));
            imtem = new ListViewItem(new string[] { "ZIM Firmware version", str });
            imtem.BackColor = Color.LightGray;
            listDevInf.Items.Add(imtem);
        }

        private void RefreshIacRangeInfo()
        {
            int irng = cboIacRng.SelectedIndex;
            ListViewItem imtem;
            string str;

            ListIacRng.Columns.Clear();
            ListIacRng.Items.Clear();
            ListIacRng.Clear();

            ListIacRng.View = View.Details;
            ListIacRng.GridLines = true;
            ListIacRng.FullRowSelect = true;
            ListIacRng.CheckBoxes = false;
            ListIacRng.MultiSelect = true;
            ListIacRng.LabelEdit = false;
            ListIacRng.LabelWrap = false;

            ListIacRng.Columns.Add("Item", 150, HorizontalAlignment.Center);
            ListIacRng.Columns.Add("Value", 150, HorizontalAlignment.Center);

            str = string.Format("{0:0.0######}", ranges.iac_rng[irng].maximum);
            imtem = new ListViewItem(new string[] { "Maximum", str });
            imtem.BackColor = Color.LightGray;
            ListIacRng.Items.Add(imtem);

            str = string.Format("{0:0.0######}", ranges.iac_rng[irng].minimum);
            imtem = new ListViewItem(new string[] { "Minimum", str });
            imtem.BackColor = Color.LightGray;
            ListIacRng.Items.Add(imtem);

            str = string.Format("{0:0.0######e+0}", ranges.iac_rng[irng].factor);
            imtem = new ListViewItem(new string[] { "Factor", str });
            imtem.BackColor = Color.LightGray;
            ListIacRng.Items.Add(imtem);


            str = string.Format("{0:0.0#######}", ranges.iac_rng[irng].gain);
            imtem = new ListViewItem(new string[] { "Gain", str });
            ListIacRng.Items.Add(imtem);
            /*
            str = string.Format("{0:0.0#######}", ranges.iac_rng[irng].offset);
            imtem = new ListViewItem(new string[] { "Offset", str });
            ListIacRng.Items.Add(imtem);
            */
        }

        private void RefreshVacRangeInfo()
        {
            ListViewItem imtem;
            string str;

            ListVacRng.Columns.Clear();
            ListVacRng.Items.Clear();
            ListVacRng.Clear();

            ListVacRng.View = View.Details;
            ListVacRng.GridLines = true;
            ListVacRng.FullRowSelect = true;
            ListVacRng.CheckBoxes = false;
            ListVacRng.MultiSelect = true;
            ListVacRng.LabelEdit = false;
            ListVacRng.LabelWrap = false;

            ListVacRng.Columns.Add("Item", 150, HorizontalAlignment.Center);
            ListVacRng.Columns.Add("Value", 150, HorizontalAlignment.Center);

            str = string.Format("{0:0.0#######}", ranges.vac_rng.maximum);
            imtem = new ListViewItem(new string[] { "Maximum", str });
            imtem.BackColor = Color.LightGray;
            ListVacRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######}", ranges.vac_rng.minimum);
            imtem = new ListViewItem(new string[] { "Minimum", str });
            imtem.BackColor = Color.LightGray;
            ListVacRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.vac_rng.factor);
            imtem = new ListViewItem(new string[] { "Factor", str });
            imtem.BackColor = Color.LightGray;
            ListVacRng.Items.Add(imtem);


            str = string.Format("{0:0.0#######}", ranges.vac_rng.gain);
            imtem = new ListViewItem(new string[] { "Gain", str });
            ListVacRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######}", ranges.vac_rng.offset);
            imtem = new ListViewItem(new string[] { "Offset", str });
            ListVacRng.Items.Add(imtem);
        }

        private void RefreshVdcRangeInfo()
        {
            int irng = cboSelVdc.SelectedIndex;
            ListViewItem imtem;
            string str;

            ListVdcRng.Columns.Clear();
            ListVdcRng.Items.Clear();
            ListVdcRng.Clear();

            ListVdcRng.View = View.Details;
            ListVdcRng.GridLines = true;
            ListVdcRng.FullRowSelect = true;
            ListVdcRng.CheckBoxes = false;
            ListVdcRng.MultiSelect = false;
            ListVdcRng.LabelEdit = false;
            ListVdcRng.LabelWrap = false;

            ListVdcRng.Columns.Add("Item", 150, HorizontalAlignment.Center);
            ListVdcRng.Columns.Add("Value", 150, HorizontalAlignment.Center);

            str = string.Format("{0:0.0#######}", ranges.vdc_rng[irng].maximum);
            imtem = new ListViewItem(new string[] { "Maximum", str });
            imtem.BackColor = Color.LightGray;
            ListVdcRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######}", ranges.vdc_rng[irng].minimum);
            imtem = new ListViewItem(new string[] { "Minimum", str });
            imtem.BackColor = Color.LightGray;
            ListVdcRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.vdc_rng[irng].factor);
            imtem = new ListViewItem(new string[] { "Factor", str });
            imtem.BackColor = Color.LightGray;
            ListVdcRng.Items.Add(imtem);


            str = string.Format("{0:0.0#######}", ranges.vdc_rng[irng].gain);
            imtem = new ListViewItem(new string[] { "Gain", str });
            ListVdcRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######}", ranges.vdc_rng[irng].offset);
            imtem = new ListViewItem(new string[] { "Offset", str });
            ListVdcRng.Items.Add(imtem);
        }



        private void RefreshTempRangeInfo()
        {
            ListViewItem imtem;
            string str;

            ListTempRng.Columns.Clear();
            ListTempRng.Items.Clear();
            ListTempRng.Clear();

            ListTempRng.View = View.Details;
            ListTempRng.GridLines = true;
            ListTempRng.FullRowSelect = true;
            ListTempRng.CheckBoxes = false;
            ListTempRng.MultiSelect = true;
            ListTempRng.LabelEdit = false;
            ListTempRng.LabelWrap = false;

            ListTempRng.Columns.Add("Item", 150, HorizontalAlignment.Center);
            ListTempRng.Columns.Add("Value", 150, HorizontalAlignment.Center);

            str = string.Format("{0:0.0#######}", ranges.rtd_rng.maximum);
            imtem = new ListViewItem(new string[] { "Maximum", str });
            imtem.BackColor = Color.LightGray;
            ListTempRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######}", ranges.rtd_rng.minimum);
            imtem = new ListViewItem(new string[] { "Minimum", str });
            imtem.BackColor = Color.LightGray;
            ListTempRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.rtd_rng.factor);
            imtem = new ListViewItem(new string[] { "Factor", str });
            imtem.BackColor = Color.LightGray;
            ListTempRng.Items.Add(imtem);


            str = string.Format("{0:0.0#######}", ranges.rtd_rng.gain);
            imtem = new ListViewItem(new string[] { "Gain", str });
            ListTempRng.Items.Add(imtem);

            str = string.Format("{0:0.0#######}", ranges.rtd_rng.offset);
            imtem = new ListViewItem(new string[] { "Offset", str });
            ListTempRng.Items.Add(imtem);

        }

        private void RefreshEisCalInfo()
        {
            ListViewItem imtem;
            string str;
            int irng = cboRngEisCal.SelectedIndex;

            ListCal.Columns.Clear();
            ListCal.Items.Clear();
            ListCal.Clear();

            ListCal.View = View.Details;
            ListCal.GridLines = true;
            ListCal.FullRowSelect = true;
            ListCal.CheckBoxes = false;
            ListCal.MultiSelect = true;
            ListCal.LabelEdit = false;
            ListCal.LabelWrap = false;

            ListCal.Columns.Add("Item", 150, HorizontalAlignment.Center);
            ListCal.Columns.Add("Value", 150, HorizontalAlignment.Center);


            str = string.Format("{0:0.0#######e+0}", ranges.mEisIRngCalInfo[irng].n1);
            imtem = new ListViewItem(new string[] { "n1", str });
            ListCal.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.mEisIRngCalInfo[irng].n2);
            imtem = new ListViewItem(new string[] { "n2", str });
            ListCal.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.mEisIRngCalInfo[irng].n3);
            imtem = new ListViewItem(new string[] { "n3", str });
            ListCal.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.mEisIRngCalInfo[irng].d1);
            imtem = new ListViewItem(new string[] { "d1", str });
            ListCal.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.mEisIRngCalInfo[irng].d2);
            imtem = new ListViewItem(new string[] { "d2", str });
            ListCal.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.mEisIRngCalInfo[irng].d3);
            imtem = new ListViewItem(new string[] { "d3", str });
            ListCal.Items.Add(imtem);

            str = string.Format("{0:0.0#######e+0}", ranges.mEirIrngCompLs.Ls[irng]);
            imtem = new ListViewItem(new string[] { "Inductance(H)", str });
            ListCal.Items.Add(imtem);
            
            mPower.Text = string.Format("{0:0.0}", ranges.mSafety.MaxPower);
        }

        private void cboIacRng_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bLoad == false) return;
            SetControlZIM(false);
            RefreshIacRangeInfo();
        }

        private void cboSelVdc_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bLoad == false) return;
            SetControlZIM(false);
            RefreshVdcRangeInfo();
        }

        private void ListVdcRng_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void ListVdcRng_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (ListVdcRng.SelectedItems.Count >= 1)
            {
                ListView.SelectedListViewItemCollection items = ListVdcRng.SelectedItems;
                ListViewItem lvItem = items[0];
                string sTitle = lvItem.SubItems[0].Text.Trim();
                string sValue = lvItem.SubItems[1].Text.Trim();
                if (sTitle == "Gain" || sTitle == "Offset")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        int irng = cboSelVdc.SelectedIndex;
                        if (sTitle == "Gain") ranges.vdc_rng[irng].gain = Convert.ToDouble(frm.sInValue);
                        if (sTitle == "Offset") ranges.vdc_rng[irng].offset = Convert.ToDouble(frm.sInValue);
                        RefreshVdcRangeInfo();
                    }
                }
            }
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

        private void btApply_Click(object sender, EventArgs e)
        {
            try
            {
                mCommZim.WriteData(ranges);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        void SaveToXml(string sFullPath)
        {
            XmlSerializer writer = new XmlSerializer(ranges.GetType());
            StreamWriter file = new StreamWriter(sFullPath);
            try
            {
                writer.Serialize(file, ranges);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            file.Close();
        }


        void LoadFromXml(string sFullPath)
        {
            StreamReader file = new StreamReader(sFullPath);
            int i;
            st_zim_rnginf tranges;
            tranges = new st_zim_rnginf(0);

            XmlSerializer Reader = new XmlSerializer(tranges.GetType());

            try
            {
                tranges = (st_zim_rnginf)Reader.Deserialize(file);


                if (tranges.mEisIRngCalInfo.Length == DeviceConstants.MAX_IAC_CTRL_RNGCNT
                    || tranges.mEirIrngCompLs.Ls != null)
                {
                    ranges.ToWritePtr(tranges.ToByteArray());

                    if (ranges.iac_rng[0].offset == 0.0) ranges.iac_rng[0].offset = ranges.iac_rng[0].gain;
                    if (ranges.iac_rng[1].offset == 0.0) ranges.iac_rng[1].offset = ranges.iac_rng[1].gain;
                    if (ranges.iac_rng[2].offset == 0.0) ranges.iac_rng[2].offset = ranges.iac_rng[2].gain;
                    if (ranges.iac_rng[3].offset == 0.0) ranges.iac_rng[3].offset = ranges.iac_rng[3].gain;
                }
                else
                {
                    ranges.mSafety.ToWritePtr(tranges.mSafety.ToByteArray());
                    ranges.mEisCable.ToWritePtr(tranges.mEisCable.ToByteArray());

                    for (i = 0; i < DeviceConstants.MAX_VDC_RNGCNT; i++)
                    {
                        ranges.vdc_rng[i].ToWritePtr(tranges.vdc_rng[i].ToByteArray());
                    }
                    ranges.rtd_rng.ToWritePtr(tranges.rtd_rng.ToByteArray());
                    /*
                    for (i = 0; i < DeviceConstants.MAX_IAC_RNGCNT; i++)
                    {
                        ranges.iac_rng[i].ToWritePtr(tranges.iac_rng[i].ToByteArray());
                    }
                    ranges.vac_rng.ToWritePtr(tranges.vac_rng.ToByteArray());
                    for (i = 0; i < DeviceConstants.MAX_IAC_CTRL_RNGCNT; i++)
                    {
                        ranges.mEisIRngCalInfo[i].ToWritePtr(tranges.mEisIRngCalInfo[i].ToByteArray());
                    }
                    ranges.mEirIrngCompLs.ToWritePtr(tranges.mEirIrngCompLs.ToByteArray());*/
                }

                RefreshIacRangeInfo();
                RefreshVacRangeInfo();
                RefreshVdcRangeInfo();
                RefreshTempRangeInfo();
                RefreshEisCalInfo();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            file.Close();
        }


        private void frmConfig_FormClosing(object sender, FormClosingEventArgs e)
        {
            mCommZim.CmdSetVdcAutoRange(1);
        }

        private void menucfg_loadfile_Click(object sender, EventArgs e)
        {
            if (Properties.Settings.Default.PathRangeInfo.Length < 3)
            {
                Properties.Settings.Default.PathRangeInfo = Application.StartupPath + "\\" + mSysCfg.mZimCfg.GetSerialNumber() + "_Ranges.xml";
                Properties.Settings.Default.Save();
            }


            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Title = "Load the information of the ranges";
            dlg.Multiselect = false;
            dlg.DefaultExt = "xml";
            dlg.Filter = "XML files (*.xml)|*.xml|All files (*.*)|*.*";
            dlg.FileName = mSysCfg.mZimCfg.GetSerialNumber() + "_Ranges.xml";//    Path.GetFileName(Properties.Settings.Default.PathRangeInfo);
            dlg.InitialDirectory = Path.GetDirectoryName(Properties.Settings.Default.PathRangeInfo);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                LoadFromXml(dlg.FileName);
                Properties.Settings.Default.PathRangeInfo = dlg.FileName;
                Properties.Settings.Default.Save();

            }
        }

        private void menucfg_savefile_Click(object sender, EventArgs e)
        {
            if (Properties.Settings.Default.PathRangeInfo.Length < 3)
            {
                Properties.Settings.Default.PathRangeInfo = Application.StartupPath + "\\" + mSysCfg.mZimCfg.GetSerialNumber() + "_Ranges.xml";
                Properties.Settings.Default.Save();
            }


            SaveFileDialog dlg = new SaveFileDialog();
            dlg.Title = "Saves the information of the ranges";
            dlg.DefaultExt = "xml";
            dlg.Filter = "XML files (*.xml)|*.xml|All files (*.*)|*.*";
            dlg.FileName = mSysCfg.mZimCfg.GetSerialNumber() + "_Ranges.xml";//    Path.GetFileName(Properties.Settings.Default.PathRangeInfo);
            dlg.InitialDirectory = Path.GetDirectoryName(Properties.Settings.Default.PathRangeInfo);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                SaveToXml(dlg.FileName);
                Properties.Settings.Default.PathRangeInfo = dlg.FileName;
                Properties.Settings.Default.Save();

            }
        }

        private void menucfg_loadsif_Click(object sender, EventArgs e)
        {
            try
            {
                mCommZim.ReadConnectStatus(ref mConnStat);
                mCommZim.ReadData(ref mConnCfg);
                mCommZim.ReadData(ref mSysCfg);
                mCommZim.ReadData(ref ranges);
                mCommZim.ReadData(ref mWebSiteFATheader);
                RefreshConnInfo();
                RefreshCommInfo();
                RefreshBoardInfo();
                RefreshIacRangeInfo();
                RefreshVacRangeInfo();
                RefreshVdcRangeInfo();
                RefreshTempRangeInfo();
                RefreshEisCalInfo();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void menucfg_loadrnginfo_Click(object sender, EventArgs e)
        {
            try
            {
                mCommZim.ReadData(ref ranges);

                RefreshIacRangeInfo();
                RefreshVacRangeInfo();
                RefreshVdcRangeInfo();
                RefreshTempRangeInfo();
                RefreshEisCalInfo();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void menucfg_applyrangeinfo_Click(object sender, EventArgs e)
        {
            try
            {
                if (mCommZim.WriteData(ranges) == false)
                {
                    MessageBox.Show("The operation failed.");
                    return;
                }
                if (mCommZim.CmdStoreRangesInfo() == false)
                {
                    MessageBox.Show("The operation failed.");
                    return;
                }
                MessageBox.Show("The operation has been successful.");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void menucfg_close_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void btRefRtd_Click(object sender, EventArgs e)
        {
            RefreshTempRangeInfo();
        }

        private void ListTempRng_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void ListTempRng_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (ListTempRng.SelectedItems.Count >= 1)
            {
                ListView.SelectedListViewItemCollection items = ListTempRng.SelectedItems;
                ListViewItem lvItem = items[0];
                string sTitle = lvItem.SubItems[0].Text.Trim();
                string sValue = lvItem.SubItems[1].Text.Trim();
                if (sTitle == "Gain" || sTitle == "Offset")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        if (sTitle == "Gain") ranges.rtd_rng.gain = Convert.ToDouble(frm.sInValue);
                        if (sTitle == "Offset") ranges.rtd_rng.offset = Convert.ToDouble(frm.sInValue);
                        RefreshTempRangeInfo();
                    }
                }
            }
        }

        private void ListIacRng_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (ListIacRng.SelectedItems.Count >= 1)
            {
                ListView.SelectedListViewItemCollection items = ListIacRng.SelectedItems;
                ListViewItem lvItem = items[0];
                string sTitle = lvItem.SubItems[0].Text.Trim();
                string sValue = lvItem.SubItems[1].Text.Trim();
                if (sTitle == "Gain" || sTitle == "Offset")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        int irng = cboIacRng.SelectedIndex;
                        if (sTitle == "Gain")
                        {
                            ranges.iac_rng[irng].gain = Convert.ToDouble(frm.sInValue);
                            ranges.iac_rng[irng].offset = ranges.iac_rng[irng].gain;
                        }

                        //if (sTitle == "Offset") ranges.iac_rng[irng].offset = Convert.ToDouble(frm.sInValue);
                        RefreshIacRangeInfo();
                    }
                }
            }
        }

        private void ListVacRng_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            if (ListVacRng.SelectedItems.Count >= 1)
            {
                ListView.SelectedListViewItemCollection items = ListVacRng.SelectedItems;
                ListViewItem lvItem = items[0];
                string sTitle = lvItem.SubItems[0].Text.Trim();
                string sValue = lvItem.SubItems[1].Text.Trim();
                if (sTitle == "Gain" || sTitle == "Offset")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        if (sTitle == "Gain") ranges.vac_rng.gain = Convert.ToDouble(frm.sInValue);
                        if (sTitle == "Offset") ranges.vac_rng.offset = Convert.ToDouble(frm.sInValue);
                        RefreshVacRangeInfo();
                    }
                }
            }
        }

        private void ListCal_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            int irng = cboRngEisCal.SelectedIndex;
            if (ListCal.SelectedItems.Count >= 1)
            {
                ListView.SelectedListViewItemCollection items = ListCal.SelectedItems;
                ListViewItem lvItem = items[0];
                string sTitle = lvItem.SubItems[0].Text.Trim();
                string sValue = lvItem.SubItems[1].Text.Trim();

                if (sTitle == "n1" || sTitle == "n2" || sTitle == "n3" || sTitle == "d1"
                    || sTitle == "d2" || sTitle == "d3" || sTitle == "Inductance(H)")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        if (sTitle == "n1") ranges.mEisIRngCalInfo[irng].n1 = Convert.ToDouble(frm.sInValue);
                        else if (sTitle == "n2") ranges.mEisIRngCalInfo[irng].n2 = Convert.ToDouble(frm.sInValue);
                        else if (sTitle == "n3") ranges.mEisIRngCalInfo[irng].n3 = Convert.ToDouble(frm.sInValue);
                        else if (sTitle == "d1") ranges.mEisIRngCalInfo[irng].d1 = Convert.ToDouble(frm.sInValue);
                        else if (sTitle == "d2") ranges.mEisIRngCalInfo[irng].d2 = Convert.ToDouble(frm.sInValue);
                        else if (sTitle == "d3") ranges.mEisIRngCalInfo[irng].d3 = Convert.ToDouble(frm.sInValue);
                        else if (sTitle == "Inductance(H)")
                        {
                            ranges.mEirIrngCompLs.Ls[irng] = Convert.ToDouble(frm.sInValue);
                        }
                        RefreshEisCalInfo();
                    }
                }
            }
        }

        private void btRefEisCal_Click(object sender, EventArgs e)
        {
            RefreshEisCalInfo();
        }

        private void btRefIac_Click(object sender, EventArgs e)
        {
            RefreshIacRangeInfo();
        }

        private void btRefVac_Click(object sender, EventArgs e)
        {
            RefreshVacRangeInfo();
        }

        private void menuCfgInitRngInfo_Click(object sender, EventArgs e)
        {
            if (mCommZim.CmdInitRangesInfo() == false)
            {
                MessageBox.Show("Failed initialize.");
                return;
            }
            if (mCommZim.ReadData(ref ranges) == false)
            {
                MessageBox.Show("Failed read information.");
                return;
            }
            eZimType ztype = (eZimType)(mSysCfg.mZimCfg.cModel[0] - 0x30);

            if (ztype == eZimType.BZA60HZ)
            {
                ranges.mEirIrngCompLs.Ls[0] = Properties.Settings.Default.Inductance1;
                ranges.mEirIrngCompLs.Ls[1] = Properties.Settings.Default.Inductance1;
                ranges.mEirIrngCompLs.Ls[2] = Properties.Settings.Default.Inductance2;
                ranges.mEirIrngCompLs.Ls[3] = Properties.Settings.Default.Inductance2;
                ranges.mEirIrngCompLs.Ls[4] = Properties.Settings.Default.Inductance3;
                ranges.mEirIrngCompLs.Ls[5] = Properties.Settings.Default.Inductance3;
                ranges.mEirIrngCompLs.Ls[6] = Properties.Settings.Default.Inductance4;
                ranges.mEirIrngCompLs.Ls[7] = Properties.Settings.Default.Inductance4;
            }
            else
            {
                ranges.mEirIrngCompLs.Ls[0] = Properties.Settings.Default.Inductance0;
                ranges.mEirIrngCompLs.Ls[1] = Properties.Settings.Default.Inductance0;
                ranges.mEirIrngCompLs.Ls[2] = Properties.Settings.Default.Inductance1;
                ranges.mEirIrngCompLs.Ls[3] = Properties.Settings.Default.Inductance1;
                ranges.mEirIrngCompLs.Ls[4] = Properties.Settings.Default.Inductance2;
                ranges.mEirIrngCompLs.Ls[5] = Properties.Settings.Default.Inductance2;
                ranges.mEirIrngCompLs.Ls[6] = Properties.Settings.Default.Inductance3;
                ranges.mEirIrngCompLs.Ls[7] = Properties.Settings.Default.Inductance3;
            }

            ranges.mSafety.MaxPower = Properties.Settings.Default.Power;


            if (mCommZim.WriteData(ranges) == false)
            {
                MessageBox.Show("Transmission failed.");
                return;
            }
            if (mCommZim.CmdStoreRangesInfo() == false)
            {
                MessageBox.Show("Failed to save.");
                return;
            }


            RefreshIacRangeInfo();
            RefreshVacRangeInfo();
            RefreshVdcRangeInfo();
            RefreshTempRangeInfo();
            RefreshEisCalInfo();


        }

        private void listNetInf_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            bool bRefresh = false;
            if (listNetInf.SelectedItems.Count >= 1)
            {
                ListView.SelectedListViewItemCollection items = listNetInf.SelectedItems;
                ListViewItem lvItem = items[0];
                string sTitle = lvItem.SubItems[0].Text.Trim();
                string sValue = lvItem.SubItems[1].Text.Trim();

                if (sTitle == "IP Address" || sTitle == "Subnetmask" || sTitle == "Gateway")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue, 2);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        if (sTitle == "IP Address")
                        {
                            bRefresh = mCommZim.HostNameToIP(frm.sInValue, ref mConnCfg.mEthernetCfg.IpAddress);
                        }
                        else if (sTitle == "Subnetmask")
                        {
                            bRefresh = mCommZim.HostNameToIP(frm.sInValue, ref mConnCfg.mEthernetCfg.SubnetMask);
                        }
                        else if (sTitle == "Gateway")
                        {
                            bRefresh = mCommZim.HostNameToIP(frm.sInValue, ref mConnCfg.mEthernetCfg.Gateway);
                        }
                    }
                }
                else if (sTitle == "Port number")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        if (sTitle == "Port number")
                        {
                            mConnCfg.mEthernetCfg.Port = Convert.ToInt32(frm.sInValue);
                            bRefresh = true;
                        }
                    }
                }
                else if (sTitle == "DHCP")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue, 1);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        if (sTitle == "DHCP")
                        {
                            if (frm.sInValue == "Enabled") mConnCfg.mEthernetCfg.dhcp = 1;
                            else mConnCfg.mEthernetCfg.dhcp = 0;
                            bRefresh = true;
                        }

                    }
                }
                else if (sTitle == "Hostname")
                {
                    frmInputValue frm = new frmInputValue(sTitle, sValue, 3);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        if (sTitle == "Hostname")
                        {
                            byte[] arr = Encoding.Default.GetBytes(frm.sInValue);
                            Array.Clear(mConnCfg.mEthernetCfg.hostname, 0, 20);
                            Array.Copy(arr, mConnCfg.mEthernetCfg.hostname, frm.sInValue.Length);
                            bRefresh = true;
                        }

                    }
                }
                if (bRefresh == true) RefreshCommInfo();
            }
        }

        private void menuCfgInitLanInfo_Click(object sender, EventArgs e)
        {
            mConnCfg.mEthernetCfg.Gateway[0] = 169;
            mConnCfg.mEthernetCfg.Gateway[1] = 254;
            mConnCfg.mEthernetCfg.Gateway[2] = 17;
            mConnCfg.mEthernetCfg.Gateway[3] = 1;

            mConnCfg.mEthernetCfg.SubnetMask[0] = 255;
            mConnCfg.mEthernetCfg.SubnetMask[1] = 255;
            mConnCfg.mEthernetCfg.SubnetMask[2] = 255;
            mConnCfg.mEthernetCfg.SubnetMask[3] = 0;

            mConnCfg.mEthernetCfg.IpAddress[0] = 169;
            mConnCfg.mEthernetCfg.IpAddress[1] = 254;
            mConnCfg.mEthernetCfg.IpAddress[2] = 17;
            mConnCfg.mEthernetCfg.IpAddress[3] = 2;

            mConnCfg.mEthernetCfg.Port = 2000;
            mConnCfg.mEthernetCfg.dhcp = 1;


            string str = string.Format("ZIM-{0:X2}{1:X2}", mConnCfg.mEthernetCfg.Mac[4], mConnCfg.mEthernetCfg.Mac[5]);
            byte[] barr = Encoding.Default.GetBytes(str);
            Array.Clear(mConnCfg.mEthernetCfg.hostname, 0, 20);
            Array.Copy(barr, 0, mConnCfg.mEthernetCfg.hostname, 0, barr.Length);

            RefreshCommInfo();
        }

        private void menuCfgLoadLanInfo_Click(object sender, EventArgs e)
        {
            mCommZim.ReadData(ref mConnCfg);
            RefreshCommInfo();
        }

        private void menuCfgApplyLanInfo_Click(object sender, EventArgs e)
        {
            stUserEthernetCfg mCfg = new stUserEthernetCfg(0);
            mCfg.ToWritePtr(mConnCfg.mEthernetCfg.ToNoMacByteArray());
            if (mCommZim.WriteData(mCfg) == false)
            {
                MessageBox.Show("The operation failed.");
            }
            if (mCommZim.CmdStoreConnCfgInfo() == false)
            {
                MessageBox.Show("The operation failed.");
            }
            MessageBox.Show("The operation has been successful.");
        }

        private void TabCtrl_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void listDevInf_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void listDevInf_MouseDoubleClick(object sender, MouseEventArgs e)
        {

        }

        public bool ReadWebSiteInfo()
        {
            if (mCommZim.isConnected == false)
            {
                return false;
            }

            return mCommZim.ReadData(ref mWebSiteFATheader);
        }

        public void RefreshSifWebSiteInfo()
        {
            if (ReadWebSiteInfo())
            {
                RefreshBoardInfo();
            }
        }
        private void btVdcCal_Click(object sender, EventArgs e)
        {
            frmCalibVdc frm = new frmCalibVdc(ref mCommZim, ref ranges, ref mZim);
            frm.ShowDialog();
            mCommZim.ReadData(ref ranges);
            RefreshVdcRangeInfo();
        }

        private void btRefVdc_Click(object sender, EventArgs e)
        {
            RefreshVdcRangeInfo();
        }

        private void btTempCal_Click(object sender, EventArgs e)
        {
            frmCalibRtd frm = new frmCalibRtd(ref mCommZim, ref ranges, ref mZim);
            frm.ShowDialog();
            mCommZim.ReadData(ref ranges);
            RefreshTempRangeInfo();
        }

        private void menuWebService_Setup_Click(object sender, EventArgs e)
        {
            frmWebServceCfg frm = new frmWebServceCfg(ref mCommZim, ref mWebSiteFATheader);
            frm.ShowDialog();
            RefreshSifWebSiteInfo();
        }

        private void cboRngEisCal_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bLoad == false) return;
            RefreshEisCalInfo();
        }

        private void menucfg_SetDataFormat_Click(object sender, EventArgs e)
        {
            frmSetDataFormat frm = new frmSetDataFormat();
            frm.ShowDialog();
        }

        private void InitEisCalInf(ref st_zim_Eis_Cal_info pEis_cal_info)
        {
            pEis_cal_info.n1 = 0.0;
            pEis_cal_info.n2 = 0.0;
            pEis_cal_info.n3 = 0.0;
            pEis_cal_info.d1 = 0.0;
            pEis_cal_info.d2 = 0.0;
            pEis_cal_info.d3 = 0.0;
        }

        private void InitRangeInfo(ref st_zim_rnginf tRanges)
        {
            eZimType ztype = (eZimType)(mSysCfg.mZimCfg.cModel[0] - 0x30);

            tRanges.ID = DeviceConstants.ID_RANGEINFO;
            tRanges.mSafety.MaxPower = DeviceConstants.DEV_DEFAULT_POWER;

            tRanges.mEisCable.initialize();

            InitEisCalInf(ref tRanges.mEisIRngCalInfo[0]);

            InitEisCalInf(ref tRanges.mEisIRngCalInfo[1]);

            InitEisCalInf(ref tRanges.mEisIRngCalInfo[2]);

            InitEisCalInf(ref tRanges.mEisIRngCalInfo[3]);

            InitEisCalInf(ref tRanges.mEisIRngCalInfo[4]);

            InitEisCalInf(ref tRanges.mEisIRngCalInfo[5]);

            InitEisCalInf(ref tRanges.mEisIRngCalInfo[6]);

            InitEisCalInf(ref tRanges.mEisIRngCalInfo[7]);

            if (ztype == eZimType.BZA60HZ)
            {
                tRanges.mEirIrngCompLs.Ls[0] = Properties.Settings.Default.Inductance1;
                tRanges.mEirIrngCompLs.Ls[1] = Properties.Settings.Default.Inductance1;
                tRanges.mEirIrngCompLs.Ls[2] = Properties.Settings.Default.Inductance2;
                tRanges.mEirIrngCompLs.Ls[3] = Properties.Settings.Default.Inductance2;
                tRanges.mEirIrngCompLs.Ls[4] = Properties.Settings.Default.Inductance3;
                tRanges.mEirIrngCompLs.Ls[5] = Properties.Settings.Default.Inductance3;
                tRanges.mEirIrngCompLs.Ls[6] = Properties.Settings.Default.Inductance4;
                tRanges.mEirIrngCompLs.Ls[7] = Properties.Settings.Default.Inductance4;
            }
            else
            {
                tRanges.mEirIrngCompLs.Ls[0] = Properties.Settings.Default.Inductance0;
                tRanges.mEirIrngCompLs.Ls[1] = Properties.Settings.Default.Inductance0;
                tRanges.mEirIrngCompLs.Ls[2] = Properties.Settings.Default.Inductance1;
                tRanges.mEirIrngCompLs.Ls[3] = Properties.Settings.Default.Inductance1;
                tRanges.mEirIrngCompLs.Ls[4] = Properties.Settings.Default.Inductance2;
                tRanges.mEirIrngCompLs.Ls[5] = Properties.Settings.Default.Inductance2;
                tRanges.mEirIrngCompLs.Ls[6] = Properties.Settings.Default.Inductance3;
                tRanges.mEirIrngCompLs.Ls[7] = Properties.Settings.Default.Inductance3;
            }


                
            //PT-1000 - 1000ohm : 0'C, RREF - 4000ohm
            //PT-100  -  100ohm : 0'C. RREF -  400ohm

            tRanges.mSafety.MaxPower = Properties.Settings.Default.Power;

            tRanges.rtd_rng.maximum = DeviceConstants.ADC_RTD_CONST_MAX;
            tRanges.rtd_rng.minimum = DeviceConstants.ADC_RTD_CONST_MIN;
            tRanges.rtd_rng.factor = DeviceConstants.ADC_RTD_CONST_PT100;
            tRanges.rtd_rng.gain = 1.0;
            tRanges.rtd_rng.offset = 0.0;
            if (ztype == eZimType.BZA60HZ)
            {
                tRanges.iac_rng[0].maximum = DeviceConstants.ADC_IAC_RNG1_MAX;
                tRanges.iac_rng[0].minimum = DeviceConstants.ADC_IAC_RNG1_MIN;
                tRanges.iac_rng[0].factor = DeviceConstants.ADC_IAC_RNG1_FACTOR;
                tRanges.iac_rng[0].gain = 1.0;
                tRanges.iac_rng[0].offset = 1.0;

                tRanges.iac_rng[1].maximum = DeviceConstants.ADC_IAC_RNG2_MAX;
                tRanges.iac_rng[1].minimum = DeviceConstants.ADC_IAC_RNG2_MIN;
                tRanges.iac_rng[1].factor = DeviceConstants.ADC_IAC_RNG2_FACTOR;
                tRanges.iac_rng[1].gain = 1.0;
                tRanges.iac_rng[1].offset = 1.0;

                tRanges.iac_rng[2].maximum = DeviceConstants.ADC_IAC_RNG3_MAX;
                tRanges.iac_rng[2].minimum = DeviceConstants.ADC_IAC_RNG3_MIN;
                tRanges.iac_rng[2].factor = DeviceConstants.ADC_IAC_RNG3_FACTOR;
                tRanges.iac_rng[2].gain = 1.0;
                tRanges.iac_rng[2].offset = 1.0;

                tRanges.iac_rng[3].maximum = DeviceConstants.ADC_IAC_RNG4_MAX;
                tRanges.iac_rng[3].minimum = DeviceConstants.ADC_IAC_RNG4_MIN;
                tRanges.iac_rng[3].factor = DeviceConstants.ADC_IAC_RNG4_FACTOR;
                tRanges.iac_rng[3].gain = 1.0;
                tRanges.iac_rng[3].offset = 1.0;
            }
            else
            {
                tRanges.iac_rng[0].maximum = DeviceConstants.ADC_IAC_RNG0_MAX;
                tRanges.iac_rng[0].minimum = DeviceConstants.ADC_IAC_RNG0_MIN;
                tRanges.iac_rng[0].factor = DeviceConstants.ADC_IAC_RNG0_FACTOR;
                tRanges.iac_rng[0].gain = 1.0;
                tRanges.iac_rng[0].offset = 1.0;

                tRanges.iac_rng[1].maximum = DeviceConstants.ADC_IAC_RNG1_MAX;
                tRanges.iac_rng[1].minimum = DeviceConstants.ADC_IAC_RNG1_MIN;
                tRanges.iac_rng[1].factor = DeviceConstants.ADC_IAC_RNG1_FACTOR;
                tRanges.iac_rng[1].gain = 1.0;
                tRanges.iac_rng[1].offset = 1.0;

                tRanges.iac_rng[2].maximum = DeviceConstants.ADC_IAC_RNG2_MAX;
                tRanges.iac_rng[2].minimum = DeviceConstants.ADC_IAC_RNG2_MIN;
                tRanges.iac_rng[2].factor = DeviceConstants.ADC_IAC_RNG2_FACTOR;
                tRanges.iac_rng[2].gain = 1.0;
                tRanges.iac_rng[2].offset = 1.0;

                tRanges.iac_rng[3].maximum = DeviceConstants.ADC_IAC_RNG3_MAX;
                tRanges.iac_rng[3].minimum = DeviceConstants.ADC_IAC_RNG3_MIN;
                tRanges.iac_rng[3].factor = DeviceConstants.ADC_IAC_RNG3_FACTOR;
                tRanges.iac_rng[3].gain = 1.0;
                tRanges.iac_rng[3].offset = 1.0;
            }
            

            tRanges.vac_rng.maximum = DeviceConstants.ADC_VAC_RNG_MAX;
            tRanges.vac_rng.minimum = DeviceConstants.ADC_VAC_RNG_MIN;
            tRanges.vac_rng.factor = DeviceConstants.ADC_VAC_RNG_FACTOR;
            tRanges.vac_rng.gain = 1.0;
            tRanges.vac_rng.offset = 0.0;

            tRanges.vac_rng.maximum = DeviceConstants.ADC_VAC_RNG_MAX;
            tRanges.vac_rng.minimum = DeviceConstants.ADC_VAC_RNG_MIN;
            tRanges.vac_rng.factor = DeviceConstants.ADC_VAC_RNG_FACTOR;
            tRanges.vac_rng.gain = 1.0;
            tRanges.vac_rng.offset = 0.0;

            tRanges.vdc_rng[0].maximum = 1500.0;
            tRanges.vdc_rng[0].minimum = -1500.0;
            tRanges.vdc_rng[0].factor = DeviceConstants.ADC_VDC_RNG0_FACTOR;
            tRanges.vdc_rng[0].gain = 1.0;
            tRanges.vdc_rng[0].offset = 0.0;

            tRanges.vdc_rng[1].maximum = 100.0;
            tRanges.vdc_rng[1].minimum = -100.0;
            tRanges.vdc_rng[1].factor = DeviceConstants.ADC_VDC_RNG1_FACTOR;
            tRanges.vdc_rng[1].gain = 1.0;
            tRanges.vdc_rng[1].offset = 0.0;
        }

        private void menuCfgInitRngInfoZIM_Click(object sender, EventArgs e)
        {
            st_zim_rnginf tRanges = new st_zim_rnginf(0);

            if (MessageBox.Show("All range information on the device is initialized and writed in memory on the ZIM Board.\n\\n Would you like to continue?"
                , "Configuration", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
            {
                InitRangeInfo(ref tRanges);

                if (mCommZim.ProgRangeInfOfZim(ref tRanges) == false)
                {
                    MessageBox.Show("No ZIM Board.");
                    return;
                }
            }

        }

        private void testSineToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmFreqGen frm = new frmFreqGen() { mCommZim = mCommZim };
            frm.ShowDialog();


            st_zim_do ctrl_do = new st_zim_do(0);

            ctrl_do.data = 0;
            ctrl_do.data |= DeviceConstants.DEVDO_VDC_RNG0;

            mCommZim.WriteData(ctrl_do);

            mCommZim.CmdSetVdcAutoRange(1);
        }

        private void editDummyResistorInfoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            eZimType ztype = (eZimType)(mSysCfg.mZimCfg.cModel[0] - 0x30);
            frmInputDlg mdlg = new frmInputDlg();
            if (mdlg.ShowDialog() == DialogResult.OK)
            {
                if (ztype == eZimType.BZA60HZ)
                {
                    ranges.mEirIrngCompLs.Ls[0] = Properties.Settings.Default.Inductance1;
                    ranges.mEirIrngCompLs.Ls[1] = Properties.Settings.Default.Inductance1;
                    ranges.mEirIrngCompLs.Ls[2] = Properties.Settings.Default.Inductance2;
                    ranges.mEirIrngCompLs.Ls[3] = Properties.Settings.Default.Inductance2;
                    ranges.mEirIrngCompLs.Ls[4] = Properties.Settings.Default.Inductance3;
                    ranges.mEirIrngCompLs.Ls[5] = Properties.Settings.Default.Inductance3;
                    ranges.mEirIrngCompLs.Ls[6] = Properties.Settings.Default.Inductance4;
                    ranges.mEirIrngCompLs.Ls[7] = Properties.Settings.Default.Inductance4;
                }
                else
                {
                    ranges.mEirIrngCompLs.Ls[0] = Properties.Settings.Default.Inductance0;
                    ranges.mEirIrngCompLs.Ls[1] = Properties.Settings.Default.Inductance0;
                    ranges.mEirIrngCompLs.Ls[2] = Properties.Settings.Default.Inductance1;
                    ranges.mEirIrngCompLs.Ls[3] = Properties.Settings.Default.Inductance1;
                    ranges.mEirIrngCompLs.Ls[4] = Properties.Settings.Default.Inductance2;
                    ranges.mEirIrngCompLs.Ls[5] = Properties.Settings.Default.Inductance2;
                    ranges.mEirIrngCompLs.Ls[6] = Properties.Settings.Default.Inductance3;
                    ranges.mEirIrngCompLs.Ls[7] = Properties.Settings.Default.Inductance3;
                }

                    

                ranges.mSafety.MaxPower = Properties.Settings.Default.Power;


                if (mCommZim.WriteData(ranges) == false)
                {
                    MessageBox.Show("Transmission failed.");
                    return;
                }
                if (mCommZim.CmdStoreRangesInfo() == false)
                {
                    MessageBox.Show("Failed to save.");
                    return;
                }

                RefreshEisCalInfo();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int irng = cboSelVdc.SelectedIndex;

            frmSetMaxRange mdlg = new frmSetMaxRange(ranges.vdc_rng[irng].maximum);
            if (mdlg.ShowDialog() == DialogResult.OK)
            {
                if (ranges.vdc_rng[irng].maximum == mdlg.MaxVal)
                {
                    return;
                }
                ranges.vdc_rng[irng].maximum = mdlg.MaxVal;
                ranges.vdc_rng[irng].minimum = ranges.vdc_rng[irng].maximum * -1.0;
                ranges.vdc_rng[irng].factor = (ranges.vdc_rng[irng].maximum - ranges.vdc_rng[irng].minimum) / 16777216.0; //24bit
                ranges.vdc_rng[irng].gain = 1.0;
                ranges.vdc_rng[irng].offset = 0.0;
                RefreshVdcRangeInfo();
            }
        }

    }
}
