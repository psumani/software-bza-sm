using C1.Win.C1FlexGrid;
using SMLib;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;
using System.Xml.Serialization;
using ZiveLab.ZM;
using ZiveLab.ZM.Dataview;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    /// <summary>

    /// HostedControl

    /// helper class that contains a control hosted within a C1FlexGrid

    /// </summary>

    internal class HostedControl
    {
        internal C1FlexGrid _flex;
        internal Control _ctl;
        internal Row _row;
        internal Column _col;

        internal HostedControl(C1FlexGrid flex, Control hosted, int row, int col)

        {
            // save info
            _flex = flex;
            _ctl = hosted;
            _row = flex.Rows[row];
            _col = flex.Cols[col];
            // insert hosted control into grid
            _flex.Controls.Add(_ctl);
        }

        internal void Clear()
        {
            _flex.Controls.Clear();
            _flex.Clear();
        }

        internal bool UpdatePosition()
        {
            // get row/col indices
            int r = _row.Index;
            int c = _col.Index;
            if (r < 0 || c < 0) return false;

            // get cell rect
            Rectangle rc = _flex.GetCellRect(r, c, false);

            // hide control if out of range
            if (rc.Width <= 0 || rc.Height <= 0 || !rc.IntersectsWith(_flex.ClientRectangle))
            {
                _ctl.Visible = false;
                return true;
            }


            // move the control and show it
            _ctl.Bounds = rc;
            _ctl.Visible = true;
            return true;
        }
    }


    
    public static class gBZA
    {
        [DllImport("kernel32")]
        private static extern long WritePrivateProfileString(string section, string key, string val, string filePath);
        [DllImport("kernel32")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);

        public static string sMsgTitle = "";
        public static int LinkSifErr = 0;
        public static int ScanBdCount = 0;
        public static int ScanSifCount = 0;
        public static int RegChCount = 0;
        public static int RegOkChCount = 0;
        public static string FileGrpVars = "";
        public static string FileCalGrpVars = "";
        public static string FileLnkCh = "";
        public static ExtAppProc _ExtAppPath;
        public static AppConfig appcfg;
        public static DataViewSet mDataViewSet;
        public static PingHost pingHost;
        public static st_GrpCh_vars grpvars;
        public static Dictionary<string, stLinkSIF> SifLnkLst { get; set; }
        public static Dictionary<string, stLinkSifCh> ChLnkLst {get; set; }

        public static bool CheckPing(string sip)
        {
            Ping ping = new Ping();
            PingReply rep = ping.Send(sip, 100);
            if (rep.Status == IPStatus.Success)
            {
                return true;
            }
            return false;
        }

        #region Inifile utilities

        public static string GetCalibLogFileName(string SifSerial, string ZimSerial)
        {
            string sfilename = Path.Combine(gBZA.appcfg.PathLog, string.Format("{0}\\{1}.log", SifSerial, ZimSerial));
            string sFolder = Path.GetDirectoryName(sfilename);
            if (!System.IO.Directory.Exists(sFolder))
            {
                System.IO.Directory.CreateDirectory(sFolder);
            }
            return sfilename;
        }

        public static string GetCalibLogFileName(string SifSerial)
        {
            string sfilename = Path.Combine(gBZA.appcfg.PathLog, string.Format("{0}\\{0}.log", SifSerial));
            string sFolder = Path.GetDirectoryName(sfilename);
            if (!System.IO.Directory.Exists(sFolder))
            {
                System.IO.Directory.CreateDirectory(sFolder);
            }
            return sfilename;
        }

        public static void UpdateLastCalDate(string sSerial)
        {
            string sFilename;
            sFilename = gBZA.GetCalibLogFileName(sSerial);
            gBZA.WriteIniStrData("SIF", "TestDate", sFilename, DateTime.Now.ToString("yyyy-MM-dd"));
        }

        public static void WriteIniFloatData(string Title, string Item, string IniFile, float Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        public static float GetIniFloatData(string Title, string Item, string IniFile, float DefaultValue)
        {
            float fret = DefaultValue;
            StringBuilder temp = new StringBuilder(255);
            int ret = GetPrivateProfileString(Title, Item, null, temp, 255, IniFile);
            if (temp.Length < 1)
            {
                WriteIniFloatData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }
            if (float.TryParse(temp.ToString(), out fret) == false)
            {
                WriteIniFloatData(Title, Item, IniFile, DefaultValue);
                return DefaultValue;
            }

            return fret;
        }

        public static bool IsMCBZA(string serial)
        {
            if (string.IsNullOrEmpty(serial))
            {
                return false;
            }

            if (gBZA.SifLnkLst.ContainsKey(serial))
            {
                var device = gBZA.SifLnkLst[serial];
                return (eDeviceType)device.mDevInf.mSysCfg.mSIFCfg.Type == eDeviceType.MCBZA;
            }
            return false;
        }
        public static int GetChgColor(int setcolor)
        {
            int chgColor = setcolor;
            ColorDialog cd = new ColorDialog();
            cd.Color = Color.FromArgb(chgColor);
            cd.AllowFullOpen = true; // 사용자 정의 색 허용
            cd.FullOpen = true;      // 대화상자 열 때 전체 팔레트 표시
            cd.AnyColor = true;      // 시스템 색상 포함
            cd.SolidColorOnly = false; // 그라데이션 색도 허용

            if (cd.ShowDialog() == DialogResult.OK)
            {
                chgColor = cd.Color.ToArgb();
            }
            return chgColor;
        }
        public static bool SaveGrpVarsToXml()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(st_GrpCh_vars));
            try
            {
                using (FileStream fs = new FileStream(gBZA.FileGrpVars, FileMode.Create))
                {
                    serializer.Serialize(fs, grpvars);
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(string.Format("Failed to save file[Error:{0}].", ex.Message), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            return true;
        }

        public static bool LoadXmlToGrpVars()
        {
            try
            {
                if (File.Exists(gBZA.FileGrpVars) == false)
                {
                    SaveGrpVarsToXml();
                }
                else
                {
                    XmlSerializer serializer = new XmlSerializer(typeof(st_GrpCh_vars));
                    using (FileStream fs = new FileStream(gBZA.FileGrpVars, FileMode.Open))
                    {
                        grpvars = (st_GrpCh_vars)serializer.Deserialize(fs);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(string.Format("Failed to read file[Error:{0}].", ex.Message), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            return true;
        }

        public static bool SaveAppCfg()
        {
            try
            {
                XmlSerializer serializer = new XmlSerializer(typeof(AppConfig));
                using (StreamWriter writer = new StreamWriter(MBZA_Constant.AppCfgFilename))
                {
                    serializer.Serialize(writer, gBZA.appcfg);
                }
            }
            catch (Exception) //e
            {
                return false;
            }

            return true;
        }

        public static bool LoadAppCfg()
        {

            if (File.Exists(MBZA_Constant.AppCfgFilename) == false)
            {
                if (SaveAppCfg() == false)
                {
                    return false;
                }
                return true;
            }


            try
            {
                XmlSerializer serializer = new XmlSerializer(typeof(AppConfig));
                using (StreamReader reader = new StreamReader(MBZA_Constant.AppCfgFilename))
                {
                    gBZA.appcfg = (AppConfig)serializer.Deserialize(reader);
                }

            }
            catch (Exception) //e
            {

                if (SaveAppCfg() == false)
                {
                    return false;
                }
                return true;
            }

            return true;
        }

        public static void WriteIniboolData(string Title, string Item, string IniFile, bool Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        public static bool GetIniboolData(string Title, string Item, string IniFile, bool DefaultValue)
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

        public static void WriteIniIntData(string Title, string Item, string IniFile, int Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        public static int GetIniIntData(string Title, string Item, string IniFile, int DefaultValue)
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

        public static void WriteIniLongData(string Title, string Item, string IniFile, long Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        public static long GetIniLongData(string Title, string Item, string IniFile, long DefaultValue)
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

        public static void WriteIniDoubleData(string Title, string Item, string IniFile, double Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        public static double GetIniDoubleData(string Title, string Item, string IniFile, double DefaultValue)
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

        public static void WriteIniStrData(string Title, string Item, string IniFile, string Value)
        {
            WritePrivateProfileString(Title, Item, Value, IniFile);
        }

        public static string GetIniStrData(string Title, string Item, string IniFile, string DefaultValue)
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

        public static string GetIniStrData(string Title, string Item, string IniFile)
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
        #endregion

         public static bool SaveDataViewSet()
        {
            return CoSerialize.SerializeToFile(MBZA_Constant.DataViewSetFilename, mDataViewSet);
        }

        public static void SaveGrpSetAll()
        {
            gBZA.SaveAppCfg();
            SaveDataViewSet();
        }
        
        public static bool LoadDataViewSet()
        {

            if (File.Exists(MBZA_Constant.DataViewSetFilename) == false)
            {
                if (SaveDataViewSet() == false)
                {
                    return false;
                }
                return true;
            }
            try
            {
                mDataViewSet = CoSerialize.SerializeFromFile<DataViewSet>(MBZA_Constant.DataViewSetFilename);
            }
            catch 
            {
                try
                {
                    File.Delete(MBZA_Constant.DataViewSetFilename);
                    if (SaveDataViewSet() == false)
                    {
                        return false;
                    }
                    return true;
                }
                catch
                {
                    return false;
                }
            }

            return true;
        }
        
        public static void ShowInfoBox(string snote)
        {
            MessageBox.Show(snote,sMsgTitle,MessageBoxButtons.OK,MessageBoxIcon.Information);
        }
        public static void ShowErrBox(string snote)
        {
            MessageBox.Show(snote, sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        public static Icon BitmapToIcon(Bitmap bmp)
        {
            IntPtr Hicon = bmp.GetHicon();
            Icon tIcon = Icon.FromHandle(Hicon);
            return tIcon;
        }

        public static int ConnectSifs()
        {
            int i = 0;
            string sch;
            LinkSifErr = 0;
            foreach (var pair in gBZA.SifLnkLst)
            {
                if(pair.Value.bLinked == true)
                {
                    for(i=0; i< MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        if (pair.Value.iLinkCh[i] >= 0)
                        {
                            sch = pair.Value.iLinkCh[i].ToString();
                            pair.Value.MBZAIF.condfilename[i] = gBZA.ChLnkLst[sch].mChInf.FileCond;
                            pair.Value.MBZAIF.resfilename[i] = gBZA.ChLnkLst[sch].mChInf.FileResult;
                        }
                    }

                    pair.Value.MBZAIF.mDevInf.ToWritePtr(pair.Value.mDevInf.ToByteArray());
                    pair.Value.MBZAIF.ConnectBZA(pair.Value.sip);
                    
                    if (pair.Value.MBZAIF.bConnect)
                    {
                        pair.Value.mDevInf.ToWritePtr(pair.Value.MBZAIF.mDevInf.ToByteArray());
                        continue;
                    }
                }

            }
            return LinkSifErr;
        }

        public static int GetRegRMChs()
        {
            int RegChCount = 0;
            string sch;
            string fileinf = Path.Combine(gBZA.appcfg.PathSysInfo, "realviewlist.inf");
            SM_Config_File<List<int>> mFile = new SM_Config_File<List<int>>();
            List<int> tlst = new List<int>();
            List<int> chs = new List<int>();

            tlst = mFile.LoadXmlToObj(fileinf, chs);

            if (tlst.Count < 1)
            {
                return 0;
            }

            foreach (var ch in tlst)
            {
                sch = ch.ToString();
                if (gBZA.ChLnkLst.ContainsKey(sch))
                {
                    var value = gBZA.ChLnkLst[sch];
                    if (gBZA.SifLnkLst.ContainsKey(value.sSerial))
                    {
                        if (gBZA.SifLnkLst[value.sSerial].bLinked == true
                            && gBZA.SifLnkLst[value.sSerial].MBZAIF.bConnect == true)
                        {
                            RegChCount++;
                            continue;
                        }
                    }
                }
            }
            return RegChCount;
        }

        public static int GetGrpRMChs()
        {
            int GrpChCount = 0;

            foreach (var pair in gBZA.ChLnkLst)
            {
                if (pair.Value.mChInf.bSelected == true)
                {
                    if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                    {
                        if (gBZA.SifLnkLst[pair.Value.sSerial].bLinked == true
                                && gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.bConnect == true)
                        {
                            GrpChCount++;
                            continue;
                        }
                    }
                }
            }
            return GrpChCount;
        }

        public static int DisonnectSifs()
        {
            LinkSifErr = 0;
            foreach (var pair in gBZA.SifLnkLst)
            {
                if (pair.Value.bLinked == true)
                {
                    pair.Value.MBZAIF.StopThread();
                }
            }
            return LinkSifErr;
        }


        

        public static bool SaveLinkChToXml(string sfullpath)
        {
            SM_Config_File<List<stRegLinkSifCh>> mFile = new SM_Config_File<List<stRegLinkSifCh>>();
            List<stRegLinkSifCh> lstLink = new List<stRegLinkSifCh>();
           
            var list = gBZA.ChLnkLst.Keys.ToList();

            list.Sort();

            foreach (var key in list)
            {
                var Value = gBZA.ChLnkLst[key];
                stRegLinkSifCh stRegLinkSifCh = new stRegLinkSifCh(key);
                stRegLinkSifCh.sCh = key;
                stRegLinkSifCh.mLinkSifCh = gBZA.ChLnkLst[key];

                lstLink.Add(stRegLinkSifCh);
            }
            mFile.SaveObjToXml(sfullpath, lstLink);

            return true;
        }
        
        public static bool LoadXmlToLinkCh(string sfullpath)
        {

            if (File.Exists(sfullpath) == false)
            {
                MessageBox.Show("The file does not exist.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }

            gBZA.ChLnkLst.Clear();

            SM_Config_File<List<stRegLinkSifCh>> mFile = new SM_Config_File<List<stRegLinkSifCh>>();

            List<stRegLinkSifCh> lstLink = new List<stRegLinkSifCh>();

            lstLink = mFile.LoadXmlToObj(sfullpath, lstLink);

            gBZA.ChLnkLst.Clear();
            foreach (var item in lstLink)
            {
                gBZA.ChLnkLst.Add(item.sCh, item.mLinkSifCh);
            }

           return true;
        }
        
        public static bool CheckRegLinkCh()
        {
            bool bret = true;


            foreach (var pair in gBZA.ChLnkLst)
            {
                pair.Value.SetChkSIF(false);
                pair.Value.SetChkCh(false);
                if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial))
                {
                    pair.Value.SetChkSIF(true);
                    if (gBZA.SifLnkLst[pair.Value.sSerial].mDevInf.mSysCfg.EnaZIM[pair.Value.SifCh] == 1)
                    {
                        try
                        {
                            gBZA.SifLnkLst[pair.Value.sSerial].iLinkCh[pair.Value.SifCh] = Int32.Parse(pair.Key);
                            pair.Value.SetChkCh(true);
                        }
                        catch (FormatException)
                        {
                            Debug.WriteLine($"Unable to parse '{pair.Key}'");
                        }
                    }
                }
                else
                {
                    bret = false;
                }

            }
            return bret;
        }

        public static bool CheckStatusRun(stChStatusInf chstat)
        {
            enTestState stat = (enTestState)chstat.TestStatus;
            enEisState  estat = (enEisState) chstat.eis_status.status;
            if (stat == enTestState.Running || stat == enTestState.nc_Running)
            {
                return true;
            }
            if (stat == enTestState.Calibration || stat == enTestState.nc_Calibration)
            {
                if(estat != enEisState.none)
                {
                    return true;
                }
            }
            return false;
        }

        public static bool CheckStatusCalibMode(stChStatusInf chstat)
        {
            enTestState stat = (enTestState)chstat.TestStatus;
            if (stat == enTestState.Calibration || stat == enTestState.nc_Calibration)
            {
                return true;
            }
            return false;
        }
    }
}
