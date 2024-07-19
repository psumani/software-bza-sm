using System;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM.ZIM
{
    public class CommObj : IDisposable
    {
        public bool isConnected;
        public int LimitTimerOut;
        public int  iEnableCommTimeout;
        public int iSifMode;

        public SIFCom mComm;
        public stConnTargetCfg mConnTargetCfg; // rename to NetworkEndPoint
        public eDeviceType mDevType;
        public int Sifid;
        public stSIFCfg mConnectSifCfg;
        public CommObj(int tTimerOut = 8000)
        {
            LimitTimerOut = tTimerOut;
            mConnTargetCfg = new stConnTargetCfg(0);
            mConnectSifCfg = new stSIFCfg(0);
            mDevType = eDeviceType.SBZA;
            Sifid = DeviceConstants.ID_ZIMCONFIG;
            isConnected = false;
            iEnableCommTimeout = 0;
            iSifMode = 1;
            this.disposed = false;
        }

        public byte[] HostNameToIP(string sHost)
        {
            IPAddress ip = IPAddress.Parse(sHost);
            return ip.GetAddressBytes();
        }

        public bool HostNameToIP(string sHost, ref byte[] Address)
        {
            IPAddress ip;
            if(IPAddress.TryParse(sHost, out ip) == false)
            {
                return false;
            }
            Address = ip.GetAddressBytes();

            return true;
        }

        public string GetHostName(byte bIp0, byte bIp1, byte bIp2, byte bIp3)
        {
            return string.Format("{0}.{1}.{2}.{3}", bIp0, bIp1, bIp2, bIp3);
        }
        public string GetHostName()
        {
            return string.Format("{0}.{1}.{2}.{3}", mConnTargetCfg.IpAddress[0],
                mConnTargetCfg.IpAddress[1], mConnTargetCfg.IpAddress[2], mConnTargetCfg.IpAddress[3]);
        }        
        private bool CheckMacAddress(PhysicalAddress mac)
        {
            Int64 physical = Int64.Parse(mac.ToString(), NumberStyles.HexNumber);

            if (physical >= DeviceConstants.MIN_MAC_ADDR && physical <= DeviceConstants.MAX_MAC_ADDR)
            {
                return true;
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

        void DisonnectProc(object sender, EventArgs e)
        {
            isConnected = false;
            iEnableCommTimeout = 0;
            mDevType = eDeviceType.WBCS;
            Debug.WriteLine(" received this message: {0}", e.ToString());
        }
        
        public bool Connect()
        {
            if (mComm != null)
            {
                
                mComm.Dispose();
            }

            Thread.Sleep(1000);

            isConnected = false;
            
            string hn = GetHostName();

            mComm = new SIFCom(hn, mConnTargetCfg.Port);

            if (mComm.Connect(LimitTimerOut) == false)
            {
                return false;
            }

            /*
            if (CheckModelOfSif() == false)
            {
                return false;
            }

            if(mDevType != eDeviceType.ZIM)
            {
                return false;
            }

            if (CmdEnableCommTimeOut(iEnableCommTimeout) == false)
            {
                mComm.Dispose();
                return false;
            }

            if (CmdStartDevice(1) == false)
            {
                mComm.Dispose();
                return false;
            }

            */
            mComm.DisconnectedDevice += DisonnectProc;
            isConnected = true;

            stSystemConfig_1 m_tSysCfg = new stSystemConfig_1(0);
            if (ReadData(ref m_tSysCfg) == false)
            {
                return false;
            }
            mDevType = (eDeviceType)m_tSysCfg.mSIFCfg.Type;
            Sifid = m_tSysCfg.ID;
            return true;
        }

        public bool CheckModelOfSif()
        {
            int ipage = 17 * defWebSiteInfomation.PAGE_PER_BLOCK;
            byte[] tmpbuf;

            tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, -1, (int)ipage);
            if (tmpbuf == null)
            {
                mDevType = eDeviceType.WBCS;
                mComm.Dispose();
                return false;
            }
            mDevType = (eDeviceType)tmpbuf[1];


            return true;
        }
    
        public bool CmdStoreConnCfgInfo(ref stConnCfg data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SAVE_CONN_INFO, -1, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdEnableCommTimeOut(int iEnabled)
        {
            if (mComm.WriteToDevice(CommandSet.ENABLE_COMM_TIMEOUT, -1, iEnabled, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            iEnableCommTimeout = iEnabled;
            return true;
        }

        public bool CmdSetCmdMode(int iMode)
        {
            if (mComm.WriteToDevice(CommandSet.SET_SIFMODE, -1, iMode, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            iSifMode = iMode;
            return true;
        }

        public bool CmdSetCmdMode(int nCh, int iMode)
        {
            if (mComm.WriteToDevice(CommandSet.SET_SIFMODE, nCh, iMode, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            iSifMode = iMode;
            return true;
        }

        public bool CmdSetChannel(int nCh)
        {
            if (mComm.WriteToDevice(CommandSet.SET_CHANNEL, nCh, 0, null) == false)
            {
                //mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdSetVdcAutoRange(int nSlot, int iAuto)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_VDC_RNG, nSlot, iAuto, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdSetCalibMode(int nSlot, int iCalib)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.CALIB_MODE, nSlot, iCalib, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdStartToMeasureImpedance(int nSlot, bool bcalib = false)
        {
            var rtc = new st_rtc();
            rtc.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond; //msec
            int iCalib = 0;
            if (isConnected == false) return false;
            if (bcalib == true) iCalib = 1;
            
            if (mComm.WriteToDevice(CommandSet.START_DEVICE, nSlot, iCalib, rtc.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdStartToMeasureImpedance(int nSlot, st_rtc rtc, bool bcalib = false)
        {
            int iCalib = 0;
            if (isConnected == false) return false;
            if (bcalib == true) iCalib = 1;

            if (mComm.WriteToDevice(CommandSet.START_DEVICE, nSlot, iCalib, rtc.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdRefreshVac(int nSlot)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.REFRESH_VAC, nSlot, 0, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdStopMeasurement(int nSlot,int errstat = 0)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.STOP_DEVICE,nSlot, errstat, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdStoreRangesInfo(int nSlot)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.WRITE_ROM, nSlot, 0, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        

        public bool CmdInitRangesInfo(int nSlot)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.INIT_RNGINFO, nSlot, 0, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        public bool CmdResetFPGA(int nSlot, bool rst)
        {
            byte cmd;
            if (isConnected == false) return false;
  
            if (rst) cmd = CommandSet.RESET_SET_FPGA_ICE;
            else cmd = CommandSet.RESET_CLR_FPGA_ICE;

            if (mComm.WriteToDevice(cmd, nSlot, 0, null) == false)
            {
                //mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdConnectPromOfZIM(int nSlot,int Addr)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.CONN_FPGA_PROM,nSlot, Addr, null) == false)
            {
                //mComm.Dispose();
                return false;
            }
            return true;
        }
        public bool CmdEreasePromOfZIM(int nSlot)
        {
            if (isConnected == false) return false;

            /*int address = 0;
            int i;
            // 16(0~15)개 블럭
            for (i = 0; i < 15; i++, address += 0x10000)
            {0,
                if (mComm.WriteToDevice(CommandSet.EREASE_FPGA_PROM, 0, nSlot,address,null) == false)
                {
                    return false;
                }
            }
            */

            mComm.SetReceiveTime(20000);
            
            if (mComm.WriteToDevice(CommandSet.EREASE_FPGA_PROM, nSlot, 0, null) == false)
            {
                mComm.SetReceiveTime(LimitTimerOut);
                //mComm.Dispose();
                return false;
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }
        public bool CmdProgramPromOfZIM(int nSlot, int address, byte[] buffer)
        {
            if (isConnected == false) return false;
            mComm.SetReceiveTime(20000);
            if (mComm.WriteToDevice(CommandSet.PROG_FPGA_PROM, nSlot, address, buffer) == false)
            {
                mComm.SetReceiveTime(LimitTimerOut);
                //mComm.Dispose();
                return false;
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }
        public byte[] CmdReadPromOfZIM(int nSlot, int address)
        {
            if (isConnected == false) return null;
            mComm.SetReceiveTime(20000);
            byte[]  bytes = mComm.ReadFromDevice(CommandSet.READ_FPGA_PROM, nSlot, address);
            mComm.SetReceiveTime(LimitTimerOut);
            return bytes;
        }
        public bool CmdDisconnectPromOfZIM(int nSlot)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.CLOSE_FPGA_PROM, nSlot) == false)
            {
                //mComm.Dispose();
                return false;
            }
            return true;
        }

        #region Write

        public bool WriteConfigSignalDDS(int nSlot, st_zim_dds data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_DDSSIG, nSlot, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteConfigClockDDS(int nSlot, st_zim_dds data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_DDSCLK, nSlot, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        
        public byte[] CmdReadRtdOfZIM(int nSlot)
        {
            if (isConnected == false) return null;
            byte[] bytes = mComm.ReadFromDevice(CommandSet.GET_RTD_DTA, nSlot);
            if (bytes == null)
            {
                mComm.Dispose();
            }
            return bytes;
        }

        public bool RefreshWebSite()
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.CMD_REFRESH_WEBSITE) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        public bool WriteData(stDevInf data)
        {
            if (isConnected == false) return false;

            if (mComm.WriteToDevice(CommandSet.SAVE_DEVICE_INFO, -1, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        
        public bool WriteData(int nSlot, st_TestCmd data)
        {
            if (isConnected == false) return false;

            if (mComm.WriteToDevice(CommandSet.TEST_COMM, nSlot, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(int nSlot, st_zim_rnginf data)
        {
            data.ID = DeviceConstants.ID_RANGEINFO;
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_RNGINFO, nSlot, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        
        public bool WriteData(stUserEthernetCfg data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_CONN_INFO, -1, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(int nSlot, st_zim_rtd_cfg data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_RTD_CFG, nSlot, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        
        public bool WriteData(int nSlot, st_zim_do data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_DEV_DO, nSlot, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(int nSlot, st_zim_adc_ac_cfg data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_AC_ADC_CFG, nSlot, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(int nSlot, st_zim_eis_cond data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_COND_EIS, nSlot, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(int nSlot, stTech data)
        {
            if (isConnected == false) return false;

            if (mComm.WriteToDevice(CommandSet.SET_COND_TECH, nSlot, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteCalibTech(int nSlot, stTech data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_COND_CALIB, nSlot, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        #endregion Write

        #region Read

        public bool ReadData(int nSlot, ref stZimCfg data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_ZIMCFG, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }
        
        public bool WriteData(int nSlot, stResHeaderInfo data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_HEADINFO, nSlot, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool ReadData(int nSlot, ref stResHeaderInfo data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_HEADINFO, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }


        public bool ReadData(int nSlot, ref stChStatusInf minf)
        {
            byte[] buf;

            if (isConnected == false) return false;

            buf = mComm.ReadFromDevice(CommandSet.GET_STAT_EIS, nSlot);

            if (buf == null)
            {
                return false;
            }

            minf.ToWritePtr(buf);

            return true;
        }


        public bool ReadData(int nSlot, ref st_zim_do data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_DEV_DO, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(int nSlot, ref st_zim_adc_ac_data data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_AC_ADC_DATA, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(int nSlot, ref st_zim_eis_cond data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_COND_EIS, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(int nSlot, ref stTech data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_COND_TECH, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadCalibTech(int nSlot, ref stTech data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_COND_CALIB, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }
        

        public bool ReadData(int nSlot, ref st_zim_adc_vdc data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_VDC_ADC_DATA, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(int nSlot, ref st_zim_rtd_data data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_RTD_DTA, nSlot);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }
        
        public bool ReadData(ref stChStatusInf[] arrdata)
        {
            byte[] buf;
            int len = Marshal.SizeOf(typeof(stChStatusInf));
            int pos = 0;

            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_STAT_EIS, -1);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            byte[] tbuf = new byte[len];
            for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++, pos += len)
            {
                Array.Copy(buf, pos, tbuf, 0, len);
                arrdata[i].ToWritePtr(tbuf);
            }

            return true;
        }


        public bool ReadData(int nSlot, ref st_zim_eis_raw_data data, int index)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_RAWVAL_EIS, nSlot, index);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(int nSlot, ref st_zim_eis_item data, int index)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_DATA_EIS, nSlot, index);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(int nSlot, int startindex, int count, ref stDefTestData[] data)
        {
            byte[] buf;
            int len = Marshal.SizeOf(typeof(stDefTestData));
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_DATA_EIS, nSlot, startindex, count);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }
            byte[] tbuf = new byte[len];
            int pos = 0;
            for (int i=0; i< count; i++, pos += len)
            {
                Array.Copy(buf, pos, tbuf, 0, len);
                data[i].ToWritePtr(tbuf);
            }
            return true;
        }

        public bool ReadFindSifcfg(ref stFindSIFCfg data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.CMD_GET_FINDSIFCFG, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }


        public bool ReadData(ref stConnCfg data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_CONN_INFO, -1);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadConnectStatus(ref stEthernetCfg data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_CONN_STAT,-1);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadSifConnInfo(ref stConnCfg data)
        {
            int ipage = 16 * 64;// block X pages od block
            int length = Marshal.SizeOf(typeof(stConnCfg));

            int len;
            int offset = 0;
            byte[] rbuf = new byte[length];
            byte[] tmpbuf;

            Array.Clear(rbuf, 0, length);

            while (length > 0)
            {
                len = length > 64 ? 64 : length;
                tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, -1, (int)ipage);
                if (tmpbuf == null)
                {
                    mComm.Dispose();
                    return false;
                }
                Array.Copy(tmpbuf, 0, rbuf, offset, len);
                ipage++;
                offset += len;

                length -= len;
            }
            data.ToWritePtr(rbuf);
            return true;
        }

        public bool ReadSifInfo(ref stSystemConfig data)
        {
            int ipage = 17 * 64;// block X pages od block
            int length = Marshal.SizeOf(typeof(stSystemConfig));
            if (Sifid == DeviceConstants.ID_ZIMCONFIG_1)
            {
                length = Marshal.SizeOf(typeof(stSystemConfig_1));
            }

            int len;
            int offset = 0;
            byte[] rbuf = new byte[length];
            byte[] tmpbuf;

            Array.Clear(rbuf, 0, length);

            while (length > 0)
            {
                len = length > 64 ? 64 : length;
                tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, -1, (int)ipage);
                if (tmpbuf == null)
                {
                    mComm.Dispose();
                    return false;
                }
                Array.Copy(tmpbuf, 0, rbuf, offset, len);
                ipage++;
                offset += len;

                length -= len;
            }

            if (Sifid == DeviceConstants.ID_ZIMCONFIG_1)
            {
                stSystemConfig_1 m_tSysCfg = new stSystemConfig_1(0);
                m_tSysCfg.ToWritePtr(rbuf);

                data.ID = m_tSysCfg.ID;
                data.mSIFCfg.ToWritePtr(m_tSysCfg.mSIFCfg.ToByteArray());
                for (int bd = 0; bd < MBZA_Constant.MAX_DEV_CHANNEL; bd++)
                {
                    data.EnaZIM[bd] = m_tSysCfg.EnaZIM[bd];
                    data.EnaROM[bd] = m_tSysCfg.EnaROM[bd];
                    data.ChkZIM[bd] = m_tSysCfg.ChkZIM[bd];
                    data.mZimCfg[bd].info.ToWritePtr(m_tSysCfg.mZimCfg[bd].info.ToByteArray());
                    data.mZimCfg[bd].ranges[0].ToWritePtr(m_tSysCfg.mZimCfg[bd].ranges.ToByteArray());
                    for (int auxch = 1; auxch < MBZA_Constant.MAX_AUX_CHANNEL; auxch++)
                    {
                        data.mZimCfg[bd].Initialize(auxch, data.mZimCfg[bd].info.GetZimType());
                    }
                }
                data.BaseTick = m_tSysCfg.BaseTick;
                data.DaqTick = m_tSysCfg.DaqTick;
            }
            else
            {
                data.ToWritePtr(rbuf);
            }

            return true;
        }

        public bool ReadSifInfo(ref stOldSystemConfig data)
        {
            int ipage = 17 * 64;// block X pages od block
            int length = Marshal.SizeOf(typeof(stOldSystemConfig));

            int len;
            int offset = 0;
            byte[] rbuf = new byte[length];
            byte[] tmpbuf;

            Array.Clear(rbuf, 0, length);

            while (length > 0)
            {
                len = length > 64 ? 64 : length;
                tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, -1, (int)ipage);
                if (tmpbuf == null)
                {
                    mComm.Dispose();
                    return false;
                }
                Array.Copy(tmpbuf, 0, rbuf, offset, len);
                ipage++;
                offset += len;

                length -= len;
            }
            data.ToWritePtr(rbuf);
            return true;
        }

        public bool ReadData(ref stWebSiteFATHeader data)
        {
            int ipage = defWebSiteInfomation.HEAD_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK;
            int length = Marshal.SizeOf(typeof(stWebSiteFATHeader));
            int len;
            int offset = 0;
            byte[] rbuf = new byte[length];
            byte[] tmpbuf;
            if (isConnected == false) return false;
            Array.Clear(rbuf, 0, length);

            while (length > 0)
            {
                len = length > defWebSiteInfomation.PAGE_SIZE ? defWebSiteInfomation.PAGE_SIZE : length;
                tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, -1, (int)ipage);
                if(tmpbuf == null)
                {
                    mComm.Dispose();
                    return false;
                }
                Array.Copy(tmpbuf, 0, rbuf, offset, len);
                ipage++;
                offset += len;

                length -= len;
            }
            data.ToWritePtr(rbuf);
            return true;
        }

        public bool EreaseNandBlock(int iblock)
        {
            if (isConnected == false) return false;
            if( mComm.WriteToDevice(CommandSet.CMD_ERASE_NAND,-1,(int)iblock, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool ProgramNand(int ipage, byte[] buffer)
        {
            int length = buffer.Length;
            int offset = 0;
            int len;
            if (isConnected == false) return false;
            while (length > 0)
            {
                len = length > defWebSiteInfomation.PAGE_SIZE ? defWebSiteInfomation.PAGE_SIZE : length;
                byte[] temp = new byte[len];
                Array.Copy(buffer, offset, temp, 0, len);
                if (mComm.WriteToDevice(CommandSet.CMD_PROG_NAND,-1, (int)ipage, temp) == false)
                {
                    mComm.Dispose();
                    return false;
                }
                ipage++;
                offset += len;
                length -= len;
            }
            return true;
        }
        public bool ReadNand(int ipage, ref byte[] buffer, int length, ref ProgressBar progbar)
        {
            int offset = 0;
            int len;
            byte[] temp;
            if (isConnected == false) return false;

            if (progbar != null)
            {
                progbar.Maximum = length;
                progbar.Step = 1;
                progbar.Value = 0;
            }

            mComm.SetReceiveTime(20000);
            while (length > 0)
            {
                Application.DoEvents();
                len = length > defWebSiteInfomation.PAGE_SIZE ? defWebSiteInfomation.PAGE_SIZE : length;
                temp = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND,-1, (int)ipage);
                if (temp == null)
                {
                    mComm.Dispose();
                    return false;
                }
                Array.Copy(temp, 0, buffer, offset, len);
                ipage++;
                offset += len;
                length -= len;
                if (progbar != null) progbar.Value = offset;
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }
        public bool ReadNand(int ipage, ref byte[] buffer, int length)
        {
            int offset = 0;
            byte[] temp;
            int len;
            if (isConnected == false) return false;
            mComm.SetReceiveTime(20000);
            while (length > 0)
            {
                len = length > defWebSiteInfomation.PAGE_SIZE ? defWebSiteInfomation.PAGE_SIZE : length;
                
                temp = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, -1, (int)ipage);
                if (temp == null)
                {
                    mComm.Dispose();
                    return false;
                }
                Array.Copy(temp, 0, buffer, offset, len);
                ipage++;
                offset += len;
                length -= len;
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }

        public bool WriteData(stWebSiteFATHeader data)
        {
            string str;
            string sroot;
            byte[] buffer = data.ToByteArray();
            byte[] trdata;
            int page = defWebSiteInfomation.HEAD_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK;
            int block = defWebSiteInfomation.HEAD_BLOCK_BASE;

            mComm.SetReceiveTime(20000);
            if (isConnected == false)
            {
                MessageBox.Show("Not connected.", "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mComm.SetReceiveTime(LimitTimerOut);
                return false;
            }

            if (EreaseNandBlock(block) == false)
            {
                str = string.Format("Failed erase block-{0}.", block);
                MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mComm.SetReceiveTime(LimitTimerOut);
                return false;
            }

            if (ProgramNand(page, buffer) == false)
            {
                str = string.Format("Failed program page-{0}.", page);
                MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mComm.SetReceiveTime(LimitTimerOut);
                return false;
            }

            block = defWebSiteInfomation.LIMIT_BLOCK_BASE;
            
            for (int i = 0; i < 200; i++)
            {
                if (EreaseNandBlock(block + i) == false)
                {
                    str = string.Format("Failed erase block-{0}.", block + i);
                    MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    mComm.SetReceiveTime(LimitTimerOut);
                    return false;
                }
            }

            sroot = Encoding.Default.GetString(data.existroot).Trim('\0');

            for (int i = 0; i < data.FileCount; i++)
            {
                str = Encoding.Default.GetString(data.sFileHeaders[i].Name).Trim('\0');
                if (str.Length < 1)
                {
                    MessageBox.Show("Detected bad file.", "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    mComm.SetReceiveTime(LimitTimerOut);
                    return false;
                }
                str = Path.Combine(sroot, str);

                FileStream fs = File.Open(str, FileMode.Open, FileAccess.Read, FileShare.Read);
                byte[] tdata = new byte[defWebSiteInfomation.PAGE_SIZE];


                int nRead = 0;
                int ipage = data.sFileHeaders[i].StartPageNum;
                do
                {
                    nRead = fs.Read(tdata, 0, tdata.Length);
                    if (nRead > 0)
                    {
                        if (data.sFileHeaders[i].StartPageNum == (defWebSiteInfomation.LIMIT_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK))
                        {
                            trdata = new byte[defWebSiteInfomation.PAGE_SIZE];
                            Array.Clear(trdata, 0, defWebSiteInfomation.PAGE_SIZE);
                            Array.Copy(tdata, trdata, nRead);
                        }
                        else
                        {
                            trdata = new byte[nRead];
                            Array.Copy(tdata, trdata, nRead);
                        }

                        if (ProgramNand(ipage, trdata) == false)
                        {
                            str = string.Format("Failed program page-{0}.", ipage);
                            MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            mComm.SetReceiveTime(LimitTimerOut);
                            return false;
                        }
                        ipage++;
                    }

                } while (nRead > 0);
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }
        public bool WriteData(stWebSiteFATHeader data, ref ProgressBar progbar)
        {
            string str;
            string sroot;
            byte[] buffer = data.ToByteArray();
            int page = defWebSiteInfomation.HEAD_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK;
            int block = defWebSiteInfomation.HEAD_BLOCK_BASE;

            if (isConnected == false)
            {
                MessageBox.Show("Not connected.", "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            mComm.SetReceiveTime(20000);
            if (EreaseNandBlock(block) == false)
            {
                str = string.Format("Failed erase block-{0}.", block);
                MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mComm.SetReceiveTime(LimitTimerOut);
                return false;
            }

            if (ProgramNand(page, buffer) == false)
            {
                str = string.Format("Failed program page-{0}.", page);
                MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mComm.SetReceiveTime(LimitTimerOut);
                return false;
            }


            block = defWebSiteInfomation.LIMIT_BLOCK_BASE;


            progbar.Maximum = 200;
            progbar.Step = 1;
            progbar.Value = 0;

            for (int i = 0; i < 200; i++)
            {
                if(EreaseNandBlock(block + i) == false)
                {
                    str = string.Format("Failed erase block-{0}.", block + i);
                    MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    mComm.SetReceiveTime(LimitTimerOut);
                    return false;
                }
                progbar.PerformStep();
            }


            sroot = Encoding.Default.GetString(data.existroot).Trim('\0'); 

            for (int i = 0; i < data.FileCount; i++)
            {
                str = Encoding.Default.GetString(data.sFileHeaders[i].Name).Trim('\0');
               if(str.Length < 1)
                {
                    MessageBox.Show("Detected bad file.", "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    mComm.SetReceiveTime(LimitTimerOut);
                    return false;
                }

                str = Path.Combine(sroot, str);

                FileStream fs = File.Open(str, FileMode.Open, FileAccess.Read, FileShare.Read);
                byte[] tdata = new byte[defWebSiteInfomation.PAGE_SIZE];

                int nRead = 0;
                int ipage = data.sFileHeaders[i].StartPageNum;

                progbar.Maximum = (int)fs.Length;
                progbar.Step = 1;
                progbar.Value = 0;
                do
                {
                    nRead = fs.Read(tdata, 0, tdata.Length);
                    if (nRead > 0)
                    {
                        byte[] trdata = new byte[nRead];
                        Array.Copy(tdata, trdata, nRead);

                        if (ProgramNand(ipage, trdata) == false)
                        {
                            str = string.Format("Failed program page-{0}.", ipage);
                            MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            mComm.SetReceiveTime(LimitTimerOut);
                            return false;
                        }

                        ipage++;
                        progbar.Value += nRead;
                        Application.DoEvents();
                    }
                } while (nRead > 0);
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }

        public bool WriteData(stWebSiteFATHeader data, ref ProgressBar progbar, ref ProgressBar progbar1)
        {
            string str;
            string sroot;
            byte[] buffer = data.ToByteArray();

            int page = defWebSiteInfomation.HEAD_BLOCK_BASE * defWebSiteInfomation.PAGE_PER_BLOCK;
            int block = defWebSiteInfomation.HEAD_BLOCK_BASE;


            if (isConnected == false)
            {
                MessageBox.Show("Not connected.", "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            mComm.SetReceiveTime(20000);
            if (EreaseNandBlock(block) == false)
            {
                str = string.Format("Failed erase block-{0}.", block);
                MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mComm.SetReceiveTime(LimitTimerOut);
                return false;
            }

            if (ProgramNand(page, buffer) == false)
            {
                str = string.Format("Failed program page-{0}.", page);
                MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                mComm.SetReceiveTime(LimitTimerOut);
                return false;
            }

            block = defWebSiteInfomation.LIMIT_BLOCK_BASE;


            progbar.Maximum = 200;
            progbar.Step = 1;
            progbar.Value = 0;

            for (int i = 0; i < 200; i++)
            {
                if (EreaseNandBlock(block + i) == false)
                {
                    str = string.Format("Failed erase block-{0}.", block + i);
                    MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    mComm.SetReceiveTime(LimitTimerOut);
                    return false;
                }
                Application.DoEvents();
                progbar.PerformStep();
            }

            sroot = Encoding.Default.GetString(data.existroot).Trim('\0');

            progbar1.Maximum = data.FileCount;
            progbar1.Step = 1;
            progbar1.Value = 0;
            for (int i = 0; i < data.FileCount; i++)
            {
                str = Encoding.Default.GetString(data.sFileHeaders[i].Name).Trim('\0');
                if (str.Length < 1)
                {
                    MessageBox.Show("Detected bad file.", "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    mComm.SetReceiveTime(LimitTimerOut);
                    return false;
                }

                str = Path.Combine(sroot, str);

                FileStream fs = File.Open(str, FileMode.Open, FileAccess.Read, FileShare.Read);
                byte[] tdata = new byte[defWebSiteInfomation.PAGE_SIZE];

                int nRead = 0;
                int ipage = data.sFileHeaders[i].StartPageNum;

                progbar.Maximum = (int)fs.Length;
                progbar.Step = 1;
                progbar.Value = 0;
                do
                {
                    nRead = fs.Read(tdata, 0, tdata.Length);
                    if (nRead > 0)
                    {
                        byte[] trdata = new byte[nRead];
                        Array.Copy(tdata, trdata, nRead);

                        if (ProgramNand(ipage, trdata) == false)
                        {
                            str = string.Format("Failed program page-{0}.", ipage);
                            MessageBox.Show(str, "Communication", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            mComm.SetReceiveTime(LimitTimerOut);
                            return false;
                        }
                        ipage++;
                        progbar.Value += nRead;
                        Application.DoEvents();
                    }

                } while (nRead > 0);

                progbar1.PerformStep();
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }

        public bool ReadData(ref stDevInf_1 data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            
            buf = mComm.ReadFromDevice(CommandSet.GET_DEVICE_INFO, -1, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }


        public bool ReadData(ref stDevInf data)
        {
            byte[] buf;
            if (isConnected == false) return false;

            if (Sifid == DeviceConstants.ID_ZIMCONFIG_1)
            {
                stDevInf_1 m_devinf_1 = new stDevInf_1(0);
                if (ReadData(ref m_devinf_1) == false)
                {
                    return false;
                }

                data.mConnCfg.ToWritePtr(m_devinf_1.ToByteArray());
                data.mSysCfg.ID = m_devinf_1.mSysCfg.ID;
                data.mSysCfg.mSIFCfg.ToWritePtr(m_devinf_1.mSysCfg.ToByteArray());
                data.mSysCfg.BaseTick = m_devinf_1.mSysCfg.BaseTick;
                data.mSysCfg.DaqTick = m_devinf_1.mSysCfg.DaqTick;
                for (int bd = 0; bd < MBZA_Constant.MAX_DEV_CHANNEL; bd++)
                { 
                    data.mSysCfg.EnaZIM[bd] = m_devinf_1.mSysCfg.EnaZIM[bd];
                    data.mSysCfg.EnaROM[bd] = m_devinf_1.mSysCfg.EnaROM[bd];
                    data.mSysCfg.ChkZIM[bd] = m_devinf_1.mSysCfg.ChkZIM[bd];
   
                    data.mSysCfg.mZimCfg[bd].info.ToWritePtr(m_devinf_1.mSysCfg.mZimCfg[bd].info.ToByteArray());
                    data.mSysCfg.mZimCfg[bd].ranges[0].ToWritePtr(m_devinf_1.mSysCfg.mZimCfg[bd].ranges.ToByteArray());
                    for (int auxch = 1; auxch < MBZA_Constant.MAX_AUX_CHANNEL; auxch++)
                    {
                        data.mSysCfg.mZimCfg[bd].Initialize(auxch, data.mSysCfg.mZimCfg[bd].info.GetZimType());
                    }
                }
                return true;
            }

            buf = mComm.ReadFromDevice(CommandSet.GET_DEVICE_INFO, -1, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(ref stSystemConfig_1 data)
        {
            byte[] buf;
            if (isConnected == false)
            {
                return false;
            }

            buf = mComm.ReadFromDevice(CommandSet.GET_SYSTEM_INFO, -1,(int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(ref stSystemConfig data)
        {

            if(Sifid == DeviceConstants.ID_ZIMCONFIG_1)
            {
                stSystemConfig_1 m_tSysCfg = new stSystemConfig_1(0);
                if (ReadData(ref m_tSysCfg) == false)
                {
                    return false;
                }
                data.ID = m_tSysCfg.ID;
                data.mSIFCfg.ToWritePtr(m_tSysCfg.mSIFCfg.ToByteArray());
                for(int bd=0; bd< MBZA_Constant.MAX_DEV_CHANNEL; bd++)
                {
                    data.EnaZIM[bd] = m_tSysCfg.EnaZIM[bd];
                    data.EnaROM[bd] = m_tSysCfg.EnaROM[bd];
                    data.ChkZIM[bd] = m_tSysCfg.ChkZIM[bd];
                    data.mZimCfg[bd].info.ToWritePtr(m_tSysCfg.mZimCfg[bd].info.ToByteArray());
                    data.mZimCfg[bd].ranges[0].ToWritePtr(m_tSysCfg.mZimCfg[bd].ranges.ToByteArray());
                    for (int auxch = 1; auxch < MBZA_Constant.MAX_AUX_CHANNEL; auxch++)
                    {
                        data.mZimCfg[bd].Initialize(auxch, data.mZimCfg[bd].info.GetZimType());
                    }
                }
                data.BaseTick = m_tSysCfg.BaseTick;
                data.DaqTick = m_tSysCfg.DaqTick;
                return true;
            }
            
            byte[] buf;
            if (isConnected == false) return false;

            buf = mComm.ReadFromDevice(CommandSet.GET_SYSTEM_INFO, 1, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool InitialZIMEEPROM(int nSlot)
        {
            if (isConnected == false) return false;

            if (mComm.WriteToDevice(CommandSet.INIT_EEPROM, nSlot) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CheckROMofZIM(int nSlot, bool bLoadApply)
        {
            int opt = bLoadApply ? 1 : 0;
            if (isConnected == false) return false;
            
            return mComm.WriteToDevice(CommandSet.CHK_EEPROM, nSlot,opt);
        }

        public bool CheckFPGAofZIM(int nSlot)
        {
            if (isConnected == false) return false;

            return mComm.WriteToDevice(CommandSet.CHK_FPGA, nSlot, 0);
        }

        public bool WriteData(ref stSystemConfig_1 data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SAVE_SYSTEM_INFO, -1, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(ref stSystemConfig data)
        {
            if (isConnected == false) return false;


            if (Sifid == DeviceConstants.ID_ZIMCONFIG_1)
            {
                stSystemConfig_1 m_tSysCfg = new stSystemConfig_1(0);
                
                m_tSysCfg.ID = data.ID;
                m_tSysCfg.mSIFCfg.ToWritePtr(data.mSIFCfg.ToByteArray());
                for (int bd = 0; bd < MBZA_Constant.MAX_DEV_CHANNEL; bd++)
                {
                    m_tSysCfg.EnaZIM[bd] = data.EnaZIM[bd];
                    m_tSysCfg.ChkZIM[bd] = data.ChkZIM[bd];
                    m_tSysCfg.EnaROM[bd] = data.EnaROM[bd];
                    m_tSysCfg.mZimCfg[bd].info.ToWritePtr(data.mZimCfg[bd].info.ToByteArray());
                    m_tSysCfg.mZimCfg[bd].ranges.ToWritePtr(data.mZimCfg[bd].ranges[0].ToByteArray());
                }
                m_tSysCfg.BaseTick = data.BaseTick;
                m_tSysCfg.DaqTick = data.DaqTick;

                return WriteData(ref m_tSysCfg);
            }

            if (mComm.WriteToDevice(CommandSet.SAVE_SYSTEM_INFO, -1, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        

        public bool ReadData(ref stSIFCfg data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.CMD_GET_SIFCFG, -1, (int)0);

            if (buf == null)
            {
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }
        

        public bool WriteData(ref stConnCfg data)
        {
            if (isConnected == false) return false;

            if (mComm.WriteToDevice(CommandSet.SAVE_CONN_INFO, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool ReadRangeInfOfZim(int nSlot, int nAddr, ref st_zim_rnginf data)
        {
            byte[] buf;

            buf = mComm.ReadFromDevice(CommandSet.READ_ZIM_ROM, nSlot, nAddr);

            if (buf == null)
            {
                return false;
            }
            data.ToWritePtr(buf);

            if (data.ID != DeviceConstants.ID_RANGEINFO)
            {
                MessageBox.Show("No match ID of ranges information.");
            }
            return true;
        }

        public bool RefreshInConfigOfZim(int nSlot)
        {
            
            if (mComm.WriteToDevice(CommandSet.REFRESH_ZIM_ROM, nSlot) == false)
            {

                return false;
            }
            return true;

        }

        public bool ProgConfigOfZim(int nSlot, ref stZimCfg data)
        {
            data.ranges[0].ID = DeviceConstants.ID_RANGEINFO;

            if (Sifid == DeviceConstants.ID_ZIMCONFIG_1)
            {
                stZimCfg_1 mcfg = new stZimCfg_1(0);
                if (mComm.WriteToDevice(CommandSet.PROG_ZIM_ROM, nSlot, 0, mcfg.ToByteArray()) == false)
                {
                    return false;
                }
            }
            else
            {
                if (mComm.WriteToDevice(CommandSet.PROG_ZIM_ROM, nSlot, 0, data.ToByteArray()) == false)
                {

                    return false;
                }
            }
            return true;

        }
 

        public bool ReadData(int nSlot, int nAddr, ref st_zim_rnginf data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_RNGINFO, nSlot, nAddr);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            if (data.ID != DeviceConstants.ID_RANGEINFO)
            {
                MessageBox.Show("No match ID of ranges information.");
            }
            return true;
        }
        private bool disposed;
        public void Dispose()
        {
            
            this.Dispose(true);
        }

        protected virtual void Dispose(bool disposing)
        {
            isConnected = false;
            if (this.disposed) return;
            if (disposing)
            {
                if(mComm != null) mComm.Dispose();
            }
            // .NET Framework에 의하여 관리되지 않는 외부 리소스들을 여기서 정리합니다.
            this.disposed = true;
        }

        #endregion Read
    }
}
