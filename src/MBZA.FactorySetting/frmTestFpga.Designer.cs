namespace ZiveLab.ZM.FactorySetting
{
    partial class frmTestFpga
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
            this.lnklblSifFile = new System.Windows.Forms.LinkLabel();
            this.lnklblfpgaFile = new System.Windows.Forms.LinkLabel();
            this.lnklblburnsif = new System.Windows.Forms.LinkLabel();
            this.lnklblresetfpga = new System.Windows.Forms.LinkLabel();
            this.lnklblburnfpgabyspi = new System.Windows.Forms.LinkLabel();
            this.lnklblburnfpgabyparallel = new System.Windows.Forms.LinkLabel();
            this.txtsend = new System.Windows.Forms.TextBox();
            this.lnklbltestsend = new System.Windows.Forms.LinkLabel();
            this.lnklbltestrecieve = new System.Windows.Forms.LinkLabel();
            this.txtrecieve = new System.Windows.Forms.TextBox();
            this.progRecord = new System.Windows.Forms.ProgressBar();
            this.progConfirm = new System.Windows.Forms.ProgressBar();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lnklblSifFile
            // 
            this.lnklblSifFile.AutoSize = true;
            this.lnklblSifFile.Location = new System.Drawing.Point(21, 18);
            this.lnklblSifFile.Name = "lnklblSifFile";
            this.lnklblSifFile.Size = new System.Drawing.Size(92, 12);
            this.lnklblSifFile.TabIndex = 1;
            this.lnklblSifFile.TabStop = true;
            this.lnklblSifFile.Text = "SIF Firmware : ";
            this.lnklblSifFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblSifFile_LinkClicked);
            // 
            // lnklblfpgaFile
            // 
            this.lnklblfpgaFile.AutoSize = true;
            this.lnklblfpgaFile.Location = new System.Drawing.Point(21, 77);
            this.lnklblfpgaFile.Name = "lnklblfpgaFile";
            this.lnklblfpgaFile.Size = new System.Drawing.Size(106, 12);
            this.lnklblfpgaFile.TabIndex = 2;
            this.lnklblfpgaFile.TabStop = true;
            this.lnklblfpgaFile.Text = "FPGA Firmware : ";
            this.lnklblfpgaFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblfpgaFile_LinkClicked);
            // 
            // lnklblburnsif
            // 
            this.lnklblburnsif.AutoSize = true;
            this.lnklblburnsif.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnklblburnsif.Location = new System.Drawing.Point(105, 43);
            this.lnklblburnsif.Name = "lnklblburnsif";
            this.lnklblburnsif.Size = new System.Drawing.Size(124, 12);
            this.lnklblburnsif.TabIndex = 3;
            this.lnklblburnsif.TabStop = true;
            this.lnklblburnsif.Text = "Burning SIF Firmwre.";
            this.lnklblburnsif.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblburnsif_LinkClicked);
            // 
            // lnklblresetfpga
            // 
            this.lnklblresetfpga.AutoSize = true;
            this.lnklblresetfpga.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnklblresetfpga.Location = new System.Drawing.Point(105, 106);
            this.lnklblresetfpga.Name = "lnklblresetfpga";
            this.lnklblresetfpga.Size = new System.Drawing.Size(94, 12);
            this.lnklblresetfpga.TabIndex = 4;
            this.lnklblresetfpga.TabStop = true;
            this.lnklblresetfpga.Text = "Reset set FPGA";
            this.lnklblresetfpga.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblresetfpga_LinkClicked);
            // 
            // lnklblburnfpgabyspi
            // 
            this.lnklblburnfpgabyspi.AutoSize = true;
            this.lnklblburnfpgabyspi.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnklblburnfpgabyspi.Location = new System.Drawing.Point(224, 106);
            this.lnklblburnfpgabyspi.Name = "lnklblburnfpgabyspi";
            this.lnklblburnfpgabyspi.Size = new System.Drawing.Size(179, 12);
            this.lnklblburnfpgabyspi.TabIndex = 5;
            this.lnklblburnfpgabyspi.TabStop = true;
            this.lnklblburnfpgabyspi.Text = "Burning FPGA Firmwre by SPI.";
            this.lnklblburnfpgabyspi.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblburnfpgabyspi_LinkClicked);
            // 
            // lnklblburnfpgabyparallel
            // 
            this.lnklblburnfpgabyparallel.AutoSize = true;
            this.lnklblburnfpgabyparallel.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnklblburnfpgabyparallel.Location = new System.Drawing.Point(224, 248);
            this.lnklblburnfpgabyparallel.Name = "lnklblburnfpgabyparallel";
            this.lnklblburnfpgabyparallel.Size = new System.Drawing.Size(201, 12);
            this.lnklblburnfpgabyparallel.TabIndex = 6;
            this.lnklblburnfpgabyparallel.TabStop = true;
            this.lnklblburnfpgabyparallel.Text = "Burning FPGA Firmwre by parallel.";
            this.lnklblburnfpgabyparallel.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklblburnfpgabyparallel_LinkClicked);
            // 
            // txtsend
            // 
            this.txtsend.Location = new System.Drawing.Point(88, 184);
            this.txtsend.Name = "txtsend";
            this.txtsend.Size = new System.Drawing.Size(141, 21);
            this.txtsend.TabIndex = 7;
            // 
            // lnklbltestsend
            // 
            this.lnklbltestsend.AutoSize = true;
            this.lnklbltestsend.Location = new System.Drawing.Point(247, 187);
            this.lnklbltestsend.Name = "lnklbltestsend";
            this.lnklbltestsend.Size = new System.Drawing.Size(70, 12);
            this.lnklbltestsend.TabIndex = 8;
            this.lnklbltestsend.TabStop = true;
            this.lnklbltestsend.Text = "Send FPGA";
            this.lnklbltestsend.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklbltestsend_LinkClicked);
            // 
            // lnklbltestrecieve
            // 
            this.lnklbltestrecieve.AutoSize = true;
            this.lnklbltestrecieve.Location = new System.Drawing.Point(323, 187);
            this.lnklbltestrecieve.Name = "lnklbltestrecieve";
            this.lnklbltestrecieve.Size = new System.Drawing.Size(86, 12);
            this.lnklbltestrecieve.TabIndex = 9;
            this.lnklbltestrecieve.TabStop = true;
            this.lnklbltestrecieve.Text = "Recieve FPGA";
            this.lnklbltestrecieve.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnklbltestrecieve_LinkClicked);
            // 
            // txtrecieve
            // 
            this.txtrecieve.Location = new System.Drawing.Point(425, 184);
            this.txtrecieve.Name = "txtrecieve";
            this.txtrecieve.ReadOnly = true;
            this.txtrecieve.Size = new System.Drawing.Size(141, 21);
            this.txtrecieve.TabIndex = 10;
            // 
            // progRecord
            // 
            this.progRecord.Location = new System.Drawing.Point(398, 129);
            this.progRecord.Name = "progRecord";
            this.progRecord.Size = new System.Drawing.Size(156, 12);
            this.progRecord.TabIndex = 11;
            // 
            // progConfirm
            // 
            this.progConfirm.Location = new System.Drawing.Point(398, 147);
            this.progConfirm.Name = "progConfirm";
            this.progConfirm.Size = new System.Drawing.Size(156, 12);
            this.progConfirm.TabIndex = 12;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(310, 129);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(82, 12);
            this.label1.TabIndex = 13;
            this.label1.Text = "Write process";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(310, 147);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 12);
            this.label2.TabIndex = 14;
            this.label2.Text = "verify process";
            // 
            // frmTestFpga
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(601, 404);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.progConfirm);
            this.Controls.Add(this.progRecord);
            this.Controls.Add(this.txtrecieve);
            this.Controls.Add(this.lnklbltestrecieve);
            this.Controls.Add(this.lnklbltestsend);
            this.Controls.Add(this.txtsend);
            this.Controls.Add(this.lnklblburnfpgabyparallel);
            this.Controls.Add(this.lnklblburnfpgabyspi);
            this.Controls.Add(this.lnklblresetfpga);
            this.Controls.Add(this.lnklblburnsif);
            this.Controls.Add(this.lnklblfpgaFile);
            this.Controls.Add(this.lnklblSifFile);
            this.Name = "frmTestFpga";
            this.Text = "Testing Devices";
            this.Load += new System.EventHandler(this.frmTestFpga_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.LinkLabel lnklblSifFile;
        private System.Windows.Forms.LinkLabel lnklblfpgaFile;
        private System.Windows.Forms.LinkLabel lnklblburnsif;
        private System.Windows.Forms.LinkLabel lnklblresetfpga;
        private System.Windows.Forms.LinkLabel lnklblburnfpgabyspi;
        private System.Windows.Forms.LinkLabel lnklblburnfpgabyparallel;
        private System.Windows.Forms.TextBox txtsend;
        private System.Windows.Forms.LinkLabel lnklbltestsend;
        private System.Windows.Forms.LinkLabel lnklbltestrecieve;
        private System.Windows.Forms.TextBox txtrecieve;
        private System.Windows.Forms.ProgressBar progRecord;
        private System.Windows.Forms.ProgressBar progConfirm;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}