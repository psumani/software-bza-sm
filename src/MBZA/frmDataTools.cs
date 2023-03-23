using Microsoft.WindowsAPICodePack.Dialogs;
using NationalInstruments.UI;
using SMLib;
using System;
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

        stResHeader mHead;
        string sFilename;
        enTechType1 enType;
        cls_rtdata mRtData;
        FileResult mResfile;

        double GrpSpaceRate;
        int GrpPlotCount;
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
        public frmDataTools()
        {
            InitializeComponent();

            bInstallExcel = CheckInstallExcel();

            this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.TransitioningContent);

            mHead = new stResHeader(0);

            mRtData = new cls_rtdata();
            mResfile = new FileResult();
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
            
            listView1.Columns.Add("File name", listView1.Width - 350 - 4, HorizontalAlignment.Center);
            listView1.Columns.Add("Technique", 80, HorizontalAlignment.Center);
            listView1.Columns.Add("File size", 80, HorizontalAlignment.Center);
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
            GrpSpaceRate = 0.01;
            enType = enTechType1.TECH_ERR;
            sFilename = "";
            GrpPlotCount = 0;
            xTimemode = false;
            
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
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stDefTestData[] data = new stDefTestData[mResfile.datacount];
                int DataCount = mResfile.read(0, ref data, mResfile.datacount);

                if(tSaveResfile.Create(sCondDatafile, mResfile.tmphead) == false)
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
                for (int i = 0; i < DataCount; i++)
                {
                    if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_DCH)
                    {
                        bY2 = true;
                        MaxX *= 86400;
                        MinX *= 86400;

                        Datax = data[i].TestTime;
                        DataY1 = data[i].Vdc;
                        DataY2 = data[i].Temperature;
                    }
                    else if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_MON)
                    {
                        bY2 = true;
                        MaxX *= 86400;
                        MinX *= 86400;

                        Datax = data[i].TestTime;
                        DataY1 = data[i].Veoc;
                        DataY2 = data[i].Temperature;
                    }
                    else if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_PRR)
                    {
                        MaxX *= 86400;
                        MinX *= 86400;
                        Datax = data[i].TestTime;

                        DataY1 = data[i].real;
                        DataY2 = 0.0;
                    }
                    else if ((enTechType1)tResfile.tmphead.tech.type == enTechType1.TECH_HFR)
                    {
                        bY2 = true;
                        MaxX *= 86400;
                        MinX *= 86400;
                        Datax = data[i].TestTime;
                        DataY1 = data[i].real;
                        DataY2 = 0.0;
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
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stDefTestData[] data = new stDefTestData[mResfile.datacount];
                int DataCount = mResfile.read(0, ref data, mResfile.datacount);

                stTech_PRR prr = new stTech_PRR(0);
              
                mResfile.tmphead.tech.GetPRR(ref prr);

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
                    str = string.Format("* Test condition: F1({0:#0.###}Hz)/ F2({1:#0.###}Hz)/ F3({2:#0.###}Hz)/", prr.rsfreq, prr.rdfreq, prr.rdendfreq);
                }
                else
                {
                    str = string.Format("* Test condition: F1({0:#0.###}Hz)/ F2({1:#0.###}Hz)/", prr.rsfreq, prr.rdfreq);
                }
                sb.AppendLine(str);

                sw.WriteLine(sb);

                sw.WriteLine("");
                sw.WriteLine("");
                sw.WriteLine("");

                str = "Index,F1.time(s),F1.real(Ω),F1.Cs(F),F1.Cp(F),F2.time(s),F2.real(Ω),F2.Cs(F),F2.Cp(F),F3.time(s),F3.real(Ω),F3.Cs(F),F3.Cp(F),(F3-F2).real(Ω),(F3-F1).real(Ω),(F2-F1).real(Ω),";
                
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
                Process.Start(scsvfile);
            }
            
            return true;
        }

        public bool SaveDchDataToTextFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string scsvfile = GetSaveDatafilenameToCsvFilename(sDataFile);
            int idx = 0;
            Cursor = Cursors.WaitCursor;
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
                    Trace.WriteLine("Failed opening file.");
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
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stTech_HFR hfr = new stTech_HFR(0);

                mResfile.tmphead.tech.GetHFR(ref hfr);

                stDefTestData[] data = new stDefTestData[mResfile.datacount];
                int DataCount = mResfile.read(0, ref data, mResfile.datacount);
                

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
                str = string.Format("* Test condition: Frequency({0:#0.###}Hz)", hfr.freq);
                sb.AppendLine(str);
                sw.WriteLine(sb);

                sw.WriteLine("");
                sw.WriteLine("");
                sw.WriteLine("");

                str = "Index,Time(s),Voltage(V),Current(A),Capacity(Ah),Temperature('C),";

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
                    str += string.Format("{0:G6},", data[i].Temperature);
                    sw.WriteLine(str);
                }

                sw.Close();
                fs.Close();
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
                Process.Start(scsvfile);
            }
            return true;
        }

        public bool SaveHfrDataToTextFile(String sDataFile)
        {
            FileResult tResfile = new FileResult();
            SaveFileDialog saveDlg = new SaveFileDialog();
            string scsvfile = GetSaveDatafilenameToCsvFilename(sDataFile);
            int idx = 0;
            Cursor = Cursors.WaitCursor;
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
                        MessageBox.Show(ex.Message, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return false;
                    }
                }

                Cursor = Cursors.WaitCursor;

                stDefTestData[] data = new stDefTestData[mResfile.datacount];
                int DataCount = mResfile.read(0, ref data, mResfile.datacount);


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
                    sw.WriteLine(str);
                }

                sw.Close();
                fs.Close();
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
                sSerial = tResfile.tmphead.inf_sif.GetSerialNumber();

                sCfgDirectory = gBZA.appcfg.PathRangeInfo;
                sCfgFilename = tResfile.tmphead.inf_sifch.GetSerialNumber() + "_Ranges.xml";

                saveDlg.Title = "Save as device range information file.";
                saveDlg.DefaultExt = "*.xml";
                saveDlg.Filter = "device range information file(*.xml) |*.xml";


                saveDlg.InitialDirectory = sCfgDirectory;
                saveDlg.OverwritePrompt = true;
                saveDlg.FileName = sCfgFilename;
                if (saveDlg.ShowDialog() == DialogResult.Cancel)
                {
                    Cursor = Cursors.Default;
                    return false;
                }
                sCfgDirectory = Path.GetDirectoryName(saveDlg.FileName);
                sCfgFilename = Path.GetFileName(saveDlg.FileName);

                sCfgFullPath = Path.Combine(sCfgDirectory, sCfgFilename);


                mRangeFile.parent.SetInformation(tResfile.tmphead.mInfo.Ch, sSerial, tResfile.tmphead.mInfo.sifch);

                mRangeFile.ranges = tResfile.tmphead.inf_sifch.ranges;

                XmlSerializer writer = new XmlSerializer(mRangeFile.GetType());

                StreamWriter file = new StreamWriter(sCfgFullPath);

                writer.Serialize(file, mRangeFile);

                file.Close();
            }
            catch (IOException ex)
            {
                Trace.WriteLine(ex.Message);
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
            string sTemp1 = "";
           

            sTemp = string.Format("* Filename: {0}\r\n", sDataFile);
            sinfo += sTemp;

            sTemp = string.Format("* BATT Id: {0}\r\n* Capacity: {1}AH\r\n* User: {2}\r\n", head.mInfo.GetBattId(), SM_Number.ToString(head.mInfo.Capa, enSM_TypeNumberToString.SIPrefix, 5)   , head.mInfo.GetUser());
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

            sTemp = string.Format("* Device: ZM's Ch-{0} [SIF({1})-Ch{2}({3})]\r\n", head.mInfo.Ch+1, head.inf_sif.GetSerialNumber(), head.mInfo.sifch+1, head.inf_sifch.info.GetSerialNumber());
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
        }

        private void InitGraph()
        {

            grp1.ResetZoomPan();

            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;

            grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;

            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor11;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor11;
            grp1.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor12;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor12;
            grp1.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor13;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor13;
            grp1.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor14;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor14;
            grp1.Plots[nPlot].SmoothUpdates = true;


            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor15;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor15;
            grp1.Plots[nPlot].SmoothUpdates = true;

            nPlot++;
            grp1.Plots[nPlot].LineWidth = DeviceConstants.Linewidth;
            grp1.Plots[nPlot].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight);
            grp1.Plots[nPlot].HistoryCapacity = 100000;
            grp1.Plots[nPlot].LineStyle = NationalInstruments.UI.LineStyle.Solid;
            grp1.Plots[nPlot].PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            grp1.Plots[nPlot].LineColor = Properties.Settings.Default.GrpPlotColor16;
            grp1.Plots[nPlot].PointColor = Properties.Settings.Default.GrpPlotColor16;
            grp1.Plots[nPlot].SmoothUpdates = true;

            grp1.Plots[0].LineWidth = DeviceConstants.Linewidth; // 0206 6
            grp1.Plots[0].PointSize = new Size(DeviceConstants.Pointwidth, DeviceConstants.Pointheight); // 0206 6
            grp1.Plots[0].HistoryCapacity = 100000;  // 0206 6


            grp1.PlotAreaColor = Properties.Settings.Default.GrpBackColor1;
            grp1.PlotAreaBorder = Border.Dotted;


            grp1.XAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.XAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.XAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.XAxes[0].MinorDivisions.TickVisible = false;
            grp1.XAxes[0].CaptionForeColor = Properties.Settings.Default.GrpAxisColor1;

            grp1.XAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor1;
            grp1.XAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.XAxes[0].MajorDivisions.GridVisible = true;
            grp1.YAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[0].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[0].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[0].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[0].MinorDivisions.TickVisible = false;
            grp1.YAxes[0].CaptionForeColor = Properties.Settings.Default.GrpAxisColor1;

            grp1.YAxes[0].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor1;
            grp1.YAxes[0].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[0].MajorDivisions.GridVisible = true;
            grp1.YAxes[0].MinorDivisions.GridVisible = false;

            grp1.YAxes[1].MajorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[1].MajorDivisions.LabelForeColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[1].MinorDivisions.TickColor = Properties.Settings.Default.GrpAxisColor1;
            grp1.YAxes[1].MinorDivisions.TickVisible = false;
            grp1.YAxes[1].CaptionForeColor = Properties.Settings.Default.GrpAxisColor1;

            grp1.YAxes[1].MajorDivisions.GridColor = Properties.Settings.Default.GrpGridColor1;
            grp1.YAxes[1].MajorDivisions.GridLineStyle = NationalInstruments.UI.LineStyle.Dot;
            grp1.YAxes[1].MajorDivisions.GridVisible = true;
            grp1.YAxes[1].MinorDivisions.GridVisible = false;

            grp1.Cursors[0].LabelBackColor = Properties.Settings.Default.GrpBackColor1;

            legend1.Visible = true;
            grp1.CaptionVisible = false;
            grp1.ClearData();
        }

        private void LoadFile(string sDataFile)
        {
            int oldcycel = -1;
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

            if (mResfile.Open(sDataFile) == false)
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

            mHead.ToWritePtr(mResfile.tmphead.ToByteArray());


            if (mResfile.tmphead.tech.type >= System.Enum.GetValues(typeof(enTechType1)).Length || mResfile.tmphead.tech.type < 0)
            {
                enType = enTechType1.TECH_ERR;
            }
            else enType = (enTechType1)mResfile.tmphead.tech.type;

            txtFileInfor.Text = GetViewInfoStr(sDataFile, mResfile.tmphead, mResfile.datacount);

            if (enType == enTechType1.TECH_ERR)
            {
                LnkSaveTechFile.Visible = false;
                LnkSaveRngFile.Visible = false;
                LnkSaveResmplFile.Visible = false;

                LnkSavePrrDataFile.Visible = false;
            }
            else if (enType == enTechType1.TECH_PRR || enType == enTechType1.TECH_HFR || enType == enTechType1.TECH_DCH)
            {
                if (enType == enTechType1.TECH_PRR)
                {
                    LnkSavePrrDataFile.Text = "Process the PRR test results and save them to a text file.";
                }
                else if (enType == enTechType1.TECH_HFR)
                {
                    LnkSavePrrDataFile.Text = "Process the HFR test results and save them to a text file.";
                }
                else
                {
                    LnkSavePrrDataFile.Text = "Process the DCH test results and save them to a text file.";
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


            stDefTestData[] data = new stDefTestData[mResfile.datacount];
            int DataCount = mResfile.read(0, ref data, mResfile.datacount);

            mRtData.Initialize(mResfile.tmphead.tech);

            if (DataCount > 0)
            {
                mRtData.Append(data, DataCount, ref oldcycel);
            }
            RedrawGraph();

            Cursor = Cursors.Default;
        }

       

        private void InitGraphType(bool brefresgraph = true)
        {
            Point tpos;
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

                legend1.Width = 80;
                legend1.Height = 23 * GrpPlotCount + 8;

                tpos = grp1.Location;
                tpos.X = tpos.X + grp1.Width - legend1.Width - 3;
                tpos.Y = tpos.Y + 3;
                legend1.Location = tpos;
            }
        }

        private void InitGraphQIS()
        {
            int nPlot;
            
            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            xTimemode = false;

            grp1.YAxes[0].Caption = "-Z image(Ω)";
            grp1.YAxes[1].Caption = "";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = false;
            
            nPlot = 1; // 0206 0
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

            nPlot++;
            grp1.Plots[nPlot].Visible = false;
            nPlot++;
            grp1.Plots[nPlot].Visible = false;
            nPlot++;
            grp1.Plots[nPlot].Visible = false;
            nPlot++;
            grp1.Plots[nPlot].Visible = false;
            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            grp1.Plots[0].Visible = true; // 0206 6


            legend1.Items[0].Text = "-Zimg";
            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = false;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Visible = false;
            
            GrpPlotCount = 1;
        }

        private void InitGraphMON()
        {
            grp1.YAxes[0].Caption = "Eoc(V)";
            legend1.Items[0].Text = "Eoc";
            

            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

            nPlot++;
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;


            grp1.Plots[0].Visible = false; //0206 6

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            xTimemode = true;


            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[1].Caption = "Temp.(°C)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = true;

            legend1.Items[1].Text = "Temp.";

            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = true;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Visible = false;
            
            GrpPlotCount = 2;
        }

        private void InitGraphDCH()
        {
            grp1.YAxes[0].Caption = "Vdc(V)";
            legend1.Items[0].Text = "Vdc";
            
            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

            nPlot++;
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            grp1.Plots[0].Visible = false;  //0206 6

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            xTimemode = true;


            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[1].Caption = "Temp.(°C)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = true;

            legend1.Items[1].Text = "Temp.";

            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = true;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Visible = false;
            
            GrpPlotCount = 2;
        }
        private void InitGraphEIS()
        {
            grp1.XAxes[0].Caption = "Z real(Ω)";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = new FormatString(FormatStringMode.Numeric, "G5");
            xTimemode = false;
            grp1.YAxes[0].Caption = "-Z image(Ω)";
            grp1.YAxes[1].Caption = "";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = false;
            
            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].Visible = true;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;


            grp1.Plots[0].Visible = true;  //0206 6



            legend1.Items[0].Text = "-Zimg";
            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = false;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Visible = false;

            GrpPlotCount = 1;
        }

        private void InitGraphHFR()
        {
            grp1.YAxes[1].Caption = "Vdc(V)";
            legend1.Items[1].Text = "Vdc";

            //grp1.YAxes[0].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("0.#####");
            //grp1.YAxes[1].EditRangeNumericFormatMode = NumericFormatMode.CreateGenericMode("G5");
            int nPlot = 1; //0206 0
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[0];
            grp1.Plots[nPlot].Visible = true;

            nPlot++;
            grp1.Plots[nPlot].XAxis = grp1.XAxes[0];
            grp1.Plots[nPlot].YAxis = grp1.YAxes[1];
            grp1.Plots[nPlot].Visible = true;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            nPlot++;
            grp1.Plots[nPlot].Visible = false;

            grp1.Plots[0].Visible = false; // 0206 6

            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            xTimemode = true;

            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            grp1.YAxes[0].Caption = "Zre(Ω)";

            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            grp1.YAxes[1].Visible = true;

            legend1.Items[0].Text = "Zre";

            legend1.Items[0].Visible = true;
            legend1.Items[1].Visible = true;
            legend1.Items[2].Visible = false;
            legend1.Items[3].Visible = false;
            legend1.Items[4].Visible = false;
            legend1.Items[5].Visible = false;
            legend1.Items[6].Visible = false;
            
            GrpPlotCount = 2;
        }

        private void InitGraphPRR()
        {
            int i;

          
            grp1.XAxes[0].Caption = "Time";
            grp1.XAxes[0].ScaleType = ScaleType.Linear;
            grp1.XAxes[0].MajorDivisions.LabelFormat = fs_ss;
            xTimemode = true;

            grp1.YAxes[0].Caption = "R(Ω)";
            grp1.XAxes[0].Visible = true;
            grp1.YAxes[0].Visible = true;
            
            grp1.YAxes[1].Caption = "";
            grp1.YAxes[1].Visible = false;
            
            int nPlot = 1;

            for (i = 0; i < 6; i++)
            {
                grp1.Plots[i + nPlot].XAxis = grp1.XAxes[0];

                if (i < 3)
                {
                    grp1.Plots[i + nPlot].YAxis = grp1.YAxes[0];
                }
                else
                {
                    grp1.Plots[i + nPlot].YAxis = grp1.YAxes[1];
                }
            }

            for (i = 0; i < 3; i++)
            {
                if (mRtData.barr[i])
                {
                    if (i == 2)
                    {
                        grp1.Plots[i + nPlot].Visible = false;
                        legend1.Items[i].Visible = false;
                    }
                    else
                    {
                        grp1.Plots[i + nPlot].Visible = true;
                        legend1.Items[i].Visible = true;
                    }
                    grp1.Plots[i + 3 + nPlot].Visible = false;
                    legend1.Items[i + 3].Visible = false;
                    
                    if (i == 0)
                    {
                        legend1.Items[i].Text = "Rs";
                        legend1.Items[i + 3].Text = "";
                    }
                    else if (i == 1)
                    {
                        legend1.Items[i].Text = "P_Rp";
                        //legend1.Items[i + 3].Text = "";
                    }
                    else
                    {
                        legend1.Items[i].Text = "";
                        legend1.Items[i + 3].Text = "";
                    }
                }
                else
                {
                    grp1.Plots[i + nPlot].Visible = false;
                    grp1.Plots[i + 3 + nPlot].Visible = false;
                    legend1.Items[i].Visible = false;
                    legend1.Items[i + 3].Visible = false;
                }
            }
            legend1.Items[6].Visible = false;
            grp1.Plots[0].Visible = false;  //0206 6
            
            GrpPlotCount = 2; 
        }



        private void RefreshGraphEIS()
        {
            double maxval;
            double minval;
            double cmpval;

            int plotcount0 = mRtData.rtgrp.plot[3].ly[0].Count;
            int plotcount1 = mRtData.rtgrp.plot[3].ly[1].Count;

            int nPlot = 1;

            double[] tx = null;
            double[] ty = null;


            double[] ptx0 = new double[plotcount0];
            double[] pty0 = new double[plotcount0];
            double[] ptx1 = new double[plotcount1];
            double[] pty1 = new double[plotcount1];

            if (plotcount0 == 0 && plotcount1 == 0) return;

            InitGraphType();

            tx = mRtData.rtgrp.plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx0, 0, plotcount0);
            Array.Copy(ty, 0, pty0, 0, plotcount0);
            grp1.Plots[0 + nPlot].PlotXYAppend(ptx0, pty0);


            tx = mRtData.rtgrp.plot[0].lx[1].ToArray();
            ty = mRtData.rtgrp.plot[0].ly[1].ToArray();
            Array.Copy(tx, 0, ptx1, 0, plotcount1);
            Array.Copy(ty, 0, pty1, 0, plotcount1);
            grp1.Plots[0].PlotXYAppend(ptx1, pty1);


            maxval = mRtData.rtgrp.plot[0].Maxval[0];
            minval = mRtData.rtgrp.plot[0].Minval[0];

            if (maxval < mRtData.rtgrp.plot[0].Maxval[1])
            {
                maxval = mRtData.rtgrp.plot[0].Maxval[1];
            }
            if (minval > mRtData.rtgrp.plot[0].Minval[1])
            {
                minval = mRtData.rtgrp.plot[0].Minval[1];
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
            maxval = mRtData.rtgrp.plot[0].Maxval[2];
            minval = mRtData.rtgrp.plot[0].Minval[2];

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
            
        }


        private void RefreshGraphQIS()
        {
            double maxval;
            double minval;
            double cmpval;

            int plotcount0 = mRtData.rtgrp.plot[3].ly[0].Count;
            int plotcount1 = mRtData.rtgrp.plot[3].ly[1].Count;

            InitGraphType();
            
            int nPlot = 1;
            
            double[] tx = null;
            double[] ty = null;
            double[] ptx0 = new double[plotcount0];
            double[] pty0 = new double[plotcount0];
            double[] ptx1 = new double[plotcount1];
            double[] pty1 = new double[plotcount1];

            tx = mRtData.rtgrp.plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx0, 0, plotcount0);
            Array.Copy(ty, 0, pty0, 0, plotcount0);
            grp1.Plots[0 + nPlot].PlotXYAppend(ptx0, pty0);

            tx = mRtData.rtgrp.plot[0].lx[1].ToArray();
            ty = mRtData.rtgrp.plot[0].ly[1].ToArray();
            Array.Copy(tx, 0, ptx1, 0, plotcount1);
            Array.Copy(ty, 0, pty1, 0, plotcount1);
            grp1.Plots[0].PlotXYAppend(ptx1, pty1); // 0206 6
            
            maxval = mRtData.rtgrp.plot[0].Maxval[0];
            minval = mRtData.rtgrp.plot[0].Minval[0];

            if (maxval < mRtData.rtgrp.plot[0].Maxval[1])
            {
                maxval = mRtData.rtgrp.plot[0].Maxval[1];
            }
            if (minval > mRtData.rtgrp.plot[0].Minval[1])
            {
                minval = mRtData.rtgrp.plot[0].Minval[1];
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
                minval -= minval * 0.1;
                maxval += maxval * 0.1;
            }
            else if (maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);

            maxval = mRtData.rtgrp.plot[0].Maxval[2];
            minval = mRtData.rtgrp.plot[0].Minval[2];

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

        }

        private void RefreshGraphHFR()
        {
            double maxval;
            double minval;
            double cmpval;

            int plotcount = mRtData.rtgrp.plot[3].ly[0].Count;

            InitGraphType();

            if (plotcount == 0) return;
       
            int nPlot = 1;

            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[plotcount];
            double[] pty = new double[plotcount];
            double time = -1.0;


            tx = mRtData.rtgrp.plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            time = ptx[plotcount - 1];
            grp1.Plots[0 + nPlot].PlotXYAppend(ptx, pty);

            
            cmpval = Math.Abs(mRtData.rtgrp.plot[0].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.plot[0].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.plot[0].Minval[0]);
            }

            maxval = mRtData.rtgrp.plot[0].Maxval[0] + (cmpval * GrpSpaceRate);
            minval = mRtData.rtgrp.plot[0].Minval[0] - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);



            tx = mRtData.rtgrp.plot[1].lx[0].ToArray();
            ty = mRtData.rtgrp.plot[1].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            grp1.Plots[1 + nPlot].PlotXYAppend(ptx, pty);
         
            cmpval = Math.Abs(mRtData.rtgrp.plot[1].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.plot[1].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.plot[1].Minval[0]);
            }

            maxval = mRtData.rtgrp.plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
            minval = mRtData.rtgrp.plot[1].Minval[0] - (cmpval * GrpSpaceRate);
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
            grp1.YAxes[1].Range = new Range(minval, maxval);

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
            int i;
            if (mRtData.arrcnt == 0) return;

            int plotcount = mRtData.rtgrp.plot[0].ly[0].Count;
            int st = 0;

            InitGraphType();

            if (plotcount > 0)
            {
                double[] tx = null;
                double[] ty = null;
                double[] ptx = new double[plotcount];
                double[] pty = new double[plotcount];
                double time = -1.0;
                int count;

                ptx.Initialize();
                pty.Initialize();

                tx = mRtData.rtgrp.plot[0].lx[0].ToArray();
                ty = mRtData.rtgrp.plot[0].ly[0].ToArray();

                count = tx.Length;
                if (count > plotcount) count = plotcount;

                if (count > 0)
                {
                    Array.Copy(tx, st, ptx, 0, count);
                    Array.Copy(ty, st, pty, 0, count);
                    grp1.Plots[1].PlotXYAppend(ptx, pty);
                    time = ptx[count - 1];
                }


                ptx.Initialize();
                pty.Initialize();

                tx = mRtData.rtgrp.plot[0].lx[mRtData.arrcnt-1].ToArray();
                ty = mRtData.rtgrp.plot[0].ly[mRtData.arrcnt-1].ToArray();

                count = tx.Length;
                if (count > plotcount) count = plotcount;

                if (count > 0)
                {
                    Array.Copy(tx, st, ptx, 0, count);
                    Array.Copy(ty, st, pty, 0, count);
                    grp1.Plots[2].PlotXYAppend(ptx, pty);
                }
                
                RefreshGraphAxisTimeView(time);
            }
        }

        private void RefreshGraphMON()
        {
            double maxval;
            double minval;
            double cmpval;

            int plotcount = mRtData.rtgrp.plot[1].ly[0].Count;
 
            InitGraphType();

            if (plotcount == 0) return;

            int nPlot = 1;

            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[plotcount];
            double[] pty = new double[plotcount];
            double time = -1.0;

            tx = mRtData.rtgrp.plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            time = ptx[plotcount - 1];
            grp1.Plots[0 + nPlot].PlotXYAppend(ptx, pty);

            //grp1.Plots[0+nPlot1].PlotXY(rtgrp.plot[0].lx[0].ToArray(), rtgrp.plot[0].ly[0].ToArray());
            cmpval = Math.Abs(mRtData.rtgrp.plot[0].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.plot[0].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.plot[0].Minval[0]);
            }

            maxval = mRtData.rtgrp.plot[0].Maxval[0] + (cmpval * GrpSpaceRate);
            minval = mRtData.rtgrp.plot[0].Minval[0] - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);

            tx = mRtData.rtgrp.plot[1].lx[0].ToArray();
            ty = mRtData.rtgrp.plot[1].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            grp1.Plots[1 + nPlot].PlotXYAppend(ptx, pty);
            //grp1.Plots[1+nPlot1].PlotXY(rtgrp.plot[1].lx[0].ToArray(), rtgrp.plot[1].ly[0].ToArray());

            cmpval = Math.Abs(mRtData.rtgrp.plot[1].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.plot[1].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.plot[1].Minval[0]);
            }

            maxval = mRtData.rtgrp.plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
            minval = mRtData.rtgrp.plot[1].Minval[0] - (cmpval * GrpSpaceRate);
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

            int plotcount = mRtData.rtgrp.plot[1].ly[0].Count;

            InitGraphType();

            if (plotcount == 0) return;
           
            int nPlot = 1;
            //int nPlot2 = 2;
            double[] tx = null;
            double[] ty = null;
            double[] ptx = new double[plotcount];
            double[] pty = new double[plotcount];
            double time = -1.0;
           

            tx = mRtData.rtgrp.plot[0].lx[0].ToArray();
            ty = mRtData.rtgrp.plot[0].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            time = ptx[plotcount - 1];
            grp1.Plots[0 + nPlot].PlotXYAppend(ptx, pty);

            //grp1.Plots[0+nPlot1].PlotXY(rtgrp.plot[0].lx[0].ToArray(), rtgrp.plot[0].ly[0].ToArray());
            cmpval = Math.Abs(mRtData.rtgrp.plot[0].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.plot[0].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.plot[0].Minval[0]);
            }

            maxval = mRtData.rtgrp.plot[0].Maxval[0] + (cmpval * GrpSpaceRate);
            minval = mRtData.rtgrp.plot[0].Minval[0] - (cmpval * GrpSpaceRate);
            if (minval == maxval && maxval == 0.0)
            {
                minval = -1.0;
                maxval = +1.0;
            }
            grp1.YAxes[0].Range = new Range(minval, maxval);

            tx = mRtData.rtgrp.plot[1].lx[0].ToArray();
            ty = mRtData.rtgrp.plot[1].ly[0].ToArray();
            Array.Copy(tx, 0, ptx, 0, plotcount);
            Array.Copy(ty, 0, pty, 0, plotcount);
            grp1.Plots[1 + nPlot].PlotXYAppend(ptx, pty);
        
            cmpval = Math.Abs(mRtData.rtgrp.plot[1].Maxval[0]);
            if (cmpval < Math.Abs(mRtData.rtgrp.plot[1].Minval[0]))
            {
                cmpval = Math.Abs(mRtData.rtgrp.plot[1].Minval[0]);
            }

            maxval = mRtData.rtgrp.plot[1].Maxval[0] + (cmpval * GrpSpaceRate);
            minval = mRtData.rtgrp.plot[1].Minval[0] - (cmpval * GrpSpaceRate);
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
        }

        private void LnkClose_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
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
    }

}
