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
using System.Windows.Forms;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM.ZIM.Utilities
{
    public class PingHost
    {
        public bool chksearchdhcp;
        public Dictionary<string, stScanBzaInf> SearchedDevice { get; private set; } //PhysicalAddress
    
        public List<string> ListOfIPs { get; private set; }

        public event EventHandler PingCompleted;

        public PingHost(bool bSearch, EventHandler pingCompleted = null)
        {
            chksearchdhcp = bSearch;
            SearchedDevice = new Dictionary<string, stScanBzaInf>();
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
            int i = 0;
            int j = 0;
            bool bdirect = false;

            List<string> list = new List<string>();
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

            if (bdirect == false)
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

            if (e.Reply.Status == IPStatus.Success)
            {
                PhysicalAddress mac = NetUtilities.GetMacUsingARP(e.Reply.Address);

                if (IsRightDevice(mac))
                {
                    stScanBzaInf mScanBzaInf = new stScanBzaInf(0);
                    mScanBzaInf.sMac = mac.ToString();

                    if(isRightSifOfZim(e.Reply.Address, ref mScanBzaInf) == false)
                    {
                        
                    }
                    mScanBzaInf.bError = 0;
                    SearchedDevice.Add(e.Reply.Address.ToString(), mScanBzaInf);
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

        private bool isRightSifOfZim(IPAddress ipAddress, ref stScanBzaInf mScanBzaInf)
        {
            CommObj mCommZim = new CommObj();

            mCommZim.mConnTargetCfg.Port = 2001;
            mCommZim.mConnTargetCfg.IpAddress = ipAddress.GetAddressBytes();
            
            mScanBzaInf.bBza = 0;
            mScanBzaInf.bConnected = 0;
            mScanBzaInf.bError = 0;
            mScanBzaInf.bBusy = 1;
            if (mCommZim.Connect())
            {
                
                mScanBzaInf.bConnected = 1;

                if (mCommZim.ReadFindSifcfg(ref mScanBzaInf.mFindSifCfg) == false)
                {
                    mScanBzaInf.bError = 1;
                    mCommZim.Dispose();
                    return false;
                }

                if (mScanBzaInf.mFindSifCfg.Type != (byte)eDeviceType.SBZA && mScanBzaInf.mFindSifCfg.Type != (byte)eDeviceType.MBZA)
                {
                    mScanBzaInf.bBza = 0;
                    mCommZim.Dispose();
                    return false;
                }

                mScanBzaInf.bBza = 1;
                if (mScanBzaInf.mFindSifCfg.SockStat != (byte)eSockStatus.LISTEN)
                {
                    mScanBzaInf.bBusy = 1;
                    mCommZim.Dispose();
                    return false;
                }
                mScanBzaInf.bBusy = 0;
                if (mCommZim.CmdSetCmdMode(1) == false)
                {
                    mScanBzaInf.bError = 1;
                    mCommZim.Dispose();
                    return false;
                }

                if (mCommZim.CmdEnableCommTimeOut(0) == false)
                {
                    mScanBzaInf.bError = 1;
                    mCommZim.Dispose();
                    return false;
                }
                Thread.Sleep(10);

                if (mCommZim.ReadData(ref mScanBzaInf.mDevInf))
                {
                    mScanBzaInf.bBza = 1;
                    mCommZim.Dispose();
                    return true;
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

