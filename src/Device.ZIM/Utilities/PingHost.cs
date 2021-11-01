using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Packets;

namespace ZiveLab.Device.ZIM.Utilities
{
    public class PingHost
    {
        public Dictionary<string, string> SearchedDevice { get; private set; } //PhysicalAddress

        public List<string> ListOfIPs { get; private set; }

        public event EventHandler PingCompleted;

        public PingHost(EventHandler pingCompleted = null)
        {
            SearchedDevice = new Dictionary<string, string>();

            FullBuildPingList();

             PingCompleted = pingCompleted;            
        }

        public void BuildPingList()
        {
            List<string> list = new List<string>();

            byte[] ipbytes = NetUtilities.GetLocalIPAddress();

            if (ipbytes != null)
            {
                for (int i = 2; i <= 255; i++)
                    list.Add(string.Format("{0}.{1}.{2}.{3}", ipbytes[0], ipbytes[1], ipbytes[2], i));
                for (int i = 2; i <= 255; i++)
                    list.Add(string.Format("{0}.{1}.{2}.{3}", 169, 254, 17, i));
            }

            ListOfIPs = list;
        }

        public void FullBuildPingList()
        {
            List<string> list = new List<string>();
            int i;
            int j;
            FindScanIP[] mIps = new FindScanIP[10];
            for (i = 0; i < 10; i++)
            {
                mIps[i] = new FindScanIP(0);
            }

            int count = NetUtilities.GetLocalIPAddress(ref mIps);

            for (i = 0; i < count; i++)
            {
                for (j = 2; j <= 255; j++)
                {
                    list.Add(string.Format("{0}.{1}.{2}.{3}", mIps[i].IpAddress[0], mIps[i].IpAddress[1], mIps[i].IpAddress[2], j));
                }
            }
           
            ListOfIPs = list;
        }

        public async Task ScanAsync()
        {
            try
            {
                SearchedDevice.Clear();

                var longRunningTask = PingAsync();
                var result = await longRunningTask;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private async Task<List<PingReply>> PingAsync()
        {
            var tasks = ListOfIPs.Select(ip => SendPingAsync(ip));
            var results = await Task.WhenAll(tasks);

            return results.ToList();
        }

        private Task<PingReply> SendPingAsync(string ip, int timeout = 2000)
        {
            Ping pingSender = new Ping();
            pingSender.PingCompleted += new PingCompletedEventHandler(OnPingCompleted);
            return pingSender.SendPingAsync(ip, timeout); 
        }

        private void OnPingCompleted(object sender, PingCompletedEventArgs e)
        {
            Ping ping = (Ping)sender;
            stConnCfg mConnCfg = new stConnCfg();
            if (e.Reply.Status == IPStatus.Success)
            {
                PhysicalAddress mac = NetUtilities.GetMacUsingARP(e.Reply.Address);

                if (IsRightDevice(mac))
                {
                    if (isRightSifOfZim(e.Reply.Address,ref mConnCfg))
                    {
                        SearchedDevice.Add(e.Reply.Address.ToString(), Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0'));
                    }

                }
            }

            PingCompleted?.Invoke(sender, e);
        }
       
        private bool IsRightDevice(PhysicalAddress mac)
        {
            long physical = long.Parse(mac.ToString(), NumberStyles.HexNumber);

            if (physical >= DeviceConstants.MIN_MAC_ADDR && physical <= DeviceConstants.MAX_MAC_ADDR)
            {
                return true;
            }
            return false;
        }

        private bool isRightSifOfZim(IPAddress ipAddress, ref stConnCfg mConnCfg)
        {
            bool bret = false;
            CommObj mCommZim = new CommObj();
            stSystemConfig mSystemConfig = new stSystemConfig();
            mCommZim.mConnTargetCfg.Port = 2000;
            mCommZim.mConnTargetCfg.IpAddress = ipAddress.GetAddressBytes();

            if (mCommZim.Connect())
            {
                if (mCommZim.ReadSifInfo(ref mSystemConfig)) 
                {
                    if(mSystemConfig.ID == 0xC2 || mSystemConfig.ID == 0xC3)
                    {
                        if(mCommZim.ReadSifConnInfo(ref mConnCfg))
                        {
                            bret = true;
                        }
                        else
                        {
                            bret = false;
                        }
                    }
                    else
                    {
                        bret = false;
                    }
                }
                else
                {
                    bret = false;
                }
                mCommZim.Dispose();
            }
            else
            {
                bret = false;
            }
            return bret;
        }


        public byte[] localIPAddress()
        {
            IPHostEntry host;
            byte[] localIP = null;
            host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (IPAddress ip in host.AddressList)
            {
                localIP = ip.GetAddressBytes();

                if (ip.AddressFamily == AddressFamily.InterNetwork && localIP[0] == 192)
                {

                    break;
                }
                else localIP = null;
            }
            return localIP;
        }
    }

    public class PingHost1
    {
        public Dictionary<string, PhysicalAddress> SearchedDevice { get; private set; } //PhysicalAddress

        public List<string> ListOfIPs { get; private set; }

        public event EventHandler PingCompleted;

        public PingHost1(EventHandler pingCompleted = null)
        {
            SearchedDevice = new Dictionary<string, PhysicalAddress>();

            FullBuildPingList();

            PingCompleted = pingCompleted;
        }

        private void BuildPingList()
        {
            List<string> list = new List<string>();

            byte[] ipbytes = NetUtilities.GetLocalIPAddress();
            if (ipbytes != null)
            {
                for (int i = 2; i <= 255; i++)
                    list.Add(string.Format("{0}.{1}.{2}.{3}", ipbytes[0], ipbytes[1], ipbytes[2], i));

                for (int i = 2; i <= 255; i++)
                    list.Add(string.Format("{0}.{1}.{2}.{3}", 169, 254, 17, i));
            }

            ListOfIPs = list;
        }

        public void FullBuildPingList()
        {
            List<string> list = new List<string>();
            FindScanIP[] mIps = new FindScanIP[10];
            for (int i = 0; i < 10; i++)
            {
                mIps[i] = new FindScanIP(0);
            }

            int count = NetUtilities.GetLocalIPAddress(ref mIps);

            for (int i = 0; i < count; i++)
            {
                for (int j = 2; j <= 255; j++)
                {
                    list.Add(string.Format("{0}.{1}.{2}.{3}", mIps[i].IpAddress[0], mIps[i].IpAddress[1], mIps[i].IpAddress[2], j));
                }
            }
          
            ListOfIPs = list;
        }

        public async Task ScanAsync()
        {
            try
            {
                SearchedDevice.Clear();

                var longRunningTask = PingAsync();
                var result = await longRunningTask;
            }
            catch (Exception)
            { }
        }

        private async Task<List<PingReply>> PingAsync()
        {
            var tasks = ListOfIPs.Select(ip => SendPingAsync(ip));
            var results = await Task.WhenAll(tasks);

            return results.ToList();
        }

        private Task<PingReply> SendPingAsync(string ip, int timeout = 2000)
        {
            Ping pingSender = new Ping();
            pingSender.PingCompleted += new PingCompletedEventHandler(OnPingCompleted);
            return pingSender.SendPingAsync(ip, timeout);
        }

        private void OnPingCompleted(object sender, PingCompletedEventArgs e)
        {
            Ping ping = (Ping)sender;
            stConnCfg mConnCfg = new stConnCfg();
            if (e.Reply.Status == IPStatus.Success)
            {
                PhysicalAddress mac = NetUtilities.GetMacUsingARP(e.Reply.Address);

                if (IsRightDevice(mac))
                {
                    if (isRightSifOfZim(e.Reply.Address, ref mConnCfg))
                    {
                        SearchedDevice.Add(e.Reply.Address.ToString(), mac);
                    }

                }
            }

            PingCompleted?.Invoke(sender, e);
        }

        private bool IsRightDevice(PhysicalAddress mac)
        {
            long physical = long.Parse(mac.ToString(), NumberStyles.HexNumber);

            if (physical >= DeviceConstants.MIN_MAC_ADDR && physical <= DeviceConstants.MAX_MAC_ADDR)
            {
                return true;
            }
            return false;
        }

        private bool isRightSifOfZim(IPAddress ipAddress, ref stConnCfg mConnCfg)
        {
            CommObj mCommZim = new CommObj();
            stSystemConfig mSystemConfig = new stSystemConfig();
            mCommZim.mConnTargetCfg.Port = 2000;
            mCommZim.mConnTargetCfg.IpAddress = ipAddress.GetAddressBytes();

            if (mCommZim.Connect())
            {
                if (mCommZim.ReadSifInfo(ref mSystemConfig))
                {
                    if (mSystemConfig.ID == 0xC2 || mSystemConfig.ID == 0xC3)
                    {
                        if (mCommZim.ReadSifConnInfo(ref mConnCfg))
                        {
                            mCommZim.Dispose();
                            return true;
                        }
                    }
                }
                mCommZim.Dispose();
            }

            return false;
        }


        public byte[] localIPAddress()
        {
            IPHostEntry host;
            byte[] localIP = null;
            host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (IPAddress ip in host.AddressList)
            {
                localIP = ip.GetAddressBytes();

                if (ip.AddressFamily == AddressFamily.InterNetwork && localIP[0] == 192)
                {
                    break;
                }
                else localIP = null;
            }
            return localIP;
        }
    }
}
