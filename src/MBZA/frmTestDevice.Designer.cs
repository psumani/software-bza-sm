namespace ZiveLab.ZM
{
    partial class frmTestDevice
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmTestDevice));
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.btsetControl = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.rdosine = new System.Windows.Forms.RadioButton();
            this.rdofull = new System.Windows.Forms.RadioButton();
            this.rdohalf = new System.Windows.Forms.RadioButton();
            this.rdozero = new System.Windows.Forms.RadioButton();
            this.btnSetDDS_SIG = new System.Windows.Forms.Button();
            this.DDS_SIG_Phase = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.DDS_SIG_Reset = new System.Windows.Forms.CheckBox();
            this.DDS_SIG_Freq = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.chkctrlon = new System.Windows.Forms.CheckBox();
            this.cbovdcrange = new System.Windows.Forms.ComboBox();
            this.cboirange = new System.Windows.Forms.ComboBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btrefresh = new System.Windows.Forms.Button();
            this.lblerrtemp = new System.Windows.Forms.Label();
            this.label36 = new System.Windows.Forms.Label();
            this.vdcval = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.vacval = new System.Windows.Forms.TextBox();
            this.label46 = new System.Windows.Forms.Label();
            this.label44 = new System.Windows.Forms.Label();
            this.iacval = new System.Windows.Forms.TextBox();
            this.rtdtempval = new System.Windows.Forms.TextBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.button2 = new System.Windows.Forms.Button();
            this.groupBox5.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.btsetControl);
            this.groupBox5.Controls.Add(this.groupBox2);
            this.groupBox5.Controls.Add(this.label22);
            this.groupBox5.Controls.Add(this.label21);
            this.groupBox5.Controls.Add(this.chkctrlon);
            this.groupBox5.Controls.Add(this.cbovdcrange);
            this.groupBox5.Controls.Add(this.cboirange);
            this.groupBox5.Location = new System.Drawing.Point(12, 111);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(547, 196);
            this.groupBox5.TabIndex = 40;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "[ Control ]";
            // 
            // btsetControl
            // 
            this.btsetControl.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btsetControl.Location = new System.Drawing.Point(442, 26);
            this.btsetControl.Name = "btsetControl";
            this.btsetControl.Size = new System.Drawing.Size(86, 25);
            this.btsetControl.TabIndex = 59;
            this.btsetControl.Text = "Apply";
            this.btsetControl.UseVisualStyleBackColor = true;
            this.btsetControl.Click += new System.EventHandler(this.btsetControl_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.rdosine);
            this.groupBox2.Controls.Add(this.rdofull);
            this.groupBox2.Controls.Add(this.rdohalf);
            this.groupBox2.Controls.Add(this.rdozero);
            this.groupBox2.Controls.Add(this.btnSetDDS_SIG);
            this.groupBox2.Controls.Add(this.DDS_SIG_Phase);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.DDS_SIG_Reset);
            this.groupBox2.Controls.Add(this.DDS_SIG_Freq);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Location = new System.Drawing.Point(13, 64);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(523, 114);
            this.groupBox2.TabIndex = 43;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "[ Signal ]";
            // 
            // rdosine
            // 
            this.rdosine.AutoSize = true;
            this.rdosine.Location = new System.Drawing.Point(390, 29);
            this.rdosine.Name = "rdosine";
            this.rdosine.Size = new System.Drawing.Size(81, 18);
            this.rdosine.TabIndex = 43;
            this.rdosine.TabStop = true;
            this.rdosine.Text = "Out Sine";
            this.rdosine.UseVisualStyleBackColor = true;
            // 
            // rdofull
            // 
            this.rdofull.AutoSize = true;
            this.rdofull.Location = new System.Drawing.Point(299, 29);
            this.rdofull.Name = "rdofull";
            this.rdofull.Size = new System.Drawing.Size(81, 18);
            this.rdofull.TabIndex = 42;
            this.rdofull.TabStop = true;
            this.rdofull.Text = "Out 100%";
            this.rdofull.UseVisualStyleBackColor = true;
            // 
            // rdohalf
            // 
            this.rdohalf.AutoSize = true;
            this.rdohalf.Location = new System.Drawing.Point(208, 29);
            this.rdohalf.Name = "rdohalf";
            this.rdohalf.Size = new System.Drawing.Size(74, 18);
            this.rdohalf.TabIndex = 41;
            this.rdohalf.TabStop = true;
            this.rdohalf.Text = "Out 50%";
            this.rdohalf.UseVisualStyleBackColor = true;
            // 
            // rdozero
            // 
            this.rdozero.AutoSize = true;
            this.rdozero.Location = new System.Drawing.Point(107, 29);
            this.rdozero.Name = "rdozero";
            this.rdozero.Size = new System.Drawing.Size(81, 18);
            this.rdozero.TabIndex = 40;
            this.rdozero.TabStop = true;
            this.rdozero.Text = "Out Zero";
            this.rdozero.UseVisualStyleBackColor = true;
            // 
            // btnSetDDS_SIG
            // 
            this.btnSetDDS_SIG.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSetDDS_SIG.Location = new System.Drawing.Point(429, 67);
            this.btnSetDDS_SIG.Name = "btnSetDDS_SIG";
            this.btnSetDDS_SIG.Size = new System.Drawing.Size(86, 25);
            this.btnSetDDS_SIG.TabIndex = 35;
            this.btnSetDDS_SIG.Text = "Apply";
            this.btnSetDDS_SIG.UseVisualStyleBackColor = true;
            this.btnSetDDS_SIG.Click += new System.EventHandler(this.btnSetDDS_SIG_Click);
            // 
            // DDS_SIG_Phase
            // 
            this.DDS_SIG_Phase.Location = new System.Drawing.Point(279, 75);
            this.DDS_SIG_Phase.Name = "DDS_SIG_Phase";
            this.DDS_SIG_Phase.Size = new System.Drawing.Size(88, 22);
            this.DDS_SIG_Phase.TabIndex = 34;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(234, 78);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(42, 14);
            this.label8.TabIndex = 33;
            this.label8.Text = "Phase";
            // 
            // DDS_SIG_Reset
            // 
            this.DDS_SIG_Reset.AutoSize = true;
            this.DDS_SIG_Reset.Location = new System.Drawing.Point(27, 29);
            this.DDS_SIG_Reset.Name = "DDS_SIG_Reset";
            this.DDS_SIG_Reset.Size = new System.Drawing.Size(61, 18);
            this.DDS_SIG_Reset.TabIndex = 32;
            this.DDS_SIG_Reset.Text = "RESET";
            this.DDS_SIG_Reset.UseVisualStyleBackColor = true;
            // 
            // DDS_SIG_Freq
            // 
            this.DDS_SIG_Freq.Location = new System.Drawing.Point(113, 74);
            this.DDS_SIG_Freq.Name = "DDS_SIG_Freq";
            this.DDS_SIG_Freq.Size = new System.Drawing.Size(88, 22);
            this.DDS_SIG_Freq.TabIndex = 36;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(42, 78);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(70, 14);
            this.label7.TabIndex = 30;
            this.label7.Text = "Frequency";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(172, 33);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(70, 14);
            this.label22.TabIndex = 4;
            this.label22.Text = "Vdc Range";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(14, 34);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(56, 14);
            this.label21.TabIndex = 3;
            this.label21.Text = "I Range";
            // 
            // chkctrlon
            // 
            this.chkctrlon.AutoSize = true;
            this.chkctrlon.Location = new System.Drawing.Point(340, 33);
            this.chkctrlon.Name = "chkctrlon";
            this.chkctrlon.Size = new System.Drawing.Size(96, 18);
            this.chkctrlon.TabIndex = 2;
            this.chkctrlon.Text = "Control On";
            this.chkctrlon.UseVisualStyleBackColor = true;
            // 
            // cbovdcrange
            // 
            this.cbovdcrange.FormattingEnabled = true;
            this.cbovdcrange.Items.AddRange(new object[] {
            "range0",
            "range1"});
            this.cbovdcrange.Location = new System.Drawing.Point(248, 30);
            this.cbovdcrange.Name = "cbovdcrange";
            this.cbovdcrange.Size = new System.Drawing.Size(84, 22);
            this.cbovdcrange.TabIndex = 1;
            // 
            // cboirange
            // 
            this.cboirange.FormattingEnabled = true;
            this.cboirange.Items.AddRange(new object[] {
            "range0",
            "range1",
            "range2",
            "range3",
            "range4",
            "range5",
            "range6",
            "range7"});
            this.cboirange.Location = new System.Drawing.Point(76, 30);
            this.cboirange.Name = "cboirange";
            this.cboirange.Size = new System.Drawing.Size(84, 22);
            this.cboirange.TabIndex = 0;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btrefresh);
            this.groupBox1.Controls.Add(this.lblerrtemp);
            this.groupBox1.Controls.Add(this.label36);
            this.groupBox1.Controls.Add(this.vdcval);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.vacval);
            this.groupBox1.Controls.Add(this.label46);
            this.groupBox1.Controls.Add(this.label44);
            this.groupBox1.Controls.Add(this.iacval);
            this.groupBox1.Controls.Add(this.rtdtempval);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(547, 90);
            this.groupBox1.TabIndex = 45;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "[ Status ]";
            // 
            // btrefresh
            // 
            this.btrefresh.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btrefresh.Location = new System.Drawing.Point(442, 15);
            this.btrefresh.Name = "btrefresh";
            this.btrefresh.Size = new System.Drawing.Size(86, 25);
            this.btrefresh.TabIndex = 60;
            this.btrefresh.Text = "Refresh";
            this.btrefresh.UseVisualStyleBackColor = true;
            this.btrefresh.Click += new System.EventHandler(this.btrefresh_Click);
            // 
            // lblerrtemp
            // 
            this.lblerrtemp.AutoSize = true;
            this.lblerrtemp.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lblerrtemp.Location = new System.Drawing.Point(414, 58);
            this.lblerrtemp.Name = "lblerrtemp";
            this.lblerrtemp.Size = new System.Drawing.Size(114, 16);
            this.lblerrtemp.TabIndex = 82;
            this.lblerrtemp.Text = "Fault detecting";
            // 
            // label36
            // 
            this.label36.AutoSize = true;
            this.label36.Location = new System.Drawing.Point(28, 60);
            this.label36.Name = "label36";
            this.label36.Size = new System.Drawing.Size(70, 14);
            this.label36.TabIndex = 78;
            this.label36.Text = "VDC Value";
            // 
            // vdcval
            // 
            this.vdcval.Location = new System.Drawing.Point(103, 55);
            this.vdcval.Name = "vdcval";
            this.vdcval.ReadOnly = true;
            this.vdcval.Size = new System.Drawing.Size(88, 22);
            this.vdcval.TabIndex = 77;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(236, 57);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 14);
            this.label1.TabIndex = 76;
            this.label1.Text = "Temperature";
            // 
            // vacval
            // 
            this.vacval.Location = new System.Drawing.Point(321, 23);
            this.vacval.Name = "vacval";
            this.vacval.ReadOnly = true;
            this.vacval.Size = new System.Drawing.Size(88, 22);
            this.vacval.TabIndex = 71;
            // 
            // label46
            // 
            this.label46.AutoSize = true;
            this.label46.Location = new System.Drawing.Point(245, 26);
            this.label46.Name = "label46";
            this.label46.Size = new System.Drawing.Size(70, 14);
            this.label46.TabIndex = 75;
            this.label46.Text = "VAC Value";
            // 
            // label44
            // 
            this.label44.AutoSize = true;
            this.label44.Location = new System.Drawing.Point(27, 28);
            this.label44.Name = "label44";
            this.label44.Size = new System.Drawing.Size(70, 14);
            this.label44.TabIndex = 74;
            this.label44.Text = "IAC Value";
            // 
            // iacval
            // 
            this.iacval.Location = new System.Drawing.Point(103, 25);
            this.iacval.Name = "iacval";
            this.iacval.ReadOnly = true;
            this.iacval.Size = new System.Drawing.Size(88, 22);
            this.iacval.TabIndex = 72;
            // 
            // rtdtempval
            // 
            this.rtdtempval.Location = new System.Drawing.Point(321, 54);
            this.rtdtempval.Name = "rtdtempval";
            this.rtdtempval.ReadOnly = true;
            this.rtdtempval.Size = new System.Drawing.Size(88, 22);
            this.rtdtempval.TabIndex = 70;
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(473, 313);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(86, 25);
            this.button2.TabIndex = 62;
            this.button2.Text = "Close";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // frmTestDevice
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(566, 343);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox5);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmTestDevice";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Device test.";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmTestDevice_FormClosed);
            this.Load += new System.EventHandler(this.frmTestDevice_Load);
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.Button btsetControl;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.CheckBox chkctrlon;
        private System.Windows.Forms.ComboBox cbovdcrange;
        private System.Windows.Forms.ComboBox cboirange;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnSetDDS_SIG;
        private System.Windows.Forms.TextBox DDS_SIG_Phase;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.CheckBox DDS_SIG_Reset;
        private System.Windows.Forms.TextBox DDS_SIG_Freq;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lblerrtemp;
        private System.Windows.Forms.Label label36;
        private System.Windows.Forms.TextBox vdcval;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox vacval;
        private System.Windows.Forms.Label label46;
        private System.Windows.Forms.Label label44;
        private System.Windows.Forms.TextBox iacval;
        private System.Windows.Forms.TextBox rtdtempval;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Button btrefresh;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.RadioButton rdosine;
        private System.Windows.Forms.RadioButton rdofull;
        private System.Windows.Forms.RadioButton rdohalf;
        private System.Windows.Forms.RadioButton rdozero;
    }
}