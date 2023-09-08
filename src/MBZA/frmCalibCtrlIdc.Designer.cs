namespace ZiveLab.ZM
{
    partial class frmCalibCtrlIdc
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmCalibCtrlIdc));
            this.cboirange = new System.Windows.Forms.ComboBox();
            this.chkctrlon = new System.Windows.Forms.CheckBox();
            this.label21 = new System.Windows.Forms.Label();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cboIncPhase = new System.Windows.Forms.ComboBox();
            this.btApply = new System.Windows.Forms.Button();
            this.btCancel = new System.Windows.Forms.Button();
            this.btSave = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.textApp = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtresult = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            this.SuspendLayout();
            // 
            // cboirange
            // 
            this.cboirange.FormattingEnabled = true;
            this.cboirange.Location = new System.Drawing.Point(96, 8);
            this.cboirange.Name = "cboirange";
            this.cboirange.Size = new System.Drawing.Size(67, 20);
            this.cboirange.TabIndex = 60;
            this.cboirange.SelectedIndexChanged += new System.EventHandler(this.cboirange_SelectedIndexChanged);
            // 
            // chkctrlon
            // 
            this.chkctrlon.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkctrlon.AutoSize = true;
            this.chkctrlon.Location = new System.Drawing.Point(199, 12);
            this.chkctrlon.Name = "chkctrlon";
            this.chkctrlon.Size = new System.Drawing.Size(75, 22);
            this.chkctrlon.TabIndex = 61;
            this.chkctrlon.Text = "Control On";
            this.chkctrlon.UseVisualStyleBackColor = true;
            this.chkctrlon.CheckedChanged += new System.EventHandler(this.chkctrlon_CheckedChanged);
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(7, 12);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(48, 12);
            this.label21.TabIndex = 62;
            this.label21.Text = "I Range";
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.DecimalPlaces = 4;
            this.numericUpDown1.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numericUpDown1.Increment = new decimal(new int[] {
            1,
            0,
            0,
            196608});
            this.numericUpDown1.Location = new System.Drawing.Point(95, 37);
            this.numericUpDown1.Maximum = new decimal(new int[] {
            63,
            0,
            0,
            65536});
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(67, 23);
            this.numericUpDown1.TabIndex = 64;
            this.numericUpDown1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.numericUpDown1.ThousandsSeparator = true;
            this.numericUpDown1.Value = new decimal(new int[] {
            3565,
            0,
            0,
            196608});
            this.numericUpDown1.ValueChanged += new System.EventHandler(this.numericUpDown1_ValueChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(86, 12);
            this.label1.TabIndex = 65;
            this.label1.Text = "Idc Offset(rad)";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(168, 43);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 12);
            this.label2.TabIndex = 66;
            this.label2.Text = "Increment";
            // 
            // cboIncPhase
            // 
            this.cboIncPhase.FormattingEnabled = true;
            this.cboIncPhase.Items.AddRange(new object[] {
            "0.0001",
            "0.001",
            "0.01",
            "0.1"});
            this.cboIncPhase.Location = new System.Drawing.Point(235, 40);
            this.cboIncPhase.Name = "cboIncPhase";
            this.cboIncPhase.Size = new System.Drawing.Size(56, 20);
            this.cboIncPhase.TabIndex = 67;
            this.cboIncPhase.SelectedIndexChanged += new System.EventHandler(this.cboIncPhase_SelectedIndexChanged);
            // 
            // btApply
            // 
            this.btApply.Location = new System.Drawing.Point(324, 10);
            this.btApply.Name = "btApply";
            this.btApply.Size = new System.Drawing.Size(63, 26);
            this.btApply.TabIndex = 85;
            this.btApply.Text = "Apply";
            this.btApply.UseVisualStyleBackColor = true;
            this.btApply.Click += new System.EventHandler(this.btApply_Click);
            // 
            // btCancel
            // 
            this.btCancel.Location = new System.Drawing.Point(324, 95);
            this.btCancel.Name = "btCancel";
            this.btCancel.Size = new System.Drawing.Size(63, 26);
            this.btCancel.TabIndex = 87;
            this.btCancel.Text = "Close";
            this.btCancel.UseVisualStyleBackColor = true;
            this.btCancel.Click += new System.EventHandler(this.btCancel_Click);
            // 
            // btSave
            // 
            this.btSave.Location = new System.Drawing.Point(324, 46);
            this.btSave.Name = "btSave";
            this.btSave.Size = new System.Drawing.Size(63, 26);
            this.btSave.TabIndex = 88;
            this.btSave.Text = "Save";
            this.btSave.UseVisualStyleBackColor = true;
            this.btSave.Click += new System.EventHandler(this.btSave_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(93, 76);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(109, 12);
            this.label3.TabIndex = 89;
            this.label3.Text = "Applied offset(rad)";
            // 
            // textApp
            // 
            this.textApp.Location = new System.Drawing.Point(212, 71);
            this.textApp.Name = "textApp";
            this.textApp.ReadOnly = true;
            this.textApp.Size = new System.Drawing.Size(78, 21);
            this.textApp.TabIndex = 90;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(94, 104);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(100, 12);
            this.label4.TabIndex = 91;
            this.label4.Text = "Applied result(A)";
            // 
            // txtresult
            // 
            this.txtresult.Location = new System.Drawing.Point(212, 100);
            this.txtresult.Name = "txtresult";
            this.txtresult.Size = new System.Drawing.Size(78, 21);
            this.txtresult.TabIndex = 92;
            // 
            // frmCalibCtrlIdc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(400, 130);
            this.Controls.Add(this.txtresult);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textApp);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btSave);
            this.Controls.Add(this.btCancel);
            this.Controls.Add(this.btApply);
            this.Controls.Add(this.cboIncPhase);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.numericUpDown1);
            this.Controls.Add(this.label21);
            this.Controls.Add(this.chkctrlon);
            this.Controls.Add(this.cboirange);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmCalibCtrlIdc";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Calibration IDC";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmCalibCtrlIdc_FormClosed);
            this.Load += new System.EventHandler(this.frmCalibCtrlIdc_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cboirange;
        private System.Windows.Forms.CheckBox chkctrlon;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cboIncPhase;
        private System.Windows.Forms.Button btApply;
        private System.Windows.Forms.Button btCancel;
        private System.Windows.Forms.Button btSave;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textApp;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtresult;
    }
}