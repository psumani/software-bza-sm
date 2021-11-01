namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelSelectCurrentRange
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
            this.iRange0 = new System.Windows.Forms.RadioButton();
            this.iRange1 = new System.Windows.Forms.RadioButton();
            this.iRange2 = new System.Windows.Forms.RadioButton();
            this.iRange3 = new System.Windows.Forms.RadioButton();
            this.iRange4 = new System.Windows.Forms.RadioButton();
            this.iRange5 = new System.Windows.Forms.RadioButton();
            this.iRange6 = new System.Windows.Forms.RadioButton();
            this.iRange7 = new System.Windows.Forms.RadioButton();
            this.buttonStart = new System.Windows.Forms.Button();
            this.groupBox = new System.Windows.Forms.GroupBox();
            this.groupBox.SuspendLayout();
            this.SuspendLayout();
            // 
            // iRange0
            // 
            this.iRange0.AutoSize = true;
            this.iRange0.Location = new System.Drawing.Point(15, 23);
            this.iRange0.Name = "iRange0";
            this.iRange0.Size = new System.Drawing.Size(54, 27);
            this.iRange0.TabIndex = 201;
            this.iRange0.TabStop = true;
            this.iRange0.Text = "2 A";
            this.iRange0.UseVisualStyleBackColor = true;
            this.iRange0.CheckedChanged += new System.EventHandler(this.iRange_CheckedChanged);
            // 
            // iRange1
            // 
            this.iRange1.AutoSize = true;
            this.iRange1.Location = new System.Drawing.Point(15, 50);
            this.iRange1.Name = "iRange1";
            this.iRange1.Size = new System.Drawing.Size(81, 27);
            this.iRange1.TabIndex = 202;
            this.iRange1.TabStop = true;
            this.iRange1.Text = "400 mA";
            this.iRange1.UseVisualStyleBackColor = true;
            this.iRange1.CheckedChanged += new System.EventHandler(this.iRange_CheckedChanged);
            // 
            // iRange2
            // 
            this.iRange2.AutoSize = true;
            this.iRange2.Location = new System.Drawing.Point(15, 77);
            this.iRange2.Name = "iRange2";
            this.iRange2.Size = new System.Drawing.Size(81, 27);
            this.iRange2.TabIndex = 203;
            this.iRange2.TabStop = true;
            this.iRange2.Text = "200 mA";
            this.iRange2.UseVisualStyleBackColor = true;
            this.iRange2.CheckedChanged += new System.EventHandler(this.iRange_CheckedChanged);
            // 
            // iRange3
            // 
            this.iRange3.AutoSize = true;
            this.iRange3.Location = new System.Drawing.Point(15, 104);
            this.iRange3.Name = "iRange3";
            this.iRange3.Size = new System.Drawing.Size(72, 27);
            this.iRange3.TabIndex = 204;
            this.iRange3.TabStop = true;
            this.iRange3.Text = "40 mA";
            this.iRange3.UseVisualStyleBackColor = true;
            this.iRange3.CheckedChanged += new System.EventHandler(this.iRange_CheckedChanged);
            // 
            // iRange4
            // 
            this.iRange4.AutoSize = true;
            this.iRange4.Location = new System.Drawing.Point(15, 131);
            this.iRange4.Name = "iRange4";
            this.iRange4.Size = new System.Drawing.Size(72, 27);
            this.iRange4.TabIndex = 205;
            this.iRange4.TabStop = true;
            this.iRange4.Text = "20 mA";
            this.iRange4.UseVisualStyleBackColor = true;
            this.iRange4.CheckedChanged += new System.EventHandler(this.iRange_CheckedChanged);
            // 
            // iRange5
            // 
            this.iRange5.AutoSize = true;
            this.iRange5.Location = new System.Drawing.Point(15, 157);
            this.iRange5.Name = "iRange5";
            this.iRange5.Size = new System.Drawing.Size(63, 27);
            this.iRange5.TabIndex = 206;
            this.iRange5.TabStop = true;
            this.iRange5.Text = "4 mA";
            this.iRange5.UseVisualStyleBackColor = true;
            this.iRange5.CheckedChanged += new System.EventHandler(this.iRange_CheckedChanged);
            // 
            // iRange6
            // 
            this.iRange6.AutoSize = true;
            this.iRange6.Location = new System.Drawing.Point(15, 184);
            this.iRange6.Name = "iRange6";
            this.iRange6.Size = new System.Drawing.Size(63, 27);
            this.iRange6.TabIndex = 207;
            this.iRange6.TabStop = true;
            this.iRange6.Text = "2 mA";
            this.iRange6.UseVisualStyleBackColor = true;
            this.iRange6.CheckedChanged += new System.EventHandler(this.iRange_CheckedChanged);
            // 
            // iRange7
            // 
            this.iRange7.AutoSize = true;
            this.iRange7.Location = new System.Drawing.Point(15, 211);
            this.iRange7.Name = "iRange7";
            this.iRange7.Size = new System.Drawing.Size(81, 27);
            this.iRange7.TabIndex = 208;
            this.iRange7.TabStop = true;
            this.iRange7.Text = "400 uA";
            this.iRange7.UseVisualStyleBackColor = true;
            this.iRange7.CheckedChanged += new System.EventHandler(this.iRange_CheckedChanged);
            // 
            // buttonStart
            // 
            this.buttonStart.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.Play;
            this.buttonStart.Location = new System.Drawing.Point(15, 17);
            this.buttonStart.Name = "buttonStart";
            this.buttonStart.Size = new System.Drawing.Size(41, 45);
            this.buttonStart.TabIndex = 0;
            this.buttonStart.UseVisualStyleBackColor = true;
            this.buttonStart.Click += new System.EventHandler(this.buttonStart_Click);
            // 
            // groupBox
            // 
            this.groupBox.Controls.Add(this.iRange0);
            this.groupBox.Controls.Add(this.iRange1);
            this.groupBox.Controls.Add(this.iRange7);
            this.groupBox.Controls.Add(this.iRange2);
            this.groupBox.Controls.Add(this.iRange6);
            this.groupBox.Controls.Add(this.iRange3);
            this.groupBox.Controls.Add(this.iRange5);
            this.groupBox.Controls.Add(this.iRange4);
            this.groupBox.Font = new System.Drawing.Font("Consolas", 12F);
            this.groupBox.Location = new System.Drawing.Point(15, 76);
            this.groupBox.Name = "groupBox";
            this.groupBox.Size = new System.Drawing.Size(111, 257);
            this.groupBox.TabIndex = 1;
            this.groupBox.TabStop = false;
            // 
            // PanelSelectCurrentRange
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.groupBox);
            this.Controls.Add(this.buttonStart);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelSelectCurrentRange";
            this.Size = new System.Drawing.Size(144, 348);
            this.Load += new System.EventHandler(this.PanelSelectCurrentRange_Load);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.SelectIRangePanel_KeyDown);
            this.groupBox.ResumeLayout(false);
            this.groupBox.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.RadioButton iRange0;
        private System.Windows.Forms.RadioButton iRange1;
        private System.Windows.Forms.RadioButton iRange2;
        private System.Windows.Forms.RadioButton iRange3;
        private System.Windows.Forms.RadioButton iRange4;
        private System.Windows.Forms.RadioButton iRange5;
        private System.Windows.Forms.RadioButton iRange6;
        private System.Windows.Forms.RadioButton iRange7;
        private System.Windows.Forms.Button buttonStart;
        private System.Windows.Forms.GroupBox groupBox;
    }
}
