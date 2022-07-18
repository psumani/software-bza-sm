namespace App.Zim.Player
{
    partial class frmAppSetting
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmAppSetting));
            this.label2 = new System.Windows.Forms.Label();
            this.btnOK = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.numRefreshtime = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.numconndelay = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            this.numtimeout = new System.Windows.Forms.NumericUpDown();
            this.label4 = new System.Windows.Forms.Label();
            this.numfreq = new System.Windows.Forms.NumericUpDown();
            this.label5 = new System.Windows.Forms.Label();
            this.numBeginFreq = new System.Windows.Forms.NumericUpDown();
            this.label6 = new System.Windows.Forms.Label();
            this.cboCalRng = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.numRefreshtime)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numconndelay)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numtimeout)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numfreq)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numBeginFreq)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(18, 18);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(104, 12);
            this.label2.TabIndex = 1;
            this.label2.Text = "Refresh time(ms)";
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(321, 35);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(78, 27);
            this.btnOK.TabIndex = 2;
            this.btnOK.Text = "Ok";
            this.btnOK.UseVisualStyleBackColor = true;
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(322, 73);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(78, 27);
            this.btnCancel.TabIndex = 3;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // numRefreshtime
            // 
            this.numRefreshtime.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numRefreshtime.Increment = new decimal(new int[] {
            100,
            0,
            0,
            0});
            this.numRefreshtime.Location = new System.Drawing.Point(214, 12);
            this.numRefreshtime.Maximum = new decimal(new int[] {
            10000,
            0,
            0,
            0});
            this.numRefreshtime.Minimum = new decimal(new int[] {
            300,
            0,
            0,
            0});
            this.numRefreshtime.Name = "numRefreshtime";
            this.numRefreshtime.Size = new System.Drawing.Size(89, 23);
            this.numRefreshtime.TabIndex = 8;
            this.numRefreshtime.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.numRefreshtime.Value = new decimal(new int[] {
            300,
            0,
            0,
            0});
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(179, 12);
            this.label1.TabIndex = 9;
            this.label1.Text = "Automatic connection delay(s)";
            // 
            // numconndelay
            // 
            this.numconndelay.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numconndelay.Location = new System.Drawing.Point(214, 44);
            this.numconndelay.Maximum = new decimal(new int[] {
            30,
            0,
            0,
            0});
            this.numconndelay.Minimum = new decimal(new int[] {
            4,
            0,
            0,
            0});
            this.numconndelay.Name = "numconndelay";
            this.numconndelay.Size = new System.Drawing.Size(89, 23);
            this.numconndelay.TabIndex = 10;
            this.numconndelay.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.numconndelay.Value = new decimal(new int[] {
            30,
            0,
            0,
            0});
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(18, 80);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(167, 12);
            this.label3.TabIndex = 11;
            this.label3.Text = "Communication timeout(ms)";
            // 
            // numtimeout
            // 
            this.numtimeout.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numtimeout.Increment = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.numtimeout.Location = new System.Drawing.Point(214, 73);
            this.numtimeout.Maximum = new decimal(new int[] {
            20000,
            0,
            0,
            0});
            this.numtimeout.Minimum = new decimal(new int[] {
            2000,
            0,
            0,
            0});
            this.numtimeout.Name = "numtimeout";
            this.numtimeout.Size = new System.Drawing.Size(89, 23);
            this.numtimeout.TabIndex = 12;
            this.numtimeout.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.numtimeout.Value = new decimal(new int[] {
            8000,
            0,
            0,
            0});
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(18, 187);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(190, 12);
            this.label4.TabIndex = 13;
            this.label4.Text = "Final calibration frequency(mHz)";
            // 
            // numfreq
            // 
            this.numfreq.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numfreq.Increment = new decimal(new int[] {
            10,
            0,
            0,
            0});
            this.numfreq.Location = new System.Drawing.Point(214, 183);
            this.numfreq.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.numfreq.Minimum = new decimal(new int[] {
            10,
            0,
            0,
            0});
            this.numfreq.Name = "numfreq";
            this.numfreq.Size = new System.Drawing.Size(89, 23);
            this.numfreq.TabIndex = 14;
            this.numfreq.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.numfreq.Value = new decimal(new int[] {
            50,
            0,
            0,
            0});
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(18, 160);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(184, 12);
            this.label5.TabIndex = 15;
            this.label5.Text = "Begin calibration frequency(Hz)";
            // 
            // numBeginFreq
            // 
            this.numBeginFreq.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numBeginFreq.Increment = new decimal(new int[] {
            100,
            0,
            0,
            0});
            this.numBeginFreq.Location = new System.Drawing.Point(214, 154);
            this.numBeginFreq.Maximum = new decimal(new int[] {
            100000,
            0,
            0,
            0});
            this.numBeginFreq.Minimum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.numBeginFreq.Name = "numBeginFreq";
            this.numBeginFreq.Size = new System.Drawing.Size(89, 23);
            this.numBeginFreq.TabIndex = 16;
            this.numBeginFreq.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.numBeginFreq.Value = new decimal(new int[] {
            40000,
            0,
            0,
            0});
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(18, 131);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(144, 12);
            this.label6.TabIndex = 17;
            this.label6.Text = "Calibration current range";
            // 
            // cboCalRng
            // 
            this.cboCalRng.FormattingEnabled = true;
            this.cboCalRng.Location = new System.Drawing.Point(214, 127);
            this.cboCalRng.Name = "cboCalRng";
            this.cboCalRng.Size = new System.Drawing.Size(89, 20);
            this.cboCalRng.TabIndex = 18;
            // 
            // frmAppSetting
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(416, 213);
            this.Controls.Add(this.cboCalRng);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.numBeginFreq);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.numfreq);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.numtimeout);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.numconndelay);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.numRefreshtime);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.label2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmAppSetting";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Application setting";
            this.Load += new System.EventHandler(this.frmAppSetting_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numRefreshtime)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numconndelay)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numtimeout)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numfreq)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numBeginFreq)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnOK;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.NumericUpDown numRefreshtime;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.NumericUpDown numconndelay;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.NumericUpDown numtimeout;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.NumericUpDown numfreq;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.NumericUpDown numBeginFreq;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cboCalRng;
    }
}