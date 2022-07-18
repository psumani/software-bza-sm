using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.IO.MemoryMappedFiles;
using System.Runtime.InteropServices;
using System.Threading;

namespace SM_Comm
{
  

    public class SM_DeviceMapMem
    {
        public byte DeviceCount;
        private MemoryMappedFile mDevMapMem;
        public MemoryMappedViewAccessor mDevMapView;
        private Dictionary<string, byte> mMapDeviceDict;

        private byte[] pRMByte;
        private short[] pOffsetList;
        private const byte ITEM_LEN = 14;
        private const int MAX_SIZE = ITEM_LEN * 8 + 1;
        public SM_DeviceMapMem()
        {
            pOffsetList = new short[32];
            pOffsetList.Initialize();

            pRMByte = new byte[ITEM_LEN];
            pRMByte.Initialize();

            mMapDeviceDict = new Dictionary<string, byte>();

            try
            {
                mDevMapMem = MemoryMappedFile.OpenExisting("SM_GatewayDevice", MemoryMappedFileRights.ReadWrite);
            }
            catch (FileNotFoundException)
            {
                mDevMapMem = MemoryMappedFile.CreateNew("SM_GatewayDevice", MAX_SIZE, MemoryMappedFileAccess.ReadWrite);
            }

            mDevMapView = mDevMapMem.CreateViewAccessor(0, MAX_SIZE);
            
            DeviceCount = 0;
            mDevMapView.Write(0, DeviceCount);
        }

        ~SM_DeviceMapMem()
        {
            mDevMapView.Dispose();
            mDevMapMem.Dispose();
        }

        private byte GetAllowIndex()
        {
            byte index = 0;
            foreach (short nOffset in pOffsetList)
            {
                if (nOffset < 1)
                {
                    break;
                }
                index++;
            }
            return index;
        }

        public bool AddDevice(string sSerial)
        {
            byte index;
            int nOffset;
            byte[] pData;

            pData = new byte[ITEM_LEN];
            index = GetAllowIndex();

            mMapDeviceDict.Add(sSerial, index);

            nOffset = index * ITEM_LEN + 1;
            pOffsetList[index] = (short)nOffset;

            Encoding.UTF8.GetBytes(sSerial, 0, sSerial.Count(), pData, 0);
            mDevMapView.WriteArray(nOffset, pData, 0, ITEM_LEN);

            DeviceCount++;
            mDevMapView.Write(0, DeviceCount);
            return true;
        }

        public bool RemoveDevice(string sSerial)
        {
            int index = 0;
            int nOffset = 0;
            int nLast = DeviceCount * ITEM_LEN + 1;
 //           int nLen;
 //           byte[] pData;

            if (mMapDeviceDict.ContainsKey(sSerial))
            {
                index = mMapDeviceDict[sSerial];

/*

                if (DeviceCount > index + 1)
                {
                    nOffset = pOffsetList[index + 1];
                    nLen = nLast - nOffset;
                    pData = new byte[nLen];

                    mDevMapView.ReadArray(nOffset, pData, 0, nLen);
                    mDevMapView.WriteArray(pOffsetList[index], pData, 0, nLen);

                    pOffsetList[DeviceCount - 1] = 0;
                    mDevMapView.WriteArray(nLast - nLen, pRMByte, 0, ITEM_LEN);
                }
                else
                {*/
                    nOffset = pOffsetList[index];
                    mDevMapView.WriteArray(nOffset, pRMByte, 0, ITEM_LEN);
                    pOffsetList[index] = 0;
  //              }

                mMapDeviceDict.Remove(sSerial);
                DeviceCount--;
                mDevMapView.Write(0, DeviceCount);
            }
            else return false;
            return true;
        }
    }
}
