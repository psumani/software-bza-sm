using NationalInstruments.UI;
using SMLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Serialization;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    public class AppConfig
    {
        public string PathZIMFW;
        public string PathSIFFW;
        public string PathRemote;
        public string PathData;
        public string PathSch;
        public string PathSysInfo;
        public string PathRangeInfo;
        public string PathLog;
        public string PathSchTemp;

        public string FileNameZIMFW;
        public string FileNameSIFFW;
        public string BatLimitFile;

        public double[] RDummy;
        public double[] LDummy;
        public double Power;

        public int CommTimeOut;

        public Point RealviewLocation;
        public Size RealviewSize;
        public Point GroupRealviewLocation;
        public Size GroupRealviewSize;
        public Point MainLocation;
        public Size MainSize;
        public Point TechLocation;
        public Point CfgLocation;
        public AppConfig()
        {
            RDummy = new double[MBZA_Constant.MAX_DUMMY];
            LDummy = new double[MBZA_Constant.MAX_DUMMY];
            for (int i = 0; i < MBZA_Constant.MAX_DUMMY; i++)
            {
                RDummy[i] = MBZA_Constant.Const_DefaultRDummy[i];
                LDummy[i] = MBZA_Constant.Const_DefaultLDummy[i];
            }
            Power = MBZA_Constant.DEFAULT_POWER;

            PathZIMFW = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Firmware");
            PathSIFFW = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Firmware");
            PathData = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Data");
            PathSch = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Sch");
            PathSysInfo = Path.Combine("C:\\ZIVE DATA\\ZM\\", "infor");
            PathRangeInfo = Path.Combine("C:\\ZIVE DATA\\ZM\\", "infor\\board");
            PathLog = Path.Combine("C:\\ZIVE DATA\\ZM\\", "log");
            PathSchTemp = Path.Combine(PathSch, "Temp");
            PathRemote = Path.Combine("C:\\ZIVE DATA\\ZM\\", "Remote");
            if (!System.IO.Directory.Exists(PathLog)) System.IO.Directory.CreateDirectory(PathLog);
            FileNameZIMFW = "default.zim";
            FileNameSIFFW = "default.sif";
            BatLimitFile = "C:\\ZIVE DATA\\ZM\\Infor\\BAT.lmt";

            if (!System.IO.Directory.Exists(PathZIMFW)) System.IO.Directory.CreateDirectory(PathZIMFW);
            if (!System.IO.Directory.Exists(PathSIFFW)) System.IO.Directory.CreateDirectory(PathSIFFW);
            if (!System.IO.Directory.Exists(PathData)) System.IO.Directory.CreateDirectory(PathData);
            if (!System.IO.Directory.Exists(PathSch)) System.IO.Directory.CreateDirectory(PathSch);
            if (!System.IO.Directory.Exists(PathSysInfo)) System.IO.Directory.CreateDirectory(PathSysInfo);
            if (!System.IO.Directory.Exists(PathRangeInfo)) System.IO.Directory.CreateDirectory(PathRangeInfo);
            if (!System.IO.Directory.Exists(PathLog)) System.IO.Directory.CreateDirectory(PathLog);
            if (!System.IO.Directory.Exists(PathRemote)) System.IO.Directory.CreateDirectory(PathRemote);
            if (!System.IO.Directory.Exists(PathSchTemp)) System.IO.Directory.CreateDirectory(PathSchTemp);
            CommTimeOut = 8000;
            RealviewLocation = new Point(0, 0);
            RealviewSize = new Size(0, 0);
            GroupRealviewLocation = new Point(0, 0);
            GroupRealviewSize = new Size(0, 0);
            MainLocation = new Point(0, 0);
            MainSize = new Size(0, 0);
            TechLocation = new Point(0, 0);
            CfgLocation = new Point(0, 0);
        }

        public bool Save()
        {

            if (File.Exists(MBZA_Constant.AppCfgFilename) == true)
            {
                try
                {
                    File.Delete(MBZA_Constant.AppCfgFilename);
                }
                catch 
                {
                    MessageBox.Show("Failed to save environment variable.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }

            FileStream file = System.IO.File.Create(MBZA_Constant.AppCfgFilename);
            XmlSerializer writer = new XmlSerializer(typeof(AppConfig));

            writer.Serialize(file, this);
            file.Close();
            
            return true;
        }

        public void InitLocationSize()
        {
            RealviewLocation = new Point(0, 0);
            RealviewSize = new Size(0, 0);
            GroupRealviewLocation = new Point(0, 0);
            GroupRealviewSize = new Size(0, 0);
            MainLocation = new Point(0, 0);
            MainSize = new Size(0, 0);
            TechLocation = new Point(0, 0);
            CfgLocation = new Point(0, 0);
        }

        public bool Load()
        {

            if (File.Exists(MBZA_Constant.AppCfgFilename) == false)
            {
                if (Save() == false)
                {
                    return false;
                }
                return true;
            }

            XmlSerializer reader =   new XmlSerializer(typeof(AppConfig));
            StreamReader file = new StreamReader(MBZA_Constant.AppCfgFilename);

            AppConfig tmp = new AppConfig();

            tmp = (AppConfig)reader.Deserialize(file);

            file.Close();

            for (int i = 0; i < MBZA_Constant.MAX_DUMMY; i++)
            {
                RDummy[i] = tmp.RDummy[i];
                LDummy[i] = tmp.LDummy[i];
            }
            Power = tmp.Power;


            PathZIMFW = tmp.PathZIMFW;
            PathSIFFW = tmp.PathSIFFW;
            PathData = tmp.PathData;
            PathSch = tmp.PathSch;
            PathSchTemp = tmp.PathSchTemp;
            PathSysInfo = tmp.PathSysInfo;
            PathRangeInfo = tmp.PathRangeInfo;
            PathLog = tmp.PathLog;
            PathRemote = tmp.PathRemote;

            FileNameZIMFW = tmp.FileNameZIMFW;
            FileNameSIFFW = tmp.FileNameSIFFW;
            BatLimitFile = tmp.BatLimitFile;

            CommTimeOut = tmp.CommTimeOut;
            RealviewLocation = tmp.RealviewLocation;
            RealviewSize = tmp.RealviewSize;
            GroupRealviewLocation = tmp.GroupRealviewLocation;
            GroupRealviewSize = tmp.GroupRealviewSize;
            MainLocation = tmp.MainLocation;
            MainSize = tmp.MainSize;
            TechLocation = tmp.TechLocation;
            CfgLocation = tmp.CfgLocation;

            if (!System.IO.Directory.Exists(PathZIMFW)) System.IO.Directory.CreateDirectory(PathZIMFW);
            if (!System.IO.Directory.Exists(PathSIFFW)) System.IO.Directory.CreateDirectory(PathSIFFW);
            if (!System.IO.Directory.Exists(PathData)) System.IO.Directory.CreateDirectory(PathData);
            if (!System.IO.Directory.Exists(PathSch)) System.IO.Directory.CreateDirectory(PathSch);
            if (!System.IO.Directory.Exists(PathSysInfo)) System.IO.Directory.CreateDirectory(PathSysInfo);
            if (!System.IO.Directory.Exists(PathRangeInfo)) System.IO.Directory.CreateDirectory(PathRangeInfo);
            if (!System.IO.Directory.Exists(PathLog)) System.IO.Directory.CreateDirectory(PathLog);
            if (!System.IO.Directory.Exists(PathRemote)) System.IO.Directory.CreateDirectory(PathRemote);
            if (!System.IO.Directory.Exists(PathSchTemp)) System.IO.Directory.CreateDirectory(PathSchTemp);
            return true;
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct ChannelInf
    {
        public bool bSelected;
        public bool bRemote;
        public string FileCond;
        public string FileResult;
        public ChannelInf(int init)
        {
            bSelected = false;
            bRemote = false;
            FileCond = "";
            FileResult = "";
        }

        public void SetRemote(bool val)
        {
            bRemote = val;
        }

        public void SetSelected(bool val)
        {
            bSelected = val;
        }

        public void ChangeFileCond(string filename)
        {
            FileCond = filename;
        }

        public void ChangeFileResult(string filename)
        {
            FileResult = filename;
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
            this = (ChannelInf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(ChannelInf));
            pinnedArr.Free();
        }
    }

    public class st_zim_rt_raw
    {
        public int count;
        public double[] idx;
        public double[] dv;
        public double[] di;
        public st_zim_rt_raw()
        {
            idx = new double[DeviceConstants.MAX_EIS_RT_RAW_POINT];
            dv = new double[DeviceConstants.MAX_EIS_RT_RAW_POINT];
            di = new double[DeviceConstants.MAX_EIS_RT_RAW_POINT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_RT_RAW_POINT; i++)
            {
                idx[i] = (double)i;
                dv[i] = 0.0;
                di[i] = 0.0;
            }
            count = 0;
        }

        public void Initialize()
        {
            count = 0;
            for (int i = 0; i < DeviceConstants.MAX_EIS_RT_RAW_POINT; i++)
            {
                idx[i] = (double)i;
                dv[i] = 0.0;
                di[i] = 0.0;
            }
        }
        
    }

    public class st_zim_rt_val
    {
        public List<double>[]   freq;
        public List<double>[]   lx;
        public List<double>[]   ly;
        public st_zim_rt_val()
        {
            freq = new List<double>[3];

            lx = new List<double>[3];
            ly = new List<double>[3];
            for (int i = 0; i < 3; i++)
            {
                freq[i] = new List<double>();
                lx[i] = new List<double>();
                ly[i] = new List<double>();
            }
            
        }

        public void Initialize()
        {
            
            for (int i = 0; i < 3; i++)
            {
                freq[i].Clear();
                lx[i].Clear();
                ly[i].Clear();
            }
        }
        
    }

    public class st_zim_rt
    {
        public int index;
        public st_zim_rt_val[] plot;
        
        public st_zim_rt()
        {
            index = 0;
            plot = new st_zim_rt_val[4];
            for (int i = 0; i < 4; i++)
            {
                plot[i] = new st_zim_rt_val();
            }
        }

        public void Initialize()
        {
            index = 0;
            for (int i = 0; i < 4; i++)
            {
                plot[i].Initialize();
            }
        }
        
    }
    public class cls_rtdata
    {
        public ushort techtype;
        public ushort arrcnt;
        public bool [] barr;
        public ushort findex;
        public st_zim_rt_raw rawdata;
        public st_zim_rt rtgrp;
        public cls_rtdata()
        {
            techtype = 0;
            arrcnt = 1;
            rawdata = new st_zim_rt_raw();
            rtgrp = new st_zim_rt();
            barr = new bool[3];
            barr[0] = true;
            barr[1] = false;
            barr[2] = false;
            findex = 0;
        }

        public void Initialize(stTech tech)
        {
            stTech_EIS eis = new stTech_EIS(0);
            stTech_HFR hfr = new stTech_HFR(0);
            stTech_PRR prr = new stTech_PRR(0);

            techtype = tech.type;
            rawdata.Initialize();
            rtgrp.Initialize();

            findex = 0;

            if (techtype == 1)
            {
                eis.initialize();
                tech.GetHFR(ref hfr);
                prr.initialize();
                barr[0] = true;
                barr[1] = false;
                barr[2] = false;
                arrcnt = 1;
            }
            else if (techtype == 2)
            {
                eis.initialize();
                hfr.initialize();
                tech.GetPRR(ref prr);
                arrcnt = 0;
                barr[0] = false;
                barr[1] = false;
                barr[2] = false;
                if (prr.rsfreq != 0.0)
                {
                    barr[0] = true;
                    arrcnt++;
                }
                if (prr.rdfreq != 0.0)
                {
                    barr[1] = true;
                    arrcnt++;
                }
                if (prr.rdendfreq != 0.0)
                {
                    barr[2] = true;
                    arrcnt++;
                }
            }
            else
            {
                tech.GetEIS(ref eis);
                hfr.initialize();
                prr.initialize();
                barr[0] = true;
                barr[1] = false;
                barr[2] = false;
                arrcnt = 1;
            }
            
        }
        public void Append(st_zim_eis_raw_val[] eisraw)
        {
            int i;
            for (i = 0; i < DeviceConstants.MAX_EIS_RT_RAW_POINT; i++)
            {
                if(eisraw[i].vac == 0.0 && eisraw[i].iac == 0.0)
                {
                    break;
                }
                rawdata.idx[i] = (double)i;
                rawdata.dv[i] = eisraw[i].vac;
                rawdata.di[i] = eisraw[i].iac;
            }
            rawdata.count = i; 

        }

        public void Append(stDefTestData[] arrd,int count = 1)
        {
            for(int i=0; i<count; i++)
            {
                Append(arrd[i]);
            }
        }
        
        public void Append(stDefTestData d)
        {
            double zmag = Math.Sqrt(d.real * d.real + d.img * d.img);
            double zph = Math.Atan2(d.img, d.real) * 180.0 / DeviceConstants.PI;
            double Yre = d.real / ((d.real * d.real) + (d.img * d.img));
            double Yimg = -1.0 * d.img / ((d.real * d.real) + (d.img * d.img));
            double Ymag = Math.Sqrt((double)(Yre * Yre + Yimg * Yimg));
            double cs = 1.0 / (2.0 * DeviceConstants.PI * d.fFreq * -1.0 * d.img);
            double cp = Yimg / (2.0 * DeviceConstants.PI * d.fFreq);

            if (techtype == 1)
            {
                rtgrp.plot[0].freq[0].Add(d.fFreq);
                rtgrp.plot[0].lx[0].Add(d.TestTime);
                rtgrp.plot[0].ly[0].Add(d.real);

                rtgrp.plot[1].freq[0].Add(d.fFreq);
                rtgrp.plot[1].lx[0].Add(d.TestTime);
                rtgrp.plot[1].ly[0].Add(d.Vdc);

                rtgrp.plot[2].freq[0].Add(d.fFreq);
                rtgrp.plot[2].lx[0].Add(d.TestTime);
                rtgrp.plot[2].ly[0].Add(cs);

                rtgrp.plot[3].freq[0].Add(d.fFreq);
                rtgrp.plot[3].lx[0].Add(d.TestTime);
                rtgrp.plot[3].ly[0].Add(cp);
            }
            else if (techtype == 2)
            {
                if (arrcnt == 0) return;
                int Lastindex;
                for(int i=0; i<3; i++)
                {
                    if (barr[findex] == true)
                    {
                        //mag

                        if (findex == 1)
                        {
                            if (arrcnt > 2)
                            {
                                rtgrp.plot[0].freq[findex].Add(d.fFreq);
                                rtgrp.plot[0].lx[findex].Add(d.TestTime);
                                rtgrp.plot[0].ly[findex].Add(d.real);
                            }
                            else
                            {
                                Lastindex = rtgrp.plot[0].ly[0].Count-1;

                                rtgrp.plot[0].freq[findex].Add(d.fFreq);
                                rtgrp.plot[0].lx[findex].Add(d.TestTime);

                                rtgrp.plot[0].ly[findex].Add(d.real - rtgrp.plot[0].ly[0][Lastindex]);
                            }

                        }
                        else if (findex == 2)
                        {
                            Lastindex = rtgrp.plot[0].ly[1].Count-1;
                            rtgrp.plot[0].freq[1][Lastindex] = d.fFreq;
                            rtgrp.plot[0].lx[1][Lastindex] = d.TestTime;
                            rtgrp.plot[0].ly[1][Lastindex] = d.real - rtgrp.plot[0].ly[1][Lastindex];
                        }
                        else
                        {
                            rtgrp.plot[0].freq[findex].Add(d.fFreq);
                            rtgrp.plot[0].lx[findex].Add(d.TestTime);
                            rtgrp.plot[0].ly[findex].Add(d.real);
                        }

                        //phase
                        //rtgrp.plot[1].freq[findex].Add(d.fFreq);
                        //rtgrp.plot[1].lx[findex].Add(d.TestTime);
                        //rtgrp.plot[1].ly[findex].Add(d.Vdc);

                        //Cs
                        rtgrp.plot[2].freq[findex].Add(d.fFreq);
                        rtgrp.plot[2].lx[findex].Add(d.TestTime);
                        rtgrp.plot[2].ly[findex].Add(cs);
                        //Cp
                        rtgrp.plot[3].freq[findex].Add(d.fFreq);
                        rtgrp.plot[3].lx[findex].Add(d.TestTime);
                        rtgrp.plot[3].ly[findex].Add(cp);
                        findex++;
                        if (findex >= 3) findex = 0;
                        return;
                    }
                    else
                    {
                        findex++;
                    }
                    if (findex >= 3) findex = 0;
                }       
                
            }
            else
            {
                rtgrp.plot[0].freq[0].Add(d.fFreq);
                rtgrp.plot[0].lx[0].Add(d.real);
                rtgrp.plot[0].ly[0].Add(d.img * -1.0);

                rtgrp.plot[2].freq[0].Add(d.fFreq);
                rtgrp.plot[2].lx[0].Add(d.fFreq);
                rtgrp.plot[2].ly[0].Add(zmag);

                rtgrp.plot[3].freq[0].Add(d.fFreq);
                rtgrp.plot[3].lx[0].Add(d.fFreq);
                rtgrp.plot[3].ly[0].Add(zph);
            }
            
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stBatParaMaxMin
    {
        public double MaxVal;
        public double MinVal;
        public stBatParaMaxMin(double inMaxVal, double inMinVal)
        {
            MaxVal = inMaxVal;
            MinVal = inMinVal;
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
            this = (stBatParaMaxMin)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stBatParaMaxMin));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stBatParaInfo
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 22)]
        public byte[] Alias;
        public double zrehigh;
        public double zmodhigh;
        public double zimaghigh;
        public double templimit;
        public double zphlimit;
        public double prslimit;
        public double prplimit;
        public double sohlimit;
        public double eoclimit;
        public double soceoc;
        public double gsocrp;
        public double osocrp;
        public double gsoceoc;
        public double osoceoc;
        public double rseol;
        public double rsnew;
        public stBatParaMaxMin socrp;
        public stBatParaMaxMin rp;
        public stBatParaMaxMin socvoc;
        public stBatParaMaxMin voc;
        public double vlimit;

        public stBatParaInfo(int index)
        {
            string str = string.Format("NewLimit{0}", index);
            Alias = new byte[100];
            Array.Clear(Alias, 0, 100);
            Alias = Encoding.ASCII.GetBytes(str);

            zrehigh = 0.1;
            zmodhigh = 0.005;
            zimaghigh = -0.001;
            templimit = 26;
            zphlimit = double.NaN;
            prslimit = 0.09;
            prplimit = 0.04;
            sohlimit = 50;
            eoclimit = 15;
            soceoc = 15;
            gsocrp = 11.308;
            osocrp = -225.31;
            gsoceoc = 25;
            osoceoc = -317;
            rseol = 0.13;
            rsnew = 0.06;

            socrp = new stBatParaMaxMin(82.8, 20);
            rp = new stBatParaMaxMin(0.0367, 0.046);
            socvoc = new stBatParaMaxMin(90, 60);
            voc = new stBatParaMaxMin(16.28, 15.08);

            vlimit = 12.0;

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
            this = (stBatParaInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stBatParaInfo));
            pinnedArr.Free();
        }
    }


    public class stPropIac
    {
        eZimType type;
        public string stype;
        public int RangeCount;
        public string[] sRange;
        
        public stPropIac()
        {
            sRange = new string[4];
            SetType(eZimType.BZA100);
        }

        public void SetType(eZimType ztype)
        {
            int rng = 0;
            type = ztype;
            stype = type.GetDescription();
            RangeCount = 4;
            
            for (int i = 0; i < 4; i++)
            {
                rng = i * 2;
                sRange[i] = string.Format("{0}", ((enCurrentRange)rng).GetDescription());
            }
        }

        public void SetType(eZimType ztype, double[] Range)
        {

            type = ztype;
            stype = type.GetDescription();
            RangeCount = 4;

            for (int i = 0; i < 4; i++)
            {
                sRange[i] = SM_Number.ToRangeString(Range[i], "A");
            }
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("Channel type"), DescriptionAttribute("View type of channel.")]
        public string PropStrType
        {
            get { return stype; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Range count"), DescriptionAttribute("View count of Iac ranges.")]
        public string PropRangeCount
        {
            get { return RangeCount.ToString(); }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Range 1"), DescriptionAttribute("View maximum value of range 1.")]
        public string PropRange1
        {
            get { return sRange[0]; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Range 2"), DescriptionAttribute("View maximum value of range 2.")]
        public string PropRange2
        {
            get { return sRange[1]; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Range 3"), DescriptionAttribute("View maximum value of range 3.")]
        public string PropRange3
        {
            get { return sRange[2]; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Range 4"), DescriptionAttribute("View maximum value of range 4.")]
        public string PropRange4
        {
            get { return sRange[3]; }
        }
        #endregion //#region ** Properties
    }
    
    public class stPropVdc
    {
        eZimType type;
        public string stype;
        public int RangeCount;
        public string[] sRange;

        public stPropVdc()
        {
            sRange = new string[2];
            SetType(eZimType.BZA100);
        }

        public void SetType(eZimType ztype)
        {
            type = ztype;
            stype = type.GetDescription();
            RangeCount = 2;

            for (int i = 0; i < 2; i++)
            {
                sRange[i] = string.Format("{0}", ((enVoltageRange)i).GetDescription());
            }
        }

        public void SetType(eZimType ztype,double[] Range)
        {
            type = ztype;
            stype = type.GetDescription();
            RangeCount = 2;
            
            for (int i = 0; i < 2; i++)
            {
                sRange[i] = SM_Number.ToRangeString(Range[i], "V");
            }
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("Channel type"), DescriptionAttribute("View type of channel.")]
        public string PropStrType
        {
            get { return stype; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Range count"), DescriptionAttribute("View count of Vdc ranges.")]
        public string PropRangeCount
        {
            get { return RangeCount.ToString(); }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Range 1"), DescriptionAttribute("View maximum value of range 1.")]
        public string PropRange1
        {
            get { return sRange[0]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Range 2"), DescriptionAttribute("View maximum value of range 2.")]
        public string PropRange2
        {
            get { return sRange[1]; }
        }
        #endregion //#region ** Properties
    }
    
    public class stPropConnInf
    {
        string MacAddr;
        string dhcpmode;
        string IP;
        string subnetmask;
        string gateway;
        string port;
        public stPropConnInf()
        {
            MacAddr = "";
            dhcpmode = "";
            IP = "";
            subnetmask = "";
            gateway = "";
            port = "";
        }

        public void SetInformation(stEthernetCfg cfg)
        {
            MacAddr = BitConverter.ToString(cfg.Mac);
            dhcpmode = (cfg.dhcp == 1) ? "Using DHCP" : "Manually";
            IP = string.Format("{0}.{1}.{2}.{3}", cfg.IpAddress[0]
                                                   , cfg.IpAddress[1]
                                                   , cfg.IpAddress[2]
                                                  , cfg.IpAddress[3]);
            subnetmask  = string.Format("{0}.{1}.{2}.{3}", cfg.SubnetMask[0]
                                                   , cfg.SubnetMask[1]
                                                   , cfg.SubnetMask[2]
                                                  , cfg.SubnetMask[3]);
            gateway = string.Format("{0}.{1}.{2}.{3}", cfg.Gateway[0]
                                                   , cfg.Gateway[1]
                                                   , cfg.Gateway[2]
                                                  , cfg.Gateway[3]);
            port = cfg.Port.ToString();
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("MAC Address"), DescriptionAttribute("View MAC address of connection.")]
        public string PropMacaddr
        {
            get { return MacAddr; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("DHCP"), DescriptionAttribute("View DHCP status of connection.")]
        public string PropDhcp
        {
            get { return dhcpmode; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("IP Address"), DescriptionAttribute("View IP address of connection.")]
        public string PropIp
        {
            get { return IP; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Subnetmask"), DescriptionAttribute("View subnetmask of connection.")]
        public string Propsubnetmask
        {
            get { return subnetmask; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Gateway"), DescriptionAttribute("View gateway of connection.")]
        public string Propgateway
        {
            get { return gateway; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Port"), DescriptionAttribute("View port number of connection.")]
        public string Propport
        {
            get { return port; }
        }
        #endregion //#region ** Properties
        
    }

    public class stPropSIF
    {
        string Serial;
        string stype;
        string FirmwareVersion;
        string BoardVersion;
        uint BaseTick;
        uint DaqTick;
        bool[] EnableChs;
        bool[] CheckChs;

        public stPropSIF()
        {
            Serial = "";
            FirmwareVersion = "";
            BoardVersion = "";
            EnableChs = new bool[MBZA_Constant.MAX_DEV_CHANNEL];
            CheckChs = new bool[MBZA_Constant.MAX_DEV_CHANNEL];
            BaseTick = 1;
            DaqTick = 200;
            stype = Extensions.GetEnumDescription(eDeviceType.SBZA);
            for (int i=0; i< MBZA_Constant.MAX_DEV_CHANNEL; i++)
            {
                EnableChs[i] = false;
                CheckChs[i] = false;
            }
        }

        public void SetInformation(stSystemConfig cfg)
        {
            Serial = cfg.mSIFCfg.GetSerialNumber();

            FirmwareVersion = string.Format("{0}.{1}.{2}.{3}", cfg.mSIFCfg.FirmwareVersion.Major
                                                    , cfg.mSIFCfg.FirmwareVersion.Minor
                                                    , cfg.mSIFCfg.FirmwareVersion.Revision
                                                    , cfg.mSIFCfg.FirmwareVersion.Build);
            BoardVersion = string.Format("{0}.{1}.{2}.{3}", cfg.mSIFCfg.BoardVersion.Major
                                                  , cfg.mSIFCfg.BoardVersion.Minor
                                                  , cfg.mSIFCfg.BoardVersion.Revision
                                                  , cfg.mSIFCfg.BoardVersion.Build);
            stype = cfg.mSIFCfg.GetTypeString();

            BaseTick = cfg.BaseTick;
            DaqTick = cfg.DaqTick;
            for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
            {
                EnableChs[i] = (cfg.EnaZIM[i] == 0)? false : true;
                CheckChs[i] = (cfg.ChkZIM[i] == 0) ? false : true;
            }
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("Serial number"), DescriptionAttribute("View serial number of SIF board.")]
        public string PropSerial
        {
            get { return Serial; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Type"), DescriptionAttribute("View type of SIF board.")]
        public string PropType
        {
            get { return stype; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Firmware version"), DescriptionAttribute("View firmware version of SIF board.")]
        public string PropFirmwareVersion
        {
            get { return FirmwareVersion; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Board version"), DescriptionAttribute("View board version of SIF board.")]
        public string PropBoardVersion
        {
            get { return BoardVersion; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Base Tick(ms)"), DescriptionAttribute("View base tick of SIF board.")]
        public uint PropBasetick
        {
            get { return BaseTick; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Daq Tick(ms)"), DescriptionAttribute("View Daq tick of SIF board.")]
        public uint PropDaqtick
        {
            get { return DaqTick; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Channel1 Enable"), DescriptionAttribute("View enable status of channel1.")]
        public bool PropEnaCh1
        {
            get { return EnableChs[0]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Channel1 exist"), DescriptionAttribute("View exist status of channel1.")]
        public bool PropChkCh1
        {
            get { return CheckChs[0]; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Channel2 Enable"), DescriptionAttribute("View enable status of channel2.")]
        public bool PropEnaCh2
        {
            get { return EnableChs[1]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Channel2 exist"), DescriptionAttribute("View exist status of channel2.")]
        public bool PropChkCh2
        {
            get { return CheckChs[1]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Channel3 Enable"), DescriptionAttribute("View enable status of channel3.")]
        public bool PropEnaCh3
        {
            get { return EnableChs[2]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Channel3 exist"), DescriptionAttribute("View exist status of channel3.")]
        public bool PropChkCh3
        {
            get { return CheckChs[2]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Channel4 Enable"), DescriptionAttribute("View enable status of channel4.")]
        public bool PropEnaCh4
        {
            get { return EnableChs[3]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Channel4 exist"), DescriptionAttribute("View exist status of channel4.")]
        public bool PropChkCh4
        {
            get { return CheckChs[3]; }
        }

        #endregion //#region ** Properties

    }

    public class stPropZim
    {
        string Serial;
        string stype;
        string sBoardtype;
        string FirmwareVersion;
        string BoardVersion;
        bool EnableROM;
        eZimType model;

        public stPropZim()
        {
            Serial = "";
            FirmwareVersion = "";
            BoardVersion = "";
            model = eZimType.BZA100;
            EnableROM = false;
            stype = Extensions.GetEnumDescription(model);
            sBoardtype = Extensions.GetEnumDescription((eZimBoardType)model);
        }

        public void SetInformation(stSystemConfig cfg, int sifch)
        {
            string str;

            Serial = cfg.mZimCfg[sifch].GetSerialNumber();
            str = string.Format("{0:d04}", cfg.mZimCfg[sifch].info.ZimFWVersion);
            FirmwareVersion = string.Format("{0}.{1}.{2}.{3}", str.Substring(0, str.Length - 3)
                                                        , str.Substring(str.Length - 3, 1)
                                                        , str.Substring(str.Length - 2, 1)
                                                        , str.Substring(str.Length - 1, 1));
            str = string.Format("{0:d04}", cfg.mZimCfg[sifch].info.ZimBDVersion);
            BoardVersion = string.Format("{0}.{1}.{2}.{3}", str.Substring(0, str.Length - 3)
                                                        , str.Substring(str.Length - 3, 1)
                                                        , str.Substring(str.Length - 2, 1)
                                                        , str.Substring(str.Length - 1, 1));

            model = (eZimType)(cfg.mZimCfg[sifch].info.cModel[0] - 0x30);
            stype = Extensions.GetEnumDescription(model);
            sBoardtype = Extensions.GetEnumDescription((eZimBoardType)model);
            EnableROM = (cfg.EnaROM[sifch] == 0) ? false : true;
            
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("Serial number"), DescriptionAttribute("View serial number of ZIM board.")]
        public string PropSerial
        {
            get { return Serial; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Type"), DescriptionAttribute("View type of ZIM board.")]
        public string PropType
        {
            get { return stype; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Board name"), DescriptionAttribute("View board name of ZIM board.")]
        public string PropBoardtype
        {
            get { return sBoardtype; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Firmware version"), DescriptionAttribute("View firmware version of ZIM board.")]
        public string PropFirmwareVersion
        {
            get { return FirmwareVersion; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Board version"), DescriptionAttribute("View board version of ZIM board.")]
        public string PropBoardVersion
        {
            get { return BoardVersion; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Enable ROM"), DescriptionAttribute("View status ROM of ZIM board.")]
        public bool PropEnableROM
        {
            get { return EnableROM; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Model"), DescriptionAttribute("View model of ZIM board.")]
        public eZimType PropModel
        {
            get { return model; }
        }

        #endregion //#region ** Properties

    }
    
    public class stPropIacCalib
    {
        bool bCalib;
        int  nControlgain;
        string[] srng;
        
        public stPropIacCalib()
        {
            bCalib = false;
            nControlgain = 2;
            srng = new string[2];
            srng[0] = "";
            srng[1] = "";
        }

        private bool ChkEisCalInf(st_zim_Eis_Cal_info pEis_cal_info)
        {
            if (double.IsNaN(pEis_cal_info.n1) || double.IsNaN(pEis_cal_info.n2) || double.IsNaN(pEis_cal_info.n3)
                    || double.IsNaN(pEis_cal_info.d1) || double.IsNaN(pEis_cal_info.d2) || double.IsNaN(pEis_cal_info.d3)) return false;

            if (pEis_cal_info.n1 == 0.0 || pEis_cal_info.n2 == 0.0 || pEis_cal_info.n3 == 0.0
                || pEis_cal_info.d1 == 0.0 || pEis_cal_info.d2 == 0.0 || pEis_cal_info.d3 == 0.0) return false;

            return true;
        }
        
        public void SetInformation(stSystemConfig cfg, int trng, int sifch)
        {
            bool tmp = true;
            int rng = trng * 2;
            eZimType type = (eZimType)(cfg.mZimCfg[sifch].info.cModel[0] - 0x30);


            if (cfg.mZimCfg[sifch].ranges.iac_rng[trng].gain1 == 1.0 || cfg.mZimCfg[sifch].ranges.iac_rng[trng].gain1 == 0.0
                || cfg.mZimCfg[sifch].ranges.iac_rng[trng].gain2 == 1.0 || cfg.mZimCfg[sifch].ranges.iac_rng[trng].gain2 == 0.0
                || ChkEisCalInf(cfg.mZimCfg[sifch].ranges.mEisIRngCalInfo[rng])
                || ChkEisCalInf(cfg.mZimCfg[sifch].ranges.mEisIRngCalInfo[rng+1]) == false)
            {
                tmp = false;
            }

            bCalib = tmp;

            srng[0] = SM_Number.ToRangeString(cfg.mZimCfg[sifch].ranges.iac_rng[trng].realmax, "A");
            srng[1] = SM_Number.ToRangeString(cfg.mZimCfg[sifch].ranges.iac_rng[trng].realmax * cfg.mZimCfg[sifch].ranges.iac_rng[trng].controlgain, "A");
           
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("Calibration status"), DescriptionAttribute("View calibration status of ZIM board.")]
        public bool PropCalib
        {
            get { return bCalib; }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Gain count"), DescriptionAttribute("View gain count of ZIM board.")]
        public int PropnControlgain
        {
            get { return nControlgain; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Gain X1(A)"), DescriptionAttribute("View X1 gain of ZIM board.")]
        public string PropGain1
        {
            get { return srng[0]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Gain X0.2(A)"), DescriptionAttribute("View X0.2 gain of ZIM board.")]
        public string PropGain2
        {
            get { return srng[1]; }
        }
        
        #endregion //#region ** Properties

    }

    public class stPropIacCompLs
    {
        int nControlgain;
        string[] srng;

        public stPropIacCompLs()
        {
            nControlgain = 2;
            srng = new string[2];
            srng[0] = "";
            srng[1] = "";
        }

        public void SetInformation(stSystemConfig cfg, int trng, int sifch)
        {
            srng[0] = SM_Number.ToRangeString(cfg.mZimCfg[sifch].ranges.iac_rng[trng].realmax, "A");
            srng[1] = SM_Number.ToRangeString(cfg.mZimCfg[sifch].ranges.iac_rng[trng].realmax * cfg.mZimCfg[sifch].ranges.iac_rng[trng].controlgain, "A");
            nControlgain = 2;
        }

        #region ** Properties

        [ReadOnlyAttribute(true)]
        [DisplayName("Gain count"), DescriptionAttribute("View gain count of ZIM board.")]
        public int PropnControlgain
        {
            get { return nControlgain; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Gain X1(A)"), DescriptionAttribute("View X1 gain of ZIM board.")]
        public string PropGain1
        {
            get { return srng[0]; }
        }

        [ReadOnlyAttribute(true)]
        [DisplayName("Gain X0.2(A)"), DescriptionAttribute("View X0.2 gain of ZIM board.")]
        public string PropGain2
        {
            get { return srng[1]; }
        }

        #endregion //#region ** Properties

    }

    public class stDeviceParent
    {
        public string hostname;
        public string sip;
        public int channel;
        public string serial;
        public int sifch;
        public stDeviceParent()
        {
            hostname = Dns.GetHostName();
            IPHostEntry ipEntry = Dns.GetHostEntry(hostname);
            sip = ipEntry.AddressList[0].ToString();
            channel = -1;
            serial = "";
            sifch = -1;
        }

        public void SetInformation(int tch, string tserial, int tsifch)
        {
            channel = tch;
            serial = tserial;
            sifch = tsifch;
        }
    }

    public class stRangeFile
    {
        public string Description;
        public stDeviceParent parent;
        public st_zim_rnginf ranges;
        public stRangeFile()
        {
            Description = "ZM Range information v.1.0.0.0";
            parent = new stDeviceParent();
            ranges = new st_zim_rnginf(0);
        }
    }
    
}
