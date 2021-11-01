using System;
using System.Globalization;
using System.IO;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Interface;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Utilities;

namespace ZiveLab.Device.ZIM
{
    public class CommObj : IDisposable
    {
        public bool isConnected;
        public int LimitTimerOut;
        public int  iEnableCommTimeout;
        public SIFCom mComm;
        public stConnTargetCfg mConnTargetCfg; // rename to NetworkEndPoint
        public eDeviceType mDevType;
        public CommObj(int tTimerOut = 8000)
        {
            LimitTimerOut = tTimerOut;
            mConnTargetCfg = new stConnTargetCfg(0);
            mDevType = eDeviceType.WBCS;
            isConnected = false;
            iEnableCommTimeout = 0;
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
            Console.WriteLine(" received this message: {0}", e.ToString());
        }
        
        public bool Connect()
        {
            if (mComm != null)
            {
                
                mComm.Dispose();
            }

            isConnected = false;
            mDevType = eDeviceType.WBCS;
            string hn = GetHostName();

            mComm = new SIFCom(hn, mConnTargetCfg.Port);
            if (mComm.Connect(LimitTimerOut) == false)
            {
                mComm.Dispose();
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
            */
            if (CmdEnableCommTimeOut(iEnableCommTimeout) == false)
            {
                mComm.Dispose();
                return false;
            }

            mComm.DisconnectedDevice += DisonnectProc;
            isConnected = true;
            return true;
        }

        public bool CheckModelOfSif()
        {
            int ipage = 17 * defWebSiteInfomation.PAGE_PER_BLOCK;
            byte[] tmpbuf;

            tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, (int)ipage);
            if (tmpbuf == null)
            {
                mDevType = eDeviceType.WBCS;
                return false;
            }
            mDevType = (eDeviceType)tmpbuf[1];


            return true;
        }

        public bool CmdStartToMeasureNoise(st_zim_eis_rms_Inf info)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.CHK_NOISE, 0, 0, info.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdEnableCommTimeOut(int iEnabled)
        {
            if (mComm.WriteToDevice(CommandSet.ENABLE_COMM_TIMEOUT, iEnabled, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            iEnableCommTimeout = iEnabled;
            return true;
        }

        public bool CmdSetVdcAutoRange(int iAuto)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_VDC_RNG, iAuto, null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        
        public bool CmdStartToMeasureImpedance(bool bcalib = false)
        {
            var rtc = new st_rtc();
            rtc.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond; //msec
            int iCalib = 0;
            if (isConnected == false) return false;
            if (bcalib == true) iCalib = 1;
            
            if (mComm.WriteToDevice(CommandSet.START_DEVICE, iCalib, rtc.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        public bool CmdRefreshVac()
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.REFRESH_VAC) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdStopMeasurement()
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.STOP_DEVICE) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        public bool CmdStoreRangesInfo()
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SAVE_RNGINFO) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdStoreConnCfgInfo()
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SAVE_CONN_INFO) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdInitRangesInfo()
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.INIT_RNGINFO) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        public bool CmdResetFPGA(bool rst)
        {
            byte cmd;
            if (isConnected == false) return false;
            if (rst) cmd = CommandSet.RESET_SET_FPGA_ICE;
            else cmd = CommandSet.RESET_CLR_FPGA_ICE;

            if (mComm.WriteToDevice(cmd) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool CmdConnectPromOfZIM(int Addr)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.CONN_FPGA_PROM, Addr,null) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        public bool CmdEreasePromOfZIM()
        {
            if (isConnected == false) return false;

            /*int address = 0;
            int i;
            // 16(0~15)개 블럭
            for (i = 0; i < 15; i++, address += 0x10000)
            {
                if (mComm.WriteToDevice(CommandSet.EREASE_FPGA_PROM, address,null) == false)
                {
                    mComm.Dispose();
                    return false;
                }
            }
            */

            mComm.SetReceiveTime(20000);
            
            if (mComm.WriteToDevice(CommandSet.EREASE_FPGA_PROM) == false)
            {
                mComm.SetReceiveTime(LimitTimerOut);
                mComm.Dispose();
                return false;
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }
        public bool CmdProgramPromOfZIM(int address, byte[] buffer)
        {
            if (isConnected == false) return false;
            mComm.SetReceiveTime(20000);
            if (mComm.WriteToDevice(CommandSet.PROG_FPGA_PROM, address, buffer) == false)
            {
                mComm.SetReceiveTime(LimitTimerOut);
                mComm.Dispose();
                return false;
            }
            mComm.SetReceiveTime(LimitTimerOut);
            return true;
        }
        public byte[] CmdReadPromOfZIM(int address)
        {
            if (isConnected == false) return null;
            mComm.SetReceiveTime(20000);
            byte[]  bytes = mComm.ReadFromDevice(CommandSet.READ_FPGA_PROM, address);
            mComm.SetReceiveTime(LimitTimerOut);
            if(bytes == null)
            {
                mComm.Dispose();
            }
            return bytes;
        }
        public bool CmdDisconnectPromOfZIM()
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.CLOSE_FPGA_PROM) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        #region Write

        public bool WriteConfigSignalDDS(st_zim_dds data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_DDSSIG, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteConfigClockDDS(st_zim_dds data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_DDSCLK, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        
        public byte[] CmdReadRtdOfZIM()
        {
            if (isConnected == false) return null;
            byte[] bytes = mComm.ReadFromDevice(CommandSet.GET_RTD_DTA, 0);
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
        

        public bool WriteData(st_TestCmd data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.TEST_COMM, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(st_zim_rnginf data)
        {
            data.ID = DeviceConstants.ID_RANGEINFO;
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_RNGINFO1, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        
        public bool WriteData(stUserEthernetCfg data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_CONN_INFO, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(st_zim_rtd_cfg data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_RTD_CFG, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }
        
        public bool WriteData(st_zim_do data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_DEV_DO, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(st_zim_adc_ac_cfg data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_AC_ADC_CFG, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        public bool WriteData(st_zim_eis_cond data)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.SET_COND_EIS, 0, 0, data.ToByteArray()) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
        }

        #endregion Write

        #region Read

        public bool ReadData(ref st_zim_adc_ac_data data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_AC_ADC_DATA, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(ref st_zim_eis_cond data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_COND_EIS, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }
        
        public bool ReadData(ref st_zim_adc_vdc data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_VDC_ADC_DATA, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(ref st_zim_rtd_data data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_RTD_DTA, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(ref st_zim_eis_status data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_STAT_EIS, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(ref st_zim_eis_raw_data data, int index)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_RAWVAL_EIS, index);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadData(ref st_zim_eis_item data, int index)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_DATA_EIS, index);

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
            buf = mComm.ReadFromDevice(CommandSet.GET_CONN_INFO, (int)0);

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
            buf = mComm.ReadFromDevice(CommandSet.GET_CONN_STAT, (int)0);

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
                tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, (int)ipage);
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

            int len;
            int offset = 0;
            byte[] rbuf = new byte[length];
            byte[] tmpbuf;

            Array.Clear(rbuf, 0, length);

            while (length > 0)
            {
                len = length > 64 ? 64 : length;
                tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, (int)ipage);
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
                tmpbuf = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, (int)ipage);
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
            if( mComm.WriteToDevice(CommandSet.CMD_ERASE_NAND,(int)iblock, null) == false)
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
                if (mComm.WriteToDevice(CommandSet.CMD_PROG_NAND, (int)ipage, temp) == false)
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
                temp = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, (int)ipage);
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
                
                temp = mComm.ReadFromDevice(CommandSet.CMD_GET_RDNAND, (int)ipage);
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
        public bool ReadData(ref stSystemConfig data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_SYSTEM_INFO, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return false;
            }

            data.ToWritePtr(buf);
            return true;
        }

        public bool ReadRangeInfOfZim(ref st_zim_rnginf data)
        {
            byte[] buf;

            buf = mComm.ReadFromDevice(CommandSet.READ_ZIM_ROM1, (int)0);

            if (buf == null)
            {
                Connect();
                return false;
            }

            data.ToWritePtr(buf);
            if (data.ID != DeviceConstants.ID_RANGEINFO)
            {
                MessageBox.Show("No match ID of ranges information.");
            }
            return true;
        }



        public bool ProgRangeInfOfZim(ref st_zim_rnginf data)
        {
            data.ID = DeviceConstants.ID_RANGEINFO;

            if (mComm.WriteToDevice(CommandSet.PROG_ZIM_ROM1, 0, data.ToByteArray()) == false)
            {
                Connect();
                return false;
            }
            return true;

        }

        public int Read_ROM_Of_Zim(int addr,int size,ref byte[] pdata)
        {
            byte[] buf;
            if (isConnected == false) return 0;
            buf = mComm.ReadFromDevice(CommandSet.READ_ZIM_ROM1, (int)0);

            if (buf == null)
            {
                mComm.Dispose();
                return 0;
            }
            Array.Copy(buf, pdata, buf.Length);

            return buf.Length;
        }

      

        public bool Write_ROM_Of_Zim(int addr, ref byte[] pdata)
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.PROG_ZIM_ROM1, addr, pdata) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;
            
        }
        

        public bool refresh_SPI_ZFK_ROM()
        {
            if (isConnected == false) return false;
            if (mComm.WriteToDevice(CommandSet.REF_SPI_ZFK_ROM) == false)
            {
                mComm.Dispose();
                return false;
            }
            return true;

        }


        public bool ReadData(ref st_zim_rnginf data)
        {
            byte[] buf;
            if (isConnected == false) return false;
            buf = mComm.ReadFromDevice(CommandSet.GET_RNGINFO1, (int)0);

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
            if (this.disposed) return;
            if (disposing)
            {
                mComm.Dispose();
            }
            // .NET Framework에 의하여 관리되지 않는 외부 리소스들을 여기서 정리합니다.
            this.disposed = true;
        }

        #endregion Read
    }
}
