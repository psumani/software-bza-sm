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
        public string sCode;
        public CommObj mCommZim;
        public int Producttype;
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

            cboProductType.Items.Clear();
            cboProductType.Items.Add(Extensions.GetEnumDescription(eProductType.UNKNOWN));
            cboProductType.Items.Add(Extensions.GetEnumDescription(eProductType.BZA60));
            cboProductType.Items.Add(Extensions.GetEnumDescription(eProductType.BZA100));
            cboProductType.Items.Add(Extensions.GetEnumDescription(eProductType.BZA500));
            cboProductType.Items.Add(Extensions.GetEnumDescription(eProductType.BZA1000));


            if (Type == 0)
            {
                sCode = "R07---------";

                cboProductType.Visible = true;
                lblstatic.Visible = true;

                this.Text = "Set up information - SIF Board.";

                Producttype = (int)mConnCfg.GetProductType();
                cboProductType.SelectedIndex = Producttype;


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
                sCode = "IM----------";

                cboProductType.SelectedIndex = 0;
                cboProductType.Visible = false;
                lblstatic.Visible = false;
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


        public int GetBoardType(string strSerial)
        {
            string str = strSerial.Substring(2, 1);
            int iret = 0;
            if (str == "M") iret = 4;
            else if (str == "S") iret = 3;
            return iret;
        }

        public void ViewSifInformation()
        {
            string str;

            
            CboBdType.SelectedIndex = mSysCfg.mSIFCfg.Type;

  
            
            str  = mSysCfg.mSIFCfg.GetBoardVer();
            if (str.Length == 7)
            {
                numBdVer0.Value = Convert.ToDecimal(str.Substring(0, 1));
                numBdVer1.Value = Convert.ToDecimal(str.Substring(2, 1));
                numBdVer2.Value = Convert.ToDecimal(str.Substring(4, 1));
                numBdVer3.Value = Convert.ToDecimal(str.Substring(6, 1));
            }
            else
            {
                numBdVer0.Value = 0;
                numBdVer1.Value = 0;
                numBdVer2.Value = 0;
                numBdVer3.Value = 0;
            }

            str = mSysCfg.mSIFCfg.GetFirmwareVer();
            if (str.Length == 7)
            {
                numFwVer0.Value = Convert.ToDecimal(str.Substring(0, 1));
                numFwVer1.Value = Convert.ToDecimal(str.Substring(2, 1));
                numFwVer2.Value = Convert.ToDecimal(str.Substring(4, 1));
                numFwVer3.Value = Convert.ToDecimal(str.Substring(6, 1));
            }
            else
            {
                numFwVer0.Value = 0;
                numFwVer1.Value = 0;
                numFwVer2.Value = 0;
                numFwVer3.Value = 0;
            }

            sCode = "R07";
            if ((eProductType)Producttype == eProductType.BZA60) sCode += "A";
            else if ((eProductType)Producttype == eProductType.BZA100) sCode += "B";
            else if ((eProductType)Producttype == eProductType.BZA500) sCode += "C";
            else if ((eProductType)Producttype == eProductType.BZA1000) sCode += "D";
            else sCode += "-";

            if ((eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.SBZA) sCode += "S";
            else if ((eDeviceType)mSysCfg.mSIFCfg.Type == eDeviceType.MBZA) sCode += "M";
            else sCode += "-";

            LblProductName.Text = sCode;
            maskSerial.Mask = " & & & & & & & ";
            str = mConnCfg.GetSerialNumber();
            if (str.Length > 5)
            {
                maskSerial.Text = str.Substring(5);
            }
            else
            {
                maskSerial.Text = "";
            }
            if (str.Length < 5) sCode += str;
            else sCode += str.Substring(5);
        }

        public void ViewZimInformation()
        {
            string str;
            eZimSnID mSnID;
            int zimtype = mSysCfg.mZimCfg[ich].info.cModel[0] - 0x30;

            if (zimtype >= CboBdType.Items.Count || zimtype < 0) mSnID = eZimSnID.UNKNOWN;
            else mSnID = (eZimSnID)(zimtype);

            sCode = Extensions.GetEnumDescription(mSnID);
            if (mSysCfg.mZimCfg[ich].info.cModel[1] < 0x30 || mSysCfg.mZimCfg[ich].info.cModel[1] > 0x39) sCode += "x";
            else sCode += (mSysCfg.mZimCfg[ich].info.cModel[1]-0x30).ToString();
            sCode += "000";
            LblProductName.Text = sCode;

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
            maskSerial.Mask = " 0 0 0 0 0 ";
            maskSerial.Text = mSysCfg.mZimCfg[ich].GetSerialNumber().Substring(7);
            sCode += mSysCfg.mZimCfg[ich].GetSerialNumber().Substring(7);
        }

        public bool SetupSifInformation()
        {
            string sTmp;
            bool bres = false;
            mSysCfg.mSIFCfg.SetBoardVer(string.Format("{0}{1}{2}{3}", numBdVer0.Value, numBdVer1.Value, numBdVer2.Value, numBdVer3.Value));
            mSysCfg.mSIFCfg.SetFirmwareVer(string.Format("{0}{1}{2}{3}", numFwVer0.Value, numFwVer1.Value, numFwVer2.Value, numFwVer3.Value));

            sTmp = maskSerial.Text.Replace(" ", "");
            sCode = sCode.Substring(0, 5);
            sCode += sTmp;
            mSysCfg.mSIFCfg.SetSerialNumber(sCode);
            mConnCfg.SetSerialNumber(sCode);

            if (mCommZim.WriteData(ref mSysCfg) == true)
            {
                if (mCommZim.WriteData(ref mConnCfg) == true)
                {
                    if (mCommZim.CmdStoreRangesInfo(-1) == true)
                    {
                        bres = true;
                    }
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
                mSysCfg.mZimCfg[ich].info.cModel[1] = 0x30;
                ViewZimInformation();
            }
        }

        private void cboProductType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bFirst == true) return;
            if (Type == 0)
            {
                Producttype = cboProductType.SelectedIndex;
                ViewSifInformation();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string  sTmp = maskSerial.Text.Replace(" ", "");
            string str;

            if (Type == 0)
            {
                str = sCode.Substring(0, 5);
            }
            else
            {
                str = sCode.Substring(0, 7);
            }
            str += sTmp;

            Clipboard.SetText(str);
        }

        private void maskSerial_KeyDown(object sender, KeyEventArgs e)
        {
 
        }
    }
}
