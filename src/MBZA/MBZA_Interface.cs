using System;
using System.Threading;
using System.Runtime.InteropServices;

using SMLib;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using System.Text;
using System.Diagnostics;
using System.IO;
using System.Net.NetworkInformation;
using System.Net;
using System.Xml.Serialization;

namespace ZiveLab.ZM
{

    public class MBZA_Interface
    {
        public bool bConnect;
        public string serial;
        public MBZA_MapMem mMapMem;
        public stDevInf mDevInf;
        public st_zim_device[] mdevice;
        public stConnTargetCfg mSetCfg;
        public stEthernetCfg mConnection;
        public stChStatusInf[] mChStatInf;
        public cls_rtdata[] mChRtGrp;

        public int[] Lnkch;
        public string[] resfilename;
        public string[] condfilename;
        public string[] OldCondfilename;
        public string[] calcondfilename;
        public bool[] bLoadData;
        public bool[] bEnableLoadData;

        public stTech[] techcalib;
        public stTech[] tech;
        public stTech[] Oldtech;
        
        public FileResult[] mresfile;

        public stResHeaderInfo[] mHeadinf;
        public bool[] bRemote;
        public int[] RemoteCh;
        public int[] OldCycle;
        bool bThread;
        
        public CommObj mCommZim;
        public Thread Th;

        public MBZA_Interface(int mSetTimeOut = 8000)
        {
            serial = "";
            mMapMem = null;
            mDevInf = new stDevInf(0);
            mConnection = new stEthernetCfg(0);
            mSetCfg = new stConnTargetCfg(0);
            mCommZim = new CommObj(mSetTimeOut);
            mdevice = new st_zim_device[MBZA_Constant.MAX_DEV_CHANNEL];
            mChStatInf = new stChStatusInf[MBZA_Constant.MAX_DEV_CHANNEL];
            mChRtGrp = new cls_rtdata[MBZA_Constant.MAX_DEV_CHANNEL];
            mresfile = new FileResult[MBZA_Constant.MAX_DEV_CHANNEL];
            
            condfilename = new string[MBZA_Constant.MAX_DEV_CHANNEL];
            OldCondfilename = new string[MBZA_Constant.MAX_DEV_CHANNEL];
            resfilename = new string[MBZA_Constant.MAX_DEV_CHANNEL];
            tech = new stTech[MBZA_Constant.MAX_DEV_CHANNEL];
            techcalib = new stTech[MBZA_Constant.MAX_DEV_CHANNEL];
            Oldtech = new stTech[MBZA_Constant.MAX_DEV_CHANNEL];
            calcondfilename = new string[MBZA_Constant.MAX_DEV_CHANNEL];
            mHeadinf = new stResHeaderInfo[MBZA_Constant.MAX_DEV_CHANNEL];
            bRemote = new bool[MBZA_Constant.MAX_DEV_CHANNEL];
            RemoteCh = new int[MBZA_Constant.MAX_DEV_CHANNEL];
            OldCycle = new int[MBZA_Constant.MAX_DEV_CHANNEL];
            bLoadData = new bool[MBZA_Constant.MAX_DEV_CHANNEL];
            bEnableLoadData = new bool[MBZA_Constant.MAX_DEV_CHANNEL];

            Lnkch = new int[MBZA_Constant.MAX_DEV_CHANNEL];
            string str;
            stTech_EIS meis = new stTech_EIS(0);
            
            for (int i=0; i< MBZA_Constant.MAX_DEV_CHANNEL; i++ )
            {
                OldCycle[i] = -1;
                mChStatInf[i] = new stChStatusInf(0);
                tech[i] = new stTech(0);
                tech[i].version = new stVersion(0);
                Lnkch[i] = -1;
                bRemote[i] = false;
                bLoadData[i] = false;
                bEnableLoadData[i] = true;
                RemoteCh[i] = -1;
                techcalib[i] = new stTech(0);
                str = string.Format("Calibration_{0}.eis", i);
                calcondfilename[i] = Path.Combine(gBZA.appcfg.PathSysInfo, str);

                if (File.Exists(calcondfilename[i]))
                {
                    FileCondition fc = new FileCondition();
                    fc.OpenFile(calcondfilename[i], ref techcalib[i]);
                }
                else
                { 
                    techcalib[i].GetEIS(ref meis);
                    meis.bias = 0.0;
                    meis.density = 10;
                    meis.initfreq = 4000.0;
                    meis.finalfreq = 0.05;
                    meis.iteration = 1;
                    techcalib[i].SetEIS(meis);

                    FileCondition fc = new FileCondition();

                    if(fc.Save(calcondfilename[i], techcalib[i]) == false)
                    {
                        gBZA.ShowInfoBox("Failed to save condition file of calibration test.");
                    }
                }

                mChRtGrp[i] = new cls_rtdata();
                mresfile[i] = new FileResult();
                mHeadinf[i] = new stResHeaderInfo(0);
                
                mdevice[i] = new st_zim_device(0);
                resfilename[i] = "";
                condfilename[i] = "";
                OldCondfilename[i] = "";
            }
            
            bConnect = false;
            bThread = false;
        }

        public void InitVariables()
        {
            string str;
            stTech_EIS meis = new stTech_EIS(0);

            for (int i = 0; i<MBZA_Constant.MAX_DEV_CHANNEL; i++ )
            {
                OldCycle[i] = -1;
                mChStatInf[i].initialize();

                tech[i].initialize();
                Lnkch[i] = -1;
                bRemote[i] = false;
                bLoadData[i] = false;
                bEnableLoadData[i] = true;
                RemoteCh[i] = -1;
                techcalib[i].initialize();
                str = string.Format("Calibration_{0}.eis", i);
                calcondfilename[i] = Path.Combine(gBZA.appcfg.PathSysInfo, str);

                if (File.Exists(calcondfilename[i]))
                {
                FileCondition fc = new FileCondition();
                fc.OpenFile(calcondfilename[i], ref techcalib[i]);
                }
                else
                { 
                techcalib[i].GetEIS(ref meis);
                meis.bias = 0.0;
                meis.density = 10;
                meis.initfreq = 4000.0;
                meis.finalfreq = 0.05;
                meis.iteration = 1;
                techcalib[i].SetEIS(meis);

                FileCondition fc = new FileCondition();

                if(fc.Save(calcondfilename[i], techcalib[i]) == false)
                {
                gBZA.ShowInfoBox("Failed to save condition file of calibration test.");
                }
                }

                mChRtGrp[i] = new cls_rtdata();
                mresfile[i] = new FileResult();
                mHeadinf[i] = new stResHeaderInfo(0);

                mdevice[i] = new st_zim_device(0);
                resfilename[i] = "";
                condfilename[i] = "";
                OldCondfilename[i] = "";
            }
            
            bConnect = false;
            bThread = false;
        }

        public bool ThreadStat()
        {
            return this.bThread;
        }

        public void Thread_Run()
        {
            this.mMapMem = new MBZA_MapMem();
            
            this.bThread = true;
            Th = new Thread(new ThreadStart(this.Thread_CommObj));
            this.Th.Start();
        }

        public bool SimplePing(string sip)
        {
            Ping pingSender = new Ping();
            PingReply reply;
            try
            {
                reply = pingSender.Send(IPAddress.Parse(sip), 2000);

                if (reply.Status == IPStatus.Success) //핑이 제대로 들어가고 있을 경우
                {
                    return true;
                }
                else //핑이 제대로 들어가지 않고 있을 경우 
                {
                    Debug.WriteLine(reply.Status);
                }
            }
            catch(Exception e)
            {
                Debug.WriteLine(e.Message);
            }
            return false;
        }

        void LoadFromXml(string sFilename, ref st_zim_rnginf rnginf)
        {
            stRangeFile inf = new stRangeFile();
            StreamReader file = new StreamReader(sFilename);

            XmlSerializer Reader = new XmlSerializer(inf.GetType());

            try
            {
                inf = (stRangeFile)Reader.Deserialize(file);

                rnginf = inf.ranges;

            }
            catch (Exception ex)
            {

            }
            file.Close();
        }


        private int RefreshConnect()
        {
            bConnect = false;


            if (mCommZim.Connect() == true)
            {
                
                stFindSIFCfg mcfg = new stFindSIFCfg(0);
                
                if (mCommZim.ReadFindSifcfg(ref mcfg) == false)
                {
                    mCommZim.Dispose();
                    return -1;
                }

                if((eDeviceType)mcfg.Type == eDeviceType.SBZA || (eDeviceType)mcfg.Type == eDeviceType.MBZA)
                {
                    if(serial != mcfg.GetSerialNumber())
                    {
                        mCommZim.Dispose();
                        return -1;
                    }
                }
                else
                {
                    mCommZim.Dispose();
                    return -1;
                }
                bConnect = true;
                mCommZim.ReadConnectStatus(ref mConnection);

                RefreshHeadinfo();
                RefreshTechfiles();
                RefreshDeviceInfo();

                serial = mDevInf.mSysCfg.mSIFCfg.GetSerialNumber();

                mCommZim.mDevType = (eDeviceType)mDevInf.mSysCfg.mSIFCfg.Type;
                
                if (mCommZim.mDevType == eDeviceType.SBZA || mCommZim.mDevType == eDeviceType.MBZA)
                {
                    string xmlfile = "";
                    bool   bCheckInf = true;
                    for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        if (mDevInf.mSysCfg.EnaZIM[i] == 0) continue;
                        if (mDevInf.mSysCfg.ChkZIM[i] == 0) continue;
                        xmlfile = mDevInf.mSysCfg.mZimCfg[i].GetSerialNumber() + "_Ranges.xml";
                        xmlfile = Path.Combine(gBZA.appcfg.PathRangeInfo, xmlfile);
                        if (File.Exists(xmlfile) == true)
                        {
                            st_zim_rnginf rnginf = new st_zim_rnginf(mDevInf.mSysCfg.mZimCfg[i].info.GetZimType());
                            LoadFromXml(xmlfile, ref rnginf);
                            if (mDevInf.mSysCfg.mZimCfg[i].ranges.CompareInfo(rnginf.ToByteArray()) == false)
                            {
                                mDevInf.mSysCfg.mZimCfg[i].ranges.ToWritePtr(rnginf.ToByteArray());
                                bCheckInf = false;
                                break;
                            }
                        }
                    }
                    if (bCheckInf == false)  mCommZim.WriteData(ref mDevInf.mSysCfg);
                }

                mCommZim.CmdEnableCommTimeOut(1);

                RefreshDeviceStatus();

                /*if (mCommZim.CheckModelOfSif() == true)
                {

                    if (mCommZim.mDevType == eDeviceType.SBZA || mCommZim.mDevType == eDeviceType.MBZA)
                    {
                        mCommZim.ReadConnectStatus(ref mConnection);

                        RefreshHeadinfo();
                        RefreshTechfiles();
                        RefreshDeviceInfo();
                        

                        serial = mDevInf.mSysCfg.mSIFCfg.GetSerialNumber();

                        mCommZim.CmdEnableCommTimeOut(1);

                        RefreshDeviceStatus();
                    }
                    else
                    {
                        return -1;
                    }
                }
                else
                {
                    return -1;
                }
                */
                if (gBZA.SifLnkLst.ContainsKey(serial))
                {
                    gBZA.SifLnkLst[serial].mDevInf.ToWritePtr(mDevInf.ToByteArray());
                }
                return 1;
            }
            return 0;
        }

        private int Connect()
        {
            bConnect = false;
            if (mCommZim.Connect() == true)
            {
                bConnect = true;
                if (mCommZim.CheckModelOfSif() == true)
                {

                    if (mCommZim.mDevType == eDeviceType.SBZA || mCommZim.mDevType == eDeviceType.MBZA)
                    {
                        mCommZim.ReadConnectStatus(ref mConnection);

                        RefreshHeadinfo();
                        RefreshTechfiles();
                        RefreshDeviceInfo();

                        serial = mDevInf.mSysCfg.mSIFCfg.GetSerialNumber();

                        mCommZim.CmdEnableCommTimeOut(1);

                        RefreshDeviceStatus();

                        mCommZim.mDevType = (eDeviceType)mDevInf.mSysCfg.mSIFCfg.Type;
                        if (mCommZim.mDevType == eDeviceType.SBZA || mCommZim.mDevType == eDeviceType.MBZA)
                        {
                            string xmlfile = "";
                            bool bCheckInf = true;
                            for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                            {
                                if (mDevInf.mSysCfg.EnaZIM[i] == 0) continue;
                                if (mDevInf.mSysCfg.ChkZIM[i] == 0) continue;
                                xmlfile = mDevInf.mSysCfg.mZimCfg[i].GetSerialNumber() + "_Ranges.xml";
                                xmlfile = Path.Combine(gBZA.appcfg.PathRangeInfo, xmlfile);
                                if (File.Exists(xmlfile) == true)
                                {
                                    st_zim_rnginf rnginf = new st_zim_rnginf(mDevInf.mSysCfg.mZimCfg[i].info.GetZimType());
                                    LoadFromXml(xmlfile, ref rnginf);
                                    if (mDevInf.mSysCfg.mZimCfg[i].ranges.CompareInfo(rnginf.ToByteArray()) == false)
                                    {
                                        mDevInf.mSysCfg.mZimCfg[i].ranges.ToWritePtr(rnginf.ToByteArray());
                                        bCheckInf = false;
                                        break;
                                    }
                                }
                            }
                            if (bCheckInf == false) mCommZim.WriteData(ref mDevInf.mSysCfg);
                        }
                    }
                }
            }


            Thread_Run();

            return 1;
        }

        public void RefreshHeadinfo()
        {
            for (int ch = 0; ch < MBZA_Constant.MAX_DEV_CHANNEL; ch++)
            {
                if(this.mDevInf.mSysCfg.EnaZIM[ch] == 0) continue;
                if (this.mDevInf.mSysCfg.ChkZIM[ch] == 0) continue;
                mCommZim.ReadData(ch, ref mHeadinf[ch]);
            }
        }

        public int ConnectBZA(string sip, int port = 2000)
        {
            mCommZim.HostNameToIP(sip, ref mCommZim.mConnTargetCfg.IpAddress);
            mCommZim.mConnTargetCfg.Port = port;
            mSetCfg = mCommZim.mConnTargetCfg;
            mCommZim.mDevType = (eDeviceType)mDevInf.mSysCfg.mSIFCfg.Type;

            if (bThread == true)
            {
                return -4;
            }

            return Connect();

        }
        public int ConnectBZA(stConnTargetCfg tSetCfg)
        {
            mCommZim.mConnTargetCfg = tSetCfg;
            mSetCfg = tSetCfg;
            mCommZim.mDevType = (eDeviceType)mDevInf.mSysCfg.mSIFCfg.Type;

            if (bThread == true)
            {
                return -4;
            }

            return Connect();
        }


        public bool RefreshDeviceInfo()
        {

            if (mCommZim.ReadData(ref mDevInf.mConnCfg) == false)
            {
                return false;

            }

            if (mCommZim.ReadData(ref mDevInf.mSysCfg) == false)
            {
                return false;

            }
            
            return true;
        }

        public void RefreshDeviceStatus()
        {
            for (int ch = 0; ch < MBZA_Constant.MAX_DEV_CHANNEL; ch++)
            {
                if (this.mDevInf.mSysCfg.EnaZIM[ch] == 0) continue;
                if (this.mDevInf.mSysCfg.ChkZIM[ch] == 0) continue;
                if (mCommZim.ReadData(ch, ref this.mdevice[ch].ctrl_do) == false)
                {
                    continue;
                }

            }
        }

        public void StopThread()
        {
            this.bThread = false;
            if (this.Th != null)
            {
                while (this.Th.IsAlive)
                {
                    Thread.Sleep(1);
                }
            }
       
            mCommZim.Dispose();
            if (mCommZim.mComm == null) bConnect = false;
            else bConnect = mCommZim.mComm.Connected;
        }

        public UInt16 CmdThreadProc()
        {
            UInt16 res = (UInt16)enResult.FLAG_OK;
            
            return res;
        }

        public UInt16 CmdSifProc()
        {
            UInt16 res = (UInt16)enResult.FLAG_OK;

            if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.UploadFirmware)
            {
                byte[] pdata = new byte[(int)(this.mMapMem.mHeader.mCommand.wrlen + 1)];

                Array.Clear(pdata, 0, (int)(this.mMapMem.mHeader.mCommand.wrlen + 1));
                this.mMapMem.ReadData(ref pdata, (int)mMapMem.mHeader.mCommand.wrlen);

                string sfilename = Encoding.UTF8.GetString(pdata).Trim('\0');
                if (mCommZim.mComm.UploadFirmware(sfilename) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.EnableCommTimeOut)
            {
                byte[] pdata = new byte[(int)(this.mMapMem.mHeader.mCommand.wrlen + 1)];
                Array.Clear(pdata, 0, (int)(this.mMapMem.mHeader.mCommand.wrlen + 1));
                this.mMapMem.ReadData(ref pdata, (int)mMapMem.mHeader.mCommand.wrlen);

                int iEnable = BitConverter.ToInt32(pdata, 0);

                if (mCommZim.CmdEnableCommTimeOut(iEnable) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.SetCmdMode)
            {
                byte[] pdata = new byte[(int)(this.mMapMem.mHeader.mCommand.wrlen + 1)];
                Array.Clear(pdata, 0, (int)(this.mMapMem.mHeader.mCommand.wrlen + 1));
                this.mMapMem.ReadData(ref pdata, (int)mMapMem.mHeader.mCommand.wrlen);

                int iEnable = BitConverter.ToInt32(pdata, 0);

                if (mCommZim.CmdSetCmdMode(this.mMapMem.mHeader.mCommand.ch, iEnable) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.SetChannel)
            {
                if (mCommZim.CmdSetChannel(this.mMapMem.mHeader.mCommand.ch) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.ProgramPromOfZIM)
            {
                byte[] pdata = new byte[this.mMapMem.mHeader.mCommand.wrlen];
                Array.Clear(pdata, 0, this.mMapMem.mHeader.mCommand.wrlen);
                this.mMapMem.ReadData(ref pdata, mMapMem.mHeader.mCommand.wrlen);

                if (mCommZim.CmdProgramPromOfZIM(this.mMapMem.mHeader.mCommand.ch, this.mMapMem.mHeader.mCommand.addr, pdata) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.ReadPromOfZIM)
            {
                byte[] pdata = mCommZim.CmdReadPromOfZIM((int)this.mMapMem.mHeader.mCommand.ch, (int)this.mMapMem.mHeader.mCommand.addr);
                if (pdata == null)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
                else
                {
                    this.mMapMem.WriteData(pdata, pdata.Length);
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.ResetFPGA)
            {
                byte[] pdata = new byte[(int)(this.mMapMem.mHeader.mCommand.wrlen + 1)];
                Array.Clear(pdata, 0, (int)(this.mMapMem.mHeader.mCommand.wrlen + 1));
                this.mMapMem.ReadData(ref pdata, (int)mMapMem.mHeader.mCommand.wrlen);

                bool bReset = BitConverter.ToBoolean(pdata, 0);

                if (mCommZim.CmdResetFPGA(this.mMapMem.mHeader.mCommand.ch, bReset) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.ConnectPromOfZIM)
            {
                if (mCommZim.CmdConnectPromOfZIM(this.mMapMem.mHeader.mCommand.ch, this.mMapMem.mHeader.mCommand.addr) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.EreasePromOfZIM)
            {
                if (mCommZim.CmdEreasePromOfZIM(this.mMapMem.mHeader.mCommand.ch) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.DisconnectPromOfZIM)
            {
                if (mCommZim.CmdDisconnectPromOfZIM(this.mMapMem.mHeader.mCommand.ch) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.CheckFPGA)
            {
                if (mCommZim.CheckFPGAofZIM(this.mMapMem.mHeader.mCommand.ch) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.GetDeviceinfo)
            {
                if (mCommZim.ReadData(ref mDevInf) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdSif.SaveDeviceInfo)
            {
                if (mCommZim.WriteData(this.mDevInf) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            
            return res;
        }

        

        public UInt16 CmdSifChProc(int ch)
        {
            UInt16 res = (UInt16)enResult.FLAG_OK;
            if (this.mDevInf.mSysCfg.EnaZIM[ch] == 0) return (UInt16)enResult.FLAG_NOTFOUND;
            if (this.mDevInf.mSysCfg.ChkZIM[ch] == 0) return (UInt16)enResult.FLAG_NOTFOUND;


            if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.SetAutoVdc)
            {

                if (mCommZim.CmdSetVdcAutoRange(ch, this.mMapMem.mHeader.mCommand.addr) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.SetCalibmode)
            {

                if (mCommZim.CmdSetCalibMode(ch, this.mMapMem.mHeader.mCommand.addr) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.GetDO)
            {

                if (mCommZim.ReadData(ch, ref this.mdevice[ch].ctrl_do) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.GetADCVDC)
            {

                if (mCommZim.ReadData(ch, ref this.mdevice[ch].adc_vdc) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.GetADCAC)
            {

                if (mCommZim.ReadData(ch, ref this.mdevice[ch].adc_ac.data) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.GetADCRTD)
            {

                if (mCommZim.ReadData(ch, ref this.mdevice[ch].adc_rtd.data) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.SetDO)
            {
                if (mCommZim.WriteData(ch, this.mdevice[ch].ctrl_do) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.SetDDSSIG)
            {
                if (mCommZim.WriteConfigSignalDDS(ch, this.mdevice[ch].dds_sig) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.Start)
            {

                byte[] pdata = new byte[(int)(this.mMapMem.mHeader.mCommand.wrlen + 1)];
                Array.Clear(pdata, 0, (int)(this.mMapMem.mHeader.mCommand.wrlen + 1));
                this.mMapMem.ReadData(ref pdata, (int)mMapMem.mHeader.mCommand.wrlen);
                bool bCalib = BitConverter.ToBoolean(pdata, 0);
                var rtc = new st_rtc();

                if (bCalib == true)
                {
                    OldCondfilename[ch] = calcondfilename[ch];
                    Oldtech[ch] = techcalib[ch];
                }
                else
                {
                    OldCondfilename[ch] = condfilename[ch];
                    Oldtech[ch] = tech[ch];
                }
                mChRtGrp[ch].Initialize(Oldtech[ch]);


                rtc.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
                if (mCommZim.CmdStartToMeasureImpedance(this.mMapMem.mHeader.mCommand.ch, rtc, bCalib) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }

                string sfolder = Path.GetDirectoryName(resfilename[ch]);
                if (!Directory.Exists(sfolder))
                {
                    Directory.CreateDirectory(sfolder);
                }

                if (mresfile[ch].bopen) mresfile[ch].CloseFile();
                try
                {
                    if (File.Exists(this.resfilename[ch]))
                    {
                        File.Delete(this.resfilename[ch]);
                    }
                }
                catch (Exception e)
                {
                    Debug.WriteLine(string.Format("{0}[{1}].", e.Message, ch + 1));
                    res = (UInt16)enResult.FLAG_FAIL;
                    return res;
                }

                
                if (bCalib == true)
                {
                    stResHeader head = new stResHeader(0);
                    head.SetTechFilename(Encoding.UTF8.GetBytes(calcondfilename[ch]));
                    head.SetMemo(Encoding.UTF8.GetBytes(""));
                    head.mInfo.Ch = gBZA.SifLnkLst[serial].iLinkCh[ch];
                    head.mInfo.Serial = Encoding.UTF8.GetBytes(serial);
                    head.mInfo.sifch = ch;
                    head.mInfo.Error = 0;

                    head.tech = techcalib[ch];
                    head.inf_sif = mDevInf.mSysCfg.mSIFCfg;
                    head.inf_sifch = mDevInf.mSysCfg.mZimCfg[ch];

                    if (mresfile[ch].Start(this.resfilename[ch], head, rtc) == false)
                    {
                        Debug.WriteLine(string.Format("channel {0:00} : Resfile start error.", ch + 1));
                        res = (UInt16)enResult.FLAG_FAIL;
                    }
                }
                else
                {
                    mresfile[ch].tmphead.tech = tech[ch];
                    mresfile[ch].tmphead.mInfo = mHeadinf[ch];
                    if (mresfile[ch].Start(this.resfilename[ch], rtc, gBZA.SifLnkLst[serial].iLinkCh[ch], serial, ch) == false)
                    {
                        Debug.WriteLine(string.Format("channel {0:00} : Resfile start error.", ch + 1));
                        res = (UInt16)enResult.FLAG_FAIL;
                    }
                }

                OldCycle[ch] = -1;
                mHeadinf[ch] = mresfile[ch].tmphead.mInfo;
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.Stop)
            {
                if (mCommZim.CmdStopMeasurement(this.mMapMem.mHeader.mCommand.ch) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.LoadDataStart)
            {
                stResHeader head = new stResHeader(0);

                head = mresfile[ch].tmphead;
                head.mInfo = mHeadinf[ch];

                if (mresfile[ch].Create(this.resfilename[ch], head) == false)
                {
                    Debug.WriteLine(string.Format("channel {0:00} : Resfile start error.", ch + 1));
                    res = (UInt16)enResult.FLAG_FAIL;
                }
                mChRtGrp[ch].Initialize(mresfile[ch].tmphead.tech);

                bEnableLoadData[ch] = true;
                bLoadData[ch] = true;
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.LoadDataStop)
            {
                bEnableLoadData[ch] = false;
                bLoadData[ch] = false;
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.UploadTech)
            {
                RefreshTechfile(ch, true);

                if (mCommZim.WriteData(this.mMapMem.mHeader.mCommand.ch, tech[this.mMapMem.mHeader.mCommand.ch]) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.UploadCalibTech)
            {
                if (mCommZim.WriteCalibTech(this.mMapMem.mHeader.mCommand.ch, techcalib[this.mMapMem.mHeader.mCommand.ch]) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.SaveRangeInfo)
            {
                if (mCommZim.WriteData(this.mMapMem.mHeader.mCommand.ch, this.mDevInf.mSysCfg.mZimCfg[this.mMapMem.mHeader.mCommand.ch].ranges) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
                /*                else
                                {
                                    if (mCommZim.CmdStoreRangesInfo(this.mMapMem.mHeader.mCommand.ch) == false)
                                    {
                                        res = (UInt16)enResult.FLAG_FAIL;
                                    }
                                }*/
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.WriteROM)
            {
                if (mCommZim.CmdStoreRangesInfo(this.mMapMem.mHeader.mCommand.ch) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.UploadResHead)
            {
                if (mCommZim.WriteData(this.mMapMem.mHeader.mCommand.ch, mHeadinf[this.mMapMem.mHeader.mCommand.ch]) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }
            else if (this.mMapMem.mHeader.mCommand.cmd == (short)enCmdZim.RefreshResHead)
            {
                if (mCommZim.ReadData(this.mMapMem.mHeader.mCommand.ch, ref mHeadinf[this.mMapMem.mHeader.mCommand.ch]) == false)
                {
                    res = (UInt16)enResult.FLAG_FAIL;
                }
            }

            return res;
        }

        public void CommandProc()
        {
            UInt16 res = (byte)enResult.FLAG_OK;

            if (this.mMapMem.mHeader.mCommand.target == (UInt16)enTarget.Thread)
            {
                res = CmdThreadProc();
            }
            else if (this.mMapMem.mHeader.mCommand.target == (UInt16)enTarget.Sif)
            {
                res = CmdSifProc();
            }
            else if (this.mMapMem.mHeader.mCommand.target == (UInt16)enTarget.Zim)
            {
                res = CmdSifChProc(this.mMapMem.mHeader.mCommand.ch);
            }
            else
            {
                res = (UInt16)enResult.FLAG_NONE;
            }
            this.mMapMem.mHeader.mStat.Result = res;
            this.mMapMem.mHeader.mStat.Proc = (UInt16)enProc.Finish;
        }

        public bool ResFileProc(int ch)
        {
            enTestState teststate = (enTestState)mChStatInf[ch].TestStatus;
            stDefTestData[] testdata = new stDefTestData[MBZA_Constant.MAX_COM_DATA_CNT];
            int loadcount;
            bool brun = gBZA.CheckStatusRun(mChStatInf[ch]);
            bool bcalibMode = gBZA.CheckStatusCalibMode(mChStatInf[ch]);

            RefreshResfile(ch, brun);

            if (mresfile[ch].bStart == true)
            {
                bEnableLoadData[ch] = true;

                if (brun == false)
                {
                    if (mresfile[ch].StopContinue(mChStatInf[ch].LastError) == false)
                    {
                        return false;
                    }
                    bLoadData[ch] = true;
                    mHeadinf[ch] = mresfile[ch].tmphead.mInfo;
                }
                else
                {
                    if (mChStatInf[ch].eis_status.rescount > mresfile[ch].datacount)
                    {
                        loadcount = mChStatInf[ch].eis_status.rescount - mresfile[ch].datacount;
                        if (loadcount > MBZA_Constant.MAX_COM_DATA_CNT) loadcount = MBZA_Constant.MAX_COM_DATA_CNT;

                        if (mCommZim.ReadData(ch, mresfile[ch].datacount, loadcount, ref testdata) == true)
                        {
                            mresfile[ch].AppendData(testdata, loadcount);
                            mChRtGrp[ch].Append(testdata, loadcount, ref OldCycle[ch]);
                        }
                        else
                        {
                            return false;
                        }
                    }
                }

                /*
                if (mChStatInf[ch].eis_status.rescount > mresfile[ch].datacount)
                {
                    loadcount = mChStatInf[ch].eis_status.rescount - mresfile[ch].datacount;
                    if (loadcount > MBZA_Constant.MAX_COM_DATA_CNT) loadcount = MBZA_Constant.MAX_COM_DATA_CNT;

                    if (mCommZim.ReadData(ch, mresfile[ch].datacount, loadcount, ref testdata) == true)
                    {
                        mresfile[ch].AppendData(testdata, loadcount);
                        mChRtGrp[ch].Append(testdata, loadcount, ref OldCycle[ch]);
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    if (brun == false)
                    {
                        if (mresfile[ch].StopContinue(mChStatInf[ch].LastError) == false)
                        {
                            return false;
                        }
                        bLoadData[ch] = true;
                        mHeadinf[ch] = mresfile[ch].tmphead.mInfo;
                    }
                }*/
            }
            else
            {
                if (mChStatInf[ch].eis_status.rescount > mresfile[ch].datacount && bEnableLoadData[ch])
                {
                    if (mresfile[ch].bopen == false)
                    {
                        OpenResfile(ch, brun, (enTestState)teststate);
                        bLoadData[ch] = true;
                    }

                    if (mresfile[ch].bopen == true)
                    {
                        loadcount = mChStatInf[ch].eis_status.rescount - mresfile[ch].datacount;
                        if (loadcount > MBZA_Constant.MAX_COM_DATA_CNT) loadcount = MBZA_Constant.MAX_COM_DATA_CNT;

                        if (mCommZim.ReadData(ch, mresfile[ch].datacount, loadcount, ref testdata) == true)
                        {
                            mresfile[ch].AppendData(testdata, loadcount);
                            mChRtGrp[ch].Append(testdata, loadcount, ref OldCycle[ch]);
                        }

                        if (brun) mresfile[ch].bStart = true;
                    }
                }
                else
                {
                    if (brun) mresfile[ch].bStart = true;
                    else
                    {
                        if (mresfile[ch].bopen == true)
                        {
                            mresfile[ch].CloseFile();
                            bEnableLoadData[ch] = false;
                            bLoadData[ch] = false;
                        }
                    }
                }
            }
            return true;
        }

        public void RemoteWriteStatus(int ch)
        {
            string str;
            bool brun = gBZA.CheckStatusRun(mChStatInf[ch]);
            bool bcalibMode = gBZA.CheckStatusCalibMode(mChStatInf[ch]);

            string StatusFilename = Path.Combine(gBZA.appcfg.PathRemote,string.Format("RemoteStatus{0}.ini",RemoteCh[ch]+1));


            int LifeTick = gBZA.GetIniIntData("Status", "LifeTick", StatusFilename, 0);
            LifeTick++;
            if (LifeTick > 1000000) LifeTick = 0;
            gBZA.WriteIniIntData("Status", "LifeTick", StatusFilename, LifeTick);
            gBZA.WriteIniboolData("Status", "Started", StatusFilename, brun);
            gBZA.WriteIniIntData("Status", "ErrorStatus", StatusFilename, mChStatInf[ch].ErrorStatus);
            gBZA.WriteIniIntData("Status", "LastError", StatusFilename, mChStatInf[ch].LastError);

            gBZA.WriteIniStrData("Status", "TechniqueFile", StatusFilename, condfilename[ch]);
            gBZA.WriteIniStrData("Status", "ResultFile", StatusFilename, resfilename[ch]);
            gBZA.WriteIniIntData("Status", "ResultDataCount", StatusFilename, mChStatInf[ch].eis_status.rescount);
            gBZA.WriteIniStrData("Status", "Model", StatusFilename, mDevInf.mSysCfg.mZimCfg[ch].GetZimTypeString());
            gBZA.WriteIniIntData("Status", "StartDateTime", StatusFilename, (int)mHeadinf[ch].rtc_begin.tick);
            gBZA.WriteIniIntData("Status", "FinishDateTime", StatusFilename, (int)mHeadinf[ch].rtc_end.tick);

            TimeSpan ElapsedTime = TimeSpan.FromMilliseconds(mChStatInf[ch].RunTimeStamp);
            str = string.Format("{0:##00}:{1:00}:{2:00}", ElapsedTime.Hours, ElapsedTime.Minutes, ElapsedTime.Seconds);
            gBZA.WriteIniStrData("Status", "ElapsedTime", StatusFilename, str);
            double crngval = mDevInf.mSysCfg.mZimCfg[ch].ranges.iac_rng[mChStatInf[ch].Iac_in_rngno].realmax;
            if ((mChStatInf[ch].Iac_rngno % 2) > 0)
            {
                crngval *= mDevInf.mSysCfg.mZimCfg[ch].ranges.iac_rng[mChStatInf[ch].Iac_in_rngno].controlgain;
            }
            gBZA.WriteIniDoubleData("Status", "IRange", StatusFilename, (int)crngval);

            gBZA.WriteIniDoubleData("LastData", "Frequency", StatusFilename, mChStatInf[ch].eis_status.freq);
            gBZA.WriteIniDoubleData("LastData", "Zreal", StatusFilename, mChStatInf[ch].eis_status.zdata.real);
            gBZA.WriteIniDoubleData("LastData", "Zimg", StatusFilename, mChStatInf[ch].eis_status.zdata.img);
            gBZA.WriteIniDoubleData("LastData", "Vdc", StatusFilename, mChStatInf[ch].Vdc);
            gBZA.WriteIniDoubleData("LastData", "Temperature", StatusFilename, mChStatInf[ch].Temperature);
        }
        public void RemoteReadControl(int ch)
        {
            string ControlFilename = Path.Combine(gBZA.appcfg.PathRemote, string.Format("RemoteControl{0}.ini", RemoteCh[ch] + 1));
            string StatusFilename = Path.Combine(gBZA.appcfg.PathRemote, string.Format("RemoteStatus{0}.ini", RemoteCh[ch] + 1));

            bool brun = gBZA.CheckStatusRun(mChStatInf[ch]);
            int ControlStart = gBZA.GetIniIntData("Control", "Start", ControlFilename, 0);
            gBZA.WriteIniIntData("Control", "Start", ControlFilename, 0);

            if(gBZA.CheckStatusCalibMode(mChStatInf[ch]))
            {
                return;
            }
            if (brun)
            {
                if(ControlStart == 2)
                {
                    mCommZim.CmdStopMeasurement(this.mMapMem.mHeader.mCommand.ch);
                }
            }
            else
            {
                if (ControlStart == 1)
                {
                    condfilename[ch] = gBZA.GetIniStrData("Control", "TechniqueFile", ControlFilename, condfilename[ch]);
                    resfilename[ch] = gBZA.GetIniStrData("Control", "ResultFile", ControlFilename, resfilename[ch]);

                    FileCondition fc = new FileCondition();

                    if (fc.OpenFile(condfilename[ch], ref tech[ch]) == false)
                    {
                        gBZA.WriteIniStrData("Status", "StartError", StatusFilename, "Technique file openning error");
                        return;
                    }
                    Oldtech[ch] = tech[ch];
                    OldCondfilename[ch] = condfilename[ch];
                    var rtc = new st_rtc();

                    if (mCommZim.WriteData(ch, tech[ch]) == false)
                    {
                        gBZA.WriteIniStrData("Status", "StartError", StatusFilename, "Technique information uploading error.");
                        return;
                    }

                    mChRtGrp[ch].Initialize(tech[ch]);
                    rtc.tick = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond; //msec
                    if (mCommZim.CmdStartToMeasureImpedance(ch, rtc, false) == false)
                    {
                        gBZA.WriteIniStrData("Status", "StartError", StatusFilename, "Start test error.");
                        return;
                    }
                    

                    string sfolder = Path.GetDirectoryName(resfilename[ch]);
                    if (!Directory.Exists(sfolder))
                    {
                        Directory.CreateDirectory(sfolder);
                    }
                    if (mresfile[ch].bopen) mresfile[ch].CloseFile();
                    try
                    {
                        if (File.Exists(this.resfilename[ch]))
                        {
                            File.Delete(this.resfilename[ch]);
                        }
                    }
                    catch (Exception e)
                    {
                        Debug.WriteLine(string.Format("{0}[{1}].", e.Message, ch + 1));
                        gBZA.WriteIniStrData("Status", "StartError", StatusFilename, "result file creating error.");
                        mCommZim.CmdStopMeasurement(ch, (int)enStatError.ResFileError);
                        return;
                    }

                    mresfile[ch].tmphead.mInfo = mHeadinf[ch];
                    if (mresfile[ch].Start(this.resfilename[ch], rtc, gBZA.SifLnkLst[serial].iLinkCh[ch], serial, ch) == false)
                    {
                        gBZA.WriteIniStrData("Status", "StartError", StatusFilename, "result file creating error.");
                        mCommZim.CmdStopMeasurement(ch, (int)enStatError.ResFileError);
                    }
                    mHeadinf[ch] = mresfile[ch].tmphead.mInfo;
                }
            }
            
        }

        public bool RemoteProc(int ch)
        {
            RemoteWriteStatus(ch);
            RemoteReadControl(ch);
            return true;
        }

        public bool NormalProc()
        {
            enStatError errstate = enStatError.NoError;
            enTestState teststate = enTestState.Ready;
            

            for (int ch = 0; ch < MBZA_Constant.MAX_DEV_CHANNEL; ch++)
            {
                if (this.bThread == false) break;
                if (this.mDevInf.mSysCfg.EnaZIM[ch] == 0) continue;
                if (this.mDevInf.mSysCfg.ChkZIM[ch] == 0)
                {
                    if (mCommZim.ReadData(ref this.mDevInf.mSysCfg) == false)
                    {
                        continue;
                    }
                    if (this.mDevInf.mSysCfg.ChkZIM[ch] == 0)
                    {
                        continue;
                    }
                }

                if (mCommZim.ReadData(ch, ref mChStatInf[ch]) == false)
                {
                    return false;
                }
                

                errstate = (enStatError)mChStatInf[ch].LastError;
                teststate = (enTestState)mChStatInf[ch].TestStatus;
                if (errstate == enStatError.NoZim) continue;
                if (errstate == enStatError.ErrCommZim) continue;


                

                mChRtGrp[ch].Append(mChStatInf[ch].eis_status.Real_val);

                ResFileProc(ch);

                if(bRemote[ch])
                {
                    RemoteProc(ch);
                }
                Thread.Sleep(1);
            }
            
            return true;
        }

        public void OpenResfile(int ch, bool brun, enTestState teststate)
        {

            if (File.Exists(resfilename[ch]))
            {
                if (mresfile[ch].Open(resfilename[ch]) == false)
                {
                    mCommZim.CmdStopMeasurement(ch, (int)enStatError.ResFileError);
                    return;
                }
                else
                {
                    OldCycle[ch] = -1;
                    Oldtech[ch] = mresfile[ch].tmphead.tech;
                    OldCondfilename[ch] = mresfile[ch].tmphead.mInfo.GetTechFile();
                    mChRtGrp[ch].Initialize(mresfile[ch].tmphead.tech);
                    stDefTestData tdata = new stDefTestData(0);
                    for (int d = 0; d < mresfile[ch].datacount; d++)
                    {
                        mresfile[ch].read(d, ref tdata);
                        mChRtGrp[ch].Append(tdata, ref OldCycle[ch]);
                    }
                }
            }
            else
            {
                if (resfilename[ch].Length < 5)
                {
                    return;
                }

                if ((enTestState)teststate == enTestState.Calibration || (enTestState)teststate == enTestState.nc_Calibration)
                {
                    mresfile[ch].tmphead.SetTechFilename(Encoding.UTF8.GetBytes(calcondfilename[ch]));
                }
                else
                {
                    mresfile[ch].tmphead.SetTechFilename(Encoding.UTF8.GetBytes(OldCondfilename[ch]));
                }
                mresfile[ch].tmphead.tech = Oldtech[ch];
                mresfile[ch].tmphead.mInfo = mHeadinf[ch];
                mChRtGrp[ch].Initialize(mresfile[ch].tmphead.tech);
                mresfile[ch].tmphead.inf_sif = mDevInf.mSysCfg.mSIFCfg;
                mresfile[ch].tmphead.inf_sifch = mDevInf.mSysCfg.mZimCfg[ch];
                
                string sfolder = Path.GetDirectoryName(resfilename[ch]);
                if(!Directory.Exists(sfolder))
                {
                    Directory.CreateDirectory(sfolder);
                }

                if (mresfile[ch].Create(resfilename[ch], gBZA.SifLnkLst[serial].iLinkCh[ch],serial,ch) == false)
                {
                    mCommZim.CmdStopMeasurement(ch, (ushort)enStatError.ResFileError);
                }
                else
                {
                    mresfile[ch].bStart = brun;
                }
            }
        }

        public void RefreshResfile(int ch, bool brun)
        {
            if (mresfile[ch].sfilename == "")
            {
                if (resfilename[ch].Length >= 5)
                {
                    if (File.Exists(resfilename[ch]))
                    {
                        if (mresfile[ch].Open(resfilename[ch]))
                        {
                            OldCycle[ch] = -1;
                            stDefTestData tdata = new stDefTestData(0);
                            mChRtGrp[ch].Initialize(Oldtech[ch]);  //mresfile[ch].tmphead.tech)

                            for (int d = 0; d < mresfile[ch].datacount; d++)
                            {
                                mresfile[ch].read(d, ref tdata);
                                mChRtGrp[ch].Append(tdata,ref OldCycle[ch]);
                            }

                            mHeadinf[ch] = mresfile[ch].tmphead.mInfo;

                            if (brun == true)
                            {
                                mresfile[ch].bStart = true;
                            }
                            else
                            {
                                bLoadData[ch] = true;
                            }
                        }
                    }
                    else
                    {
                        mresfile[ch].tmphead.mInfo = mHeadinf[ch];
                        mresfile[ch].tmphead.inf_sif = this.mDevInf.mSysCfg.mSIFCfg;
                        mresfile[ch].tmphead.inf_sifch = this.mDevInf.mSysCfg.mZimCfg[ch];
                        mresfile[ch].tmphead.tech = this.tech[ch];
                        OldCycle[ch] = -1;
                        if (mresfile[ch].Create(resfilename[ch], gBZA.SifLnkLst[serial].iLinkCh[ch], serial, ch) == true)
                        {
                            if (brun == true)
                            {
                                mresfile[ch].bStart = true;
                            }
                            else
                            {
                                bLoadData[ch] = true;
                            }
                        }
                        mHeadinf[ch] = mresfile[ch].tmphead.mInfo;
                    }
                }
            }
        }


        void RefreshTechfiles()
        {
            for (int ch = 0; ch < MBZA_Constant.MAX_DEV_CHANNEL; ch++)
            {
                if (this.mDevInf.mSysCfg.EnaZIM[ch] == 0) continue;
                if (this.mDevInf.mSysCfg.ChkZIM[ch] == 0) continue;

                RefreshTechfile(ch,true);
            }
        }

        void RefreshTechfile(int ch, bool refresh = false)
        {
            FileCondition fc = new FileCondition();
            if(File.Exists(condfilename[ch]))
            {
                if (fc.OpenFile(condfilename[ch], ref tech[ch]) == false)
                {
                    tech[ch].initialize(0);
                }
            }
            else
            {
                tech[ch].initialize(0);
            }

            if (condfilename[ch] == OldCondfilename[ch] || File.Exists(OldCondfilename[ch])== false)
            {
                OldCondfilename[ch] = condfilename[ch];
                Oldtech[ch] = tech[ch];
            }
            else
            {
                if (fc.OpenFile(OldCondfilename[ch], ref Oldtech[ch]) == false)
                {
                    Oldtech[ch].initialize(0);
                }
            }
            
        }

        void Thread_CommObj()
        {
            int timediv = 0;

            this.mMapMem.mHeader.mStat.Stop = 0;

            while (this.bThread)
            {
                if(mCommZim.mComm.Connected == false)
                {
                    bConnect = false;
                    if (this.bThread == false)
                    {
                        break;
                    }
                    if (this.SimplePing(mCommZim.GetHostName()) == true)
                    {
                        Thread.Sleep(50);
                        if (RefreshConnect() == -1)
                        {
                            bThread = false;
                        }
                    }
                    bConnect = mCommZim.mComm.Connected;
                    Thread.Sleep(10);
                    continue;
                }

                if (timediv == 0)
                {
                    timediv = 1;
                    NormalProc();
                }
                else
                {
                    timediv = 0;
                    if (this.mMapMem.mHeader.mStat.Proc == (UInt16)enProc.Start)
                    {
                        CommandProc();
                    }
                }
                Thread.Sleep(10);
            }

            this.mMapMem.mHeader.mStat.Stop = 1;
            this.mMapMem.mHeader.mStat.Result = (UInt16)enResult.FLAG_FAIL;
            this.mMapMem.mHeader.mStat.Proc = (UInt16)enProc.Finish;
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public class stFindSIF
    {
        public bool bLinked;
        public int ChCnt;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public int[] iLinkCh;
        public string sip;
        public string sMac;
        public stFindSIFCfg mFindSifCfg;
        public stDevInf mDevInf;
        public stFindSIF(byte init)
        {
            bLinked = false;
            iLinkCh = new int[MBZA_Constant.MAX_DEV_CHANNEL];
            mFindSifCfg = new stFindSIFCfg(0);
            ChCnt = 0;
            for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
            {
                iLinkCh[i] = -1;
            }
            sip = "";
            sMac = "";
            mDevInf = new stDevInf(0);
        }


        public void SetLink(bool bval)
        {
            bLinked = bval;
        }

    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public class stLinkSIF
    {
        public bool bLinked;
        public int ChCnt;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public int [] iLinkCh;
        public string sip;
        public string sMac;
        public stFindSIFCfg mFindSifCfg;
        public stDevInf mDevInf;
        public MBZA_Interface MBZAIF;
        public stLinkSIF(byte init)
        {
            bLinked = false;
            iLinkCh = new int[MBZA_Constant.MAX_DEV_CHANNEL];
            mFindSifCfg = new stFindSIFCfg(0);
            ChCnt = 0;
            for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
            {
                iLinkCh[i] = -1;
            }
            sip = "";
            sMac = "";
            MBZAIF = new MBZA_Interface();
            mDevInf = new stDevInf(0);
        }

      
        public void SetLink(bool bval)
        {
            bLinked = bval;
        }
      
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stLinkSifCh
    {
        public bool bChkSIF;
        public bool bChkCh;
        public string sip;
        public string sMac;
        public string sSerial;
        public int    SifCh;
        public ChannelInf mChInf;
        public stDevInf mDevInf;
        public stLinkSifCh(byte init)
        {
            bChkSIF = false;
            bChkCh = false;
            sip = "";
            sSerial = "";
            sMac = "";
            SifCh = -1;
            mChInf = new ChannelInf(0);
            mDevInf = new stDevInf(0);
        }
        public void ChangeFileCond(string filename)
        {
            mChInf.FileCond = filename;
        }

        public void SetChkSIF(bool bVar)
        {
            bChkSIF = bVar;
        }

        public void SetChkCh(bool bVar)
        {
            bChkCh = bVar;
        }
        
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stRegLinkSifCh
    {
        public string sCh;
        public stLinkSifCh mLinkSifCh;
       
        public stRegLinkSifCh(string sch)
        {
            sCh = sch;
            mLinkSifCh = new stLinkSifCh(0);
        }
        
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stRegLinkSifCh)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stRegLinkSifCh));
            pinnedArr.Free();
        }
    }
}
