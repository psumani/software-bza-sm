using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM;
using System.Net.NetworkInformation;
using System.Net;
using System.Linq;

namespace ZiveLab.ZM
{
    public class MBZA_ChannelInfo : INotifyPropertyChanged
    {
        #region Public Properties

        string hostName;
        public string HostName
        {
            get { return hostName; }
            set
            {
                if (hostName != value)
                {
                    hostName = value;
                    OnPropertyChanged("HostName");
                }
            }
        }


        string configureIP;
        public string ConfigureIP
        {
            get { return configureIP; }
            set
            {
                if (configureIP != value)
                {
                    configureIP = value;
                    OnPropertyChanged("ConfigureIP");
                }
            }
        }

        PhysicalAddress physicalAddress;
        public PhysicalAddress PhysicalAddress
        {
            get { return physicalAddress; }
            set
            {
                if (physicalAddress != value)
                {
                    physicalAddress = value;
                    OnPropertyChanged("PhysicalAddress");
                }
            }
        }

        IPAddress iPAddress;
        public IPAddress IPAddress
        {
            get { return iPAddress; }
            set
            {
                if (iPAddress != value)
                {
                    iPAddress = value;
                    OnPropertyChanged("IPAddress");
                }
            }
        }

        IPAddress router;
        public IPAddress Router // Gateway
        {
            get { return router; }
            set
            {
                if (router != value)
                {
                    router = value;
                    OnPropertyChanged("Router");
                }
            }
        }

        IPAddress subnetMask;
        public IPAddress SubnetMask
        {
            get { return subnetMask; }
            set
            {
                if (subnetMask != value)
                {
                    subnetMask = value;
                    OnPropertyChanged("SubnetMask");
                }
            }
        }

        int port;
        public int Port
        {
            get { return port; }
            set
            {
                if (port != value)
                {
                    port = value;
                    OnPropertyChanged("Port");
                }
            }
        }


        string devicemodel;
        public string DeviceModel
        {
            get { return devicemodel; }
            set
            {
                if (devicemodel != value)
                {
                    devicemodel = value;
                    OnPropertyChanged("Device Model");
                }
            }
        }

        string serialNumber;
        public string SifSerialNumber
        {
            get { return serialNumber; }
            set
            {
                if (serialNumber != value)
                {
                    serialNumber = value;
                    OnPropertyChanged("Device SerialNumber");
                }
            }
        }

        string sifBoardVersion;
        public string SifBoardVersion
        {
            get { return sifBoardVersion; }
            set
            {
                if (sifBoardVersion != value)
                {
                    sifBoardVersion = value;
                    OnPropertyChanged("SifBoardVersion");
                }
            }
        }

        string sifFirmwareVersion;
        public string SifFirmwareVersion
        {
            get { return sifFirmwareVersion; }
            set
            {
                if (sifFirmwareVersion != value)
                {
                    sifFirmwareVersion = value;
                    OnPropertyChanged("SifFirmwareVersion");
                }
            }
        }
        

        string zimModel;
        public string ZimModel
        {
            get { return zimModel; }
            set
            {
                if (zimModel != value)
                {
                    zimModel = value;
                    OnPropertyChanged("Channel model");
                }
            }
        }

        string zimSerialNumber;
        public string ZimSerialNumber
        {
            get { return zimSerialNumber; }
            set
            {
                if (zimSerialNumber != value)
                {
                    zimSerialNumber = value;
                    OnPropertyChanged("ZimSerialNumber");
                }
            }
        }

        string zimBoardVersion;
        public string ZimBoardVersion // TODO
        {
            get { return zimBoardVersion; }
            set
            {
                if (zimBoardVersion != value)
                {
                    zimBoardVersion = value;
                    OnPropertyChanged("ZimBoardVersion");
                }
            }
        }

        string zimFirmwareVersion;
        public string ZimFirmwareVersion
        {
            get { return zimFirmwareVersion; }
            set
            {
                if (zimFirmwareVersion != value)
                {
                    zimFirmwareVersion = value;
                    OnPropertyChanged("ZimFirmwareVersion");
                }
            }
        }



        #endregion Public Properties

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string PropertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
        }

        #endregion INotifyPropertyChanged Members

        public MBZA_ChannelInfo()
        { }

        public MBZA_ChannelInfo(string serial, int sifch)
        {
            if (gBZA.SifLnkLst.ContainsKey(serial) == false) return;
            PhysicalAddress = new PhysicalAddress(gBZA.SifLnkLst[serial].MBZAIF.mConnection.Mac);
            IPAddress = new IPAddress(gBZA.SifLnkLst[serial].MBZAIF.mConnection.IpAddress);
            Router = new IPAddress(gBZA.SifLnkLst[serial].MBZAIF.mConnection.Gateway);
            SubnetMask = new IPAddress(gBZA.SifLnkLst[serial].MBZAIF.mConnection.SubnetMask);
            Port = gBZA.SifLnkLst[serial].MBZAIF.mConnection.Port;
            
            HostName = Encoding.UTF8.GetString(gBZA.SifLnkLst[serial].MBZAIF.mConnection.hostname).Trim('\0');
            ConfigureIP = (gBZA.SifLnkLst[serial].MBZAIF.mConnection.dhcp == 1) ? "Using DHCP" : "Manually";

            devicemodel = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mSIFCfg.GetTypeString();

            SifSerialNumber = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mSIFCfg.GetSerialNumber();

            SifBoardVersion = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mSIFCfg.GetBoardVer();

            SifFirmwareVersion = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mSIFCfg.GetFirmwareVer();
            ZimModel = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetZimTypeString();
            ZimSerialNumber = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetSerialNumber();
            ZimFirmwareVersion = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetFirmwareVer();
            ZimBoardVersion = gBZA.SifLnkLst[serial].MBZAIF.mDevInf.mSysCfg.mZimCfg[sifch].GetBoardVer();
        }

        public List<KeyValuePair<string, string>> ToKeyValuePairs()
        {
            var list = new List<KeyValuePair<string, string>>();

            list.Add(new KeyValuePair<string, string>("Host Name", this.HostName));
            list.Add(new KeyValuePair<string, string>("Configure IP", this.ConfigureIP));
            list.Add(new KeyValuePair<string, string>("IP Address", this.IPAddress.ToString()));
            list.Add(new KeyValuePair<string, string>("Subnet Mask", this.SubnetMask.ToString()));
            list.Add(new KeyValuePair<string, string>("Router", this.Router.ToString()));
            list.Add(new KeyValuePair<string, string>("Port", this.Port.ToString()));

            var mac = string.Join(":", this.PhysicalAddress.GetAddressBytes().Select(b => b.ToString("X2")));
            list.Add(new KeyValuePair<string, string>("Mac Address", mac));

            list.Add(new KeyValuePair<string, string>("Device Model", this.devicemodel));
            list.Add(new KeyValuePair<string, string>("Device S/N", this.SifSerialNumber));
            list.Add(new KeyValuePair<string, string>("Device Board", this.SifBoardVersion));
            list.Add(new KeyValuePair<string, string>("Device Firmware", this.SifFirmwareVersion));

            list.Add(new KeyValuePair<string, string>("Channel Model", this.ZimModel));
            list.Add(new KeyValuePair<string, string>("Channel S/N", this.ZimSerialNumber));
            list.Add(new KeyValuePair<string, string>("Channel Board", this.ZimBoardVersion));
            list.Add(new KeyValuePair<string, string>("Channel Firmware", this.ZimFirmwareVersion));

            return list;
        }
    }
    public partial class PanelAbout : UserControl
    {
        #region Public Properties

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        [Bindable(false)]
        [Browsable(false)]
        public List<KeyValuePair<string, string>> Pairs
        {
            get { return pairs; }
            set
            {
                if (pairs != value)
                {
                    pairs = value;

                    if (pairs != null)
                        UpdateUI();
                    else
                        flowLayoutPanel.Controls.Clear();
                }
            }
        }
        List<KeyValuePair<string, string>> pairs;

        #endregion Public Properties

        #region Life and Death

        public PanelAbout()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        #endregion Life and Death

        #region Private Methods

        private void UpdateUI()
        {
            if (Pairs == null || Pairs.Count == 0)
            {
                this.flowLayoutPanel.Controls.Clear();
                return;
            }

            if (Pairs.Count == flowLayoutPanel.Controls.Count)
            {
                for (int i = 0; i < flowLayoutPanel.Controls.Count; i++)
                {
                    var control = flowLayoutPanel.Controls[i] as SpringItem;
                    control.Pair = new KeyValuePair<string, string>(Pairs[i].Key, Pairs[i].Value);
                }
                return;
            }

            this.flowLayoutPanel.Controls.Clear();
            var width = this.flowLayoutPanel.Width - 25;
            foreach (var pair in Pairs)
            {
                var item = new SpringItem() { Pair = pair };
                item.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
                item.Size = new System.Drawing.Size(width, 28);

                this.flowLayoutPanel.Controls.Add(item);
            }
        }

        #endregion Private Methods

        #region Private Event Handlers

        private void buttonCopyToClipboard_Click(object sender, System.EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (Pairs == null || Pairs.Count < 1) return;

            StringBuilder sb = new StringBuilder();
            foreach (var x in Pairs)
            {
                sb.Append(x.Key);
                sb.Append("\t");
                sb.Append(x.Value);
                sb.AppendLine();
            }

            Clipboard.SetText(sb.ToString());
        }

        #endregion Private Event Handlers
    }
}
