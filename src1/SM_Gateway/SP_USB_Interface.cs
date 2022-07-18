using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CyUSB;
using System.Threading;
using System.Runtime.InteropServices;
using System.Diagnostics;
using SP_Struct;
using SMLib;
using SP_File;
using SM_Enum;
using SM_License;
using SM_Gateway;
using SP_OldSystem;

namespace SM_Comm
{
    namespace SM_Comm_USB
    {
        public class SP_USB_Interface
        {
            public DisplayStats mDispStat;
            public const uint Timeout = 2000;
            public string sSerial;
            public SP_License mClsLicense;
            public DeviceInfo mDeviceInfo;
            public bool bThread;
            public bool bThreadStart;
            public bool bUnknow;
            public bool bSPDevice;
            public bool bLocal;
            public int[] RefreshStatusCount;
            public int[] stTick;
            public SP_MapMem mMapMem;

            public CyUSBDevice mDev;
            public CyUSBEndPoint m_EpOut, m_EpIn;
            public CyUSBEndPoint m_EpHSOut, m_EpHSIn;
            public CyUSBEndPoint m_Ep4Out, m_Ep6In;

            public Thread Th;
            	
            public SP_USB_Interface(USBDevice dev)
            {

                byte usTemp;
                bool bError = false;
                ushort usLi;
                int ChkTick;

                this.bLocal = false;
                this.RefreshStatusCount = new int[8];
                this.stTick = new int[8];
                this.mDispStat = new DisplayStats();
                this.bThread = true;
                this.bThreadStart = true;

                if (dev.VendorID == 0x04B4 && dev.ProductID == 0x8613)
                {
                    this.bUnknow = true;
                }
                else
                {
                    if (dev.SerialNumber.IndexOf("R03") == -1
                        && dev.SerialNumber.IndexOf("R04") == -1)
                    {
                        this.bUnknow = true;
                    }
                    else this.bUnknow = false;
                }

                if (this.bUnknow == true)
                {
                    sSerial = "Unknown dev!";
                }
                else
                {
                    sSerial = dev.SerialNumber;
                }

                this.mDev = dev as CyUSBDevice;

                mDeviceInfo = new DeviceInfo(sSerial);
              
                this.mClsLicense = new SP_License();

                this.m_EpOut = null;
                this.m_EpHSOut = null;
                this.m_Ep4Out = null;
                this.m_EpIn = null;
                this.m_EpHSIn = null;
                this.m_Ep6In = null;
                this.mDeviceInfo.mInfo.bSupportVer = false;
                
                if (this.CheckEndPoints() == false)
                {
                    this.bSPDevice = false;
//                    return;
                }
                else this.bSPDevice = true;
     
                this.mDeviceInfo.mInfo.bUnknow = this.bUnknow;
                this.mDeviceInfo.mInfo.bSPDevice = this.bSPDevice;
                this.mDeviceInfo.mInfo.sSerial = sSerial;
                this.mDeviceInfo.mInfo.Product = Get_SPDeviceProduct(dev);
                string fsysname;
                fsysname = string.Format("{0}{1}.{2}", SM_Directory_define.SMGATEWAY_FOLDER_CFG,
                                                        dev.SerialNumber, SM_Directory_define.FILE_SYSTEM_EXTENSION);
                byte[] data;

                SP_File.SP_SystemFile fSys = new SP_File.SP_SystemFile(ref this.mDeviceInfo, fsysname,
                                                                    System.IO.FileMode.Open, System.IO.FileAccess.ReadWrite);

                if (this.bUnknow == false)
                {
                    this.mDeviceInfo.mInfo.VerUSB = this.ReadUSBFirmwareVersion();
                    if (this.RefreshUSBFirmwareInf() == false) bError = true;
                    if (bError == false) if (this.RefreshModel() == false) bError = true;

                    this.mDeviceInfo.mInfo.sManufacturer = dev.Manufacturer;
                    this.mDeviceInfo.mInfo.sProduct = dev.Product;
                    this.mDeviceInfo.mInfo.sSerial = dev.SerialNumber;
                    if (bError == false)
                    {
                        usTemp = (byte)(this.mDeviceInfo.mInfo.Model & 0x3F);
                        enDeviceModel model = (enDeviceModel)usTemp;
                        this.mDeviceInfo.mInfo.sModel = model.ToString();


                        usTemp = (byte)(this.mDeviceInfo.mInfo.Model >> 6 & 0x3);
                        if (usTemp == 0) this.mDeviceInfo.mInfo.sType = "A(Default)";
                        else if (usTemp == 1) this.mDeviceInfo.mInfo.sType = "B(Filter 5ea)";
                        else this.mDeviceInfo.mInfo.sType = "Error!";
                    }



                    if (bError == false) if (this.RefreshChannelExist() == false) bError = true;
                    if (bError == false) if (this.ReadChannelnfo() == false) bError = true;
                    if (bError == false) if (this.ReadLicenseInfo() == false) bError = true;
                    if (bError == false)
                    {
                        if (this.FirstCheckLicense(this.mDeviceInfo.mInfo.cLicense) == true)
                        {
                            this.mDeviceInfo.mInfo.sLicSerial = RefreshLicense(this.mDeviceInfo.mInfo.cLicense);
                        }
                        else this.mDeviceInfo.mInfo.sLicSerial = "";
                    }

                    usLi = 0x0;
                    if (this.mDeviceInfo.mInfo.bBAT == true) usLi |= (ushort)enDeviceLicense.Battery;
                    if (this.mDeviceInfo.mInfo.bCOR == true) usLi |= (ushort)enDeviceLicense.Corrosion;
                    if (this.mDeviceInfo.mInfo.bECHM == true) usLi |= (ushort)enDeviceLicense.ElectroChemistry;
                    if (this.mDeviceInfo.mInfo.bEIS == true) usLi |= (ushort)enDeviceLicense.Eis;
                    if (this.mDeviceInfo.mInfo.bFRA == true) usLi |= (ushort)enDeviceLicense.Fra;
                    this.mDeviceInfo.mInfo.usLicense = usLi;
                }
                if (this.mDeviceInfo.mInfo.VerUSB >= 6000) this.mDeviceInfo.mInfo.bSupportVer = true;

                stDefStatData mStat;
                mStat = new stDefStatData(0);

                if (this.bUnknow == false && this.mDeviceInfo.mInfo.bSupportVer == true)
                {

                    for (usTemp = 0; usTemp < 8; usTemp++)
                    {
                        if (this.mDeviceInfo.mChannelInfo[usTemp].bExist == true)
                        {
                            ChkTick = Environment.TickCount;
                            while (true)
                            {
                                if (this.ReadSysInfo(usTemp) == (ushort)enResult.FLAG_OK)
                                {
                                    break;
                                }
                     
                                if ((Environment.TickCount - ChkTick) > 5000)
                                {
                                    break;
                                }
                                Thread.Sleep(1);
                            }
                        }
                    }
                    

                    for (usTemp = 0; usTemp < 8; usTemp++)
                    {
                        this.mDeviceInfo.mChannelInfo[usTemp].bLoadInfo = true;
                        if(bError == true) break;
                        this.RefreshStatusCount[usTemp] = 0;
                        
                        if (this.mDeviceInfo.mChannelInfo[usTemp].bExist == true)
                        {

                            if (this.mDeviceInfo.mChannelInfo[usTemp].mSystem.mInfo.VerFPGA < 6000) continue;
                            if (this.mDeviceInfo.mChannelInfo[usTemp].mSystem.mInfo.iVersion < 6000000) continue;

                            ChkTick = Environment.TickCount;
                            while (true)
                            {

                                if (this.ReadChannelStatus(usTemp,ref mStat) == (ushort)enResult.FLAG_OK)
                                {
                                    break;
                                }
                                if ((Environment.TickCount - ChkTick) > 5000)
                                {
                                    break;
                                }
                                Thread.Sleep(1);
                            }

                            if (mStat.mStatus.nFlowStat == (byte)enStatFlow.Running)
                            {
                            
                                if (fSys.bSuccess == true)
                                {
                                    data = fSys.RecordRead(usTemp, 1, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[usTemp]));
                                    this.mDeviceInfo.mChannelInfo[usTemp].ToWritePtr(data);
                                }
                                

                                if (this.ReadSysInfo(usTemp) != (ushort)enResult.FLAG_OK)
                                {
                                    continue;
                                }
                            }
                            else
                            {
                                if (ApplyChLicense(usTemp) != (ushort)enResult.FLAG_OK)
                                {
                                    continue;
                                }

                                if (this.ReadSysInfo(usTemp) != (ushort)enResult.FLAG_OK)
                                {
                                    continue;
                                }
                                if (this.mDeviceInfo.mChannelInfo[usTemp].mSystem.mInfo.iVersion < 6000000)
                                {
                                    continue;
                                }

                                if (this.ReadSysConfig(usTemp) != (ushort)enResult.FLAG_OK)
                                {
                                    continue;
                                }
                                if (this.ReadSysRange(usTemp) != (ushort)enResult.FLAG_OK)
                                {
                                    continue;
                                }
                                if (this.ReadBoosterRange(usTemp) != (ushort)enResult.FLAG_OK)
                                {
                                    
                                    continue;
                                }
                                
                            }
                            this.mDeviceInfo.mChannelInfo[usTemp].bLoadInfo = true;
                        }
                        else
                        {
                            Thread.Sleep(1);
                        }
                    }
                    
                    
                }

                fSys.close();

                fSys = new SP_File.SP_SystemFile(ref this.mDeviceInfo, fsysname,
                                                                        System.IO.FileMode.Create, System.IO.FileAccess.ReadWrite);

                this.mDispStat.Serial = this.sSerial;
                this.mDispStat.Model = ((enDeviceModel)(this.mDeviceInfo.mInfo.Model & 0x3F)).ToString();

                this.mMapMem = new SP_MapMem(ref this.mDeviceInfo);
                this.mMapMem.WriteDeviceinfo(ref this.mDeviceInfo);
                this.Th = new Thread(new ThreadStart(this.SP_Comm_Run));
                for (usTemp = 0; usTemp < 8; usTemp++)
                {
                    stTick[usTemp] = Environment.TickCount;
                }
                this.Th.Start();
            }

            void RefreshDeviceInformation()
            {
                bool bError = false;
                ushort usTemp;
                ushort usLi;

                if(this.bUnknow == false) return;
                if(this.bSPDevice == false) return;


                this.mDeviceInfo.mInfo.VerUSB = this.ReadUSBFirmwareVersion();
                if (this.RefreshUSBFirmwareInf() == false) bError = true;
                if (bError == false) if (this.RefreshModel() == false) bError = true;

                if (bError == false)
                {
                    usTemp = (byte)(this.mDeviceInfo.mInfo.Model & 0x3F);
                    enDeviceModel model = (enDeviceModel)usTemp;
                    this.mDeviceInfo.mInfo.sModel = model.ToString();


                    usTemp = (byte)(this.mDeviceInfo.mInfo.Model >> 6 & 0x3);
                    if (usTemp == 0) this.mDeviceInfo.mInfo.sType = "A(Default)";
                    else if (usTemp == 1) this.mDeviceInfo.mInfo.sType = "B(Filter 5ea)";
                    else this.mDeviceInfo.mInfo.sType = "Error!";
                }

                if (bError == false) if (this.RefreshChannelExist() == false) bError = true;
                if (bError == false) if (this.ReadChannelnfo() == false) bError = true;
                if (bError == false) if (this.ReadLicenseInfo() == false) bError = true;
                if (bError == false)
                {
                    if (this.FirstCheckLicense(this.mDeviceInfo.mInfo.cLicense) == true)
                    {
                        this.mDeviceInfo.mInfo.sLicSerial = RefreshLicense(this.mDeviceInfo.mInfo.cLicense);
                    }
                    else this.mDeviceInfo.mInfo.sLicSerial = "";
                }

                usLi = 0x0;
                if (this.mDeviceInfo.mInfo.bBAT == true) usLi |= (ushort)enDeviceLicense.Battery;
                if (this.mDeviceInfo.mInfo.bCOR == true) usLi |= (ushort)enDeviceLicense.Corrosion;
                if (this.mDeviceInfo.mInfo.bECHM == true) usLi |= (ushort)enDeviceLicense.ElectroChemistry;
                if (this.mDeviceInfo.mInfo.bEIS == true) usLi |= (ushort)enDeviceLicense.Eis;
                if (this.mDeviceInfo.mInfo.bFRA == true) usLi |= (ushort)enDeviceLicense.Fra;
                this.mDeviceInfo.mInfo.usLicense = usLi;

               
                if (this.mDeviceInfo.mInfo.VerUSB >= 6000) this.mDeviceInfo.mInfo.bSupportVer = true;
                else
                {
                    this.mDeviceInfo.mInfo.bSupportVer = false;
                    return;
                }

                stDefStatData mStat;
                mStat = new stDefStatData(0);


                for (usTemp = 0; usTemp < 8; usTemp++)
                {
                    if (this.mDeviceInfo.mChannelInfo[usTemp].bExist == true)
                    {
                        if (this.ReadSysInfo(usTemp) != (ushort)enResult.FLAG_OK)
                        {
                            continue;
                        }
                    }
                }

                for (usTemp = 0; usTemp < 8; usTemp++)
                {
                    this.mDeviceInfo.mChannelInfo[usTemp].bLoadInfo = true;
                    if (bError == true) break;
                    this.RefreshStatusCount[usTemp] = 0;

                    if (this.mDeviceInfo.mChannelInfo[usTemp].bExist == true)
                    {

                        if (this.mDeviceInfo.mChannelInfo[usTemp].mSystem.mInfo.VerFPGA < 6000) continue;
                        if (this.mDeviceInfo.mChannelInfo[usTemp].mSystem.mInfo.iVersion < 6000000) continue;
                        int ChkTick = Environment.TickCount;
                        while (true)
                        {

                            if (this.ReadChannelStatus(usTemp, ref mStat) == (ushort)enResult.FLAG_OK)
                            {
                                break;
                            }
                            if ((Environment.TickCount - ChkTick) > 5000)
                            {
                                break;
                            }
                            Thread.Sleep(1);
                        }

                        if (mStat.mStatus.nFlowStat != (byte)enStatFlow.Running)
                        {                    
                            if (ApplyChLicense(usTemp) != (ushort)enResult.FLAG_OK)
                            {
                                continue;
                            }

                            if (this.ReadSysInfo(usTemp) != (ushort)enResult.FLAG_OK)
                            {
                                continue;
                            }
                            if (this.mDeviceInfo.mChannelInfo[usTemp].mSystem.mInfo.iVersion < 6000000)
                            {
                                continue;
                            }

                            if (this.ReadSysConfig(usTemp) != (ushort)enResult.FLAG_OK)
                            {
                                continue;
                            }
                            if (this.ReadSysRange(usTemp) != (ushort)enResult.FLAG_OK)
                            {
                                continue;
                            }
                            if (this.ReadBoosterRange(usTemp) != (ushort)enResult.FLAG_OK)
                            {

                                continue;
                            }

                        }
                        this.mDeviceInfo.mChannelInfo[usTemp].bLoadInfo = true;
                    }
                    else
                    {
                        Thread.Sleep(1);
                    }
                }
                string fsysname;
                fsysname = string.Format("{0}{1}.{2}", SM_Directory_define.SMGATEWAY_FOLDER_CFG,
                                                        sSerial, SM_Directory_define.FILE_SYSTEM_EXTENSION);
 
                SP_File.SP_SystemFile  fSys = new SP_File.SP_SystemFile(ref this.mDeviceInfo, fsysname,
                                                                        System.IO.FileMode.Create, System.IO.FileAccess.ReadWrite);
            }

            byte Get_SPDeviceProduct(USBDevice dev)
            {
                byte bRet = (byte)enDeviceModel.Unknown;
                if (dev == null) return bRet;

                if (dev.VendorID == 0x04B4 && dev.ProductID == 0x8613) bRet = (byte)enDeviceModel.Unknown;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0010) bRet = (byte)enDeviceModel.SP2;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0050) bRet = (byte)enDeviceModel.SP5;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0060) bRet = (byte)enDeviceModel.MP2;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0070) bRet = (byte)enDeviceModel.MP5;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0080) bRet = (byte)enDeviceModel.SP1;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0090) bRet = (byte)enDeviceModel.MP1;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0110) bRet = (byte)enDeviceModel.BP2;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0120) bRet = (byte)enDeviceModel.BP5;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0130) bRet = (byte)enDeviceModel.PP1;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0170) bRet = (byte)enDeviceModel.SP1E;
                return bRet;
            }

            public void ObjectClose()
            {
                this.bThread = false;
                this.bThreadStart = false;

                while (this.Th.IsAlive) ;

                //this.Th.Join();
                //this.Th.Abort();
                //this.mMapMem.Dispose();
                
            }

            public bool CheckEndPoints()
            {
                if (this.bUnknow == false)
                {
                    if (this.mDev.EndPointCount != 7) return false;
                }
                
                foreach (CyUSBEndPoint ept in this.mDev.EndPoints)
                {
                    switch(ept.Address) 
                    {
                        case 0x01: this.m_EpOut = ept; break;
                        case 0x02: this.m_EpHSOut = ept; break;
                        case 0x04: this.m_Ep4Out = ept; break;
                        case 0x81: this.m_EpIn = ept; break;
                        case 0x88: this.m_EpHSIn = ept; break;
                        case 0x86: this.m_Ep6In = ept; break;
                    }
                }
                this.mDev.ControlEndPt.TimeOut = Timeout;
                if (this.m_EpOut != null) this.m_EpOut.TimeOut = Timeout;
                if (this.m_EpHSOut != null) this.m_EpHSOut.TimeOut = Timeout;
                if (this.m_Ep4Out != null) this.m_Ep4Out.TimeOut = Timeout;
                if (this.m_EpIn != null) this.m_EpIn.TimeOut = Timeout;
                if (this.m_EpHSIn != null) this.m_EpHSIn.TimeOut = Timeout;
                if (this.m_Ep6In != null) this.m_Ep6In.TimeOut = Timeout;
                if (this.mDev.BulkInEndPt != null) this.mDev.BulkInEndPt.TimeOut = Timeout;
                if (this.mDev.BulkOutEndPt != null) this.mDev.BulkOutEndPt.TimeOut = Timeout;

                return true;
            }
           
            #region ** usb burn utilities

            public bool ResetFX2(byte[] stop)
            {
	            int len = 1;
	            this.mDev.ControlEndPt.ReqCode = 0xA0;
	            this.mDev.ControlEndPt.Value = 0xE600;
	            this.mDev.ControlEndPt.Index = 0;
	            return this.mDev.ControlEndPt.Write(ref stop,ref len);
            }

            public bool UploadRAMFX2(byte[] buffer, int len, ushort offset)
            {
	
	            this.mDev.ControlEndPt.ReqCode = 0xA0; //0xA0; // : 0xA3;
	            this.mDev.ControlEndPt.Index = 0;
	            this.mDev.ControlEndPt.Value = offset;
	            return this.mDev.ControlEndPt.Write(ref buffer, ref len);
            }

            public bool CheckUsbPROM()
            {
	            int nLen = 2;
	            ushort offset;
	            byte[] buf;
                buf = new byte[2]; 
                this.mDev.ControlEndPt.ReqCode = 0xA9;//A9,A2
                this.mDev.ControlEndPt.Value = 0;
                this.mDev.ControlEndPt.Index = 0;
                if (this.mDev.ControlEndPt.Read(ref buf, ref nLen) == false)
                {
                    return false;
                }
                offset = BitConverter.ToUInt16(buf, 0);
            	if(offset == 0xCDCD) return false; // clear check
	            return true;
            }

            public bool UploadROMFX2(byte[] buffer, int len, ushort offset)
            {
                this.mDev.ControlEndPt.ReqCode = 0xA9; //A9,A2
                this.mDev.ControlEndPt.Index = 0;
                this.mDev.ControlEndPt.Value = offset;
                return this.mDev.ControlEndPt.Write(ref buffer, ref len);
            }

            public bool ProgramROMFX2(byte[] buffer, int len, ushort offset)
            {
                if (len > (short)(m_Ep4Out.MaxPktSize - enUsbPacketInformation.ExtensionHeaderLength))
                    return false;

                int numByte;
                USB_BufOut_Ex mPacket;

                mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)enTarget.USB);
                mPacket.SetSubCommand((byte)enUsbComand.PageWriteEeprom);
                mPacket.SetAddress(offset);
                mPacket.SetLength((short)len);
                mPacket.SetChannel(0);
                mPacket.SetData(ref buffer, (short)len);

                numByte = (int)enUsbPacketInformation.ExtensionHeaderLength + len;

                try
                {
                    if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }
                    if (numByte != (int)enUsbPacketInformation.ExtensionHeaderLength + len)
                    {
                        return false;
                    }

                }
                catch
                {
                    return false;
                }

                return true;
            }

            #endregion //** usb burn utilities
           
            #region ** Read usb eeprom

            public bool RefreshModel()
            {
                int nAddr = (int)enUsbBaseAdderssEeprom.InformationArea + (int)enUsbOffsetInfoArea.model;
                byte [] buf = new byte[1];

                if (this.bUnknow == true)
                {
                    this.mDeviceInfo.mInfo.Model = 0x3F;
                }
                else
                {
                    if (this.ReadEEPROM(nAddr, 1, ref buf) == true)
                    {
                        this.mDeviceInfo.mInfo.Model = buf[0];
                    }
                    else
                    {
                        return false;
                    }

                }
                return true;
            }

            public bool SaveDevDescriptor()
            {
                int total;
                int len;
                int addr;
                byte[] outdata;

                DeviceHeader mInfo = new DeviceHeader();
                byte[] data = new byte[Marshal.SizeOf(mInfo)];
                this.mMapMem.ReadData(0, 0, ref data, 0, (int)Marshal.SizeOf(mInfo));

                mInfo.ToWritePtr(data);

                StringDscr m_StrDscr = new StringDscr();

                total = 0;

                len = 4;
                total += len;

                m_StrDscr.length = (byte)len;
                m_StrDscr.type = 0x03;
                m_StrDscr.setdata(0, 0x09);
                m_StrDscr.setdata(1, 0x04);
                outdata = m_StrDscr.ToByteArray(len);
                addr = (int)enUsbBaseAdderssEeprom.DescriptionArea + 2;
                if (this.WriteEEPROM(addr, (short)len, ref outdata) == false)
                {
                    return false;
                }

                addr += len;
                len = 2 * mInfo.sManufacturer.Count() + 2;
                total += len;
                m_StrDscr.length = (byte)len;
                m_StrDscr.type = 0x03;
                m_StrDscr.setdata(0, mInfo.sManufacturer);

                outdata = m_StrDscr.ToByteArray(len);
                if (this.WriteEEPROM(addr, (short)len, ref outdata) == false)
                {
                    return false;
                }

                addr += len;
                len = mInfo.sProduct.Count() * 2 + 2;
                total += len;
                m_StrDscr.length = (byte)len;
                m_StrDscr.type = 0x03;
                m_StrDscr.setdata(0, mInfo.sProduct);
                outdata = m_StrDscr.ToByteArray(len);
                if (this.WriteEEPROM(addr, (short)len, ref outdata) == false)
                {
                    return false;
                }

                addr += len;
                len = mInfo.sSerial.Count() * 2 + 2;
                total += len;
                m_StrDscr.length = (byte)len;
                m_StrDscr.type = 0x03;
                m_StrDscr.setdata(0, mInfo.sSerial);
                outdata = m_StrDscr.ToByteArray(len);
                if (this.WriteEEPROM(addr, (short)len, ref outdata) == false)
                {
                    return false;
                }

                m_StrDscr.type = (byte)total;
                m_StrDscr.length = 0x55;
                addr = (int)enUsbBaseAdderssEeprom.DescriptionArea;
                len = 2;
                outdata = m_StrDscr.ToByteArray(len);
                if (this.WriteEEPROM(addr, (short)len, ref outdata) == false)
                {
                    return false;
                }
                return true;
            }

            public ushort ReadUSBFirmwareVersion()
            {
                ushort ver = 0;

                if (this.bUnknow == true) return ver;

                int nAddr = (int)0xFFFF;

                byte[] buf = new byte[2];

                if (this.ReadEEPROM(nAddr, (int)2, ref buf) == true)
                {
                    ver = BitConverter.ToUInt16(buf, 0);
                }
                return ver;
            }

            public bool RefreshUSBFirmwareInf()
            {
                if (this.bUnknow == true) return true;

                int nAddr = (int)enUsbBaseAdderssEeprom.InformationArea;

                byte[] buf = new byte[(int)enUsbRomItemLength.Information];

                if (this.ReadEEPROM(nAddr, (int)enUsbRomItemLength.Information, ref buf) == true)
                {
                    this.mDeviceInfo.mInfo.mUSB.nFilesize = BitConverter.ToUInt64(buf, 0);
                    this.mDeviceInfo.mInfo.mUSB.LastModify = BitConverter.ToInt64(buf, sizeof(UInt64));
                }
                else
                {
                    return false;
                }
                return true;
            }

            public bool RefreshFPGAFirmwareInf(int nCh)
            {
                if (this.bUnknow == true) return true;

                int nAddr = (int)enUsbBaseAdderssEeprom.InformationArea + ((int)enUsbRomItemLength.Information * (nCh + 1));
                byte[] buf = new byte[(int)enUsbRomItemLength.Information];

                if (this.ReadEEPROM(nAddr, (short)enUsbRomItemLength.Information, ref buf) == true)
                {
                    this.mDeviceInfo.mChannelInfo[nCh].mFPGA.nFilesize = BitConverter.ToUInt64(buf, 0);
                    this.mDeviceInfo.mChannelInfo[nCh].mFPGA.LastModify = BitConverter.ToInt64(buf, sizeof(UInt64));
                }
                else
                {
                    return false;
                }
                return true;
            }

            public bool RefreshDSPFirmwareInf(int nCh)
            {
                if (this.bUnknow == true) return true;

                int nAddr = (int)enUsbBaseAdderssEeprom.InformationArea + ((int)enUsbRomItemLength.Information * (nCh + 9));
                byte[] buf = new byte[(int)enUsbRomItemLength.Information];

                if (this.ReadEEPROM(nAddr, (short)enUsbRomItemLength.Information, ref buf) == true)
                {
                    this.mDeviceInfo.mChannelInfo[nCh].mDSP.nFilesize = BitConverter.ToUInt64(buf, 0);
                    this.mDeviceInfo.mChannelInfo[nCh].mDSP.LastModify = BitConverter.ToInt64(buf, sizeof(UInt64));
                }
                else
                {
                    return false;
                }
                return true;
            }

            public bool RefreshChannelExist()
            {
                if (this.bUnknow == true) return true;
                USB_BufOut_Ex mPacket;
                int numByte;

                numByte =  (int)enUsbPacketInformation.ExtensionHeaderLength;

                mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)enTarget.DSP);
                mPacket.SetSubCommand((byte)enDspComand.DEV_CHCHECK);
                mPacket.SetAddress(0);
                mPacket.SetLength((short)0);
                mPacket.SetChannel(0);



                if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                {
                    this.Reset_USBFifo();
                    return false;
                }


                byte[] m_BufInEx;

                numByte = 1;
                m_BufInEx = new byte[(int)enUsbPacketInformation.ExtensionPacketLength];
                if (this.m_Ep6In.XferData(ref m_BufInEx, ref numByte) == false)
                {
                    this.Reset_USBFifo();
                    return false;
                }

                byte usTemp;
                byte usTemp1;
                int i;
                if (m_BufInEx[0] == 0x0) this.mDeviceInfo.mInfo.Status = false;
                else
                {
                    this.mDeviceInfo.mInfo.Status = true;
                    usTemp = (byte)(this.mDeviceInfo.mInfo.Model & 0x3F);

                    if (usTemp == (byte)enDeviceModel.SP1
                        || usTemp == (byte)enDeviceModel.PP1
                        || usTemp == (byte)enDeviceModel.SP2
                        || usTemp == (byte)enDeviceModel.SP5
                        || usTemp == (byte)enDeviceModel.SP1E)
                    {
                        if ((m_BufInEx[0] & 0x1) != 0)
                        {
                            this.mDeviceInfo.mChannelInfo[0].bExist = true;
                            this.RefreshFPGAFirmwareInf(0);
                            this.RefreshDSPFirmwareInf(0);

                        }
                    }
                    else if (usTemp == (byte)enDeviceModel.BP2
                        || usTemp == (byte)enDeviceModel.BP5)
                    {
                        if ((m_BufInEx[0] & 0x1) != 0)
                        {
                            this.mDeviceInfo.mChannelInfo[0].bExist = true;
                            this.RefreshFPGAFirmwareInf(0);
                            this.RefreshDSPFirmwareInf(0);
                        }
                        if ((m_BufInEx[0] & 0x2) != 0)
                        {
                            this.mDeviceInfo.mChannelInfo[1].bExist = true;
                            this.RefreshFPGAFirmwareInf(1);
                            this.RefreshDSPFirmwareInf(1);
                        }
                    }
                    else
                    {
                        usTemp1 = 0x1;
                        for (i = 0; i < 8; i++)
                        {
                            if ((m_BufInEx[0] & usTemp1) != 0)
                            {
                                this.mDeviceInfo.mChannelInfo[i].bExist = true;
                                this.RefreshFPGAFirmwareInf(i);
                                this.RefreshDSPFirmwareInf(i);
                            }
                            usTemp1 <<= 1;
                        }
                    }
                }
                return true;
            }

            public bool ReadLicenseInfo()
            {
                int nAddr = (int)enUsbBaseAdderssEeprom.UserArea + (int)enUsbOffsetUserArea.License;
                byte[] buf = new byte[(int)enUsbRomItemLength.LicenseSerial];
                buf.Initialize();
                if (this.bUnknow == true)
                {
                    this.mDeviceInfo.mInfo.cLicense = "";
                }
                else
                {
                    if (this.ReadEEPROM(nAddr, (short)enUsbRomItemLength.LicenseSerial, ref buf) == true)
                    {
                        this.mDeviceInfo.mInfo.cLicense = Encoding.UTF8.GetString(buf);
                    }
                    else
                    {
                        this.mDeviceInfo.mInfo.cLicense = "";
                        return false;
                    }
                }
                return true;
            }

            public bool ReadChannelnfo()
            {
                int nAddr = (int)enUsbBaseAdderssEeprom.UserArea + (int)enUsbOffsetUserArea.ChannelCount;
                int i;
                byte[] buf = new byte[2];
                buf.Initialize();
                if (this.bUnknow == false)
                {
                    if (this.ReadEEPROM(nAddr, 1, ref buf) == true)
                    {
                        if (buf[0] <= SP_USBDefine.MAX_DEV_CH) this.mDeviceInfo.mInfo.useChannel = buf[0];
                    }
                    else
                    {
                        this.mDeviceInfo.mInfo.useChannel = 0;
                        return false;
                    }
                }
                else
                {
                    this.mDeviceInfo.mInfo.useChannel = 0;
                    return true;
                }
                for (i = 0; i < SP_USBDefine.MAX_DEV_CH; i++)
                {
                    if (this.mDeviceInfo.mChannelInfo[i].bExist == true)
                    {
                        buf.Initialize();
                        nAddr = (int)enUsbBaseAdderssEeprom.UserArea + (int)enUsbOffsetUserArea.DefineChannel0 + i;
                        if (this.ReadEEPROM(nAddr, 1, ref buf) == true)
                        {
                            if (buf[0] >= 0 && buf[0] < 33)
                            {
                                this.mDeviceInfo.mChannelInfo[i].Channel = buf[0];
                            }
                            else this.mDeviceInfo.mChannelInfo[i].Channel = 0;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
                return true;
            }

            #endregion

            #region ** write usb eeprom

            public bool SetLicense(ref byte[] pData)
            {
                int nAddr = (int)enUsbBaseAdderssEeprom.UserArea + (int)enUsbOffsetUserArea.License;
                return this.WriteEEPROM(nAddr, (short)enUsbRomItemLength.LicenseSerial, ref pData);
            }

            int SaveLicense(int nCh, ushort usLicense)
            {

                int nWriteSize;
                int nReadSize;
                stDefCtrlCmd mCmd;

                mCmd = new stDefCtrlCmd();

                mCmd.SetFlag((byte)enFlag.FLAG_WRITE);
                mCmd.SetCmd((byte)enCommCmdMain.System);
                mCmd.SetSubCmd((byte)enCommCmdSystem.License);
                mCmd.SetData(0, usLicense);
                mCmd.SetChksum(0, 2);
                nWriteSize = mCmd.GetLength();

                if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                    return (ushort)enResult.STAT_CMD_ERRWR;

                nReadSize = mCmd.DEF_CMD_HEADSIZE;
                if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, (int)nReadSize) == false)
                {
                    return (ushort)enResult.STAT_CMD_ERRRD;
                }
                return mCmd.GetFlag();
            }

            #endregion //** write usb eeprom

            #region ** Read dsp system

            public ushort ReadSysInfo(int nCh)
            {
                int		nWriteSize;
	            int		nReadSize;
                int     nErr;
                byte[]  mByteArray;
                ushort  ret;
                stDefCtrlCmd mCmd;

                mCmd = new stDefCtrlCmd();

                mCmd.SetFlag((byte)enFlag.FLAG_REQUEST);
                mCmd.SetCmd((byte)enCommCmdMain.System);
                mCmd.SetSubCmd((byte)enCommCmdSystem.Information);
               
                nWriteSize = mCmd.GetLength();
                nErr = 0;
                while (true)
                {
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                    if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                        return (ushort)enResult.STAT_CMD_ERRWR;

                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                    nReadSize = mCmd.DEF_CMD_HEADSIZE + Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mInfo);
                    if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, (int)nReadSize) == false)
                    {
                        return (ushort)enResult.STAT_CMD_ERRRD;
                    }
                    ret = mCmd.GetFlag();
                    if (ret == (ushort)enResult.FLAG_OK)
                    {

                        mByteArray = mCmd.ToByteArrayCheckSum(0, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mInfo));
                        if (mByteArray == null)
                        {
                            nErr++;
                            if (nErr > 5)
                            {
                                ret = (ushort)enResult.FLAG_ERRCHKSUM;
                                break;
                            }
                        }
                        else
                        {
                            this.mDeviceInfo.mChannelInfo[nCh].mSystem.mInfo.ToWritePtr(mByteArray);
                            //this.mDeviceInfo.mChannelInfo[nCh].mSystem.mInfo.ToWritePtr(
                            //    mCmd.ToByteArray(0, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mInfo)));
                            break;
                        }

                    }
                    else break;
                }
                return ret;

            }

            public ushort ReadOldSysInfo_0(int nCh, ref stDefSysInfo_0 mOldSysInfo)
            {
                int nWriteSize;
                int nReadSize;
                int nErr;
                byte[] mByteArray;
                ushort ret;
                stDefCtrlCmd mCmd;

                mCmd = new stDefCtrlCmd();

                mCmd.SetFlag((byte)enFlag.FLAG_REQUEST);
                mCmd.SetCmd((byte)enCommCmdMain.System);
                mCmd.SetSubCmd((byte)enCommCmdSystem.Information);

                nWriteSize = mCmd.GetLength();
                nErr = 0;
                while (true)
                {
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                    if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                    {
                        return (ushort)enResult.STAT_CMD_ERRWR;
                    }

                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                    nReadSize = mCmd.DEF_CMD_HEADSIZE + Marshal.SizeOf(mOldSysInfo);
                    if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, (int)nReadSize) == false)
                    {
                        return (ushort)enResult.STAT_CMD_ERRRD;
                    }
                    ret = mCmd.GetFlag();
                    if (ret == (ushort)enResult.FLAG_OK)
                    {

                        mByteArray = mCmd.ToByteArrayCheckSum(0, Marshal.SizeOf(mOldSysInfo));
                        if (mByteArray == null)
                        {
                            nErr++;
                            if (nErr > 5)
                            {
                                ret = (ushort)enResult.FLAG_ERRCHKSUM;
                                break;
                            }
                        }
                        else
                        {
                            mOldSysInfo.ToWritePtr(mByteArray);
                            break;
                        }

                    }
                    else break;
                }

                return ret;

            }
          
            public ushort ReadSysConfig(int nCh)
            {
                int nWriteSize;
                int nReadSize;
                ushort ret;
                int nErr;
                byte[] mByteArray;
                stDefCtrlCmd mCmd;

                mCmd = new stDefCtrlCmd();

                mCmd.SetFlag((byte)enFlag.FLAG_REQUEST);
                mCmd.SetCmd((byte)enCommCmdMain.System);
                mCmd.SetSubCmd((byte)enCommCmdSystem.Configuration);

                nWriteSize = mCmd.GetLength();
                nErr = 0;
                while (true)
                {
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                    if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                        return (ushort)enResult.STAT_CMD_ERRWR;
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                    nReadSize = mCmd.DEF_CMD_HEADSIZE + Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig);
                    if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, (int)nReadSize) == false)
                    {
                        return (ushort)enResult.STAT_CMD_ERRRD;
                    }
                    ret = mCmd.GetFlag();
                    if (ret == (ushort)enResult.FLAG_OK)
                    {
                        mByteArray = mCmd.ToByteArrayCheckSum(0, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig));
                        if (mByteArray == null)
                        {
                            nErr++;
                            if (nErr > 5)
                            {
                                ret = (ushort)enResult.FLAG_ERRCHKSUM;
                                break;
                            }
                        }
                        else
                        {
                            this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig.ToWritePtr(mByteArray);
                            //this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig.ToWritePtr(
                            //     mCmd.ToByteArray(0, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig)));
                            break;
                        }
                    }
                    else break;
                }
                return ret;

            }

            public ushort ReadOldSysConfig_0(int nCh, ref stDefSysConfig_0 mOldConfig)
            {
                int nWriteSize;
                int nReadSize;
                ushort ret;
                int nErr;
                byte[] mByteArray;
                stDefCtrlCmd mCmd;

                mCmd = new stDefCtrlCmd();

                mCmd.SetFlag((byte)enFlag.FLAG_REQUEST);
                mCmd.SetCmd((byte)enCommCmdMain.System);
                mCmd.SetSubCmd((byte)enCommCmdSystem.Configuration);

                nWriteSize = mCmd.GetLength();
                nErr = 0;
                while (true)
                {
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                    if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                        return (ushort)enResult.STAT_CMD_ERRWR;
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                    nReadSize = mCmd.DEF_CMD_HEADSIZE + Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig);
                    if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, (int)nReadSize) == false)
                    {
                        return (ushort)enResult.STAT_CMD_ERRRD;
                    }
                    ret = mCmd.GetFlag();
                    if (ret == (ushort)enResult.FLAG_OK)
                    {
                        mByteArray = mCmd.ToByteArrayCheckSum(0, Marshal.SizeOf(mOldConfig));
                        if (mByteArray == null)
                        {
                            nErr++;
                            if (nErr > 5)
                            {
                                ret = (ushort)enResult.FLAG_ERRCHKSUM;
                                break;
                            }
                        }
                        else
                        {
                            mOldConfig.ToWritePtr(mByteArray);
                        
                            break;
                        }
                    }
                    else break;
                }
                return ret;

            }

            public ushort WriteSysConfig(int nCh)
            {
                int nWriteSize;
                int nReadSize;
                ushort ret;
                int nErr;
                byte[] mByteArray;
                stDefCtrlCmd mCmd;

                mCmd = new stDefCtrlCmd();

                mCmd.SetFlag((byte)enFlag.FLAG_WRITE);
                mCmd.SetCmd((byte)enCommCmdMain.System);
                mCmd.SetSubCmd((byte)enCommCmdSystem.Configuration);
            
                mByteArray = this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig.ToByteArray();
                mCmd.SetData(ref mByteArray, 0, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig));
                mCmd.SetChksum(0, (ushort)Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig));
                nWriteSize = mCmd.DEF_CMD_HEADSIZE + Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig);
                nErr = 0;
                while (true)
                {
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                    if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                        return (ushort)enResult.STAT_CMD_ERRWR;
                    nReadSize = mCmd.DEF_CMD_HEADSIZE;
                    if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                    {
                        return (ushort)enResult.STAT_CMD_ERRRD;
                    }
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                    ret = mCmd.GetFlag();
                    if (ret == (ushort)enResult.FLAG_ERRCHKSUM)
                    {
                        nErr++;
                        if (nErr > 5)
                        {
                            break;
                        }
                    }
                    else break;
                }
                return ret;

            }

            public ushort ReadSysRange(int nCh)
            {
                int nCommBufSize;
                int nWriteSize;
                int nReadSize;
                ushort ret;
                int nErr;
                byte[] mByteArray;
                byte[] tByteArray;
                int  nCopySize;
                int nTotalSize;
	            int nOffset;
	            int nLen;
                stDefCtrlCmd mCmd;

                nTotalSize = Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange);
	            nCopySize = Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange);
                if (this.mDeviceInfo.mInfo.bSupportVer == false)
                {
                    nCommBufSize = 1900;
                }
                else
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].mSystem.mInfo.VerFPGA < 6000)
                    {
                        nCommBufSize = 1900;
                    }
                    else
                    {
                        nCommBufSize = SP_USBDefine.DEF_USB_DATAMEMSIZE;
                    }
                }
                mCmd = new stDefCtrlCmd();
                mByteArray = new byte[nCopySize];

                ret = (ushort)enResult.FLAG_OK;

                
                nOffset = 0;
                nWriteSize = mCmd.DEF_CMD_HEADSIZE + 4;
                nErr = 0;
                while(true)
                {
                    if(nOffset>=nTotalSize) break;
		            if(nCopySize <= 0) break;
                    if (nCopySize > nCommBufSize) nLen = nCommBufSize;
		            else nLen = nCopySize;

                    mCmd.SetFlag((byte)enFlag.FLAG_REQUEST);
                    mCmd.SetCmd((byte)enCommCmdMain.System);
                    mCmd.SetSubCmd((byte)enCommCmdSystem.Range);

                    mCmd.SetData(0,(ushort)nOffset);
                    mCmd.SetData(1,(ushort)nLen);
                    mCmd.SetChksum(4,0);
                    
                    nReadSize = mCmd.DEF_CMD_HEADSIZE + 4 + nLen;
                    while (true)
                    {
                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                        if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                            return (ushort)enResult.STAT_CMD_ERRWR;

                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                        if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                        {
                            return (ushort)enResult.STAT_CMD_ERRRD;
                        }

                        ret = mCmd.GetFlag();
                        if (ret == (ushort)enResult.FLAG_OK)
                        {
                            tByteArray = mCmd.ToByteArrayCheckSum(4, nLen);
                            if (tByteArray == null)
                            {
                                nErr++;
                                if (nErr > 5)
                                {
                                    return (ushort)enResult.FLAG_ERRCHKSUM;
                                }
                            }
                            else
                            {
                                Array.Copy(tByteArray, 0, mByteArray, nOffset, nLen);

                                //this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.ToWritePtr(
                                //     mCmd.ToByteArray(0, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange)));
                                break;
                            }
                        }
                        else
                        {
                            return ret;
                        }
                    }
                    nCopySize -= nLen;
                    nOffset += nLen;
                }

                this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.ToWritePtr(mByteArray);
                
                return ret;

            }

            public ushort ReadOldSysRange_0(int nCh, ref stDefSysRange_0 mRange)
            {
                int nWriteSize;
                int nReadSize;
                ushort ret;
                int nErr;
                byte[] mByteArray;
                byte[] tByteArray;
                int nCopySize;
                int nTotalSize;
                int nOffset;
                int nLen;
                stDefCtrlCmd mCmd;

                nTotalSize = Marshal.SizeOf(mRange);
                nCopySize = Marshal.SizeOf(mRange);

                mCmd = new stDefCtrlCmd();
                mByteArray = new byte[nCopySize];

                ret = (ushort)enResult.FLAG_OK;


                nOffset = 0;
                nWriteSize = mCmd.DEF_CMD_HEADSIZE + 4;
                nErr = 0;
                while (true)
                {
                    if (nOffset >= nTotalSize) break;
                    if (nCopySize <= 0) break;
                    if (nCopySize > SP_USBDefine.DEF_USB_DATAMEMSIZE_5) nLen = SP_USBDefine.DEF_USB_DATAMEMSIZE_5;
                    else nLen = nCopySize;

                    mCmd.SetFlag((byte)enFlag.FLAG_REQUEST);
                    mCmd.SetCmd((byte)enCommCmdMain.System);
                    mCmd.SetSubCmd((byte)enCommCmdSystem.Range);

                    mCmd.SetData(0, (ushort)nOffset);
                    mCmd.SetData(1, (ushort)nLen);
                    mCmd.SetChksum(4, 0);

                    nReadSize = mCmd.DEF_CMD_HEADSIZE + 4 + nLen;
                    while (true)
                    {
                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                        if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                            return (ushort)enResult.STAT_CMD_ERRWR;

                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                        if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                        {
                            return (ushort)enResult.STAT_CMD_ERRRD;
                        }

                        ret = mCmd.GetFlag();
                        if (ret == (ushort)enResult.FLAG_OK)
                        {
                            tByteArray = mCmd.ToByteArrayCheckSum(4, nLen);
                            if (tByteArray == null)
                            {
                                nErr++;
                                if (nErr > 5)
                                {
                                    return (ushort)enResult.FLAG_ERRCHKSUM;
                                }
                            }
                            else
                            {
                                Array.Copy(tByteArray, 0, mByteArray, nOffset, nLen);
                                break;
                            }
                        }
                        else
                        {
                            return ret;
                        }
                    }
                    nCopySize -= nLen;
                    nOffset += nLen;
                }
                mRange.ToWritePtr(mByteArray);
               
                return ret;

            }

            public ushort WriteSysRange(int nCh)
            {
                int nCommBufSize;
                int nReadSize;
                int nWriteSize;
                ushort ret;
                int nErr;
                byte[] mByteArray;
                byte[] tByteArray;
                int nCopySize;
                int nTotalSize;
                int nOffset;
                int nLen;
                stDefCtrlCmd mCmd;

                nTotalSize = Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange);
                nCopySize = Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange);
                if (this.mDeviceInfo.mInfo.bSupportVer == false)
                {
                    nCommBufSize = 1900;
                }
                else
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].mSystem.mInfo.VerFPGA < 6000)
                    {
                        nCommBufSize = 1900;
                    }
                    else
                    {
                        nCommBufSize = SP_USBDefine.DEF_USB_DATAMEMSIZE;
                    }
                }

                mCmd = new stDefCtrlCmd();
                mByteArray = new byte[nCopySize];
                tByteArray = new byte[nCommBufSize];
                ret = (ushort)enResult.FLAG_OK;

                mCmd.SetFlag((byte)enFlag.FLAG_WRITE);
                mCmd.SetCmd((byte)enCommCmdMain.System);
                mCmd.SetSubCmd((byte)enCommCmdSystem.Configuration);
                mCmd.SetData(0, 0);
                mCmd.SetData(1, (ushort)Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig));
                mByteArray = this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig.ToByteArray();
                mCmd.SetData(ref mByteArray, 2, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig));
                mCmd.SetChksum(2, (ushort)Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig));
                nWriteSize = mCmd.DEF_CMD_HEADSIZE + 4 + Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig);
                nErr = 0;

                mByteArray = this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.ToByteArray();
                nOffset = 0;
                nWriteSize = mCmd.DEF_CMD_HEADSIZE + 4;
                nErr = 0;
                while (true)
                {
                    if (nOffset >= nTotalSize) break;
                    if (nCopySize <= 0) break;
                    if (nCopySize > nCommBufSize) nLen = nCommBufSize;
                    else nLen = nCopySize;

                    mCmd.SetFlag((byte)enFlag.FLAG_WRITE);
                    mCmd.SetCmd((byte)enCommCmdMain.System);
                    mCmd.SetSubCmd((byte)enCommCmdSystem.Range);

                    mCmd.SetData(0, (ushort)nOffset);
                    mCmd.SetData(1, (ushort)nLen);
                    Array.Copy(mByteArray, nOffset, tByteArray, 0, nLen);
                    mCmd.SetData(ref tByteArray, 2, nLen);

                    mCmd.SetChksum(4, nLen);

                    nWriteSize = mCmd.DEF_CMD_HEADSIZE + 4 + nLen;
                    while (true)
                    {
                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                        if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                            return (ushort)enResult.STAT_CMD_ERRWR;
                        nReadSize = mCmd.DEF_CMD_HEADSIZE;
                        if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                        {
                            return (ushort)enResult.STAT_CMD_ERRRD;
                        }
                        ret = mCmd.GetFlag();
                        if (ret == (ushort)enResult.FLAG_ERRCHKSUM)
                        {

                            nErr++;
                            if (nErr > 5)
                            {
                                return (ushort)enResult.FLAG_ERRCHKSUM;
                            }
                        }
                        else if (ret == (ushort)enResult.FLAG_OK)
                        {
                            break;
                        }
                        else
                        {
                            return ret;
                        }
                    }
                    nCopySize -= nLen;
                    nOffset += nLen;
                }

                return ret;

            }

            public ushort ReadBoosterRange(int nCh)
            {
                int nWriteSize;
                int nReadSize;
                ushort ret;
                int nErr;
                byte[] tByteArray;
                byte[] mByteArray;

                int nCopySize;
                int nTotalSize;
                int nOffset;
                int nLen;
                stDefCtrlCmd mCmd;

                nTotalSize = Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.mBstRange);
                nCopySize = Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.mBstRange);

                mCmd = new stDefCtrlCmd();
                mByteArray = new byte[nCopySize];

                ret = (ushort)enResult.FLAG_OK;


                nOffset = 0;
                nWriteSize = mCmd.DEF_CMD_HEADSIZE + 4;
                nErr = 0;
                while (true)
                {
                    if (nOffset >= nTotalSize) break;
                    if (nCopySize <= 0) break;
                    if (nCopySize > SP_USBDefine.DEF_USB_DATAMEMSIZE) nLen = SP_USBDefine.DEF_USB_DATAMEMSIZE;
                    else nLen = nCopySize;

                    mCmd.SetFlag((byte)enFlag.FLAG_REQUEST);
                    mCmd.SetCmd((byte)enCommCmdMain.System);
                    mCmd.SetSubCmd((byte)enCommCmdSystem.BoosterInformation);

                    mCmd.SetData(0, (ushort)nOffset);
                    mCmd.SetData(1, (ushort)nLen);
                    mCmd.SetChksum(4, 0);
          
                    nReadSize = mCmd.DEF_CMD_HEADSIZE + 4 + nLen;
                    while (true)
                    {
                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                        if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                        {
                            return (ushort)enResult.STAT_CMD_ERRWR;
                        }

                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                        if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                        {
                            return (ushort)enResult.STAT_CMD_ERRRD;
                        }

                        ret = mCmd.GetFlag();
                        if (ret == (ushort)enResult.FLAG_OK)
                        {
                            tByteArray = mCmd.ToByteArrayCheckSum(4, nLen);
                            if (tByteArray == null)
                            {
                                nErr++;
                                if (nErr > 5)
                                {
                                    return (ushort)enResult.FLAG_ERRCHKSUM;
                                }
                            }
                            else
                            {
                                Array.Copy(tByteArray, 0, mByteArray, nOffset, nLen);

                                //this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.ToWritePtr(
                                //     mCmd.ToByteArray(0, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange)));
                                break;
                            }

                        }
                        else
                        {
                            return ret;
                        }
                    }
                    nCopySize -= nLen;
                    nOffset += nLen;
                }
                this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.mBstRange.ToWritePtr(mByteArray);

                return ret;

            }

            public ushort ReadMuxRange(int nCh)
            {
                int nWriteSize;
                int nReadSize;
                ushort ret;
                int nErr;
                byte[] tByteArray;
                byte[] mByteArray;

                int nCopySize;
                int nTotalSize;
                int nOffset;
                int nLen;
                stDefCtrlCmd mCmd;

                nTotalSize = Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.mMux);
                nCopySize = Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.mMux);

                mCmd = new stDefCtrlCmd();
                mByteArray = new byte[nCopySize];

                ret = (ushort)enResult.FLAG_OK;


                nOffset = 0;
                nWriteSize = mCmd.DEF_CMD_HEADSIZE + 4;
                nErr = 0;
                while (true)
                {
                    if (nOffset >= nTotalSize) break;
                    if (nCopySize <= 0) break;
                    if (nCopySize > SP_USBDefine.DEF_USB_DATAMEMSIZE) nLen = SP_USBDefine.DEF_USB_DATAMEMSIZE;
                    else nLen = nCopySize;

                    mCmd.SetFlag((byte)enFlag.FLAG_REQUEST);
                    mCmd.SetCmd((byte)enCommCmdMain.System);
                    mCmd.SetSubCmd((byte)enCommCmdSystem.MuxInformation);

                    mCmd.SetData(0, (ushort)nOffset);
                    mCmd.SetData(1, (ushort)nLen);
                    mCmd.SetChksum(4, 0);

                    nReadSize = mCmd.DEF_CMD_HEADSIZE + 4 + nLen;
                    while (true)
                    {
                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                        if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                        {
                            return (ushort)enResult.STAT_CMD_ERRWR;
                        }

                        if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;

                        if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                        {
                            return (ushort)enResult.STAT_CMD_ERRRD;
                        }

                        ret = mCmd.GetFlag();
                        if (ret == (ushort)enResult.FLAG_OK)
                        {
                            tByteArray = mCmd.ToByteArrayCheckSum(4, nLen);
                            if (tByteArray == null)
                            {
                                nErr++;
                                if (nErr > 5)
                                {
                                    return (ushort)enResult.FLAG_ERRCHKSUM;
                                }
                            }
                            else
                            {
                                Array.Copy(tByteArray, 0, mByteArray, nOffset, nLen);

                                //this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.ToWritePtr(
                                //     mCmd.ToByteArray(0, Marshal.SizeOf(this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange)));
                                break;
                            }

                        }
                        else
                        {
                            return ret;
                        }
                    }
                    nCopySize -= nLen;
                    nOffset += nLen;
                }
                this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange.mMux.ToWritePtr(mByteArray);

                return ret;

            }

            #endregion

            #region ** read dsp status

            public ushort ReadChannelStatus(int nCh,ref stDefStatData mStat)
            {
                int nWriteSize;
                int nReadSize;
                byte[] mByteArray;
                ushort ret;
                stDefCtrlCmd mCmd;

                mCmd = new stDefCtrlCmd();

                while (true)
                {
                    mCmd.SetFlag((ushort)enFlag.FLAG_REQUEST);
                    mCmd.SetCmd((ushort)enCommCmdMain.Status);
                    mCmd.SetSubCmd((ushort)enCommCmdStatus.General);
                    mCmd.SetChksum(0, 0);
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                    nWriteSize = mCmd.DEF_CMD_HEADSIZE;
                    if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                    {
                        return (ushort)enResult.STAT_CMD_ERRWR;
                    }
                    if (this.bThread == false) return (ushort)enResult.FLAG_FAIL;
                    nReadSize = mCmd.DEF_CMD_HEADSIZE + Marshal.SizeOf(typeof(stDefStatData));
                    if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, (int)nReadSize) == false)
                    {
                        return (ushort)enResult.STAT_CMD_ERRRD;
                    }
                    ret = mCmd.GetFlag();
                    if (ret == (ushort)enResult.FLAG_OK)
                    {
                        mByteArray = mCmd.ToByteArrayCheckSum(0, Marshal.SizeOf(typeof(stDefStatData)));
                        if (mByteArray == null)
                        {
                            ret = (ushort)enResult.FLAG_ERRCHKSUM;
                        }
                        else
                        {
                            mStat.ToWritePtr(mByteArray);
                        }
                        break;
                    }
                    else if (ret == (ushort)enResult.FLAG_REQUEST)
                    {
                        continue;
                    }
                    else break;
                }
                return ret;

            }

            #endregion

            #region **base comm util

            public bool ChkTrig(byte ch)
            {
                int numByte;

                USB_BufOut_Ex mPacket;
                byte[] m_BufInEx;
                m_BufInEx = new byte[1];

                numByte = (int)enUsbPacketInformation.ExtensionHeaderLength;

                mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)enTarget.DSP);
                mPacket.SetSubCommand((byte)enDspComand.TRIG);
                mPacket.SetAddress(0x1);
                mPacket.SetLength((short)numByte);
                mPacket.SetChannel(ch);

                try
                {
                    if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }


                    m_BufInEx[0] = 0;
                    numByte = 1;

                    
                    if (this.m_Ep6In.XferData(ref m_BufInEx, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }

                    if (m_BufInEx[0] == 0x5 || m_BufInEx[0] == 0x5A)
                    {
                        return true;
                    }
                }
                catch
                {
                    return false;
                }
                return false;
            }

            bool CommTrigProc(byte ch)
            {
                int nStTime;
                int nCrTime;
                bool bRet;

                bRet = false;

                nStTime = Environment.TickCount;

                while (true)
                {
                    if (this.ChkTrig(ch) == true)
                    {
                        bRet = true;
                        break;
                    }

                    nCrTime = Environment.TickCount;
                    if ((nCrTime - nStTime) > 3000)
                    {
                        this.Reset_USBFifo();
                        break;
                    }

                    if (this.bThread == false) return bRet;
     //               Thread.Sleep(1);
                }
                return bRet;
            }

            bool ReadData(byte nCh)
            {
                int nDataLen;
                int nWriteSize;
                int nReadSize;
                stDefCtrlCmd mCmd;
                var p = this.mMapMem.mSP_CmdMapHeader[nCh].mCommand;
                mCmd = new stDefCtrlCmd();

                nDataLen = (int)p.RdLength;
                mCmd.SetFlag((ushort)enFlag.FLAG_REQUEST);
                mCmd.SetCmd(p.cmd);
                mCmd.SetSubCmd(p.subcmd);

                nWriteSize = mCmd.DEF_CMD_HEADSIZE + (int)p.WrLength;
                nReadSize = mCmd.DEF_CMD_HEADSIZE + nDataLen;

                if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                    return false;


                if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                {
                    return false;
                }

                mCmd.RefreshFlag();


                if (mCmd.CheckChksum(0, nDataLen) == false)
                {
                    return false;
                }
                if (mCmd.GetFlag() == (ushort)enResult.FLAG_OK)
                {
                    this.mMapMem.WriteData(nCh, Marshal.SizeOf(this.mMapMem.mSP_CmdMapHeader[nCh]), ref mCmd.psData, mCmd.DEF_CMD_HEADSIZE, nReadSize);
                }
                else return false;
                return true;
            }

            bool WriteData(byte nCh)
            {
                int nDataLen;
                int nWriteSize;
                int nReadSize;
                stDefCtrlCmd mCmd;
                var p = this.mMapMem.mSP_CmdMapHeader[nCh].mCommand;

                mCmd = new stDefCtrlCmd();

                nDataLen = (int)p.WrLength;
                nWriteSize = mCmd.DEF_CMD_HEADSIZE + nDataLen;
                nReadSize = mCmd.DEF_CMD_HEADSIZE;

                mCmd.SetFlag((ushort)enFlag.FLAG_WRITE);
                mCmd.SetCmd(p.cmd);
                mCmd.SetSubCmd(p.subcmd);
                mMapMem.ReadData(nCh, Marshal.SizeOf(this.mMapMem.mSP_CmdMapHeader[nCh]), ref mCmd.psData, mCmd.DEF_CMD_HEADSIZE, nDataLen);
                mCmd.SetChksum(0, nDataLen);

                if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                    return false;

                if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, (int)nReadSize) == false)
                {
                    return false;
                }

                if (mCmd.GetFlag() != (ushort)enResult.FLAG_OK)
                {
                    return false;
                }
                return true;
            }

            void Reset_USBFifo()
            {
                try
                {
  //                  this.mDev.Reset();
                }
                catch
                {
                }
            }

            bool WriteFPGA(byte ch, int address, ref byte[] pdata, int length)
            {

	            int numByte;
                USB_BufOut_Ex mPacket;

                
	            mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)enTarget.DSP);
                mPacket.SetSubCommand((byte)enDspComand.COMWRITE);
                mPacket.SetAddress(address);
                mPacket.SetLength((short)length);
                mPacket.SetChannel(ch);

                numByte = (int)enUsbPacketInformation.ExtensionHeaderLength;
                try
                {
                    if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }
/*
                    if (numByte != (int)enUsbPacketInformation.ExtensionHeaderLength)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }
                    */
                    numByte = length;
                    if (this.m_Ep4Out.XferData(ref pdata, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }

                    if (numByte != length)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }
                }
                catch
                {
                    return false;
                }

                return this.CommTrigProc(ch);
            }

            bool ReadFPGA(byte ch, int address, ref byte[] pdata, int length)
            {
	            int numByte;
                USB_BufOut_Ex mPacket;

                mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)enTarget.DSP);
                mPacket.SetSubCommand((byte)enDspComand.COMREAD);
                mPacket.SetAddress(address);
                mPacket.SetLength((short)length);
                mPacket.SetChannel(ch);

                numByte = (int)enUsbPacketInformation.ExtensionHeaderLength;

                try
                {
                    if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }

                    if (numByte != (int)enUsbPacketInformation.ExtensionHeaderLength)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }

                    numByte = length;

                    if (this.m_Ep6In.XferData(ref pdata, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }
                    if (numByte != length)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }
                }
                catch
                {
                    return false;
                }
	            return true;
            }

            public bool MyDSPProcess(int nCh, enFlag nFlag, enCommCmdMain cmd, ushort subcmd, int Offset, int WrLength, int RdLength, ref byte[] data)
            {
                int nWriteSize;
                int nReadSize;
                ushort ret;
                stDefCtrlCmd mCmd;


                if (nFlag == enFlag.FLAG_NONE)
                {
                    return false;
                }

                mCmd = new stDefCtrlCmd();

                nWriteSize = mCmd.DEF_CMD_HEADSIZE;
                nReadSize = mCmd.DEF_CMD_HEADSIZE;
                if (nFlag == enFlag.FLAG_WRITE_LONG)
                {
                    nFlag = enFlag.FLAG_WRITE;
                }

                mCmd.SetFlag((ushort)nFlag);
                mCmd.SetCmd((ushort)cmd);
                mCmd.SetSubCmd((ushort)subcmd);

                if (WrLength > 0)
                {
                    mCmd.SetData(ref data, 0, (int)WrLength);
                    mCmd.SetChksum(Offset, (int)(WrLength - (uint)Offset));
                    nWriteSize += (int)WrLength;
                }
                if (nFlag == enFlag.FLAG_REQUEST)
                {
                    nReadSize += (int)RdLength;
                    mCmd.SetChksum(0, 0);
                }

                if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                {
                    return false;
                }

                if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                {
                    return false;
                }

                ret = mCmd.GetFlag();
                if (ret == (ushort)enResult.FLAG_OK)
                {
                    if (nFlag == enFlag.FLAG_REQUEST)
                    {
                        if (mCmd.CheckChksum((int)Offset, (int)(RdLength - Offset)) == false)
                        {
                            return false;
                        }
                        Array.Copy(mCmd.psData, mCmd.DEF_CMD_HEADSIZE, data, 0, (int)RdLength);
                    }
                }
                else if (ret < (ushort)enResult.FLAG_OK)
                {
                    return false;
                }
                return true;

            }

            public bool MyUsbProcess(int nCh, byte Target, byte TargetCmd, int address, enFlag nFlag, int WrLength, int RdLength, ref byte[] data)
            {
                USB_BufOut_Ex mPacket;
                int numByte;
                int len;


                len = 0;
                if (nFlag == enFlag.FLAG_NONE) return false;
                if (nFlag == enFlag.FLAG_WRITE)
                {
                    if ((short)WrLength > (short)(m_Ep4Out.MaxPktSize - enUsbPacketInformation.ExtensionHeaderLength))
                        return false;
                }
                else if (nFlag == enFlag.FLAG_WRITE_LONG)
                {

                }

                numByte = (int)enUsbPacketInformation.ExtensionHeaderLength;
                mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)Target);
                mPacket.SetSubCommand((byte)TargetCmd);
                mPacket.SetAddress((int)address);
                mPacket.SetLength((short)WrLength);
                mPacket.SetChannel((byte)nCh);

                if (nFlag == enFlag.FLAG_WRITE)
                {
                    if (WrLength > 0)
                    {
                        numByte += WrLength;
                        mPacket.SetData(ref data, (short)WrLength);
                    }
                }

                try
                {
                    len = numByte;
                    if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }

                    if (numByte != len)
                    {
                        return false;
                    }
                    if (nFlag == enFlag.FLAG_WRITE)
                    {
                        return true;
                    }
                    if (nFlag == enFlag.FLAG_WRITE_LONG)
                    {
                        len = numByte = (int)WrLength;
                        if (numByte > 0)
                        {
                            if (this.m_Ep4Out.XferData(ref data, ref numByte) == false)
                            {
                                this.Reset_USBFifo();
                                return false;
                            }
                            if (numByte != len)
                            {
                                return false;
                            }
                        }
                        return true;
                    }

                    int Index;
                    int readlen;
                    byte[] m_BufInEx;

                    Index = 0;
                    len = (int)RdLength;
                    if (len < 1) return true;
                    m_BufInEx = new byte[(int)enUsbPacketInformation.ExtensionPacketLength];
                    m_BufInEx.Initialize();
                    while (len > 0)
                    {
                        if (len < this.m_Ep6In.MaxPktSize)
                            numByte = len;
                        else
                            numByte = this.m_Ep6In.MaxPktSize;
                        readlen = numByte;

                        if (this.bThread == false) return false;
                        if (this.m_Ep6In.XferData(ref m_BufInEx, ref numByte) == false)
                        {
                            this.Reset_USBFifo();
                            return false;
                        }
                        if (readlen != numByte)
                        {
                            return false;
                        }
                        Array.Copy(m_BufInEx, 0, data, Index, numByte);
                        Index += numByte;
                        len -= numByte;
                    }
                }
                catch
                {
                    return false;
                }

                return true;
            }


            public bool ReadEEPROM(int address, short length, ref byte[] pData)
            {
                USB_BufOut_Ex mPacket;
                int numByte;

                numByte = (int)enUsbPacketInformation.ExtensionHeaderLength;

                mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)enTarget.USB);
                mPacket.SetSubCommand((byte)enUsbComand.ReadEeprom);
                mPacket.SetAddress(address);
                mPacket.SetLength((short)length);
                mPacket.SetChannel(0);

                try
                {
                    if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }

                    int Index;
                    int len;
                    byte[] m_BufInEx;

                    Index = 0;
                    len = length;
                    m_BufInEx = new byte[(int)enUsbPacketInformation.ExtensionPacketLength];

                    while (len > 0)
                    {
                        if (len < this.m_Ep6In.MaxPktSize)
                            numByte = len;
                        else
                            numByte = this.m_Ep6In.MaxPktSize;
                        if (this.bThread == false) return false;
                        if (this.m_Ep6In.XferData(ref m_BufInEx, ref numByte) == false)
                        {
                            this.Reset_USBFifo();
                            return false;
                        }
                        Array.Copy(m_BufInEx, 0, pData, Index, numByte);
                        Index += numByte;
                        len -= numByte;
                    }
                }
                catch
                {
                    return false;
                }

                return true;
            }
       
            public bool WriteEEPROM(int address, short length, ref byte[] pData)
            {
                if (length > (short)(m_Ep4Out.MaxPktSize - enUsbPacketInformation.ExtensionHeaderLength))
                    return false;

                int numByte;
                USB_BufOut_Ex mPacket;

                mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)enTarget.USB);
                mPacket.SetSubCommand((byte)enUsbComand.WriteEeprom);
                mPacket.SetAddress(address);
                mPacket.SetLength((short)length);
                mPacket.SetChannel(0);
                mPacket.SetData(ref pData, length);

                numByte = (int)enUsbPacketInformation.ExtensionHeaderLength + length;

                try
                {
                    if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }
                    if (numByte != (int)enUsbPacketInformation.ExtensionHeaderLength + length)
                    {
                        return false;
                    }
                    
                }
                catch
                {
                    return false;
                }

                return true;
            }

            #endregion //**base comm util

            #region ** License proc
            bool FirstCheckLicense(string sChkLicense)
            {
                int nLen = sChkLicense.Count();
                if (nLen != 35) return false;
                return true;
            }

            string RefreshLicense(string sLi)
            {
                string str;
                sLi.Trim();
                if (this.FirstCheckLicense(sLi) == false)
                {
                    return "";
                }
                str = this.mClsLicense.Decrypt(sLi);
                str.Trim();
                str = this.DecordFullSerial(str);
                if (this.mDeviceInfo.mInfo.sSerial != str)
                {
                    str = "";
                    this.mDeviceInfo.mInfo.bLicense = false;
                    this.mDeviceInfo.mInfo.bBAT = false;
                    this.mDeviceInfo.mInfo.bECHM = false;
                    this.mDeviceInfo.mInfo.bCOR = false;
                    this.mDeviceInfo.mInfo.bEIS = false;
                    this.mDeviceInfo.mInfo.bFRA = false;
                    this.mDeviceInfo.mInfo.bUnuse1 = false;
                    this.mDeviceInfo.mInfo.bUnuse2 = false;
                    this.mDeviceInfo.mInfo.bUnuse3 = false;
                    this.mDeviceInfo.mInfo.bUnuse4 = false;
                    this.mDeviceInfo.mInfo.bUnuse5 = false;
                }
                return str;
            }

            string DecordFullSerial(string sFullSerial)
            {
                string sRet;
                string sLi;
                ushort nLi;
                char ch;

                sLi = "";
                sRet = sFullSerial.Substring(0, 4);
                sLi = sFullSerial.Substring(4, 1);
                sRet += sFullSerial.Substring(5, 2);
                sLi += sFullSerial.Substring(7, 1);
                sRet += sFullSerial.Substring(8, 2);
                sLi += sFullSerial.Substring(10, 1);
                sRet += sFullSerial.Substring(11, 4);

                ch = sLi.ElementAt(0);
                nLi = (ushort)(SM_Converting.HexStrToNum(ch) * 256);
                ch = sLi.ElementAt(1);
                nLi += (ushort)(SM_Converting.HexStrToNum(ch) * 16);
                ch = sLi.ElementAt(2);
                nLi += SM_Converting.HexStrToNum(ch);
                nLi /= 2;
                this.mDeviceInfo.mInfo.bLicense = true;
                if ((nLi & (ushort)enDeviceLicense.Battery) != 0) this.mDeviceInfo.mInfo.bBAT = true;
                else this.mDeviceInfo.mInfo.bBAT = false;
                if ((nLi & (ushort)enDeviceLicense.ElectroChemistry) != 0) this.mDeviceInfo.mInfo.bECHM = true;
                else this.mDeviceInfo.mInfo.bECHM = false;
                if ((nLi & (ushort)enDeviceLicense.Corrosion) != 0) this.mDeviceInfo.mInfo.bCOR = true;
                else this.mDeviceInfo.mInfo.bCOR = false;
                if ((nLi & (ushort)enDeviceLicense.Eis) != 0) this.mDeviceInfo.mInfo.bEIS = true;
                else this.mDeviceInfo.mInfo.bEIS = false;
                if ((nLi & (ushort)enDeviceLicense.Fra) != 0) this.mDeviceInfo.mInfo.bFRA = true;
                else this.mDeviceInfo.mInfo.bFRA = false;
                if ((nLi & (ushort)enDeviceLicense.NoUse1) != 0) this.mDeviceInfo.mInfo.bUnuse1 = true;
                else this.mDeviceInfo.mInfo.bUnuse1 = false;
                if ((nLi & (ushort)enDeviceLicense.NoUse2) != 0) this.mDeviceInfo.mInfo.bUnuse2 = true;
                else this.mDeviceInfo.mInfo.bUnuse2 = false;
                if ((nLi & (ushort)enDeviceLicense.NoUse3) != 0) this.mDeviceInfo.mInfo.bUnuse3 = true;
                else this.mDeviceInfo.mInfo.bUnuse3 = false;
                if ((nLi & (ushort)enDeviceLicense.NoUse4) != 0) this.mDeviceInfo.mInfo.bUnuse4 = true;
                else this.mDeviceInfo.mInfo.bUnuse4 = false;
                if ((nLi & (ushort)enDeviceLicense.NoUse5) != 0) this.mDeviceInfo.mInfo.bUnuse5 = true;
                else this.mDeviceInfo.mInfo.bUnuse5 = false;

                return sRet;
            }

            int ApplyLicense()
            {
                int k;
                int iRet;
                int iRes;
             
                iRet = 0;
                for (k = 0; k < 8; k++)
                {
                    if (this.mDeviceInfo.mChannelInfo[k].bExist == true)
                    {
                        iRes = this.SaveLicense(k, this.mDeviceInfo.mInfo.usLicense);
                        if (iRes == (ushort)enResult.FLAG_OK)
                        {
                            iRet |= 0x1 << k;
                        }
                        else
                        {
                            return iRet;
                        }
                    }
                }
                return iRet;
            }

            int ApplyChLicense(int nCh)
            {
                int iRes;
                int nErr;


                nErr = 0;
                iRes = (ushort)enResult.FLAG_OK;
                 

                if (this.mDeviceInfo.mChannelInfo[nCh].bExist == true)
                {
                    while (true)
                    {
                        if (this.bThread == false) return 0;
                        iRes = this.SaveLicense(nCh, this.mDeviceInfo.mInfo.usLicense);
                        if (iRes != (ushort)enResult.FLAG_OK)
                        {
                            nErr++;
                            if (nErr > 5)
                            {
                                break;
                            }
                        }
                        else break;
                    }
                    
                }

                return iRes;
            }

            #endregion //** License proc

            #region ** Command proc

            public bool BurningUsb(int nCh)
            {
                var p = this.mMapMem.mSP_CmdMapHeader[nCh].mCommand;
                byte[] pData;
                if (p.cmd == (ushort)enServerBurnUsbSub.resetUsbChip)
                {
                    pData = new byte[1];
                    pData[0] = (byte)p.subcmd;
                    return ResetFX2(pData);
                }
                else if (p.cmd == (ushort)enServerBurnUsbSub.programUsbRam)
                {
                    pData = new byte[p.WrLength];
                    this.mMapMem.ReadData(nCh, 0, ref pData, 0, (int)p.WrLength);
                    return UploadRAMFX2(pData, (int)p.WrLength, (ushort)p.address);
                }
                else if (p.cmd == (ushort)enServerBurnUsbSub.programUsbRom)
                {
                    pData = new byte[p.WrLength];
                    this.mMapMem.ReadData(nCh, 0, ref pData, 0, (int)p.WrLength);
                    return UploadROMFX2(pData, (int)p.WrLength, (ushort)p.address);
                }
                else if (p.cmd == (ushort)enServerBurnUsbSub.checkusbrom)
                {
                    return CheckUsbPROM();
                }
                
                return true;
            }

            public bool ServerProcess(int nCh)
            {
                byte usTemp;
                var p = this.mMapMem.mSP_CmdMapHeader[nCh].mCommand;
                if(p.TargetCmd == (byte)enServerComand.RefreshDeviceType ||
                    p.TargetCmd == (byte)enServerComand.RefreshDeviceModel)
                {
                    if(this.RefreshModel() == true)
                    {
                        usTemp = (byte)(this.mDeviceInfo.mInfo.Model & 0x3F);
                        enDeviceModel model = (enDeviceModel)usTemp;
                        this.mDeviceInfo.mInfo.sModel = model.ToString();

                        usTemp = (byte)(this.mDeviceInfo.mInfo.Model >> 6 & 0x3);
                        if (usTemp == 0) this.mDeviceInfo.mInfo.sType = "A(Default)";
                        else if (usTemp == 1) this.mDeviceInfo.mInfo.sType = "B(Filter 5ea)";
                        else this.mDeviceInfo.mInfo.sType = "Error!";

                        this.mMapMem.WriteDeviceinfoHeader(ref this.mDeviceInfo);
                    }
                    else return false;
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshDeviceInformation)
                {
                    RefreshDeviceInformation();
                    return true;
                }
                else if(p.TargetCmd == (byte)enServerComand.RefreshDeviceLicense)
                {
                    if(this.ReadLicenseInfo() == true)
                    {
                        if (this.FirstCheckLicense(this.mDeviceInfo.mInfo.cLicense) == true)
                        {
                            this.mDeviceInfo.mInfo.sLicSerial = RefreshLicense(this.mDeviceInfo.mInfo.cLicense);
                        }
                        else this.mDeviceInfo.mInfo.sLicSerial = "";

                        this.RefreshChannelExist();

                        for (usTemp = 0; usTemp < 8; usTemp++)
                        {
                            if (this.mDeviceInfo.mChannelInfo[usTemp].bExist == true)
                            {
                                if (ApplyChLicense(usTemp) != (ushort)enResult.FLAG_OK)
                                {
                                    this.mDeviceInfo.mChannelInfo[usTemp].bLoadInfo = false;
                                    continue;
                                }
                            }
                        }
                        this.mMapMem.WriteDeviceinfoHeader(ref this.mDeviceInfo);
                    }
                    else return false;
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshDeviceUsbFirmware)
                {
                    if (this.RefreshUSBFirmwareInf() == true)
                    {
                        this.mMapMem.WriteDeviceinfoHeader(ref this.mDeviceInfo);
                    }
                    else return false;
                    
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshDeviceFpgaFirmware)
                {
                    if (this.RefreshFPGAFirmwareInf(nCh) == true)
                    {
                        this.mMapMem.WriteDeviceinfoChannel(ref this.mDeviceInfo,nCh);
                    }
                    else return false;
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshDeviceDspFirmware)
                {
                    if (this.RefreshDSPFirmwareInf(nCh) == true)
                    {
                        this.mMapMem.WriteDeviceinfoChannel(ref this.mDeviceInfo, nCh);
                    }
                    else return false;

                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshDeviceChannelInfo)
                {
                    if (this.RefreshChannelExist() == false) return false;
                    if (this.ReadChannelnfo() == false) return false;
                    this.mMapMem.WriteDeviceinfoChannel(ref this.mDeviceInfo, nCh);
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshSystemInformation)
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].bExist == false) return false;
                    if (this.ReadSysInfo(nCh) != (ushort)enResult.FLAG_OK) return false;
                    this.mMapMem.WriteDeviceinfoChannel(ref this.mDeviceInfo, nCh);
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshSystemConfiguration)
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].bExist == false) return false;
                    if (this.ReadSysConfig(nCh) != (ushort)enResult.FLAG_OK) return false;
                    this.mMapMem.WriteDeviceinfoChannel(ref this.mDeviceInfo, nCh);
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshSystemRange)
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].bExist == false) return false;
                    if (this.ReadSysRange(nCh) != (ushort)enResult.FLAG_OK) return false;
                    this.mMapMem.WriteDeviceinfoChannel(ref this.mDeviceInfo, nCh);
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshBoosterRange)
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].bExist == false) return false;
                    if (this.ReadBoosterRange(nCh) != (ushort)enResult.FLAG_OK) return false;
                    this.mMapMem.WriteDeviceinfoChannel(ref this.mDeviceInfo, nCh);
                }
                else if (p.TargetCmd == (byte)enServerComand.RefreshMuxRange)
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].bExist == false) return false;
                    if (this.ReadMuxRange(nCh) != (ushort)enResult.FLAG_OK) return false;
                    this.mMapMem.WriteDeviceinfoChannel(ref this.mDeviceInfo, nCh);
                } 
                else if (p.TargetCmd == (byte)enServerComand.SetChannelExist)
                {
                    byte temp = (byte)p.cmd;
                    byte temp1 = 0x1;

                    for (int i = 0; i < 8; i++)
                    {
                        if (this.mDeviceInfo.mChannelInfo[i].bExist == false)
                        {
                            if ((temp & temp1) > 0)
                            {
                                this.mDeviceInfo.mChannelInfo[i].bExist = true;
                                this.mMapMem.WriteDeviceinfoChannelExist(ref this.mDeviceInfo, i);
                            }
                        }
                        temp1 <<= 1;
                    }
                }
                else if (p.TargetCmd == (byte)enServerComand.SetDeviceDescription)
                {

                    return SaveDevDescriptor();
                    
                }
                else if (p.TargetCmd == (byte)enServerComand.WriteEEPROMinUSB)
                {
                    byte[] pData;
                    pData = new byte[(int)p.WrLength];
                    this.mMapMem.ReadData(nCh, 0, ref pData, 0, (int)p.WrLength);
                    return this.WriteEEPROM((int)p.address, (short)p.WrLength, ref pData);
                }
                else if (p.TargetCmd == (byte)enServerComand.InitSystemConfigAndRange)
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].bExist == false) return false;

                    stDefSysConfig mtConfig = new stDefSysConfig(this.mDeviceInfo.mInfo.Model);
                    stDefSysRange mtRange = new stDefSysRange(this.mDeviceInfo.mInfo.Model);

                    this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig = mtConfig;
                    this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange = mtRange;

                    if (this.WriteSysConfig(nCh) != (ushort)enResult.FLAG_OK) return false;
                    if (this.WriteSysRange(nCh) != (ushort)enResult.FLAG_OK) return false;
                }
                else if (p.TargetCmd == (byte)enServerComand.InitSystemConfig)
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].bExist == false) return false;
                    stDefSysConfig mtConfig = new stDefSysConfig(this.mDeviceInfo.mInfo.Model);
                    this.mDeviceInfo.mChannelInfo[nCh].mSystem.mConfig = mtConfig;

                    if (this.WriteSysConfig(nCh) != (ushort)enResult.FLAG_OK) return false;
                }
                else if (p.TargetCmd == (byte)enServerComand.InitSystemRange)
                {
                    if (this.mDeviceInfo.mChannelInfo[nCh].bExist == false) return false;
                    stDefSysRange mtRange = new stDefSysRange(this.mDeviceInfo.mInfo.Model);
                    this.mDeviceInfo.mChannelInfo[nCh].mSystem.mRange = mtRange;
                    if (this.WriteSysRange(nCh) != (ushort)enResult.FLAG_OK) return false;
                }
                return true;
            }
           
            public bool UsbProcess(int nCh)
            {
                USB_BufOut_Ex mPacket;
                int numByte;
                byte[] pData;
                byte[] prdData;
                int len;

                var p = this.mMapMem.mSP_CmdMapHeader[nCh].mCommand;
                pData = new byte[p.WrLength];
                prdData = new byte[p.RdLength];
                
                len = 0;
                if (p.Flag == (byte)enFlag.FLAG_NONE) return false;
                if (p.Flag == (byte)enFlag.FLAG_WRITE)
                {
                    if ((short)p.WrLength > (short)(m_Ep4Out.MaxPktSize - enUsbPacketInformation.ExtensionHeaderLength))
                        return false;
                    this.mMapMem.ReadData(nCh, 0, ref pData, 0, (int)p.WrLength);
                }
                else if (p.Flag == (byte)enFlag.FLAG_WRITE_LONG)
                {
                    this.mMapMem.ReadData(nCh, 0, ref pData, 0, (int)p.WrLength);
                }

                numByte = (int)enUsbPacketInformation.ExtensionHeaderLength;
                mPacket = new USB_BufOut_Ex();
                mPacket.SetCommand((byte)p.Target);
                mPacket.SetSubCommand((byte)p.TargetCmd);
                mPacket.SetAddress((int)p.address);
                mPacket.SetLength((short)p.WrLength);
                if (p.Target == (ushort)enTarget.DSP
                        && p.Flag == (ushort)enFlag.FLAG_WRITE
                        && p.TargetCmd == (ushort)enDspComand.CASTTRANS)
                {
                    p.WrLength = 0;
                    mPacket.SetChannel((byte)pData[0]);
                }
                else mPacket.SetChannel((byte)nCh);
                if (p.Flag == (byte)enFlag.FLAG_WRITE)
                {
                    if (p.WrLength > 0)
                    {
                        numByte += (int)p.WrLength;
                        mPacket.SetData(ref pData, (short)p.WrLength);
                    }
                }

                try
                {
                    len = numByte;
                    if (this.m_Ep4Out.XferData(ref mPacket.psData, ref numByte) == false)
                    {
                        this.Reset_USBFifo();
                        return false;
                    }

                    if (numByte != len)
                    {
                        return false;
                    }
                    if (p.Flag == (byte)enFlag.FLAG_WRITE)
                    {
                        return true;
                    }
                    if (p.Flag == (byte)enFlag.FLAG_WRITE_LONG)
                    {
                        len = numByte = (int)p.WrLength;
                        if (numByte > 0)
                        {
                            if (this.m_Ep4Out.XferData(ref pData, ref numByte) == false)
                            {
                                this.Reset_USBFifo();
                                return false;
                            }
                            if (numByte != len)
                            {
                                return false;
                            }
                        }
                        return true;
                    }

                    int Index;
                    int readlen;
                    byte[] m_BufInEx;

                    Index = 0;
                    len = (int)p.RdLength;
                    if (len < 1) return true;
                    m_BufInEx = new byte[(int)enUsbPacketInformation.ExtensionPacketLength];
                    m_BufInEx.Initialize();
                    while (len > 0)
                    {
                        if (len < this.m_Ep6In.MaxPktSize)
                            numByte = len;
                        else
                            numByte = this.m_Ep6In.MaxPktSize;
                        readlen = numByte;

                        if (this.bThread == false) return false;
                        if (this.m_Ep6In.XferData(ref m_BufInEx, ref numByte) == false)
                        {
                            this.Reset_USBFifo();
                            return false;
                        }
                        if (readlen != numByte)
                        {
                            return false;
                        }
                        Array.Copy(m_BufInEx, 0, prdData, Index, numByte);
                        Index += numByte;
                        len -= numByte;
                    }
                    this.mMapMem.WriteData(nCh, 0, ref prdData, 0, (int)p.RdLength);
                }
                catch
                {
                    return false;
                }

                return true;
            }

            public ushort MyDSP_CommProcess(int nCh, ushort flag, ushort Cmd, ushort Subcmd, ushort Offset, uint WrLength, uint RdLength,ref byte[] pData)
            {
                int nWriteSize;
                int nReadSize;
                ushort ret;
                ushort cflag;
                stDefCtrlCmd mCmd;
                var p = this.mMapMem.mSP_CmdMapHeader[nCh].mCommand;

                ret = (ushort)enResult.FLAG_OK;
                if (flag == (byte)enFlag.FLAG_NONE)
                {
                    return (ushort)enResult.FLAG_NONE;
                }


                cflag = flag;

                mCmd = new stDefCtrlCmd();

                nWriteSize = mCmd.DEF_CMD_HEADSIZE;
                nReadSize = mCmd.DEF_CMD_HEADSIZE;
                if (cflag == (ushort)enFlag.FLAG_WRITE_LONG)
                {
                    cflag = (ushort)enFlag.FLAG_WRITE;
                }

                mCmd.SetFlag(cflag);
                mCmd.SetCmd(Cmd);
                mCmd.SetSubCmd(Subcmd);

                if (WrLength > 0)
                {
                    mCmd.SetData(ref pData, 0, (int)WrLength);
                    mCmd.SetChksum(Offset, (int)(WrLength - (uint)Offset));
                    nWriteSize += (int)WrLength;
                }
                if (cflag == (ushort)enFlag.FLAG_REQUEST)
                {
                    nReadSize += (int)RdLength;
                    mCmd.SetChksum(0, 0);
                }

                if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                {
                    return (ushort)enResult.STAT_CMD_ERRWR;
                }

                if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                {
                    return (ushort)enResult.STAT_CMD_ERRRD;
                }

                ret = mCmd.GetFlag();
                if (ret == (ushort)enResult.FLAG_OK)
                {
                    if (cflag == (ushort)enFlag.FLAG_REQUEST)
                    {
                        if (mCmd.CheckChksum((int)Offset, (int)(RdLength - Offset)) == false)
                        {
                            return (ushort)enResult.FLAG_ERRCHKSUM;
                        }
                        Array.Copy(mCmd.psData, Offset, pData, mCmd.DEF_CMD_HEADSIZE, (int)RdLength);
                    }
                }
                else if (ret < (ushort)enResult.FLAG_OK)
                {
                    ret = mCmd.GetFlag();
                }
                return ret;

            }

            public ushort MainCommProcess(int nCh)
            {
                int nWriteSize;
                int nReadSize;
                byte[] pData;
                ushort ret;
                stDefCtrlCmd mCmd;
                 var p = this.mMapMem.mSP_CmdMapHeader[nCh].mCommand;

                ret = (ushort)enResult.FLAG_OK;
                if (p.Flag == (byte)enFlag.FLAG_NONE)
                {
                    return (ushort)enResult.FLAG_NONE;
                }

                mCmd = new stDefCtrlCmd();

                nWriteSize = mCmd.DEF_CMD_HEADSIZE;
                nReadSize = mCmd.DEF_CMD_HEADSIZE;
                if (p.Flag == (ushort)enFlag.FLAG_WRITE_LONG)
                {
                    p.Flag = (ushort)enFlag.FLAG_WRITE;
                }

                mCmd.SetFlag((ushort)p.Flag);
                mCmd.SetCmd((ushort)p.cmd);
                mCmd.SetSubCmd((ushort)p.subcmd);

                if(p.WrLength > 0)
                {
                    pData = new byte[(int)p.WrLength];
                    this.mMapMem.ReadData(nCh, 0, ref pData, 0, (int)p.WrLength);
                    mCmd.SetData(ref pData, 0, (int)p.WrLength);
                    mCmd.SetChksum(p.Offset, (int)(p.WrLength - (uint)p.Offset));
                    nWriteSize += (int)p.WrLength;
                }
                if (p.Flag == (ushort)enFlag.FLAG_REQUEST) 
                {
                    nReadSize += (int)p.RdLength;
                    mCmd.SetChksum(0, 0);
                }

                if (this.WriteFPGA((byte)nCh, 0, ref mCmd.psData, nWriteSize) == false)
                {
                    return (ushort)enResult.STAT_CMD_ERRWR;
                }

                if (this.ReadFPGA((byte)nCh, 0, ref mCmd.psData, nReadSize) == false)
                {
                    return (ushort)enResult.STAT_CMD_ERRRD;
                }

                ret = mCmd.GetFlag();
                if (ret == (ushort)enResult.FLAG_OK)
                {
                    if (p.Flag == (ushort)enFlag.FLAG_REQUEST)
                    {
                        if (mCmd.CheckChksum((int)p.Offset, (int)(p.RdLength - p.Offset)) == false)
                        {
                            return (ushort)enResult.FLAG_ERRCHKSUM;
                        }
                        this.mMapMem.WriteData(nCh, 0, ref mCmd.psData, mCmd.DEF_CMD_HEADSIZE, (int)p.RdLength);
                    }
                }
                else if(ret < (ushort)enResult.FLAG_OK)
                {
                    ret = mCmd.GetFlag();
                }
                return ret;

            }

            public void UnknownProc(int nCh)
            {
                byte res;
                if (this.mMapMem.CheckCommandStart(nCh, true) == true)
                {
                    this.mDispStat.Channel = nCh;
                    this.mDispStat.LinkTime = DateTime.Now;
                    this.mDispStat.Linker = (enProgram)this.mMapMem.mSP_CmdMapHeader[nCh].handle;
                    this.mDispStat.LinkResult = (enResult)this.mMapMem.mSP_CmdMapHeader[nCh].mStat.Result;
                    if (this.mMapMem.mSP_CmdMapHeader[nCh].mCommand.Target == (byte)enTarget.Server
                        && this.mMapMem.mSP_CmdMapHeader[nCh].mCommand.TargetCmd == (byte)enServerComand.BurningUSB)
                    {
                        if (BurningUsb(nCh) == true)
                        {
                            res = (byte)enResult.FLAG_OK;
                        }
                        else
                        {
                            res = (byte)enResult.FLAG_FAIL;
                        }
                    }
                    else if (this.mMapMem.mSP_CmdMapHeader[nCh].mCommand.Target == (byte)enTarget.Server
                       && this.mMapMem.mSP_CmdMapHeader[nCh].mCommand.TargetCmd == (byte)enServerComand.SetDeviceDescription)
                    {
                        if (SaveDevDescriptor() == true)
                        {
                            res = (byte)enResult.FLAG_OK;
                        }
                        else
                        {
                            res = (byte)enResult.FLAG_FAIL;
                        }
                    }
                    else res = (byte)enResult.FLAG_NONE;
                    mMapMem.SetFinish(nCh, res);
                    stTick[nCh] = Environment.TickCount;
                }

                this.mDispStat.LinkResult = (enResult)this.mMapMem.mSP_CmdMapHeader[nCh].mStat.Result;
            }

            public void NormalProc(int nCh)
            {
                byte res;
                if (this.mMapMem.CheckCommandStart(nCh, true) == true)
                {
                    this.mDispStat.Channel = nCh;
                    this.mDispStat.LinkTime = DateTime.Now;
                    this.mDispStat.Linker = (enProgram)this.mMapMem.mSP_CmdMapHeader[nCh].handle;
                    this.mDispStat.LinkResult = enResult.FLAG_NONE;

                    this.RefreshStatusCount[nCh] = 0;
                    if (this.mMapMem.mSP_CmdMapHeader[nCh].mCommand.Target == (byte)enTarget.Server)
                    {
                        if (this.mDeviceInfo.mInfo.bSupportVer == true)
                        {
                            if (ServerProcess(nCh) == true)
                            {
                                res = (byte)enResult.FLAG_OK;
                            }
                            else
                            {
                                res = (byte)enResult.FLAG_FAIL;
                            }
                        }
                        else res = (byte)enResult.FLAG_FAIL;
                    }
                    else if (this.mDeviceInfo.mChannelInfo[nCh].bExist == true)
                    {

                        if (this.mMapMem.mSP_CmdMapHeader[nCh].mCommand.Target == (byte)enTarget.DSP_SW)
                        {
                            res = (byte)MainCommProcess(nCh);
                        }
                        else
                        {
                            if (UsbProcess(nCh) == true)
                            {
                                res = (byte)enResult.FLAG_OK;
                            }
                            else
                            {
                                res = (byte)enResult.FLAG_FAIL;
                            }
                        }


                    }
                    else
                    {
                        res = (byte)enResult.FLAG_NONE;
                    }
                    mMapMem.SetFinish(nCh, res);
                    stTick[nCh] = Environment.TickCount;
                    this.mDispStat.LinkResult = (enResult)this.mMapMem.mSP_CmdMapHeader[nCh].mStat.Result;
                }
            }
            #endregion

            void SP_Comm_Run()
            {
                int nCh;
              
                nCh = 0;
                this.bThreadStart = true;
                while (this.bThread)
                {

                    for (nCh = 0; nCh < SP_USBDefine.MAX_DEV_CH; nCh++)
                    {
                        if (bLocal  == true)
                        {
                            if (this.mMapMem.CheckCommandStart(nCh, true) == true)
                            {
                                this.mMapMem.SetFinish(nCh, (byte)enResult.FLAG_BUSY);
                                
                            }
                            Thread.Sleep(200);
                            continue;
                        }

                        if (this.bThreadStart == false)
                        {
                            break;
                        }
                        if (this.bThread == false)
                        {
                            this.mMapMem.SetFinish(nCh, (byte)enResult.FLAG_FAIL);
                            this.mMapMem.SetStop(nCh);
                            continue;
                        }

                        if (this.mDeviceInfo.mInfo.bUnknow == true)
                        {
                            if (nCh > 0) continue;
                            UnknownProc(nCh);
                            continue;
                        }

                        NormalProc(nCh);

                        if (this.mMapMem.mSP_CmdMapHeader[nCh].handle > 0)
                        {
                            if (Environment.TickCount - stTick[nCh] > 100000)
                            {
                                this.mMapMem.SetClearHandle(nCh);
                            }
                        }
                        else
                        {
                            stTick[nCh] = Environment.TickCount;
                        }
                    }
                    Thread.Sleep(1);
                }

                for (nCh = 0; nCh < SP_USBDefine.MAX_DEV_CH; nCh++)
                {
                    this.mMapMem.SetFinish(nCh, (byte)enResult.FLAG_FAIL);
                    this.mMapMem.SetStop(nCh);
                }
                this.mMapMem.Dispose();
                this.mDev.Dispose();
            }
            
        }
    }
}
