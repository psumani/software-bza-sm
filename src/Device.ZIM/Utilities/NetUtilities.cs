using System;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Runtime.InteropServices;

namespace ZiveLab.Device.ZIM.Utilities
{
    public struct FindScanIP // rename to SIFConfiguration
    {
        public byte[] IpAddress;

        public FindScanIP(byte init)
        {
            IpAddress = new byte[3];

            IpAddress[0] = 192;
            IpAddress[1] = 168;
            IpAddress[2] = 0;
        }
    };

    public static class NetUtilities
    {
        // see https://stackoverflow.com/questions/850650/reliable-method-to-get-machines-mac-address-in-c-sharp

        [DllImport("iphlpapi.dll", ExactSpelling = true)]
        static extern int SendARP(int DestIP, int SrcIP, byte[] pMacAddr, ref int PhyAddrLen);

        public static PhysicalAddress GetMacUsingARP(this IPAddress ipAddress)
        {
            const int MacAddressLength = 6;
            int length = MacAddressLength;
            var macBytes = new byte[MacAddressLength];
            SendARP(BitConverter.ToInt32(ipAddress.GetAddressBytes(), 0), 0, macBytes, ref length);
            return new PhysicalAddress(macBytes);
        }

        public static bool ChkExistLocalIPAddress(FindScanIP[] mArrIp, FindScanIP mIp, int count)
        {
            int i;
            for (i = 0; i < count; i++)
            {
                if (mArrIp[i].IpAddress[0] == mIp.IpAddress[0]
                    && mArrIp[i].IpAddress[1] == mIp.IpAddress[1])
//                    && mArrIp[i].IpAddress[2] == mIp.IpAddress[2])
                {
                    return true;
                }
            }
            return false;
        }

        public static int GetLocalIPAddress(ref FindScanIP[] mArrIp)
        {
            IPHostEntry host;
            byte[] localIP = null;
            int FindCount = 0;
            FindScanIP mIp = new FindScanIP(0);


            host = Dns.GetHostEntry(Dns.GetHostName());

            foreach (IPAddress ip in host.AddressList)
            {
                localIP = ip.GetAddressBytes();
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {


                    if (localIP[0] == 192)
                    {

                        mIp.IpAddress[0] = localIP[0];
                        mIp.IpAddress[1] = localIP[1];
                        mIp.IpAddress[2] = localIP[2];
                        if (ChkExistLocalIPAddress(mArrIp, mIp, FindCount) == false)
                        {
                            mArrIp[FindCount].IpAddress[0] = mIp.IpAddress[0];
                            mArrIp[FindCount].IpAddress[1] = mIp.IpAddress[1];
                            mArrIp[FindCount].IpAddress[2] = mIp.IpAddress[2];
                            FindCount++;
                            if (FindCount >= 10) break;
                        }
                    }
                    else if (localIP[0] == 169)
                    {
                        mIp.IpAddress[0] = 169;
                        mIp.IpAddress[1] = 254;
                        mIp.IpAddress[2] = localIP[2]; //17;
                        if (ChkExistLocalIPAddress(mArrIp, mIp, FindCount) == false)
                        {
                            mArrIp[FindCount].IpAddress[0] = mIp.IpAddress[0];
                            mArrIp[FindCount].IpAddress[1] = mIp.IpAddress[1];
                            mArrIp[FindCount].IpAddress[2] = mIp.IpAddress[2];
                            FindCount++;
                            if (FindCount >= 10) break;
                        }
                    }
                }
            }
            return FindCount;
        }

        public static byte[] GetLocalIPAddress()
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

        public static string GetHostName(this string ipAddress)
        {
            try
            {
                IPHostEntry entry = Dns.GetHostEntry(ipAddress);
                if (entry != null)
                {
                    return entry.HostName;
                }
            }
            catch (SocketException ex)
            {
                Debug.WriteLine(ex.ToString());
                //unknown host or not every IP has a name 
                //log exception (manage it)
            }

            return null;
        }

        public static string GetHostName(this IPAddress ipAddress)
        {
            try
            {
                IPHostEntry entry = Dns.GetHostEntry(ipAddress);
                if (entry != null)
                {
                    return entry.HostName;
                }
            }
            catch (SocketException ex)
            {
                Debug.WriteLine(ex.ToString());
                //unknown host or not every IP has a name 
                //log exception (manage it)
            }

            return null;
        }
    }
}
