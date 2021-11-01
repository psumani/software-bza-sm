namespace ZiveLab.Device.ZIM.Win.SubPanels
{
    partial class PanelStepSamples
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
            this.chartLissajous = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.SuspendLayout();
            // 
            // chartLissajous
            // 
            this.chartLissajous.BackColor = System.Drawing.SystemColors.Control;
            this.chartLissajous.DisableAnimations = true;
            this.chartLissajous.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartLissajous.Font = new System.Drawing.Font("Consolas", 9F);
            this.chartLissajous.GraphType = ZiveLab.Device.ZIM.Win.Panels.GraphType.LinXLinY;
            this.chartLissajous.Hoverable = false;
            this.chartLissajous.Location = new System.Drawing.Point(0, 0);
            this.chartLissajous.Name = "chartLissajous";
            this.chartLissajous.ShowDataTooltip = false;
            this.chartLissajous.ShowToolbar = false;
            this.chartLissajous.Size = new System.Drawing.Size(320, 373);
            this.chartLissajous.TabIndex = 2;
            this.chartLissajous.Title = "";
            // 
            // PanelStepSamples
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.chartLissajous);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelStepSamples";
            this.Size = new System.Drawing.Size(320, 373);
            this.ResumeLayout(false);

        }

        #endregion

        private Panels.PanelXYGraph chartLissajous;
    }
}
