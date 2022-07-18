using MathNet.Numerics;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Packets;

namespace App.Zim.Player
{
    class BzaRemote
    {
        [DllImport("kernel32")]
        private static extern long WritePrivateProfileString(string section, string key, string val, string filePath);
        [DllImport("kernel32")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);

        public bool SetResultFile;
        public string ControlFilename;
        public string StatusFilename;

        public bool RemoteOn;
        public bool ControlStart;
        public bool OldControlStart;
        public string SetFnameResult;
        public bool SetCondition;
        public double InitialFrequency;
        public double FinalFrequency;
        public int Density;
        public int Iteration;
        public int IRange;
        public double MaxInitialDelay;
        public double SkipCycle;

        public int LastStatus;
        public bool StatusStart;
        public bool StatusFilling;
        public string StatFnameResult;
        public int DataCount;
        public DateTime Started;
        public int LastItem;

        stSystemConfig mSysCfg;
        st_zim_eis_cond meis_cond;
        st_zim_eis_status mstatus;
        ChannelStatus mChStatus;

        public int LifeTick;
        public int Model;
        public double LastItem_time;
        public double LastItem_Freq;
        public double LastItem_Zreal;
        public double LastItem_Zimg;
        public double LastItem_Zmag;
        public double LastItem_Zph;
        public double LastItem_Idc;
        public double LastItem_Vdc;
        public double LastItem_Temp;
        public double LastItem_IRange;


        public BzaRemote(string FnameCont, string FnameStatus, stSystemConfig tSysCfg, st_zim_eis_cond teis_cond , st_zim_eis_status tstatus, ChannelStatus tChStatus)
        {
            ControlFilename = FnameCont;
            StatusFilename = FnameStatus;

            mSysCfg = tSysCfg;
            meis_cond = teis_cond;
            mstatus = tstatus;
            mChStatus = tChStatus;

            SetResultFile = false;
            SetCondition = false;
            RemoteOn = false;
            ControlStart = false;
            OldControlStart = false;
            SetFnameResult = "";
            LastStatus = 0;
            StatusStart = false;
            StatusFilling = false;
            StatFnameResult = "";
            DataCount = 0;
            Started = DateTime.Now;

            LastItem = -1;
            LifeTick = 0;

            LastItem_time = 0;
            LastItem_Freq = 0.0;
            LastItem_Zreal = 0.0;
            LastItem_Zimg = 0.0;
            LastItem_Zmag = 0.0;
            LastItem_Zph = 0.0;
            LastItem_Idc = 0.0;
            LastItem_Vdc = 0.0;
            LastItem_Temp = 0.0;
            LastItem_IRange = 0.0;

            InitialFrequency = meis_cond.initFreq;
            FinalFrequency = meis_cond.finalFreq;
            Density = meis_cond.density;
            Iteration = meis_cond.iteration;
            IRange = meis_cond.iacrng;
            MaxInitialDelay = meis_cond.ondelay;
            SkipCycle = meis_cond.skipcycle;


            InitStatus();

            ReadControl();
            WriteStatus();
        }

        public void WriteIniFloatData(string Title, string Item, string IniFile, float Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        public float GetIniFloatData(string Title, string Item, string IniFile, float DefaultValue)
        {
            float fret = DefaultValue;
            StringBuilder temp = new StringBuilder(255);
            int ret = GetPrivateProfileString(Title, Item, null, temp, 255, IniFile);
            if(temp.Length < 1)
            {
                WriteIniFloatData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }
            if(float.TryParse(temp.ToString(), out fret) == false)
            {
                WriteIniFloatData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }
            
            return fret;
        }

        void WriteIniboolData(string Title, string Item, string IniFile, bool Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        bool GetIniboolData(string Title, string Item, string IniFile, bool DefaultValue)
        {
            bool bret = DefaultValue;
            StringBuilder temp = new StringBuilder(255);
            int ret = GetPrivateProfileString(Title, Item, null, temp, 255, IniFile);
            if (temp.Length < 1)
            {
                WriteIniboolData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }
            if (bool.TryParse(temp.ToString(), out bret) == false)
            {
                WriteIniboolData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }

            return bret;
        }

        void WriteIniIntData(string Title, string Item, string IniFile, int Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        int GetIniIntData(string Title, string Item, string IniFile, int DefaultValue)
        {
            int iret = DefaultValue;
            StringBuilder temp = new StringBuilder(255);
            int ret = GetPrivateProfileString(Title, Item, null, temp, 255, IniFile);
            if (temp.Length < 1)
            {
                WriteIniIntData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }
            if (int.TryParse(temp.ToString(), out iret) == false)
            {
                WriteIniIntData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }

            return iret;
        }

        void WriteIniLongData(string Title, string Item, string IniFile, long Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        long GetIniLongData(string Title, string Item, string IniFile, long DefaultValue)
        {
            long lret = DefaultValue;
            StringBuilder temp = new StringBuilder(255);
            int ret = GetPrivateProfileString(Title, Item, null, temp, 255, IniFile);
            if (temp.Length < 1)
            {
                WriteIniLongData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }
            if (long.TryParse(temp.ToString(), out lret) == false)
            {
                WriteIniLongData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }

            return lret;
        }

        void WriteIniDoubleData(string Title, string Item, string IniFile, double Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        double GetIniDoubleData(string Title, string Item, string IniFile, double DefaultValue)
        {
            double dret = DefaultValue;
            StringBuilder temp = new StringBuilder(255);
            int ret = GetPrivateProfileString(Title, Item, null, temp, 255, IniFile);
            if (temp.Length < 1)
            {
                WriteIniDoubleData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }
            if (double.TryParse(temp.ToString(), out dret) == false)
            {
                WriteIniDoubleData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }

            return dret;
        }
        void WriteIniStrData(string Title, string Item, string IniFile, string Value)
        {
            WritePrivateProfileString(Title, Item, Value, IniFile);
        }

        string GetIniStrData(string Title, string Item, string IniFile, string DefaultValue)
        {
            string sret = DefaultValue;
            StringBuilder temp = new StringBuilder(255);
            int ret = GetPrivateProfileString(Title, Item, null, temp, 255, IniFile);
            if (temp.Length < 1)
            {
                WriteIniStrData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }
            sret = temp.ToString();
            return sret;
        }

        string GetIniStrData(string Title, string Item, string IniFile)
        {
            StringBuilder temp = new StringBuilder(255);
            int ret = GetPrivateProfileString(Title, Item, null, temp, 255, IniFile);
            if (temp.Length < 1)
            {
                WriteIniStrData(Title, Item, IniFile, "");
                return "";
            }
            return temp.ToString();
        }

       
        public void InitStatus()
        {
            if (File.Exists(StatusFilename) == true)
            {
                StatusStart = false;
                StatusFilling = false;
                StatFnameResult = "";
                DataCount = 0;
                Started = DateTime.Now;
                LifeTick = 0;

                LastItem = -1;
                LastItem_time = 0;
                LastItem_Freq = 0.0;
                LastItem_Zreal = 0.0;
                LastItem_Zimg = 0.0;
                LastItem_Zmag = 0.0;
                LastItem_Zph = 0.0;
                LastItem_Idc = 0.0;
                LastItem_Vdc = 0.0;
                LastItem_Temp = 0.0;
                LastItem_IRange = 0.0;
            }
            ReadStatus();
        }

        /// <summary>
        /// 
        /// </summary>
        public void ReadStatus()
        { 
            LifeTick = GetIniIntData("Status", "LifeTick", StatusFilename, LifeTick);
            LastStatus = (int)mChStatus.State;
            WriteIniIntData("Status", "LastStatus", StatusFilename, LastStatus);
            
            if (mChStatus.State == State.NotAssigned || mChStatus.State == State.Stopped
                || mChStatus.State == State.Idle || mChStatus.State == State.Finished || mChStatus.State == State.DetectedFaild
                || mChStatus.State == State.DetectedNotYetReady || mChStatus.State == State.DetectedOverTemperatue || mChStatus.State == State.DetecteNotYetCalibrated
                 || mChStatus.State == State.DetecteErrorCommZIM || mChStatus.State == State.DetecteNoZIM || mChStatus.State == State.DetecteFailedControl)
            {
                StatusStart = false;
            }
            else
            {
                
                StatusStart = true;
            }
            WriteIniboolData("Status", "Started", StatusFilename, StatusStart);
            
            StatFnameResult = GetIniStrData("Status", "ResultFile", StatusFilename, StatFnameResult);
            DataCount = GetIniIntData("Status", "DataCount", StatusFilename, DataCount);
            Model = GetIniIntData("Status", "Model", StatusFilename, DataCount);
            long intDt = Started.Ticks;
            intDt = GetIniLongData("Status", "StartDateTime", StatusFilename, intDt);
            Started = new DateTime(intDt);
            LastItem_IRange = GetIniDoubleData("LastData", "IRange", StatusFilename, LastItem_IRange);
            LastItem_time = GetIniDoubleData("LastData", "ElapsedTime", StatusFilename, LastItem_time);
            LastItem_Freq = GetIniDoubleData("LastData", "Frequency", StatusFilename, LastItem_Freq);
            LastItem_Zreal = GetIniDoubleData("LastData", "Zreal", StatusFilename, LastItem_Zreal);
            LastItem_Zimg = GetIniDoubleData("LastData", "Zimg", StatusFilename, LastItem_Zimg);
            LastItem_Zmag = GetIniDoubleData("LastData", "Zmag", StatusFilename, LastItem_Zmag);
            LastItem_Zph = GetIniDoubleData("LastData", "Zphase", StatusFilename, LastItem_Zph);
            LastItem_Idc = GetIniDoubleData("LastData", "Idc", StatusFilename, LastItem_Idc);
            LastItem_Vdc = GetIniDoubleData("LastData", "Vdc", StatusFilename, LastItem_Vdc);
            LastItem_Temp = GetIniDoubleData("LastData", "Temperature", StatusFilename, LastItem_Temp);
        }
        public void ReadControl()
        {
            RemoteOn = GetIniboolData("Control", "RemoteOn", ControlFilename, false);
            SetResultFile = GetIniboolData("Control", "SetResultFile", ControlFilename, true);
            SetCondition = GetIniboolData("Control", "SetCondition", ControlFilename, false);
            ControlStart = GetIniboolData("Control", "Start", ControlFilename, false);
            SetFnameResult = GetIniStrData("Control", "ResultFilename", ControlFilename, "");

            InitialFrequency = GetIniDoubleData("Condition", "initialFreq", ControlFilename, meis_cond.initFreq);
            FinalFrequency = GetIniDoubleData("Condition", "FinalFreq", ControlFilename, meis_cond.finalFreq);
            Density = GetIniIntData("Condition", "Density", ControlFilename, Density);
            Iteration = GetIniIntData("Condition", "Iteration", ControlFilename, Iteration);
            IRange = GetIniIntData("Condition", "IRange", ControlFilename, IRange);
            MaxInitialDelay = GetIniDoubleData("Condition", "InitialDelay", ControlFilename, MaxInitialDelay);
            SkipCycle = GetIniDoubleData("Condition", "SkipCycle", ControlFilename, SkipCycle);

        }

        private string GetCurrentRangeDescription(CurrentRange iRange)
        {
            if (mChStatus.mType == eZimType.BZA60HZ) return GetCurrentRangeDescriptionLZ(iRange);

            switch (iRange)
            {
                default:
                    return "Auto";
                case CurrentRange.I2A:
                    return "2A";
                case CurrentRange.I400mA:
                    return "400mA";
                case CurrentRange.I200mA:
                    return "200mA";
                case CurrentRange.I40mA:
                    return "40mA";
                case CurrentRange.I20mA:
                    return "20mA";
                case CurrentRange.I4mA:
                    return "4mA";
                case CurrentRange.I2mA:
                    return "2mA";
                case CurrentRange.I400uA:
                    return "400uA";
            }
        }

        private string GetCurrentRangeDescriptionLZ(CurrentRange iRange)
        {

            switch (iRange)
            {
                default:
                    return "Auto";
                case CurrentRange.I2A:
                    return "200mA";
                case CurrentRange.I400mA:
                    return "40mA";
                case CurrentRange.I200mA:
                    return "20mA";
                case CurrentRange.I40mA:
                    return "4mA";
                case CurrentRange.I20mA:
                    return "2mA";
                case CurrentRange.I4mA:
                    return "400uA";
                case CurrentRange.I2mA:
                    return "200uA";
                case CurrentRange.I400uA:
                    return "40uA";
            }
        }
        public bool ResFileAppend(int stidx,int edidx)
        {
            FileStream fs;
            bool bZsharp = false;
            string str;
            int i;

            if (stidx >= edidx) return true;

            if (File.Exists(StatFnameResult) == false)
            {
                return false;
            }

            str = Path.GetExtension(StatFnameResult);
            if (str == ".Z#")
            {
                bZsharp = true;
            }

            try
            {
                fs = new FileStream(StatFnameResult, FileMode.Append, FileAccess.Write);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Remote control", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
            
            for (i = stidx; i < edidx; i++)
            {
                if (bZsharp == true)
                {
                    str = mChStatus.BindingZData[i].Freq.ToString() + "\t" + mChStatus.BindingZData[i].Zreal.ToString() + "\t" + mChStatus.BindingZData[i].Zimag.ToString();
                }
                else
                {
                    str = (i + 1).ToString() + "\t" ;
                    str +=  string.Format("{0:#0.000}\t", mChStatus.BindingZData[i].Time);
                    str += mChStatus.BindingZData[i].Freq.ToString() + "\t" + mChStatus.BindingZData[i].Zreal.ToString() + "\t" + mChStatus.BindingZData[i].Zimag.ToString() + "\t";
                    str += mChStatus.BindingZData[i].Zreal.ToString() + "\t";
                    str += mChStatus.BindingZData[i].Zimag.ToString() + "\t";
                    str += mChStatus.BindingZData[i].Zmod.ToString() + "\t";
                    str += string.Format("{0:#0.000}\t", mChStatus.BindingZData[i].Zphase);
                    str += mChStatus.BindingZData[i].Idc.ToString() + "\t" + mChStatus.BindingZData[i].Vdc.ToString() + "\t";
                    str += mChStatus.BindingZData[i].Temp.ToString() + "\t" + mChStatus.BindingZData[i].IRange.ToString() + "\t";
                }
                sw.WriteLine(str);
            }
            

            sw.Close();
            fs.Close();
            return true;
        }

        public bool ResFileStart()
        {
            string str = "";
            string str1 = "";
            string sFilename = SetFnameResult;
            bool bZsharp = false;
            FileStream fs;

            if (SetResultFile == false)
            {
                sFilename = Path.Combine(Properties.Settings.Default.PathData, Started.ToString("yyyyMMddhhmmss.Z#"));
            }
            StatFnameResult = sFilename;
            if (sFilename.Length < 5)
            {
                MessageBox.Show("Not selected result file.", "Remote control", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            Properties.Settings.Default.PathData = Path.GetDirectoryName(sFilename);
            Properties.Settings.Default.Save();

            
            if (File.Exists(sFilename) == true)
            {
                try
                {
                    File.Delete(sFilename);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Remote control", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }
            }

            str = Path.GetExtension(sFilename);
            if (str == ".Z#")
            {
                bZsharp = true;
            }

            try
            {
                fs = new FileStream(sFilename, FileMode.CreateNew, FileAccess.Write);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Remote control", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("[SIF Board]");

            str = string.Format("Serial number : {0}", mSysCfg.mSIFCfg.GetSerialNumber());
            sb.AppendLine(str);

            str = string.Format("Board version : {0}.{1}.{2}.{3}", mSysCfg.mSIFCfg.BoardVersion.Major
                                                    , mSysCfg.mSIFCfg.BoardVersion.Minor
                                                    , mSysCfg.mSIFCfg.BoardVersion.Revision
                                                    , mSysCfg.mSIFCfg.BoardVersion.Build);

            sb.AppendLine(str);

            str = string.Format("Firmware version : {0}.{1}.{2}.{3}", mSysCfg.mSIFCfg.FirmwareVersion.Major
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Minor
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Revision
                                                    , mSysCfg.mSIFCfg.FirmwareVersion.Build);

            sb.AppendLine(str);
            sb.AppendLine("");
            sb.AppendLine("[ZIM Board]");

            str = string.Format("Serial number : {0}", mSysCfg.mZimCfg.GetSerialNumber());
            sb.AppendLine(str);

            str1 = string.Format("{0:d04}", mSysCfg.mZimCfg.ZimBDVersion);
            str = string.Format("Board version : {0}.{1}.{2}.{3}", str1.Substring(0, str1.Length - 3)
                                                        , str1.Substring(str1.Length - 3, 1)
                                                        , str1.Substring(str1.Length - 2, 1)
                                                        , str1.Substring(str1.Length - 1, 1));
            sb.AppendLine(str);

            str1 = string.Format("{0:d04}", mSysCfg.mZimCfg.ZimFWVersion);
            str = string.Format("Firmware version : {0}.{1}.{2}.{3}", str1.Substring(0, str1.Length - 3)
                                                        , str1.Substring(str1.Length - 3, 1)
                                                        , str1.Substring(str1.Length - 2, 1)
                                                        , str1.Substring(str1.Length - 1, 1));
            sb.AppendLine(str);
            sb.AppendLine("");
            sb.AppendLine("[Parameters]");
            sb.AppendFormat("Current Range(A) : {0}", GetCurrentRangeDescription((CurrentRange)meis_cond.iacrng - 1)).AppendLine();
            sb.AppendFormat("Initial Frequency(Hz) : {0:#0.000}", meis_cond.initFreq).AppendLine();
            sb.AppendFormat("Final Frequency(Hz) : {0:#0.000}", meis_cond.finalFreq).AppendLine();
            sb.AppendFormat("Density(pts/decade) : {0}", meis_cond.density).AppendLine();
            sb.AppendFormat("Iteration : {0}", meis_cond.iteration).AppendLine();
            sb.AppendFormat("Initial Delay Time(s) : {0:#0.0}", meis_cond.ondelay).AppendLine();
            sb.AppendFormat("Skip Cycle : {0:#0.#}", meis_cond.skipcycle).AppendLine();
            DateTime dt = new DateTime(mstatus.rtc.tick * TimeSpan.TicksPerMillisecond);
            sb.AppendFormat("Started : {0:yyyy-MM-dd HH:mm:ss}", dt).AppendLine();

            sb.AppendLine("[OCV]");
            sb.AppendFormat("Value : {0:#0.000}V", mstatus.Veoc).AppendLine();
            sb.AppendLine("");
            sw.WriteLine(sb);

            sw.WriteLine("");
            sw.WriteLine("");
            sw.WriteLine("");
            sw.WriteLine("[Data]");

            String columnheader = "";
            if (bZsharp == true)
            {
                columnheader = "Frequency(Hz)\tZre(ohm)\tZimg(ohm)\t";
            }
            else
            {
                columnheader = "Pt\tTime (s)\tFreq (Hz)\tZreal (Ω)\tZimag (Ω)\tZmod (Ω)\tZphase (°)\tIdc (A)\tVdc (V)\tTemp (°C)\tIRange (A)";
            }
            sw.WriteLine(columnheader);


            sw.Close();
            fs.Close();

            return true;
        }

        public void WriteStatus()
        {
            LifeTick++;

            if (mChStatus.State == State.NotAssigned || mChStatus.State == State.Stopped
                || mChStatus.State == State.Idle || mChStatus.State == State.Finished || mChStatus.State == State.DetectedFaild
                || mChStatus.State == State.DetectedNotYetReady || mChStatus.State == State.DetectedOverTemperatue || mChStatus.State == State.DetecteNotYetCalibrated
                 || mChStatus.State == State.DetecteErrorCommZIM || mChStatus.State == State.DetecteNoZIM || mChStatus.State == State.DetecteFailedControl)
            {
                StatusStart = false;
            }
            else
            {

                StatusStart = true;
            }

            WriteIniIntData("Status", "LifeTick", StatusFilename, LifeTick);
            WriteIniboolData("Status", "Started", StatusFilename, StatusStart);
            WriteIniIntData("Status", "LastStatus", StatusFilename, LastStatus);
            WriteIniStrData("Status", "ResultFile", StatusFilename, StatFnameResult);
            WriteIniIntData("Status", "DataCount", StatusFilename, DataCount);
            WriteIniLongData("Status", "StartDateTime", StatusFilename, Started.Ticks);
            WriteIniIntData("Status", "Model", StatusFilename, Model);

            WriteIniIntData("LastData", "index", StatusFilename, LastItem);
            WriteIniDoubleData("LastData", "IRange", StatusFilename, LastItem_IRange);
            WriteIniDoubleData("LastData", "ElapsedTime", StatusFilename, LastItem_time);
            WriteIniDoubleData("LastData", "Frequency", StatusFilename, LastItem_Freq);
            WriteIniDoubleData("LastData", "Zreal", StatusFilename, LastItem_Zreal);
            WriteIniDoubleData("LastData", "Zimg", StatusFilename, LastItem_Zimg);
            WriteIniDoubleData("LastData", "Zmag", StatusFilename, LastItem_Zmag);
            WriteIniDoubleData("LastData", "Zphase", StatusFilename, LastItem_Zph);
            WriteIniDoubleData("LastData", "Idc", StatusFilename, LastItem_Idc);
            WriteIniDoubleData("LastData", "Vdc", StatusFilename, LastItem_Vdc);
            WriteIniDoubleData("LastData", "Temperature", StatusFilename, LastItem_Temp);
           
        }

        public void StartTest()
        {
            LastItem = -1;
            LastItem_time = 0;
            LastItem_Freq = 0.0;
            LastItem_Zreal = 0.0;
            LastItem_Zimg = 0.0;
            LastItem_Zmag = 0.0;
            LastItem_Zph = 0.0;
            LastItem_Idc = 0.0;
            LastItem_Vdc = 0.0;
            LastItem_Temp = 0.0;
            LastItem_IRange = 0.0;

            DataCount = 0;
            StatusFilling = ResFileStart();
            Started = mChStatus.Started;
//            StatusStart = true;
        }

        public void StopTest()
        {
//            StatusStart = false;
        }

        public void WriteStatus(int idx, ChannelStatus tChStatus, st_zim_eis_cond teis_cond, st_zim_eis_status tstatus)
        {
            meis_cond = teis_cond;
            mstatus = tstatus;
            mChStatus = tChStatus;

            if (RemoteOn == false)
            {
                WriteStatus();
                return;
            }

            if (mChStatus.mType == eZimType.BZA60HZ)
            {
                Model = 1;
            }
            else
            {
                Model = 0;
            }

            LastStatus = (int)mChStatus.State;
            if (mChStatus.ZData.Count < 1 || idx < 0)
            {

                LastItem = -1;
                LastItem_time = 0;
                LastItem_Freq = 0.0;
                LastItem_Zreal = 0.0;
                LastItem_Zimg = 0.0;
                LastItem_Zmag = 0.0;
                LastItem_Zph = 0.0;
                LastItem_Idc = 0.0;
                LastItem_Vdc = 0.0;
                LastItem_Temp = 0.0;
                LastItem_IRange = 0.0;
            }
            else
            {
                if (LastItem < idx)
                {
                    DataCount = idx + 1;
                    ResFileAppend(LastItem + 1, DataCount);

                    LastItem = idx;
                    LastItem_time = mChStatus.ZData[idx].Time;
                    LastItem_Freq = mChStatus.ZData[idx].Frequency;
                    LastItem_Zreal = mChStatus.ZData[idx].Impedance.Real;
                    LastItem_Zimg = mChStatus.ZData[idx].Impedance.Imaginary;
                    LastItem_Zmag = mChStatus.ZData[idx].Impedance.Magnitude;
                    LastItem_Zph = mChStatus.ZData[idx].Impedance.Phase * 180.0 / Constants.Pi;
                    LastItem_Idc = mChStatus.ZData[idx].GetIdc();
                    LastItem_Vdc = mChStatus.ZData[idx].AuxVoltage;
                    LastItem_Temp = mChStatus.ZData[idx].AuxTemperature;
                    LastItem_IRange = mChStatus.ZData[idx].GetIRange();
                }
            }
            WriteStatus();
        }
    }
}
