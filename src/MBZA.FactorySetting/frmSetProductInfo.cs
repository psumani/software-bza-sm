using System;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;
namespace ZiveLab.ZM.FactorySetting
{
    public partial class frmSetProductInfo : Form
    {
        bool bFirst;
        public int Type;
        private int ich;
        private eZimType mZimType;
        private eDeviceType mDevType;
        public stSystemConfig mSysCfg;
        public stConnCfg mConnCfg;
        
        public CommObj mCommZim;

        public frmSetProductInfo(ref CommObj mSetCommZim, int SetType, ref stSystemConfig mSetSysCfg, ref stConnCfg mSetConnCfg, int inch)
        {
            InitializeComponent();
            bFirst = true;
            this.Icon = ZM.FactorySetting.Properties.Resources.ZMFactorySetting;
            ich = inch;
            Type = SetType;
            mSysCfg = mSetSysCfg;
            mConnCfg = mSetConnCfg;
            mDevType = (eDeviceType)mSysCfg.mSIFCfg.Type;
            mZimType = (eZimType)(mSysCfg.mZimCfg[ich].info.cModel[0] - 0x30);
            mCommZim = mSetCommZim;
            
            this.Text = "Set up product information - ZIM Board.";


            if (Type == 0)
            {
                this.Text = "Set up information - SIF Board.";
                CboBdType.Items.Clear();
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.WBCS));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.SMART));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.ZIM));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.SBZA));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.MBZA));
                CboBdType.SelectedIndex = (int)mSysCfg.mSIFCfg.Type;

                ViewSifInformation();
            }
            else
            {
                
                this.Text = string.Format("Set up information of ZIM Board[Channel {0}].", ich + 1);
                CboBdType.Items.Clear();
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.UNKNOWN));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA1000A));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA1000));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA500));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA100));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA60));

                int zimtype = mSysCfg.mZimCfg[ich].info.cModel[0] - 0x30;
                if (zimtype >= CboBdType.Items.Count || zimtype <= 0) CboBdType.SelectedIndex = 0;
                else CboBdType.SelectedIndex = (int)zimtype;

                ViewZimInformation();
            }

            /* numFwVer0.Enabled = false;
             numFwVer1.Enabled = false;
             numFwVer2.Enabled = false;
             numFwVer3.Enabled = false;*/

            bFirst = false;
        }

        public void ViewSifInformation()
        {
            string str;

            LblProductName.Text = "IF";

            CboBdType.SelectedIndex = mSysCfg.mSIFCfg.Type;

            if ((eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.SBZA
                || (eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.MBZA)               
            {
                LblBdType.Text = "BZA Series";
            }
            else
            {
                LblBdType.Text = "Unknown";
            }

            str  = mSysCfg.mSIFCfg.GetBoardVer();
            numBdVer0.Value = Convert.ToDecimal(str.Substring(0, 1));
            numBdVer1.Value = Convert.ToDecimal(str.Substring(2, 1));
            numBdVer2.Value = Convert.ToDecimal(str.Substring(4, 1));
            numBdVer3.Value = Convert.ToDecimal(str.Substring(6, 1));

            str = mSysCfg.mSIFCfg.GetFirmwareVer();
            numFwVer0.Value = Convert.ToDecimal(str.Substring(0, 1));
            numFwVer1.Value = Convert.ToDecimal(str.Substring(2, 1));
            numFwVer2.Value = Convert.ToDecimal(str.Substring(4, 1));
            numFwVer3.Value = Convert.ToDecimal(str.Substring(6, 1));
            maskSerial.Mask = " & & & & & & & & & & ";
            maskSerial.Text = mConnCfg.GetSerialNumber().Substring(2);
        }

        public void ViewZimInformation()
        {
            string str;
            eZimSnID mSnID;
            int zimtype = mSysCfg.mZimCfg[ich].info.cModel[0] - 0x30;

            if (zimtype >= CboBdType.Items.Count || zimtype < 0) mSnID = eZimSnID.UNKNOWN;
            else mSnID = (eZimSnID)(zimtype);

            LblProductName.Text = Extensions.GetEnumDescription(mSnID);

            str = mSysCfg.mZimCfg[ich].GetBoardVer();
            numBdVer0.Value = Convert.ToDecimal(str.Substring(0, 1));
            numBdVer1.Value = Convert.ToDecimal(str.Substring(2, 1));
            numBdVer2.Value = Convert.ToDecimal(str.Substring(4, 1));
            numBdVer3.Value = Convert.ToDecimal(str.Substring(6, 1));

            str = mSysCfg.mZimCfg[ich].GetFirmwareVer();
            numFwVer0.Value = Convert.ToDecimal(str.Substring(0, 1));
            numFwVer1.Value = Convert.ToDecimal(str.Substring(2, 1));
            numFwVer2.Value = Convert.ToDecimal(str.Substring(4, 1));
            numFwVer3.Value = Convert.ToDecimal(str.Substring(6, 1));
            maskSerial.Mask = " & & & & & & & & & ";
            maskSerial.Text = mSysCfg.mZimCfg[ich].GetSerialNumber().Substring(3);
        }

        public bool SetupSifInformation()
        {
            bool bres = false;
            mSysCfg.mSIFCfg.SetBoardVer(string.Format("{0}{1}{2}{3}", numBdVer0.Value, numBdVer1.Value, numBdVer2.Value, numBdVer3.Value));
            mSysCfg.mSIFCfg.SetFirmwareVer(string.Format("{0}{1}{2}{3}", numFwVer0.Value, numFwVer1.Value, numFwVer2.Value, numFwVer3.Value));
            mSysCfg.mSIFCfg.SetSerialNumber(maskSerial.Text);
            mConnCfg.SetSerialNumber(maskSerial.Text);

            if ((eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.SBZA
                || (eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.MBZA)
            {
                LblBdType.Text = "BZA Series";
            }
            else
            {
                LblBdType.Text = "Unknown";
            }

            if (mCommZim.WriteData(ref mSysCfg) == true)
            {
                if (mCommZim.WriteData(ref mConnCfg) == true)
                {
                    bres = true;
                }
            }

            return bres;
        }

        public bool SetupZimInformation()
        {
            mSysCfg.mZimCfg[ich].SetBoardVer(string.Format("{0}{1}{2}{3}", numBdVer0.Value, numBdVer1.Value, numBdVer2.Value, numBdVer3.Value));
            mSysCfg.mZimCfg[ich].SetFirmwareVer(string.Format("{0}{1}{2}{3}", numFwVer0.Value, numFwVer1.Value, numFwVer2.Value, numFwVer3.Value));
            mSysCfg.mZimCfg[ich].SetSerialNumber((byte)CboBdType.SelectedIndex,maskSerial.Text);
            
            if (mCommZim.ProgConfigOfZim(ich, ref mSysCfg.mZimCfg[ich]) == false)
            {
                MessageBox.Show("Failed Write EEPROM.");
                return false;
            }
            
            return true;
        }

        private void btSetup_Click(object sender, EventArgs e)
        {
            bool bstatus;
   
            if(mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.");
                this.DialogResult = DialogResult.Cancel;
                return;
            }

            

            if (Type == 0)
            {
                bstatus = SetupSifInformation();
            }
            else
            {
                bstatus = SetupZimInformation();
            }

            if(bstatus)  this.DialogResult = DialogResult.OK;
            else this.DialogResult = DialogResult.Cancel;
        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void CboBdType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bFirst == true) return;
            if (Type == 0)
            {
                mSysCfg.mSIFCfg.Type = (byte)CboBdType.SelectedIndex;
                ViewSifInformation();
            }
            else
            {
                mSysCfg.mZimCfg[ich].info.cModel[0] = (byte)(CboBdType.SelectedIndex + 0x30);
                ViewZimInformation();
            }
        }
    }
}
