using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

namespace App.RemoteTest
{
    public enum State
    {
        [Description("N/A")]
        NotAssigned,
        [Description("Ready")]
        Idle,
        [Description("Measuring impedance")]
        Running,
        [Description("Measurement termination")]
        Finished,
        [Description("Manually stopped")]
        Stopped,
        [Description("Measuring noise level...")]
        RunningNoiseLevel,
        [Description("Heat sink is very hot...")]
        DetectedOverTemperatue,
        [Description("Something wrong, check cables...")]
        DetectedFaild,
        [Description("Unstable AC voltage...")]
        DetectedNotYetReady,
        [Description("ZIM not found...")]
        DetecteNoZIM,
        [Description("Ready(Not yet calibrated)")]
        DetecteNotYetCalibrated,
        [Description("Ready(Communication error with ZIM)")]
        DetecteErrorCommZIM,
        [Description("Ready(Failed current control)")]
        DetecteFailedControl,
        [Description("Refresh Vac status")]
        RefreshVac,
        [Description("Initial delay")]
        InitDelay = 99,
    }

    public enum CurrentRange_BZA100HZ
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("200m A")]
        I200mA = 0,
        [Description("40 mA")]
        I40mA = 1,
        [Description("20 mA")]
        I20mA = 2,
        [Description("4 mA")]
        I4mA = 3,
        [Description("2 mA")]
        I2mA = 4,
        [Description("400 uA")]
        I400uA = 5,
        [Description("200 uA")]
        I200uA = 6,
        [Description("40 uA")]
        I40uA = 7,
    }

    public enum CurrentRange
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("2 A")]
        I2A = 0,
        [Description("400 mA")]
        I400mA = 1,
        [Description("200 mA")]
        I200mA = 2,
        [Description("40 mA")]
        I40mA = 3,
        [Description("20 mA")]
        I20mA = 4,
        [Description("4 mA")]
        I4mA = 5,
        [Description("2 mA")]
        I2mA = 6,
        [Description("400 uA")]
        I400uA = 7,
    }
    public partial class FrmMain : Form
    {
        [DllImport("kernel32")]
        private static extern long WritePrivateProfileString(string section, string key, string val, string filePath);
        [DllImport("kernel32")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);

        public string ControlFilename;
        public string StatusFilename;

        public int Model;
        public bool ControlStart;
        public int IRange;

        public bool StatusStart;
        public bool cmdapply;
        public int LastStatus;

        public FrmMain()
        {
            InitializeComponent();

            if (Properties.Settings.Default.PathData.Length < 5) Properties.Settings.Default.PathData = Path.Combine("C:\\ZIVE DATA\\BM\\", "Data");
            if (!System.IO.Directory.Exists(Properties.Settings.Default.PathData))
            {
                System.IO.Directory.CreateDirectory(Properties.Settings.Default.PathData);
            }

            if (!System.IO.Directory.Exists("C:\\ZIVE DATA\\BM\\Remote\\"))
            {
                System.IO.Directory.CreateDirectory("C:\\ZIVE DATA\\BM\\Remote\\");
            }

            ControlFilename = "C:\\ZIVE DATA\\BM\\Remote\\Control.ini";
            StatusFilename = "C:\\ZIVE DATA\\BM\\Remote\\Status.ini";

            if (!System.IO.Directory.Exists("C:\\ZIVE DATA\\BM\\Remote\\"))
            {
                System.IO.Directory.CreateDirectory("C:\\ZIVE DATA\\BM\\Remote\\");
            }
            Model = 0;
            LastStatus = 0;
            IRange = 0;
            ControlStart = false;
            StatusStart = false;
            cmdapply = false;
            ReadControl();
            ReadStatus();

            cborange.Items.Clear();

            if (Model == 1)
            {
                cborange.Items.Add("200 mA");
                cborange.Items.Add(" 40 mA");
                cborange.Items.Add(" 20 mA");
                cborange.Items.Add("  4 mA");
                cborange.Items.Add("  2 mA");
                cborange.Items.Add("400 uA");
                cborange.Items.Add("200 uA");
                cborange.Items.Add(" 40 uA");
            }
            else
            {
                cborange.Items.Add("  2  A");
                cborange.Items.Add("400 mA");
                cborange.Items.Add("200 mA");
                cborange.Items.Add(" 40 mA");
                cborange.Items.Add(" 20 mA");
                cborange.Items.Add("  4 mA");
                cborange.Items.Add("  2 mA");
                cborange.Items.Add("400 uA");
            }
            cborange.SelectedIndex = IRange;

            if(ControlStart == true)
            {
                if (StatusStart == true)
                {
                    btstart.Text = "Stop";
                    btstart.Enabled = true;
                }
                else
                {
                    btstart.Enabled = false;
                }
            }
            else
            {
                if (StatusStart == true)
                {
                    btstart.Enabled = false;
                }
                else
                {
                    btstart.Text = "Start";
                    btstart.Enabled = true;
                }
            }

            timer1.Enabled = chkautorefresh.Checked = true;
            btrefresh.Enabled = !chkautorefresh.Checked;

        }

        #region Inifile utilities
        public void WriteIniFloatData(string Title, string Item, string IniFile, float Value)
        {
            WritePrivateProfileString(Title, Item, Value.ToString(), IniFile);
        }

        public float GetIniFloatData(string Title, string Item, string IniFile, float DefaultValue)
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
        #endregion

        public void ReadControl()
        {
            chkremote.Checked = GetIniboolData("Control", "RemoteOn", ControlFilename, false);
            chkresfile.Checked = GetIniboolData("Control", "SetResultFile", ControlFilename, true);
            chkcond.Checked = GetIniboolData("Control", "SetCondition", ControlFilename, false);
            ControlStart = GetIniboolData("Control", "Start", ControlFilename, false);
            txtsetresfile.Text = GetIniStrData("Control", "ResultFilename", ControlFilename, "");

            txtinitfreq.Text = GetIniDoubleData("Condition", "initialFreq", ControlFilename, 1000.0).ToString();
            txtfanalfreq.Text = GetIniDoubleData("Condition", "FinalFreq", ControlFilename, 1.0).ToString();
            IRange = GetIniIntData("Condition", "IRange", ControlFilename, IRange);
            txtdensity.Text = GetIniIntData("Condition", "Density", ControlFilename, 10).ToString();
            txtiteration.Text = GetIniIntData("Condition", "Iteration", ControlFilename, 1).ToString();
            txtinitdelay.Text = GetIniDoubleData("Condition", "InitialDelay", ControlFilename, 12.0).ToString();
            txtskipcycle.Text = GetIniDoubleData("Condition", "SkipCycle", ControlFilename, 0.0).ToString();

            grpremote.Enabled = chkremote.Checked;
            grpcond.Enabled = chkcond.Checked;
            grpresfile.Enabled = chkresfile.Checked;
        }

        public void WriteControl()
        {
            WriteIniboolData("Control", "RemoteOn", ControlFilename, chkremote.Checked);
            WriteIniboolData("Control", "SetResultFile", ControlFilename, chkresfile.Checked);
            WriteIniboolData("Control", "SetCondition", ControlFilename, chkcond.Checked);
            
            WriteIniStrData("Control", "ResultFilename", ControlFilename, txtsetresfile.Text);
            WriteIniDoubleData("Condition", "initialFreq", ControlFilename, Convert.ToDouble(txtinitfreq.Text));
            WriteIniDoubleData("Condition", "FinalFreq", ControlFilename, Convert.ToDouble(txtfanalfreq.Text));
            WriteIniIntData("Condition", "Density", ControlFilename, Convert.ToInt32(txtdensity.Text));
            WriteIniIntData("Condition", "Iteration", ControlFilename, Convert.ToInt32(txtiteration.Text));
            IRange = cborange.SelectedIndex;
            WriteIniIntData("Condition", "IRange", ControlFilename, IRange);

            WriteIniDoubleData("Condition", "InitialDelay", ControlFilename, Convert.ToDouble(txtinitdelay.Text));
            WriteIniDoubleData("Condition", "SkipCycle", ControlFilename, Convert.ToDouble(txtskipcycle.Text));
        }

        private string GetCurrentRangeDescription(int iRange)
        {
            
            switch (iRange)
            {
                default:
                    return "Auto";
                case 0:
                    return "2A";
                case 1:
                    return "400mA";
                case 2:
                    return "200mA";
                case 3:
                    return "40mA";
                case 4:
                    return "20mA";
                case 5:
                    return "4mA";
                case 6:
                    return "2mA";
                case 7:
                    return "400uA";
            }
        }

        private string GetCurrentRangeDescriptionLZ(int iRange)
        {

            switch (iRange)
            {
                default:
                    return "Auto";
                case 0:
                    return "200mA";
                case 1:
                    return "40mA";
                case 2:
                    return "20mA";
                case 3:
                    return "4mA";
                case 4:
                    return "2mA";
                case 5:
                    return "400uA";
                case 6:
                    return "200uA";
                case 7:
                    return "40uA";
            }
        }

        public void ReadStatus()
        {
            txttick.Text = GetIniIntData("Status", "LifeTick", StatusFilename, 0).ToString();
            StatusStart = GetIniboolData("Status", "Started", StatusFilename, false);
            LastStatus = GetIniIntData("Status", "LastStatus", StatusFilename, 0);
            txtstatus.Text = ((State)LastStatus).DescriptionAttr();
            if (StatusStart == true)
            {
                txtstarted.Text = "Start";
                txtstarted.BackColor = Color.LightBlue;
            }
            else
            {
                txtstarted.Text = "stop";
                txtstarted.BackColor = SystemColors.Control;
            }

            txtresfile.Text = GetIniStrData("Status", "ResultFile", StatusFilename, "");
            txtdatacount.Text = GetIniIntData("Status", "DataCount", StatusFilename, 0).ToString();
            Model = GetIniIntData("Status", "Model", StatusFilename, 0);
            if (Model == 1)
            {
                txtmodel.Text = "Max. range 200mA.";
            }
            else
            {
                txtmodel.Text = "Max. range 2A.";
            }

            long intDt = GetIniLongData("Status", "StartDateTime", StatusFilename, 0);
            DateTime Started = new DateTime(intDt);

            txtstartdt.Text = Started.ToString();

            txtcurrentrange.Text = GetIniDoubleData("LastData", "IRange", StatusFilename, 0).ToString();





            txtelapsedtime.Text = GetIniDoubleData("LastData", "ElapsedTime", StatusFilename, 0).ToString();
            txtfreq.Text = GetIniDoubleData("LastData", "Frequency", StatusFilename, 0.0).ToString();
            txtzreal.Text = GetIniDoubleData("LastData", "Zreal", StatusFilename, 0.0).ToString();
            txtzimg.Text = GetIniDoubleData("LastData", "Zimg", StatusFilename, 0.0).ToString();
            txtzmag.Text = GetIniDoubleData("LastData", "Zmag", StatusFilename, 0.0).ToString();
            txtzph.Text = GetIniDoubleData("LastData", "Zphase", StatusFilename, 0.0).ToString();
            txtidc.Text = GetIniDoubleData("LastData", "Idc", StatusFilename, 0.0).ToString();
            txtvdc.Text = GetIniDoubleData("LastData", "Vdc", StatusFilename, 0.0).ToString();
            txttemp.Text = GetIniDoubleData("LastData", "Temperature", StatusFilename, 0.0).ToString();

            if (ControlStart == true)
            {
                if (StatusStart == true) 
                {
                    btstart.Text = "Stop";
                    btstart.Enabled = true;
                    if(LastStatus == 1)
                    {
                        cmdapply = true;
                    }
                    else 
                    {
                        if (cmdapply == true)
                        {
                            WriteIniboolData("Control", "Start", ControlFilename, false);
                            ControlStart = false;
                            cmdapply = false;
                        }
                    }
                }
                else
                {
                    btstart.Enabled = false;
                }
            }
            else
            {
                cmdapply = false;

                if (StatusStart == true)
                {
                    btstart.Enabled = false;
                }
                else
                {
                    btstart.Text = "Start";
                    btstart.Enabled = true;
                }
            }
        }

        private void btstart_Click(object sender, EventArgs e)
        {
            if(ControlStart == true)
            {
                WriteIniboolData("Control", "Start", ControlFilename, false);
                ControlStart = false;
            }
            else
            {
                WriteIniboolData("Control", "Start", ControlFilename, true);
                ControlStart = true;
            }
            cmdapply = false;
            WriteControl();
        }

        private void btselfile_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveDlg = new SaveFileDialog();
            saveDlg.InitialDirectory = Properties.Settings.Default.PathData;
            saveDlg.Filter = "ZMAN Data(*.Z#)|*.Z#|csv (*.csv)|*.csv|txt (*txt)|*.txt|All files (*.*)|*.*";
            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }
            Properties.Settings.Default.PathData = Path.GetDirectoryName(saveDlg.FileName);
            Properties.Settings.Default.Save();
            txtsetresfile.Text = saveDlg.FileName;
        }

        private void btrefresh_Click(object sender, EventArgs e)
        {
            ReadStatus();
        }

        private void chkautorefresh_CheckedChanged(object sender, EventArgs e)
        {
            timer1.Enabled = chkautorefresh.Checked;
            btrefresh.Enabled = !chkautorefresh.Checked;
        }

        private void btopenres_Click(object sender, EventArgs e)
        {

            if (File.Exists(txtresfile.Text) == false)
            {
                MessageBox.Show("Not found file.", "Remote test", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            frmDataView frm = new frmDataView(txtresfile.Text);
            frm.ShowDialog();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            ReadStatus();
        }

        private void chkcond_CheckedChanged(object sender, EventArgs e)
        {
            grpcond.Enabled = chkcond.Checked;
        }

        private void chkresfile_CheckedChanged(object sender, EventArgs e)
        {
            grpresfile.Enabled = chkresfile.Checked;
        }
    }
}
