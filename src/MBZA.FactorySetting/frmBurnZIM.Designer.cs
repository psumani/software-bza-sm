namespace ZiveLab.ZM.FactorySetting
{
    partial class frmBurnZIM
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.LnklblSelFile = new System.Windows.Forms.LinkLabel();
            this.txtFilePath = new System.Windows.Forms.TextBox();
            this.LnklblChgZIM = new System.Windows.Forms.LinkLabel();
            this.lblBurn3 = new System.Windows.Forms.Label();
            this.lblBurn4 = new System.Windows.Forms.Label();
            this.progRecord = new System.Windows.Forms.ProgressBar();
            this.progConfirm = new System.Windows.Forms.ProgressBar();
            this.lblBurn1 = new System.Windows.Forms.Label();
            this.lblBurn2 = new System.Windows.Forms.Label();
            this.lblBurn5 = new System.Windows.Forms.Label();
            this.btClose = new System.Windows.Forms.Button();
            this.CHK_RESETFPGA = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // LnklblSelFile
            // 
            this.LnklblSelFile.AutoSize = true;
            this.LnklblSelFile.Location = new System.Drawing.Point(11, 12);
            this.LnklblSelFile.Name = "LnklblSelFile";
            this.LnklblSelFile.Size = new System.Drawing.Size(352, 12);
            this.LnklblSelFile.TabIndex = 0;
            this.LnklblSelFile.TabStop = true;
            this.LnklblSelFile.Text = "1. Select the firmware file for the device you want to change. ";
            this.LnklblSelFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblSelFile_LinkClicked);
            // 
            // txtFilePath
            // 
            this.txtFilePath.Location = new System.Drawing.Point(24, 27);
            this.txtFilePath.Multiline = true;
            this.txtFilePath.Name = "txtFilePath";
            this.txtFilePath.ReadOnly = true;
            this.txtFilePath.Size = new System.Drawing.Size(440, 50);
            this.txtFilePath.TabIndex = 1;
            // 
            // LnklblChgZIM
            // 
            this.LnklblChgZIM.AutoSize = true;
            this.LnklblChgZIM.Location = new System.Drawing.Point(11, 110);
            this.LnklblChgZIM.Name = "LnklblChgZIM";
            this.LnklblChgZIM.Size = new System.Drawing.Size(353, 12);
            this.LnklblChgZIM.TabIndex = 2;
            this.LnklblChgZIM.TabStop = true;
            this.LnklblChgZIM.Text = "2. Change the firmware on the ZIM board to the selected file. ";
            this.LnklblChgZIM.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblChgZIM_LinkClicked);
            // 
            // lblBurn3
            // 
            this.lblBurn3.AutoSize = true;
            this.lblBurn3.Location = new System.Drawing.Point(22, 171);
            this.lblBurn3.Name = "lblBurn3";
            this.lblBurn3.Size = new System.Drawing.Size(179, 12);
            this.lblBurn3.TabIndex = 3;
            this.lblBurn3.Text = "3) Record firmware on PROM. ";
            // 
            // lblBurn4
            // 
            this.lblBurn4.AutoSize = true;
            this.lblBurn4.Location = new System.Drawing.Point(22, 188);
            this.lblBurn4.Name = "lblBurn4";
            this.lblBurn4.Size = new System.Drawing.Size(237, 12);
            this.lblBurn4.TabIndex = 4;
            this.lblBurn4.Text = "4) Confirming the contents of the PROM. ";
            // 
            // progRecord
            // 
            this.progRecord.Location = new System.Drawing.Point(257, 171);
            this.progRecord.Name = "progRecord";
            this.progRecord.Size = new System.Drawing.Size(207, 14);
            this.progRecord.TabIndex = 5;
            // 
            // progConfirm
            // 
            this.progConfirm.Location = new System.Drawing.Point(257, 188);
            this.progConfirm.Name = "progConfirm";
            this.progConfirm.Size = new System.Drawing.Size(207, 15);
            this.progConfirm.TabIndex = 6;
            // 
            // lblBurn1
            // 
            this.lblBurn1.AutoSize = true;
            this.lblBurn1.Location = new System.Drawing.Point(22, 136);
            this.lblBurn1.Name = "lblBurn1";
            this.lblBurn1.Size = new System.Drawing.Size(224, 12);
            this.lblBurn1.TabIndex = 7;
            this.lblBurn1.Text = "1) Reset FPGA and connect to PROM. ";
            // 
            // lblBurn2
            // 
            this.lblBurn2.AutoSize = true;
            this.lblBurn2.Location = new System.Drawing.Point(22, 154);
            this.lblBurn2.Name = "lblBurn2";
            this.lblBurn2.Size = new System.Drawing.Size(135, 12);
            this.lblBurn2.TabIndex = 8;
            this.lblBurn2.Text = "2) Initialize the PROM. ";
            // 
            // lblBurn5
            // 
            this.lblBurn5.AutoSize = true;
            this.lblBurn5.Location = new System.Drawing.Point(22, 206);
            this.lblBurn5.Name = "lblBurn5";
            this.lblBurn5.Size = new System.Drawing.Size(238, 12);
            this.lblBurn5.TabIndex = 9;
            this.lblBurn5.Text = "5) Disconnect PROM and operate FPGA. ";
            // 
            // btClose
            // 
            this.btClose.Location = new System.Drawing.Point(392, 226);
            this.btClose.Name = "btClose";
            this.btClose.Size = new System.Drawing.Size(72, 23);
            this.btClose.TabIndex = 10;
            this.btClose.Text = "Close";
            this.btClose.UseVisualStyleBackColor = true;
            this.btClose.Click += new System.EventHandler(this.btClose_Click);
            // 
            // CHK_RESETFPGA
            // 
            this.CHK_RESETFPGA.Appearance = System.Windows.Forms.Appearance.Button;
            this.CHK_RESETFPGA.AutoSize = true;
            this.CHK_RESETFPGA.Location = new System.Drawing.Point(377, 100);
            this.CHK_RESETFPGA.Name = "CHK_RESETFPGA";
            this.CHK_RESETFPGA.Size = new System.Drawing.Size(83, 22);
            this.CHK_RESETFPGA.TabIndex = 13;
            this.CHK_RESETFPGA.Text = "Reset FPGA";
            this.CHK_RESETFPGA.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.CHK_RESETFPGA.UseVisualStyleBackColor = true;
            this.CHK_RESETFPGA.CheckedChanged += new System.EventHandler(this.CHK_RESETFPGA_CheckedChanged);
            // 
            // frmBurnZIM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(476, 256);
            this.Controls.Add(this.CHK_RESETFPGA);
            this.Controls.Add(this.btClose);
            this.Controls.Add(this.lblBurn5);
            this.Controls.Add(this.lblBurn2);
            this.Controls.Add(this.lblBurn1);
            this.Controls.Add(this.progConfirm);
            this.Controls.Add(this.progRecord);
            this.Controls.Add(this.lblBurn4);
            this.Controls.Add(this.lblBurn3);
            this.Controls.Add(this.LnklblChgZIM);
            this.Controls.Add(this.txtFilePath);
            this.Controls.Add(this.LnklblSelFile);
            this.MaximizeBox = false;
            this.Name = "frmBurnZIM";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Firmware Change of FPGA in ZIM.";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.LinkLabel LnklblSelFile;
        private System.Windows.Forms.TextBox txtFilePath;
        private System.Windows.Forms.LinkLabel LnklblChgZIM;
        private System.Windows.Forms.Label lblBurn3;
        private System.Windows.Forms.Label lblBurn4;
        private System.Windows.Forms.ProgressBar progRecord;
        private System.Windows.Forms.ProgressBar progConfirm;
        private System.Windows.Forms.Label lblBurn1;
        private System.Windows.Forms.Label lblBurn2;
        private System.Windows.Forms.Label lblBurn5;
        private System.Windows.Forms.Button btClose;
        private System.Windows.Forms.CheckBox CHK_RESETFPGA;
    }
}