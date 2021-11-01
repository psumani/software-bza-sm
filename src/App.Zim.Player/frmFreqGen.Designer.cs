namespace App.Zim.Player
{
    partial class frmFreqGen
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
            this.DDS_SIG_Freq = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.cboirange = new System.Windows.Forms.ComboBox();
            this.chkFreq = new System.Windows.Forms.CheckBox();
            this.checkBox2 = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // DDS_SIG_Freq
            // 
            this.DDS_SIG_Freq.Location = new System.Drawing.Point(94, 19);
            this.DDS_SIG_Freq.Name = "DDS_SIG_Freq";
            this.DDS_SIG_Freq.Size = new System.Drawing.Size(88, 21);
            this.DDS_SIG_Freq.TabIndex = 38;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(23, 23);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(65, 12);
            this.label7.TabIndex = 37;
            this.label7.Text = "Frequency";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(34, 66);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(48, 12);
            this.label21.TabIndex = 40;
            this.label21.Text = "I Range";
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
            this.cboirange.Location = new System.Drawing.Point(94, 63);
            this.cboirange.Name = "cboirange";
            this.cboirange.Size = new System.Drawing.Size(84, 20);
            this.cboirange.TabIndex = 39;
            this.cboirange.SelectedIndexChanged += new System.EventHandler(this.cboirange_SelectedIndexChanged);
            // 
            // chkFreq
            // 
            this.chkFreq.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkFreq.AutoSize = true;
            this.chkFreq.Location = new System.Drawing.Point(188, 18);
            this.chkFreq.Name = "chkFreq";
            this.chkFreq.Size = new System.Drawing.Size(113, 22);
            this.chkFreq.TabIndex = 41;
            this.chkFreq.Text = "Frequency output";
            this.chkFreq.UseVisualStyleBackColor = true;
            this.chkFreq.CheckedChanged += new System.EventHandler(this.ChkFreq_CheckedChanged);
            // 
            // checkBox2
            // 
            this.checkBox2.Appearance = System.Windows.Forms.Appearance.Button;
            this.checkBox2.AutoSize = true;
            this.checkBox2.Location = new System.Drawing.Point(188, 62);
            this.checkBox2.Name = "checkBox2";
            this.checkBox2.Size = new System.Drawing.Size(61, 22);
            this.checkBox2.TabIndex = 42;
            this.checkBox2.Text = "Load on";
            this.checkBox2.UseVisualStyleBackColor = true;
            this.checkBox2.CheckedChanged += new System.EventHandler(this.checkBox2_CheckedChanged);
            // 
            // frmFreqGen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(340, 114);
            this.Controls.Add(this.checkBox2);
            this.Controls.Add(this.chkFreq);
            this.Controls.Add(this.label21);
            this.Controls.Add(this.cboirange);
            this.Controls.Add(this.DDS_SIG_Freq);
            this.Controls.Add(this.label7);
            this.Name = "frmFreqGen";
            this.Text = "Frequency generation";
            this.Load += new System.EventHandler(this.frmFreqGen_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox DDS_SIG_Freq;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.ComboBox cboirange;
        private System.Windows.Forms.CheckBox chkFreq;
        private System.Windows.Forms.CheckBox checkBox2;
    }
}