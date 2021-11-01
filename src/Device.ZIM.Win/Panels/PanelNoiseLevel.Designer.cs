namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelNoiseLevel
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
            this.labelUnitNoiseI = new System.Windows.Forms.Label();
            this.labelUnitNoiseV = new System.Windows.Forms.Label();
            this.buttonFindBestIRange = new System.Windows.Forms.CheckBox();
            this.labelNoiseCurrent = new System.Windows.Forms.Label();
            this.labelNoiseVoltage = new System.Windows.Forms.Label();
            this.buttonMeasureNoise = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // labelUnitNoiseI
            // 
            this.labelUnitNoiseI.AutoSize = true;
            this.labelUnitNoiseI.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelUnitNoiseI.Location = new System.Drawing.Point(250, 52);
            this.labelUnitNoiseI.Name = "labelUnitNoiseI";
            this.labelUnitNoiseI.Size = new System.Drawing.Size(65, 23);
            this.labelUnitNoiseI.TabIndex = 31;
            this.labelUnitNoiseI.Text = "uArms";
            this.labelUnitNoiseI.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelUnitNoiseV
            // 
            this.labelUnitNoiseV.AutoSize = true;
            this.labelUnitNoiseV.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelUnitNoiseV.Location = new System.Drawing.Point(250, 12);
            this.labelUnitNoiseV.Name = "labelUnitNoiseV";
            this.labelUnitNoiseV.Size = new System.Drawing.Size(65, 23);
            this.labelUnitNoiseV.TabIndex = 29;
            this.labelUnitNoiseV.Text = "uVrms";
            this.labelUnitNoiseV.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // buttonFindBestIRange
            // 
            this.buttonFindBestIRange.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonFindBestIRange.AutoSize = true;
            this.buttonFindBestIRange.FlatAppearance.BorderSize = 0;
            this.buttonFindBestIRange.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonFindBestIRange.Location = new System.Drawing.Point(5, 56);
            this.buttonFindBestIRange.Name = "buttonFindBestIRange";
            this.buttonFindBestIRange.Size = new System.Drawing.Size(94, 24);
            this.buttonFindBestIRange.TabIndex = 27;
            this.buttonFindBestIRange.Text = "Find IRange";
            this.buttonFindBestIRange.UseVisualStyleBackColor = true;
            this.buttonFindBestIRange.Click += new System.EventHandler(this.buttonFindBestIRange_Click);
            // 
            // labelNoiseCurrent
            // 
            this.labelNoiseCurrent.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelNoiseCurrent.Location = new System.Drawing.Point(117, 52);
            this.labelNoiseCurrent.Name = "labelNoiseCurrent";
            this.labelNoiseCurrent.Size = new System.Drawing.Size(127, 28);
            this.labelNoiseCurrent.TabIndex = 30;
            this.labelNoiseCurrent.Text = "10.000";
            this.labelNoiseCurrent.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // labelNoiseVoltage
            // 
            this.labelNoiseVoltage.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelNoiseVoltage.Location = new System.Drawing.Point(117, 12);
            this.labelNoiseVoltage.Name = "labelNoiseVoltage";
            this.labelNoiseVoltage.Size = new System.Drawing.Size(127, 28);
            this.labelNoiseVoltage.TabIndex = 28;
            this.labelNoiseVoltage.Text = "7.000";
            this.labelNoiseVoltage.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // buttonMeasureNoise
            // 
            this.buttonMeasureNoise.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonMeasureNoise.AutoSize = true;
            this.buttonMeasureNoise.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonMeasureNoise.FlatAppearance.BorderSize = 0;
            this.buttonMeasureNoise.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonMeasureNoise.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.play_circle_outline;
            this.buttonMeasureNoise.Location = new System.Drawing.Point(5, 8);
            this.buttonMeasureNoise.Name = "buttonMeasureNoise";
            this.buttonMeasureNoise.Size = new System.Drawing.Size(30, 30);
            this.buttonMeasureNoise.TabIndex = 26;
            this.buttonMeasureNoise.UseVisualStyleBackColor = true;
            this.buttonMeasureNoise.Click += new System.EventHandler(this.buttonMeasureNoiseLevel_Click);
            // 
            // PanelNoiseLevel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.labelUnitNoiseI);
            this.Controls.Add(this.labelUnitNoiseV);
            this.Controls.Add(this.buttonFindBestIRange);
            this.Controls.Add(this.labelNoiseCurrent);
            this.Controls.Add(this.labelNoiseVoltage);
            this.Controls.Add(this.buttonMeasureNoise);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelNoiseLevel";
            this.Size = new System.Drawing.Size(318, 91);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelUnitNoiseI;
        private System.Windows.Forms.Label labelUnitNoiseV;
        private System.Windows.Forms.CheckBox buttonFindBestIRange;
        private System.Windows.Forms.Label labelNoiseCurrent;
        private System.Windows.Forms.Label labelNoiseVoltage;
        private System.Windows.Forms.CheckBox buttonMeasureNoise;
    }
}
