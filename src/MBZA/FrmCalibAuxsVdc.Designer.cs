namespace ZiveLab.ZM
{
    partial class FrmCalibAuxsVdc
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmCalibAuxsVdc));
            this.chkCalib1 = new System.Windows.Forms.CheckBox();
            this.txtTarget1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btRefresh1 = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.listRngInf = new System.Windows.Forms.ListView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.ListRealVal = new System.Windows.Forms.ListView();
            this.listCalib = new System.Windows.Forms.ListView();
            this.BtOpenFolder = new System.Windows.Forms.Button();
            this.btGetCalInf1 = new System.Windows.Forms.Button();
            this.btLBRem1 = new System.Windows.Forms.Button();
            this.btLBAdd1 = new System.Windows.Forms.Button();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.txtCalibSquare = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.txtResSquare = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btLARem1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.btCheckCal = new System.Windows.Forms.Button();
            this.listResult = new System.Windows.Forms.ListView();
            this.btApply1 = new System.Windows.Forms.Button();
            this.btClose = new System.Windows.Forms.Button();
            this.btDeselAllBdItems = new System.Windows.Forms.Button();
            this.btSelAllBdItems = new System.Windows.Forms.Button();
            this.chkitemB1 = new System.Windows.Forms.CheckBox();
            this.chkitemB2 = new System.Windows.Forms.CheckBox();
            this.chkitemB12 = new System.Windows.Forms.CheckBox();
            this.chkitemB3 = new System.Windows.Forms.CheckBox();
            this.chkitemB11 = new System.Windows.Forms.CheckBox();
            this.chkitemB4 = new System.Windows.Forms.CheckBox();
            this.chkitemB10 = new System.Windows.Forms.CheckBox();
            this.chkitemB5 = new System.Windows.Forms.CheckBox();
            this.chkitemB9 = new System.Windows.Forms.CheckBox();
            this.chkitemB6 = new System.Windows.Forms.CheckBox();
            this.chkitemB8 = new System.Windows.Forms.CheckBox();
            this.chkitemB7 = new System.Windows.Forms.CheckBox();
            this.grpboxbd2 = new System.Windows.Forms.GroupBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.grpboxbd2.SuspendLayout();
            this.SuspendLayout();
            // 
            // chkCalib1
            // 
            this.chkCalib1.AutoSize = true;
            this.chkCalib1.Location = new System.Drawing.Point(19, 26);
            this.chkCalib1.Name = "chkCalib1";
            this.chkCalib1.Size = new System.Drawing.Size(145, 18);
            this.chkCalib1.TabIndex = 60;
            this.chkCalib1.Text = "Calibration mode.";
            this.chkCalib1.UseVisualStyleBackColor = true;
            this.chkCalib1.CheckedChanged += new System.EventHandler(this.chkCalib1_CheckedChanged);
            // 
            // txtTarget1
            // 
            this.txtTarget1.Location = new System.Drawing.Point(78, 54);
            this.txtTarget1.Name = "txtTarget1";
            this.txtTarget1.Size = new System.Drawing.Size(124, 22);
            this.txtTarget1.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(23, 57);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 14);
            this.label1.TabIndex = 7;
            this.label1.Text = "Target";
            // 
            // btRefresh1
            // 
            this.btRefresh1.Location = new System.Drawing.Point(19, 81);
            this.btRefresh1.Name = "btRefresh1";
            this.btRefresh1.Size = new System.Drawing.Size(184, 22);
            this.btRefresh1.TabIndex = 11;
            this.btRefresh1.Text = "Refresh";
            this.btRefresh1.UseVisualStyleBackColor = true;
            this.btRefresh1.Click += new System.EventHandler(this.btRefresh1_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.listRngInf);
            this.groupBox1.Location = new System.Drawing.Point(11, 11);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1121, 194);
            this.groupBox1.TabIndex = 67;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "[ Range information ]";
            // 
            // listRngInf
            // 
            this.listRngInf.Location = new System.Drawing.Point(23, 21);
            this.listRngInf.Name = "listRngInf";
            this.listRngInf.Size = new System.Drawing.Size(1041, 157);
            this.listRngInf.TabIndex = 70;
            this.listRngInf.UseCompatibleStateImageBehavior = false;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Controls.Add(this.txtTarget1);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.btRefresh1);
            this.groupBox2.Controls.Add(this.chkCalib1);
            this.groupBox2.Location = new System.Drawing.Point(12, 211);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(224, 458);
            this.groupBox2.TabIndex = 68;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "[ Control and Monitor ]";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.ListRealVal);
            this.groupBox3.Location = new System.Drawing.Point(12, 109);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(201, 336);
            this.groupBox3.TabIndex = 62;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "[Monitor]";
            // 
            // ListRealVal
            // 
            this.ListRealVal.Location = new System.Drawing.Point(10, 24);
            this.ListRealVal.Name = "ListRealVal";
            this.ListRealVal.Size = new System.Drawing.Size(181, 300);
            this.ListRealVal.TabIndex = 0;
            this.ListRealVal.UseCompatibleStateImageBehavior = false;
            // 
            // listCalib
            // 
            this.listCalib.Location = new System.Drawing.Point(52, 59);
            this.listCalib.Name = "listCalib";
            this.listCalib.Size = new System.Drawing.Size(821, 157);
            this.listCalib.TabIndex = 69;
            this.listCalib.UseCompatibleStateImageBehavior = false;
            // 
            // BtOpenFolder
            // 
            this.BtOpenFolder.Location = new System.Drawing.Point(1162, 32);
            this.BtOpenFolder.Name = "BtOpenFolder";
            this.BtOpenFolder.Size = new System.Drawing.Size(142, 31);
            this.BtOpenFolder.TabIndex = 75;
            this.BtOpenFolder.Text = "Open log folder.";
            this.BtOpenFolder.UseVisualStyleBackColor = true;
            this.BtOpenFolder.Click += new System.EventHandler(this.BtOpenFolder_Click);
            // 
            // btGetCalInf1
            // 
            this.btGetCalInf1.Location = new System.Drawing.Point(693, 26);
            this.btGetCalInf1.Name = "btGetCalInf1";
            this.btGetCalInf1.Size = new System.Drawing.Size(179, 27);
            this.btGetCalInf1.TabIndex = 74;
            this.btGetCalInf1.Text = "Make calib infomation.";
            this.btGetCalInf1.UseVisualStyleBackColor = true;
            this.btGetCalInf1.Click += new System.EventHandler(this.btGetCalInf1_Click);
            // 
            // btLBRem1
            // 
            this.btLBRem1.Location = new System.Drawing.Point(129, 26);
            this.btLBRem1.Name = "btLBRem1";
            this.btLBRem1.Size = new System.Drawing.Size(65, 27);
            this.btLBRem1.TabIndex = 73;
            this.btLBRem1.Text = "Remove";
            this.btLBRem1.UseVisualStyleBackColor = true;
            this.btLBRem1.Click += new System.EventHandler(this.btLBRem1_Click);
            // 
            // btLBAdd1
            // 
            this.btLBAdd1.Location = new System.Drawing.Point(52, 26);
            this.btLBAdd1.Name = "btLBAdd1";
            this.btLBAdd1.Size = new System.Drawing.Size(49, 27);
            this.btLBAdd1.TabIndex = 72;
            this.btLBAdd1.Text = "Add";
            this.btLBAdd1.UseVisualStyleBackColor = true;
            this.btLBAdd1.Click += new System.EventHandler(this.btLBAdd1_Click);
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.txtCalibSquare);
            this.groupBox4.Controls.Add(this.label15);
            this.groupBox4.Controls.Add(this.btLBRem1);
            this.groupBox4.Controls.Add(this.btLBAdd1);
            this.groupBox4.Controls.Add(this.btGetCalInf1);
            this.groupBox4.Controls.Add(this.listCalib);
            this.groupBox4.Location = new System.Drawing.Point(412, 211);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(892, 255);
            this.groupBox4.TabIndex = 76;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "[ Calibration item list ]";
            // 
            // txtCalibSquare
            // 
            this.txtCalibSquare.Location = new System.Drawing.Point(52, 221);
            this.txtCalibSquare.Name = "txtCalibSquare";
            this.txtCalibSquare.ReadOnly = true;
            this.txtCalibSquare.Size = new System.Drawing.Size(820, 22);
            this.txtCalibSquare.TabIndex = 77;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(16, 225);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(28, 14);
            this.label15.TabIndex = 76;
            this.label15.Text = "RMS";
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.txtResSquare);
            this.groupBox5.Controls.Add(this.label2);
            this.groupBox5.Controls.Add(this.btLARem1);
            this.groupBox5.Controls.Add(this.button2);
            this.groupBox5.Controls.Add(this.btCheckCal);
            this.groupBox5.Controls.Add(this.listResult);
            this.groupBox5.Location = new System.Drawing.Point(412, 486);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(892, 255);
            this.groupBox5.TabIndex = 77;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "[ Calibrated item list ]";
            // 
            // txtResSquare
            // 
            this.txtResSquare.Location = new System.Drawing.Point(52, 221);
            this.txtResSquare.Name = "txtResSquare";
            this.txtResSquare.ReadOnly = true;
            this.txtResSquare.Size = new System.Drawing.Size(820, 22);
            this.txtResSquare.TabIndex = 77;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 225);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(28, 14);
            this.label2.TabIndex = 76;
            this.label2.Text = "RMS";
            // 
            // btLARem1
            // 
            this.btLARem1.Location = new System.Drawing.Point(91, 26);
            this.btLARem1.Name = "btLARem1";
            this.btLARem1.Size = new System.Drawing.Size(65, 27);
            this.btLARem1.TabIndex = 73;
            this.btLARem1.Text = "Remove";
            this.btLARem1.UseVisualStyleBackColor = true;
            this.btLARem1.Click += new System.EventHandler(this.btLARem1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(19, 26);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(49, 27);
            this.button2.TabIndex = 72;
            this.button2.Text = "Add";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // btCheckCal
            // 
            this.btCheckCal.Location = new System.Drawing.Point(693, 26);
            this.btCheckCal.Name = "btCheckCal";
            this.btCheckCal.Size = new System.Drawing.Size(179, 27);
            this.btCheckCal.TabIndex = 74;
            this.btCheckCal.Text = "Check accuracy.";
            this.btCheckCal.UseVisualStyleBackColor = true;
            this.btCheckCal.Click += new System.EventHandler(this.btCheckCal_Click);
            // 
            // listResult
            // 
            this.listResult.Location = new System.Drawing.Point(52, 59);
            this.listResult.Name = "listResult";
            this.listResult.Size = new System.Drawing.Size(821, 157);
            this.listResult.TabIndex = 69;
            this.listResult.UseCompatibleStateImageBehavior = false;
            // 
            // btApply1
            // 
            this.btApply1.Location = new System.Drawing.Point(1162, 122);
            this.btApply1.Name = "btApply1";
            this.btApply1.Size = new System.Drawing.Size(142, 32);
            this.btApply1.TabIndex = 79;
            this.btApply1.Text = "Apply";
            this.btApply1.UseVisualStyleBackColor = true;
            this.btApply1.Click += new System.EventHandler(this.btApply1_Click);
            // 
            // btClose
            // 
            this.btClose.Location = new System.Drawing.Point(1162, 173);
            this.btClose.Name = "btClose";
            this.btClose.Size = new System.Drawing.Size(142, 32);
            this.btClose.TabIndex = 78;
            this.btClose.Text = "Close";
            this.btClose.UseVisualStyleBackColor = true;
            this.btClose.Click += new System.EventHandler(this.btClose_Click);
            // 
            // btDeselAllBdItems
            // 
            this.btDeselAllBdItems.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btDeselAllBdItems.Image = global::ZiveLab.ZM.Properties.Resources.CheckBoxUnchecked;
            this.btDeselAllBdItems.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btDeselAllBdItems.Location = new System.Drawing.Point(76, 26);
            this.btDeselAllBdItems.Name = "btDeselAllBdItems";
            this.btDeselAllBdItems.Size = new System.Drawing.Size(50, 22);
            this.btDeselAllBdItems.TabIndex = 136;
            this.btDeselAllBdItems.Text = "All";
            this.btDeselAllBdItems.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btDeselAllBdItems.UseVisualStyleBackColor = true;
            this.btDeselAllBdItems.Click += new System.EventHandler(this.btDeselAllBdItems_Click);
            // 
            // btSelAllBdItems
            // 
            this.btSelAllBdItems.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.btSelAllBdItems.Image = global::ZiveLab.ZM.Properties.Resources.CheckBoxGroup;
            this.btSelAllBdItems.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btSelAllBdItems.Location = new System.Drawing.Point(13, 26);
            this.btSelAllBdItems.Name = "btSelAllBdItems";
            this.btSelAllBdItems.Size = new System.Drawing.Size(50, 22);
            this.btSelAllBdItems.TabIndex = 135;
            this.btSelAllBdItems.Text = "All";
            this.btSelAllBdItems.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btSelAllBdItems.UseVisualStyleBackColor = true;
            this.btSelAllBdItems.Click += new System.EventHandler(this.btSelAllBdItems_Click);
            // 
            // chkitemB1
            // 
            this.chkitemB1.AutoSize = true;
            this.chkitemB1.Location = new System.Drawing.Point(13, 70);
            this.chkitemB1.Name = "chkitemB1";
            this.chkitemB1.Size = new System.Drawing.Size(89, 18);
            this.chkitemB1.TabIndex = 123;
            this.chkitemB1.Text = "checkBox1";
            this.chkitemB1.UseVisualStyleBackColor = true;
            this.chkitemB1.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB2
            // 
            this.chkitemB2.AutoSize = true;
            this.chkitemB2.Location = new System.Drawing.Point(13, 94);
            this.chkitemB2.Name = "chkitemB2";
            this.chkitemB2.Size = new System.Drawing.Size(89, 18);
            this.chkitemB2.TabIndex = 124;
            this.chkitemB2.Text = "checkBox1";
            this.chkitemB2.UseVisualStyleBackColor = true;
            this.chkitemB2.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB12
            // 
            this.chkitemB12.AutoSize = true;
            this.chkitemB12.Location = new System.Drawing.Point(13, 415);
            this.chkitemB12.Name = "chkitemB12";
            this.chkitemB12.Size = new System.Drawing.Size(89, 18);
            this.chkitemB12.TabIndex = 134;
            this.chkitemB12.Text = "checkBox1";
            this.chkitemB12.UseVisualStyleBackColor = true;
            this.chkitemB12.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB3
            // 
            this.chkitemB3.AutoSize = true;
            this.chkitemB3.Location = new System.Drawing.Point(13, 118);
            this.chkitemB3.Name = "chkitemB3";
            this.chkitemB3.Size = new System.Drawing.Size(89, 18);
            this.chkitemB3.TabIndex = 125;
            this.chkitemB3.Text = "checkBox1";
            this.chkitemB3.UseVisualStyleBackColor = true;
            this.chkitemB3.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB11
            // 
            this.chkitemB11.AutoSize = true;
            this.chkitemB11.Location = new System.Drawing.Point(13, 391);
            this.chkitemB11.Name = "chkitemB11";
            this.chkitemB11.Size = new System.Drawing.Size(89, 18);
            this.chkitemB11.TabIndex = 133;
            this.chkitemB11.Text = "checkBox1";
            this.chkitemB11.UseVisualStyleBackColor = true;
            this.chkitemB11.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB4
            // 
            this.chkitemB4.AutoSize = true;
            this.chkitemB4.Location = new System.Drawing.Point(13, 142);
            this.chkitemB4.Name = "chkitemB4";
            this.chkitemB4.Size = new System.Drawing.Size(89, 18);
            this.chkitemB4.TabIndex = 126;
            this.chkitemB4.Text = "checkBox1";
            this.chkitemB4.UseVisualStyleBackColor = true;
            this.chkitemB4.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB10
            // 
            this.chkitemB10.AutoSize = true;
            this.chkitemB10.Location = new System.Drawing.Point(13, 367);
            this.chkitemB10.Name = "chkitemB10";
            this.chkitemB10.Size = new System.Drawing.Size(89, 18);
            this.chkitemB10.TabIndex = 132;
            this.chkitemB10.Text = "checkBox1";
            this.chkitemB10.UseVisualStyleBackColor = true;
            this.chkitemB10.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB5
            // 
            this.chkitemB5.AutoSize = true;
            this.chkitemB5.Location = new System.Drawing.Point(13, 203);
            this.chkitemB5.Name = "chkitemB5";
            this.chkitemB5.Size = new System.Drawing.Size(89, 18);
            this.chkitemB5.TabIndex = 127;
            this.chkitemB5.Text = "checkBox1";
            this.chkitemB5.UseVisualStyleBackColor = true;
            this.chkitemB5.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB9
            // 
            this.chkitemB9.AutoSize = true;
            this.chkitemB9.Location = new System.Drawing.Point(13, 343);
            this.chkitemB9.Name = "chkitemB9";
            this.chkitemB9.Size = new System.Drawing.Size(89, 18);
            this.chkitemB9.TabIndex = 131;
            this.chkitemB9.Text = "checkBox1";
            this.chkitemB9.UseVisualStyleBackColor = true;
            this.chkitemB9.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB6
            // 
            this.chkitemB6.AutoSize = true;
            this.chkitemB6.Location = new System.Drawing.Point(13, 227);
            this.chkitemB6.Name = "chkitemB6";
            this.chkitemB6.Size = new System.Drawing.Size(89, 18);
            this.chkitemB6.TabIndex = 128;
            this.chkitemB6.Text = "checkBox1";
            this.chkitemB6.UseVisualStyleBackColor = true;
            this.chkitemB6.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB8
            // 
            this.chkitemB8.AutoSize = true;
            this.chkitemB8.Location = new System.Drawing.Point(13, 275);
            this.chkitemB8.Name = "chkitemB8";
            this.chkitemB8.Size = new System.Drawing.Size(89, 18);
            this.chkitemB8.TabIndex = 130;
            this.chkitemB8.Text = "checkBox1";
            this.chkitemB8.UseVisualStyleBackColor = true;
            this.chkitemB8.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // chkitemB7
            // 
            this.chkitemB7.AutoSize = true;
            this.chkitemB7.Location = new System.Drawing.Point(13, 251);
            this.chkitemB7.Name = "chkitemB7";
            this.chkitemB7.Size = new System.Drawing.Size(89, 18);
            this.chkitemB7.TabIndex = 129;
            this.chkitemB7.Text = "checkBox1";
            this.chkitemB7.UseVisualStyleBackColor = true;
            this.chkitemB7.CheckedChanged += new System.EventHandler(this.CheckBoxCh_CheckedChanged);
            // 
            // grpboxbd2
            // 
            this.grpboxbd2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.grpboxbd2.Controls.Add(this.btDeselAllBdItems);
            this.grpboxbd2.Controls.Add(this.btSelAllBdItems);
            this.grpboxbd2.Controls.Add(this.chkitemB1);
            this.grpboxbd2.Controls.Add(this.chkitemB2);
            this.grpboxbd2.Controls.Add(this.chkitemB12);
            this.grpboxbd2.Controls.Add(this.chkitemB3);
            this.grpboxbd2.Controls.Add(this.chkitemB11);
            this.grpboxbd2.Controls.Add(this.chkitemB4);
            this.grpboxbd2.Controls.Add(this.chkitemB10);
            this.grpboxbd2.Controls.Add(this.chkitemB5);
            this.grpboxbd2.Controls.Add(this.chkitemB9);
            this.grpboxbd2.Controls.Add(this.chkitemB6);
            this.grpboxbd2.Controls.Add(this.chkitemB8);
            this.grpboxbd2.Controls.Add(this.chkitemB7);
            this.grpboxbd2.Location = new System.Drawing.Point(251, 211);
            this.grpboxbd2.Name = "grpboxbd2";
            this.grpboxbd2.Size = new System.Drawing.Size(142, 458);
            this.grpboxbd2.TabIndex = 153;
            this.grpboxbd2.TabStop = false;
            this.grpboxbd2.Text = "[ Select items ]";
            // 
            // FrmCalibAuxsVdc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1329, 757);
            this.Controls.Add(this.grpboxbd2);
            this.Controls.Add(this.btApply1);
            this.Controls.Add(this.btClose);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.BtOpenFolder);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmCalibAuxsVdc";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Calibration DC Voltage of auxiliary channels.";
            this.Load += new System.EventHandler(this.FrmCalibAuxsVdc_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.grpboxbd2.ResumeLayout(false);
            this.grpboxbd2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.CheckBox chkCalib1;
        private System.Windows.Forms.TextBox txtTarget1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btRefresh1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ListView ListRealVal;
        private System.Windows.Forms.ListView listCalib;
        private System.Windows.Forms.Button BtOpenFolder;
        private System.Windows.Forms.Button btGetCalInf1;
        private System.Windows.Forms.Button btLBRem1;
        private System.Windows.Forms.Button btLBAdd1;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.TextBox txtCalibSquare;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.TextBox txtResSquare;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btLARem1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button btCheckCal;
        private System.Windows.Forms.ListView listResult;
        private System.Windows.Forms.Button btApply1;
        private System.Windows.Forms.Button btClose;
        private System.Windows.Forms.ListView listRngInf;
        private System.Windows.Forms.Button btDeselAllBdItems;
        private System.Windows.Forms.Button btSelAllBdItems;
        private System.Windows.Forms.CheckBox chkitemB1;
        private System.Windows.Forms.CheckBox chkitemB2;
        private System.Windows.Forms.CheckBox chkitemB12;
        private System.Windows.Forms.CheckBox chkitemB3;
        private System.Windows.Forms.CheckBox chkitemB11;
        private System.Windows.Forms.CheckBox chkitemB4;
        private System.Windows.Forms.CheckBox chkitemB10;
        private System.Windows.Forms.CheckBox chkitemB5;
        private System.Windows.Forms.CheckBox chkitemB9;
        private System.Windows.Forms.CheckBox chkitemB6;
        private System.Windows.Forms.CheckBox chkitemB8;
        private System.Windows.Forms.CheckBox chkitemB7;
        private System.Windows.Forms.GroupBox grpboxbd2;
    }
}