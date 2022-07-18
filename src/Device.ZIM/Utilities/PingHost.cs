using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using ZiveLab.Device.ZIM.Packets;

namespace ZiveLab.Device.ZIM.Utilities
{
    public class PingHost
    {
        public bool chksearchdhcp;
        public Dictionary<string, stFindDevice> SearchedDevice { get; private set; } //PhysicalAddress
        public Dictionary<string, stFindDevice> SearchedErrDevice { get; private set; } //PhysicalAddress

        public List<string> ListOfIPs { get; private set; }

        public event EventHandler PingCompleted;

        public PingHost(bool bSearch, EventHandler pingCompleted = null)
        {
            chksearchdhcp = bSearch;
            SearchedDevice = new Dictionary<string, stFindDevice>();
            SearchedErrDevice = new Dictionary<string, stFindDevice>();
            FullBuildPingList();
            
            PingCompleted = pingCompleted;            
        }

        private void BuildPingList()
        {
            List<string> list = new List<string>();

            byte[] ipbytes = NetUtilities.GetLocalIPAddress();
            if (ipbytes != null)
            {
                if (chksearchdhcp == true)
                {
                    for (int i = 2; i <= 255; i++)
                        list.Add(string.Format("{0}.{1}.{2}.{3}", ipbytes[0], ipbytes[1], ipbytes[2], i));
                }

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
            bool bdirect = false; 

            FindScanIP[] mIps = new FindScanIP[10];
            for (i = 0; i < 10; i++)
            {
                mIps[i] = new FindScanIP(0);
            }
            if (chksearchdhcp == true)
            {
                int count = NetUtilities.GetLocalIPAddress(ref mIps);

                for (i = 0; i < count; i++)
                {
                    if (mIps[i].IpAddress[0] == 169 && mIps[i].IpAddress[1] == 254 && mIps[i].IpAddress[2] == 17)
                    {
                        bdirect = true;
                    }
                    for (j = 2; j <= 255; j++)
                    {
                        list.Add(string.Format("{0}.{1}.{2}.{3}", mIps[i].IpAddress[0], mIps[i].IpAddress[1], mIps[i].IpAddress[2], j));
                    }
                }
            }
            if(bdirect == false)
            {
                for (j = 2; j <= 255; j++)
                {
                    list.Add(string.Format("{0}.{1}.{2}.{3}", 169, 254, 17, j));
                }
            }
            ListOfIPs = list;
        }

        public async Task ScanAsync()
        {
            try
            {
                SearchedDevice.Clear();
                SearchedErrDevice.Clear();
                var longRunningTask = PingAsync();
                var result = await longRunningTask;
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }

        private async Task<List<PingReply>> PingAsync()
        {
            try
            {
                var tasks = ListOfIPs.Select(ip => SendPingAsync(ip));
                var results = await Task.WhenAll(tasks);
                return results.ToList();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }

            return null;
        }

        private Task<PingReply> SendPingAsync(string ip, int timeout = 2000)
        {
            try
            {
                Ping pingSender = new Ping();
                pingSender.PingCompleted += new PingCompletedEventHandler(OnPingCompleted);
                return pingSender.SendPingAsync(ip, timeout);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                Thread.Sleep(5000);
            }
            return null;
        }

        private void OnPingCompleted(object sender, PingCompletedEventArgs e)
        {
            Ping ping = (Ping)sender;

            stFindDevice mfindDevice = new stFindDevice();
            
            if (e.Reply.Status == IPStatus.Success)
            {
                mfindDevice.mac = NetUtilities.GetMacUsingARP(e.Reply.Address);

                if (IsRightDevice(mfindDevice.mac) == true)
                {

                    if (isRightSifOfZim(e.Reply.Address, ref mfindDevice) == true)
                    {
                        SearchedDevice.Add(e.Reply.Address.ToString(), mfindDevice);
                    }
                    else
                    {
                        SearchedErrDevice.Add(e.Reply.Address.ToString(), mfindDevice);
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

        private bool isRightSifOfZim(IPAddress ipAddress, ref stFindDevice mdev)
        {
            stConnCfg mConnCfg = new stConnCfg(0);
            CommObj mCommZim = new CommObj();
            mCommZim.mConnTargetCfg.Port = 2001;
            mCommZim.mConnTargetCfg.IpAddress = ipAddress.GetAddressBytes();

            if (mCommZim.Connect(true))
            {
                mdev.chkconnected = true;
                if (mCommZim.ReadFindSifcfg(ref mdev.findsifcfg))
                {
                    if (mdev.findsifcfg.Type == (byte)eDeviceType.SBZA || mdev.findsifcfg.Type == (byte)eDeviceType.MBZA)
                    {
                        if (mCommZim.ReadSifConnInfo(ref mConnCfg))
                        {
                            mdev.shostname = Encoding.Default.GetString(mConnCfg.mEthernetCfg.hostname).Trim('\0');
                            if (mdev.findsifcfg.SockStat == (byte)eSockStatus.LISTEN)
                            {
                                mdev.busy = false;
                                mCommZim.Dispose();
                                return true;
                            }
                            else
                            {
                                mdev.busy = true;
                            }
                        }
                        else
                        {
                            mdev.shostname = "Error";
                        }
                    }
                }
                else
                {
                    mdev.findsifcfg.Type = (byte)eDeviceType.UNKNOWN;
                }
                mCommZim.Dispose();
            }
            else
            {
                mdev.chkconnected = false;
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

    public class PingHost1
    {
        public int PingCount;
        public bool chksearchdhcp;
        public Dictionary<string, stFindDevice> SearchedDevice { get; private set; } //PhysicalAddress
        public Dictionary<string, stFindDevice> SearchedErrDevice { get; private set; } //PhysicalAddress

        public List<string> ListOfIPs { get; private set; }

        public event EventHandler PingCompleted;

        public PingHost1(bool bSearch, EventHandler pingCompleted = null)
        {
            chksearchdhcp = bSearch;
            SearchedDevice = new Dictionary<string, stFindDevice>();
            SearchedErrDevice = new Dictionary<string, stFindDevice>();

            FullBuildPingList();
            PingCount = 0;
            PingCompleted = pingCompleted;
        }

        private void BuildPingList()
        {
            List<string> list = new List<string>();
            
            byte[] ipbytes = NetUtilities.GetLocalIPAddress();

            if (ipbytes != null)
            {
                if (chksearchdhcp == true)
                { 
                    for (int i = 2; i <= 255; i++)
                        list.Add(string.Format("{0}.{1}.{2}.{3}", ipbytes[0], ipbytes[1], ipbytes[2], i));
                }

                for (int i = 2; i <= 255; i++)
                    list.Add(string.Format("{0}.{1}.{2}.{3}", 169, 254, 17, i));
            }

            ListOfIPs = list;
            PingCount = 0;
        }

        public void FullBuildPingList()
        {
            List<string> list = new List<string>();
            int i;
            int j;
            FindScanIP[] mIps = new FindScanIP[10];
            bool bdirect = false;
            for (i = 0; i < 10; i++)
            {
                mIps[i] = new FindScanIP(0);
            }

            if (chksearchdhcp == true)
            {
                int count = NetUtilities.GetLocalIPAddress(ref mIps);

                for (i = 0; i < count; i++)
                {
                    if (mIps[i].IpAddress[0] == 169 && mIps[i].IpAddress[1] == 254 && mIps[i].IpAddress[2] == 17)
                    {
                        bdirect = true;
                    }
                    for (j = 2; j <= 255; j++)
                    {
                        list.Add(string.Format("{0}.{1}.{2}.{3}", mIps[i].IpAddress[0], mIps[i].IpAddress[1], mIps[i].IpAddress[2], j));
                    }
                }
            }

            if (bdirect == false)
            {
                for (j = 2; j <= 255; j++)
                {
                    list.Add(string.Format("{0}.{1}.{2}.{3}", 169, 254, 17, j));
                }
            }
            ListOfIPs = list;
            PingCount = 0;
        }

        public async Task ScanAsync()
        {
            try
            {
                SearchedDevice.Clear();
                SearchedErrDevice.Clear();

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
            Thread.Sleep(1);
            return results.ToList();
        }

        private Task<PingReply> SendPingAsync(string ip, int timeout = 2000)
        {
            try
            {
                Ping pingSender = new Ping();
                pingSender.PingCompleted += new PingCompletedEventHandler(OnPingCompleted);
                return pingSender.SendPingAsync(ip, timeout);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                Thread.Sleep(5000);
            }

            return null;
        }

        private void OnPingCompleted(object sender, PingCompletedEventArgs e)
        {
            Ping ping = (Ping)sender;

            stFindDevice mfindDevice = new stFindDevice();
            if (e.Reply.Status == IPStatus.Success)
            {
                mfindDevice.mac = NetUtilities.GetMacUsingARP(e.Reply.Address);

                if (IsRightDevice(mfindDevice.mac) == true)
                {
                    
                    if (isRightSifOfZim(e.Reply.Address, ref mfindDevice) == true)
                    {
                        SearchedDevice.Add(e.Reply.Address.ToString(), mfindDevice);
                    }
                    else
                    {
                        SearchedErrDevice.Add(e.Reply.Address.ToString(), mfindDevice);
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

        private bool isRightSifOfZim(IPAddress ipAddress, ref stFindDevice mdev)
        {
            CommObj mCommZim = new CommObj();
            mCommZim.mConnTargetCfg.Port = 2001;
            mCommZim.mConnTargetCfg.IpAddress = ipAddress.GetAddressBytes();

            if (mCommZim.Connect(true))
            {
                mdev.chkconnected = true;
                if (mCommZim.ReadFindSifcfg(ref mdev.findsifcfg))
                {
                    if (mdev.findsifcfg.Type == (byte)eDeviceType.SBZA || mdev.findsifcfg.Type == (byte)eDeviceType.MBZA)
                    {
                        if (mdev.findsifcfg.SockStat == (byte)eSockStatus.LISTEN)
                        {
                            mdev.busy = false;
                            mCommZim.Dispose();
                            return true;
                        }
                        else
                        {
                            mdev.busy = true;
                        }
                    }
                }
                else
                {
                    mdev.findsifcfg.Type = (byte)eDeviceType.UNKNOWN;
                }
                mCommZim.Dispose();
            }
            else
            {
                mdev.chkconnected = false;
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
