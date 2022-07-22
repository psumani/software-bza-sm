namespace ZiveLab.ZM.FactorySetting
{
    partial class Main
    {
        /// <summary>
        /// 필수 디자이너 변수입니다.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 사용 중인 모든 리소스를 정리합니다.
        /// </summary>
        /// <param name="disposing">관리되는 리소스를 삭제해야 하면 true이고, 그렇지 않으면 false입니다.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 디자이너에서 생성한 코드

        /// <summary>
        /// 디자이너 지원에 필요한 메서드입니다. 
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마세요.
        /// </summary>
        private void InitializeComponent()
        {
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.lnkinitsifcfg = new System.Windows.Forms.LinkLabel();
            this.ChkEnaChROM = new System.Windows.Forms.CheckBox();
            this.BtRefreshZIM = new System.Windows.Forms.Button();
            this.ChkEnaCh = new System.Windows.Forms.CheckBox();
            this.GrpCh = new System.Windows.Forms.GroupBox();
            this.lnkSaveROM = new System.Windows.Forms.LinkLabel();
            this.lnkLoadROM = new System.Windows.Forms.LinkLabel();
            this.lblscanrom = new System.Windows.Forms.Label();
            this.lnllblscanrom = new System.Windows.Forms.LinkLabel();
            this.lnklblinitrom = new System.Windows.Forms.LinkLabel();
            this.LblZimBdType = new System.Windows.Forms.Label();
            this.LnklblInitialize = new System.Windows.Forms.LinkLabel();
            this.LnklblBurnZIMToLan = new System.Windows.Forms.LinkLabel();
            this.lblZimSerial = new System.Windows.Forms.Label();
            this.lblZimFwVer = new System.Windows.Forms.Label();
            this.lblZimBdVer = new System.Windows.Forms.Label();
            this.LnklblSetZIMCfgToLan = new System.Windows.Forms.LinkLabel();
            this.label1 = new System.Windows.Forms.Label();
            this.cboChannel = new System.Windows.Forms.ComboBox();
            this.lblSifBdType = new System.Windows.Forms.Label();
            this.lnklblchghostname = new System.Windows.Forms.LinkLabel();
            this.LnklblRefSifWebInf = new System.Windows.Forms.LinkLabel();
            this.lblSifWebInfo = new System.Windows.Forms.Label();
            this.LnklblSetSIFWebToLan = new System.Windows.Forms.LinkLabel();
            this.LnklblChgSifFW = new System.Windows.Forms.LinkLabel();
            this.lblTargetIp = new System.Windows.Forms.Label();
            this.LnklblConnSifToLan = new System.Windows.Forms.LinkLabel();
            this.LnklblRefSifInf = new System.Windows.Forms.LinkLabel();
            this.LnklblSetSIFCfgToLan = new System.Windows.Forms.LinkLabel();
            this.lblSifSerial = new System.Windows.Forms.Label();
            this.lblSifFwVer = new System.Windows.Forms.Label();
            this.lblSifBdVer = new System.Windows.Forms.Label();
            this.LnklblBurnSifToUsb = new System.Windows.Forms.LinkLabel();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.BtInitZIM = new System.Windows.Forms.Button();
            this.tabPage1.SuspendLayout();
            this.GrpCh.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.lnkinitsifcfg);
            this.tabPage1.Controls.Add(this.ChkEnaChROM);
            this.tabPage1.Controls.Add(this.BtRefreshZIM);
            this.tabPage1.Controls.Add(this.ChkEnaCh);
            this.tabPage1.Controls.Add(this.GrpCh);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Controls.Add(this.cboChannel);
            this.tabPage1.Controls.Add(this.lblSifBdType);
            this.tabPage1.Controls.Add(this.lnklblchghostname);
            this.tabPage1.Controls.Add(this.LnklblRefSifWebInf);
            this.tabPage1.Controls.Add(this.lblSifWebInfo);
            this.tabPage1.Controls.Add(this.LnklblSetSIFWebToLan);
            this.tabPage1.Controls.Add(this.LnklblChgSifFW);
            this.tabPage1.Controls.Add(this.lblTargetIp);
            this.tabPage1.Controls.Add(this.LnklblConnSifToLan);
            this.tabPage1.Controls.Add(this.LnklblRefSifInf);
            this.tabPage1.Controls.Add(this.LnklblSetSIFCfgToLan);
            this.tabPage1.Controls.Add(this.lblSifSerial);
            this.tabPage1.Controls.Add(this.lblSifFwVer);
            this.tabPage1.Controls.Add(this.lblSifBdVer);
            this.tabPage1.Controls.Add(this.LnklblBurnSifToUsb);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(468, 560);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "ZIM-SIF";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // lnkinitsifcfg
            // 
            this.lnkinitsifcfg.AutoSize = true;
            this.lnkinitsifcfg.LinkColor = System.Drawing.Color.Red;
            this.lnkinitsifcfg.Location = new System.Drawing.Point(46, 116);
            this.lnkinitsifcfg.Name = "lnkinitsifcfg";
            this.lnkinitsifcfg.Size = new System.Drawing.Size(245, 12);
            this.lnkinitsifcfg.TabIndex = 31;
            this.lnkinitsifcfg.TabStop = true;
            this.lnkinitsifcfg.Text = "> Initialize configuration information of SIF.";
            this.lnkinitsifcfg.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkinitsifcfg_LinkClicked);
            // 
            // ChkEnaChROM
            // 
            this.ChkEnaChROM.AutoSize = true;
            this.ChkEnaChROM.Location = new System.Drawing.Point(256, 309);
            this.ChkEnaChROM.Name = "ChkEnaChROM";
            this.ChkEnaChROM.Size = new System.Drawing.Size(76, 16);
            this.ChkEnaChROM.TabIndex = 30;
            this.ChkEnaChROM.Text = "EEPROM";
            this.ChkEnaChROM.UseVisualStyleBackColor = true;
            // 
            // BtRefreshZIM
            // 
            this.BtRefreshZIM.Location = new System.Drawing.Point(339, 303);
            this.BtRefreshZIM.Name = "BtRefreshZIM";
            this.BtRefreshZIM.Size = new System.Drawing.Size(45, 25);
            this.BtRefreshZIM.TabIndex = 29;
            this.BtRefreshZIM.Text = "Apply";
            this.BtRefreshZIM.UseVisualStyleBackColor = true;
            this.BtRefreshZIM.Click += new System.EventHandler(this.BtRefreshZIM_Click);
            // 
            // ChkEnaCh
            // 
            this.ChkEnaCh.AutoSize = true;
            this.ChkEnaCh.Location = new System.Drawing.Point(191, 309);
            this.ChkEnaCh.Name = "ChkEnaCh";
            this.ChkEnaCh.Size = new System.Drawing.Size(63, 16);
            this.ChkEnaCh.TabIndex = 28;
            this.ChkEnaCh.Text = "Enable";
            this.ChkEnaCh.UseVisualStyleBackColor = true;
            // 
            // GrpCh
            // 
            this.GrpCh.Controls.Add(this.lnkSaveROM);
            this.GrpCh.Controls.Add(this.lnkLoadROM);
            this.GrpCh.Controls.Add(this.lblscanrom);
            this.GrpCh.Controls.Add(this.lnllblscanrom);
            this.GrpCh.Controls.Add(this.lnklblinitrom);
            this.GrpCh.Controls.Add(this.LblZimBdType);
            this.GrpCh.Controls.Add(this.LnklblInitialize);
            this.GrpCh.Controls.Add(this.LnklblBurnZIMToLan);
            this.GrpCh.Controls.Add(this.lblZimSerial);
            this.GrpCh.Controls.Add(this.lblZimFwVer);
            this.GrpCh.Controls.Add(this.lblZimBdVer);
            this.GrpCh.Controls.Add(this.LnklblSetZIMCfgToLan);
            this.GrpCh.Location = new System.Drawing.Point(20, 320);
            this.GrpCh.Name = "GrpCh";
            this.GrpCh.Size = new System.Drawing.Size(423, 231);
            this.GrpCh.TabIndex = 27;
            this.GrpCh.TabStop = false;
            // 
            // lnkSaveROM
            // 
            this.lnkSaveROM.AutoSize = true;
            this.lnkSaveROM.Location = new System.Drawing.Point(39, 94);
            this.lnkSaveROM.Name = "lnkSaveROM";
            this.lnkSaveROM.Size = new System.Drawing.Size(104, 12);
            this.lnkSaveROM.TabIndex = 29;
            this.lnkSaveROM.TabStop = true;
            this.lnkSaveROM.Text = "> Write EEPROM.";
            this.lnkSaveROM.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkSaveROM_LinkClicked);
            // 
            // lnkLoadROM
            // 
            this.lnkLoadROM.AutoSize = true;
            this.lnkLoadROM.Location = new System.Drawing.Point(39, 77);
            this.lnkLoadROM.Name = "lnkLoadROM";
            this.lnkLoadROM.Size = new System.Drawing.Size(233, 12);
            this.lnkLoadROM.TabIndex = 28;
            this.lnkLoadROM.TabStop = true;
            this.lnkLoadROM.Text = "> Load EEPROM and Apply Flash ROM.";
            this.lnkLoadROM.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkLoadROM_LinkClicked);
            // 
            // lblscanrom
            // 
            this.lblscanrom.AutoSize = true;
            this.lblscanrom.ForeColor = System.Drawing.Color.DarkRed;
            this.lblscanrom.Location = new System.Drawing.Point(119, 41);
            this.lblscanrom.Name = "lblscanrom";
            this.lblscanrom.Size = new System.Drawing.Size(86, 12);
            this.lblscanrom.TabIndex = 27;
            this.lblscanrom.Text = "...... Disabled.";
            // 
            // lnllblscanrom
            // 
            this.lnllblscanrom.AutoSize = true;
            this.lnllblscanrom.Location = new System.Drawing.Point(19, 41);
            this.lnllblscanrom.Name = "lnllblscanrom";
            this.lnllblscanrom.Size = new System.Drawing.Size(99, 12);
            this.lnllblscanrom.TabIndex = 26;
            this.lnllblscanrom.TabStop = true;
            this.lnllblscanrom.Text = "> Scan channel ";
            this.lnllblscanrom.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnllblscanrom_LinkClicked);
            // 
            // lnklblinitrom
            // 
            this.lnklblinitrom.AutoSize = true;
            this.lnklblinitrom.LinkColor = System.Drawing.Color.Red;
            this.lnklblinitrom.Location = new System.Drawing.Point(39, 60);
            this.lnklblinitrom.Name = "lnklblinitrom";
            this.lnklblinitrom.Size = new System.Drawing.Size(123, 12);
            this.lnklblinitrom.TabIndex = 25;
            this.lnklblinitrom.TabStop = true;
            this.lnklblinitrom.Text = "> Initialize EEPROM.";
            this.lnklblinitrom.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblinitrom_LinkClicked);
            // 
            // LblZimBdType
            // 
            this.LblZimBdType.AutoSize = true;
            this.LblZimBdType.Location = new System.Drawing.Point(37, 153);
            this.LblZimBdType.Name = "LblZimBdType";
            this.LblZimBdType.Size = new System.Drawing.Size(115, 12);
            this.LblZimBdType.TabIndex = 23;
            this.LblZimBdType.Text = "1) Board type : Zim";
            // 
            // LnklblInitialize
            // 
            this.LnklblInitialize.AutoSize = true;
            this.LnklblInitialize.LinkColor = System.Drawing.Color.Red;
            this.LnklblInitialize.Location = new System.Drawing.Point(39, 133);
            this.LnklblInitialize.Name = "LnklblInitialize";
            this.LnklblInitialize.Size = new System.Drawing.Size(169, 12);
            this.LnklblInitialize.TabIndex = 21;
            this.LnklblInitialize.TabStop = true;
            this.LnklblInitialize.Text = "> Initialize range information.";
            this.LnklblInitialize.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblInitialize_LinkClicked);
            // 
            // LnklblBurnZIMToLan
            // 
            this.LnklblBurnZIMToLan.AutoSize = true;
            this.LnklblBurnZIMToLan.Location = new System.Drawing.Point(19, 19);
            this.LnklblBurnZIMToLan.Name = "LnklblBurnZIMToLan";
            this.LnklblBurnZIMToLan.Size = new System.Drawing.Size(276, 12);
            this.LnklblBurnZIMToLan.TabIndex = 14;
            this.LnklblBurnZIMToLan.TabStop = true;
            this.LnklblBurnZIMToLan.Text = "> Firmware Change of FPGA in ZIM Using LAN.";
            this.LnklblBurnZIMToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblBurnZIMToLan_LinkClicked);
            // 
            // lblZimSerial
            // 
            this.lblZimSerial.AutoSize = true;
            this.lblZimSerial.Location = new System.Drawing.Point(37, 208);
            this.lblZimSerial.Name = "lblZimSerial";
            this.lblZimSerial.Size = new System.Drawing.Size(195, 12);
            this.lblZimSerial.TabIndex = 13;
            this.lblZimSerial.Text = "4) Serial number : IMxxxxxxxxxx";
            // 
            // lblZimFwVer
            // 
            this.lblZimFwVer.AutoSize = true;
            this.lblZimFwVer.Location = new System.Drawing.Point(37, 190);
            this.lblZimFwVer.Name = "lblZimFwVer";
            this.lblZimFwVer.Size = new System.Drawing.Size(190, 12);
            this.lblZimFwVer.TabIndex = 12;
            this.lblZimFwVer.Text = "3) Firmware version : 00.00.00.00";
            // 
            // lblZimBdVer
            // 
            this.lblZimBdVer.AutoSize = true;
            this.lblZimBdVer.Location = new System.Drawing.Point(37, 171);
            this.lblZimBdVer.Name = "lblZimBdVer";
            this.lblZimBdVer.Size = new System.Drawing.Size(174, 12);
            this.lblZimBdVer.TabIndex = 11;
            this.lblZimBdVer.Text = "2) Board version : 00.00.00.00 ";
            // 
            // LnklblSetZIMCfgToLan
            // 
            this.LnklblSetZIMCfgToLan.AutoSize = true;
            this.LnklblSetZIMCfgToLan.Location = new System.Drawing.Point(19, 113);
            this.LnklblSetZIMCfgToLan.Name = "LnklblSetZIMCfgToLan";
            this.LnklblSetZIMCfgToLan.Size = new System.Drawing.Size(380, 12);
            this.LnklblSetZIMCfgToLan.TabIndex = 9;
            this.LnklblSetZIMCfgToLan.TabStop = true;
            this.LnklblSetZIMCfgToLan.Text = "> Use the LAN to set up production information for the ZIM Board. ";
            this.LnklblSetZIMCfgToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblSetZIMCfgToLan_LinkClicked);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 309);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(111, 12);
            this.label1.TabIndex = 26;
            this.label1.Text = "3. Select channel :";
            // 
            // cboChannel
            // 
            this.cboChannel.FormattingEnabled = true;
            this.cboChannel.Location = new System.Drawing.Point(134, 305);
            this.cboChannel.Name = "cboChannel";
            this.cboChannel.Size = new System.Drawing.Size(47, 20);
            this.cboChannel.TabIndex = 25;
            this.cboChannel.SelectedIndexChanged += new System.EventHandler(this.cboChannel_SelectedIndexChanged);
            // 
            // lblSifBdType
            // 
            this.lblSifBdType.AutoSize = true;
            this.lblSifBdType.Location = new System.Drawing.Point(44, 153);
            this.lblSifBdType.Name = "lblSifBdType";
            this.lblSifBdType.Size = new System.Drawing.Size(270, 12);
            this.lblSifBdType.TabIndex = 22;
            this.lblSifBdType.Text = "1) Board type : Bettery Cycler System (SIF-13)";
            // 
            // lnklblchghostname
            // 
            this.lnklblchghostname.AutoSize = true;
            this.lnklblchghostname.Location = new System.Drawing.Point(33, 226);
            this.lnklblchghostname.Name = "lnklblchghostname";
            this.lnklblchghostname.Size = new System.Drawing.Size(132, 12);
            this.lnklblchghostname.TabIndex = 20;
            this.lnklblchghostname.TabStop = true;
            this.lnklblchghostname.Text = "> Hostname:BZA-0000";
            this.lnklblchghostname.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblchghostname_LinkClicked);
            // 
            // LnklblRefSifWebInf
            // 
            this.LnklblRefSifWebInf.AutoSize = true;
            this.LnklblRefSifWebInf.Enabled = false;
            this.LnklblRefSifWebInf.Location = new System.Drawing.Point(48, 262);
            this.LnklblRefSifWebInf.Name = "LnklblRefSifWebInf";
            this.LnklblRefSifWebInf.Size = new System.Drawing.Size(218, 12);
            this.LnklblRefSifWebInf.TabIndex = 18;
            this.LnklblRefSifWebInf.TabStop = true;
            this.LnklblRefSifWebInf.Text = "> Refresh Web site information of SIF.";
            this.LnklblRefSifWebInf.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblRefSifWebInf_LinkClicked);
            // 
            // lblSifWebInfo
            // 
            this.lblSifWebInfo.AutoSize = true;
            this.lblSifWebInfo.Location = new System.Drawing.Point(47, 279);
            this.lblSifWebInfo.Name = "lblSifWebInfo";
            this.lblSifWebInfo.Size = new System.Drawing.Size(177, 12);
            this.lblSifWebInfo.TabIndex = 17;
            this.lblSifWebInfo.Text = "1) ID : 0x00 (File count : 0 ea).";
            // 
            // LnklblSetSIFWebToLan
            // 
            this.LnklblSetSIFWebToLan.AutoSize = true;
            this.LnklblSetSIFWebToLan.Enabled = false;
            this.LnklblSetSIFWebToLan.Location = new System.Drawing.Point(33, 243);
            this.LnklblSetSIFWebToLan.Name = "LnklblSetSIFWebToLan";
            this.LnklblSetSIFWebToLan.Size = new System.Drawing.Size(293, 12);
            this.LnklblSetSIFWebToLan.TabIndex = 16;
            this.LnklblSetSIFWebToLan.TabStop = true;
            this.LnklblSetSIFWebToLan.Text = "> Set up the Web site information on the SIF board.";
            this.LnklblSetSIFWebToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblSetSIFWebToLan_LinkClicked);
            // 
            // LnklblChgSifFW
            // 
            this.LnklblChgSifFW.AutoSize = true;
            this.LnklblChgSifFW.Location = new System.Drawing.Point(32, 79);
            this.LnklblChgSifFW.Name = "LnklblChgSifFW";
            this.LnklblChgSifFW.Size = new System.Drawing.Size(222, 12);
            this.LnklblChgSifFW.TabIndex = 15;
            this.LnklblChgSifFW.TabStop = true;
            this.LnklblChgSifFW.Text = "> Firmware Change of SIF Using LAN.";
            this.LnklblChgSifFW.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblChgSifFW_LinkClicked);
            // 
            // lblTargetIp
            // 
            this.lblTargetIp.AutoSize = true;
            this.lblTargetIp.Location = new System.Drawing.Point(32, 62);
            this.lblTargetIp.Name = "lblTargetIp";
            this.lblTargetIp.Size = new System.Drawing.Size(215, 12);
            this.lblTargetIp.TabIndex = 8;
            this.lblTargetIp.Text = "> Target IP Address : 000.000.000.000";
            // 
            // LnklblConnSifToLan
            // 
            this.LnklblConnSifToLan.AutoSize = true;
            this.LnklblConnSifToLan.Location = new System.Drawing.Point(18, 42);
            this.LnklblConnSifToLan.Name = "LnklblConnSifToLan";
            this.LnklblConnSifToLan.Size = new System.Drawing.Size(210, 12);
            this.LnklblConnSifToLan.TabIndex = 7;
            this.LnklblConnSifToLan.TabStop = true;
            this.LnklblConnSifToLan.Text = "2. Connect to SIF Board using LAN. ";
            this.LnklblConnSifToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblConnSifToLan_LinkClicked);
            // 
            // LnklblRefSifInf
            // 
            this.LnklblRefSifInf.AutoSize = true;
            this.LnklblRefSifInf.Location = new System.Drawing.Point(46, 133);
            this.LnklblRefSifInf.Name = "LnklblRefSifInf";
            this.LnklblRefSifInf.Size = new System.Drawing.Size(212, 12);
            this.LnklblRefSifInf.TabIndex = 6;
            this.LnklblRefSifInf.TabStop = true;
            this.LnklblRefSifInf.Text = "> Refresh product information of SIF.";
            this.LnklblRefSifInf.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblRefSifInf_LinkClicked);
            // 
            // LnklblSetSIFCfgToLan
            // 
            this.LnklblSetSIFCfgToLan.AutoSize = true;
            this.LnklblSetSIFCfgToLan.Location = new System.Drawing.Point(32, 96);
            this.LnklblSetSIFCfgToLan.Name = "LnklblSetSIFCfgToLan";
            this.LnklblSetSIFCfgToLan.Size = new System.Drawing.Size(288, 12);
            this.LnklblSetSIFCfgToLan.TabIndex = 5;
            this.LnklblSetSIFCfgToLan.TabStop = true;
            this.LnklblSetSIFCfgToLan.Text = "> Set up production information for the SIF Board. ";
            this.LnklblSetSIFCfgToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblSetSIFCfgToLan_LinkClicked);
            // 
            // lblSifSerial
            // 
            this.lblSifSerial.AutoSize = true;
            this.lblSifSerial.Location = new System.Drawing.Point(44, 207);
            this.lblSifSerial.Name = "lblSifSerial";
            this.lblSifSerial.Size = new System.Drawing.Size(196, 12);
            this.lblSifSerial.TabIndex = 4;
            this.lblSifSerial.Text = "4) Serial number : Rxxxxxxxxxxx";
            // 
            // lblSifFwVer
            // 
            this.lblSifFwVer.AutoSize = true;
            this.lblSifFwVer.Location = new System.Drawing.Point(44, 189);
            this.lblSifFwVer.Name = "lblSifFwVer";
            this.lblSifFwVer.Size = new System.Drawing.Size(190, 12);
            this.lblSifFwVer.TabIndex = 3;
            this.lblSifFwVer.Text = "3) Firmware version : 00.00.00.00";
            // 
            // lblSifBdVer
            // 
            this.lblSifBdVer.AutoSize = true;
            this.lblSifBdVer.Location = new System.Drawing.Point(44, 171);
            this.lblSifBdVer.Name = "lblSifBdVer";
            this.lblSifBdVer.Size = new System.Drawing.Size(174, 12);
            this.lblSifBdVer.TabIndex = 2;
            this.lblSifBdVer.Text = "2) Board version : 00.00.00.00 ";
            // 
            // LnklblBurnSifToUsb
            // 
            this.LnklblBurnSifToUsb.AutoSize = true;
            this.LnklblBurnSifToUsb.Location = new System.Drawing.Point(18, 15);
            this.LnklblBurnSifToUsb.Name = "LnklblBurnSifToUsb";
            this.LnklblBurnSifToUsb.Size = new System.Drawing.Size(439, 12);
            this.LnklblBurnSifToUsb.TabIndex = 0;
            this.LnklblBurnSifToUsb.TabStop = true;
            this.LnklblBurnSifToUsb.Text = "1. Use USB to upload SIF firmware for the first time and set LAN information. ";
            this.LnklblBurnSifToUsb.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblBurnSifToUsb_LinkClicked);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Location = new System.Drawing.Point(12, 9);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(476, 586);
            this.tabControl1.TabIndex = 0;
            // 
            // BtInitZIM
            // 
            this.BtInitZIM.ForeColor = System.Drawing.Color.Red;
            this.BtInitZIM.Location = new System.Drawing.Point(415, 334);
            this.BtInitZIM.Name = "BtInitZIM";
            this.BtInitZIM.Size = new System.Drawing.Size(45, 25);
            this.BtInitZIM.TabIndex = 30;
            this.BtInitZIM.Text = "Reset";
            this.BtInitZIM.UseVisualStyleBackColor = true;
            this.BtInitZIM.Click += new System.EventHandler(this.BtInitZIM_Click);
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(500, 601);
            this.Controls.Add(this.BtInitZIM);
            this.Controls.Add(this.tabControl1);
            this.MaximizeBox = false;
            this.Name = "Main";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Factory Setting of ZIM-SIF";
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.Main_KeyDown);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.GrpCh.ResumeLayout(false);
            this.GrpCh.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Label lblZimSerial;
        private System.Windows.Forms.Label lblZimFwVer;
        private System.Windows.Forms.Label lblZimBdVer;
        private System.Windows.Forms.LinkLabel LnklblSetZIMCfgToLan;
        private System.Windows.Forms.Label lblTargetIp;
        private System.Windows.Forms.LinkLabel LnklblConnSifToLan;
        private System.Windows.Forms.LinkLabel LnklblRefSifInf;
        private System.Windows.Forms.LinkLabel LnklblSetSIFCfgToLan;
        private System.Windows.Forms.Label lblSifSerial;
        private System.Windows.Forms.Label lblSifFwVer;
        private System.Windows.Forms.Label lblSifBdVer;
        private System.Windows.Forms.LinkLabel LnklblBurnSifToUsb;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.LinkLabel LnklblBurnZIMToLan;
        private System.Windows.Forms.LinkLabel LnklblChgSifFW;
        private System.Windows.Forms.LinkLabel LnklblSetSIFWebToLan;
        private System.Windows.Forms.LinkLabel LnklblRefSifWebInf;
        private System.Windows.Forms.Label lblSifWebInfo;
        private System.Windows.Forms.LinkLabel lnklblchghostname;
        private System.Windows.Forms.LinkLabel LnklblInitialize;
        private System.Windows.Forms.Label lblSifBdType;
        private System.Windows.Forms.Label LblZimBdType;
        private System.Windows.Forms.GroupBox GrpCh;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboChannel;
        private System.Windows.Forms.Button BtRefreshZIM;
        private System.Windows.Forms.CheckBox ChkEnaCh;
        private System.Windows.Forms.LinkLabel lnllblscanrom;
        private System.Windows.Forms.LinkLabel lnklblinitrom;
        private System.Windows.Forms.CheckBox ChkEnaChROM;
        private System.Windows.Forms.Button BtInitZIM;
        private System.Windows.Forms.Label lblscanrom;
        private System.Windows.Forms.LinkLabel lnkSaveROM;
        private System.Windows.Forms.LinkLabel lnkLoadROM;
        private System.Windows.Forms.LinkLabel lnkinitsifcfg;
    }
}

