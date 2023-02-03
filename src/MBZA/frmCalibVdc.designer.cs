namespace ZiveLab.ZM
{
    partial class frmCalibVdc
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmCalibVdc));
            this.btClose = new System.Windows.Forms.Button();
            this.btCheckCal1 = new System.Windows.Forms.Button();
            this.txtResSquare1 = new System.Windows.Forms.TextBox();
            this.label18 = new System.Windows.Forms.Label();
            this.txtSquare1 = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.btApply1 = new System.Windows.Forms.Button();
            this.ListAfter1 = new System.Windows.Forms.ListView();
            this.btGetCalInf1 = new System.Windows.Forms.Button();
            this.ListBefore1 = new System.Windows.Forms.ListView();
            this.btLAAdd1 = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtTarget1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btRefresh1 = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.txtReal1 = new System.Windows.Forms.TextBox();
            this.btLARem1 = new System.Windows.Forms.Button();
            this.btLBRem1 = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.btLBAdd1 = new System.Windows.Forms.Button();
            this.chkCalib1 = new System.Windows.Forms.CheckBox();
            this.txtFactor1 = new System.Windows.Forms.TextBox();
            this.txtGain1 = new System.Windows.Forms.TextBox();
            this.txtMin1 = new System.Windows.Forms.TextBox();
            this.txtOffset1 = new System.Windows.Forms.TextBox();
            this.txtMax1 = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.BtOpenFolder = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtRangeStat = new System.Windows.Forms.TextBox();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btClose
            // 
            this.btClose.Location = new System.Drawing.Point(473, 479);
            this.btClose.Name = "btClose";
            this.btClose.Size = new System.Drawing.Size(89, 32);
            this.btClose.TabIndex = 37;
            this.btClose.Text = "Close";
            this.btClose.UseVisualStyleBackColor = true;
            this.btClose.Click += new System.EventHandler(this.btClose_Click);
            // 
            // btCheckCal1
            // 
            this.btCheckCal1.Location = new System.Drawing.Point(497, 115);
            this.btCheckCal1.Name = "btCheckCal1";
            this.btCheckCal1.Size = new System.Drawing.Size(65, 27);
            this.btCheckCal1.TabIndex = 68;
            this.btCheckCal1.Text = "Check accuracy";
            this.btCheckCal1.UseVisualStyleBackColor = true;
            this.btCheckCal1.Click += new System.EventHandler(this.btCheckCal1_Click);
            // 
            // txtResSquare1
            // 
            this.txtResSquare1.Location = new System.Drawing.Point(477, 446);
            this.txtResSquare1.Name = "txtResSquare1";
            this.txtResSquare1.ReadOnly = true;
            this.txtResSquare1.Size = new System.Drawing.Size(85, 22);
            this.txtResSquare1.TabIndex = 67;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(443, 449);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(28, 14);
            this.label18.TabIndex = 66;
            this.label18.Text = "RMS";
            // 
            // txtSquare1
            // 
            this.txtSquare1.Location = new System.Drawing.Point(180, 445);
            this.txtSquare1.Name = "txtSquare1";
            this.txtSquare1.ReadOnly = true;
            this.txtSquare1.Size = new System.Drawing.Size(85, 22);
            this.txtSquare1.TabIndex = 65;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(147, 448);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(28, 14);
            this.label15.TabIndex = 64;
            this.label15.Text = "RMS";
            // 
            // btApply1
            // 
            this.btApply1.Location = new System.Drawing.Point(366, 479);
            this.btApply1.Name = "btApply1";
            this.btApply1.Size = new System.Drawing.Size(89, 32);
            this.btApply1.TabIndex = 63;
            this.btApply1.Text = "Apply";
            this.btApply1.UseVisualStyleBackColor = true;
            this.btApply1.Click += new System.EventHandler(this.btApply1_Click);
            // 
            // ListAfter1
            // 
            this.ListAfter1.Location = new System.Drawing.Point(291, 144);
            this.ListAfter1.Name = "ListAfter1";
            this.ListAfter1.Size = new System.Drawing.Size(271, 293);
            this.ListAfter1.TabIndex = 49;
            this.ListAfter1.UseCompatibleStateImageBehavior = false;
            // 
            // btGetCalInf1
            // 
            this.btGetCalInf1.Location = new System.Drawing.Point(216, 115);
            this.btGetCalInf1.Name = "btGetCalInf1";
            this.btGetCalInf1.Size = new System.Drawing.Size(49, 27);
            this.btGetCalInf1.TabIndex = 62;
            this.btGetCalInf1.Text = "Make calib info";
            this.btGetCalInf1.UseVisualStyleBackColor = true;
            this.btGetCalInf1.Click += new System.EventHandler(this.btGetCalInf1_Click);
            // 
            // ListBefore1
            // 
            this.ListBefore1.Location = new System.Drawing.Point(10, 144);
            this.ListBefore1.Name = "ListBefore1";
            this.ListBefore1.Size = new System.Drawing.Size(255, 293);
            this.ListBefore1.TabIndex = 44;
            this.ListBefore1.UseCompatibleStateImageBehavior = false;
            // 
            // btLAAdd1
            // 
            this.btLAAdd1.Location = new System.Drawing.Point(291, 115);
            this.btLAAdd1.Name = "btLAAdd1";
            this.btLAAdd1.Size = new System.Drawing.Size(49, 27);
            this.btLAAdd1.TabIndex = 60;
            this.btLAAdd1.Text = "Add";
            this.btLAAdd1.UseVisualStyleBackColor = true;
            this.btLAAdd1.Click += new System.EventHandler(this.btLAAdd1_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtTarget1);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.btRefresh1);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.txtReal1);
            this.groupBox2.Location = new System.Drawing.Point(184, 54);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(378, 49);
            this.groupBox2.TabIndex = 47;
            this.groupBox2.TabStop = false;
            // 
            // txtTarget1
            // 
            this.txtTarget1.Location = new System.Drawing.Point(62, 15);
            this.txtTarget1.Name = "txtTarget1";
            this.txtTarget1.Size = new System.Drawing.Size(85, 22);
            this.txtTarget1.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 14);
            this.label1.TabIndex = 7;
            this.label1.Text = "Target";
            // 
            // btRefresh1
            // 
            this.btRefresh1.Location = new System.Drawing.Point(302, 13);
            this.btRefresh1.Name = "btRefresh1";
            this.btRefresh1.Size = new System.Drawing.Size(64, 27);
            this.btRefresh1.TabIndex = 11;
            this.btRefresh1.Text = "Refresh";
            this.btRefresh1.UseVisualStyleBackColor = true;
            this.btRefresh1.Click += new System.EventHandler(this.btRefresh1_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(155, 21);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(35, 14);
            this.label9.TabIndex = 8;
            this.label9.Text = "Real";
            // 
            // txtReal1
            // 
            this.txtReal1.Location = new System.Drawing.Point(191, 16);
            this.txtReal1.Name = "txtReal1";
            this.txtReal1.Size = new System.Drawing.Size(85, 22);
            this.txtReal1.TabIndex = 10;
            // 
            // btLARem1
            // 
            this.btLARem1.Location = new System.Drawing.Point(343, 115);
            this.btLARem1.Name = "btLARem1";
            this.btLARem1.Size = new System.Drawing.Size(65, 27);
            this.btLARem1.TabIndex = 61;
            this.btLARem1.Text = "Remove";
            this.btLARem1.UseVisualStyleBackColor = true;
            this.btLARem1.Click += new System.EventHandler(this.btLARem1_Click);
            // 
            // btLBRem1
            // 
            this.btLBRem1.Location = new System.Drawing.Point(62, 115);
            this.btLBRem1.Name = "btLBRem1";
            this.btLBRem1.Size = new System.Drawing.Size(65, 27);
            this.btLBRem1.TabIndex = 48;
            this.btLBRem1.Text = "Remove";
            this.btLBRem1.UseVisualStyleBackColor = true;
            this.btLBRem1.Click += new System.EventHandler(this.btLBRem1_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(25, 78);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(49, 14);
            this.label10.TabIndex = 59;
            this.label10.Text = "Factor";
            // 
            // btLBAdd1
            // 
            this.btLBAdd1.Location = new System.Drawing.Point(10, 115);
            this.btLBAdd1.Name = "btLBAdd1";
            this.btLBAdd1.Size = new System.Drawing.Size(49, 27);
            this.btLBAdd1.TabIndex = 46;
            this.btLBAdd1.Text = "Add";
            this.btLBAdd1.UseVisualStyleBackColor = true;
            this.btLBAdd1.Click += new System.EventHandler(this.btLBAdd1_Click);
            // 
            // chkCalib1
            // 
            this.chkCalib1.AutoSize = true;
            this.chkCalib1.Location = new System.Drawing.Point(184, 31);
            this.chkCalib1.Name = "chkCalib1";
            this.chkCalib1.Size = new System.Drawing.Size(103, 18);
            this.chkCalib1.TabIndex = 45;
            this.chkCalib1.Text = "Calibration";
            this.chkCalib1.UseVisualStyleBackColor = true;
            this.chkCalib1.CheckedChanged += new System.EventHandler(this.chkCalib1_CheckedChanged);
            // 
            // txtFactor1
            // 
            this.txtFactor1.Location = new System.Drawing.Point(84, 75);
            this.txtFactor1.Name = "txtFactor1";
            this.txtFactor1.ReadOnly = true;
            this.txtFactor1.Size = new System.Drawing.Size(85, 22);
            this.txtFactor1.TabIndex = 58;
            // 
            // txtGain1
            // 
            this.txtGain1.Location = new System.Drawing.Point(330, 29);
            this.txtGain1.Name = "txtGain1";
            this.txtGain1.ReadOnly = true;
            this.txtGain1.Size = new System.Drawing.Size(85, 22);
            this.txtGain1.TabIndex = 50;
            // 
            // txtMin1
            // 
            this.txtMin1.Location = new System.Drawing.Point(84, 43);
            this.txtMin1.Name = "txtMin1";
            this.txtMin1.ReadOnly = true;
            this.txtMin1.Size = new System.Drawing.Size(85, 22);
            this.txtMin1.TabIndex = 57;
            // 
            // txtOffset1
            // 
            this.txtOffset1.Location = new System.Drawing.Point(477, 29);
            this.txtOffset1.Name = "txtOffset1";
            this.txtOffset1.ReadOnly = true;
            this.txtOffset1.Size = new System.Drawing.Size(85, 22);
            this.txtOffset1.TabIndex = 51;
            // 
            // txtMax1
            // 
            this.txtMax1.Location = new System.Drawing.Point(84, 12);
            this.txtMax1.Name = "txtMax1";
            this.txtMax1.ReadOnly = true;
            this.txtMax1.Size = new System.Drawing.Size(85, 22);
            this.txtMax1.TabIndex = 56;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(293, 33);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(35, 14);
            this.label11.TabIndex = 52;
            this.label11.Text = "Gain";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(20, 49);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(56, 14);
            this.label12.TabIndex = 55;
            this.label12.Text = "Minimum";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(422, 32);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(49, 14);
            this.label13.TabIndex = 53;
            this.label13.Text = "Offset";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(16, 15);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(56, 14);
            this.label14.TabIndex = 54;
            this.label14.Text = "Maximum";
            // 
            // BtOpenFolder
            // 
            this.BtOpenFolder.Location = new System.Drawing.Point(150, 480);
            this.BtOpenFolder.Name = "BtOpenFolder";
            this.BtOpenFolder.Size = new System.Drawing.Size(120, 31);
            this.BtOpenFolder.TabIndex = 71;
            this.BtOpenFolder.Text = "Open log file.";
            this.BtOpenFolder.UseVisualStyleBackColor = true;
            this.BtOpenFolder.Click += new System.EventHandler(this.BtOpenFolder_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(235, 3);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(91, 14);
            this.label2.TabIndex = 12;
            this.label2.Text = "Range status";
            // 
            // txtRangeStat
            // 
            this.txtRangeStat.Location = new System.Drawing.Point(330, 0);
            this.txtRangeStat.Name = "txtRangeStat";
            this.txtRangeStat.ReadOnly = true;
            this.txtRangeStat.Size = new System.Drawing.Size(85, 22);
            this.txtRangeStat.TabIndex = 72;
            this.txtRangeStat.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // frmCalibVdc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(574, 520);
            this.Controls.Add(this.txtRangeStat);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.BtOpenFolder);
            this.Controls.Add(this.btCheckCal1);
            this.Controls.Add(this.txtResSquare1);
            this.Controls.Add(this.label18);
            this.Controls.Add(this.txtSquare1);
            this.Controls.Add(this.label15);
            this.Controls.Add(this.btApply1);
            this.Controls.Add(this.ListAfter1);
            this.Controls.Add(this.btGetCalInf1);
            this.Controls.Add(this.ListBefore1);
            this.Controls.Add(this.btLAAdd1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.btLARem1);
            this.Controls.Add(this.btLBRem1);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.btLBAdd1);
            this.Controls.Add(this.chkCalib1);
            this.Controls.Add(this.txtFactor1);
            this.Controls.Add(this.txtGain1);
            this.Controls.Add(this.txtMin1);
            this.Controls.Add(this.txtOffset1);
            this.Controls.Add(this.txtMax1);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.btClose);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "frmCalibVdc";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Calibration DC Voltage";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmCalibVdc_FormClosing);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btClose;
        private System.Windows.Forms.Button btCheckCal1;
        private System.Windows.Forms.TextBox txtResSquare1;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.TextBox txtSquare1;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Button btApply1;
        private System.Windows.Forms.ListView ListAfter1;
        private System.Windows.Forms.Button btGetCalInf1;
        private System.Windows.Forms.ListView ListBefore1;
        private System.Windows.Forms.Button btLAAdd1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtTarget1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btRefresh1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtReal1;
        private System.Windows.Forms.Button btLARem1;
        private System.Windows.Forms.Button btLBRem1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btLBAdd1;
        private System.Windows.Forms.CheckBox chkCalib1;
        private System.Windows.Forms.TextBox txtFactor1;
        private System.Windows.Forms.TextBox txtGain1;
        private System.Windows.Forms.TextBox txtMin1;
        private System.Windows.Forms.TextBox txtOffset1;
        private System.Windows.Forms.TextBox txtMax1;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Button BtOpenFolder;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtRangeStat;
    }
}