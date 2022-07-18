using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CyUSB;
using SM_Gateway;
using System.Threading;

namespace SM_Comm
{
    namespace SM_Comm_USB
    {
        

        class ChgDevInf : EventArgs
        {
            public string sdevSerial;
            public ChgDevInf(string sSerial)
            {
                sdevSerial = sSerial;
            }
        }

        public class SM_USB_Device
        {
            public Dictionary<int, string> mDeviceListDict;
            private SM_DeviceMapMem mDevMapMem;
            public event EventHandler SM_DeviceChange_Add;
            public event EventHandler SM_DeviceChange_Remove;

            private USBDeviceList _DeviceList;
            private Dictionary<string, USBDevice> _DeviceDict;
            public Dictionary<string, SP_USB_Interface> _SP_USB_Interface_Dict;
            public SM_USB_Device()
            {
                mDevMapMem = new SM_DeviceMapMem();
                mDeviceListDict = new Dictionary<int, string>();
                mDeviceListDict.Clear();
                _DeviceList = new USBDeviceList(CyConst.DEVICES_CYUSB);
                _DeviceDict = new Dictionary<string, USBDevice>();
                _SP_USB_Interface_Dict = new Dictionary<string, SP_USB_Interface>();

                _DeviceList.DeviceAttached += new EventHandler(_UsbDeviceList_DeviceAttached);
                _DeviceList.DeviceRemoved += new EventHandler(_UsbDeviceList_DeviceRemoved);

                Open();
            }
            public int DeviceCount
            {
                get { return _SP_USB_Interface_Dict.Count; }
            }
          

            public void Dispose()
            {
                bool bUnknow;
                string sserial;
                foreach (USBDevice dev in _DeviceList)
                {
                    bUnknow = false;
                    if (Check_SPDevice(dev) == true)
                    {
                        if (dev.VendorID == 0x04B4 && dev.ProductID == 0x8613) bUnknow = true;
                        else
                        {
                            if (dev.SerialNumber.IndexOf("R03") == -1
                                && dev.SerialNumber.IndexOf("R04") == -1) bUnknow = true;
                            else bUnknow = false;
                        }
                        if (bUnknow == true) sserial = "Unknown dev!";
                        else sserial = dev.SerialNumber;

                        if (_SP_USB_Interface_Dict.ContainsKey(sserial))
                        {
                            SP_USB_Interface mSP_USB_Interface = _SP_USB_Interface_Dict[sserial];
                            mSP_USB_Interface.bLocal = true;
                        }
                    }
                }

                foreach (USBDevice dev in _DeviceList)
                {
                    bUnknow = false;
                    if (Check_SPDevice(dev) == true)
                    {
                        if (dev.VendorID == 0x04B4 && dev.ProductID == 0x8613) bUnknow = true;
                        else
                        {
                            if (dev.SerialNumber.IndexOf("R03") == -1
                                && dev.SerialNumber.IndexOf("R04") == -1) bUnknow = true;
                            else bUnknow = false;
                        }
                        if (bUnknow == true) sserial = "Unknown dev!";
                        else sserial = dev.SerialNumber;

                        if (_SP_USB_Interface_Dict.ContainsKey(sserial))
                        {
                            SP_USB_Interface mSP_USB_Interface = _SP_USB_Interface_Dict[sserial];
                            mSP_USB_Interface.ObjectClose();
                        }
                    }
                }

            }

            void _UsbDeviceList_DeviceRemoved(object sender, EventArgs e)
            {
                bool bUnknow;
                string sserial;
                int i;

                USBEventArgs uea = (USBEventArgs)e;

                if (Check_SPDevice(uea) == false) return;

                if (uea.VendorID == 0x04B4 && uea.ProductID == 0x8613) bUnknow = true;
                else
                {
                    if (uea.SerialNum.IndexOf("R03") == -1
                        && uea.SerialNum.IndexOf("R04") == -1) bUnknow = true;
                    else bUnknow = false;
                }
                if (bUnknow == true) sserial = "Unknown dev!";
                else sserial = uea.SerialNum;

                if (mDeviceListDict.ContainsValue(sserial))
                {
                    for (i = 0; i < mDeviceListDict.Count; i++)
                    {
                        if (mDeviceListDict.ElementAt(i).Value == sserial)
                        {
                            mDeviceListDict.Remove(mDeviceListDict.ElementAt(i).Key);
                        }
                    }
                }

                if (_DeviceDict.ContainsKey(sserial))
                {
                    mDevMapMem.RemoveDevice(sserial);
                    if (_SP_USB_Interface_Dict.ContainsKey(sserial))
                    {
                        SP_USB_Interface mSP_USB_Interface = _SP_USB_Interface_Dict[sserial];
                       
                        mSP_USB_Interface.ObjectClose();
                        _SP_USB_Interface_Dict.Remove(sserial);
                    }
                    _DeviceDict.Remove(sserial);

                    ChgDevInf mChgDevInf = new ChgDevInf(uea.SerialNum);
                    SM_DeviceChange_Remove(this, mChgDevInf);
                }
            }
           
            void _UsbDeviceList_DeviceAttached(object sender, EventArgs e)
            {
                int i;
                USBEventArgs uea = (USBEventArgs)e;

                if (Check_SPDevice(uea) == true)
                {
                    SP_USB_Interface mSP_USB_Interface;
                    mSP_USB_Interface = new SP_USB_Interface(uea.Device);
                  
                    _DeviceDict.Add(mSP_USB_Interface.sSerial, uea.Device);
                    _SP_USB_Interface_Dict.Add(mSP_USB_Interface.sSerial, mSP_USB_Interface);
                    mDevMapMem.AddDevice(mSP_USB_Interface.sSerial);

                    ChgDevInf mChgDevInf = new ChgDevInf(mSP_USB_Interface.sSerial);
                    SM_DeviceChange_Add(this, mChgDevInf);

                    if (mDeviceListDict.ContainsValue(mSP_USB_Interface.sSerial) == false)
                    {
                        for (i = 0; i < mDeviceListDict.Count+1; i++)
                        {
                            if (mDeviceListDict.ContainsKey(i) == false) break;
                        }
                        mDeviceListDict.Add(i, mSP_USB_Interface.sSerial);
                    }
                }
            }

            bool Check_SPDevice(USBEventArgs uea)
            {
                bool bok = false;

                if (uea.VendorID == 0x04B4 && uea.ProductID == 0x8613) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0010) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0050) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0060) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0070) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0080) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0090) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0110) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0120) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0130) bok = true;
                if (uea.VendorID == 0x2393 && uea.ProductID == 0x0170) bok = true;
                return bok;
            }

            bool Check_SPDevice(USBDevice dev)
            {
                if (dev == null) return false;
                bool bAdd = false;

                if (dev.VendorID == 0x04B4 && dev.ProductID == 0x8613) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0010) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0050) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0060) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0070) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0080) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0090) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0110) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0120) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0130) bAdd = true;
                if (dev.VendorID == 0x2393 && dev.ProductID == 0x0170) bAdd = true;
                return bAdd;
            }

            public void Open()
            {
                int i;
                SP_USB_Interface mSP_USB_Interface;

                foreach (USBDevice dev in _DeviceList)
                {
                    if (Check_SPDevice(dev) == true)
                    {
                        mSP_USB_Interface = null;
                        mSP_USB_Interface = new SP_USB_Interface(dev);
                        _DeviceDict.Add(mSP_USB_Interface.sSerial, dev);
                        _SP_USB_Interface_Dict.Add(mSP_USB_Interface.sSerial, mSP_USB_Interface);
                        mDevMapMem.AddDevice(mSP_USB_Interface.sSerial);

                        if (mDeviceListDict.ContainsValue(mSP_USB_Interface.sSerial) == false)
                        {
                            for (i = 0; i < mDeviceListDict.Count + 1; i++)
                            {
                                if (mDeviceListDict.ContainsKey(i) == false) break;
                            }
                            mDeviceListDict.Add(i, mSP_USB_Interface.sSerial);
                        }
                    }
                }
            }

        }
    }
}