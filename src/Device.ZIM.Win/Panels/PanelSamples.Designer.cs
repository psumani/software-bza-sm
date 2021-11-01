namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelSamples
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
            this.tabControl = new System.Windows.Forms.TabControl();
            this.pageSummary = new System.Windows.Forms.TabPage();
            this.panelSummary = new ZiveLab.Device.ZIM.Win.Panels.PanelAbout();
            this.pageLissajous = new System.Windows.Forms.TabPage();
            this.chartLissajous = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.pageTime = new System.Windows.Forms.TabPage();
            this.panelTime = new System.Windows.Forms.TableLayoutPanel();
            this.chartTimeV = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.chartTimeI = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.pagePower = new System.Windows.Forms.TabPage();
            this.panelPower = new System.Windows.Forms.TableLayoutPanel();
            this.chartPowerV = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.chartPowerI = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.pageError = new System.Windows.Forms.TabPage();
            this.PanelError = new System.Windows.Forms.TableLayoutPanel();
            this.chartErrorV = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.chartErrorI = new ZiveLab.Device.ZIM.Win.Panels.PanelXYGraph();
            this.tabControl.SuspendLayout();
            this.pageSummary.SuspendLayout();
            this.pageLissajous.SuspendLayout();
            this.pageTime.SuspendLayout();
            this.panelTime.SuspendLayout();
            this.pagePower.SuspendLayout();
            this.panelPower.SuspendLayout();
            this.pageError.SuspendLayout();
            this.PanelError.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Appearance = System.Windows.Forms.TabAppearance.FlatButtons;
            this.tabControl.Controls.Add(this.pageSummary);
            this.tabControl.Controls.Add(this.pageLissajous);
            this.tabControl.Controls.Add(this.pageTime);
            this.tabControl.Controls.Add(this.pagePower);
            this.tabControl.Controls.Add(this.pageError);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 0);
            this.tabControl.Margin = new System.Windows.Forms.Padding(0);
            this.tabControl.Name = "tabControl";
            this.tabControl.Padding = new System.Drawing.Point(0, 0);
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(318, 371);
            this.tabControl.TabIndex = 1;
            // 
            // pageSummary
            // 
            this.pageSummary.BackColor = System.Drawing.SystemColors.Control;
            this.pageSummary.Controls.Add(this.panelSummary);
            this.pageSummary.Location = new System.Drawing.Point(4, 26);
            this.pageSummary.Name = "pageSummary";
            this.pageSummary.Size = new System.Drawing.Size(310, 341);
            this.pageSummary.TabIndex = 4;
            this.pageSummary.Text = "Summary";
            // 
            // panelSummary
            // 
            this.panelSummary.BackColor = System.Drawing.SystemColors.Control;
            this.panelSummary.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelSummary.Location = new System.Drawing.Point(0, 0);
            this.panelSummary.Name = "panelSummary";
            this.panelSummary.Size = new System.Drawing.Size(310, 341);
            this.panelSummary.TabIndex = 0;
            // 
            // pageLissajous
            // 
            this.pageLissajous.BackColor = System.Drawing.SystemColors.Control;
            this.pageLissajous.Controls.Add(this.chartLissajous);
            this.pageLissajous.Location = new System.Drawing.Point(4, 25);
            this.pageLissajous.Name = "pageLissajous";
            this.pageLissajous.Size = new System.Drawing.Size(310, 342);
            this.pageLissajous.TabIndex = 0;
            this.pageLissajous.Text = "Lissajous";
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
            this.chartLissajous.Size = new System.Drawing.Size(310, 342);
            this.chartLissajous.TabIndex = 1;
            this.chartLissajous.Title = "";
            // 
            // pageTime
            // 
            this.pageTime.BackColor = System.Drawing.SystemColors.Control;
            this.pageTime.Controls.Add(this.panelTime);
            this.pageTime.Location = new System.Drawing.Point(4, 25);
            this.pageTime.Name = "pageTime";
            this.pageTime.Size = new System.Drawing.Size(310, 342);
            this.pageTime.TabIndex = 1;
            this.pageTime.Text = "Time";
            // 
            // panelTime
            // 
            this.panelTime.BackColor = System.Drawing.SystemColors.Control;
            this.panelTime.ColumnCount = 1;
            this.panelTime.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.panelTime.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.panelTime.Controls.Add(this.chartTimeV, 0, 0);
            this.panelTime.Controls.Add(this.chartTimeI, 0, 1);
            this.panelTime.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelTime.Location = new System.Drawing.Point(0, 0);
            this.panelTime.Name = "panelTime";
            this.panelTime.RowCount = 2;
            this.panelTime.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.panelTime.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.panelTime.Size = new System.Drawing.Size(310, 342);
            this.panelTime.TabIndex = 1;
            // 
            // chartTimeV
            // 
            this.chartTimeV.BackColor = System.Drawing.SystemColors.Control;
            this.chartTimeV.DisableAnimations = true;
            this.chartTimeV.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartTimeV.Font = new System.Drawing.Font("Consolas", 9F);
            this.chartTimeV.GraphType = ZiveLab.Device.ZIM.Win.Panels.GraphType.LinXLinY;
            this.chartTimeV.Hoverable = false;
            this.chartTimeV.Location = new System.Drawing.Point(3, 3);
            this.chartTimeV.Name = "chartTimeV";
            this.chartTimeV.ShowDataTooltip = false;
            this.chartTimeV.ShowToolbar = false;
            this.chartTimeV.Size = new System.Drawing.Size(304, 165);
            this.chartTimeV.TabIndex = 0;
            this.chartTimeV.Title = "";
            // 
            // chartTimeI
            // 
            this.chartTimeI.BackColor = System.Drawing.SystemColors.Control;
            this.chartTimeI.DisableAnimations = true;
            this.chartTimeI.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartTimeI.Font = new System.Drawing.Font("Consolas", 9F);
            this.chartTimeI.GraphType = ZiveLab.Device.ZIM.Win.Panels.GraphType.LinXLinY;
            this.chartTimeI.Hoverable = false;
            this.chartTimeI.Location = new System.Drawing.Point(3, 174);
            this.chartTimeI.Name = "chartTimeI";
            this.chartTimeI.ShowDataTooltip = false;
            this.chartTimeI.ShowToolbar = false;
            this.chartTimeI.Size = new System.Drawing.Size(304, 165);
            this.chartTimeI.TabIndex = 0;
            this.chartTimeI.Title = "";
            // 
            // pagePower
            // 
            this.pagePower.BackColor = System.Drawing.SystemColors.Control;
            this.pagePower.Controls.Add(this.panelPower);
            this.pagePower.Location = new System.Drawing.Point(4, 25);
            this.pagePower.Name = "pagePower";
            this.pagePower.Size = new System.Drawing.Size(310, 342);
            this.pagePower.TabIndex = 2;
            this.pagePower.Text = "Frequency";
            // 
            // panelPower
            // 
            this.panelPower.BackColor = System.Drawing.SystemColors.Control;
            this.panelPower.ColumnCount = 1;
            this.panelPower.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.panelPower.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.panelPower.Controls.Add(this.chartPowerV, 0, 0);
            this.panelPower.Controls.Add(this.chartPowerI, 0, 1);
            this.panelPower.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelPower.Location = new System.Drawing.Point(0, 0);
            this.panelPower.Name = "panelPower";
            this.panelPower.RowCount = 2;
            this.panelPower.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.panelPower.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.panelPower.Size = new System.Drawing.Size(310, 342);
            this.panelPower.TabIndex = 0;
            // 
            // chartPowerV
            // 
            this.chartPowerV.BackColor = System.Drawing.SystemColors.Control;
            this.chartPowerV.DisableAnimations = true;
            this.chartPowerV.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartPowerV.Font = new System.Drawing.Font("Consolas", 9F);
            this.chartPowerV.GraphType = ZiveLab.Device.ZIM.Win.Panels.GraphType.LinXLinY;
            this.chartPowerV.Hoverable = false;
            this.chartPowerV.Location = new System.Drawing.Point(3, 3);
            this.chartPowerV.Name = "chartPowerV";
            this.chartPowerV.ShowDataTooltip = false;
            this.chartPowerV.ShowToolbar = false;
            this.chartPowerV.Size = new System.Drawing.Size(304, 165);
            this.chartPowerV.TabIndex = 0;
            this.chartPowerV.Title = "";
            // 
            // chartPowerI
            // 
            this.chartPowerI.BackColor = System.Drawing.SystemColors.Control;
            this.chartPowerI.DisableAnimations = true;
            this.chartPowerI.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartPowerI.Font = new System.Drawing.Font("Consolas", 9F);
            this.chartPowerI.GraphType = ZiveLab.Device.ZIM.Win.Panels.GraphType.LinXLinY;
            this.chartPowerI.Hoverable = false;
            this.chartPowerI.Location = new System.Drawing.Point(3, 174);
            this.chartPowerI.Name = "chartPowerI";
            this.chartPowerI.ShowDataTooltip = false;
            this.chartPowerI.ShowToolbar = false;
            this.chartPowerI.Size = new System.Drawing.Size(304, 165);
            this.chartPowerI.TabIndex = 1;
            this.chartPowerI.Title = "";
            // 
            // pageError
            // 
            this.pageError.BackColor = System.Drawing.SystemColors.Control;
            this.pageError.Controls.Add(this.PanelError);
            this.pageError.Location = new System.Drawing.Point(4, 25);
            this.pageError.Name = "pageError";
            this.pageError.Size = new System.Drawing.Size(310, 342);
            this.pageError.TabIndex = 3;
            this.pageError.Text = "Error";
            // 
            // PanelError
            // 
            this.PanelError.BackColor = System.Drawing.SystemColors.Control;
            this.PanelError.ColumnCount = 1;
            this.PanelError.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.PanelError.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.PanelError.Controls.Add(this.chartErrorV, 0, 0);
            this.PanelError.Controls.Add(this.chartErrorI, 0, 1);
            this.PanelError.Dock = System.Windows.Forms.DockStyle.Fill;
            this.PanelError.Location = new System.Drawing.Point(0, 0);
            this.PanelError.Name = "PanelError";
            this.PanelError.RowCount = 2;
            this.PanelError.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.PanelError.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.PanelError.Size = new System.Drawing.Size(310, 342);
            this.PanelError.TabIndex = 0;
            // 
            // chartErrorV
            // 
            this.chartErrorV.BackColor = System.Drawing.SystemColors.Control;
            this.chartErrorV.DisableAnimations = true;
            this.chartErrorV.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartErrorV.Font = new System.Drawing.Font("Consolas", 9F);
            this.chartErrorV.GraphType = ZiveLab.Device.ZIM.Win.Panels.GraphType.LinXLinY;
            this.chartErrorV.Hoverable = false;
            this.chartErrorV.Location = new System.Drawing.Point(3, 3);
            this.chartErrorV.Name = "chartErrorV";
            this.chartErrorV.ShowDataTooltip = false;
            this.chartErrorV.ShowToolbar = false;
            this.chartErrorV.Size = new System.Drawing.Size(304, 165);
            this.chartErrorV.TabIndex = 0;
            this.chartErrorV.Title = "";
            // 
            // chartErrorI
            // 
            this.chartErrorI.BackColor = System.Drawing.SystemColors.Control;
            this.chartErrorI.DisableAnimations = true;
            this.chartErrorI.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chartErrorI.Font = new System.Drawing.Font("Consolas", 9F);
            this.chartErrorI.GraphType = ZiveLab.Device.ZIM.Win.Panels.GraphType.LinXLinY;
            this.chartErrorI.Hoverable = false;
            this.chartErrorI.Location = new System.Drawing.Point(3, 174);
            this.chartErrorI.Name = "chartErrorI";
            this.chartErrorI.ShowDataTooltip = false;
            this.chartErrorI.ShowToolbar = false;
            this.chartErrorI.Size = new System.Drawing.Size(304, 165);
            this.chartErrorI.TabIndex = 1;
            this.chartErrorI.Title = "";
            // 
            // PanelSamples
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.tabControl);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelSamples";
            this.Size = new System.Drawing.Size(318, 371);
            this.tabControl.ResumeLayout(false);
            this.pageSummary.ResumeLayout(false);
            this.pageLissajous.ResumeLayout(false);
            this.pageTime.ResumeLayout(false);
            this.panelTime.ResumeLayout(false);
            this.pagePower.ResumeLayout(false);
            this.panelPower.ResumeLayout(false);
            this.pageError.ResumeLayout(false);
            this.PanelError.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage pageLissajous;
        private PanelXYGraph chartLissajous;
        private System.Windows.Forms.TabPage pageTime;
        private Panels.PanelXYGraph chartTimeV;
        private Panels.PanelXYGraph chartTimeI;
        private System.Windows.Forms.TabPage pagePower;        
        private System.Windows.Forms.TabPage pageError;
        private System.Windows.Forms.TableLayoutPanel PanelError;
        private System.Windows.Forms.TableLayoutPanel panelTime;
        private PanelXYGraph chartErrorV;
        private PanelXYGraph chartErrorI;
        private System.Windows.Forms.TableLayoutPanel panelPower;
        private PanelXYGraph chartPowerV;
        private PanelXYGraph chartPowerI;
        private System.Windows.Forms.TabPage pageSummary;
        private PanelAbout panelSummary;
    }
}
