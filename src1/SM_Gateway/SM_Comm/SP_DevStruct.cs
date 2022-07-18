using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SM_Enum;
using System.Runtime.InteropServices;

namespace SM_Comm
{
    namespace SM_Comm_USB
    {
        public class StringDscr
        {
	        byte	[]strData;
            public StringDscr()
            {
                strData = new byte[SP_USBDefine.MAX_DSCRSTR_LEN + 2];
                strData.Initialize();
            }

            public byte length
            {
                get { return strData[0]; }
                set { strData[0] = value; }
            }

            public byte type
            {
                get { return strData[1]; }
                set { strData[1] = value; }
            }

            public void setdata(int pos, byte data)
            {
                strData[pos+2] = data;
            }

            public void setdata(int pos, string data)
            {
                int len = data.Count();
                byte[] odata = new byte[len * 2];
                int j = 0;
                for (int i = 0; i < len; i++)
                {
                    odata[j] = (byte)data[i];
                    j++;
                    odata[j] = 0x0;
                    j++;
                }
                Array.Copy(odata, 0, strData, (long)pos + 2, (long)len * 2);
            }

            public byte[] ToByteArray(int len)
            {

                byte[] data = new byte[len];
                Array.Copy(strData, 0, data, 0, len);
                return data;
            }
        }
        	
        public class USB_BufOut_Ex
        {

            public byte[] psData;
            short nPkLen;
            public USB_BufOut_Ex()
            {
                psData = new byte[(int)enUsbPacketInformation.ExtensionPacketLength];
                psData.Initialize();

                nPkLen = 0;
            }

            public void SetCommand(byte cmd)
            {
                psData[0] = cmd;
            }

            public void SetSubCommand(byte cmd)
            {
                psData[1] = cmd;
            }

            public void SetAddress(int nAddr)
            {
                psData[2] = (byte)((nAddr >> 0) & 0xFF);
                psData[3] = (byte)((nAddr >> 8) & 0xFF);
                psData[4] = (byte)((nAddr >> 16) & 0xFF);
                psData[5] = (byte)((nAddr >> 24) & 0xFF);
            }

            public void SetLength(short nLen)
            {
                psData[6] = (byte)((nLen >> 0) & 0xFF);
                psData[7] = (byte)((nLen >> 8) & 0xFF);
                nPkLen = nLen;
            }

            public void SetChannel(byte nCh)
            {
                psData[8] = nCh;
            }

            public bool SetData(ref byte[] ptData, short nLen)
            {
                if (ptData == null) return false;
                if (nLen < 1) return false;
                nPkLen = (short)((int)enUsbPacketInformation.ExtensionHeaderLength + nLen);
                psData[6] = (byte)((nLen >> 0) & 0xFF);
                psData[7] = (byte)((nLen >> 8) & 0xFF);
                Array.Copy(ptData, 0, psData, 9, nLen);
                return true;
            }

        }


        public class stDefCtrlCmd
        {
            public int DEF_CMD_HEADSIZE;
            public byte[] psData;
            public ushort usChkSum;
            public ushort cmdFlag;
            public ushort nCmd;
            public ushort nSubCmd;
            public int nLen;

            public stDefCtrlCmd()
            {
                psData = new byte[SP_USBDefine.DEF_USB_MEMSIZE];
                psData.Initialize();
                DEF_CMD_HEADSIZE = 8;
                usChkSum = 0;
                cmdFlag = 0;
                nCmd = 0;
                nSubCmd = 0;
                nLen = DEF_CMD_HEADSIZE;
            }

            public void RefreshFlag()
            {
                usChkSum = BitConverter.ToUInt16(psData, 0);
                cmdFlag = BitConverter.ToUInt16(psData, 2);
                nCmd = BitConverter.ToUInt16(psData, 4);
                nSubCmd = BitConverter.ToUInt16(psData, 6);
            }

            public void SetFlag(ushort nFlag)
            {
                cmdFlag = nFlag;
                psData[2] = (byte)(cmdFlag & 0xFF);
                psData[3] = (byte)((cmdFlag >> 8) & 0xFF);

            }

            public ushort GetFlag()
            {
                cmdFlag = BitConverter.ToUInt16(psData, 2);
                
                return cmdFlag;
            }

            public byte[] ToByteArrayCheckSum(int byteoffset, int nSize)
            {
                ushort usChksume = 0x1234;
                ushort usTemp = 0;
                byte[] ptData;
                int i;
                int rIndex = DEF_CMD_HEADSIZE + byteoffset;

                ptData = new byte[nSize];


                for (i = 0; i < nSize; i += 2)
                {
                    usTemp = BitConverter.ToUInt16(psData, (rIndex + i));

                    ptData[i] = psData[rIndex + i];
                    ptData[i + 1] = psData[rIndex + i + 1];
                    usChksume += usTemp;
                }

                usTemp = BitConverter.ToUInt16(psData, 0);

                if (usTemp == usChksume) return ptData;
                return null;
            }

            public byte[] ToByteArray(int byteoffset, int nSize)
            {
                byte[] ptData;
                int rIndex = DEF_CMD_HEADSIZE + byteoffset;
                ptData = new byte[nSize];
                Array.Copy(psData, rIndex, ptData, 0, nSize);

                return ptData;
            }

            public void SetCmd(ushort cmd)
            {
                nCmd = cmd;
                psData[4] = (byte)(nCmd & 0xFF);
                psData[5] = (byte)((nCmd >> 8) & 0xFF);
            }

            public void SetSubCmd(ushort subcmd)
            {
                nSubCmd = subcmd;
                psData[6] = (byte)(nSubCmd & 0xFF);
                psData[7] = (byte)((nSubCmd >> 8) & 0xFF);
            }

            public void SetData(int index, ushort ptData)
            {
                int rIndex = DEF_CMD_HEADSIZE + index * 2;
                psData[rIndex] = (byte)(ptData & 0xFF);
                psData[rIndex + 1] = (byte)((ptData >> 8) & 0xFF);
            }

            public void SetData(ref byte[] ptData, int Shortoffset, int nLen)
            {
                int rIndex = DEF_CMD_HEADSIZE + Shortoffset * 2;
                Array.Copy(ptData, 0, psData, rIndex, nLen);
            }

            public void SetChksum(int byteoffset, int bytelen)
            {
                int i;

                int rIndex = DEF_CMD_HEADSIZE + byteoffset;
                ushort tchksum = 0x1234;
                ushort temp;
                if (bytelen == 0)
                {
                    psData[0] = (byte)(usChkSum & 0xFF);
                    psData[1] = (byte)((usChkSum >> 8) & 0xFF);
                    return;
                }

                for (i = 0; i < bytelen; i += 2)
                {
                    temp = BitConverter.ToUInt16(psData, rIndex+i);
                    tchksum += temp;
                }
                usChkSum = tchksum;
                psData[0] = (byte)(usChkSum & 0xFF);
                psData[1] = (byte)((usChkSum >> 8) & 0xFF);

                nLen = DEF_CMD_HEADSIZE + byteoffset + bytelen;
            }

            public bool CheckChksum(int byteoffset, int bytelen) 
            {
                int i;
                ushort tchksum = 0x1234;
                int rIndex = DEF_CMD_HEADSIZE + byteoffset;
                ushort temp;
                ushort temp1;

                temp = BitConverter.ToUInt16(psData, 0);
                if (temp == 0x1234)
                {
                    return true;
                }

                for (i = 0; i < bytelen; i += 2)
                {
                    temp1 = BitConverter.ToUInt16(psData, (rIndex + i));
                    tchksum += temp1;
                }
                
                nLen = DEF_CMD_HEADSIZE + byteoffset+ bytelen;

                if (temp == tchksum) return true;
                return false;
            }

            public int GetLength() // bytelen
            {
                return nLen;
            }

        }

    }
}
