namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelBode
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
            this.chart = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.SuspendLayout();
            // 
            // chart
            // 
            this.chart.BackColor = System.Drawing.Color.White;
            this.chart.DisableAnimations = true;
            this.chart.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chart.Font = new System.Drawing.Font("Consolas", 9F);
            this.chart.GraphType = ZiveLab.Device.ZIM.Win.Panels.GraphType.LinXLinY;
            this.chart.Hoverable = false;
            this.chart.Location = new System.Drawing.Point(0, 0);
            this.chart.Name = "chart";
            this.chart.ShowDataTooltip = true;
            this.chart.ShowToolbar = true;
            this.chart.Size = new System.Drawing.Size(475, 497);
            this.chart.TabIndex = 0;
            this.chart.Title = "Untitled";
            // 
            // PanelBode
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.chart);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelBode";
            this.Size = new System.Drawing.Size(475, 497);
            this.ResumeLayout(false);

        }

        #endregion

        private ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph chart;
    }
}
