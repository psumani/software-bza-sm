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

        public static string sMsgTitle;

        public static int LinkSifErr = 0;
        public static int ScanChCount = 0;
        public static int ScanSifCount = 0;
        public static int RegChCount = 0;
        public static int RegOkChCount = 0;
        public static string FileLnkCh = "";
        public static AppConfig appcfg;
        public static PingHost pingHost;
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
                    if (pair.Value.MBZAIF.bConnect == false)
                    {
                        pair.Value.MBZAIF.mDevInf.ToWritePtr(pair.Value.mDevInf.ToByteArray());

                        if (pair.Value.MBZAIF.ConnectBZA(pair.Value.sip) == 1)
                        {
                            pair.Value.mDevInf.ToWritePtr(pair.Value.MBZAIF.mDevInf.ToByteArray());
                        }
                        else
                        {
                            LinkSifErr++;
                        }
                    }
                }

            }
            return LinkSifErr;
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
