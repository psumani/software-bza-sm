using System;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM.Dataview
{
    public partial class FileHeaderInforForm : Form
    {
        private string _version;
        private string _sfilename;
        private DataHeaderValues _DataHeaderValues;
        private int _datacount;
        private DataViewSet _dataviewset;
        public string Version { set { _version = value; } }
        public string Datafilename
        {
            set { _sfilename = value; }
        }
        public int DataCount
        {
            set { _datacount = value; }
        }
        public DataHeaderValues dhv
        {
            set { _DataHeaderValues = value; }
        }
        public DataViewSet dataviewset { set { _dataviewset = value; } }
        public FileHeaderInforForm(int langidx)
        {
            InitializeComponent();

            SetLanguage(langidx);

            _dataviewset = DataviewCommon.LoadFromSetFile();
        }

        public void SetLanguage(int langidx)
        {
            DataviewCommon.SetLanguage(this, langidx, typeof(FileHeaderInforForm));
        }

        private void FormFileHeaderInfor_Load(object sender, EventArgs e)
        {
            string sReportname, sDatafile, sVersion, sTestduration, sLaststatus, sDatacount, sTester, sBatId, sMemo, sSchfile, sCh, sSifCh, sSifSerial, sSifFwVer, sSifType, sZimSerial, sZimType, sZimBoardType, sZimFwVer;
            string sCapa;
            string str;
            string unitQ1 = _dataviewset._dataConvSet.UnitC ? "C" : "mAh";

            richTextBox1.Clear();

            sReportname = Properties.Resources.Data_Report;

            sDatafile = _DataHeaderValues._FileName;
            sVersion = _DataHeaderValues._ResHead.mInfo.GetVersion();
            sTestduration = _DataHeaderValues._ResHead.mInfo.GetTestDuration();
            sDatacount = _DataHeaderValues._datacount.ToString();
            sLaststatus = ((enStatError)_DataHeaderValues._ResHead.mInfo.Error).GetDescription();
            sTester = _DataHeaderValues._ResHead.mInfo.GetUser();
            sCapa = _DataHeaderValues._ResHead.mInfo.Capa.ToString();
            sBatId = _DataHeaderValues._ResHead.mInfo.GetBattId();
            sMemo = _DataHeaderValues._ResHead.mInfo.GetMemo();
            sSchfile = _DataHeaderValues._ResHead.GetTechFilename();
            sCh = _DataHeaderValues._ResHead.mInfo.GetChannel();
            sSifCh = _DataHeaderValues._ResHead.mInfo.GetSifBoardNo();

            sSifSerial = _DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetSerialNumber();
            sSifFwVer = _DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetFirmwareVer();
            sSifType = string.Format("{0}({1})", _DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetProductTypeString(), _DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetTypeString());
            sZimSerial = _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetSerialNumber();
            sZimType = _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetZimTypeString();
            sZimBoardType = _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetBoardTypeString();
            sZimFwVer = _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetFirmwareVer();

            richTextBox1.AppendText("\r\n");

            richTextBox1.AppendText(string.Format("  * {0} : {1}\r\n", Properties.Resources.Test_Data_File, sDatafile));
            richTextBox1.AppendText(string.Format("  * {0} : {1}\r\n", Properties.Resources.Schedule_File_Name, sSchfile));
            richTextBox1.AppendText("\r\n");

            richTextBox1.AppendText(string.Format("  * {0} : {1}({3} Ch:{2})\r\n", Properties.Resources.Channel, sCh, sSifCh, Properties.Resources.Device));
            richTextBox1.AppendText(string.Format("  * {0} : {1}(v{2}):{3}\r\n", Properties.Resources.Device, sSifFwVer, sSifType, sSifSerial));
            richTextBox1.AppendText(string.Format("  * {0} : {1}(v{2}):{3}\r\n", Properties.Resources.ZIM_Board, _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetZimTypeString(),
                                                                  _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetFirmwareVer(), _DataHeaderValues._ResHead.systemInfo.mZimCfg[_DataHeaderValues._ResHead.mInfo.sifch].GetSerialNumber()));

            if (_DataHeaderValues._ResHead.systemInfo.mSIFCfg.GetDeviceType() == eDeviceType.MCBZA)
            {
                
                for (int i = 1; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
                {
                    if (_DataHeaderValues._ResHead.systemInfo.ChkZIM[i] == 1)
                    {
                        str = string.Format("{0}(v{1}):{2}", _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetZimTypeString(), _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetFirmwareVer(), _DataHeaderValues._ResHead.systemInfo.mZimCfg[i].GetSerialNumber());
                        richTextBox1.AppendText(string.Format("  * {0}{1} : {2}\r\n", Properties.Resources.AuxBoardInfo, i, str));
                    }
                }
            }
            richTextBox1.AppendText("\r\n");
            richTextBox1.AppendText("\r\n");
            richTextBox1.AppendText(string.Format("  * {0} : {1}\r\n", Properties.Resources.Test_Duration, sTestduration));
            richTextBox1.AppendText(string.Format("  * {0} : {1}\r\n", Properties.Resources.Test_LastStatus, sLaststatus));
            richTextBox1.AppendText(string.Format("  * {0} : {1}\r\n", Properties.Resources.Data_Count, sDatacount));
            richTextBox1.AppendText("\r\n");
            richTextBox1.AppendText(string.Format("  * {0} : {1}\r\n", Properties.Resources.Product_No_d, sBatId));
            richTextBox1.AppendText(string.Format("  * {0} : {1}{2}\r\n", Properties.Resources.Capacity_x, sCapa, unitQ1));
            richTextBox1.AppendText(string.Format("  * {0} : {1}\r\n", Properties.Resources.Tester, sTester));
            richTextBox1.AppendText(string.Format("  * {0} : {1}\r\n", Properties.Resources.Memo, sMemo)); 
            richTextBox1.AppendText("\r\n");
        }
    }
}
