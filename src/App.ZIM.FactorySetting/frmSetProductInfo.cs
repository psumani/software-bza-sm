using System;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Interface;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Utilities;
namespace App.ZIM.FactorySetting
{
    public partial class frmSetProductInfo : Form
    {
        public int Type;
        private eDeviceType mDevType;
        public stSystemConfig mSysCfg;
        public CommObj mCommZim;

        public frmSetProductInfo(ref CommObj mSetCommZim, int SetType,  ref stSystemConfig mSetSysCfg)
        {
            InitializeComponent();

            this.Icon = Properties.Resources.BatMag;

            Type = SetType;
            mSysCfg = mSetSysCfg;
            mDevType = (eDeviceType)mSysCfg.mSIFCfg.Type;
            mCommZim = mSetCommZim;

            CboAddr.Items.Clear();
            for (int i = 0; i < SIFConstants.MAX_DEVICE_CHANNEL; i++) CboAddr.Items.Add(i.ToString());
            CboAddr.SelectedIndex = 0;

            this.Text = "Set up product information - ZIM Board.";

            if (Type == 0)
            {
                LblAddr.Visible = false;
                CboAddr.Visible = false;
                
                CboBdType.Items.Clear();
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.WBCS));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.SMART));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.ZIM));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.SBZA));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.MBZA));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.ZBCS));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eDeviceType.CXM));
                CboBdType.SelectedIndex = (int)mSysCfg.mSIFCfg.Type;

                ViewSifInformation();
            }
            else
            {

                LblAddr.Visible = false;
                CboAddr.Visible = false;

                CboBdType.Items.Clear();
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.UNKNOWN));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA1000A));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA1000));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA500));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA100));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA60));
                CboBdType.Items.Add(Extensions.GetEnumDescription(eZimType.BZA60HZ));
                
                int zimtype = mSysCfg.mZimCfg.cModel[0] - 0x30;
                if (zimtype >= CboBdType.Items.Count || zimtype < 0) CboBdType.SelectedIndex = 0;
                else CboBdType.SelectedIndex = (int)zimtype;

                ViewZimInformation();
            }
           /* numFwVer0.Enabled = false;
            numFwVer1.Enabled = false;
            numFwVer2.Enabled = false;
            numFwVer3.Enabled = false;*/
        }

        public void ViewSifInformation()
        {
            string str;

            LblProductName.Text = "IF";

            CboBdType.SelectedIndex = (int)mSysCfg.mSIFCfg.Type;

            if ((eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.ZIM
                || (eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.SBZA
                || (eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.MBZA
                || (eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.ZBCS)
            {
                LblBdType.Text = "(SIF II)";
            }
            else
            {
                LblBdType.Text = "(SIF-13)";
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
            maskSerial.Text = mSysCfg.mSIFCfg.GetSerialNumber().Substring(2);
        }

        public void ViewZimInformation()
        {
            string str;
            eZimSnID mSnID;
            int zimtype = mSysCfg.mZimCfg.cModel[0] - 0x30;

            if (zimtype >= CboBdType.Items.Count || zimtype < 0) mSnID = eZimSnID.UNKNOWN;
            else mSnID = (eZimSnID)zimtype;

            LblProductName.Text = Extensions.GetEnumDescription(mSnID);

            CboBdType.SelectedIndex = (byte)mSnID;

            str = mSysCfg.mZimCfg.GetBoardVer();
            numBdVer0.Value = Convert.ToDecimal(str.Substring(0, 1));
            numBdVer1.Value = Convert.ToDecimal(str.Substring(2, 1));
            numBdVer2.Value = Convert.ToDecimal(str.Substring(4, 1));
            numBdVer3.Value = Convert.ToDecimal(str.Substring(6, 1));

            str = mSysCfg.mZimCfg.GetFirmwareVer();
            numFwVer0.Value = Convert.ToDecimal(str.Substring(0, 1));
            numFwVer1.Value = Convert.ToDecimal(str.Substring(2, 1));
            numFwVer2.Value = Convert.ToDecimal(str.Substring(4, 1));
            numFwVer3.Value = Convert.ToDecimal(str.Substring(6, 1));
            maskSerial.Mask = " & & & & & & & & & ";
            maskSerial.Text = mSysCfg.mZimCfg.GetSerialNumber().Substring(3);
        }

        public bool SetupSifInformation(int addr)
        {
            bool bres;
            mSysCfg.mSIFCfg.SetBoardVer(string.Format("{0}{1}{2}{3}", numBdVer0.Value, numBdVer1.Value, numBdVer2.Value, numBdVer3.Value));
            mSysCfg.mSIFCfg.SetFirmwareVer(string.Format("{0}{1}{2}{3}", numFwVer0.Value, numFwVer1.Value, numFwVer2.Value, numFwVer3.Value));
            mSysCfg.mSIFCfg.SetSerialNumber(maskSerial.Text);
            bres = mCommZim.mComm.WriteToDevice(0x63, addr, mSysCfg.ToByteArray());
            return bres;
        }

        public bool SetupZimInformation(int addr)
        {
            bool bres;
            mSysCfg.mZimCfg.SetBoardVer(string.Format("{0}{1}{2}{3}", numBdVer0.Value, numBdVer1.Value, numBdVer2.Value, numBdVer3.Value));
            mSysCfg.mZimCfg.SetFirmwareVer(string.Format("{0}{1}{2}{3}", numFwVer0.Value, numFwVer1.Value, numFwVer2.Value, numFwVer3.Value));
            mSysCfg.mZimCfg.SetSerialNumber((byte)CboBdType.SelectedIndex, maskSerial.Text);
            bres = mCommZim.mComm.WriteToDevice(0x63, addr, mSysCfg.ToByteArray());
            return bres;
        }

        private void btSetup_Click(object sender, EventArgs e)
        {
            bool bstatus;
            int Addr;
            if(mCommZim.isConnected == false)
            {
                MessageBox.Show("Not connected.");
                this.DialogResult = DialogResult.Cancel;
                return;
            }


            Addr = 0;
            if (Type == 0)
            {
                
                bstatus = SetupSifInformation(Addr);
            }
            else
            {
                bstatus = SetupZimInformation(Addr);
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
            if (Type == 0)
            {
                mSysCfg.mSIFCfg.Type = (byte)CboBdType.SelectedIndex;
                ViewSifInformation();
            }
            else
            {
                mSysCfg.mZimCfg.cModel[0] = (byte)(CboBdType.SelectedIndex + 0x30);
                ViewZimInformation();
            }
        }
    }
}
