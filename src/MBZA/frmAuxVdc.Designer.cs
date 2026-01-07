namespace ZiveLab.ZM
{
    partial class frmAuxVdc
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea3 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend3 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series3 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.AuxVdclabel1 = new System.Windows.Forms.Label();
            this.AuxVdclabel2 = new System.Windows.Forms.Label();
            this.AuxVdclabel3 = new System.Windows.Forms.Label();
            this.AuxVdclabel4 = new System.Windows.Forms.Label();
            this.AuxVdclabel5 = new System.Windows.Forms.Label();
            this.AuxVdclabel6 = new System.Windows.Forms.Label();
            this.AuxVdclabel7 = new System.Windows.Forms.Label();
            this.AuxVdclabel8 = new System.Windows.Forms.Label();
            this.AuxVdclabel9 = new System.Windows.Forms.Label();
            this.AuxVdclabel10 = new System.Windows.Forms.Label();
            this.AuxVdclabel11 = new System.Windows.Forms.Label();
            this.AuxVdclabel12 = new System.Windows.Forms.Label();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.VdcSetButton = new System.Windows.Forms.ToolStripButton();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).BeginInit();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // chart1
            // 
            this.chart1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.chart1.BackColor = System.Drawing.SystemColors.Control;
            chartArea3.AxisX.MajorGrid.LineColor = System.Drawing.Color.LightGray;
            chartArea3.AxisY.MajorGrid.LineColor = System.Drawing.Color.LightGray;
            chartArea3.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea3);
            legend3.BackColor = System.Drawing.SystemColors.Control;
            legend3.Name = "Legend1";
            this.chart1.Legends.Add(legend3);
            this.chart1.Location = new System.Drawing.Point(3, 21);
            this.chart1.Name = "chart1";
            series3.ChartArea = "ChartArea1";
            series3.LabelBackColor = System.Drawing.Color.White;
            series3.LabelBorderColor = System.Drawing.SystemColors.Control;
            series3.Legend = "Legend1";
            series3.Name = "Series1";
            series3.SmartLabelStyle.CalloutLineColor = System.Drawing.Color.DimGray;
            this.chart1.Series.Add(series3);
            this.chart1.Size = new System.Drawing.Size(661, 370);
            this.chart1.TabIndex = 0;
            this.chart1.Text = "chart1";
            this.chart1.Click += new System.EventHandler(this.chart1_Click);
            // 
            // AuxVdclabel1
            // 
            this.AuxVdclabel1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel1.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel1.Location = new System.Drawing.Point(483, 86);
            this.AuxVdclabel1.Name = "AuxVdclabel1";
            this.AuxVdclabel1.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel1.TabIndex = 1;
            this.AuxVdclabel1.Text = "A1Vdc : ";
            // 
            // AuxVdclabel2
            // 
            this.AuxVdclabel2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel2.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel2.Location = new System.Drawing.Point(483, 106);
            this.AuxVdclabel2.Name = "AuxVdclabel2";
            this.AuxVdclabel2.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel2.TabIndex = 2;
            this.AuxVdclabel2.Text = "A2Vdc : ";
            // 
            // AuxVdclabel3
            // 
            this.AuxVdclabel3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel3.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel3.Location = new System.Drawing.Point(483, 126);
            this.AuxVdclabel3.Name = "AuxVdclabel3";
            this.AuxVdclabel3.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel3.TabIndex = 3;
            this.AuxVdclabel3.Text = "A3Vdc : ";
            // 
            // AuxVdclabel4
            // 
            this.AuxVdclabel4.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel4.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel4.Location = new System.Drawing.Point(483, 146);
            this.AuxVdclabel4.Name = "AuxVdclabel4";
            this.AuxVdclabel4.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel4.TabIndex = 4;
            this.AuxVdclabel4.Text = "A4Vdc : ";
            // 
            // AuxVdclabel5
            // 
            this.AuxVdclabel5.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel5.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel5.Location = new System.Drawing.Point(483, 166);
            this.AuxVdclabel5.Name = "AuxVdclabel5";
            this.AuxVdclabel5.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel5.TabIndex = 5;
            this.AuxVdclabel5.Text = "A5Vdc : ";
            // 
            // AuxVdclabel6
            // 
            this.AuxVdclabel6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel6.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel6.Location = new System.Drawing.Point(483, 186);
            this.AuxVdclabel6.Name = "AuxVdclabel6";
            this.AuxVdclabel6.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel6.TabIndex = 6;
            this.AuxVdclabel6.Text = "A6Vdc : ";
            // 
            // AuxVdclabel7
            // 
            this.AuxVdclabel7.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel7.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel7.Location = new System.Drawing.Point(483, 206);
            this.AuxVdclabel7.Name = "AuxVdclabel7";
            this.AuxVdclabel7.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel7.TabIndex = 7;
            this.AuxVdclabel7.Text = "A7Vdc : ";
            // 
            // AuxVdclabel8
            // 
            this.AuxVdclabel8.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel8.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel8.Location = new System.Drawing.Point(483, 226);
            this.AuxVdclabel8.Name = "AuxVdclabel8";
            this.AuxVdclabel8.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel8.TabIndex = 8;
            this.AuxVdclabel8.Text = "A8Vdc : ";
            // 
            // AuxVdclabel9
            // 
            this.AuxVdclabel9.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel9.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel9.Location = new System.Drawing.Point(483, 246);
            this.AuxVdclabel9.Name = "AuxVdclabel9";
            this.AuxVdclabel9.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel9.TabIndex = 9;
            this.AuxVdclabel9.Text = "A9Vdc : ";
            // 
            // AuxVdclabel10
            // 
            this.AuxVdclabel10.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel10.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel10.Location = new System.Drawing.Point(483, 266);
            this.AuxVdclabel10.Name = "AuxVdclabel10";
            this.AuxVdclabel10.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel10.TabIndex = 10;
            this.AuxVdclabel10.Text = "A10Vdc : ";
            // 
            // AuxVdclabel11
            // 
            this.AuxVdclabel11.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel11.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel11.Location = new System.Drawing.Point(483, 286);
            this.AuxVdclabel11.Name = "AuxVdclabel11";
            this.AuxVdclabel11.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel11.TabIndex = 11;
            this.AuxVdclabel11.Text = "A11Vdc : ";
            // 
            // AuxVdclabel12
            // 
            this.AuxVdclabel12.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.AuxVdclabel12.BackColor = System.Drawing.SystemColors.Control;
            this.AuxVdclabel12.Location = new System.Drawing.Point(483, 306);
            this.AuxVdclabel12.Name = "AuxVdclabel12";
            this.AuxVdclabel12.Size = new System.Drawing.Size(107, 10);
            this.AuxVdclabel12.TabIndex = 12;
            this.AuxVdclabel12.Text = "A12Vdc : ";
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.VdcSetButton});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(664, 25);
            this.toolStrip1.TabIndex = 13;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // VdcSetButton
            // 
            this.VdcSetButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.VdcSetButton.Image = global::ZiveLab.ZM.Properties.Resources.settings_outline;
            this.VdcSetButton.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.VdcSetButton.Name = "VdcSetButton";
            this.VdcSetButton.Size = new System.Drawing.Size(23, 22);
            this.VdcSetButton.Text = "VdcSetButton";
            this.VdcSetButton.ToolTipText = "Settings.";
            this.VdcSetButton.Click += new System.EventHandler(this.VdcSetButton_Click);
            // 
            // frmAuxVdc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(664, 391);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.AuxVdclabel12);
            this.Controls.Add(this.AuxVdclabel11);
            this.Controls.Add(this.AuxVdclabel10);
            this.Controls.Add(this.AuxVdclabel9);
            this.Controls.Add(this.AuxVdclabel8);
            this.Controls.Add(this.AuxVdclabel7);
            this.Controls.Add(this.AuxVdclabel6);
            this.Controls.Add(this.AuxVdclabel5);
            this.Controls.Add(this.AuxVdclabel4);
            this.Controls.Add(this.AuxVdclabel3);
            this.Controls.Add(this.AuxVdclabel2);
            this.Controls.Add(this.AuxVdclabel1);
            this.Controls.Add(this.chart1);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmAuxVdc";
            this.Text = "Auxiliary DC Voltage Monitoring.";
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;
        private System.Windows.Forms.Label AuxVdclabel1;
        private System.Windows.Forms.Label AuxVdclabel2;
        private System.Windows.Forms.Label AuxVdclabel3;
        private System.Windows.Forms.Label AuxVdclabel4;
        private System.Windows.Forms.Label AuxVdclabel5;
        private System.Windows.Forms.Label AuxVdclabel6;
        private System.Windows.Forms.Label AuxVdclabel7;
        private System.Windows.Forms.Label AuxVdclabel8;
        private System.Windows.Forms.Label AuxVdclabel9;
        private System.Windows.Forms.Label AuxVdclabel10;
        private System.Windows.Forms.Label AuxVdclabel11;
        private System.Windows.Forms.Label AuxVdclabel12;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton VdcSetButton;
    }
}