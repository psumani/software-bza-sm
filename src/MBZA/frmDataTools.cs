using Microsoft.WindowsAPICodePack.Dialogs;
using NationalInstruments.UI;
using SMLib;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Serialization;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    
    public partial class frmDataTools : Form
    {
        public event EventHandler CloseThis;

        string m_curPath;
        bool bSearchSubfolder;
        bool bSearch;
        bool[] CheckTech;
        bool bClose;
        stResHeader mHead;
        string sFilename;
        enTechType1 enType;
        cls_rtdata mRtData;
        st_GrpCh_vars grpvars;
        

        int LegItems;
        double GrpSpaceRate;
        bool xTimemode;
        FormatString fs_ss;
        FormatString fs_mm;
        FormatString fs_hh;
        FormatString fs_dd;

        ushort findex;
        ushort arrcnt;
        bool[] barr;
        int oldcycle;
        double[] prrdata;

        bool bInstallExcel;

        int sortColumn;
        public frmDataTools()
        {
            InitializeComponent();

            bInstallExcel = CheckInstallExcel();

            this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.TransitioningContent);
            bClose = false;
            mHead = new stResHeader(0);

            mRtData = new cls_rtdata();

            grpvars = new st_GrpCh_vars();

            LoadXmlToGrpVars();


            prrdata = new double[3];
            prrdata[0] = 0.0;
            prrdata[1] = 0.0;
            prrdata[2] = 0.0;
            CheckTech = new bool[System.Enum.GetValues(typeof(enTechType1)).Length];

            CheckTech[0] = Properties.Settings.Default.Opt_SearchType1;
            CheckTech[1] = Properties.Settings.Default.Opt_SearchType2;
            CheckTech[2] = Properties.Settings.Default.Opt_SearchType3;
            CheckTech[3] = Properties.Settings.Default.Opt_SearchType4;
            CheckTech[4] = Properties.Settings.Default.Opt_SearchType5;
            CheckTech[5] = Properties.Settings.Default.Opt_SearchType6;
            CheckTech[6] = Properties.Settings.Default.Opt_SearchType7;
            bSearchSubfolder = Properties.Settings.Default.Opt_SearchSubfolder;
            m_curPath = Properties.Settings.Default.Path_Searchdata;

            listView1.View = View.Details;         
            listView1.FullRowSelect = true;
            listView1.Columns.Clear();
            listView1.Columns.Add("File name", listView1.Width - 390 - 35, HorizontalAlignment.Center);
            listView1.Columns.Add("Technique", 100, HorizontalAlignment.Center);
            listView1.Columns.Add("File size", 100, HorizontalAlignment.Center);
            listView1.Columns.Add("Last updated", 190, HorizontalAlignment.Center);

            fs_ss = new FormatString(FormatStringMode.ElapsedTime, @"ss");
            fs_mm = new FormatString(FormatStringMode.ElapsedTime, @"m\:ss");
            fs_hh = new FormatString(FormatStringMode.ElapsedTime, @"h\:mm\:ss");
            fs_dd = new FormatString(FormatStringMode.ElapsedTime, @"d\.hh\:mm\:ss");

            barr = new bool[3];
            arrcnt = 0;
            oldcycle = -1;
            barr[0] = false;
            barr[1] = false;
            barr[2] = false;

            bSearch = false;
            GrpSpaceRate = 0.05;
            enType = enTechType1.TECH_ERR;
            sFilename = "";

            xTimemode = false;
            sortColumn = -1;

            LegItems = 2;
        }
        public bool LoadXmlToGrpVars()
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

        public bool SaveGrpVarsToXml()
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
        private bool CheckInstallExcel()
        {
            string REGISTRY_EXCEL_KEY = @"Excel.Application";
            Type officeType = Type.GetTypeFromProgID(REGISTRY_EXCEL_KEY);
            if (officeType == null) return false;
            return true;
        }
        
        private void frmDataTools_FormClosed(object sender, FormClosedEventArgs e)
        {
            bClose = true;
            gBZA.SaveAppCfg();
            CloseThis?.Invoke(this, e);
        }

        public bool GetSearchFile(ref List<string> sList, String _strPath, bool bWiteSubFolder, string sfilter = "*.*")
        {
            string[] files = { "", };
            SearchOption mOption = SearchOption.TopDirectoryOnly;
            if (bWiteSubFolder) mOption = SearchOption.AllDirectories;
            try
            {
                files = Directory.GetFiles(_strPath, sfilter, mOption);
                sList = files.ToList();
            }
            catch (IOException ex)
            {
                sList.Clear();
                Trace.WriteLine(ex.Message);
                return false;
            }
            return true;
        }

        public bool GetPrrSearchFile(ref List<string> sList, String _strPath, bool bWiteSubFolder, string sfilter = "*.*")
        {
            List<string> sDataList = new List<string>();
            sList.Clear();

            try
            {

            }
            catch (IOException ex)
            {
                sList.Clear();
                Trace.WriteLine(ex.Message);
                return false;
            }
            return true;
        }

        public bool GetTechtypeinDataFile(String sDataFile, ref enTechType1 type)
        {
            FileResult tResfile = new FileResult();
            try
            {
                type = enTechType1.TECH_EIS;
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed to open a file.");
                    return false;
                }

                if (tResfile.tmphead.tech.type > (ushort)enTechType1.TECH_DCH || tResfile.tmphead.tech.type < 0)
                {
                    type = enTechType1.TECH_ERR;
                }
                else
                {
                    type = (enTechType1)tResfile.tmphead.tech.type;
                }
            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                return false;
            }
            return true;
        }

        public bool GetTechFileinDataFile(String sDataFile, bool bSaveAs = false)
        {
            FileCondition fc = new FileCondition();
            FileResult tResfile = new FileResult();
            String sTechFile;
            enTechType1 techtype = enTechType1.TECH_EIS;
            SaveFileDialog saveDlg = new SaveFileDialog();

            saveDlg.CustomPlaces.Clear();

            for (int i = 0; i < 10; i++)
            {
                if (Directory.Exists(gBZA.appcfg.PathData[i]))
                {
                    // 왼쪽 링크 바에 커스텀 폴더 추가
                    saveDlg.CustomPlaces.Add(gBZA.appcfg.PathData[i]);
                }
            }

            Cursor = Cursors.WaitCursor;
            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }
                techtype = (enTechType1)tResfile.tmphead.tech.type;
                sTechFile = tResfile.tmphead.GetTechFilename();
                if (bSaveAs == false)
                {
                    if (File.Exists(sTechFile))
                    {
                        if (MessageBox.Show("The same file already exists. Do you want to save as?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                        {
                            bSaveAs = true;
                        }
                    }
                }

                if (bSaveAs)
                {
                    if (techtype == enTechType1.TECH_HFR)
                    {
                        saveDlg.Title = "Save as Galvanostatic HFR technique file.";
                        saveDlg.DefaultExt = "*.hfr";
                        saveDlg.Filter = "Galvanostatic HFR (*.hfr) |*.hfr";
                    }
                    else if (techtype == enTechType1.TECH_PRR)
                    {
                        saveDlg.Title = "Save as Pseudo Rs Rp mearsurement technique file.";
                        saveDlg.DefaultExt = "*.prr";
                        saveDlg.Filter = "Pseudo Rs Rp mearsurement(*.prr) | *.prr";
                    }
                    else if (techtype == enTechType1.TECH_MON)
                    {
                        saveDlg.Title = "Save as Voltage/Temperature monitor technique file.";
                        saveDlg.DefaultExt = "*.vtm";
                        saveDlg.Filter = "V/T monitor(*.vtm) | *.vtm";
                    }
                    else if (techtype == enTechType1.TECH_QIS)
                    {
                        saveDlg.Title = "Save as Quick galvanostatic EIS technique file.";
                        saveDlg.DefaultExt = "*.qis";
                        saveDlg.Filter = "Quick galvanostatic EIS (*.qis) | *.qis";
                    }
                    else if (techtype == enTechType1.TECH_DCH)
                    {
                        saveDlg.Title = "Save as Discharge test technique file.";
                        saveDlg.DefaultExt = "*.dch";
                        saveDlg.Filter = "Discharge test(*.dch) | *.dch";
                    }
                    else
                    {
                        saveDlg.Title = "Saving as  Galvanostatic EIS technique file.";
                        saveDlg.DefaultExt = "*.eis";
                        saveDlg.Filter = "Galvanostatic EIS (*.eis) | *.eis";
                    }
                    saveDlg.OverwritePrompt = true;
                    saveDlg.InitialDirectory = Path.GetDirectoryName(sTechFile);
                    saveDlg.FileName = Path.GetFileName(sTechFile);

                    if (saveDlg.ShowDialog() == DialogResult.Cancel)
                    {
                        Cursor = Cursors.Default;
                        return false;
                    }
                    sTechFile = saveDlg.FileName;
                }

                if (File.Exists(sTechFile))
                {
                    if (MessageBox.Show("The same file already exists. Are you sure you want to overwrite the file? ", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                    {
                        Cursor = Cursors.Default;
                        return false;
                    }
                }
                if (fc.Save(sTechFile, tResfile.tmphead.tech) == false)
                {
                    Trace.WriteLine("Failed to save technique a file.");
                    Cursor = Cursors.Default;
                    return false;
                }

            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                Cursor = Cursors.Default;
                return false;
            }
            Cursor = Cursors.Default;

            if (MessageBox.Show("You have successfully saved your file. Would you like to open the saved file now?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                OpenTechFile(sTechFile);
            }


            return true;
        }

        private void OpenTechFile(string filename)
        {
            frmTechniq frmTech = new frmTechniq(-1, filename);
            frmTech.ShowInTaskbar = false;
            frmTech.MdiParent = this.MdiParent;
            if (gBZA.appcfg.TechLocation == new Point(0, 0))
            {
                frmTech.StartPosition = FormStartPosition.CenterScreen;
            }
            else
            {
                frmTech.Location = gBZA.appcfg.TechLocation;
                frmTech.StartPosition = FormStartPosition.Manual;
            }

            frmTech.Show();
            frmTech.WindowState = FormWindowState.Normal;
        }

        public string GetSaveDatafilenameToCsvFilename(String sDataFile)
        {
            
            string sPath = Path.GetDirectoryName(sDataFile);
            string sFile = Path.GetFileNameWithoutExtension(sDataFile);
            string sFilename;
            string scsvfile;
            int i = 1;

            while (true)
            {
                sFilename = string.Format("{0}_{1:000}.csv", sFile,i);
                scsvfile = Path.Combine(sPath, sFilename);
                if(File.Exists(scsvfile) == false)
                {
                    break;
                }
                i++;
            }
            return scsvfile;
        }

        public string GetSaveCondDatafilename(String sDataFile)
        {

            string sPath = Path.GetDirectoryName(sDataFile);
            string sFile = Path.GetFileNameWithoutExtension(sDataFile);
            string sFilename;
            string sRet;
            int i = 1;

            while (true)
            {
                sFilename = string.Format("{0}_{1:000}.zmf", sFile, i);
                sRet = Path.Combine(sPath, sFilename);
                if (File.Exists(sRet) == false)
                {
                    break;
                }
                i++;
            }
            return sRet;
        }

        public string DelLastZero(string str)
        {
            int i = 0;
            int Lastzero = str.Length;
            int nLen = str.Length;
            string c;

            while (true)
            {
                c = str.Substring(nLen - i - 1, 1);
                if (c == ".")
                {
                    i++;
                    break;
                }
                else if (c == "0")
                {
                    Lastzero = nLen - i - 1;
                }
                else
                {
                    break;
                }
                i++;
            }
            return str.Substring(0, Lastzero);
        }

        public string GetTimeString(double dsecond)
        {
            string str;
            double dval = Math.Floor(dsecond * 1000000.0 + 0.5) / 1000000.0;
            double Milli, IntSec;

            IntSec = Math.Floor(dval);
            Milli = dval - IntSec;
            long MilliSecond = (long)IntSec;
            int LessMicro = (int)(Milli * 1000000.0 + 0.5);
            int hour = 0, minute = 0;

            if (MilliSecond >= 3600)
            {
                hour = (int)(MilliSecond / 3600);
                MilliSecond %= 3600;
            }
            if (MilliSecond >= 60)
            {
                minute = (int)(MilliSecond / 60);
                MilliSecond %= 60;
            }
            if (hour == 0)
            {
                if (minute == 0)
                {
                    if (LessMicro == 0)
                    {
                        str = string.Format("{0:D1}", MilliSecond);
                    }
                    else
                    {
                        if (LessMicro < 10)
                        {
                            str = string.Format("{0:D1}.00000{1:D1}", MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 100)
                        {
                            str = string.Format("{0:D1}.0000{1:D2}", MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 1000)
                        {
                            str = string.Format("{0:D1}.000{1:D3}", MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 10000)
                        {
                            str = string.Format("{0:D1}.00{1:D4}", MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 100000)
                        {
                            str = string.Format("{0:D1}.0{1:D5}", MilliSecond, LessMicro);
                        }
                        else
                        {
                            str = string.Format("{0:D1}.{1:D6}", MilliSecond, LessMicro);
                        }
                        str = DelLastZero(str);
                    }
                }
                else
                {
                    if (LessMicro == 0)
                    {
                        str = string.Format("{0:D1}:{1:D2}", minute, MilliSecond);
                    }
                    else
                    {
                        if (LessMicro < 10)
                        {
                            str = string.Format("{0:D1}:{1:D2}.00000{2:D1}", minute, MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 100)
                        {
                            str = string.Format("{0:D1}:{1:D2}.0000{2:D2}", minute, MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 1000)
                        {
                            str = string.Format("{0:D1}:{1:D2}.000{2:D3}", minute, MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 10000)
                        {
                            str = string.Format("{0:D1}:{1:D2}.00{2:D4}", minute, MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 100000)
                        {
                            str = string.Format("{0:D1}:{1:D2}.0{2:D5}", minute, MilliSecond, LessMicro);
                        }
                        else
                        {
                            str = string.Format("{0:D1}:{1:D2}.{2:D6}", minute, MilliSecond, LessMicro);
                        }
                        str = DelLastZero(str);
                    }
                }

            }
            else
            {
                if (LessMicro == 0)
                {
                    str = string.Format("{0:D1}:{1:D2}:{2:D2}", hour, minute, MilliSecond);
                }
                else
                {
                    if (LessMicro < 10)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.00000{3:D1}", hour, minute, MilliSecond, LessMicro);
                    }
                    else if (LessMicro < 100)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.0000{3:D2}", hour, minute, MilliSecond, LessMicro);
                    }
                    else if (LessMicro < 1000)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.000{3:D3}", hour, minute, MilliSecond, LessMicro);
                    }
                    else if (LessMicro < 10000)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.00{3:D4}", hour, minute, MilliSecond, LessMicro);
                    }
                    else if (LessMicro < 100000)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.0{3:D5}", hour, minute, MilliSecond, LessMicro);
                    }
                    else
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.{3:D6}", hour, minute, MilliSecond, LessMicro);
                    }
                    str = DelLastZero(str);
                }
            }
            return str;
        }

        public void WritePrrToCsvData(StreamWriter sw, stDefTestData d, bool changecycle,ref int idx, ref string sret)
        {
            if (arrcnt == 0) return;

            double Yimg = -1.0 * d.img / ((d.real * d.real) + (d.img * d.img));
            double cs = 1.0 / (2.0 * DeviceConstants.PI * d.fFreq * -1.0 * d.img);
            double cp = Yimg / (2.0 * DeviceConstants.PI * d.fFreq);

            for (int i = 0; i < 3; i++)
            {
                if (barr[findex] == true)
                {
                    //mag

                    if (findex == 1)
                    {
                        sret += GetTimeString(d.TestTime) + ",";
                        sret += string.Format("{0:G6},", d.real);
                        sret += string.Format("{0:G6},", cs);
                        sret += string.Format("{0:G6},", cp);
                        prrdata[1] = d.real;
                        prrdata[2] = 0.0;
                        if (arrcnt < 3)
                        {
                            sret += "0.0,0.0,0.0,0.0,0.0,0.0,";
                            sret += string.Format("{0:G6},", prrdata[1] - prrdata[0]);
                            for (int ch = 0; ch < MBZA_Constant.MAX_AUX_CHANNELS; ch++)
                            {
                                if (mRtData.bChannel[ch+1] == false)
                                    continue;
                                sret += string.Format("{0:G6},", d.mdata[ch / 4].mdata[ch % 4].Zre);
                            }
                            sw.WriteLine(sret);
                            idx++;
                        }
                    }
                    else if (findex == 2)
                    {
                        sret += GetTimeString(d.TestTime) + ",";
                        sret += string.Format("{0:G6},", d.real);
                        sret += string.Format("{0:G6},", cs);
                        sret += string.Format("{0:G6},", cp);
                        prrdata[2] = d.real;

                        sret += string.Format("{0:G6},", prrdata[2] - prrdata[1]);
                        sret += string.Format("{0:G6},", prrdata[2] - prrdata[0]);
                        sret += string.Format("{0:G6},", prrdata[1] - prrdata[0]);
                        for (int ch = 0; ch < MBZA_Constant.MAX_AUX_CHANNELS; ch++)
                        {
                            if (mRtData.bChannel[ch + 1] == false)
                                continue;
                            sret += string.Format("{0:G6},", d.mdata[ch / 4].mdata[ch % 4].Zre);
                        }
                        sw.WriteLine(sret);

                        idx++;
                    }
                    else
                    {
                        sret = string.Format("{0},", idx+1);
                        sret += GetTimeString(d.TestTime) + ",";
                        sret += string.Format("{0:G6},", d.real);
                        sret += string.Format("{0:G6},", cs);
                        sret += string.Format("{0:G6},", cp);
                        prrdata[0] = d.real;
                        prrdata[1] = 0.0;
                        prrdata[2] = 0.0;
                        for (int ch = 0; ch < MBZA_Constant.MAX_AUX_CHANNELS; ch++)
                        {
                            if (mRtData.bChannel[ch + 1] == false)
                                continue;
                            sret += string.Format("{0:G6},", d.mdata[ch / 4].mdata[ch % 4].Zre);
                        }
                    }
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

        public bool SaveCondDataFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            FileResult tSaveResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string sCondDatafile = GetSaveCondDatafilename(sDataFile);
            saveDlg.CustomPlaces.Clear();

            for (int i = 0; i < 10; i++)
            {
                if (Directory.Exists(gBZA.appcfg.PathData[i]))
                {
                    // 왼쪽 링크 바에 커스텀 폴더 추가
                    saveDlg.CustomPlaces.Add(gBZA.appcfg.PathData[i]);
                }
            }

            Cursor = Cursors.WaitCursor;
            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }
            
                saveDlg.Title = "Save as data file.";
                saveDlg.DefaultExt = "*.zmf";
                saveDlg.Filter = "Data files of ZM (*.zmf) |*.zmf";
                saveDlg.OverwritePrompt = true;
                saveDlg.InitialDirectory = Path.GetDirectoryName(sCondDatafile);
                saveDlg.FileName = Path.GetFileName(sCondDatafile);

                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    return false;
                }

                sCondDatafile = saveDlg.FileName;

                if (File.Exists(sCondDatafile) == true)
                {
                    try
                    {
                        File.Delete(sCondDatafile);
                    }
                    catch (Exception ex)
                    {
                        tResfile.CloseFile();
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stDefTestData[] data = new stDefTestData[tResfile.datacount];
                int DataCount = tResfile.read(0, ref data, tResfile.datacount);

                

                if (tSaveResfile.Create(sCondDatafile, tResfile.tmphead) == false)
                {
                    MessageBox.Show("Failed to create new file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                double MaxX = grp1.XAxes[0].Range.Maximum;
                double MinX = grp1.XAxes[0].Range.Minimum;
                double MaxY1 = grp1.YAxes[0].Range.Maximum;
                double MaxY2 = grp1.YAxes[1].Range.Maximum;
                double MinY1 = grp1.YAxes[0].Range.Minimum;
                double MinY2 = grp1.YAxes[1].Range.Minimum;
                bool bY2 = false;
                double Datax = 0.0;
                double DataY1 = 0.0;
                double DataY2 = 0.0;
                double tmp = 0.0;
                switch ((enTechType1)tResfile.tmphead.tech.type)
                {
                    case enTechType1.TECH_QIS:
                    case enTechType1.TECH_EIS:
                        tmp = MaxY1 * -1.0;
                        MaxY1 = MinY1 * -1.0;
                        MinY1 = tmp;
                        break;
                }
                for (int i = 0; i < DataCount; i++)
                {
                    if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_DCH)
                    {
                        bY2 = true;
                        /*MaxX *= 86400;
                        MinX *= 86400;*/

                        Datax = data[i].TestTime;
                        DataY1 = data[i].Vdc;
                        DataY2 = data[i].Temperature;
                    }
                    else if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_MON)
                    {
                        bY2 = true;
                        /*MaxX *= 86400;
                        MinX *= 86400;*/

                        Datax = data[i].TestTime;
                        DataY1 = data[i].Veoc;
                        DataY2 = data[i].Temperature;
                    }
                    else if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_PRR)
                    {
                        /*MaxX *= 86400;
                        MinX *= 86400;*/
                        Datax = data[i].TestTime;

                        DataY1 = data[i].real;
                        DataY2 = 0.0;
                    }
                    else if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_HFR)
                    {
                        bY2 = true;
                        /*MaxX *= 86400;
                        MinX *= 86400;*/
                        Datax = data[i].TestTime;
                        DataY1 = data[i].real;
                        DataY2 = data[i].Vdc;
                    }
                    else
                    {
                        Datax = data[i].real;
                        DataY1 = data[i].img;
                        DataY2 = 0.0;
                    }

                    if (Datax < MinX) continue;
                    if (Datax > MaxX) continue;

                    if (DataY1 < MinY1) continue;
                    if (DataY1 > MaxY1) continue;

                    if(bY2)
                    {
                        if (DataY2 < MinY2) continue;
                        if (DataY2 > MaxY2) continue;
                    }
                    tSaveResfile.AppendData(data[i]);
                }
                tSaveResfile.CloseFile();
                tResfile.CloseFile();
            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);

                tSaveResfile.CloseFile();
                tResfile.CloseFile();

                Cursor = Cursors.Default;
                return false;
            }
            Cursor = Cursors.Default;
            return true;
        }

        public bool SavePrrDataToTextFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string scsvfile = GetSaveDatafilenameToCsvFilename(sDataFile);
            int idx = 0;
            Cursor = Cursors.WaitCursor;

            saveDlg.CustomPlaces.Clear();

            for (int i = 0; i < 10; i++)
            {
                if (Directory.Exists(gBZA.appcfg.PathData[i]))
                {
                    // 왼쪽 링크 바에 커스텀 폴더 추가
                    saveDlg.CustomPlaces.Add(gBZA.appcfg.PathData[i]);
                }
            }

            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }
                if((enTechType1)tResfile.tmphead.tech.type != enTechType1.TECH_PRR)
                {
                    Trace.WriteLine("Failed opening file.");
                    tResfile.CloseFile();
                    Cursor = Cursors.Default;
                    return false;
                }

                saveDlg.Title = "Save as a PRR calculation result file.";
                saveDlg.DefaultExt = "*.csv";
                saveDlg.Filter = "PRR calculation result file (*.csv) |*.csv";
                saveDlg.OverwritePrompt = true;
                saveDlg.InitialDirectory = Path.GetDirectoryName(scsvfile);
                saveDlg.FileName = Path.GetFileName(scsvfile);

                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    return false;
                }

                scsvfile = saveDlg.FileName;

                if (File.Exists(scsvfile) == true)
                {
                    try
                    {
                        File.Delete(scsvfile);
                    }
                    catch (Exception ex)
                    {
                        tResfile.CloseFile();
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stDefTestData[] data = new stDefTestData[tResfile.datacount];
                int DataCount = tResfile.read(0, ref data, tResfile.datacount);

                stTech_PRR prr = new stTech_PRR(0);

                tResfile.tmphead.tech.GetPRR(ref prr);

                arrcnt = 0;
                oldcycle = -1;
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


                FileStream fs;

                try
                {
                    fs = new FileStream(scsvfile, FileMode.CreateNew, FileAccess.Write);
                }
                catch (Exception ex)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
                StringBuilder sb = new StringBuilder();
                string str;

                str = string.Format("* Source file:{0}", sDataFile);
                sb.AppendLine(str);
                str = string.Format("* Technique file:{0}", tResfile.tmphead.GetTechFilename());
                sb.AppendLine(str);

                if (arrcnt == 3)
                {
                    str = string.Format("* Test condition: f1({0:#0.###}Hz)/ f2({1:#0.###}Hz)/ f3({2:#0.###}Hz)/", prr.rsfreq, prr.rdfreq, prr.rdendfreq);
                }
                else
                {
                    str = string.Format("* Test condition: f1({0:#0.###}Hz)/ f2({1:#0.###}Hz)/", prr.rsfreq, prr.rdfreq);
                }
                sb.AppendLine(str);

                sw.WriteLine(sb);

                sw.WriteLine("");
                sw.WriteLine("");
                sw.WriteLine("");

                str = "Index,f1.time(s),f1.real(Ω),f1.Cs(F),f1.Cp(F),";
                for (int nPlot = 1; nPlot < MBZA_Constant.MAX_AUXTYPE_CHANNELS; nPlot++)
                {
                    if (mRtData.bChannel[nPlot] == false)
                        continue;
                    str += string.Format("f1.Aux{0}(Ω),", nPlot);
                }
                str += "f2.time(s),f2.real(Ω),f2.Cs(F),f2.Cp(F),f3.time(s),f3.real(Ω),f3.Cs(F),f3.Cp(F),(f3-f2).real(Ω),(f3-f1).real(Ω),(f2-f1).real(Ω),";
                for (int nPlot = 1; nPlot < MBZA_Constant.MAX_AUXTYPE_CHANNELS; nPlot++)
                {
                    if (mRtData.bChannel[nPlot] == false)
                        continue;
                    str += string.Format("f2.Aux{0}(Ω),", nPlot);
                }

                sw.WriteLine(str);
                str = "";

                findex = 0;

                for (int i = 0; i < DataCount; i++)
                {
                    if (oldcycle != data[i].nCycle)
                    {
                        if (oldcycle >= 0)
                        {
                            oldcycle = data[i].nCycle;
                            WritePrrToCsvData(sw,data[i], true, ref idx,ref str);
                            continue;
                        }
                        oldcycle = data[i].nCycle;
                    }
                    WritePrrToCsvData(sw, data[i], false, ref idx, ref str);
                }

                sw.Close();
                fs.Close();
                tResfile.CloseFile();
            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                Cursor = Cursors.Default;
                tResfile.CloseFile();
                return false;
            }
            Cursor = Cursors.Default;


            if (MessageBox.Show("You have successfully saved your file. Would you like to open the saved file now?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Process.Start(scsvfile);
            }
            
            return true;
        }

        public bool SaveDchDataToTextFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string scsvfile = GetSaveDatafilenameToCsvFilename(sDataFile);

            Cursor = Cursors.WaitCursor;

            saveDlg.CustomPlaces.Clear();

            for (int i = 0; i < 10; i++)
            {
                if (Directory.Exists(gBZA.appcfg.PathData[i]))
                {
                    // 왼쪽 링크 바에 커스텀 폴더 추가
                    saveDlg.CustomPlaces.Add(gBZA.appcfg.PathData[i]);
                }
            }

            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }
                if ((enTechType1)tResfile.tmphead.tech.type != enTechType1.TECH_DCH)
                {
                    tResfile.CloseFile();
                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }

                saveDlg.Title = "Save as a DCH calculation data file.";
                saveDlg.DefaultExt = "*.csv";
                saveDlg.Filter = "DCH calculation data file (*.csv) |*.csv";
                saveDlg.OverwritePrompt = true;
                saveDlg.InitialDirectory = Path.GetDirectoryName(scsvfile);
                saveDlg.FileName = Path.GetFileName(scsvfile);

                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    return false;
                }

                scsvfile = saveDlg.FileName;

                if (File.Exists(scsvfile) == true)
                {
                    try
                    {
                        File.Delete(scsvfile);
                    }
                    catch (Exception ex)
                    {
                        tResfile.CloseFile();
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stTech_DCH dch = new stTech_DCH(0);

                tResfile.tmphead.tech.GetDCH(ref dch);

                stDefTestData[] data = new stDefTestData[tResfile.datacount];
                int DataCount = tResfile.read(0, ref data, tResfile.datacount);



                FileStream fs;

                try
                {
                    fs = new FileStream(scsvfile, FileMode.CreateNew, FileAccess.Write);
                }
                catch (Exception ex)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
                StringBuilder sb = new StringBuilder();
                string str;
                string str1;
                str = string.Format("* Source file:{0}", sDataFile);
                sb.AppendLine(str);
                str = string.Format("* Technique file:{0}", tResfile.tmphead.GetTechFilename());
                sb.AppendLine(str);
                
                int share = tResfile.tmphead.tech.irange / DeviceConstants.MAX_IAC_RNGCNT;
                int remain = tResfile.tmphead.tech.irange % DeviceConstants.MAX_IAC_RNGCNT;

                //if (remain == 0) str1 = SM_Number.ToRangeString(tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges[0].iac_rng[share].realmax, "A");
                //else str1 = SM_Number.ToRangeString(tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges[0].iac_rng[share].realmax * tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges[0].iac_rng[share].controlgain, "A");
                if (remain == 0) str1 = SM_Number.ToRangeString(tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges.Gen.iac_rng[share].realmax, "A");
                else str1 = SM_Number.ToRangeString(tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges.Gen.iac_rng[share].realmax * tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges.Gen.iac_rng[share].controlgain, "A"); // 배열

                if (dch.useir == 0) str = string.Format("* Test condition: Discharge current({0})", str1);
                else str = string.Format("* Test condition: Discharge current({0})/ IR Frequency({0:#0.###}Hz)", str1, dch.frequency);

                sb.AppendLine(str);
                sw.WriteLine(sb);

                sw.WriteLine("");
                sw.WriteLine("");
                sw.WriteLine("");
                if (dch.useir == 0) str = "Index,Time(s),Voltage(V),Current(A),Capacity(Ah),Temperature('C),";
                else str = "Index,Time(s),Voltage(V),Current(A),Capacity(Ah),Zreal(Ω),Zimg(Ω),Temperature('C),";
                for (int nPlot = 1; nPlot < MBZA_Constant.MAX_AUXTYPE_CHANNELS; nPlot++)
                {
                    if (mRtData.bChannel[nPlot] == false)
                        continue;
                    str += string.Format("Aux{0}(V),", nPlot);
                }

                sw.WriteLine(str);
                str = "";

                double Capa = 0.0;
                double SumCapa = 0.0;
                double PrevTime = 0;


                for (int i = 0; i < DataCount; i++)
                {
                    Capa = (data[i].TestTime - PrevTime) * data[i].Idc / 3600.0;
                    SumCapa += Capa;
                    PrevTime = data[i].TestTime;

                    str = string.Format("{0},", i + 1);
                    str += GetTimeString(data[i].TestTime) + ",";
                    str += string.Format("{0:G6},", data[i].Vdc);
                    str += string.Format("{0:G6},", data[i].Idc);
                    str += string.Format("{0:G6},", SumCapa);
                    if (dch.useir == 1)
                    {
                        str += string.Format("{0:G6},", data[i].real);
                        str += string.Format("{0:G6},", data[i].img);
                    }

                    str += string.Format("{0:G6},", data[i].Temperature);
                    for(int ch=0;ch< MBZA_Constant.MAX_AUX_CHANNELS;ch++)
                    {
                        if (mRtData.bChannel[ch+1] == false)
                            continue;
                        str += string.Format("{0:G6},", data[i].mdata[ch/4].mdata[ch%4].Vdc);
                    }
                    sw.WriteLine(str);
                }

                sw.Close();
                fs.Close();
                tResfile.CloseFile();

            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                tResfile.CloseFile();
                Cursor = Cursors.Default;
                return false;
            }
            Cursor = Cursors.Default;

            if (MessageBox.Show("You have successfully saved your file. Would you like to open the saved file now?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Process.Start(scsvfile);
            }
            return true;
        }

        public bool SaveMonDataToTextFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string scsvfile = GetSaveDatafilenameToCsvFilename(sDataFile);

            Cursor = Cursors.WaitCursor;

            saveDlg.CustomPlaces.Clear();

            for (int i = 0; i < 10; i++)
            {
                if (Directory.Exists(gBZA.appcfg.PathData[i]))
                {
                    // 왼쪽 링크 바에 커스텀 폴더 추가
                    saveDlg.CustomPlaces.Add(gBZA.appcfg.PathData[i]);
                }
            }

            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }
                if ((enTechType1)tResfile.tmphead.tech.type != enTechType1.TECH_MON)
                {
                    tResfile.CloseFile();
                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }

                saveDlg.Title = "Save as a MON calculation data file.";
                saveDlg.DefaultExt = "*.csv";
                saveDlg.Filter = "DCH calculation data file (*.csv) |*.csv";
                saveDlg.OverwritePrompt = true;
                saveDlg.InitialDirectory = Path.GetDirectoryName(scsvfile);
                saveDlg.FileName = Path.GetFileName(scsvfile);

                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    return false;
                }

                scsvfile = saveDlg.FileName;

                if (File.Exists(scsvfile) == true)
                {
                    try
                    {
                        File.Delete(scsvfile);
                    }
                    catch (Exception ex)
                    {
                        tResfile.CloseFile();
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stTech_MON mon = new stTech_MON(0);

                tResfile.tmphead.tech.GetMON(ref mon);

                stDefTestData[] data = new stDefTestData[tResfile.datacount];
                int DataCount = tResfile.read(0, ref data, tResfile.datacount);



                FileStream fs;

                try
                {
                    fs = new FileStream(scsvfile, FileMode.CreateNew, FileAccess.Write);
                }
                catch (Exception ex)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
                StringBuilder sb = new StringBuilder();
                string str;
                string str1;
                str = string.Format("* Source file:{0}", sDataFile);
                sb.AppendLine(str);
                str = string.Format("* Technique file:{0}", tResfile.tmphead.GetTechFilename());
                sb.AppendLine(str);


                int share = tResfile.tmphead.tech.irange / DeviceConstants.MAX_IAC_RNGCNT;
                int remain = tResfile.tmphead.tech.irange % DeviceConstants.MAX_IAC_RNGCNT;

                //if (remain == 0) str1 = SM_Number.ToRangeString(tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges[0].iac_rng[share].realmax, "A");
                //else str1 = SM_Number.ToRangeString(tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges[0].iac_rng[share].realmax * tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges[0].iac_rng[share].controlgain, "A");
                if (remain == 0) str1 = SM_Number.ToRangeString(tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges.Gen.iac_rng[share].realmax, "A");
                else str1 = SM_Number.ToRangeString(tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges.Gen.iac_rng[share].realmax * tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].ranges.Gen.iac_rng[share].controlgain, "A"); // 배열

                str = string.Format("* Test condition: Monitor)", str1);
                
                sb.AppendLine(str);
                sw.WriteLine(sb);

                sw.WriteLine("");
                sw.WriteLine("");
                sw.WriteLine("");

                str = "Index,Time(s),Voltage(V),Temperature('C),";
                for (int nPlot = 1; nPlot < MBZA_Constant.MAX_AUXTYPE_CHANNELS; nPlot++)
                {
                    if (mRtData.bChannel[nPlot] == false)
                        continue;
                    str += string.Format("Aux{0}(V),", nPlot);
                }

                sw.WriteLine(str);
                str = "";

                double Capa = 0.0;
                double SumCapa = 0.0;
                double PrevTime = 0;


                for (int i = 0; i < DataCount; i++)
                {
                    Capa = (data[i].TestTime - PrevTime) * data[i].Idc / 3600.0;
                    SumCapa += Capa;
                    PrevTime = data[i].TestTime;

                    str = string.Format("{0},", i + 1);
                    str += GetTimeString(data[i].TestTime) + ",";
                    str += string.Format("{0:G6},", data[i].Vdc);
                    str += string.Format("{0:G6},", data[i].Temperature);
                    for (int ch = 0; ch < MBZA_Constant.MAX_AUX_CHANNELS; ch++)
                    {
                        if (mRtData.bChannel[ch + 1] == false)
                            continue;
                        str += string.Format("{0:G6},", data[i].mdata[ch / 4].mdata[ch % 4].Vdc);
                    }
                    sw.WriteLine(str);
                }

                sw.Close();
                fs.Close();
                tResfile.CloseFile();

            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                tResfile.CloseFile();
                Cursor = Cursors.Default;
                return false;
            }
            Cursor = Cursors.Default;

            if (MessageBox.Show("You have successfully saved your file. Would you like to open the saved file now?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Process.Start(scsvfile);
            }
            return true;
        }

        public bool SaveEisDataToTextFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string scsvfile = GetSaveDatafilenameToCsvFilename(sDataFile);

            Cursor = Cursors.WaitCursor;
            saveDlg.CustomPlaces.Clear();

            for (int i = 0; i < 10; i++)
            {
                if (Directory.Exists(gBZA.appcfg.PathData[i]))
                {
                    // 왼쪽 링크 바에 커스텀 폴더 추가
                    saveDlg.CustomPlaces.Add(gBZA.appcfg.PathData[i]);
                }
            }

            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }
                if ((enTechType1)tResfile.tmphead.tech.type != enTechType1.TECH_EIS && (enTechType1)tResfile.tmphead.tech.type != enTechType1.TECH_QIS)
                {
                    Trace.WriteLine("Failed opening file.");
                    tResfile.CloseFile();
                    Cursor = Cursors.Default;
                    return false;
                }
                if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_QIS) saveDlg.Title = "Save as a QIS calculation data file.";
                else saveDlg.Title = "Save as a HFR calculation data file.";
                saveDlg.DefaultExt = "*.csv";
                saveDlg.Filter = "HFR calculation data file (*.csv) |*.csv";
                saveDlg.OverwritePrompt = true;
                saveDlg.InitialDirectory = Path.GetDirectoryName(scsvfile);
                saveDlg.FileName = Path.GetFileName(scsvfile);

                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    return false;
                }

                scsvfile = saveDlg.FileName;

                if (File.Exists(scsvfile) == true)
                {
                    try
                    {
                        File.Delete(scsvfile);
                    }
                    catch (Exception ex)
                    {
                        tResfile.CloseFile();
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stDefTestData[] data = new stDefTestData[tResfile.datacount];
                int DataCount = tResfile.read(0, ref data, tResfile.datacount);


                FileStream fs;

                try
                {
                    fs = new FileStream(scsvfile, FileMode.CreateNew, FileAccess.Write);
                }
                catch (Exception ex)
                {
                    Cursor = Cursors.Default;
                    MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
                StringBuilder sb = new StringBuilder();
                string str;

                str = string.Format("* Source file:{0}", sDataFile);
                sb.AppendLine(str);
                str = string.Format("* Technique file:{0}", tResfile.tmphead.GetTechFilename());
                sb.AppendLine(str);

                sw.WriteLine(sb);

                sw.WriteLine("");
                sw.WriteLine("");
                sw.WriteLine("");

                str = "Index,Time(s),Real(Ω),image(Ω),";
                for (int nPlot = 1; nPlot < MBZA_Constant.MAX_AUXTYPE_CHANNELS; nPlot++)
                {
                    if (mRtData.bChannel[nPlot] == false)
                        continue;
                    str += string.Format("Aux{0}_Real(Ω),", nPlot);
                    str += string.Format("Aux{0}_Image(Ω),", nPlot);
                }

                sw.WriteLine(str);
                str = "";

                double zmag;
                double zph;
                double Yre;
                double Yimg;
                double Ymag;
                double cs;
                double cp;


                for (int i = 0; i < DataCount; i++)
                {
                    zmag = Math.Sqrt(data[i].real * data[i].real + data[i].img * data[i].img);
                    zph = Math.Atan2(data[i].img, data[i].real) * 180.0 / DeviceConstants.PI;
                    Yre = data[i].real / ((data[i].real * data[i].real) + (data[i].img * data[i].img));
                    Yimg = -1.0 * data[i].img / ((data[i].real * data[i].real) + (data[i].img * data[i].img));
                    Ymag = Math.Sqrt((double)(Yre * Yre + Yimg * Yimg));
                    cs = 1.0 / (2.0 * DeviceConstants.PI * data[i].fFreq * -1.0 * data[i].img);
                    cp = Yimg / (2.0 * DeviceConstants.PI * data[i].fFreq);

                    str = string.Format("{0},", i + 1);
                    str += GetTimeString(data[i].TestTime) + ",";
                    str += string.Format("{0:G6},", data[i].real);
                    str += string.Format("{0:G6},", data[i].img);
                    for (int ch = 0; ch < MBZA_Constant.MAX_AUX_CHANNELS; ch++)
                    {
                        if (mRtData.bChannel[ch + 1] == false)
                            continue;
                        str += string.Format("{0:G6},", data[i].mdata[ch / 4].mdata[ch % 4].Zre);
                        str += string.Format("{0:G6},", data[i].mdata[ch / 4].mdata[ch % 4].Zim);
                    }
                    sw.WriteLine(str);
                }

                sw.Close();
                fs.Close();
                tResfile.CloseFile();
            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                tResfile.CloseFile();
                Cursor = Cursors.Default;
                return false;
            }
            Cursor = Cursors.Default;

            if (MessageBox.Show("You have successfully saved your file. Would you like to open the saved file now?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Process.Start(scsvfile);
            }
            return true;
        }

        public bool SaveHfrDataToTextFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string scsvfile = GetSaveDatafilenameToCsvFilename(sDataFile);

            Cursor = Cursors.WaitCursor;
            saveDlg.CustomPlaces.Clear();

            for (int i = 0; i < 10; i++)
            {
                if (Directory.Exists(gBZA.appcfg.PathData[i]))
                {
                    // 왼쪽 링크 바에 커스텀 폴더 추가
                    saveDlg.CustomPlaces.Add(gBZA.appcfg.PathData[i]);
                }
            }

            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed opening file.");
                    Cursor = Cursors.Default;
                    return false;
                }
                if ((enTechType1)tResfile.tmphead.tech.type != enTechType1.TECH_HFR)
                {
                    Trace.WriteLine("Failed opening file.");
                    tResfile.CloseFile();
                    Cursor = Cursors.Default;
                    return false;
                }

                saveDlg.Title = "Save as a HFR calculation data file.";
                saveDlg.DefaultExt = "*.csv";
                saveDlg.Filter = "HFR calculation data file (*.csv) |*.csv";
                saveDlg.OverwritePrompt = true;
                saveDlg.InitialDirectory = Path.GetDirectoryName(scsvfile);
                saveDlg.FileName = Path.GetFileName(scsvfile);

                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    return false;
                }

                scsvfile = saveDlg.FileName;

                if (File.Exists(scsvfile) == true)
                {
                    try
                    {
                        File.Delete(scsvfile);
                    }
                    catch (Exception ex)
                    {
                        tResfile.CloseFile();
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stDefTestData[] data = new stDefTestData[tResfile.datacount];
                int DataCount = tResfile.read(0, ref data, tResfile.datacount);


                FileStream fs;

                try
                {
                    fs = new FileStream(scsvfile, FileMode.CreateNew, FileAccess.Write);
                }
                catch (Exception ex)
                {
                    Cursor = Cursors.Default;
                    MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                StreamWriter sw = new StreamWriter(fs, Encoding.UTF8);
                StringBuilder sb = new StringBuilder();
                string str;

                str = string.Format("* Source file:{0}", sDataFile);
                sb.AppendLine(str);
                str = string.Format("* Technique file:{0}", tResfile.tmphead.GetTechFilename());
                sb.AppendLine(str);

                sw.WriteLine(sb);

                sw.WriteLine("");
                sw.WriteLine("");
                sw.WriteLine("");

                str = "Index,Time(s),Real(Ω),image(Ω),Magnitude(Ω),Phase('C),Cs(F),Cp(F),Vdc(V),";
                for (int nPlot = 1; nPlot < MBZA_Constant.MAX_AUXTYPE_CHANNELS; nPlot++)
                {
                    if (mRtData.bChannel[nPlot] == false)
                        continue;
                    str += string.Format("Aux{0}(Ω),", nPlot);
                }

                sw.WriteLine(str);
                str = "";

                double zmag;
                double zph;
                double Yre;
                double Yimg;
                double Ymag;
                double cs;
                double cp;


                for (int i = 0; i < DataCount; i++)
                {
                    zmag = Math.Sqrt(data[i].real * data[i].real + data[i].img * data[i].img);
                    zph = Math.Atan2(data[i].img, data[i].real) * 180.0 / DeviceConstants.PI;
                    Yre = data[i].real / ((data[i].real * data[i].real) + (data[i].img * data[i].img));
                    Yimg = -1.0 * data[i].img / ((data[i].real * data[i].real) + (data[i].img * data[i].img));
                    Ymag = Math.Sqrt((double)(Yre * Yre + Yimg * Yimg));
                    cs = 1.0 / (2.0 * DeviceConstants.PI * data[i].fFreq * -1.0 * data[i].img);
                    cp = Yimg / (2.0 * DeviceConstants.PI * data[i].fFreq);

                    str = string.Format("{0},", i + 1);
                    str += GetTimeString(data[i].TestTime) + ",";
                    str += string.Format("{0:G6},", data[i].real);
                    str += string.Format("{0:G6},", data[i].img);
                    str += string.Format("{0:G6},", zmag);
                    str += string.Format("{0:G6},", zph);
                    str += string.Format("{0:G6},", cs);
                    str += string.Format("{0:G6},", cp);
                    str += string.Format("{0:G6},", data[i].Vdc);
                    for (int ch = 0; ch < MBZA_Constant.MAX_AUX_CHANNELS; ch++)
                    {
                        if (mRtData.bChannel[ch+1] == false)
                            continue;
                        str += string.Format("{0:G6},", data[i].mdata[ch / 4].mdata[ch % 4].Zre);
                    }
                    sw.WriteLine(str);
                }

                sw.Close();
                fs.Close();
                tResfile.CloseFile();
            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                tResfile.CloseFile();
                Cursor = Cursors.Default;
                return false;
            }
            Cursor = Cursors.Default;

            if (MessageBox.Show("You have successfully saved your file. Would you like to open the saved file now?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Process.Start(scsvfile);
            }
            return true;
        }

        public bool GetDeviceConfigFileinDataFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            stRangeFile mRangeFile = new stRangeFile();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string sSerial;

            String sCfgFilename = "";
            String sCfgDirectory = "";
            String sCfgFullPath = "";

            Cursor = Cursors.WaitCursor;
            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed to open a file.");
                    Cursor = Cursors.Default;
                    return false;
                }
                sSerial = tResfile.tmphead.systemInfo.mSIFCfg.GetSerialNumber();

                sCfgDirectory = gBZA.appcfg.PathRangeInfo;



                sCfgFilename = tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch].GetSerialNumber() + "_Ranges.xml";
                saveDlg.Title = "Save as device range information file.";
                saveDlg.DefaultExt = "*.xml";
                saveDlg.Filter = "device range information file(*.xml) |*.xml";


                saveDlg.InitialDirectory = sCfgDirectory;
                saveDlg.OverwritePrompt = true;
                saveDlg.FileName = sCfgFilename;
                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    tResfile.CloseFile();
                    return false;
                }


                sCfgDirectory = Path.GetDirectoryName(saveDlg.FileName);
                sCfgFilename = Path.GetFileName(saveDlg.FileName);

                sCfgFullPath = Path.Combine(sCfgDirectory, sCfgFilename);



                mRangeFile.mZimCfg = tResfile.tmphead.systemInfo.mZimCfg[tResfile.tmphead.mInfo.sifch];

                XmlSerializer writer = new XmlSerializer(mRangeFile.GetType());

                StreamWriter file = new StreamWriter(sCfgFullPath);

                writer.Serialize(file, mRangeFile);

                file.Close();

                for (int i=0; i< MBZA_Constant.MAX_AUX_BOARD; i++)
                {
                    sCfgFilename = tResfile.tmphead.systemInfo.mZimCfg[i + 1].GetSerialNumber() + "_Ranges.xml";
                    sCfgFullPath = Path.Combine(sCfgDirectory, sCfgFilename);

                    mRangeFile.mZimCfg = tResfile.tmphead.systemInfo.mZimCfg[i+1];

                    file = new StreamWriter(sCfgFullPath);
                    writer.Serialize(file, mRangeFile);

                    file.Close();
                }

                tResfile.CloseFile();

            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                tResfile.CloseFile();
                Cursor = Cursors.Default;
                return false;
            }
            Cursor = Cursors.Default;
            return true;
        }
        

        private void RefreshSearchFiles(string path)
        {
            Cursor = Cursors.WaitCursor;
            bSearch = true;
            txtCurPath.Text = path;
            m_curPath = path;

            chkwithsubfolder.Enabled = false;
            chkTechType0.Enabled = false;
            chkTechType1.Enabled = false;
            chkTechType2.Enabled = false;
            chkTechType3.Enabled = false;
            chkTechType4.Enabled = false;
            chkTechType5.Enabled = false;
            LnkClose.Enabled = false;
            btChgRoot.Enabled = false;
            btSearch.Enabled = false;
            btrefresh.Enabled = false;
            LnkSaveTechFile.Enabled = false;
            LnkSaveRngFile.Enabled = false;
            LnkSavePrrDataFile.Enabled = false;
            LnkSaveResmplFile.Enabled = false;


            CheckTech[0] = chkTechType0.Checked;
            CheckTech[1] = chkTechType1.Checked;
            CheckTech[2] = chkTechType2.Checked;
            CheckTech[3] = chkTechType3.Checked;
            CheckTech[4] = chkTechType4.Checked;
            CheckTech[5] = chkTechType5.Checked;
            CheckTech[6] = chkTechType6.Checked;
            bSearchSubfolder = chkwithsubfolder.Checked;


            DirectoryInfo rootDirInfo = new DirectoryInfo(m_curPath);

            WalkDirectoryTree(rootDirInfo, bSearchSubfolder);

            bSearch = false;

            if (listView1.Items.Count > 0)
            {
                listView1.Items[0].Selected = true;
                listView1.Items[0].Focused = true;
            }

            Properties.Settings.Default.Opt_SearchType1 = CheckTech[0];
            Properties.Settings.Default.Opt_SearchType2 = CheckTech[1];
            Properties.Settings.Default.Opt_SearchType3 = CheckTech[2];
            Properties.Settings.Default.Opt_SearchType4 = CheckTech[3];
            Properties.Settings.Default.Opt_SearchType5 = CheckTech[4];
            Properties.Settings.Default.Opt_SearchType6 = CheckTech[5];
            Properties.Settings.Default.Opt_SearchType7 = CheckTech[6];
            
            Properties.Settings.Default.Opt_SearchSubfolder = bSearchSubfolder;
            Properties.Settings.Default.Path_Searchdata = m_curPath;

            Properties.Settings.Default.Save();

            chkwithsubfolder.Enabled = true;
            chkTechType0.Enabled = true;
            chkTechType1.Enabled = true;
            chkTechType2.Enabled = true;
            chkTechType3.Enabled = true;
            chkTechType4.Enabled = true;
            chkTechType5.Enabled = true;
            LnkClose.Enabled = true;
            btChgRoot.Enabled = true;
            btSearch.Enabled = true;
            btrefresh.Enabled = true;

            LnkSaveTechFile.Enabled = true;
            LnkSaveRngFile.Enabled = true;
            LnkSavePrrDataFile.Enabled = true;
            LnkSaveResmplFile.Enabled = true;


            Cursor = Cursors.Default;
        }

        private void InitView()
        {
            InitGraph();
            txtFileInfor.Text = "";
            LnkSaveTechFile.Enabled = false;
            LnkSaveRngFile.Enabled = false;
            LnkSavePrrDataFile.Enabled = false;
            LnkSaveResmplFile.Enabled = false;
        }

        private void btChgRoot_Click(object sender, EventArgs e)
        {

            FolderBrowserDialog fbd = new FolderBrowserDialog();
            fbd.SelectedPath = m_curPath;
            fbd.ShowNewFolderButton = false;
            fbd.Description = "Select a folder to search for data files.";
            if (fbd.ShowDialog(this) == DialogResult.OK)
            {
                InitView();
                RefreshSearchFiles(fbd.SelectedPath);
            }
        }

        private void btSearch_Click(object sender, EventArgs e)
        {
            InitView();
            RefreshSearchFiles(m_curPath);
        }

        private void RefreshFileView(string sDataFile)
        {
            int datacnt = 0;
            if (GetHHeadinDataFile(sDataFile, ref mHead, ref datacnt) == false)
            {
                Trace.WriteLine("Err read data file.");
                txtFileInfor.Text = string.Format("* Filename: {0}.\r\n", sDataFile);
                enType = enTechType1.TECH_ERR;

                LnkSaveTechFile.Visible = false;
                LnkSaveRngFile.Visible = false;
                LnkSaveResmplFile.Visible = false;

                LnkSavePrrDataFile.Visible = false;
                return;
            }

            if (mHead.tech.type > (ushort)enTechType1.TECH_DCH || mHead.tech.type < 0)
            {
                enType = enTechType1.TECH_ERR;
            }
            else enType = (enTechType1)mHead.tech.type;


            txtFileInfor.Text = GetViewInfoStr(sDataFile, mHead, datacnt);

            if (enType == enTechType1.TECH_ERR)
            {
                LnkSaveTechFile.Visible = false;
                LnkSaveRngFile.Visible = false;
                LnkSaveResmplFile.Visible = false;

                LnkSavePrrDataFile.Visible = false;
            }
            else if (enType == enTechType1.TECH_PRR)
            {
                LnkSavePrrDataFile.Visible = true;
                LnkSaveTechFile.Visible = true;
                LnkSaveRngFile.Visible = true;
                LnkSaveResmplFile.Visible = true;
            }
            else
            {
                LnkSavePrrDataFile.Visible = false;
                LnkSaveTechFile.Visible = true;
                LnkSaveRngFile.Visible = true;
                LnkSaveResmplFile.Visible = true;
            }
        }

        private void WalkDirectoryTree(DirectoryInfo dirInfo,bool bsubdir = false)
        {

            FileInfo[] files = null;
            DirectoryInfo[] subDirs = null;
            enTechType1 enTType = enTechType1.TECH_ERR;
            string sDatafilename;
            int techidx;
            try
            {
                files = dirInfo.GetFiles("*.zmf");    // 검색 단어가 앞 부분과 일치한 폴더와 파일을 검색.
            }
            catch (UnauthorizedAccessException e)
            {
                Trace.WriteLine(e.Message);
            }
            catch (DirectoryNotFoundException e)
            {
                Trace.WriteLine(e.Message);
            }


            if (files != null)
            {
                DirectoryInfo tempDirInfo = new DirectoryInfo(m_curPath);

                if (dirInfo.ToString() == tempDirInfo.ToString())
                {
                    listView1.Items.Clear();
                }

                foreach (FileInfo fi in files)
                {
                    if (GetTechtypeinDataFile(fi.FullName, ref enTType) == false)
                    {
                        continue;
                    }

                    techidx = (int)enTType;
                    techidx++;


                    if (CheckTech[techidx])
                    {
                        sDatafilename = fi.FullName;
                        sDatafilename = sDatafilename.Replace(m_curPath, "");
                        if (sDatafilename.Substring(0, 1) == "\\")
                        {
                            sDatafilename = sDatafilename.Substring(1);
                        }
                        ListViewItem item = new ListViewItem(sDatafilename);
                        //item.SubItems.Add(Path.GetFileName(sDatafilename));
                        item.SubItems.Add(Extensions.GetEnumDescription(enTType));
                        item.SubItems.Add(((fi.Length / 1000) + 1).ToString() + "KB");
                        item.SubItems.Add(fi.LastWriteTime.ToString());
                        item.Tag = fi.FullName;
                        listView1.Items.Add(item);
                    }



                }
                if (bsubdir)
                {
                    subDirs = dirInfo.GetDirectories();
                    foreach (DirectoryInfo di in subDirs)
                    {
                        WalkDirectoryTree(di, bsubdir);
                    }
                }
            }
        }

        private void listView1_DoubleClick(object sender, EventArgs e)
        {
            
        }

        private void frmDataTools_Load(object sender, EventArgs e)
        {
 
            chkwithsubfolder.Checked = bSearchSubfolder;

            chkTechType0.Checked = CheckTech[0];
            chkTechType1.Checked = CheckTech[1];
            chkTechType2.Checked = CheckTech[2];
            chkTechType3.Checked = CheckTech[3];
            chkTechType4.Checked = CheckTech[4];
            chkTechType5.Checked = CheckTech[5];
            chkTechType6.Checked = CheckTech[6];

            LnkSavePrrDataFile.Visible = false;
            LnkSaveTechFile.Visible = true;
            LnkSaveRngFile.Visible = true;
            LnkSaveResmplFile.Visible = true;
            enType = enTechType1.TECH_ERR;
            sFilename = "";

            InitGraph();

            RefreshSearchFiles(m_curPath);
        }

        public bool GetHHeadinDataFile(String sDataFile, ref stResHeader head, ref int datacnt)
        {
            FileResult tResfile = new FileResult();
            datacnt = 0;
            try
            {
                if (tResfile.Open(sDataFile) == false)
                {

                    Trace.WriteLine("Failed to open a file.");
                    return false;
                }
                if (tResfile.ReadHead(ref head) == false)
                {
                    Trace.WriteLine("Failed to read a head information.");
                    return false;
                }
                datacnt = tResfile.datacount;
                tResfile.CloseFile();
            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
                return false;
            }
            return true;
        }

        public string GetViewInfoStr(string sDataFile, stResHeader head, int datacnt)
        {
            string sinfo = "";
            string sTemp = "";
  

            sTemp = string.Format("* Filename: {0}\r\n", sDataFile);
            sinfo += sTemp;

            sTemp = string.Format("* BATT Id: {0}\r\n* Capacity: {1}mAH\r\n* Tester: {2}\r\n", head.mInfo.GetBattId(), SM_Number.ToString(head.mInfo.Capa, enSM_TypeNumberToString.SIPrefix, 5)   , head.mInfo.GetUser());
            sinfo += sTemp;

            FileInfo fi = new FileInfo(sDataFile);

            sTemp = string.Format("* Data count: {0}\r\n* Filesize: {1} KB\r\n", datacnt, ((fi.Length / 1000) + 1));
            sinfo += sTemp;

            DateTime sdt = new DateTime(head.mInfo.rtc_begin.tick * TimeSpan.TicksPerMillisecond);
            DateTime edt = new DateTime(head.mInfo.rtc_end.tick * TimeSpan.TicksPerMillisecond);


            sTemp = string.Format("* Test Duration: {0:u}~{1:u}\r\n", sdt, edt);
            sTemp.Replace("Z", "");
            sinfo += sTemp;

            sTemp = string.Format("* Last status: {0}\r\n", ((enStatError)head.mInfo.Error).GetDescription());
            sinfo += sTemp;

            int sifch = head.mInfo.sifch;
            string zimSerial = (sifch >= 0 && sifch < head.systemInfo.mZimCfg.Length)
                ? head.systemInfo.mZimCfg[sifch].info.GetSerialNumber()
                : "Unknown";
            sTemp = string.Format("* Device: ZM's Ch-{0} [SIF({1})-Ch{2}({3})]\r\n", head.mInfo.Ch + 1, head.systemInfo.mSIFCfg.GetSerialNumber(), head.mInfo.sifch + 1, zimSerial);
            sinfo += sTemp;

            sTemp = string.Format("* Tecnnique<{0}>: {1}\r\n", Extensions.GetEnumDescription(enType), head.GetTechFilename());
            sinfo += sTemp;

            sinfo += "* Memo: ";
            sinfo += head.mInfo.GetMemo();
           

            return sinfo;
        }
        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bSearch) return;
            if (listView1.SelectedItems.Count > 0)
            {
                sFilename = (string)listView1.SelectedItems[0].Tag;
                LoadFile(sFilename);
            }
            //radioButton1.Checked = true;
        }

        private void LnkSaveTechFile_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            GetTechFileinDataFile(sFilename, true);
        }

        private void btrefresh_Click(object sender, EventArgs e)
        {
            LoadFile(sFilename);
        }

        private void LnkSaveRngFile_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            GetDeviceConfigFileinDataFile(sFilename);
        }

        private void LnkSaveResmplFile_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            SaveCondDataFile(sFilename);
        }

        private void LnkSavePrrDataFile_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if(enType == enTechType1.TECH_PRR)    SavePrrDataToTextFile(sFilename);
            else if (enType == enTechType1.TECH_HFR) SaveHfrDataToTextFile(sFilename);
            else if (enType == enTechType1.TECH_DCH) SaveDchDataToTextFile(sFilename);
            else if (enType == enTechType1.TECH_MON) SaveMonDataToTextFile(sFilename);
            else SaveEisDataToTextFile(sFilename);
        }

        private void InitGraph()
        {
            grp1.ResetZoomPan();

            int nClrPlot = 0;


            for (int nPlot = 0; nPlot < 47; nPlot++)
            {
                grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
                grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
                grp1.Plots[nPlot].HistoryCapacity = 100000;

                nClrPlot = nPlot % (MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2);

                grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
                grp1.Plots[nPlot].PointStyle = GetPlotPointer(grpvars.GrpItemsRT.PlotPointer[nClrPlot]);
                
                grp1.Plots[nPlot].LineColor = Color.FromArgb(grpvars.GrpItemsRT.PlotColor[nClrPlot]);
                grp1.Plots[nPlot].PointColor = Color.FromArgb(grpvars.GrpItemsRT.PlotColor[nClrPlot]);
                
                grp1.Plots[nPlot].SmoothUpdates = true;
                
            }

            grp1.PlotAreaColor = Color.FromArgb(grpvars.GrpItemsRT.BackColor);
            grp1.PlotAreaBorder = Border.Dotted;


            grp1.XAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);            
            grp1.XAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);
            grp1.XAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);
            grp1.XAxes[0].MinorDivisions.TickVisible = false;
            grp1.XAxes[0].CaptionForeColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);

            grp1.XAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.GrpItemsRT.GridColor);
            grp1.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.XAxes[0].MajorDivisions.GridVisible = true;
            grp1.YAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[0].MajorDivisions.TickColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);
            grp1.YAxes[0].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);
            grp1.YAxes[0].MinorDivisions.TickColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);
            grp1.YAxes[0].MinorDivisions.TickVisible = false;
            grp1.YAxes[0].CaptionForeColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);

            grp1.YAxes[0].MajorDivisions.GridColor = Color.FromArgb(grpvars.GrpItemsRT.GridColor);
            grp1.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[0].MajorDivisions.GridVisible = true;
            grp1.YAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[1].MajorDivisions.TickColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);
            grp1.YAxes[1].MajorDivisions.LabelForeColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);
            grp1.YAxes[1].MinorDivisions.TickColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);
            grp1.YAxes[1].MinorDivisions.TickVisible = false;
            grp1.YAxes[1].CaptionForeColor = Color.FromArgb(grpvars.GrpItemsRT.Axis_Color);

            grp1.YAxes[1].MajorDivisions.GridColor = Color.FromArgb(grpvars.GrpItemsRT.GridColor);
            grp1.YAxes[1].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[1].MajorDivisions.GridVisible = true;
            grp1.YAxes[1].MinorDivisions.GridVisible = false;

            grp1.Cursors[0].LabelBackColor = Color.FromArgb(grpvars.GrpItemsRT.BackColor);

            legend1.AutoSize = false;
            legend1.Visible = true;
            grp1.CaptionVisible = false;
            grp1.ClearData();
        }
        NationalInstruments.UI.PointStyle GetPlotPointer(int nPoint)
        {
            NationalInstruments.UI.PointStyle ret = NationalInstruments.UI.PointStyle.None;
            switch (nPoint)
            {
                case 0: ret = NationalInstruments.UI.PointStyle.EmptyCircle; break;
                case 1: ret = NationalInstruments.UI.PointStyle.EmptyDiamond; break;
                case 2: ret = NationalInstruments.UI.PointStyle.EmptySquare; break;
                case 3: ret = NationalInstruments.UI.PointStyle.EmptyTriangleDown; break;
                case 4: ret = NationalInstruments.UI.PointStyle.EmptySquare; break;
                case 5: ret = NationalInstruments.UI.PointStyle.EmptyTriangleDown; break;
                case 6: ret = NationalInstruments.UI.PointStyle.EmptyTriangleLeft; break;
                case 7: ret = NationalInstruments.UI.PointStyle.EmptyTriangleRight; break;
                case 8: ret = NationalInstruments.UI.PointStyle.EmptyTriangleUp; break;
                case 9: ret = NationalInstruments.UI.PointStyle.SolidCircle; break;
                case 10: ret = NationalInstruments.UI.PointStyle.SolidDiamond; break;
                case 11: ret = NationalInstruments.UI.PointStyle.SolidSquare; break;
                case 12: ret = NationalInstruments.UI.PointStyle.SolidTriangleDown; break;
                case 13: ret = NationalInstruments.UI.PointStyle.SolidTriangleLeft; break;
                case 14: ret = NationalInstruments.UI.PointStyle.SolidTriangleRight; break;
                case 15: ret = NationalInstruments.UI.PointStyle.SolidTriangleUp; break;

                default: ret = NationalInstruments.UI.PointStyle.None; break;
            }
            return ret;
        }
        private void LoadFile(string sDataFile)
        {
            int oldcycel = -1;
            FileResult tResfile = new FileResult();
            Cursor = Cursors.WaitCursor;

            if (File.Exists(sDataFile) == false)
            {
                txtFileInfor.Text = string.Format("* Filename: {0}.\r\n", sDataFile);
                enType = enTechType1.TECH_ERR;

                LnkSaveTechFile.Visible = false;
                LnkSaveRngFile.Visible = false;
                LnkSaveResmplFile.Visible = false;

                LnkSavePrrDataFile.Visible = false;
                Cursor = Cursors.Default;
                MessageBox.Show("Not found a file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (tResfile.Open(sDataFile) == false)
            {
                txtFileInfor.Text = string.Format("* Filename: {0}.\r\n", sDataFile);
                enType = enTechType1.TECH_ERR;

                LnkSaveTechFile.Visible = false;
                LnkSaveRngFile.Visible = false;
                LnkSaveResmplFile.Visible = false;

                LnkSavePrrDataFile.Visible = false;
                Cursor = Cursors.Default;
                MessageBox.Show("Failed to open file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            mHead.ToWritePtr(tResfile.tmphead.ToByteArray());

            if (tResfile.tmphead.tech.type >= System.Enum.GetValues(typeof(enTechType1)).Length || tResfile.tmphead.tech.type < 0)
            {
                enType = enTechType1.TECH_ERR;
            }
            else enType = (enTechType1)tResfile.tmphead.tech.type;

            txtFileInfor.Text = GetViewInfoStr(sDataFile, tResfile.tmphead, tResfile.datacount);

            if (enType == enTechType1.TECH_ERR)
            {
                LnkSaveTechFile.Visible = false;
                LnkSaveRngFile.Visible = false;
                LnkSaveResmplFile.Visible = false;

                LnkSavePrrDataFile.Visible = false;
            }
            else if (enType == enTechType1.TECH_PRR || enType == enTechType1.TECH_HFR || enType == enTechType1.TECH_DCH || enType == enTechType1.TECH_MON
                 || enType == enTechType1.TECH_QIS || enType == enTechType1.TECH_EIS)
            {
                if (enType == enTechType1.TECH_PRR)
                {
                    LnkSavePrrDataFile.Text = "Process the PRR test results and save them to a text file.";
                }
                else if (enType == enTechType1.TECH_HFR)
                {
                    LnkSavePrrDataFile.Text = "Process the HFR test results and save them to a text file.";
                }
                else if (enType == enTechType1.TECH_DCH)
                {
                    LnkSavePrrDataFile.Text = "Process the DCH test results and save them to a text file.";
                }
                else if (enType == enTechType1.TECH_MON)
                {
                    LnkSavePrrDataFile.Text = "Process the MON test results and save them to a text file.";
                }
                else 
                {
                    LnkSavePrrDataFile.Text = "Process the QIS or EIS test results and save them to a text file.";
                }
                LnkSavePrrDataFile.Visible = true;
                LnkSaveTechFile.Visible = true;
                LnkSaveRngFile.Visible = true;
                LnkSaveResmplFile.Visible = true;
            }
            else
            {
                LnkSavePrrDataFile.Visible = false;
                LnkSaveTechFile.Visible = true;
                LnkSaveRngFile.Visible = true;
                LnkSaveResmplFile.Visible = true;
            }


            stDefTestData[] data = new stDefTestData[tResfile.datacount];
            int DataCount = tResfile.read(0, ref data, tResfile.datacount);
            mRtData.ApplyUseChannel(tResfile.tmphead.systemInfo, tResfile.tmphead.mInfo.sifch);

            mRtData.Initialize(tResfile.tmphead.tech);

            if (DataCount > 0)
            {
                mRtData.Append(data, DataCount, ref oldcycel);
            }
            RedrawGraph();
            tResfile.CloseFile();
            Cursor = Cursors.Default;
        }

       

        private void InitGraphType(bool brefresgraph = true)
        {
           // Point tpos;
            if (brefresgraph == true)
            {
                if (enType == enTechType1.TECH_HFR)
                {
                    InitGraphHFR();
                }
                else if (enType == enTechType1.TECH_PRR)
                {
                    InitGraphPRR();
                }
                else if (enType == enTechType1.TECH_MON)
                {
                    InitGraphMON();
                }
                else if (enType == enTechType1.TECH_QIS)
                {
                    InitGraphQIS();
                }
                else if (enType == enTechType1.TECH_DCH)
                {
                    InitGraphDCH();
                }
                else
                {
                    InitGraphEIS();
                }

                grp1.ClearData();

                grp1.InteractionModeDefault = GraphDefaultInteractionMode.None;
                grp1.Cursors[0].Visible = false;
                grp1.Cursors[0].LabelVisible = false;
                
                radioButton1.Checked = true;
                radioButton_CheckedChanged(null, null);
                radioButton2.Enabled = true;
                radioButton3.Enabled = true;
                radioButton4.Enabled = true;
                for (int bd = 0; bd < MBZA_Constant.MAX_AUX_BOARD; bd++)
                {
                    if (mRtData.bChannel[bd*4+1] == false)
                    {
                        switch(bd)
                        {
                            case 0:
                                radioButton2.Enabled = false;
                                break;
                            case 1:
                                radioButton3.Enabled = false;
                                break;
                            case 2:
                                radioButton4.Enabled = false;
                                break;
                        }
                    }
                }
            }
        }

        private void InitGraphQIS()
        {
            int nPlot = 0;

            LetPlotsInvisible();
            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            grp1.XAxes[0].Visible = true;
            xTimemode = false;

            grp1.YAxes[0].Caption = "-Z img(Ω)";
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;

            grp1.YAxes[1].Caption = "";
            grp1.YAxes[1].Visible = false;

            LegItems = 0;
            nPlot = 0;

            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
            grp1.Plots[nPlot].Visible = true; // 0206 6

            legend1.Items[LegItems].Text = "-Z img(Main)";
            legend1.Items[LegItems].Visible = true;
            nPlot++;
            LegItems++;

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == true)
                {
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                    grp1.Plots[nPlot].Visible = true;
                    legend1.Items[LegItems].Text = "-Z img(Aux" + i.ToString() + ")";
                    legend1.Items[LegItems].Visible = true;
                    nPlot++;
                    LegItems++;
                }
            }
        }

        private void InitGraphMON()
        {
            LetPlotsInvisible();

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.XAxes[0].Visible = true;
            xTimemode = true;

            grp1.YAxes[0].Caption = "Eoc(V)";
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[1].Caption = "Temp.(°C)";
            grp1.YAxes[1].Visible = true;
            grp1.YAxes[1].Mode = AxisMode.Fixed;

            int nPlot = 0; //0206 0
            LegItems = 0;

            
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
            legend1.Items[LegItems].Text = "Eoc(Main)";
            legend1.Items[LegItems].Visible = true;
            nPlot++;
            LegItems++;

            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
            legend1.Items[LegItems].Text = "Temp.(Main)";
            legend1.Items[LegItems].Visible = true;
            nPlot++;
            LegItems++;

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == true)
                {
                    grp1.Plots[nPlot].Visible = true;
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

                    legend1.Items[LegItems].Text = "Eoc(Aux" + i.ToString() + ")";
                    legend1.Items[LegItems].Visible = true; 
                    LegItems++;
                    nPlot ++;
                }
            }

        }

        private void InitGraphDCH()
        {
            LetPlotsInvisible();

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.XAxes[0].Visible = true;
            xTimemode = true;

            grp1.YAxes[0].Caption = "Vdc(V)";
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;

            grp1.YAxes[1].Caption = "Temp.(°C)";
            grp1.YAxes[1].Visible = true;
            grp1.YAxes[0].Mode = AxisMode.Fixed;



            int nPlot = 0; //0206 0
            LegItems = 0;

            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
            legend1.Items[LegItems].Text = "Vdc(Main)";
            legend1.Items[LegItems].Visible = true;
            nPlot++;
            LegItems++;

            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
            legend1.Items[LegItems].Text = "Temp.(Main)";
            legend1.Items[LegItems].Visible = true;
            nPlot++;
            LegItems++;

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == true)
                {
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                    grp1.Plots[nPlot].Visible = true;
                    legend1.Items[LegItems].Text = "Vdc(Aux" + i.ToString() + ")";
                    legend1.Items[LegItems].Visible = true;
                    nPlot++;
                    LegItems++;
                }
            }

        }
        private void InitGraphEIS()
        {
            int nPlot;
            LetPlotsInvisible();
            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            xTimemode = false;
            grp1.XAxes[0].Visible = true;

            grp1.YAxes[0].Caption = "-Z img(Ω)";
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;

            grp1.YAxes[1].Caption = "";
            grp1.YAxes[1].Visible = false;

            nPlot = 0;
            LegItems = 0;

            legend1.Items[LegItems].Text = "-Zimg(Main)";
            legend1.Items[LegItems].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
            grp1.Plots[nPlot].Visible = true;  //0206 6
            LegItems++;
            nPlot++;

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == true)
                {
                    grp1.Plots[nPlot].Visible = true;
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                    legend1.Items[LegItems].Text = "-Zimg(Aux" + i.ToString() + ")";
                    legend1.Items[LegItems].Visible = true;
                    nPlot ++;
                    LegItems++;
                }
            }
        }

        private void InitGraphHFR()
        {
            int nPlot;

            LetPlotsInvisible();
            string sVolt = "Vdc";
            if (mHead.tech.GetHFRLoadOff()) sVolt = "Eoc";


            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            xTimemode = true;
            grp1.XAxes[0].Visible = true;

            grp1.YAxes[0].Caption = "Z real(Ω)";
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;


            grp1.YAxes[1].Caption = sVolt + "(V)";
            legend1.Items[1].Text = sVolt;
            grp1.YAxes[1].Visible = true;
            grp1.YAxes[1].Mode = AxisMode.AutoScaleLoose;

            nPlot = 0; //0206 0
            LegItems = 0;
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
            legend1.Items[LegItems].Text = "Z real(Main)";
            legend1.Items[LegItems].Visible = true;
            nPlot++;
            LegItems++;

            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
            legend1.Items[LegItems].Text = sVolt + "(Main)";
            legend1.Items[LegItems].Visible = true;
            nPlot++;
            LegItems++;
            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == true)
                {
                    grp1.Plots[nPlot].Visible = true;
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

                    legend1.Items[LegItems].Text = "Z real(Aux" + i.ToString() + ")";
                    legend1.Items[LegItems].Visible = true; // false;
                    nPlot++;
                    LegItems++;

                    grp1.Plots[nPlot].Visible = true;
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

                    legend1.Items[LegItems].Text = sVolt + "(Aux" + i.ToString() + ")";
                    legend1.Items[LegItems].Visible = true; // false;
                    nPlot++;
                    LegItems++;
                }
            }

        }

        private void InitGraphPRR()
        {
            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            xTimemode = true;
            grp1.XAxes[0].Visible = true;

            grp1.YAxes[0].Caption = "Rs(Ω)";
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;

            grp1.YAxes[1].Caption = "P_Rp(Ω)";
            grp1.YAxes[1].Visible = true;
            grp1.YAxes[1].Mode = AxisMode.AutoScaleLoose;


            int nPlot = 0;
            LegItems = 0;
            
            string sItem;
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if(i == 0)sItem = "(Main)";
                else sItem = string.Format("(Aux{0})", i);
                if (mRtData.bChannel[i] == true)
                {
                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
                    grp1.Plots[nPlot].Visible = true;
                    legend1.Items[LegItems].Text = "Rs" + sItem;
                    legend1.Items[LegItems].Visible = true;
                    nPlot++;
                    LegItems++;

                    grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
                    grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
                    grp1.Plots[nPlot].Visible = true;
                    legend1.Items[LegItems].Text = "P_Rp" + sItem;
                    legend1.Items[LegItems].Visible = true;
                    nPlot++;
                    LegItems++;
                }
            }
            
        }
        private void LetPlotsInvisible()
        {
            for (int nPlot = 0; nPlot < 47; nPlot++)
            {
                grp1.Plots[nPlot].Visible = false;
                legend1.Items[nPlot].Visible = false;
            }
        }

        private void RefreshGraphEIS()
        {
            //double maxval;
            //double minval;
            //double cmpval;

            int plotcount = mRtData.rtgrp.item[0].plot[0].ly[0].Count;

            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[plotcount];
            double[] pty = new double[plotcount];


            if (plotcount == 0) return;

            InitGraphType();

            int nPlot = 0;

            tx = mRtData.rtgrp.item[0].plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
            nPlot++;

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false)
                    continue;
                tx = mRtData.rtgrp.item[i].plot[0].lx[0].ToArray();
                ty = mRtData.rtgrp.item[i].plot[0].ly[0].ToArray();
                Array.Copy(tx, 0, ptx, 0, plotcount);
                Array.Copy(ty, 0, pty, 0, plotcount);
                grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
                nPlot++;
            }
            grp1.XAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;
            //grp1.YAxes[1].Mode = AxisMode.Fixed;

            // set y axis
            /*maxval = mRtData.rtgrp.item[0].plot[0].Maxval[0];
            minval = mRtData.rtgrp.item[0].plot[0].Minval[0];

            for(int i=1; i< MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false) continue;
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[0])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[0];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[0])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[0];
                }
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[1])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[1];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[1])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[1];
                }
            }
            cmpval = Math.Abs(maxval);
            if (cmpval < Math.Abs(minval))
            {
                cmpval = Math.Abs(minval);
            }
            maxval = maxval + (cmpval * GrpSpaceRate);
            minval = minval - (cmpval * GrpSpaceRate);
            if (minval == maxval)
            {
                if (maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }
                else
                {
                    minval -= minval * 0.1;
                    maxval += maxval * 0.1;
                }
            }
            else if (maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);

            // set x axis
            maxval = mRtData.rtgrp.item[0].plot[0].Maxval[2];
            minval = mRtData.rtgrp.item[0].plot[0].Minval[2];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false) continue;
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[2])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[2];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[2])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[2];
                }
            }

            cmpval = Math.Abs(maxval);
            if (cmpval < Math.Abs(minval))
            {
                cmpval = Math.Abs(minval);
            }
            maxval = maxval + (cmpval * GrpSpaceRate);
            minval = minval - (cmpval * GrpSpaceRate);
            if (minval == maxval)
            {
                if (maxval == 0.0)
                {
                    minval = -1.0;
                    maxval = +1.0;
                }
                else
                {
                    minval -= minval * 0.1;
                    maxval += maxval * 0.1;
                }
            }
            else if (maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            
            grp1.XAxes[0].Range = new Range(minval, maxval);
            */
        }


        private void RefreshGraphQIS()
        {
            RefreshGraphEIS();
      
        }

        private void RefreshGraphHFR()
        {
            //double maxval;
           // double minval;
            //double cmpval;
            int nPlot = 0;

            // item[0].plot[0]: main Zre
            // item[0].plot[1]: vdc
            // item[ch].plot[0]: aux Zre
            int plotcount = mRtData.rtgrp.item[0].plot[1].ly[0].Count;

            InitGraphType();

            if (plotcount == 0) return;


            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[plotcount];
            double[] pty = new double[plotcount];
            double time = -1.0;

            tx = mRtData.rtgrp.item[0].plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);

            time = ptx[plotcount - 1];
            grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
            nPlot++;

            tx = mRtData.rtgrp.item[0].plot[1].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[1].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);

            time = ptx[plotcount - 1];
            grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
            nPlot++;

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false)
                    continue;
                ptx = mRtData.rtgrp.item[i].plot[0].lx[0].ToArray();
                pty = mRtData.rtgrp.item[i].plot[0].ly[0].ToArray();
                grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
                nPlot++;

                ptx = mRtData.rtgrp.item[i].plot[1].lx[0].ToArray();
                pty = mRtData.rtgrp.item[i].plot[1].ly[0].ToArray();
                grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
                nPlot++;
            }

            grp1.XAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[1].Mode = AxisMode.AutoScaleLoose;

            // y axis0
            /*cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[0]);
            }
            maxval = mRtData.rtgrp.item[0].plot[0].Maxval[0];
            minval = mRtData.rtgrp.item[0].plot[0].Minval[0];

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false) continue;
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[0])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[0];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[0])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[0];
                }
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[1])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[1];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[1])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[1];
                }
            }
            maxval = maxval + (cmpval * GrpSpaceRate);
            minval = minval - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);

            // y axis1
            maxval = mRtData.rtgrp.item[0].plot[1].Maxval[0];
            minval = mRtData.rtgrp.item[0].plot[1].Minval[0];

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false) continue;
                if (maxval < mRtData.rtgrp.item[i].plot[1].Maxval[0])
                {
                    maxval = mRtData.rtgrp.item[i].plot[1].Maxval[0];
                }
                if (minval > mRtData.rtgrp.item[i].plot[1].Minval[0])
                {
                    minval = mRtData.rtgrp.item[i].plot[1].Minval[0];
                }
                if (maxval < mRtData.rtgrp.item[i].plot[1].Maxval[1])
                {
                    maxval = mRtData.rtgrp.item[i].plot[1].Maxval[1];
                }
                if (minval > mRtData.rtgrp.item[i].plot[1].Minval[1])
                {
                    minval = mRtData.rtgrp.item[i].plot[1].Minval[1];
                }
            }
            maxval = maxval + (cmpval * GrpSpaceRate);
            minval = minval - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[1].Range = new Range(minval, maxval);
            */

            RefreshGraphAxisTimeView(time);
        }

        private void RefreshGraphAxisTimeView(double time)
        {
            double value = 0.0;

            if (xTimemode == true && time >= 0.0)
            {
                value = time;
                if (value < 60.0)
                {
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
                }
                else if (value < 3600.0)
                {
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_mm;
                }
                else if (value < 86400)
                {
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_hh;
                }
                else
                {
                    grp1.XAxes[0].MajorDivisions.LabelFormat = fs_dd;
                }
            }
        }
        private void RefreshGraphPRR()
        {

            //double maxval;
            //double minval;
            //double cmpval;

            if (mRtData.arrcnt == 0) return;

            int plotcount = mRtData.rtgrp.item[0].plot[0].ly[0].Count;
            double time = -1.0;

            InitGraphType();

            if (plotcount <= 0) return;

            double[] ptx = new double[plotcount];
            double[] pty = new double[plotcount];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                ptx = new double[plotcount];
                pty = new double[plotcount];
            }
            
            int nPlot = 0;
            
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[nPlot] == false)
                    continue;

                ptx = mRtData.rtgrp.item[i].plot[0].lx[0].ToArray();
                time = ptx[plotcount - 1];
                pty = mRtData.rtgrp.item[i].plot[0].ly[0].ToArray();
                grp1.Plots[nPlot].PlotXYAppend(ptx, pty); //
                nPlot++;

                if(mRtData.arrcnt >= 3)
                {
                    ptx = mRtData.rtgrp.item[i].plot[0].lx[2].ToArray();
                    time = ptx[plotcount - 1];
                    pty = mRtData.rtgrp.item[i].plot[0].ly[2].ToArray();
                    grp1.Plots[nPlot].PlotXYAppend(ptx, pty); //
                    nPlot++;
                }
                else
                {
                    ptx = mRtData.rtgrp.item[i].plot[0].lx[1].ToArray();
                    time = ptx[plotcount - 1];
                    pty = mRtData.rtgrp.item[i].plot[0].ly[1].ToArray();
                    grp1.Plots[nPlot].PlotXYAppend(ptx, pty); //
                    nPlot++;
                }
            }
            grp1.XAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[1].Mode = AxisMode.AutoScaleLoose;

            /*
            cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[0]);
            }
            maxval = mRtData.rtgrp.item[0].plot[0].Maxval[0];
            minval = mRtData.rtgrp.item[0].plot[0].Minval[0];

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false) continue;
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[0])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[0];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[0])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[0];
                }
                if (mRtData.arrcnt >= 3)
                {
                    if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[1])
                    {
                        maxval = mRtData.rtgrp.item[i].plot[0].Maxval[1];
                    }
                    if (minval > mRtData.rtgrp.item[i].plot[0].Minval[1])
                    {
                        minval = mRtData.rtgrp.item[i].plot[0].Minval[1];
                    }
                }
            }
            

            maxval = maxval + (cmpval * GrpSpaceRate);
            minval = minval - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);
            if (mRtData.arrcnt >= 3)
            {
                cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Maxval[2]);
                if (cmpval < Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[2]))
                {
                    cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[2]);
                }
                maxval = mRtData.rtgrp.item[0].plot[0].Maxval[2];
                minval = mRtData.rtgrp.item[0].plot[0].Minval[2];
            }
            else
            {
                cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Maxval[1]);
                if (cmpval < Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[1]))
                {
                    cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[1]);
                }
                maxval = mRtData.rtgrp.item[0].plot[0].Maxval[1];
                minval = mRtData.rtgrp.item[0].plot[0].Minval[1];
            }

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false) continue;
                
                if (mRtData.arrcnt >= 3)
                {
                    if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[2])
                    {
                        maxval = mRtData.rtgrp.item[i].plot[0].Maxval[2];
                    }
                    if (minval > mRtData.rtgrp.item[i].plot[0].Minval[2])
                    {
                        minval = mRtData.rtgrp.item[i].plot[0].Minval[2];
                    }
                }
                else
                {
                    if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[1])
                    {
                        maxval = mRtData.rtgrp.item[i].plot[0].Maxval[1];
                    }
                    if (minval > mRtData.rtgrp.item[i].plot[0].Minval[1])
                    {
                        minval = mRtData.rtgrp.item[i].plot[0].Minval[1];
                    }
                }
            }

            maxval = maxval + (cmpval * GrpSpaceRate);
            minval = minval - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[1].Range = new Range(minval, maxval);
            */
            RefreshGraphAxisTimeView(time);
        }

        private void RefreshGraphMON()
        {
            double maxval;
            double minval;
            double cmpval;

            // item[0].plot[0]: main vdc
            // item[0].plot[1]: temperature
            // item[ch].plot[0]: aux vdc
            int plotcount = mRtData.rtgrp.item[0].plot[1].ly[0].Count;
 
            InitGraphType();

            if (plotcount == 0) return;


            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[plotcount];
            double[] pty = new double[plotcount];
            double time = -1.0;

            int nPlot = 0;

            tx = mRtData.rtgrp.item[0].plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            time = ptx[plotcount - 1];
            grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
            nPlot++;

            tx = mRtData.rtgrp.item[0].plot[1].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[1].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            time = ptx[plotcount - 1];
            grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
            nPlot++;

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false)
                    continue;
                ptx = mRtData.rtgrp.item[i].plot[0].lx[0].ToArray();
                pty = mRtData.rtgrp.item[i].plot[0].ly[0].ToArray();
                grp1.Plots[nPlot].PlotXYAppend(ptx, pty); //
                nPlot++;
            }

            grp1.XAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[1].Mode = AxisMode.Fixed;
           /* cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[0]);
            }
            maxval = mRtData.rtgrp.item[0].plot[0].Maxval[0];
            minval = mRtData.rtgrp.item[0].plot[0].Minval[0];

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false) continue;
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[0])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[0];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[0])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[0];
                }
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[1])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[1];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[1])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[1];
                }
            }
            maxval = maxval + (cmpval * GrpSpaceRate);
            minval = minval - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);
            */
            tx = mRtData.rtgrp.item[0].plot[1].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[1].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            grp1.Plots[1].PlotXYAppend(ptx, pty);
            //grp1.Plots[1+nPlot1].PlotXY(rtgrp.plot[1].lx[0].ToArray(), rtgrp.plot[1].ly[0].ToArray());

            cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[1].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.item[0].plot[1].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[1].Minval[0]);
            }
            
            maxval = mRtData.rtgrp.item[0].plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
            minval = mRtData.rtgrp.item[0].plot[1].Minval[0] - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[1].Range = new Range(minval, maxval);

            
            RefreshGraphAxisTimeView(time);
        }

        private void RefreshGraphDCH()
        {
            double maxval;
            double minval;
            double cmpval;

            // item[0].plot[0]: main vdc
            // item[0].plot[1]: temperature
            // item[ch].plot[0]: aux vdc
            int plotcount = mRtData.rtgrp.item[0].plot[1].ly[0].Count;

            InitGraphType();

            if (plotcount == 0) return;


            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[plotcount];
            double[] pty = new double[plotcount];
            double time = -1.0;

            int nPlot = 0;
            
            tx = mRtData.rtgrp.item[0].plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            time = ptx[plotcount - 1];
            grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
            nPlot ++;
            
            tx = mRtData.rtgrp.item[0].plot[1].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[1].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            grp1.Plots[nPlot].PlotXYAppend(ptx, pty);
            nPlot++;

            time = ptx[plotcount - 1];

            for (int i = 1; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false)
                    continue;
                tx = mRtData.rtgrp.item[i].plot[0].lx[0].ToArray();
                ty = mRtData.rtgrp.item[i].plot[0].ly[0].ToArray();
                Array.Copy(tx, 0, ptx, 0, plotcount);
                Array.Copy(ty, 0, pty, 0, plotcount);
                grp1.Plots[nPlot].PlotXYAppend(ptx, pty); //
                nPlot++;
            }
            grp1.XAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[0].Mode = AxisMode.AutoScaleLoose;
            grp1.YAxes[1].Mode = AxisMode.Fixed;
            // vdc y axis
            /*cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[0].Minval[0]);
            }
            maxval = mRtData.rtgrp.item[0].plot[0].Maxval[0];
            minval = mRtData.rtgrp.item[0].plot[0].Minval[0];

            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                if (mRtData.bChannel[i] == false) continue;
                if (maxval < mRtData.rtgrp.item[i].plot[0].Maxval[0])
                {
                    maxval = mRtData.rtgrp.item[i].plot[0].Maxval[0];
                }
                if (minval > mRtData.rtgrp.item[i].plot[0].Minval[0])
                {
                    minval = mRtData.rtgrp.item[i].plot[0].Minval[0];
                }
            }
            maxval = maxval + (cmpval * GrpSpaceRate);
            minval = minval - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);
            */
            tx = mRtData.rtgrp.item[0].plot[1].lx[0].ToArray();
            ty = mRtData.rtgrp.item[0].plot[1].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            grp1.Plots[1].PlotXYAppend(ptx, pty);
        
            cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[1].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.item[0].plot[1].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.item[0].plot[1].Minval[0]);
            }

            maxval = mRtData.rtgrp.item[0].plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
            minval = mRtData.rtgrp.item[0].plot[1].Minval[0] - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[1].Range = new Range(minval, maxval);

           

            RefreshGraphAxisTimeView(time);
        }

        private void RedrawGraph()
        {
            
            if (enType == enTechType1.TECH_HFR)
            {
                RefreshGraphHFR();
            }
            else if (enType == enTechType1.TECH_PRR)
            {
                RefreshGraphPRR();
            }
            else if (enType == enTechType1.TECH_MON)
            {
                RefreshGraphMON();
            }
            else if (enType == enTechType1.TECH_QIS)
            {
                RefreshGraphQIS();
            }
            else if (enType == enTechType1.TECH_DCH)
            {
                RefreshGraphDCH();
            }
            else if (enType == enTechType1.TECH_EIS)
            {
                RefreshGraphEIS();
            }

            grp1.InteractionModeDefault = GraphDefaultInteractionMode.ZoomXY;
            radioButton1.Checked = true;
            ApplyItemSelection();
        }

        private void LnkClose_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void LnkHelp_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            string str;

            str = "Initial graph screen: Shift + Back space.\r\n";
            str += "Zoom in: Shift + Mouse left button.\r\n";
            str += "Zoom Out: Shift + Mouse Right button.\r\n";
            str += "Zoom area: Designate an area by dragging the mouse.\r\n";
            str += "Move an area: Ctrl + arrow keys or Ctrl + mouse drag.\r\n";

            MessageBox.Show(str,gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void btSelAll_Click(object sender, EventArgs e)
        {
            chkTechType0.Checked = true;
            chkTechType1.Checked = true;
            chkTechType2.Checked = true;
            chkTechType3.Checked = true;
            chkTechType4.Checked = true;
            chkTechType5.Checked = true;
            chkTechType6.Checked = true;
        }

        private void btDselAll_Click(object sender, EventArgs e)
        {
            chkTechType0.Checked = false;
            chkTechType1.Checked = false;
            chkTechType2.Checked = false;
            chkTechType3.Checked = false;
            chkTechType4.Checked = false;
            chkTechType5.Checked = false;
            chkTechType6.Checked = false;
        }

        private void listView1_ColumnClick(object sender, ColumnClickEventArgs e)
        {

            listView1.Columns.Add("File name", listView1.Width - 350 - 4, HorizontalAlignment.Center);
            listView1.Columns.Add("Technique", 80, HorizontalAlignment.Center);
            listView1.Columns.Add("File size", 80, HorizontalAlignment.Center);
            listView1.Columns.Add("Last updated", 190, HorizontalAlignment.Center);

            string str;

            if (e.Column != sortColumn)
            {
                // Set the sort column to the new column.
                sortColumn = e.Column;
                // Set the sort order to ascending by default.
                listView1.Sorting = SortOrder.Ascending;
                if (sortColumn == 0) str = "File name";
                else if (sortColumn == 1) str = "Technique";
                else if (sortColumn == 2) str = "File size";
                else str = "Last updated";
                listView1.Columns[sortColumn].Text =  str + " ▲";
            }
            else
            {
                if (sortColumn == 0) str = "File name";
                else if (sortColumn == 1) str = "Technique";
                else if (sortColumn == 2) str = "File size";
                else str = "Last updated";
                if (listView1.Sorting == SortOrder.Ascending)
                {
                    listView1.Sorting = SortOrder.Descending;
                    listView1.Columns[sortColumn].Text = str + " ▼";
                }
                else
                {
                    listView1.Sorting = SortOrder.Ascending;
                    listView1.Columns[sortColumn].Text = str + " ▲";

                }
            }

            listView1.Sort();
            this.listView1.ListViewItemSorter = new MyListViewComparer(e.Column, listView1.Sorting);
        }

        private void ApplyItemSelection()
        {
            int nItems = 0;
            int nPlot = 0;
            try
            {

                legend1.SuspendLayout();
                LetPlotsInvisible();
                if (radioButton1.Checked)
                {
                    switch (enType)
                    {
                        case enTechType1.TECH_MON:
                        case enTechType1.TECH_DCH:
                        case enTechType1.TECH_HFR:
                        case enTechType1.TECH_PRR:
                            grp1.Plots[0].Visible = true;
                            legend1.Items[0].Visible = true;
                            grp1.Plots[1].Visible = true;
                            legend1.Items[1].Visible = true;
                            nItems = 2;
                            break;
                        case enTechType1.TECH_QIS:
                        case enTechType1.TECH_EIS:
                            grp1.Plots[0].Visible = true;
                            legend1.Items[0].Visible = true;
                            nItems = 1;
                            break;
                    }
                }
                else if (radioButton2.Checked)
                {
                    switch (enType)
                    {
                        case enTechType1.TECH_MON:
                        case enTechType1.TECH_DCH:
                            for (nPlot = 2; nPlot < MBZA_Constant.MAX_AUX_CHANNEL + 2; nPlot++)
                            {
                                if (mRtData.bChannel[nPlot - 2] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }

                            break;
                        case enTechType1.TECH_HFR:
                            for (nPlot = 2; nPlot < MBZA_Constant.MAX_AUX_CHANNEL * 2 + 2; nPlot++)
                            {
                                if (mRtData.bChannel[(nPlot - 2)/2] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                        case enTechType1.TECH_QIS:
                        case enTechType1.TECH_EIS:
                            for (nPlot = 1; nPlot < MBZA_Constant.MAX_AUX_CHANNEL + 1; nPlot++)
                            {
                                if (mRtData.bChannel[nPlot-1] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                        case enTechType1.TECH_PRR:
                            for (nPlot = 2; nPlot < MBZA_Constant.MAX_AUX_CHANNEL * 2 + 2; nPlot++)
                            {
                                if (mRtData.bChannel[(nPlot-2) / 2] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                    }
                }
                else if (radioButton3.Checked)
                {
                    switch (enType)
                    {
                        case enTechType1.TECH_MON:
                        case enTechType1.TECH_DCH:

                            for (nPlot = 6; nPlot < MBZA_Constant.MAX_AUX_CHANNEL + 6; nPlot++)
                            {
                                if (mRtData.bChannel[nPlot - 6] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                        case enTechType1.TECH_HFR:
                            for (nPlot = 10; nPlot < MBZA_Constant.MAX_AUX_CHANNEL * 2 + 10; nPlot++)
                            {
                                if (mRtData.bChannel[(nPlot - 10)/2] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                        case enTechType1.TECH_QIS:
                        case enTechType1.TECH_EIS:
                            for (nPlot = 5; nPlot < MBZA_Constant.MAX_AUX_CHANNEL + 5; nPlot++)
                            {
                                if (mRtData.bChannel[nPlot-5] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                        case enTechType1.TECH_PRR:
                            for (nPlot = 10; nPlot < MBZA_Constant.MAX_AUX_CHANNEL * 2 + 10; nPlot++)
                            {
                                if (mRtData.bChannel[(nPlot-10) / 2] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                    }
                }
                else if (radioButton4.Checked)
                {
                    switch (enType)
                    {
                        case enTechType1.TECH_MON:
                        case enTechType1.TECH_DCH:
                            for (nPlot = 10; nPlot < MBZA_Constant.MAX_AUX_CHANNEL + 10; nPlot++)
                            {
                                if (mRtData.bChannel[nPlot - 10] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                        case enTechType1.TECH_HFR:
                            for (nPlot = 18; nPlot < MBZA_Constant.MAX_AUX_CHANNEL * 2 + 18; nPlot++)
                            {
                                if (mRtData.bChannel[(nPlot - 18)/2] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                        case enTechType1.TECH_QIS:
                        case enTechType1.TECH_EIS:
                            for (nPlot = 9; nPlot < MBZA_Constant.MAX_AUX_CHANNEL + 9; nPlot++)
                            {
                                if (mRtData.bChannel[nPlot-9] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                        case enTechType1.TECH_PRR:
                            for (nPlot = 18; nPlot < MBZA_Constant.MAX_AUX_CHANNEL * 2 + 18; nPlot++)
                            {
                                if (mRtData.bChannel[(nPlot-18) / 2] == false)
                                    continue;
                                grp1.Plots[nPlot].Visible = true;
                                legend1.Items[nPlot].Visible = true;
                                nItems++;
                            }
                            break;
                    }
                }

                legend1.Height = 20 * nItems + 10;
                if (legend1.Height > 200) legend1.Height = 200;

                legend1.PerformLayout();
                legend1.ResumeLayout(true);
                legend1.Invalidate();  // 
                legend1.Update();
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.Message);
            }
        }


        private void radioButton_CheckedChanged(object sender, EventArgs e)
        {
            ApplyItemSelection();
        }

        private void frmDataTools_LocationChanged(object sender, EventArgs e)
        {
            if (bClose) return;
            if (this.WindowState == FormWindowState.Normal)
            {
                gBZA.appcfg.DataToolLocation = this.Location;
                gBZA.appcfg.DataToolSize = this.Size;
            }

        }

        private void frmDataTools_SizeChanged(object sender, EventArgs e)
        {
            if (bClose) return;
            if (this.WindowState == FormWindowState.Normal)
            {
                gBZA.appcfg.DataToolLocation = this.Location;
                gBZA.appcfg.DataToolSize = this.Size;
            }
        }
    }

    class MyListViewComparer : IComparer
    {
        private int col;
        private SortOrder order;
        public MyListViewComparer()
        {
            col = 0;
            order = SortOrder.Ascending;
        }
        public MyListViewComparer(int column, SortOrder order)
        {
            col = column;
            this.order = order;
        }
        public int Compare(object x, object y)
        {
            int returnVal = -1;
            returnVal = String.Compare(((ListViewItem)x).SubItems[col].Text,
                                    ((ListViewItem)y).SubItems[col].Text);
            // Determine whether the sort order is descending.
            if (order == SortOrder.Descending)
                // Invert the value returned by String.Compare.
                returnVal *= -1;
            return returnVal;
        }

    }

}
