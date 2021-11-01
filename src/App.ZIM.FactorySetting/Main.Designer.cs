namespace App.ZIM.FactorySetting
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
            this.LblZimBdType = new System.Windows.Forms.Label();
            this.lblSifBdType = new System.Windows.Forms.Label();
            this.LnklblInitialize = new System.Windows.Forms.LinkLabel();
            this.lnklblchghostname = new System.Windows.Forms.LinkLabel();
            this.LnklblRefSifWebInf = new System.Windows.Forms.LinkLabel();
            this.lblSifWebInfo = new System.Windows.Forms.Label();
            this.LnklblSetSIFWebToLan = new System.Windows.Forms.LinkLabel();
            this.LnklblChgSifFW = new System.Windows.Forms.LinkLabel();
            this.LnklblBurnZIMToLan = new System.Windows.Forms.LinkLabel();
            this.lblZimSerial = new System.Windows.Forms.Label();
            this.lblZimFwVer = new System.Windows.Forms.Label();
            this.lblZimBdVer = new System.Windows.Forms.Label();
            this.LnklblRefZimInf = new System.Windows.Forms.LinkLabel();
            this.LnklblSetZIMCfgToLan = new System.Windows.Forms.LinkLabel();
            this.lblTargetIp = new System.Windows.Forms.Label();
            this.LnklblConnSifToLan = new System.Windows.Forms.LinkLabel();
            this.LnklblRefSifInf = new System.Windows.Forms.LinkLabel();
            this.LnklblSetSIFCfgToLan = new System.Windows.Forms.LinkLabel();
            this.lblSifSerial = new System.Windows.Forms.Label();
            this.lblSifFwVer = new System.Windows.Forms.Label();
            this.lblSifBdVer = new System.Windows.Forms.Label();
            this.LnklblBurnSifToUsb = new System.Windows.Forms.LinkLabel();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.LblZimBdType);
            this.tabPage1.Controls.Add(this.lblSifBdType);
            this.tabPage1.Controls.Add(this.LnklblInitialize);
            this.tabPage1.Controls.Add(this.lnklblchghostname);
            this.tabPage1.Controls.Add(this.LnklblRefSifWebInf);
            this.tabPage1.Controls.Add(this.lblSifWebInfo);
            this.tabPage1.Controls.Add(this.LnklblSetSIFWebToLan);
            this.tabPage1.Controls.Add(this.LnklblChgSifFW);
            this.tabPage1.Controls.Add(this.LnklblBurnZIMToLan);
            this.tabPage1.Controls.Add(this.lblZimSerial);
            this.tabPage1.Controls.Add(this.lblZimFwVer);
            this.tabPage1.Controls.Add(this.lblZimBdVer);
            this.tabPage1.Controls.Add(this.LnklblRefZimInf);
            this.tabPage1.Controls.Add(this.LnklblSetZIMCfgToLan);
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
            this.tabPage1.Size = new System.Drawing.Size(465, 479);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "ZIM-SIF";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // LblZimBdType
            // 
            this.LblZimBdType.AutoSize = true;
            this.LblZimBdType.Location = new System.Drawing.Point(36, 378);
            this.LblZimBdType.Name = "LblZimBdType";
            this.LblZimBdType.Size = new System.Drawing.Size(115, 12);
            this.LblZimBdType.TabIndex = 23;
            this.LblZimBdType.Text = "1) Board type : Zim";
            // 
            // lblSifBdType
            // 
            this.lblSifBdType.AutoSize = true;
            this.lblSifBdType.Location = new System.Drawing.Point(35, 228);
            this.lblSifBdType.Name = "lblSifBdType";
            this.lblSifBdType.Size = new System.Drawing.Size(270, 12);
            this.lblSifBdType.TabIndex = 22;
            this.lblSifBdType.Text = "1) Board type : Bettery Cycler System (SIF-13)";
            // 
            // LnklblInitialize
            // 
            this.LnklblInitialize.AutoSize = true;
            this.LnklblInitialize.Location = new System.Drawing.Point(36, 453);
            this.LnklblInitialize.Name = "LnklblInitialize";
            this.LnklblInitialize.Size = new System.Drawing.Size(133, 12);
            this.LnklblInitialize.TabIndex = 21;
            this.LnklblInitialize.TabStop = true;
            this.LnklblInitialize.Text = "> Initialize information.";
            this.LnklblInitialize.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblInitialize_LinkClicked);
            // 
            // lnklblchghostname
            // 
            this.lnklblchghostname.AutoSize = true;
            this.lnklblchghostname.Location = new System.Drawing.Point(36, 78);
            this.lnklblchghostname.Name = "lnklblchghostname";
            this.lnklblchghostname.Size = new System.Drawing.Size(130, 12);
            this.lnklblchghostname.TabIndex = 20;
            this.lnklblchghostname.TabStop = true;
            this.lnklblchghostname.Text = "> Hostname:ZIM-0000";
            this.lnklblchghostname.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblchghostname_LinkClicked);
            // 
            // LnklblRefSifWebInf
            // 
            this.LnklblRefSifWebInf.AutoSize = true;
            this.LnklblRefSifWebInf.Location = new System.Drawing.Point(36, 144);
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
            this.lblSifWebInfo.Location = new System.Drawing.Point(36, 163);
            this.lblSifWebInfo.Name = "lblSifWebInfo";
            this.lblSifWebInfo.Size = new System.Drawing.Size(177, 12);
            this.lblSifWebInfo.TabIndex = 17;
            this.lblSifWebInfo.Text = "1) ID : 0x00 (File count : 0 ea).";
            // 
            // LnklblSetSIFWebToLan
            // 
            this.LnklblSetSIFWebToLan.AutoSize = true;
            this.LnklblSetSIFWebToLan.Location = new System.Drawing.Point(18, 123);
            this.LnklblSetSIFWebToLan.Name = "LnklblSetSIFWebToLan";
            this.LnklblSetSIFWebToLan.Size = new System.Drawing.Size(383, 12);
            this.LnklblSetSIFWebToLan.TabIndex = 16;
            this.LnklblSetSIFWebToLan.TabStop = true;
            this.LnklblSetSIFWebToLan.Text = "3. Use the LAN to set up the Web site information on the SIF board.";
            this.LnklblSetSIFWebToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblSetSIFWebToLan_LinkClicked);
            // 
            // LnklblChgSifFW
            // 
            this.LnklblChgSifFW.AutoSize = true;
            this.LnklblChgSifFW.Location = new System.Drawing.Point(36, 97);
            this.LnklblChgSifFW.Name = "LnklblChgSifFW";
            this.LnklblChgSifFW.Size = new System.Drawing.Size(222, 12);
            this.LnklblChgSifFW.TabIndex = 15;
            this.LnklblChgSifFW.TabStop = true;
            this.LnklblChgSifFW.Text = "> Firmware Change of SIF Using LAN.";
            this.LnklblChgSifFW.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblChgSifFW_LinkClicked);
            // 
            // LnklblBurnZIMToLan
            // 
            this.LnklblBurnZIMToLan.AutoSize = true;
            this.LnklblBurnZIMToLan.Location = new System.Drawing.Point(18, 311);
            this.LnklblBurnZIMToLan.Name = "LnklblBurnZIMToLan";
            this.LnklblBurnZIMToLan.Size = new System.Drawing.Size(278, 12);
            this.LnklblBurnZIMToLan.TabIndex = 14;
            this.LnklblBurnZIMToLan.TabStop = true;
            this.LnklblBurnZIMToLan.Text = "5. Firmware Change of FPGA in ZIM Using LAN.";
            this.LnklblBurnZIMToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblBurnZIMToLan_LinkClicked);
            // 
            // lblZimSerial
            // 
            this.lblZimSerial.AutoSize = true;
            this.lblZimSerial.Location = new System.Drawing.Point(36, 433);
            this.lblZimSerial.Name = "lblZimSerial";
            this.lblZimSerial.Size = new System.Drawing.Size(195, 12);
            this.lblZimSerial.TabIndex = 13;
            this.lblZimSerial.Text = "4) Serial number : IMxxxxxxxxxx";
            // 
            // lblZimFwVer
            // 
            this.lblZimFwVer.AutoSize = true;
            this.lblZimFwVer.Location = new System.Drawing.Point(36, 415);
            this.lblZimFwVer.Name = "lblZimFwVer";
            this.lblZimFwVer.Size = new System.Drawing.Size(190, 12);
            this.lblZimFwVer.TabIndex = 12;
            this.lblZimFwVer.Text = "3) Firmware version : 00.00.00.00";
            // 
            // lblZimBdVer
            // 
            this.lblZimBdVer.AutoSize = true;
            this.lblZimBdVer.Location = new System.Drawing.Point(36, 396);
            this.lblZimBdVer.Name = "lblZimBdVer";
            this.lblZimBdVer.Size = new System.Drawing.Size(174, 12);
            this.lblZimBdVer.TabIndex = 11;
            this.lblZimBdVer.Text = "2) Board version : 00.00.00.00 ";
            // 
            // LnklblRefZimInf
            // 
            this.LnklblRefZimInf.AutoSize = true;
            this.LnklblRefZimInf.Location = new System.Drawing.Point(36, 358);
            this.LnklblRefZimInf.Name = "LnklblRefZimInf";
            this.LnklblRefZimInf.Size = new System.Drawing.Size(216, 12);
            this.LnklblRefZimInf.TabIndex = 10;
            this.LnklblRefZimInf.TabStop = true;
            this.LnklblRefZimInf.Text = "> Refresh product information of ZIM.";
            this.LnklblRefZimInf.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblRefZimInf_LinkClicked);
            // 
            // LnklblSetZIMCfgToLan
            // 
            this.LnklblSetZIMCfgToLan.AutoSize = true;
            this.LnklblSetZIMCfgToLan.Location = new System.Drawing.Point(18, 337);
            this.LnklblSetZIMCfgToLan.Name = "LnklblSetZIMCfgToLan";
            this.LnklblSetZIMCfgToLan.Size = new System.Drawing.Size(382, 12);
            this.LnklblSetZIMCfgToLan.TabIndex = 9;
            this.LnklblSetZIMCfgToLan.TabStop = true;
            this.LnklblSetZIMCfgToLan.Text = "6. Use the LAN to set up production information for the ZIM Board. ";
            this.LnklblSetZIMCfgToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblSetZIMCfgToLan_LinkClicked);
            // 
            // lblTargetIp
            // 
            this.lblTargetIp.AutoSize = true;
            this.lblTargetIp.Location = new System.Drawing.Point(43, 61);
            this.lblTargetIp.Name = "lblTargetIp";
            this.lblTargetIp.Size = new System.Drawing.Size(203, 12);
            this.lblTargetIp.TabIndex = 8;
            this.lblTargetIp.Text = "Target IP Address : 000.000.000.000";
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
            this.LnklblRefSifInf.Location = new System.Drawing.Point(34, 208);
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
            this.LnklblSetSIFCfgToLan.Location = new System.Drawing.Point(18, 187);
            this.LnklblSetSIFCfgToLan.Name = "LnklblSetSIFCfgToLan";
            this.LnklblSetSIFCfgToLan.Size = new System.Drawing.Size(378, 12);
            this.LnklblSetSIFCfgToLan.TabIndex = 5;
            this.LnklblSetSIFCfgToLan.TabStop = true;
            this.LnklblSetSIFCfgToLan.Text = "4. Use the LAN to set up production information for the SIF Board. ";
            this.LnklblSetSIFCfgToLan.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblSetSIFCfgToLan_LinkClicked);
            // 
            // lblSifSerial
            // 
            this.lblSifSerial.AutoSize = true;
            this.lblSifSerial.Location = new System.Drawing.Point(34, 283);
            this.lblSifSerial.Name = "lblSifSerial";
            this.lblSifSerial.Size = new System.Drawing.Size(196, 12);
            this.lblSifSerial.TabIndex = 4;
            this.lblSifSerial.Text = "4) Serial number : Rxxxxxxxxxxx";
            // 
            // lblSifFwVer
            // 
            this.lblSifFwVer.AutoSize = true;
            this.lblSifFwVer.Location = new System.Drawing.Point(34, 265);
            this.lblSifFwVer.Name = "lblSifFwVer";
            this.lblSifFwVer.Size = new System.Drawing.Size(190, 12);
            this.lblSifFwVer.TabIndex = 3;
            this.lblSifFwVer.Text = "3) Firmware version : 00.00.00.00";
            // 
            // lblSifBdVer
            // 
            this.lblSifBdVer.AutoSize = true;
            this.lblSifBdVer.Location = new System.Drawing.Point(34, 246);
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
            this.tabControl1.Size = new System.Drawing.Size(473, 505);
            this.tabControl1.TabIndex = 0;
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(495, 522);
            this.Controls.Add(this.tabControl1);
            this.MaximizeBox = false;
            this.Name = "Main";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Factory Setting of ZIM-SIF";
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.Main_KeyDown);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Label lblZimSerial;
        private System.Windows.Forms.Label lblZimFwVer;
        private System.Windows.Forms.Label lblZimBdVer;
        private System.Windows.Forms.LinkLabel LnklblRefZimInf;
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
    }
}

