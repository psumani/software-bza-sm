namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelSetupParameters
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.textIteration = new System.Windows.Forms.TextBox();
            this.txtDensity = new System.Windows.Forms.TextBox();
            this.txtSkipCycle = new System.Windows.Forms.TextBox();
            this.label25 = new System.Windows.Forms.Label();
            this.txtMaxInitialDelay = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.cbIRange = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cbCycle = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtFinalFreq = new System.Windows.Forms.TextBox();
            this.txtInitialFreq = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.buttonStart = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.buttonUploadCond = new System.Windows.Forms.Button();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // textIteration
            // 
            this.textIteration.Font = new System.Drawing.Font("Consolas", 12F);
            this.textIteration.Location = new System.Drawing.Point(187, 148);
            this.textIteration.Name = "textIteration";
            this.textIteration.Size = new System.Drawing.Size(87, 26);
            this.textIteration.TabIndex = 211;
            this.textIteration.Text = "1";
            this.textIteration.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.textIteration.KeyDown += new System.Windows.Forms.KeyEventHandler(this.textIteration_KeyDown);
            this.textIteration.Leave += new System.EventHandler(this.textIteration_Leave);
            // 
            // txtDensity
            // 
            this.txtDensity.Font = new System.Drawing.Font("Consolas", 12F);
            this.txtDensity.Location = new System.Drawing.Point(187, 107);
            this.txtDensity.Name = "txtDensity";
            this.txtDensity.Size = new System.Drawing.Size(87, 26);
            this.txtDensity.TabIndex = 208;
            this.txtDensity.Text = "10";
            this.txtDensity.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtDensity.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtDensity_KeyDown);
            this.txtDensity.Leave += new System.EventHandler(this.txtDensity_Leave);
            // 
            // txtSkipCycle
            // 
            this.txtSkipCycle.Font = new System.Drawing.Font("Consolas", 12F);
            this.txtSkipCycle.Location = new System.Drawing.Point(187, 264);
            this.txtSkipCycle.Name = "txtSkipCycle";
            this.txtSkipCycle.Size = new System.Drawing.Size(87, 26);
            this.txtSkipCycle.TabIndex = 218;
            this.txtSkipCycle.Text = "1";
            this.txtSkipCycle.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtSkipCycle.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtSkipCycle_KeyDown);
            this.txtSkipCycle.Leave += new System.EventHandler(this.txtSkipCycle_Leave);
            // 
            // label25
            // 
            this.label25.AutoSize = true;
            this.label25.Font = new System.Drawing.Font("Consolas", 12F);
            this.label25.Location = new System.Drawing.Point(17, 268);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(99, 19);
            this.label25.TabIndex = 217;
            this.label25.Text = "Skip Cycle";
            // 
            // txtMaxInitialDelay
            // 
            this.txtMaxInitialDelay.Font = new System.Drawing.Font("Consolas", 12F);
            this.txtMaxInitialDelay.Location = new System.Drawing.Point(187, 225);
            this.txtMaxInitialDelay.Name = "txtMaxInitialDelay";
            this.txtMaxInitialDelay.Size = new System.Drawing.Size(87, 26);
            this.txtMaxInitialDelay.TabIndex = 215;
            this.txtMaxInitialDelay.Text = "12";
            this.txtMaxInitialDelay.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtMaxInitialDelay.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtMaxInitialDelay_KeyDown);
            this.txtMaxInitialDelay.Leave += new System.EventHandler(this.txtMaxInitialDelay_Leave);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Consolas", 12F);
            this.label13.Location = new System.Drawing.Point(280, 230);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(18, 19);
            this.label13.TabIndex = 216;
            this.label13.Text = "s";
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Font = new System.Drawing.Font("Consolas", 12F);
            this.label24.Location = new System.Drawing.Point(17, 230);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(162, 19);
            this.label24.TabIndex = 214;
            this.label24.Text = "Max Initial Delay";
            // 
            // cbIRange
            // 
            this.cbIRange.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbIRange.Font = new System.Drawing.Font("Consolas", 12F);
            this.cbIRange.FormattingEnabled = true;
            this.cbIRange.Location = new System.Drawing.Point(187, 185);
            this.cbIRange.Name = "cbIRange";
            this.cbIRange.Size = new System.Drawing.Size(87, 27);
            this.cbIRange.TabIndex = 213;
            this.cbIRange.SelectedIndexChanged += new System.EventHandler(this.cbIRange_SelectedIndexChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Consolas", 12F);
            this.label6.Location = new System.Drawing.Point(17, 190);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(126, 19);
            this.label6.TabIndex = 212;
            this.label6.Text = "Current Range";
            // 
            // cbCycle
            // 
            this.cbCycle.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbCycle.Font = new System.Drawing.Font("Consolas", 12F);
            this.cbCycle.FormattingEnabled = true;
            this.cbCycle.Location = new System.Drawing.Point(187, 302);
            this.cbCycle.Name = "cbCycle";
            this.cbCycle.Size = new System.Drawing.Size(87, 27);
            this.cbCycle.TabIndex = 220;
            this.cbCycle.SelectedIndexChanged += new System.EventHandler(this.cbCycle_SelectedIndexChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Consolas", 12F);
            this.label5.Location = new System.Drawing.Point(17, 307);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(63, 19);
            this.label5.TabIndex = 219;
            this.label5.Text = "Cycles";
            // 
            // txtFinalFreq
            // 
            this.txtFinalFreq.Font = new System.Drawing.Font("Consolas", 12F);
            this.txtFinalFreq.Location = new System.Drawing.Point(187, 68);
            this.txtFinalFreq.Name = "txtFinalFreq";
            this.txtFinalFreq.Size = new System.Drawing.Size(87, 26);
            this.txtFinalFreq.TabIndex = 205;
            this.txtFinalFreq.Text = "0.1";
            this.txtFinalFreq.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtFinalFreq.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtFinalFreq_KeyDown);
            this.txtFinalFreq.Leave += new System.EventHandler(this.txtFinalFreq_Leave);
            // 
            // txtInitialFreq
            // 
            this.txtInitialFreq.Font = new System.Drawing.Font("Consolas", 12F);
            this.txtInitialFreq.Location = new System.Drawing.Point(187, 29);
            this.txtInitialFreq.Name = "txtInitialFreq";
            this.txtInitialFreq.Size = new System.Drawing.Size(87, 26);
            this.txtInitialFreq.TabIndex = 202;
            this.txtInitialFreq.Text = "1000";
            this.txtInitialFreq.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtInitialFreq.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtInitialFreq_KeyDown);
            this.txtInitialFreq.Leave += new System.EventHandler(this.txtInitialFreq_Leave);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Consolas", 12F);
            this.label4.Location = new System.Drawing.Point(17, 150);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(90, 19);
            this.label4.TabIndex = 210;
            this.label4.Text = "Iteration";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Consolas", 12F);
            this.label9.Location = new System.Drawing.Point(280, 111);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(99, 19);
            this.label9.TabIndex = 209;
            this.label9.Text = "Pts/decade";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Consolas", 12F);
            this.label3.Location = new System.Drawing.Point(17, 111);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 19);
            this.label3.TabIndex = 207;
            this.label3.Text = "Density";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Consolas", 12F);
            this.label8.Location = new System.Drawing.Point(280, 72);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(27, 19);
            this.label8.TabIndex = 206;
            this.label8.Text = "Hz";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Consolas", 12F);
            this.label2.Location = new System.Drawing.Point(17, 72);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(144, 19);
            this.label2.TabIndex = 204;
            this.label2.Text = "Final Frequency";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Consolas", 12F);
            this.label7.Location = new System.Drawing.Point(280, 34);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(27, 19);
            this.label7.TabIndex = 203;
            this.label7.Text = "Hz";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Consolas", 12F);
            this.label1.Location = new System.Drawing.Point(17, 34);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(162, 19);
            this.label1.TabIndex = 201;
            this.label1.Text = "Initial Frequency";
            // 
            // buttonStart
            // 
            this.buttonStart.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.Play;
            this.buttonStart.Location = new System.Drawing.Point(72, 17);
            this.buttonStart.Name = "buttonStart";
            this.buttonStart.Size = new System.Drawing.Size(41, 45);
            this.buttonStart.TabIndex = 1;
            this.toolTip1.SetToolTip(this.buttonStart, "Start experiment");
            this.buttonStart.UseVisualStyleBackColor = true;
            this.buttonStart.Click += new System.EventHandler(this.buttonStart_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtInitialFreq);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.textIteration);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.txtDensity);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txtSkipCycle);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label25);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtMaxInitialDelay);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.label13);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label24);
            this.groupBox1.Controls.Add(this.txtFinalFreq);
            this.groupBox1.Controls.Add(this.cbIRange);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.cbCycle);
            this.groupBox1.Location = new System.Drawing.Point(15, 76);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(384, 359);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            // 
            // buttonUploadCond
            // 
            this.buttonUploadCond.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.play_circle_outline;
            this.buttonUploadCond.Location = new System.Drawing.Point(15, 17);
            this.buttonUploadCond.Name = "buttonUploadCond";
            this.buttonUploadCond.Size = new System.Drawing.Size(41, 45);
            this.buttonUploadCond.TabIndex = 3;
            this.toolTip1.SetToolTip(this.buttonUploadCond, "Upload condition.");
            this.buttonUploadCond.UseVisualStyleBackColor = true;
            this.buttonUploadCond.Click += new System.EventHandler(this.button1_Click);
            // 
            // PanelSetupParameters
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.buttonUploadCond);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.buttonStart);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelSetupParameters";
            this.Size = new System.Drawing.Size(415, 453);
            this.Load += new System.EventHandler(this.PanelSetupParameters_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox textIteration;
        private System.Windows.Forms.TextBox txtDensity;
        private System.Windows.Forms.TextBox txtSkipCycle;
        private System.Windows.Forms.Label label25;
        private System.Windows.Forms.TextBox txtMaxInitialDelay;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.ComboBox cbIRange;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cbCycle;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtFinalFreq;
        private System.Windows.Forms.TextBox txtInitialFreq;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button buttonStart;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonUploadCond;
        private System.Windows.Forms.ToolTip toolTip1;
    }
}
