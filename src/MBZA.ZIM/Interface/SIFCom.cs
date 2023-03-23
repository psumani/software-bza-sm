using System;
using System.Collections.Generic;
using System.IO;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Threading;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM.ZIM.Interface
{
    public class SIFCom
    {
        #region Private variables

        private TcpClient tcpClient;
        private NetworkStream networkStream;

        private int trialsDisconnection = 0;
        private const int maxTrialsDisconnection = 1;

        #endregion Private variables

        #region Public variables
        public int LimitTimerOut;
        public bool Connected
        {
            get { return isConnected; }
            set { isConnected = value; }
        }
        private bool isConnected = false;

        public string HostName;
        public int Port;

        public string ErrorMessage = string.Empty;

        #endregion Public variables

        #region Public events

        public event EventHandler DisconnectedDevice;

        #endregion Public events

        #region Life and Death

        public SIFCom(string hostname, int port)
        {
            this.HostName = hostname;
            this.Port = port;
        }

        ~SIFCom()
        {
            Dispose();
        }

        #endregion Life and Death

        #region Connection

        public bool Connect(int tLimitTimerOut)
        {
            try
            {
                tcpClient = new TcpClient();
                LimitTimerOut = tLimitTimerOut;
                tcpClient.SendTimeout = LimitTimerOut;
                tcpClient.ReceiveTimeout = LimitTimerOut;
                tcpClient.NoDelay = true;

                IAsyncResult ar = tcpClient.BeginConnect(HostName, Port, null, null);
                if(ar.AsyncWaitHandle.WaitOne(TimeSpan.FromSeconds(4), false))
                {
                    tcpClient.EndConnect(ar);
                    networkStream = tcpClient.GetStream();
                    isConnected = tcpClient.Connected;
                    trialsDisconnection = 0;
                }
                else
                {
                    tcpClient.Close();
                    SocketException SocketEx = new SocketException(10060);
                    ErrorMessage = SocketEx.Message;
                    isConnected = false;
                }
            }
            catch (Exception ex)
            {
                ErrorMessage = ex.Message;

                isConnected = false;
                return isConnected;
            }

            return isConnected;
        }

        public void Dispose() 
        {
            isConnected = false;

            if (networkStream != null)
                networkStream.Close(1000);

            if (tcpClient != null)
                tcpClient.Close();
            
        }

        public void SetReceiveTime(int ms)
        {
            tcpClient.ReceiveTimeout = ms;
        }

        public void SetSendTime(int ms)
        {
            tcpClient.SendTimeout = ms;
        }

        public bool PingTest()
        {
            try
            {
                Ping ping = new Ping();
                PingReply reply = ping.Send(HostName);

                if (reply.Status == IPStatus.Success)
                    return true;
            }
            catch (PingException)
            {
                return false;
            }
            catch (Exception)
            {
                return false;
            }

            return false;
        }

        public void ClearReadBuffer()
        {
            networkStream.Write(new byte[0], 0, 0);

            while (!tcpClient.Client.Connected) ;

            while (tcpClient.Available > 0)
            {
                int count = tcpClient.Available;
                byte[] buff = new byte[count];

                networkStream.Read(buff, 0, count);
            }
        }

        #endregion Connection

        #region Read and write commands
        public byte[] ReadFromDevice(byte command, int slot, int address, int length)
        {
            if (!isConnected)
                return null;

            byte[] temp = null;

            try
            {
                stCmdHeader sHeader = new stCmdHeader(command, slot, address, length);
                if (!Write(sHeader.ToByteArray()))
                {
                    return null;
                }
                sHeader = new stCmdHeader(SIFConstants.CMD_READ_DATA, slot);
                byte[] dbuff = sHeader.ToByteArray();
                stPacket sPacket;
                sPacket.Header.ID = SIFConstants.PACKET_ID;
                sPacket.Header.FrameCount = 1;
                sPacket.Header.FrameNumber = 0;
                sPacket.Header.DataLength = dbuff.Length;
                sPacket.Header.Reserved01 = 0;
                sPacket.Header.Error = 0;
                sPacket.Data = new byte[SIFConstants.DATA_LEN]; Array.Copy(dbuff, 0, sPacket.Data, 0, dbuff.Length);
                sPacket.CheckSum = 0;

                byte[] pktBuf = sPacket.ToByteArray();

                int frameCount, frameNumber;
                List<byte> dataList = new List<byte>();

                do
                {
                    if (!WritePacket(pktBuf))
                    {
                        return null;
                    }

                    byte[] rdBuf = new byte[SIFConstants.PACKET_SIZE];

                    int read = ReadPacket(rdBuf, 0, SIFConstants.PACKET_SIZE);

                    if (read == -1)
                    {
                        return null;
                    }
                    if (read != SIFConstants.PACKET_SIZE)
                    {
                        return null;
                    }
                    stPacket sRdPacket = rdBuf.ToPacket<stPacket>();
                    if (sRdPacket.Header.ID != SIFConstants.PACKET_ID || sRdPacket.Header.Error != 0)
                    {
                        return null;
                    }

                    frameCount = sRdPacket.Header.FrameCount;
                    frameNumber = sRdPacket.Header.FrameNumber + 1;
                    for (int i = 0; i < sRdPacket.Header.DataLength; i++)
                        dataList.Add(sRdPacket.Data[i]);
                } while (frameCount > frameNumber);

                if (dataList.Count > 0)
                {
                    temp = new byte[dataList.Count];
                    for (int i = 0; i < dataList.Count; i++)
                        temp[i] = dataList[i];
                }
            }
            catch (Exception)
            {
                return null;
            }

            return temp;
        }

        public byte[] ReadFromDevice(byte command, int slot, int address = 0)
        {
            if (!isConnected)
                return null;

            byte[] temp = null;

            try
            {
                stCmdHeader sHeader = new stCmdHeader(command, slot, address);
                if (!Write(sHeader.ToByteArray()))
                    return null;

                sHeader = new stCmdHeader(SIFConstants.CMD_READ_DATA, slot);
                byte[] dbuff = sHeader.ToByteArray();
                stPacket sPacket;
                sPacket.Header.ID = SIFConstants.PACKET_ID;
                sPacket.Header.FrameCount = 1;
                sPacket.Header.FrameNumber = 0;
                sPacket.Header.DataLength = dbuff.Length;
                sPacket.Header.Reserved01 = 0;
                sPacket.Header.Error = 0;
                sPacket.Data = new byte[SIFConstants.DATA_LEN]; Array.Copy(dbuff, 0, sPacket.Data, 0, dbuff.Length);
                sPacket.CheckSum = 0;

                byte[] pktBuf = sPacket.ToByteArray();

                int frameCount, frameNumber;
                List<byte> dataList = new List<byte>();

                do
                {
                    if (!WritePacket(pktBuf))
                        return null;

                    byte[] rdBuf = new byte[SIFConstants.PACKET_SIZE];

                    int read = ReadPacket(rdBuf, 0, SIFConstants.PACKET_SIZE);
                    if (read == -1)
                        return null;
                    if (read != SIFConstants.PACKET_SIZE)
                        return null;

                    stPacket sRdPacket = rdBuf.ToPacket<stPacket>();
                    if (sRdPacket.Header.ID != SIFConstants.PACKET_ID || sRdPacket.Header.Error != 0)
                        return null;

                    frameCount = sRdPacket.Header.FrameCount;
                    frameNumber = sRdPacket.Header.FrameNumber + 1;
                    for (int i = 0; i < sRdPacket.Header.DataLength; i++)
                        dataList.Add(sRdPacket.Data[i]);
                } while (frameCount > frameNumber);

                if (dataList.Count > 0)
                {
                    temp = new byte[dataList.Count];
                    for (int i = 0; i < dataList.Count; i++)
                        temp[i] = dataList[i];
                }
            }
            catch (Exception)
            {
                return null;
            }

            return temp;
        }

        public byte[] ReadFromDevice(byte command, int slot)
        {
            if (!isConnected)
                return null;

            byte[] temp = null;

            try
            {
                stCmdHeader sHeader = new stCmdHeader(command, 0, slot, 0, 0);
                if (!Write(sHeader.ToByteArray()))
                    return null;

                sHeader = new stCmdHeader(SIFConstants.CMD_READ_DATA, slot);
                byte[] dbuff = sHeader.ToByteArray();
                stPacket sPacket;
                sPacket.Header.ID = SIFConstants.PACKET_ID;
                sPacket.Header.FrameCount = 1;
                sPacket.Header.FrameNumber = 0;
                sPacket.Header.DataLength = dbuff.Length;
                sPacket.Header.Reserved01 = 0;
                sPacket.Header.Error = 0;
                sPacket.Data = new byte[SIFConstants.DATA_LEN]; Array.Copy(dbuff, 0, sPacket.Data, 0, dbuff.Length);
                sPacket.CheckSum = 0;

                byte[] pktBuf = sPacket.ToByteArray();

                int frameCount, frameNumber;
                List<byte> dataList = new List<byte>();

                do
                {
                    if (!WritePacket(pktBuf))
                        return null;

                    byte[] rdBuf = new byte[SIFConstants.PACKET_SIZE];

                    int read = ReadPacket(rdBuf, 0, SIFConstants.PACKET_SIZE);
                    if (read == -1)
                        return null;
                    if (read != SIFConstants.PACKET_SIZE)
                        return null;

                    stPacket sRdPacket = rdBuf.ToPacket<stPacket>();
                    if (sRdPacket.Header.ID != SIFConstants.PACKET_ID || sRdPacket.Header.Error != 0)
                        return null;

                    frameCount = sRdPacket.Header.FrameCount;
                    frameNumber = sRdPacket.Header.FrameNumber + 1;
                    for (int i = 0; i < sRdPacket.Header.DataLength; i++)
                        dataList.Add(sRdPacket.Data[i]);
                } while (frameCount > frameNumber);

                if (dataList.Count > 0)
                {
                    temp = new byte[dataList.Count];
                    for (int i = 0; i < dataList.Count; i++)
                        temp[i] = dataList[i];
                }
            }
            catch (Exception)
            {
                return null;
            }

            return temp;
        }

        public bool WriteToDevice(byte command)
        {
            bool result = false;

            try
            {
                stCmdHeader sHeader = new stCmdHeader(command,-1);
                if (!Write(sHeader.ToByteArray()))
                    return false;

                result = true;
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }

        public bool WriteToDevice(byte command, int slot)
        {
            bool result = false;

            try
            {
                stCmdHeader sHeader = new stCmdHeader(command, slot);
                if (!Write(sHeader.ToByteArray()))
                    return false;

                result = true;
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }

        public bool WriteToDevice(byte command, int slot, int addr)
        {
            bool result = false;

            try
            {
                stCmdHeader sHeader = new stCmdHeader(command, slot, addr);
                if (!Write(sHeader.ToByteArray()))
                    return false;

                result = true;
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }

        public bool WriteToDevice(byte command, int slot, int address, byte[] buffer)
        {
            bool result = false;

            try
            {
                int bLen = (buffer == null) ? 0 : buffer.Length;
                stCmdHeader sHeader = new stCmdHeader(command, slot,address, bLen);
                int headersize = Marshal.SizeOf(typeof(stCmdHeader));
                int size = headersize + bLen;

                byte[] buff = new byte[size];
                int index = 0;
                IntPtr ptr = Marshal.AllocHGlobal(headersize);
                Marshal.StructureToPtr(sHeader, ptr, false);
                Marshal.Copy(ptr, buff, index, headersize);
                index += headersize;
                if (bLen > 0)
                    Array.Copy(buffer, 0, buff, index, buffer.Length);
                Marshal.FreeHGlobal(ptr);

                if (!Write(buff))
                    return false;
                
                result = true;
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }

        public bool WriteToDevice(byte command, int slot, byte[] buffer)
        {
            bool result = false;

            try
            {
                int bLen = (buffer == null) ? 0 : buffer.Length;
                stCmdHeader sHeader = new stCmdHeader(command, slot, 0, bLen);
                int headersize = Marshal.SizeOf(typeof(stCmdHeader));
                int size = headersize + bLen;

                byte[] buff = new byte[size];
                int index = 0;
                IntPtr ptr = Marshal.AllocHGlobal(headersize);
                Marshal.StructureToPtr(sHeader, ptr, false);
                Marshal.Copy(ptr, buff, index, headersize);
                index += headersize;
                if (bLen > 0)
                    Array.Copy(buffer, 0, buff, index, buffer.Length);
                Marshal.FreeHGlobal(ptr);

                if (!Write(buff))
                    return false;

                result = true;
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }

        private bool Write(byte[] data)
        {
            bool result = false;

            if (data == null)
                return result;

            try
            {
                int dlen, tr, frameno, dofs;

                dlen = data.Length;
                frameno = 0;
                dofs = 0;

                stPacket sPacket;
                sPacket.Data = new byte[SIFConstants.DATA_LEN];

                sPacket.Header.ID = SIFConstants.PACKET_ID;
                sPacket.Header.FrameCount = (short)((data.Length / SIFConstants.DATA_LEN) + 1);

                while (dlen > 0)
                {
                    sPacket.Header.FrameNumber = (short)frameno;
                    tr = (dlen > SIFConstants.DATA_LEN) ? SIFConstants.DATA_LEN : dlen;
                    sPacket.Header.DataLength = tr;
                    sPacket.Header.Reserved01 = 0;
                    sPacket.Header.Error = 0;
                    Array.Copy(data, dofs, sPacket.Data, 0, tr);
                    sPacket.CheckSum = 0;

                    byte[] sendbuf = sPacket.ToByteArray();

                    if (!WritePacket(sendbuf))
                        return false;

                    byte[] recvbuf = new byte[SIFConstants.PACKET_SIZE];

                    int read = ReadPacket(recvbuf, 0, recvbuf.Length);

                    if (read == -1)
                        return false;

                    if (read != recvbuf.Length)
                        return false;

                    stPacket sRecvPacket = recvbuf.ToPacket<stPacket>();
                    if (sRecvPacket.Header.Error != 0)
                        return false;

                    dlen -= tr;
                    frameno++;
                    dofs += tr;
                }

                result = true;
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }

        private bool WritePacket(byte[] buffer)
        {
            if (!isConnected)
                return false;

            try
            {
                byte checksum = buffer.GetCheckSum();
                buffer[buffer.Length - 1] = checksum;
                networkStream.Write(buffer, 0, buffer.Length);
            }
            catch (ObjectDisposedException ex)
            {
                trialsDisconnection++;

                Console.WriteLine(ex.Message + "_Write");
                string message = string.Format("WP : {0} : {1}", ex.Message, trialsDisconnection);
                //SServerStatic.Logging.Write(message);

                if (trialsDisconnection >= maxTrialsDisconnection)
                {
                    isConnected = false;
                    if (DisconnectedDevice != null)
                        DisconnectedDevice(this, new EventArgs());
                }

                return false;
            }
            catch (IOException ex)
            {
                trialsDisconnection++;

                Console.WriteLine(ex.Message + "_Write");
                string message = string.Format("WP : {0} : {1}", ex.Message, trialsDisconnection);
                //SServerStatic.Logging.Write(message);

                if (trialsDisconnection >= maxTrialsDisconnection)
                {
                    isConnected = false;
                    if (DisconnectedDevice != null)
                        DisconnectedDevice(this, new EventArgs());
                }

                return false;
            }
            catch (NullReferenceException ex)
            {
                Console.WriteLine(ex.Message + "_Write");
                //SServerStatic.Logging.Write(ex.Message + "_Write");

                return false;
            }

            return true;
        }

        private int ReadPacket(byte[] buffer, int index, int count)
        {
            if (!isConnected)
                return -1;

            int result = 0;

            try
            {
                result = networkStream.Read(buffer, 0, count);
                byte checksum = buffer.GetCheckSum();
                if (checksum != buffer[buffer.Length - 1])
                {
                    Console.WriteLine("Checksum Error");
                    return -2;
                }
            }
            catch (ObjectDisposedException ex)
            {
                trialsDisconnection++;

                Console.WriteLine(ex.Message + "_Read" + tcpClient.Client.Connected.ToString());
                string message = string.Format("RP : {0}-{1} : {2}", ex.Message, ex.ObjectName, trialsDisconnection);
                //SServerStatic.Logging.Write(message);

                if (trialsDisconnection >= maxTrialsDisconnection)
                {
                    isConnected = false;
                    if (DisconnectedDevice != null)
                        DisconnectedDevice(this, new EventArgs());
                }

                return -1;
            }
            catch (IOException ex)
            {
                trialsDisconnection++;

                Console.WriteLine(ex.Message + "_Read" + tcpClient.Client.Connected.ToString());
                string message = string.Format("RP : {0} : {1}", ex.Message, trialsDisconnection);
                //SServerStatic.Logging.Write(message);

                if (trialsDisconnection >= maxTrialsDisconnection)
                {
                    isConnected = false;

                    if (DisconnectedDevice != null)
                        DisconnectedDevice(this, new EventArgs());
                }

                return -1;
            }
            catch (NullReferenceException ex)
            {
                Console.WriteLine(ex.Message + "_Read" + tcpClient.Client.Connected.ToString());
                //SServerStatic.Logging.Write(ex.Message + "_Read" + tcpClient.Client.Connected.ToString());

                return 0;
            }

            trialsDisconnection = 0;

            return result;
        }

        #endregion Read and write commands

        #region Firmware commands

        public bool UploadFirmware(string filename)
        {
            try
            {
                byte[] dataBuf = File.ReadAllBytes(filename);
                Int32 bootAddr, codeAddr;
                List<byte> bootCode;
                List<byte> userCode;

                TranslationFirmware(dataBuf, out bootAddr, out bootCode, out codeAddr, out userCode);

                ////////////// Uploading
                int block = 0;

                if (DC_EraseBlockNand(block) == false)
                {
                    Console.Write("Erase Error1");
                    return false;
                }

                Console.Write(string.Format("Erase Block {0}\r\n", block));

                int bootpagesize = ((bootCode.Count % 2048) > 0) ? (bootCode.Count / 2048) + 1 : (bootCode.Count / 2048);

                if (DC_SetFirmwareInfo(0xB4, (byte)bootpagesize) == false)
                {
                    Console.Write("SetFirmwareInfo Error1");
                    return false;
                }

                Console.Write(string.Format("Program Page {0}\r\n", 0));

                Thread.Sleep(10);

                byte[] boot_buffer = bootCode.ToArray();
                byte[] code_buffer = userCode.ToArray();

                int page = 1;
                int remain = bootCode.Count;
                int tr = 0;
                int offset = 0;
                int transfered = 0;
                int count = 1;

                while (remain > 0)
                {
                    tr = (remain > 2048) ? 2048 : remain;

                    stNandBuffer sBuffer;
                    sBuffer.Main = new byte[(SIFConstants.NAND_MAIN_SIZE / SIFConstants.MLC_MAIN_SIZE) * SIFConstants.MLC_MAIN_SIZE];
                    sBuffer.Spare = new byte[(SIFConstants.NAND_MAIN_SIZE / SIFConstants.MLC_MAIN_SIZE) * SIFConstants.MLC_SPARE_SIZE];

                    for (int i = 0; i < sBuffer.Main.Length; i++)
                        sBuffer.Main[i] = 0xFF;
                    for (int i = 0; i < sBuffer.Spare.Length; i++)
                        sBuffer.Spare[i] = 0xFF;

                    Array.Copy(boot_buffer, offset, sBuffer.Main, 0, tr);
                    Array.Copy(BitConverter.GetBytes(bootAddr), 0, sBuffer.Spare, 0, sizeof(Int32));

                    if (DC_ProgramNand(page, sBuffer.ToByteArray()) == false)
                    {
                        Console.Write(string.Format("ProgramNand Error1 {0}", count));
                        return false;
                    }

                    Console.Write(string.Format("Program Page {0}\r\n", page));

                    bootAddr += tr;
                    remain -= tr;
                    offset += tr;
                    transfered += tr;
                    page++;
                    count++;

                    Thread.Sleep(10);
                }

                page = 0;
                offset = 0;
                remain = userCode.Count;
                count = 1;

                while (remain > 0)
                {
                    if (page == 0)
                    {
                        block++;

                        // Section 1 : Code
                        if (DC_EraseBlockNand(block) == false)
                        {
                            Console.Write("Erase Error2");
                            return false;
                        }

                        Console.Write(string.Format("Erase Block {0}\r\n", block));

                        Thread.Sleep(10);
                    }

                    tr = (remain > 2048) ? 2048 : remain;

                    stNandBuffer sBuffer;
                    sBuffer.Main = new byte[(SIFConstants.NAND_MAIN_SIZE / SIFConstants.MLC_MAIN_SIZE) * SIFConstants.MLC_MAIN_SIZE];
                    sBuffer.Spare = new byte[(SIFConstants.NAND_MAIN_SIZE / SIFConstants.MLC_MAIN_SIZE) * SIFConstants.MLC_SPARE_SIZE];

                    for (int i = 0; i < sBuffer.Main.Length; i++)
                        sBuffer.Main[i] = 0xFF;
                    for (int i = 0; i < sBuffer.Spare.Length; i++)
                        sBuffer.Spare[i] = 0xFF;

                    Array.Copy(code_buffer, offset, sBuffer.Main, 0, tr);
                    Array.Copy(BitConverter.GetBytes(codeAddr), 0, sBuffer.Spare, 0, sizeof(Int32));

                    if (page == 0 || page == 1)
                    {
                        sBuffer.Spare[4] = sBuffer.Main[SIFConstants.NAND_MAIN_SIZE - 48];
                        sBuffer.Main[SIFConstants.NAND_MAIN_SIZE - 48] = 0xFF;
                    }

                    if (DC_ProgramNand(block * SIFConstants.NAND_PG_PER_BLK + page, sBuffer.ToByteArray()) == false)
                    {
                        Console.Write(string.Format("ProgramNand Error2 {0}", count));
                        return false;
                    }

                    Console.Write(string.Format("Program Page {0}\r\n", page));

                    codeAddr += tr;
                    remain -= tr;
                    offset += tr;
                    transfered += tr;
                    page++;
                    count++;

                    if (page >= 64)
                        page = 0;

                    Thread.Sleep(10);
                }
            }
            catch (Exception)
            {
                return false;
            }

            return true;
        }

        private void TranslationFirmware(byte[] databuf, out Int32 bootAddr, out List<byte> bootCode, out Int32 codeAddr, out List<byte> userCode)
        {
            bootAddr = 0;
            codeAddr = 0;
            bootCode = new List<byte>();
            userCode = new List<byte>();

            int offset = 0;
            int size = 0;
            bool flag = false;
            bool intvec = false;
            bool bootloader = false;
            bool usercode = false;

            while (true)
            {
                if (!intvec)
                {
                    if (flag == false)
                    {
                        if (databuf[offset] == 0x01 && databuf[offset + 1] == 0x01 && databuf[offset + 2] == 0x00 && databuf[offset + 3] == 0x00)
                        {
                            offset += 4;
                            bootAddr = databuf[offset] << 24 | databuf[offset + 1] << 16 | databuf[offset + 2] << 8 | databuf[offset + 3];
                            offset += 4;    // Address Pass
                            size = databuf[offset] << 24 | databuf[offset + 1] << 16 | databuf[offset + 2] << 8 | databuf[offset + 3];
                            offset += 4;
                            flag = true;
                        }
                        else
                        {
                            offset++;
                        }
                    }
                    else
                    {
                        if (size > 0)
                        {
                            bootCode.Add(databuf[offset++]);
                            size--;
                        }
                        else
                        {
                            intvec = true;
                            flag = false;
                        }
                    }
                }
                else
                {
                    if (!bootloader)
                    {
                        if (flag == false)
                        {
                            if (databuf[offset] == 0x01 && databuf[offset + 1] == 0x01 && databuf[offset + 2] == 0x00 && databuf[offset + 3] == 0x00)
                            {
                                offset += 4;
                                offset += 4;    // Address Pass
                                size = databuf[offset] << 24 | databuf[offset + 1] << 16 | databuf[offset + 2] << 8 | databuf[offset + 3];
                                offset += 4;
                                flag = true;
                            }
                            else
                            {
                                offset++;
                            }
                        }
                        else
                        {
                            if (size > 0)
                            {
                                bootCode.Add(databuf[offset++]);
                                size--;
                            }
                            else
                            {
                                bootloader = true;
                                flag = false;
                            }
                        }
                    }
                    else
                    {
                        if (!usercode)
                        {
                            if (flag == false)
                            {
                                if (databuf[offset] == 0x01 && databuf[offset + 1] == 0x01 && databuf[offset + 2] == 0x00 && databuf[offset + 3] == 0x00)
                                {
                                    offset += 4;
                                    codeAddr = databuf[offset] << 24 | databuf[offset + 1] << 16 | databuf[offset + 2] << 8 | databuf[offset + 3];
                                    offset += 4;
                                    size = databuf[offset] << 24 | databuf[offset + 1] << 16 | databuf[offset + 2] << 8 | databuf[offset + 3];
                                    offset += 4;
                                    flag = true;
                                }
                                else
                                {
                                    offset++;
                                }
                            }
                            else
                            {
                                if (size > 0)
                                {
                                    userCode.Add(databuf[offset++]);
                                    size--;
                                }
                                else
                                {
                                    usercode = true;
                                    flag = false;
                                }
                            }
                        }
                        else
                        {
                            break;
                        }
                    }
                }
            }
        }

        #endregion Firmware commands

        #region Direct commands

        public bool DC_EraseBlockNand(object data)
        {
            bool result = false;

            try
            {
                object[] objArr = (object[])data;
                int block = (int)objArr[0];

                result = WriteToDevice((byte)FirmwareCommands.NandBlockErase, -1, block, null);
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }
        public bool DC_EraseBlockNand(int block)
        {
            bool result = false;

            try
            {
                result = WriteToDevice((byte)FirmwareCommands.NandBlockErase,-1, block, null);
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }
        public bool DC_ProgramNand(object data)
        {
            bool result = false;

            try
            {
                object[] objArr = (object[])data;

                int page = (int)objArr[0];
                byte[] buffer = (byte[])objArr[1];

                result = WriteToDevice((byte)FirmwareCommands.NandProgram, -1, page, buffer);
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }
        public bool DC_ProgramNand(int block, byte[] buffer)
        {
            bool result = false;

            try
            {
                result = WriteToDevice((byte)FirmwareCommands.NandProgram, -1, block, buffer);
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }

        public bool DC_SetFirmwareInfo(object data)
        {
            bool result = false;

            try
            {
                object[] objArr = (object[])data;

                byte icr = (byte)objArr[0];
                byte pagesize = (byte)objArr[1];

                byte[] buffer = (new stNandProgInfo(icr, pagesize)).ToByteArray();

                result = WriteToDevice((byte)FirmwareCommands.SetFirmwareInfo, -1, 0, buffer);
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }
        public bool DC_SetFirmwareInfo(byte icr, byte pagesize)
        {
            bool result = false;

            try
            {
                byte[] buffer = (new stNandProgInfo(icr, pagesize)).ToByteArray();

                result = WriteToDevice((byte)FirmwareCommands.SetFirmwareInfo, -1, 0, buffer);
            }
            catch (Exception)
            {
                return false;
            }

            return result;
        }

        private enum FirmwareCommands : byte
        {
            NandBlockErase = 0x30,
            NandProgram = 0x31,
            SetFirmwareInfo = 0x32,
        }

        #endregion Direct commands
    }
}
