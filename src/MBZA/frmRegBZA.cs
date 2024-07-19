using C1.Win.C1FlexGrid;
using SMLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Interface;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{
    public partial class frmRegBZA : Form
    {
        bool bInitLnk;
        bool bInitBza;
        bool bInitBzaCh;

        bool chgreg;

        int LnkRow;
        int BzaRow;
        int BzaChRow;



        int ScanSIFCnt;
        int ScanChCnt;
        int ScanAuxCnt;
        int RegListCnt;

        int SelCh;
        int SelSifCh;

        string sSelSerial1;
        string sSelSerial2;

        int ScanChCount;
        int ScanSifCount;

       Dictionary<string, stScanBzaInf> SearchedSif { get; set; } //PhysicalAddress

        public frmRegBZA()
        {
            InitializeComponent();

            

            ScanChCount = gBZA.ScanBdCount;
            ScanSifCount = gBZA.ScanSifCount;
            SearchedSif = new Dictionary<string, stScanBzaInf>();
            SearchedSif = gBZA.pingHost.SearchedDevice;

            DoubleBuffered = true;
            chgreg = false;
            rdoBZA.Text = "Available devices.";
            
            bInitLnk = false;
            bInitBza = false;
            bInitBzaCh = false;

            CellStyle cs;

            cs = grdBzaCh.Styles.Add("DRed");
            cs.ForeColor = Color.DarkRed;

            cs = grdBzaCh.Styles.Add("DBlue");
            cs.ForeColor = Color.DarkBlue;

            cs = grdBzaCh.Styles.Add("DGray");
            cs.ForeColor = Color.DarkGray;

            cs = grdBzaCh.Styles.Add("Black");
            cs.ForeColor = Color.Black;


            cs = grdBZAs.Styles.Add("DRed");
            cs.ForeColor = Color.DarkRed;

            cs = grdBZAs.Styles.Add("DBlue");
            cs.ForeColor = Color.DarkBlue;

            cs = grdBZAs.Styles.Add("DGray");
            cs.ForeColor = Color.DarkGray;

            cs = grdBZAs.Styles.Add("Black");
            cs.ForeColor = Color.Black;


            cs = grdChs.Styles.Add("DRed");
            cs.ForeColor = Color.DarkRed;

            cs = grdChs.Styles.Add("DBlue");
            cs.ForeColor = Color.DarkBlue;

            cs = grdChs.Styles.Add("DGray");
            cs.ForeColor = Color.DarkGray;

            cs = grdChs.Styles.Add("Black");
            cs.ForeColor = Color.Black;

            

            LnkRow = -1;
            BzaRow = -1;
            BzaChRow = -1;

            sSelSerial1 = "";
            sSelSerial2 = "";

            SelCh = -1;
            SelSifCh = -1;

            this.Icon = gBZA.BitmapToIcon(ZM.Properties.Resources.EditLink);

            this.UploadSif.Image =ZM.Properties.Resources.chip1.ToBitmap();
            this.UploadZim.Image =ZM.Properties.Resources.chip1.ToBitmap();
            this.CmdBZALink.Image =ZM.Properties.Resources.Tool1.ToBitmap();

            this.CmdBZALink.Text = "&Registration";
            this.CmdBZALink.ForeColor = Color.DarkGray;
            this.CmdBZALink.ToolTipText = "Registers or removes an application's channel.";
            this.UploadZim.ToolTipText = "Change the firmware of the ZIM(Channel of SIF).";
            this.UploadSif.ToolTipText = "Change the firmware of the SIF.";

            rdoAll.Checked = true;

            UpdateDeviceInfo();

            InitGridAll();

        }

        public void UpdateDeviceInfo()
        {
            var list = gBZA.ChLnkLst.Keys.ToList();
            list.Sort();

            foreach (var key in list)
            {
                var Value = gBZA.ChLnkLst[key];
                if (gBZA.SifLnkLst.ContainsKey(Value.sSerial) == false)
                {
                    continue;
                }
                var sif = gBZA.SifLnkLst[Value.sSerial];
                if(sif.MBZAIF.bConnect == true)
                {
                    sif.mDevInf.ToWritePtr(sif.MBZAIF.mDevInf.ToByteArray());
                }
            }
        }

        public void SearchDevice()
        {
            CircProgress.Visible = true;
            CircProgress.Start();

            backgroundWorker1.RunWorkerAsync();

            RefreshBZA();
        }

        private void RefreshAll()
        {
            InitGridAll();
            //RefreshGrdRegCh();
        }

        private void RefreshBZA()
        {
            RefreshGrdScanBza();
        }

        private void RefreshBZACh()
        {
            RefreshGrdScanBzaCh();
        }

        private void InitGridAll()
        {
            InitGrdRegCh();
            InitGrdScanBza();
            InitGrdScanBzaCh();
            ViewGrdRegCh();
            
        }

        private void InitBZA()
        {

            InitGrdScanBza();
            InitGrdScanBzaCh();
            ViewGrdScanBza();
        }

        private void InitBZACh()
        {

            InitGrdScanBzaCh();
            ViewGrdScanBzaCh();

        }

        /*private void RefreshAll()
        {
            InitGrdRegCh();
            ViewGrdRegCh();
            if (RegListCnt <= 0)
            {
                InitGrdScanBza();
                ViewGrdScanBza();
                if (ScanSIFCnt <= 0)
                {
                    InitGrdScanBzaCh();
                    ViewGrdScanBzaCh();
                }
            }
            
        }
        
        private void RefreshBZA()
        {

            InitGrdScanBza();
            ViewGrdScanBza();

            if (ScanSIFCnt <= 0)
            {
                InitGrdScanBzaCh();
                ViewGrdScanBzaCh();
            }
            
        }

        private void RefreshBZACh()
        {

            InitGrdScanBzaCh();
            ViewGrdScanBzaCh();

        }

        */

        private void InitGrdRegCh()
        {
            bInitLnk = true;
            
          
            int i;
            string[] sTitle = new string[4] { "CH", "SIF Serial", "CH in SIF", "Status", };

            grdChs.Cols = 4;
            grdChs.Rows = 1;
            grdChs.FixedCols = 1;
            grdChs.FixedRows = 1;
            grdChs.ColWidthMax = 1000;
            grdChs.ColWidthMin = 40;

            grdChs.AutoSizeCols();
            grdChs.AutoSizeRows();
            grdChs.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            grdChs.AllowUserResizing = C1.Win.C1FlexGrid.Classic.AllowUserResizeSettings.flexResizeNone;
            grdChs.Editable = C1.Win.C1FlexGrid.Classic.EditableSettings.flexEDNone;
            
            grdChs.AutoGenerateColumns = true;
            grdChs.AutoResize = true;
            grdChs.AutoSizeMode = C1.Win.C1FlexGrid.Classic.AutoSizeSettings.flexAutoSizeColWidth;
            grdChs.AllowEditing = false;
           
            for (i = 0; i < 4; i++)
            {
                if (i == 1)
                {
                    grdChs.set_ColWidth(i, 120);
                }
                else if (i == 2)
                {
                    grdChs.set_ColWidth(i, 65);
                }
                else if (i == 3)
                {
                    grdChs.set_ColWidth(i, 80);
                }
                else
                {
                    grdChs.set_ColWidth(i, 40);
                }

                grdChs.set_FixedAlignment(i, C1.Win.C1FlexGrid.Classic.AlignmentSettings.flexAlignCenterCenter);
                grdChs.set_ColAlignment(i, C1.Win.C1FlexGrid.Classic.AlignmentSettings.flexAlignCenterCenter);
                grdChs.set_TextMatrix(0, i, sTitle[i]);
            }
            grdChs.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            grdChs.Editable = C1.Win.C1FlexGrid.Classic.EditableSettings.flexEDNone;

        }

        private void InitGrdScanBzaCh()
        {
            bInitBzaCh = true;
            
            int i;
            string[] sTitle = new string[7] { "CH in SIF ", "Serial No.", "Type", "Detected","Firmware","Board","Linked CH", };

            grdBzaCh.Cols = 7;
            grdBzaCh.Rows = 1;
            grdBzaCh.FixedCols = 1;
            grdBzaCh.FixedRows = 1;
            grdBzaCh.ColWidthMax = 1000;
            grdBzaCh.ColWidthMin = 40;
            
            grdBzaCh.AutoSizeCols();
            grdBzaCh.AutoSizeRows();
            grdBzaCh.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            grdBzaCh.AllowUserResizing = C1.Win.C1FlexGrid.Classic.AllowUserResizeSettings.flexResizeNone;
            grdBzaCh.Editable = C1.Win.C1FlexGrid.Classic.EditableSettings.flexEDNone;
            
            grdBzaCh.AutoGenerateColumns = true;
            grdBzaCh.AutoResize = true;
            grdBzaCh.AutoSizeMode = C1.Win.C1FlexGrid.Classic.AutoSizeSettings.flexAutoSizeColWidth;
            grdBzaCh.AllowEditing = false;

            for (i = 0; i < 7; i++)
            {
                if (i == 1)
                {
                    grdBzaCh.set_ColWidth(i, 80);
                }
                else if (i == 2)
                {
                    grdBzaCh.set_ColWidth(i, 60);
                }
                else if (i == 3)
                {
                    grdBzaCh.set_ColWidth(i, 60);
                }
                else if (i == 4)
                {
                    grdBzaCh.set_ColWidth(i, 80);
                }
                else if (i == 5)
                {
                    grdBzaCh.set_ColWidth(i, 120);
                }
                else if (i == 6)
                {
                    grdBzaCh.set_ColWidth(i, 70);
                }
                else
                {
                    grdBzaCh.set_ColWidth(i, 70);
                }

                grdBzaCh.set_FixedAlignment(i, C1.Win.C1FlexGrid.Classic.AlignmentSettings.flexAlignCenterCenter);
                grdBzaCh.set_ColAlignment(i, C1.Win.C1FlexGrid.Classic.AlignmentSettings.flexAlignCenterCenter);
                grdBzaCh.set_TextMatrix(0, i, sTitle[i]);
            }
            grdBzaCh.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            grdBzaCh.Editable = C1.Win.C1FlexGrid.Classic.EditableSettings.flexEDNone;

        }

        private void InitGrdScanBza()
        {
            bInitBza = true;
          
            int i;
            string[] sTitle = new string[7] { "Serial No.", "Type","Firmware","Mac address", "IP Address", "Connection", "Channels",  };

            grdBZAs.Cols = 7;
            grdBZAs.Rows = 1;
            grdBZAs.FixedCols = 1;
            grdBZAs.FixedRows = 1;
            grdBZAs.ColWidthMax = 1000;
            grdBZAs.ColWidthMin = 40;

            grdBZAs.AutoSizeCols();
            grdBZAs.AutoSizeRows();
            grdBZAs.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            grdBZAs.AllowUserResizing = C1.Win.C1FlexGrid.Classic.AllowUserResizeSettings.flexResizeNone;
            grdBZAs.Editable = C1.Win.C1FlexGrid.Classic.EditableSettings.flexEDNone;

            grdBZAs.AutoGenerateColumns = true;
            grdBZAs.AutoResize = true;
            grdBZAs.AutoSizeMode = C1.Win.C1FlexGrid.Classic.AutoSizeSettings.flexAutoSizeColWidth;
            grdBZAs.AllowEditing = false;

            for (i = 0; i < 7; i++)
            {
                if (i == 1)
                {
                    grdBZAs.set_ColWidth(i, 60);
                }
                else if (i == 2)
                {
                    grdBZAs.set_ColWidth(i, 80);
                }
                else if (i == 3)
                {
                    grdBZAs.set_ColWidth(i, 100);
                }
                else if (i == 4)
                {
                    grdBZAs.set_ColWidth(i, 80);
                }
                else if (i == 5)
                {
                    grdBZAs.set_ColWidth(i, 80);
                }
                else if (i == 6)
                {
                    grdBZAs.set_ColWidth(i, 60);
                }
                else
                {
                    grdBZAs.set_ColWidth(i, 100);
                }

                grdBZAs.set_FixedAlignment(i, C1.Win.C1FlexGrid.Classic.AlignmentSettings.flexAlignCenterCenter);
                grdBZAs.set_ColAlignment(i, C1.Win.C1FlexGrid.Classic.AlignmentSettings.flexAlignCenterCenter);
                grdBZAs.set_TextMatrix(0, i, sTitle[i]);
            }
            grdBZAs.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            grdBZAs.Editable = C1.Win.C1FlexGrid.Classic.EditableSettings.flexEDNone;

        }

        private void RefreshGrdRegCh()
        {
            bInitLnk = true;
            int tSelCh = SelCh;
            string tSelSerial1 = sSelSerial1;
            string tSelSerial2 = sSelSerial2;
            string strLink;
            string strCh;
            int tSelSifCh = SelSifCh;
            
            int row = 0;
            int col = 0;
            string str = "";

            RegListCnt = 0;

            var list = gBZA.ChLnkLst.Keys.ToList();
            list.Sort();
            grdChs.Rows = 1;
            
            foreach (var key in list)
            {
                var Value = gBZA.ChLnkLst[key];
                RegListCnt++;
                grdChs.Rows++;
                for (col = 0; col < 4; col++)
                {

                    switch (col)
                    {
                        case 0:
                            str = string.Format("{0}", Convert.ToInt32(key) + 1); ;
                            break;
                        case 1:
                            str = Value.sSerial;
                            break;
                        case 2:
                            str = string.Format("{0}", Value.SifCh + 1);
                            break;
                        case 3:
                            if (Value.bChkSIF == true && Value.bChkCh == true)
                            {
                                str = "OK";
                            }
                            else
                            {
                                if (Value.bChkSIF == false)
                                {
                                    str = "ERR-SIF";
                                }
                                else
                                {
                                    str = "ERR-CH";
                                }

                            }
                            break;

                    }

                    grdChs.set_TextMatrix(row + 1, col, str);

                    if (col > 0)
                    {
                        grdChs.Row = row + 1;
                        grdChs.Col = col;

                        if (Value.bChkSIF == true && Value.bChkCh == true)
                        {
                            grdChs.SetCellStyle(row + 1, col, grdChs.Styles["DBlue"]);
                        }
                        else
                        {
                            grdChs.SetCellStyle(row + 1, col, grdChs.Styles["DRed"]);
                        }
                    }
                }
                row++;
            }


            if (LnkRow > 0 && LnkRow <= RegListCnt)
            {
                
            }
            else if (RegListCnt > 0)
            {
                if (LnkRow <= 0)
                {
                    LnkRow = 1;
                }
                else if (LnkRow > RegListCnt)
                {
                    LnkRow = RegListCnt;
                }
            
            }
            else
            {
                grdChs.ContextMenuStrip = null;
                SelCh = -1;
                LnkRow = 0;
                SelSifCh = -1;
                sSelSerial1 = "";
                sSelSerial2 = "";
                lblSelectReg.Text = "* Selected: None.";
                bInitLnk = false;

                RefreshGrdScanBza();
                return;
            }



            strLink = grdChs.get_TextMatrix(LnkRow, 0);
            tSelCh = Convert.ToInt32(grdChs.get_TextMatrix(LnkRow, 0));
            tSelSerial1 = grdChs.get_TextMatrix(LnkRow, 1);
            tSelSifCh = Convert.ToInt32(grdChs.get_TextMatrix(LnkRow, 2))-1;

            grdChs.Row = LnkRow;
            grdChs.Col = 1;
            grdChs.ForeColorSel = grdChs.GetCellStyle(LnkRow, 1).ForeColor;

            grdChs.ContextMenuStrip = RegMenu;


            if (gBZA.ChLnkLst.ContainsKey(strLink) == true)
            {
                tSelSerial1 = gBZA.ChLnkLst[strLink].sSerial;
                strCh = gBZA.ChLnkLst[strLink].SifCh.ToString();
                lblSelectReg.Text = string.Format("* Selected: {0} Linked {1}-{2}.", strLink, tSelSerial1, strCh);

            }
            else
            {
                lblSelectReg.Text = string.Format("* Selected: {0} Linked not found.", strLink);

            }

           
            if (sSelSerial1 != tSelSerial1)
            {
                sSelSerial1 = tSelSerial1;
                
                BzaRow = 0;
            }
           else
            {
                if(SelSifCh != tSelSifCh)
                {
                    SelSifCh = tSelSifCh;
                    BzaChRow = 0;
                }
            }
            grdChs.Select(LnkRow, 1, 1, 1, true);
            SelCh = tSelCh;
            bInitLnk = false;

            RefreshGrdScanBza();

        }

        private void ViewGrdRegCh()
        {
            bInitLnk = true;


            int row = 0;
            int col = 0;
            string str = "";

            RegListCnt = 0;

            var list = gBZA.ChLnkLst.Keys.ToList();
            list.Sort();

            foreach (var key in list)
            {
                var Value = gBZA.ChLnkLst[key];
                RegListCnt++;
                grdChs.Rows++;
                for (col = 0; col < 4; col++)
                {

                    switch (col)
                    {
                        case 0:
                            str = string.Format("{0}", Convert.ToInt32(key) +1);   ;
                            break;
                        case 1:
                            str = Value.sSerial;
                            break;
                        case 2:
                            str = string.Format("{0}", Value.SifCh+1);
                            break;
                        case 3:
                            if (Value.bChkSIF == true && Value.bChkCh == true)
                            {
                                str = "OK";
                            }
                            else
                            {
                                if (Value.bChkSIF == false)
                                {
                                    str = "ERR-SIF";
                                }
                                else
                                {
                                    str = "ERR-CH";
                                }

                            }
                            break;

                    }

                    grdChs.set_TextMatrix(row + 1, col, str);

                    if (col > 0)
                    {
                        grdChs.Row = row + 1;
                        grdChs.Col = col;
                        if (Value.bChkSIF == true && Value.bChkCh == true)
                        {
                            grdChs.SetCellStyle(row + 1, col, grdChs.Styles["DBlue"]);
                        }
                        else
                        {
                            grdChs.SetCellStyle(row + 1, col, grdChs.Styles["DRed"]);
                        }
                    }
                }
                row++;
            }

            bInitLnk = false;
           
            if (RegListCnt > 0)
            {
                if (LnkRow <= 0)
                {
                    LnkRow = 1;
                }
                else if (LnkRow > RegListCnt)
                {
                    LnkRow = RegListCnt;
                }
                grdChs.ForeColorSel = grdChs.GetCellStyle(LnkRow, 1).ForeColor;
                grdChs.Select(LnkRow, 1, 1, 1, true);
                grdChs.ContextMenuStrip = RegMenu;
            }
            else
            {
                grdChs.ContextMenuStrip = null;
                SelCh = -1;
                LnkRow = 0;
                SelSifCh = -1;
                sSelSerial1 = "";
                sSelSerial2 = "";
                lblSelectReg.Text = "* Selected: None.";

                RefreshGrdScanBza();
            }

        }

        private bool GetChkDetectZim(string tSerial,int sifch)
        {
            if (gBZA.SifLnkLst.ContainsKey(tSerial) == false) 
            {
                return false;
            }

            var pair = gBZA.SifLnkLst[sSelSerial2];
            if (pair.mDevInf.mSysCfg.ChkZIM[sifch] == 0)
            {
                return false;
            }
            return true;
        }
        

        private void ViewGrdScanBza()
        {
            bInitBza = true;

            int row = 0;
            int col = 0;
            int Matchrow = -1;
            string str = "";
            eDeviceType mtype = eDeviceType.SBZA;

            ScanSIFCnt = 0;

            var list = gBZA.SifLnkLst.Keys.ToList();
            list.Sort();

            foreach (var key in list)
            {
                var Value = gBZA.SifLnkLst[key];

                mtype = (eDeviceType)Value.mFindSifCfg.Type;

                if (rdoBZA.Checked == true)
                {
                    if (mtype != eDeviceType.MBZA && mtype != eDeviceType.SBZA) continue;
                    if (Value.MBZAIF.bConnect == false && Value.mFindSifCfg.SockStat != (byte)eSockStatus.LISTEN) continue;
                    if (Value.BdCnt < 0) continue;
                }

                grdBZAs.Rows ++;
                
                for (col = 0; col < 7; col++)
                {
                    switch (col)
                    {
                        case 0:
                            str = key;
                            break;
                        case 1:
                            str = Extensions.GetEnumDescription(mtype);
                            break;
                        case 2:
                            str = Value.mFindSifCfg.GetFirmwareVer();
                            break;
                        case 3:
                            str = Value.sMac;
                            break;
                        case 4:
                            str = Value.sip;
                            break;
                        case 5:
                            if(Value.MBZAIF.bConnect == true)
                            {
                                str = "CONNECTED";
                            }
                            else
                            {
                                if (Value.mFindSifCfg.SockStat == (byte)eSockStatus.LISTEN)
                                {
                                    str = "READY";
                                }
                                else
                                {
                                    str = "BUSY";
                                }
                            }
                            break;
                        case 6:
                            str = Value.BdCnt.ToString();
                            break;
                    }
                    grdBZAs.set_TextMatrix(row + 1, col, str);
                    if (col > 0)
                    {
                        grdBZAs.Row = row + 1;
                        grdBZAs.Col = col;
                        if (GetChkLinkBza(key) == false)
                        {
                            grdBZAs.SetCellStyle(row + 1, col, grdBZAs.Styles["DRed"]);
                        }
                        else
                        {
                            grdBZAs.SetCellStyle(row + 1, col, grdBZAs.Styles["DBlue"]);
                        }
                    }
                }
                if (key == sSelSerial1)
                {
                    Matchrow = row+1;
                }
                row++;
                ScanSIFCnt++;
            }
   
            bInitBza = false;
            if (ScanSIFCnt > 0)
            {
                if (Matchrow <= 0) Matchrow = 1;
                grdBZAs.ForeColorSel = grdBZAs.GetCellStyle(Matchrow, 1).ForeColor;
                grdBZAs.Select(Matchrow, 1, 1, 1, true);
                BzaRow = Matchrow;
            }
            else
            {
                Matchrow = 0;
                BzaRow = 0;
                sSelSerial2 = "";
                lblselsif.Text = "* Selected: None.";
                lblSelectReg.Text = "* Selected: None.";
            }
            
        }

        private void RefreshGrdScanBza()
        {
            bInitBza = true;
            int Matchrow = -1;
            int row = 0;
            int col = 0;
            string str = "";
            string stype;
            string sver;

            eDeviceType mtype = eDeviceType.SBZA;

            ScanSIFCnt = 0;

            var list = gBZA.SifLnkLst.Keys.ToList();
            list.Sort();

            grdBZAs.Rows = 1;

            foreach (var key in list)
            {
                var Value = gBZA.SifLnkLst[key];

                mtype = (eDeviceType)Value.mFindSifCfg.Type;

                if (rdoBZA.Checked == true)
                {
                    if (mtype != eDeviceType.MBZA && mtype != eDeviceType.SBZA) continue;
                    if (Value.MBZAIF.bConnect == false && Value.mFindSifCfg.SockStat != (byte)eSockStatus.LISTEN) continue;
                    if (Value.BdCnt < 0) continue;
                }

                grdBZAs.Rows++;

                for (col = 0; col < 7; col++)
                {
                    switch (col)
                    {
                        case 0:
                            str = key;
                            break;
                        case 1:
                            str = Extensions.GetEnumDescription(mtype);
                            break;
                        case 2:
                            str = Value.mFindSifCfg.GetFirmwareVer();
                            break;
                        case 3:
                            str = Value.sMac;
                            break;
                        case 4:
                            str = Value.sip;
                            break;
                        case 5:
                            if (Value.MBZAIF.bConnect == true)
                            {
                                str = "CONNECTED";
                            }
                            else
                            {
                                if (Value.mFindSifCfg.SockStat == (byte)eSockStatus.LISTEN)
                                {
                                    str = "READY";
                                }
                                else
                                {
                                    str = "BUSY";
                                }
                            }
                            break;
                        case 6:
                            str = Value.BdCnt.ToString();
                            break;
                    }
                    grdBZAs.set_TextMatrix(row + 1, col, str);
                    if (col > 0)
                    {
                        grdBZAs.Row = row + 1;
                        grdBZAs.Col = col;

                        if (GetChkLinkBza(key) == false)
                        {
                            grdBZAs.SetCellStyle(row + 1, col, grdBZAs.Styles["DRed"]);
                        }
                        else
                        {
                            grdBZAs.SetCellStyle(row + 1, col, grdBZAs.Styles["DBlue"]);
                        }
                    }
                }

                if (key == sSelSerial1)
                {
                    Matchrow = row + 1;
                }

                row++;
                ScanSIFCnt++;

            }

            

            if (Matchrow > 0)
            {
                if(Matchrow != BzaRow)
                {
                    BzaRow = Matchrow;
                    BzaChRow = 0;
                    grdBZAs.ForeColorSel = grdBZAs.GetCellStyle(BzaRow, 1).ForeColor;
                    grdBZAs.Select(BzaRow, 1, 1, 1, true);
                }
                
            }
            else
            {
                BzaChRow = 0;
                if (ScanSIFCnt > 0)
                {
                    BzaRow = 1;
                    grdBZAs.ForeColorSel = grdBZAs.GetCellStyle(BzaRow, 1).ForeColor;
                    grdBZAs.Select(BzaRow, 1, 1, 1, true);
                }
                else
                {
                    BzaRow = 0;
                    sSelSerial2 = "";
                    lblselsif.Text = "* Selected: None.";
                    lblSelectReg.Text = "* Selected: None.";
                    InitGrdScanBzaCh();
                    ViewGrdScanBzaCh();
                    return;
                }
            }

           

            sSelSerial2 = grdBZAs.get_TextMatrix(BzaRow, 0);
            stype = grdBZAs.get_TextMatrix(BzaRow, 1);
            sver = grdBZAs.get_TextMatrix(BzaRow, 2);
            str = string.Format("* Selected: {0}, Type:{1}, ver:{2}.", sSelSerial2, stype, sver);
            lblselsif.Text = str;

            grdBZAs.Row = BzaRow;
            grdBZAs.Col = 1;
            grdBZAs.ForeColorSel = grdBZAs.GetCellStyle(BzaRow, 1).ForeColor;

            if (sSelSerial2 == sSelSerial1)
            {
                SelSifCh = Convert.ToInt32(grdChs.get_TextMatrix(LnkRow, 2))-1;
            }
            else
            {
                SelSifCh = -1;
            }
            bInitBza = false;
            RefreshGrdScanBzaCh();

        }

        private bool GetChkLinkBza(string tSerial)
        {
            if (gBZA.SifLnkLst.ContainsKey(tSerial) == false)
            {
                return false;
            }

            var pair = gBZA.SifLnkLst[tSerial];

            eDeviceType mtype = (eDeviceType)pair.mDevInf.mSysCfg.mSIFCfg.Type;

            if (mtype != eDeviceType.SBZA && mtype != eDeviceType.MBZA)
            {
                return false;
            }

            int Maxch = 1;
            if (mtype == eDeviceType.MBZA)
            {
                Maxch = MBZA_Constant.MAX_DEV_CHANNEL;
            }
            for (int i = 0; i < Maxch; i++)
            {
                if (pair.mDevInf.mSysCfg.EnaZIM[i] == 0) continue;
                if (pair.iLinkCh[i] == -1)
                {
                    return false;
                }
            }
            return true;
        }

        private void ViewGrdScanBzaCh()
        {
            bInitBzaCh = true;

            int row = 0;
            int Matchrow = 0;
            int col = 0;
            int ch = 0;
            int Maxch = 0;
            string str = "";

            this.CmdBZALink.ForeColor = Color.DarkGray;

            ScanChCnt = 0;
            if (gBZA.SifLnkLst.ContainsKey(sSelSerial2) == false)
            {
                return;
            }

            var pair = gBZA.SifLnkLst[sSelSerial2];

            eDeviceType mtype = (eDeviceType)pair.mDevInf.mSysCfg.mSIFCfg.Type;

            if (mtype != eDeviceType.SBZA && mtype != eDeviceType.MBZA)
            {
                return;
            }

            Maxch = 1;
            if (mtype == eDeviceType.MBZA)
            {
                Maxch = MBZA_Constant.MAX_DEV_CHANNEL;
            }

            for (ch = 0; ch < Maxch; ch++)
            {
                if (pair.mDevInf.mSysCfg.EnaZIM[ch] == 0) continue;
                
                grdBzaCh.Rows++;
                for (col = 0; col < 7; col++)
                {
                    string[] sTitle = new string[7] { "CH", "Serial", "Type", "Detected", "Firmware", "Board", "Linked", };
                    switch (col)
                    {
                        case 0:
                            str = (ch + 1).ToString();
                            break;
                        case 1:
                            str = pair.mDevInf.mSysCfg.mZimCfg[ch].GetSerialNumber();
                            break;
                        case 2:
                            str = pair.mDevInf.mSysCfg.mZimCfg[ch].info.GetZimTypeString();
                            break;
                        case 3:
                            if (pair.mDevInf.mSysCfg.ChkZIM[ch] == 0) str = "No";
                            else str = "Yes";
                            break;
                        case 4:
                            str = pair.mDevInf.mSysCfg.mZimCfg[ch].GetFirmwareVer();
                            break;
                        case 5:
                            str = pair.mDevInf.mSysCfg.mZimCfg[ch].GetBoardTypeString() + " " + pair.mDevInf.mSysCfg.mZimCfg[ch].GetBoardVer();
                            break;
                        case 6:
                            if (mtype == eDeviceType.MBZA && ch > 0)
                            {
                                if (pair.iLinkCh[0] == -1)
                                {
                                    str = "None";
                                }
                                else
                                {
                                    str = string.Format("{0}", pair.iLinkCh[0] + 1);
                                }
                            }
                            else
                            {
                                if (pair.iLinkCh[ch] == -1)
                                {
                                    str = "None";
                                }
                                else
                                {
                                    str = string.Format("{0}", pair.iLinkCh[ch] + 1);
                                }
                            }
                            break;
                            
                    }
                    grdBzaCh.set_TextMatrix(row + 1, col, str);
                    if (col > 0)
                    {
                        grdBzaCh.Row = row + 1;
                        grdBzaCh.Col = col;
                        if (mtype == eDeviceType.MCBZA && ch > 0)
                        {
                            if (pair.iLinkCh[0] == -1)
                            {
                                grdBzaCh.SetCellStyle(row + 1, col, grdBzaCh.Styles["DGray"]);
                            }
                            else
                            {
                                grdBzaCh.SetCellStyle(row + 1, col, grdBzaCh.Styles["Black"]);
                            }
                        }
                        else
                        {
                            if (pair.iLinkCh[ch] == -1)
                            {
                                grdBzaCh.SetCellStyle(row + 1, col, grdBzaCh.Styles["DRed"]);
                            }
                            else
                            {
                                grdBzaCh.SetCellStyle(row + 1, col, grdBzaCh.Styles["DBlue"]);
                            }
                        }
                    }
                }
                row++;
                ScanChCnt++;
                if (SelSifCh == ch && sSelSerial1 == sSelSerial2 && sSelSerial2 != "")
                {
                    Matchrow = row;
                }
            }

            bInitBzaCh = false;

            if (ScanChCnt > 0)
            {
                if (Matchrow <= 0) Matchrow = 1;
                grdBzaCh.Row = Matchrow;
                grdBzaCh.Col = 1;
                grdBzaCh.ForeColorSel = grdBzaCh.GetCellStyle(Matchrow, 1).ForeColor;
                grdBzaCh.Select(Matchrow, 1, 1, 1, true);
                grdBzaCh.ContextMenuStrip = ScanMenu;
            }
            else
            {
                grdBzaCh.ContextMenuStrip = null;
                lblSelectReg.Text = "* Selected: None.";
            }
            BzaChRow = Matchrow;
            
        }

        private void RefreshGrdScanBzaCh()
        {
            bInitBzaCh = true;

            int Matchrow = -1;
            int col = 0;
            int bd = 0;
            int Maxbd = 0;
            string str = "";

            this.CmdBZALink.ForeColor = Color.DarkGray;

            ScanChCnt = 0;
            ScanAuxCnt = 0;
            if (gBZA.SifLnkLst.ContainsKey(sSelSerial2) == false)
            {
                return;
            }

            var pair = gBZA.SifLnkLst[sSelSerial2];

            eDeviceType mtype = (eDeviceType)pair.mDevInf.mSysCfg.mSIFCfg.Type;

            if (mtype != eDeviceType.SBZA && mtype != eDeviceType.MBZA && mtype != eDeviceType.MCBZA)
            {
                return;
            }

            Maxbd = 1;
            if (mtype == eDeviceType.MBZA || mtype == eDeviceType.MCBZA)
            {
                Maxbd = MBZA_Constant.MAX_DEV_CHANNEL;
            }

            grdBzaCh.Rows = 1;

            for (bd = 0; bd < Maxbd; bd++)
            {
                if (pair.mDevInf.mSysCfg.EnaZIM[bd] == 0) continue;

                grdBzaCh.Rows++;
                for (col = 0; col < 7; col++)
                {
                    switch (col)
                    {
                        case 0:
                            str = (bd + 1).ToString();
                            break;
                        case 1:
                            str = pair.mDevInf.mSysCfg.mZimCfg[bd].GetSerialNumber();
                            break;
                        case 2:
                            str = pair.mDevInf.mSysCfg.mZimCfg[bd].info.GetZimTypeString();
                            break;
                        case 3:
                            if (pair.mDevInf.mSysCfg.ChkZIM[bd] == 0) str = "No";
                            else str = "Yes";
                            break;
                        case 4:
                            str = pair.mDevInf.mSysCfg.mZimCfg[bd].GetFirmwareVer();
                            break;
                        case 5:
                            str = pair.mDevInf.mSysCfg.mZimCfg[bd].GetBoardTypeString() + " " + pair.mDevInf.mSysCfg.mZimCfg[bd].GetBoardVer();
                            break;
                        case 6:
                            if (mtype == eDeviceType.MCBZA && bd > 0)
                            {
                                if (pair.iLinkCh[0] == -1)
                                {
                                    str = "None";
                                }
                                else
                                {
                                    str = string.Format("{0}", pair.iLinkCh[0] + 1);
                                }
                            }
                            else
                            {
                                if (pair.iLinkCh[bd] == -1)
                                {
                                    str = "None";
                                }
                                else
                                {
                                    str = string.Format("{0}", pair.iLinkCh[bd] + 1);
                                }
                            }
                            break;

                    }
                    grdBzaCh.set_TextMatrix(bd + 1, col, str);
                    if (mtype == eDeviceType.MCBZA && bd > 0)
                    {
                        if (pair.iLinkCh[0] == -1)
                        {
                            grdBzaCh.SetCellStyle(bd + 1, col, grdBzaCh.Styles["DGray"]);
                        }
                        else
                        {
                            grdBzaCh.SetCellStyle(bd + 1, col, grdBzaCh.Styles["Black"]);
                        }
                    }
                    else
                    {
                        if (pair.iLinkCh[bd] == -1)
                        {
                            grdBzaCh.SetCellStyle(bd + 1, col, grdBzaCh.Styles["DRed"]);
                        }
                        else
                        {
                            grdBzaCh.SetCellStyle(bd + 1, col, grdBzaCh.Styles["DBlue"]);
                        }
                    }
                }
                
                if (SelSifCh == bd && sSelSerial1 == sSelSerial2 && sSelSerial2 != "")
                {
                    Matchrow = bd + 1;
                }

                ScanChCnt++;
                
            }

            if (ScanChCnt > 0)
            {
                if (mtype == eDeviceType.MCBZA)
                {
                    ScanAuxCnt = ScanChCnt - 1;
                    ScanChCnt = 1;
                }
            }

            bInitBzaCh = false;

            if (Matchrow <= 0)
            {
                if (ScanChCnt > 0)
                {
                    if (BzaChRow <= 0)
                    {
                        BzaChRow = 1;
                        
                    }
                }
                else
                {
                    grdBzaCh.ContextMenuStrip = null;
                    lblSelectReg.Text = "* Selected: None.";
                    BzaChRow = 0;
                    return;
                }
            }
            else
            {
                if (BzaChRow != Matchrow)
                {
                    grdBzaCh.ForeColorSel = grdBzaCh.GetCellStyle(BzaChRow, 1).ForeColor;
                    grdBzaCh.Select(BzaChRow, 1, 1, 1, true);
                    BzaChRow = Matchrow;
                }
            }
            

            if (BzaChRow > 0 && BzaChRow <= ScanChCnt)
            {
                grdBzaCh.Row = BzaChRow;
                grdBzaCh.Col = 1;
                grdBzaCh.ContextMenuStrip = ScanMenu;
                grdBzaCh.ForeColorSel = grdBzaCh.GetCellStyle(BzaChRow, 1).ForeColor;
            }
            else if (BzaChRow > 0 && BzaChRow <= ScanChCnt + ScanAuxCnt)
            {
                grdBzaCh.Row = BzaChRow;
                grdBzaCh.Col = 1;
                grdBzaCh.ContextMenuStrip = ScanMenu1;
                grdBzaCh.ForeColorSel = grdBzaCh.GetCellStyle(BzaChRow, 1).ForeColor;
            }
            else
            {
                grdBzaCh.ContextMenuStrip = null;
                lblSelectReg.Text = "* Selected: None.";
            }
            
            bInitBzaCh = false;
        }

        private void grdBZAs_SelRow(int row)
        {
            if (row <= 0 || bInitBza == true) return;

            sSelSerial2 = grdBZAs.get_TextMatrix(row, 0);
            string stype = grdBZAs.get_TextMatrix(row, 1);
            string sver = grdBZAs.get_TextMatrix(row, 2);
            string str = string.Format("* Selected: {0}, Type:{1}, ver:{2}.", sSelSerial2, stype, sver);
            lblselsif.Text = str;

            grdBZAs.Row = row;
            grdBZAs.Col = 1;
            grdBZAs.ForeColorSel = grdBZAs.GetCellStyle(row, 1).ForeColor;
            if (sSelSerial2 == sSelSerial1)
            {
                SelSifCh = Convert.ToInt32(grdChs.get_TextMatrix(LnkRow, 2))-1;
            }
            else
            {
                SelSifCh = -1;
            }

            if(BzaRow != row)
            {
                BzaRow = row;
                BzaChRow = 0;
            }
            RefreshGrdScanBzaCh();

        }

        private void grdBZAChs_SelRow(int row)
        {
            string str = "";
            string strSerial = "";
            string strCh = "";
            string strLink = "";
            string strCheck = "";
            int ch = -1;

            if (row <= 0 || bInitBzaCh == true) return;

            strSerial = grdBzaCh.get_TextMatrix(row, 1);
            strCh = grdBzaCh.get_TextMatrix(row, 0);

            ch = Convert.ToInt32(strCh);
            strLink = grdBzaCh.get_TextMatrix(row, 6);
            strCheck = grdBzaCh.get_TextMatrix(row, 3);
            str = string.Format("* Selected: {0}-{1}, Linked:{2}, detected:{3}.", strSerial, strCh, strLink, strCheck);
            lblSelected.Text = str;


            var pair = gBZA.SifLnkLst[sSelSerial2];
            eDeviceType mtype = (eDeviceType)pair.mDevInf.mSysCfg.mSIFCfg.Type;

            if(mtype == eDeviceType.MCBZA)
            {
                if(row > 1)
                {
                    grdBzaCh.Row = row;
                    grdBzaCh.Col = 1;
                    grdBzaCh.ForeColorSel = grdBzaCh.GetCellStyle(row, 1).ForeColor;
                    grdBzaCh.ContextMenuStrip = ScanMenu1;
                    SelSifCh = Convert.ToInt32(strCh) - 1;

                    BzaChRow = row;

                    return;
                }
            }

            if (strLink == "None")
            {
                CmdBZALink.Text = "&Registration";
                CmdBZALink.ForeColor = Color.DarkBlue;
                CmdBZALink.ToolTipText = "Register a channel.";
            }
            else
            {
                CmdBZALink.Text = "&Change registration";
                CmdBZALink.ForeColor = Color.DarkRed;
                CmdBZALink.ToolTipText = "Change or cancel a registered channel.";
            }

            grdBzaCh.Row = row;
            grdBzaCh.Col = 1;
            grdBzaCh.ForeColorSel = grdBzaCh.GetCellStyle(row, 1).ForeColor;
            grdBzaCh.ContextMenuStrip = ScanMenu;
            SelSifCh = Convert.ToInt32(strCh) - 1;

            BzaChRow = row;
        }

        private void grdChs_SelRow(int row)
        {
            string strCh = "";
            string strLink = "";
            string tSelSerial1 = sSelSerial1;
            int tSelSifCh = SelSifCh;

            if (row <= 0 || bInitLnk == true) return;
            LnkRow = row;
            strLink = grdChs.get_TextMatrix(LnkRow, 0);
            SelCh = Convert.ToInt32(grdChs.get_TextMatrix(LnkRow, 0));
            tSelSerial1 = grdChs.get_TextMatrix(LnkRow, 1);
            tSelSifCh = Convert.ToInt32(grdChs.get_TextMatrix(LnkRow, 2))-1;

            grdChs.Row = LnkRow;
            grdChs.Col = 1;
            grdChs.ForeColorSel = grdChs.GetCellStyle(LnkRow, 1).ForeColor;
            grdChs.ContextMenuStrip = RegMenu;


            if (gBZA.ChLnkLst.ContainsKey(strLink) == true)
            {
                tSelSerial1 = gBZA.ChLnkLst[strLink].sSerial;
                strCh = gBZA.ChLnkLst[strLink].SifCh.ToString();
                lblSelectReg.Text = string.Format("* Selected: {0} Linked {1}-{2}.", strLink, tSelSerial1, strCh);
                
            }
            else
            {
                lblSelectReg.Text = string.Format("* Selected: {0} Linked not found.", strLink);

            }


            if (sSelSerial1 != tSelSerial1)
            {
                sSelSerial1 = tSelSerial1;
                BzaRow = 0;
            }
            if(SelSifCh != tSelSifCh)
            {
                BzaChRow = 0;
                SelSifCh = tSelSifCh;
            }


            RefreshGrdScanBza();
            
        }

        private void grdBZAs_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right || e.Button == MouseButtons.Middle)
            {
                HitTestInfo hti = grdBZAs.HitTest(e.X, e.Y);
                if (hti.Row > 0)
                {
                    grdBZAs.ForeColorSel = grdBZAs.GetCellStyle(hti.Row, 1).ForeColor;
                    grdBZAs.Select(hti.Row, 1);
                }
            }
        }

        

        private void rdoAll_CheckedChanged(object sender, EventArgs e)
        {
            RefreshBZA();
        }

        private void rdoBZA_CheckedChanged(object sender, EventArgs e)
        {
            RefreshBZA();
        }

        private void LnkLblSave_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            SaveFileDialog saveDlg = new SaveFileDialog();
            saveDlg.Title = "Save channel link information file.";
            saveDlg.InitialDirectory = Path.GetDirectoryName(gBZA.FileLnkCh);
            saveDlg.FileName = Path.GetFileName(gBZA.FileLnkCh);
            saveDlg.Filter = "ZM Channel link(*.mcl)|*.mcl|All files (*.*)|*.*";
            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }
            
            if(gBZA.SaveLinkChToXml(saveDlg.FileName) == false)
            {
                MessageBox.Show("Failed to save.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MessageBox.Show("Save was successful.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void LnkLblLoad_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            OpenFileDialog loadDlg = new OpenFileDialog();
            loadDlg.Title = "Open Channel Link Information File.";
            loadDlg.InitialDirectory = Path.GetDirectoryName(gBZA.FileLnkCh);
            loadDlg.FileName = Path.GetFileName(gBZA.FileLnkCh);
            loadDlg.Filter = "ZM Channel link(*.mcl)|*.mcl|All files (*.*)|*.*";
            if (loadDlg.ShowDialog() == DialogResult.Cancel)
            {
                return;
            }

            if(gBZA.LoadXmlToLinkCh(loadDlg.FileName) == true)
            {
                RefreshAll();
            }

        }

        private void LnkLblClose_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }

        private void RegistrationCH()
        {

        }
        private void CmdBZALink_Click(object sender, EventArgs e)
        {


            PromptDialog dlg = new PromptDialog();

            List<string> ItemList = new List<string>();
            int ireg;
            int ireg1;
            string sreg;
            string sreg1;
            string sMsg = "";
            bool bremove = false;
            bool breg = false;

            if (BzaChRow <= 0)
            {
                MessageBox.Show("The BZA board is not selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if(grdBzaCh.get_TextMatrix(BzaChRow, 3) == "No")
            {
                if (MessageBox.Show("The board is registered but not found.\r\n Do you want to continue?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                {
                    return;
                }
            }

            ItemList.Add("None");
            for (int i = 0; i < MBZA_Constant.MAX_APP_CHANNEL; i++)
            {
                ItemList.Add(string.Format("Board-{0}", i + 1));
            }
            sreg = grdBzaCh.get_TextMatrix(BzaChRow, 6);

            if (sreg == "None")
            {
                ireg = 0;
            }
            else
            {
                ireg = Convert.ToInt32(sreg);
            }

            ireg1 = dlg.ShowComboDialog("Please select the board of the application you want to register.", ItemList.ToArray(), ireg, gBZA.sMsgTitle, 100, 500,5);

            if (ireg != ireg1)
            {
                if (ireg > 0)
                {
                    bremove = true;
                }

                if (ireg1 > 0)
                {
                    breg = true;
                }
            }

            if (bremove)
            {
                if (breg)
                {
                    sMsg = string.Format("Do you want to release registered channel {0} and ", ireg);
                    sMsg += string.Format("register as channel {0} ?", ireg1);
                }
                else
                {
                    sMsg = string.Format("Do you want to release registered channel {0}. ", ireg);
                }
            }
            else
            {
                if (breg)
                {
                    sMsg = string.Format("Do you want to register as channel {0} ?", ireg1);
                }
                else
                {
                    MessageBox.Show("The BZA channel is not selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }

            if (MessageBox.Show(sMsg, gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
            {
                return;
            }
            sreg = string.Format("{0}", ireg - 1);
            sreg1 = string.Format("{0}", ireg1 - 1);
            if (breg)
            {
                if (gBZA.ChLnkLst.ContainsKey(sreg1))
                {
                    sMsg = string.Format("Channel {0} is already registered.Do you want to proceed ?", ireg1);
                    if (MessageBox.Show(sMsg, gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
                    {
                        return;
                    }
                    if (gBZA.SifLnkLst.ContainsKey(gBZA.ChLnkLst[sreg1].sSerial))
                    {
                        if (gBZA.SifLnkLst[gBZA.ChLnkLst[sreg1].sSerial].MBZAIF.bConnect)
                        {
                            gBZA.SifLnkLst[gBZA.ChLnkLst[sreg1].sSerial].MBZAIF.StopThread();
                        }
                        gBZA.SifLnkLst[gBZA.ChLnkLst[sreg1].sSerial].iLinkCh[gBZA.ChLnkLst[sreg1].SifCh] = -1;
                    }
                    gBZA.ChLnkLst.Remove(sreg1);
                }

                stLinkSifCh tval = new stLinkSifCh(0);
                tval.bChkSIF = true;
                tval.bChkCh = true;
                tval.sip = gBZA.SifLnkLst[sSelSerial2].sip;
                tval.sMac = gBZA.SifLnkLst[sSelSerial2].sMac;
                tval.sSerial = sSelSerial2;
                tval.SifCh = BzaChRow - 1;
                gBZA.SifLnkLst[sSelSerial2].iLinkCh[BzaChRow - 1] = ireg1 - 1;

                if (gBZA.ChLnkLst.ContainsKey(sreg1))
                {
                    gBZA.ChLnkLst[sreg1] = tval;
                }
                else
                {
                    gBZA.ChLnkLst.Add(sreg1, tval);
                }
            }

            if (bremove)
            {
                if (ireg > 0)
                {
                    sreg = string.Format("{0}", ireg - 1);
                    if (gBZA.ChLnkLst.ContainsKey(sreg))
                    {
                        if (gBZA.SifLnkLst.ContainsKey(gBZA.ChLnkLst[sreg].sSerial))
                        {
                            if (gBZA.SifLnkLst[gBZA.ChLnkLst[sreg].sSerial].MBZAIF.bConnect)
                            {
                                gBZA.SifLnkLst[gBZA.ChLnkLst[sreg].sSerial].MBZAIF.StopThread();
                            }
                            gBZA.SifLnkLst[gBZA.ChLnkLst[sreg].sSerial].iLinkCh[gBZA.ChLnkLst[sreg].SifCh] = -1;
                        }
                        gBZA.ChLnkLst.Remove(sreg);
                    }
                }
            }

            if(breg == true)
            {
                LnkRow = ireg1;
            }
            
            RefreshAll();
            /*
            if (ireg != ireg1)
            {
                if(ireg1 == 0)
                {
                    if (ireg > 0)
                    {
                        sreg = string.Format("{0}", ireg - 1);
                        if (gBZA.ChLnkLst.ContainsKey(sreg))
                        {
                            gBZA.ChLnkLst.Remove(sreg);
                            RefreshAll();
                        }
                    }
                }
                else
                {
                    if (ireg1 > 0)
                    {
                        sreg1 = string.Format("{0}", ireg1 - 1);
                        sreg = string.Format("{0}", ireg - 1);
                       
                        

                            
                        if (ireg > 0)
                        {
                            sMsg = string.Format("Do you want to release registered channel {0} and ", ireg);
                        }
                        sMsg += string.Format("register as channel {0} ?", ireg1);

                        if(MessageBox.Show(sMsg, gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
                        {
                            return;
                        }

                        if (gBZA.ChLnkLst.ContainsKey(sreg1))
                        {
                            sMsg = string.Format("Channel {0} is already registered.Do you want to proceed ?", ireg1);
                            if (MessageBox.Show(sMsg, gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
                            {
                                return;
                            }
                            if (gBZA.SifLnkLst.ContainsKey(gBZA.ChLnkLst[sreg1].sSerial))
                            {
                                gBZA.SifLnkLst[gBZA.ChLnkLst[sreg1].sSerial].MBZAIF.StopThread();
                                gBZA.SifLnkLst[gBZA.ChLnkLst[sreg1].sSerial].iLinkCh[gBZA.ChLnkLst[sreg1].SifCh] = -1;
                            }
                        }

                        if (ireg > 0)
                        {
                            if (gBZA.ChLnkLst.ContainsKey(sreg))
                            {
                                gBZA.ChLnkLst.Remove(sreg);
                            }
                        }

                        stLinkSifCh tval = new stLinkSifCh(0);
                        tval.bChkSIF = true;
                        tval.bChkCh = true;
                        tval.sip = gBZA.SifLnkLst[sSelSerial2].sip;
                        tval.sMac = gBZA.SifLnkLst[sSelSerial2].sMac;
                        tval.sSerial = sSelSerial2;
                        tval.SifCh = BzaChRow - 1;
                        gBZA.SifLnkLst[sSelSerial2].iLinkCh[BzaChRow - 1] = ireg1-1;

                        if (gBZA.ChLnkLst.ContainsKey(sreg1))
                        {
                            gBZA.ChLnkLst[sreg1] = tval;
                        }
                        else
                        {
                            gBZA.ChLnkLst.Add(sreg1, tval);
                        }

                        RefreshAll();
                    }
                }
                
            }*/

            chgreg = true;
        }

        private void UploadZim_Click(object sender, EventArgs e)
        {
            bool bAux = false;
            if(SelSifCh < 0)
            {
                MessageBox.Show("Not selected board !", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            var pair = gBZA.SifLnkLst[sSelSerial2];
            eDeviceType mtype = (eDeviceType)pair.mDevInf.mSysCfg.mSIFCfg.Type;
            if (mtype == eDeviceType.MCBZA && BzaChRow > 1) bAux = true;
            frmBurnZIM frm = new frmBurnZIM(sSelSerial2, SelSifCh, gBZA.SifLnkLst[sSelSerial2].MBZAIF.bConnect, bAux);
            frm.ShowDialog();

            RefreshGrdScanBzaCh();

        }

    private void UploadSif_Click(object sender, EventArgs e)
        {

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Multiselect = false;
            dlg.DefaultExt = "sif";
            dlg.Filter = "sif files (*.sif)|*.sif|All files (*.*)|*.*";
            dlg.Title = "Select the SIF firmware file to update.";

            dlg.FileName = gBZA.appcfg.FileNameSIFFW;
            dlg.InitialDirectory = gBZA.appcfg.PathSIFFW;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                Cursor.Current = Cursors.WaitCursor;
                if (gBZA.SifLnkLst[sSelSerial2].MBZAIF.bConnect == false)
                {
                    CommObj mCommZim = new CommObj();
                    mCommZim.HostNameToIP(gBZA.SifLnkLst[sSelSerial2].sip, ref mCommZim.mConnTargetCfg.IpAddress);
                    mCommZim.mConnTargetCfg.Port = 2000;
                    mCommZim.mDevType = (eDeviceType)gBZA.SifLnkLst[sSelSerial2].mDevInf.mSysCfg.mSIFCfg.Type;
                    if(mCommZim.Connect() == false)
                    {
                        mCommZim.Dispose();
                        Cursor.Current = Cursors.Default;
                        MessageBox.Show("Connection failed.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    if (mCommZim.mComm.UploadFirmware(dlg.FileName) == false)
                    {
                        mCommZim.Dispose();
                        Cursor.Current = Cursors.Default;
                        MessageBox.Show("Firmware change failed.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    mCommZim.Dispose();
                }
                else
                {
                    if(MBZA_MapUtil.UploadSifFirmware(sSelSerial2, dlg.FileName) == false)
                    {
                        Cursor.Current = Cursors.Default;
                        MessageBox.Show("Firmware change failed.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }

                }
                
                gBZA.appcfg.PathSIFFW = Path.GetDirectoryName(dlg.FileName);
                gBZA.appcfg.FileNameSIFFW = Path.GetFileName( dlg.FileName);
                Cursor.Current = Cursors.Default;
                gBZA.ShowInfoBox("The firmware change has been successful. \r\n\r\nPlease restart the device.");

            }
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            var success = Task.Run(async () => { await gBZA.pingHost.ScanAsync(); }).Wait(300000);
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            CircProgress.Stop();
            CircProgress.Visible = false;



            if (ScanChCount == gBZA.ScanBdCount && ScanSifCount == gBZA.ScanSifCount && SearchedSif.Count == gBZA.pingHost.SearchedDevice.Count)
            {

                return;
            }

            if (gBZA.pingHost.SearchedDevice.Count > SearchedSif.Count)
            {
                foreach (var pair in gBZA.pingHost.SearchedDevice)
                {
                    if (pair.Value.bConnected == 0) continue;
                    if (pair.Value.bBza == 0) continue;
                }
            }
            else
            {
                foreach (var pair in SearchedSif)
                {
                    if (pair.Value.bConnected == 0) continue;
                    if (pair.Value.bBza == 0) continue;
                }
            }
            
        }

        private void btRefreshSifCh_Click(object sender, EventArgs e)
        {
            if(gBZA.SifLnkLst.ContainsKey(sSelSerial2) == false)
            {
                MessageBox.Show("The device is not selected or cannot be found in the list.");
                InitGrdScanBzaCh();
                return;
            }
            
            if (gBZA.SifLnkLst[sSelSerial2].MBZAIF.bConnect == false)
            {
                CommObj mCommZim = new CommObj();
                mCommZim.HostNameToIP(gBZA.SifLnkLst[sSelSerial2].sip, ref mCommZim.mConnTargetCfg.IpAddress);
                mCommZim.mConnTargetCfg.Port = 2000;
                mCommZim.mDevType = (eDeviceType)gBZA.SifLnkLst[sSelSerial2].mDevInf.mSysCfg.mSIFCfg.Type;
                if (mCommZim.Connect() == false)
                {
                    mCommZim.Dispose();
                    MessageBox.Show("Connection failed.");
                    return;
                }

                if (mCommZim.ReadData(ref gBZA.SifLnkLst[sSelSerial2].mDevInf.mSysCfg) == false)
                {
                    MessageBox.Show("The command failed[DEFINE_COMMAND.GET_SYSTEM_INFO].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                mCommZim.Dispose();

            }
            else
            {
                if (MBZA_MapUtil.GetDeviceinfo(sSelSerial2) == false)
                {
                    MessageBox.Show("The command failed[GET_SYSTEM_INFO].", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                gBZA.SifLnkLst[sSelSerial2].mDevInf.mSysCfg = gBZA.SifLnkLst[sSelSerial2].MBZAIF.mDevInf.mSysCfg;
            }

            if(gBZA.SifLnkLst[sSelSerial2].bLinked == true)
            {
                gBZA.RegChCount = 0;
                gBZA.RegOkChCount = 0;
                bool bchk = false;
                var list = gBZA.ChLnkLst.Keys.ToList();
                list.Sort();

                foreach (var key in list)
                {
                    var Value = gBZA.ChLnkLst[key];
                    Value.SetChkSIF(false);
                    Value.SetChkCh(false);
                       
                    bchk = false;
                    gBZA.RegChCount++;
                    if (gBZA.SifLnkLst.ContainsKey(Value.sSerial))
                    {
                        Value.SetChkSIF(true);
                        if (gBZA.SifLnkLst[Value.sSerial].mDevInf.mSysCfg.EnaZIM[Value.SifCh] == 1)
                        {
                            try
                            {
                                gBZA.SifLnkLst[Value.sSerial].iLinkCh[0] = 1;
                                gBZA.SifLnkLst[Value.sSerial].iLinkCh[Value.SifCh] = Int32.Parse(key);
                                gBZA.SifLnkLst[Value.sSerial].bLinked = true;
                                if (gBZA.SifLnkLst[Value.sSerial].mDevInf.mSysCfg.ChkZIM[Value.SifCh] == 1)
                                {
                                    Value.SetChkCh(true);
                                    bchk = true;
                                }
                                else
                                {
                                    Value.bChkCh = false;
                                    bchk = false;
                                }
                            }
                            catch (FormatException)
                            {
                                Debug.WriteLine($"Unable to parse '{key}'");
                            }
                        }
                    }
                    if (bchk == true)
                    {
                        
                        gBZA.RegOkChCount++;
                    }
                }

                RefreshAll();
            }
            else
            {
                RefreshBZACh();
            }
        }

        private void LnkLblSave1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if(gBZA.SaveLinkChToXml(gBZA.FileLnkCh) == false)
            {
                MessageBox.Show("Failed to save.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                MessageBox.Show("Save was successful.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)//Cancel registered
        {
            List<string> ItemList = new List<string>();

            if (LnkRow <= 0)
            {
                MessageBox.Show("The registered channel is not selected.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            string rch = grdChs.get_TextMatrix(LnkRow, 0);
            int ich = Convert.ToInt32(rch)-1;
            string sch = ich.ToString();
            bool blink = false;

            if(gBZA.ChLnkLst.ContainsKey(sch))
            {
                var value = gBZA.ChLnkLst[sch];
                
                if(gBZA.SifLnkLst.ContainsKey(value.sSerial))
                {
                    
                    gBZA.SifLnkLst[value.sSerial].iLinkCh[value.SifCh] = -1;
                    for (int i=0; i<MBZA_Constant.MAX_DEV_CHANNEL; i++)
                    {
                        if (gBZA.SifLnkLst[value.sSerial].mDevInf.mSysCfg.EnaZIM[i] == 1)
                        {
                            if (gBZA.SifLnkLst[value.sSerial].iLinkCh[i] > -1)
                            {
                                blink = true;
                                break;
                            }
                        }
                    }
                    if (blink == false)
                    {
                        gBZA.SifLnkLst[value.sSerial].MBZAIF.StopThread();
                    }
                    gBZA.SifLnkLst[value.sSerial].SetLink(blink);
                }
                gBZA.ChLnkLst.Remove(sch);

                RefreshAll();
                MessageBox.Show("The selected channel has been unregistered.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                chgreg = true;
            }
            else
            {
                MessageBox.Show("The registered channel information could not be found.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void grdChs_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right || e.Button == MouseButtons.Middle)
            {
                HitTestInfo hti = grdChs.HitTest(e.X, e.Y);
                if (hti.Row > 0)
                {
                    grdChs.Select(hti.Row, 1);
                }
            }
        }

        private void grdBZAs_RowColChange(object sender, EventArgs e)
        {
            int row1 = 0;
            int row2 = 0;
            int col1 = 0;
            int col2 = 0;
            if (bInitBza == true) return;
            grdBZAs.GetSelection(out row1, out col1, out row2, out col2);
            if (row1 <= 0) return;
            grdBZAs.ForeColorSel = grdBZAs.GetCellStyle(row1, 1).ForeColor;
            grdBZAs_SelRow(row1);
        }

        private void grdChs_RowColChange(object sender, EventArgs e)
        {
            int row1 = 0;
            int row2 = 0;
            int col1 = 0;
            int col2 = 0;
            if (bInitLnk == true) return;

            grdChs.GetSelection(out row1, out col1, out row2, out col2);
            if (row1 <= 0) return;

            grdChs_SelRow(row1);
        }
   

        private void grdBzaCh_RowColChange(object sender, EventArgs e)
        {
            int row1 = 0;
            int row2 = 0;
            int col1 = 0;
            int col2 = 0;

            if (bInitBzaCh == true) return;
            grdBzaCh.GetSelection(out row1, out col1, out row2, out col2);

            if (row1 <= 0) return;

            grdBzaCh.ForeColorSel = grdBzaCh.GetCellStyle(row1, 1).ForeColor;
            grdBZAChs_SelRow(row1);

        }

        private void grdBzaCh_SelChange(object sender, EventArgs e)
        {

        }

        private void grdChs_SelChange(object sender, EventArgs e)
        {
        }

        private void grdChs_EnterCell(object sender, EventArgs e)
        {

        }

        private void grdChs_CellChanged(object sender, C1.Win.C1FlexGrid.RowColEventArgs e)
        {

        }

        private void grdBzaCh_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right || e.Button == MouseButtons.Middle)
            {
                HitTestInfo hti = grdBzaCh.HitTest(e.X, e.Y);
                if (hti.Row > 0)
                {
                    grdBzaCh.ForeColorSel = grdBzaCh.GetCellStyle(hti.Row, 1).ForeColor;
                    grdBzaCh.Select(hti.Row, 1);
                }
            }
        }

        private void grdBzaCh_BeforeMouseDown(object sender, C1.Win.C1FlexGrid.BeforeMouseDownEventArgs e)
        {


            
        }

        private void frmRegBZA_FormClosing(object sender, FormClosingEventArgs e)
        {
            if(chgreg == true)
            {
                if (MessageBox.Show("Do you want to save your registration changes?", gBZA.sMsgTitle, MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                {
                    return;
                }
                else
                {
                    if (gBZA.SaveLinkChToXml(gBZA.FileLnkCh) == false)
                    {
                        MessageBox.Show("Failed to save.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        MessageBox.Show("Save was successful.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
        }
    }
}
