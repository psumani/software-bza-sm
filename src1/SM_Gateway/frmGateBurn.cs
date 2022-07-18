using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using SMLib;
using SM_Define;
using System.Threading;
using SM_Enum;

namespace SM_Gateway
{
    public partial class frmGateBurn : Form
    {
        SM_BurnUSB burnUsb;
        SM_BurnFPGA burnFpga;
        SM_BurnDSP burnDsp;
        SM_Config_File<FirmwareFileInformation> filecfg;
        FirmwareFileInformation mLastFileInformation;
        ListDeviceChannel mListDev;
        public Dictionary<int, SelectList> mListDict; 
        int typeFW;
        bool FileEnable;
        public string serial;
        int nDev;
        int nCount;
        string[] ArrDesc;
        public frmGateBurn(int ndevice, string strSerial)
        {
            InitializeComponent();
            nDev = ndevice;
            Initialize(strSerial);
            
        }

        public void Initialize(string strSerial)
        {
            string str;

            serial = strSerial;
            FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[serial].bLocal = true;
            
            this.Text = string.Format("Change firmware[{0} : {1}]", nDev + 1, serial);

            this.burnUsb = new SM_BurnUSB(nDev, serial, this.backgroundWorker1, 0);
            this.burnFpga = new SM_BurnFPGA(nDev, serial, this.backgroundWorker1, 0);
            this.burnDsp = new SM_BurnDSP(nDev, serial, this.backgroundWorker1, 0);

            ArrDesc = new string[8];
            textDesc.Clear();
            filecfg = new SM_Config_File<FirmwareFileInformation>();
            mListDict = new Dictionary<int, SelectList>();
            mLastFileInformation = new FirmwareFileInformation();


            mListDev = new ListDeviceChannel();

            this.nCount = 8;
            enDeviceModel nmodel = (enDeviceModel)(FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.Model & 0x3F);
            if (nmodel == enDeviceModel.SP1
                || nmodel == enDeviceModel.PP1
                || nmodel == enDeviceModel.SP2
                || nmodel == enDeviceModel.SP5
                || nmodel == enDeviceModel.SP1E)
            {
                this.nCount = 1;
            }

            else if (nmodel == enDeviceModel.BP2
                || nmodel == enDeviceModel.BP5)
            {
                this.nCount = 2;
            }


            this.mLastFileInformation = filecfg.LoadXmlToObj(SM_Define.SM_Directory_define.FILE_SETTING_FULLNAME1, this.mLastFileInformation);

            str = Path.Combine(this.mLastFileInformation.Filename);
            this.FileEnable = System.IO.File.Exists(str);
            if (this.FileEnable == true)
            {
                string sExt = Path.GetExtension(mLastFileInformation.Filename);
                sExt = sExt.ToLower();
                if (sExt == ".iic") typeFW = 1;
                else if (sExt == ".rbf") typeFW = 2;
                else if (sExt == ".bin") typeFW = 3;
                else
                {
                    typeFW = 0;
                }
            }
            else typeFW = 0;

            if (typeFW == 0)
            {
                this.textFile.Text = "";
            }
            else 
            {
                this.textFile.Text = this.mLastFileInformation.Filename;
            }
            progressBar1.Value = 0;
            RefreDeviceCh();
            if (typeFW < 2)
            {
                listChannel.Enabled = false;
                listTarget.Enabled = false;
                btadd.Enabled = false;
                btadds.Enabled = false;
                btdel.Enabled = false;
                btdels.Enabled = false;
                btBurn.Enabled = this.FileEnable;
            }
            else
            {
                listChannel.Enabled = this.FileEnable;
                listTarget.Enabled = this.FileEnable;
                btadd.Enabled = this.FileEnable;
                btadds.Enabled = this.FileEnable;
                btdel.Enabled = this.FileEnable;
                btdels.Enabled = this.FileEnable;
                btBurn.Enabled = false;
                textDesc.Enabled = this.FileEnable;
            }
        }

        private void RefreDeviceCh()
        {
            int i;
            string str;
            var p = FormMain.mSM_Comm_USB;
            listChannel.Items.Clear();
            listTarget.Items.Clear();
            mListDev.Clear();
            mListDict.Clear();
            
            if (FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[serial] == null) return;
            mListDev.mUSB.LastModify = SM_Converting.CTimeToDateTime(p._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.mUSB.LastModify);
            mListDev.mUSB.nFilesize = (long)p._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.mUSB.nFilesize;
            for (i = 0; i < this.nCount; i++)
            {
                mListDev.mCh[i].bExist = p._SP_USB_Interface_Dict[serial].mDeviceInfo.mChannelInfo[i].bExist;
                if (mListDev.mCh[i].bExist == true)
                {
                    mListDev.mCh[i].mDSP.LastModify = SM_Converting.CTimeToDateTime(p._SP_USB_Interface_Dict[serial].mDeviceInfo.mChannelInfo[i].mDSP.LastModify);
                    mListDev.mCh[i].mDSP.nFilesize = (long)p._SP_USB_Interface_Dict[serial].mDeviceInfo.mChannelInfo[i].mDSP.nFilesize;
                    str = string.Format("{0}..Exist", i + 1);
                }
                else
                {
                    str = string.Format("{0}..None", i + 1);
                }
                
                listChannel.Items.Add(str);
                
            }

            listChannel.SelectedIndex = 0;

            if (typeFW == 1)
            {
                listChannel.Enabled = false;
            }
            else
            {
                listChannel.Enabled = true;
            }
        }

        private void btFileSelect_Click(object sender, EventArgs e)
        {
            string sExt;
            int OldtypeFW;
            OldtypeFW = typeFW;
            openFileDialog1.Filter = "USB Firmware(*.iic)|*.iic|FPGA Firmware(*.rbf)|*.rbf|DSP Firmware(*.bin)|*.bin";
            openFileDialog1.InitialDirectory = mLastFileInformation.Directory;
            openFileDialog1.FileName = mLastFileInformation.Filename;
            sExt = Path.GetExtension(mLastFileInformation.Filename);
            sExt = sExt.ToLower();
            if (sExt == ".iic") openFileDialog1.FilterIndex = 1;
            else if (sExt == ".rbf") openFileDialog1.FilterIndex = 2;
            else if (sExt == ".bin") openFileDialog1.FilterIndex = 3;
            else
            {
                sExt = ".iic";
                openFileDialog1.FilterIndex = 1;
            }
            openFileDialog1.DefaultExt = sExt;
            openFileDialog1.CheckFileExists = true;
            openFileDialog1.CheckPathExists = true;
            openFileDialog1.Multiselect = false;
            DialogResult res = openFileDialog1.ShowDialog();
            if (res == DialogResult.OK)
            {
                mLastFileInformation.Filename = openFileDialog1.FileName;
                sExt = Path.GetExtension(mLastFileInformation.Filename);
                sExt = sExt.ToLower();
                
                if (sExt == ".iic") typeFW = 1;
                else if (sExt == ".rbf") typeFW = 2;
                else if (sExt == ".bin") typeFW = 3;
                else
                {
                    return;
                }

                this.textFile.Text = mLastFileInformation.Filename;
                FileInfo fileinf = new FileInfo(this.textFile.Text);

                this.mLastFileInformation.Directory = System.IO.Path.GetDirectoryName(this.textFile.Text);
                this.mLastFileInformation.Filename = this.textFile.Text;
                this.mLastFileInformation.creationTime = File.GetCreationTime(this.textFile.Text);
                this.mLastFileInformation.FileSize = fileinf.Length;

                filecfg.SaveObjToXml(SM_Define.SM_Directory_define.FILE_SETTING_FULLNAME1, this.mLastFileInformation);

                this.FileEnable = true;
            }
            else this.FileEnable = false;


            listChannel.Enabled = this.FileEnable;
            listTarget.Enabled = this.FileEnable;
            
            
            textDesc.Enabled = this.FileEnable;

            if (OldtypeFW != typeFW)
            {
                if (OldtypeFW == 1 || typeFW == 1)
                {
                    RefreDeviceCh();
                }
            }
            if (typeFW == 1)
            {
                btBurn.Enabled = true;
                btadd.Enabled = false;
                btadds.Enabled = false;
                btdel.Enabled = false;
                btdels.Enabled = false;
                listChannel.Enabled = false;
                listTarget.Enabled = false;
            }
            else
            {
                if (listTarget.Items.Count > 0) btBurn.Enabled = true;
                else btBurn.Enabled = false;
                btadd.Enabled = this.FileEnable;
                btadds.Enabled = this.FileEnable;
                btdel.Enabled = this.FileEnable;
                btdels.Enabled = this.FileEnable;
                listChannel.Enabled = this.FileEnable;
                listTarget.Enabled = this.FileEnable;
            }
        }

        private void btdevicerefresh_Click(object sender, EventArgs e)
        {
            RefreDeviceCh();
        }

        private void btadd_Click(object sender, EventArgs e)
        {
            string str;
            for (int i = 0; i < listChannel.Items.Count; i++)
            {
                if (listChannel.GetSelected(i) == true)
                {
                    str = listChannel.Items[i].ToString();
                    if (mListDict.ContainsKey(i) == false)
                    {
                        SelectList mLi = new SelectList();
                        mLi.nDev = nDev;
                        mLi.Serial = serial;
                        mLi.nCh = i;
                        mLi.mCh = mListDev.mCh[i];
                        mLi.mUSB = mListDev.mUSB;
                        listTarget.Items.Add(str);
                        mListDict.Add(i, mLi);
                    }
                }
            }
            if (listTarget.Items.Count == 0)
            {
                btBurn.Enabled = false;
            }
            else
            {
                btBurn.Enabled = true;
            }
        }

        private void btadds_Click(object sender, EventArgs e)
        {
            string str;
            for (int i = 0; i < listChannel.Items.Count; i++)
            {

                str = listChannel.Items[i].ToString();
                if (mListDict.ContainsKey(i) == false)
                {
                    SelectList mLi = new SelectList();
                    mLi.nDev = nDev;
                    mLi.Serial = serial;
                    mLi.nCh = i;
                    mLi.mCh = mListDev.mCh[i];
                    mLi.mUSB = mListDev.mUSB;
                    listTarget.Items.Add(str);
                    mListDict.Add(i, mLi);
                }

            }
         
            if (listTarget.Items.Count == 0)
            {
                btBurn.Enabled = false;
            }
            else
            {
                btBurn.Enabled = true;
            }
        }

        private void btdel_Click(object sender, EventArgs e)
        {
            string str;

            for (int i = 0; i < listTarget.Items.Count; i++)
            {
                if (listTarget.GetSelected(i) == true)
                {
                    str = listChannel.Items[i].ToString();
                    listTarget.Items.RemoveAt(i);
                    if (mListDict.ContainsKey(i) == true)
                    {
                        mListDict.Remove(i);
                    }
                }
            }
            if (listTarget.Items.Count == 0)
            {
                btBurn.Enabled = false;
            }
            else
            {
                btBurn.Enabled = true;
            }
        }
        private void btdels_Click(object sender, EventArgs e)
        {
            listTarget.Items.Clear();
            mListDict.Clear();
            btBurn.Enabled = false;
        }

        private void btBurn_Click(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            listChannel.Enabled = false;
            listTarget.Enabled = false;
            btadd.Enabled = false;
            btadds.Enabled = false;
            btdel.Enabled = false;
            btdels.Enabled = false;
            btBurn.Enabled = false;
            textDesc.Enabled = false;
            btBurn.Enabled = false;
            btFileSelect.Enabled = false;
            textDesc.Clear();
            Array.Clear(ArrDesc, 0, 8);
            this.backgroundWorker1.RunWorkerAsync();
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            int i;
            var p = FormMain.mSM_Comm_USB;
            if (this.typeFW == 1)
            {

                burnFpga.Lstindex = 0;
                burnFpga.sSerial = serial;
                burnFpga.Devindex = nDev;

                if (p._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.bUnknow == true)
                {

                    burnUsb.LoadListVendAX();

                    if (burnUsb.BurningRAM() == false)
                    {
                        mListDict[0].nStat = 1;

                        return;
                    }
                    Thread.Sleep(1000);
                    if (burnUsb.BurningROMVandAX(this.textFile.Text) == false)
                    {
                        mListDict[0].nStat = 1;
                    }
                    else
                    {
                        mListDict[0].nStat = 2;
                    }
                    return;
                }
                else
                {
                    if (burnUsb.BurningROM(this.textFile.Text) == false)
                    {
                        mListDict[0].nStat = 1;
                    }
                    else
                    {
                        mListDict[0].nStat = 2;
                    }
                }
            }
            else 
            {

                for (i = 0; i < listTarget.Items.Count; i++)
                {
                    if (this.typeFW == 2)
                    {

                        burnFpga.Lstindex = i;
                        burnFpga.sSerial = serial;
                        burnFpga.Devindex = nDev;
                        if (p._SP_USB_Interface_Dict[serial].mDeviceInfo.mChannelInfo[i].bExist == true)
                        {
                            if (burnFpga.BurningROM(mListDict[i].nCh, this.textFile.Text) == false)
                            {
                                mListDict[i].nStat = 1;
                            }
                            else
                            {
                                mListDict[i].nStat = 2;
                            }
                        }
                        else mListDict[i].nStat = -1;
                    }
                    else if (this.typeFW == 3)
                    {
                        burnDsp.Lstindex = i;
                        burnDsp.sSerial = serial;
                        burnDsp.Devindex = nDev;

                        if (p._SP_USB_Interface_Dict[serial].mDeviceInfo.mChannelInfo[i].bExist == true)
                        {
                            if (burnDsp.BurningROM(i, this.textFile.Text) == false)
                            {
                                mListDict[i].nStat = 1;
                            }
                            else
                            {
                                mListDict[i].nStat = 2;
                            }
                        }
                        else
                        {
                            mListDict[i].nStat = -1;
                        }
                    }
                }
            }
        }

        private void backgroundWorker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            BurnEventArgs burnArgs = (BurnEventArgs)e.UserState;

            ArrDesc[burnArgs.LstIndex] = burnArgs.Description;
            this.textDesc.Lines = ArrDesc;
            this.progressBar1.Maximum = burnArgs.MaxPercentValue;
            if (burnArgs.PosPercentValue > burnArgs.MaxPercentValue) this.progressBar1.Value = burnArgs.MaxPercentValue;
            else this.progressBar1.Value = burnArgs.PosPercentValue;
            this.progressBar1.Style = burnArgs.Style;
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            listChannel.Enabled = true;
            listTarget.Enabled = true;
            btadd.Enabled = true;
            btadds.Enabled = true;
            btdel.Enabled = true;
            btdels.Enabled = true;
            btBurn.Enabled = true;
            textDesc.Enabled = true;
            btBurn.Enabled = true;
            btFileSelect.Enabled = true;
            this.Cursor = Cursors.Default;
        }

        private void frmGateBurn_FormClosing(object sender, FormClosingEventArgs e)
        {
            FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[serial].bLocal = false;
        }
    }

    public struct FWInfo
    {
        public DateTime LastModify;
        public Int64 nFilesize;
        public FWInfo(byte init)
        {
            LastModify = new DateTime(1970, 1, 1);
            nFilesize = 0;
        }

        public void Clear()
        {
            LastModify = new DateTime(1970, 1, 1);
            nFilesize = 0;
        }
    }

    public class ListChannel
    {
        public bool bExist;
        public FWInfo mFPGA;
        public FWInfo mDSP;
        public ListChannel()
        {
            bExist = false;
            mFPGA = new FWInfo();
            mDSP = new FWInfo();
        }

        public void Clear()
        {
            bExist = false;
            mFPGA.Clear();
            mDSP.Clear();
        }
    }

    public class SelectList
    {
        public string Serial;
        public int nDev;
        public int nCh;
        public ListChannel mCh;
        public FWInfo mUSB;
        public int nStat;
        public SelectList()
        {
            Serial = "";
            nDev = -1;
            nCh = -1;
            mCh = new ListChannel();
            mUSB = new FWInfo();
            nStat = 0;
        }
    }

    public class ListDeviceChannel
    {
        public FWInfo mUSB;
        public ListChannel[] mCh;

        public ListDeviceChannel()
        {
            mCh = new ListChannel[SM_Main_Define.DEF_MAX_DEV_CH];
            for (int i = 0; i < SM_Main_Define.DEF_MAX_DEV_CH; i++)
            {
                mCh[i] = new ListChannel();
            }
            mUSB = new FWInfo();
        }
        public void Clear()
        {
            for (int i = 0; i < SM_Main_Define.DEF_MAX_DEV_CH; i++)
            {
                mCh[i].Clear();
            }
            mUSB.Clear();
        }
    }

    public class FirmwareFileInformation
    {
        public string Directory { get; set; }
        public string Filename { get; set; }
        public DateTime creationTime { get; set; }
        public Int64 FileSize { get; set; }
        public FirmwareFileInformation()
        {
            Directory = SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_RES;
            Filename = "";
            creationTime = new DateTime(1970, 1, 1);
            FileSize = 0;
        }
    }


        
}
