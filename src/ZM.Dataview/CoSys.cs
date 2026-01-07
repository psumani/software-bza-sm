using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Text;

namespace ZiveLab.ZM.Dataview
{

    public class CoSys
    {
        

        [DllImport("User32", EntryPoint = "FindWindow")]
        private static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

        [DllImport("user32.dll")]
        public static extern void SetForegroundWindow(IntPtr hWnd);

        [DllImport("user32.dll")]
        public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
        private const int SW_SHOWNORMAL = 1;

        [DllImport("user32.dll")]
        public static extern int GetWindowTextLength(IntPtr hWnd);

        [DllImport("user32.dll")]
        public static extern int GetWindowText(IntPtr hWnd, StringBuilder lpString, int nMaxCount);

        public delegate bool EnumThreadDelegate(IntPtr hWnd, IntPtr lParam);

        [DllImport("user32.dll")]
        public static extern bool EnumThreadWindows(int dwThreadId, EnumThreadDelegate lpfn, IntPtr lParam);

        public enum WinVersion { Win95, Win98, WinMe, WinNT40, Win2000, WinXP, WinServer2003, WinVista, Win7, Unknown };

        public enum WinArchitecture { x86, amd64, ia64 };

        static public WinVersion GetWindowsVersion()
        {
            WinVersion wv = WinVersion.Unknown;

            OperatingSystem os = Environment.OSVersion;

            switch (os.Platform)
            {
                case PlatformID.Win32Windows:
                    if (os.Version.Major == 4)
                    {
                        switch (os.Version.Minor)
                        {
                            case 0:
                                wv = WinVersion.Win95;
                                break;

                            case 10:
                                wv = WinVersion.Win98;
                                break;

                            case 90:
                                wv = WinVersion.WinMe;
                                break;
                        }
                    }
                    break;

                case PlatformID.Win32NT:
                    if (os.Version.Major == 4)
                    {
                        wv = WinVersion.WinNT40;
                    }
                    else if (os.Version.Major == 5)
                    {
                        switch (os.Version.Minor)
                        {
                            case 0:
                                wv = WinVersion.Win2000;
                                break;

                            case 1:
                                wv = WinVersion.WinXP;
                                break;

                            case 2:
                                wv = WinVersion.WinServer2003;
                                break;
                        }
                    }
                    else if (os.Version.Major == 6)
                    {
                        switch (os.Version.Minor)
                        {
                            case 0:
                                wv = WinVersion.WinVista;
                                break;

                            case 1:
                                wv = WinVersion.Win7;
                                break;
                        }
                    }
                    break;
            }

            return wv;
        }

        static public WinArchitecture GetWindowsArchitecture()
        {
            if (Environment.GetEnvironmentVariable("PROCESSOR_ARCHITECTURE") == "AMD64"
                || Environment.GetEnvironmentVariable("PROCESSOR_ARCHITEW6432") == "AMD64")
            {
                return WinArchitecture.amd64;
            }

            if (Environment.GetEnvironmentVariable("PROCESSOR_ARCHITECTURE") == "IA64"
                || Environment.GetEnvironmentVariable("PROCESSOR_ARCHITEW6432") == "IA64")
            {
                return WinArchitecture.ia64;
            }

            return WinArchitecture.x86;
        }

        #region 절전모드/화면꺼짐 방지
        public enum EXECUTION_STATE : uint
        {
            ES_AWAYMODE_REQUIRED = 0x00000040,
            ES_CONTINUOUS = 0x80000000,
            ES_DISPLAY_REQUIRED = 0x00000002,
            ES_SYSTEM_REQUIRED = 0x00000001
        }

        [DllImport("kernel32.dll", CharSet = CharSet.Auto, SetLastError = true)]
        static extern EXECUTION_STATE SetThreadExecutionState(EXECUTION_STATE esFlags);

        public static void PreventScreenAndSleep()
        {
            SetThreadExecutionState(EXECUTION_STATE.ES_CONTINUOUS |
                                   EXECUTION_STATE.ES_SYSTEM_REQUIRED |
                                   EXECUTION_STATE.ES_AWAYMODE_REQUIRED |
                                   EXECUTION_STATE.ES_DISPLAY_REQUIRED);
        }

        public static void AllowMonitorPowerDown()
        {
            SetThreadExecutionState(EXECUTION_STATE.ES_CONTINUOUS);
        }
        #endregion

        #region INI Read/Write
        [DllImport("kernel32")]
        public static extern long WritePrivateProfileString(string Section, string Key, string Value, string FilePath);
        [DllImport("kernel32")]
        public static extern int GetPrivateProfileString(string Section, string Key, string Default, StringBuilder RetVal, int Size, string FilePath);
        #endregion

        #region Mac Address Provider
        const int PING_TIMEOUT = 1000;

        [DllImport("iphlpapi.dll", ExactSpelling = true)]
        static extern int SendARP(int DestIP, int SrcIP, byte[] pMacAddr, ref int PhyAddrLen);

        // *********************************************************************
        /// <summary>
        /// Gets the MAC address from ARP table in colon (:) separated format.
        /// </summary>
        /// <param name="hostNameOrAddress">Host name or IP address of the
        /// remote host for which MAC address is desired.</param>
        /// <returns>A string containing MAC address; null if MAC address could
        /// not be found.</returns>
        //public static string GetMACAddressFromARP(string hostNameOrAddress)
        //{
        //    if (!IsHostAccessible(hostNameOrAddress))
        //        return null;

        //    IPHostEntry hostEntry = Dns.GetHostEntry(hostNameOrAddress);

        //    if (hostEntry.AddressList.Length == 0)
        //        return null;


        //    byte[] macAddr = new byte[6];

        //    uint macAddrLen = (uint)macAddr.Length;

        //    if (SendARP((int)hostEntry.AddressList[0].Address, 0, macAddr, ref macAddrLen) != 0)
        //        return null;

        //    StringBuilder macAddressString = new StringBuilder();
        //    for (int i = 0; i < macAddr.Length; i++)
        //    {
        //        if (macAddressString.Length > 0)
        //            macAddressString.Append(":");
        //        macAddressString.AppendFormat("{0:x2}", macAddr[i]);
        //    }
        //    return macAddressString.ToString();
        //}

        public static PhysicalAddress GetMacAddress(IPAddress ipAddress)
        {
            const int MacAddressLength = 6;
            int length = MacAddressLength;
            var macBytes = new byte[MacAddressLength];
            SendARP(BitConverter.ToInt32(ipAddress.GetAddressBytes(), 0), 0, macBytes, ref length);
            return new PhysicalAddress(macBytes);
        }

        // *********************************************************************
        /// <summary>
        /// Checks to see if the host specified by
        /// <paramref name="hostNameOrAddress"/> is currently accessible.
        /// </summary>
        /// <param name="hostNameOrAddress">Host name or IP address of the
        /// remote host for which MAC address is desired.</param>
        /// <returns><see langword="true" /> if the host is currently accessible;
        /// <see langword="false"/> otherwise.</returns>
        private static bool IsHostAccessible(string hostNameOrAddress)
        {
            Ping ping = new Ping();
            PingReply reply = ping.Send(hostNameOrAddress, PING_TIMEOUT);
            return reply.Status == IPStatus.Success;
        }

        public static byte[] localIPAddress()
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
        #endregion

        public static int GetHDDPercent(string targetdriver = @"C:\")
        {
            int nPercent = 0;
            try
            {
                // 드라이브 정보에 엑세스하여 모든 논리 드라이브의 이름을 가져옴
                System.IO.DriveInfo[] drives = System.IO.DriveInfo.GetDrives();
                foreach (System.IO.DriveInfo drive in drives)
                {
                    if (drive.Name == targetdriver)
                    {
                        // 드라이브 전체 용량
                        int maxc = (int)(drive.TotalSize / 1000000);
                        // 사용중인 용량 ( 전체 용량 - 사용 가능한 용량 )
                        int cst = (int)((drive.TotalSize - drive.AvailableFreeSpace) / 1000000);

                        nPercent = (int)((float)((float)cst / (float)maxc) * 100);
                    }
                }
            }
            catch (Exception e)
            {
                Trace.WriteLine("Exception : " + e.Message);
            }

            return nPercent;
        }        

        public static bool ActiveProcess(string procName)
        {
            bool result = false;

            Process[] processes = Process.GetProcessesByName(procName);

            if (processes.Length > 0)
            {
                foreach (Process process in processes)
                {
                    IntPtr procHandler = FindWindow(null, process.MainWindowTitle);
                    int length = GetWindowTextLength(procHandler);

                    string[] split = process.MainWindowTitle.Split('-');

                    if(split.Length >= 2)
                    {
                        ShowWindow(procHandler, SW_SHOWNORMAL);
                        SetForegroundWindow(procHandler);
                    }
                    else
                    {
                        result = true;

                        ShowWindow(procHandler, SW_SHOWNORMAL);
                        SetForegroundWindow(procHandler);                        
                    }                
                }
            }

            return result;
        }

        public static bool ActiveProcess(string procName, string titleName, string exceptstring = "")
        {
            bool result = false;

            Process[] processes = Process.GetProcessesByName(procName);

            if (processes.Length > 0)
            {
                foreach (Process process in processes)
                {
                    IntPtr procHandler = FindWindow(null, process.MainWindowTitle);

                    List<IntPtr> subHandles = new List<IntPtr>();

                    foreach (ProcessThread thread in process.Threads)
                    {
                        EnumThreadWindows(thread.Id, (hWnd, lParam) => { subHandles.Add(hWnd); return true; }, IntPtr.Zero);
                    }

                    foreach (IntPtr subHandle in subHandles)
                    {
                        StringBuilder sbWinText = new StringBuilder(300);
                        int res = GetWindowText(subHandle, sbWinText, 300);

                        string title = sbWinText.ToString();

                        if (exceptstring != "")
                        {
                            if (!title.Contains(exceptstring) && title.Contains(titleName))
                            {
                                string[] split = title.Split('-');

                                if (split.Length >= 2)
                                {
                                    ShowWindow(subHandle, SW_SHOWNORMAL);
                                    SetForegroundWindow(subHandle);
                                }
                                else
                                {
                                    result = true;

                                    ShowWindow(subHandle, SW_SHOWNORMAL);
                                    SetForegroundWindow(subHandle);
                                }

                                break;
                            }
                        }
                        else
                        {
                            if (title.Contains(titleName))
                            {
                                string[] split = title.Split('-');

                                if (split.Length >= 2)
                                {
                                    ShowWindow(subHandle, SW_SHOWNORMAL);
                                    SetForegroundWindow(subHandle);
                                }
                                else
                                {
                                    result = true;

                                    ShowWindow(subHandle, SW_SHOWNORMAL);
                                    SetForegroundWindow(subHandle);
                                }

                                break;
                            }
                        }
                    }
                }
            }

            return result;
        }

        public static bool CloseProcess(string procName)
        {
            bool result = false;

            Process[] processes = Process.GetProcessesByName(procName);

            if (processes.Length > 0)
            {
                result = true;

                foreach (Process process in processes)
                {
                    process.CloseMainWindow();
                }
            }

            return result;
        }

        public static bool CloseProcessByFileName(string filename)
        {
            bool result = false;

            if (File.Exists(filename))
            {
                string procName = Path.GetFileNameWithoutExtension(filename);

                Process[] processes = Process.GetProcessesByName(procName);

                if (processes.Length > 0)
                {
                    result = true;

                    foreach (Process process in processes)
                    {
                        process.CloseMainWindow();
                    }
                }
            }

            return result;
        }
    }
}
