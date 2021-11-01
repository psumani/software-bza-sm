namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelAux
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
            this.labelUnitAuxTemperature = new System.Windows.Forms.Label();
            this.labelUnitAuxVoltage = new System.Windows.Forms.Label();
            this.labelIRange = new System.Windows.Forms.Label();
            this.labelVRange = new System.Windows.Forms.Label();
            this.labelAuxTemperature = new System.Windows.Forms.Label();
            this.labelAuxVoltage = new System.Windows.Forms.Label();
            this.lblLastStatus = new System.Windows.Forms.Label();
            this.lblTestStatus = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // labelUnitAuxTemperature
            // 
            this.labelUnitAuxTemperature.AutoSize = true;
            this.labelUnitAuxTemperature.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelUnitAuxTemperature.Location = new System.Drawing.Point(277, 96);
            this.labelUnitAuxTemperature.Name = "labelUnitAuxTemperature";
            this.labelUnitAuxTemperature.Size = new System.Drawing.Size(32, 23);
            this.labelUnitAuxTemperature.TabIndex = 25;
            this.labelUnitAuxTemperature.Text = "°C";
            this.labelUnitAuxTemperature.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelUnitAuxVoltage
            // 
            this.labelUnitAuxVoltage.AutoSize = true;
            this.labelUnitAuxVoltage.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelUnitAuxVoltage.Location = new System.Drawing.Point(277, 66);
            this.labelUnitAuxVoltage.Name = "labelUnitAuxVoltage";
            this.labelUnitAuxVoltage.Size = new System.Drawing.Size(21, 23);
            this.labelUnitAuxVoltage.TabIndex = 23;
            this.labelUnitAuxVoltage.Text = "V";
            this.labelUnitAuxVoltage.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelIRange
            // 
            this.labelIRange.Font = new System.Drawing.Font("Consolas", 10F);
            this.labelIRange.Location = new System.Drawing.Point(12, 98);
            this.labelIRange.Name = "labelIRange";
            this.labelIRange.Size = new System.Drawing.Size(113, 19);
            this.labelIRange.TabIndex = 21;
            this.labelIRange.Text = "-- A Range";
            this.labelIRange.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelVRange
            // 
            this.labelVRange.Font = new System.Drawing.Font("Consolas", 10F);
            this.labelVRange.Location = new System.Drawing.Point(12, 70);
            this.labelVRange.Name = "labelVRange";
            this.labelVRange.Size = new System.Drawing.Size(113, 19);
            this.labelVRange.TabIndex = 20;
            this.labelVRange.Text = "-- V Range";
            this.labelVRange.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelAuxTemperature
            // 
            this.labelAuxTemperature.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelAuxTemperature.Location = new System.Drawing.Point(144, 96);
            this.labelAuxTemperature.Name = "labelAuxTemperature";
            this.labelAuxTemperature.Size = new System.Drawing.Size(127, 28);
            this.labelAuxTemperature.TabIndex = 24;
            this.labelAuxTemperature.Text = "--";
            this.labelAuxTemperature.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // labelAuxVoltage
            // 
            this.labelAuxVoltage.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelAuxVoltage.Location = new System.Drawing.Point(144, 66);
            this.labelAuxVoltage.Name = "labelAuxVoltage";
            this.labelAuxVoltage.Size = new System.Drawing.Size(127, 28);
            this.labelAuxVoltage.TabIndex = 22;
            this.labelAuxVoltage.Text = "--";
            this.labelAuxVoltage.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lblLastStatus
            // 
            this.lblLastStatus.Font = new System.Drawing.Font("Consolas", 10F);
            this.lblLastStatus.Location = new System.Drawing.Point(5, 4);
            this.lblLastStatus.Name = "lblLastStatus";
            this.lblLastStatus.Size = new System.Drawing.Size(312, 26);
            this.lblLastStatus.TabIndex = 26;
            this.lblLastStatus.Text = "Last Status:Idle";
            this.lblLastStatus.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lblTestStatus
            // 
            this.lblTestStatus.Font = new System.Drawing.Font("Consolas", 10F);
            this.lblTestStatus.Location = new System.Drawing.Point(5, 33);
            this.lblTestStatus.Name = "lblTestStatus";
            this.lblTestStatus.Size = new System.Drawing.Size(312, 26);
            this.lblTestStatus.TabIndex = 27;
            this.lblTestStatus.Text = "Test Status:Idle";
            this.lblTestStatus.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // PanelAux
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.lblTestStatus);
            this.Controls.Add(this.lblLastStatus);
            this.Controls.Add(this.labelUnitAuxTemperature);
            this.Controls.Add(this.labelUnitAuxVoltage);
            this.Controls.Add(this.labelIRange);
            this.Controls.Add(this.labelVRange);
            this.Controls.Add(this.labelAuxTemperature);
            this.Controls.Add(this.labelAuxVoltage);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelAux";
            this.Size = new System.Drawing.Size(320, 127);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelUnitAuxTemperature;
        private System.Windows.Forms.Label labelUnitAuxVoltage;
        private System.Windows.Forms.Label labelIRange;
        private System.Windows.Forms.Label labelVRange;
        private System.Windows.Forms.Label labelAuxTemperature;
        private System.Windows.Forms.Label labelAuxVoltage;
        private System.Windows.Forms.Label lblLastStatus;
        private System.Windows.Forms.Label lblTestStatus;
    }
}
