namespace ZiveLab.Device.ZIM.Win.Panels

{
    partial class PanelXYGraph
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
            this.toolStrip = new System.Windows.Forms.ToolStrip();
            this.cmdPoint = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.cmdPanXY = new System.Windows.Forms.ToolStripButton();
            this.cmdPanX = new System.Windows.Forms.ToolStripButton();
            this.cmdPanY = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.cmdZoomIn = new System.Windows.Forms.ToolStripButton();
            this.cmdZoomPoint = new System.Windows.Forms.ToolStripButton();
            this.cmdZoomOut = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.cmdCursor = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.cmdAutoScaleXY = new System.Windows.Forms.ToolStripButton();
            this.cmdAutoScaleX = new System.Windows.Forms.ToolStripButton();
            this.cmdAutoScaleY = new System.Windows.Forms.ToolStripButton();
            this.cmdMatchScale = new System.Windows.Forms.ToolStripButton();
            this.panelTitle = new System.Windows.Forms.Panel();
            this.labelTitle = new System.Windows.Forms.Label();
            this.panelToolStrip = new System.Windows.Forms.Panel();
            this.panelGraph = new System.Windows.Forms.Panel();
            this.chart = new LiveCharts.WinForms.CartesianChart();
            this.toolStrip.SuspendLayout();
            this.panelTitle.SuspendLayout();
            this.panelToolStrip.SuspendLayout();
            this.panelGraph.SuspendLayout();
            this.SuspendLayout();
            // 
            // toolStrip
            // 
            this.toolStrip.CanOverflow = false;
            this.toolStrip.Dock = System.Windows.Forms.DockStyle.Fill;
            this.toolStrip.Font = new System.Drawing.Font("Tahoma", 10F, System.Drawing.FontStyle.Bold);
            this.toolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cmdPoint,
            this.toolStripSeparator1,
            this.cmdPanXY,
            this.cmdPanX,
            this.cmdPanY,
            this.toolStripSeparator2,
            this.cmdZoomIn,
            this.cmdZoomPoint,
            this.cmdZoomOut,
            this.toolStripSeparator3,
            this.cmdCursor,
            this.toolStripSeparator4,
            this.cmdAutoScaleXY,
            this.cmdAutoScaleX,
            this.cmdAutoScaleY,
            this.cmdMatchScale});
            this.toolStrip.LayoutStyle = System.Windows.Forms.ToolStripLayoutStyle.VerticalStackWithOverflow;
            this.toolStrip.Location = new System.Drawing.Point(5, 6);
            this.toolStrip.Name = "toolStrip";
            this.toolStrip.Padding = new System.Windows.Forms.Padding(0, 8, 0, 0);
            this.toolStrip.RenderMode = System.Windows.Forms.ToolStripRenderMode.System;
            this.toolStrip.Size = new System.Drawing.Size(31, 428);
            this.toolStrip.TabIndex = 0;
            this.toolStrip.Text = "toolStrip1";
            // 
            // cmdPoint
            // 
            this.cmdPoint.Checked = true;
            this.cmdPoint.CheckOnClick = true;
            this.cmdPoint.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cmdPoint.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdPoint.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.Pointer;
            this.cmdPoint.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdPoint.Name = "cmdPoint";
            this.cmdPoint.Size = new System.Drawing.Size(30, 20);
            this.cmdPoint.Text = "There is no zooming and movement function of the graph.";
            this.cmdPoint.Click += new System.EventHandler(this.cmdPoint_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(30, 6);
            // 
            // cmdPanXY
            // 
            this.cmdPanXY.CheckOnClick = true;
            this.cmdPanXY.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdPanXY.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.PanningXY;
            this.cmdPanXY.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdPanXY.Name = "cmdPanXY";
            this.cmdPanXY.Size = new System.Drawing.Size(30, 20);
            this.cmdPanXY.Text = "You can move the graph up, down, left and right.";
            this.cmdPanXY.ToolTipText = "Move XY";
            this.cmdPanXY.Click += new System.EventHandler(this.cmdPanXY_Click);
            // 
            // cmdPanX
            // 
            this.cmdPanX.CheckOnClick = true;
            this.cmdPanX.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdPanX.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.PanningX;
            this.cmdPanX.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdPanX.Name = "cmdPanX";
            this.cmdPanX.Size = new System.Drawing.Size(30, 20);
            this.cmdPanX.Text = "The X axis of the graph can be moved left and right.";
            this.cmdPanX.ToolTipText = "Move X";
            this.cmdPanX.Click += new System.EventHandler(this.cmdPanX_Click);
            // 
            // cmdPanY
            // 
            this.cmdPanY.CheckOnClick = true;
            this.cmdPanY.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdPanY.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.PanningY;
            this.cmdPanY.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdPanY.Name = "cmdPanY";
            this.cmdPanY.Size = new System.Drawing.Size(30, 20);
            this.cmdPanY.Text = "The Y axis of the graph can be moved up and down.";
            this.cmdPanY.Click += new System.EventHandler(this.cmdPanY_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(30, 6);
            // 
            // cmdZoomIn
            // 
            this.cmdZoomIn.CheckOnClick = true;
            this.cmdZoomIn.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdZoomIn.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.ZoomIn;
            this.cmdZoomIn.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdZoomIn.Name = "cmdZoomIn";
            this.cmdZoomIn.Size = new System.Drawing.Size(30, 20);
            this.cmdZoomIn.Text = "toolStripButton5";
            this.cmdZoomIn.Visible = false;
            this.cmdZoomIn.Click += new System.EventHandler(this.cmdZoomIn_Click);
            // 
            // cmdZoomPoint
            // 
            this.cmdZoomPoint.CheckOnClick = true;
            this.cmdZoomPoint.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdZoomPoint.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.ZoomPoint;
            this.cmdZoomPoint.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdZoomPoint.Name = "cmdZoomPoint";
            this.cmdZoomPoint.Size = new System.Drawing.Size(30, 20);
            this.cmdZoomPoint.Text = "You can zoom in or zoom out of the graph with the mouse wheel.";
            this.cmdZoomPoint.Click += new System.EventHandler(this.cmdZoomPoint_Click);
            // 
            // cmdZoomOut
            // 
            this.cmdZoomOut.CheckOnClick = true;
            this.cmdZoomOut.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdZoomOut.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.ZoomOut;
            this.cmdZoomOut.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdZoomOut.Name = "cmdZoomOut";
            this.cmdZoomOut.Size = new System.Drawing.Size(30, 20);
            this.cmdZoomOut.Text = "toolStripButton7";
            this.cmdZoomOut.Visible = false;
            this.cmdZoomOut.Click += new System.EventHandler(this.cmdZoomOut_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(30, 6);
            this.toolStripSeparator3.Visible = false;
            // 
            // cmdCursor
            // 
            this.cmdCursor.CheckOnClick = true;
            this.cmdCursor.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdCursor.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.Cursor;
            this.cmdCursor.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdCursor.Name = "cmdCursor";
            this.cmdCursor.Size = new System.Drawing.Size(30, 20);
            this.cmdCursor.Text = "toolStripButton8";
            this.cmdCursor.Visible = false;
            this.cmdCursor.Click += new System.EventHandler(this.cmdCursor_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(30, 6);
            this.toolStripSeparator4.Visible = false;
            // 
            // cmdAutoScaleXY
            // 
            this.cmdAutoScaleXY.CheckOnClick = true;
            this.cmdAutoScaleXY.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdAutoScaleXY.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.AutoscaleXY;
            this.cmdAutoScaleXY.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdAutoScaleXY.Name = "cmdAutoScaleXY";
            this.cmdAutoScaleXY.Size = new System.Drawing.Size(30, 20);
            this.cmdAutoScaleXY.Text = "toolStripButton9";
            this.cmdAutoScaleXY.Visible = false;
            this.cmdAutoScaleXY.Click += new System.EventHandler(this.cmdAutoScaleXY_Click);
            // 
            // cmdAutoScaleX
            // 
            this.cmdAutoScaleX.CheckOnClick = true;
            this.cmdAutoScaleX.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdAutoScaleX.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.AutoscaleX;
            this.cmdAutoScaleX.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdAutoScaleX.Name = "cmdAutoScaleX";
            this.cmdAutoScaleX.Size = new System.Drawing.Size(30, 20);
            this.cmdAutoScaleX.Text = "toolStripButton10";
            this.cmdAutoScaleX.Visible = false;
            this.cmdAutoScaleX.Click += new System.EventHandler(this.cmdAutoScaleX_Click);
            // 
            // cmdAutoScaleY
            // 
            this.cmdAutoScaleY.CheckOnClick = true;
            this.cmdAutoScaleY.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdAutoScaleY.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.AutoscaleY;
            this.cmdAutoScaleY.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdAutoScaleY.Name = "cmdAutoScaleY";
            this.cmdAutoScaleY.Size = new System.Drawing.Size(30, 20);
            this.cmdAutoScaleY.Text = "toolStripButton11";
            this.cmdAutoScaleY.Visible = false;
            this.cmdAutoScaleY.Click += new System.EventHandler(this.cmdAutoScaleY_Click);
            // 
            // cmdMatchScale
            // 
            this.cmdMatchScale.CheckOnClick = true;
            this.cmdMatchScale.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.cmdMatchScale.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.MatchScale;
            this.cmdMatchScale.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.cmdMatchScale.Name = "cmdMatchScale";
            this.cmdMatchScale.Size = new System.Drawing.Size(30, 20);
            this.cmdMatchScale.Text = "toolStripButton12";
            this.cmdMatchScale.Visible = false;
            this.cmdMatchScale.Click += new System.EventHandler(this.cmdMatchScale_Click);
            // 
            // panelTitle
            // 
            this.panelTitle.BackColor = System.Drawing.SystemColors.Control;
            this.panelTitle.Controls.Add(this.labelTitle);
            this.panelTitle.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTitle.Location = new System.Drawing.Point(0, 0);
            this.panelTitle.Name = "panelTitle";
            this.panelTitle.Size = new System.Drawing.Size(612, 29);
            this.panelTitle.TabIndex = 2;
            // 
            // labelTitle
            // 
            this.labelTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.labelTitle.Font = new System.Drawing.Font("Consolas", 12F);
            this.labelTitle.Location = new System.Drawing.Point(0, 0);
            this.labelTitle.Name = "labelTitle";
            this.labelTitle.Size = new System.Drawing.Size(612, 29);
            this.labelTitle.TabIndex = 0;
            this.labelTitle.Text = "Untitled";
            this.labelTitle.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panelToolStrip
            // 
            this.panelToolStrip.AutoSize = true;
            this.panelToolStrip.BackColor = System.Drawing.SystemColors.Control;
            this.panelToolStrip.Controls.Add(this.toolStrip);
            this.panelToolStrip.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelToolStrip.Location = new System.Drawing.Point(0, 29);
            this.panelToolStrip.Name = "panelToolStrip";
            this.panelToolStrip.Padding = new System.Windows.Forms.Padding(5, 6, 5, 6);
            this.panelToolStrip.Size = new System.Drawing.Size(41, 440);
            this.panelToolStrip.TabIndex = 3;
            this.panelToolStrip.Visible = false;
            // 
            // panelGraph
            // 
            this.panelGraph.Controls.Add(this.chart);
            this.panelGraph.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelGraph.Location = new System.Drawing.Point(41, 29);
            this.panelGraph.Name = "panelGraph";
            this.panelGraph.Padding = new System.Windows.Forms.Padding(10);
            this.panelGraph.Size = new System.Drawing.Size(571, 440);
            this.panelGraph.TabIndex = 4;
            // 
            // chart
            // 
            this.chart.Dock = System.Windows.Forms.DockStyle.Fill;
            this.chart.Font = new System.Drawing.Font("Consolas", 9F);
            this.chart.Location = new System.Drawing.Point(10, 10);
            this.chart.Name = "chart";
            this.chart.Size = new System.Drawing.Size(551, 420);
            this.chart.TabIndex = 0;
            this.chart.Text = "Chart";
            // 
            // PanelXYGraph
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.panelGraph);
            this.Controls.Add(this.panelToolStrip);
            this.Controls.Add(this.panelTitle);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F);
            this.Name = "PanelXYGraph";
            this.Size = new System.Drawing.Size(612, 469);
            this.toolStrip.ResumeLayout(false);
            this.toolStrip.PerformLayout();
            this.panelTitle.ResumeLayout(false);
            this.panelToolStrip.ResumeLayout(false);
            this.panelToolStrip.PerformLayout();
            this.panelGraph.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStrip toolStrip;
        private System.Windows.Forms.ToolStripButton cmdPoint;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton cmdPanXY;
        private System.Windows.Forms.ToolStripButton cmdPanX;
        private System.Windows.Forms.ToolStripButton cmdPanY;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripButton cmdZoomIn;
        private System.Windows.Forms.ToolStripButton cmdZoomPoint;
        private System.Windows.Forms.ToolStripButton cmdZoomOut;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripButton cmdCursor;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripButton cmdAutoScaleXY;
        private System.Windows.Forms.ToolStripButton cmdAutoScaleX;
        private System.Windows.Forms.ToolStripButton cmdAutoScaleY;
        private System.Windows.Forms.ToolStripButton cmdMatchScale;
        private System.Windows.Forms.Panel panelTitle;
        private System.Windows.Forms.Panel panelToolStrip;
        private System.Windows.Forms.Panel panelGraph;
        private LiveCharts.WinForms.CartesianChart chart;
        private System.Windows.Forms.Label labelTitle;
    }
}
