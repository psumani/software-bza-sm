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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.StripLine stripLine1 = new System.Windows.Forms.DataVisualization.Charting.StripLine();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.VdcSetButton = new System.Windows.Forms.ToolStripButton();
            this.chkauxvdc1 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc2 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc3 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc4 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc5 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc6 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc7 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc8 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc9 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc10 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc11 = new System.Windows.Forms.CheckBox();
            this.chkauxvdc12 = new System.Windows.Forms.CheckBox();
            this.cbocalctype = new System.Windows.Forms.ComboBox();
            this.txtcalc = new System.Windows.Forms.TextBox();
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
            chartArea1.AxisX.MajorGrid.LineColor = System.Drawing.Color.LightGray;
            chartArea1.AxisY.MajorGrid.LineColor = System.Drawing.Color.LightGray;
            stripLine1.BackColor = System.Drawing.Color.White;
            stripLine1.BorderColor = System.Drawing.Color.Blue;
            stripLine1.BorderDashStyle = System.Windows.Forms.DataVisualization.Charting.ChartDashStyle.Dot;
            stripLine1.IntervalOffset = 1D;
            chartArea1.AxisY.StripLines.Add(stripLine1);
            chartArea1.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea1);
            legend1.BackColor = System.Drawing.SystemColors.Control;
            legend1.Name = "Legend1";
            this.chart1.Legends.Add(legend1);
            this.chart1.Location = new System.Drawing.Point(3, 24);
            this.chart1.Name = "chart1";
            series1.ChartArea = "ChartArea1";
            series1.LabelBackColor = System.Drawing.Color.White;
            series1.LabelBorderColor = System.Drawing.SystemColors.Control;
            series1.Legend = "Legend1";
            series1.Name = "Series1";
            series1.SmartLabelStyle.CalloutLineColor = System.Drawing.Color.DimGray;
            this.chart1.Series.Add(series1);
            this.chart1.Size = new System.Drawing.Size(661, 432);
            this.chart1.TabIndex = 0;
            this.chart1.Text = "chart1";
            this.chart1.Click += new System.EventHandler(this.chart1_Click);
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
            // chkauxvdc1
            // 
            this.chkauxvdc1.AutoSize = true;
            this.chkauxvdc1.Location = new System.Drawing.Point(499, 93);
            this.chkauxvdc1.Name = "chkauxvdc1";
            this.chkauxvdc1.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc1.TabIndex = 14;
            this.chkauxvdc1.Text = "A01Vdc : ";
            this.chkauxvdc1.UseVisualStyleBackColor = true;
            this.chkauxvdc1.CheckedChanged += new System.EventHandler(this.chkauxvdc1_CheckedChanged);
            // 
            // chkauxvdc2
            // 
            this.chkauxvdc2.AutoSize = true;
            this.chkauxvdc2.Location = new System.Drawing.Point(499, 119);
            this.chkauxvdc2.Name = "chkauxvdc2";
            this.chkauxvdc2.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc2.TabIndex = 15;
            this.chkauxvdc2.Text = "A02Vdc : ";
            this.chkauxvdc2.UseVisualStyleBackColor = true;
            this.chkauxvdc2.CheckedChanged += new System.EventHandler(this.chkauxvdc2_CheckedChanged);
            // 
            // chkauxvdc3
            // 
            this.chkauxvdc3.AutoSize = true;
            this.chkauxvdc3.Location = new System.Drawing.Point(499, 145);
            this.chkauxvdc3.Name = "chkauxvdc3";
            this.chkauxvdc3.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc3.TabIndex = 16;
            this.chkauxvdc3.Text = "A03Vdc : ";
            this.chkauxvdc3.UseVisualStyleBackColor = true;
            this.chkauxvdc3.CheckedChanged += new System.EventHandler(this.chkauxvdc3_CheckedChanged);
            // 
            // chkauxvdc4
            // 
            this.chkauxvdc4.AutoSize = true;
            this.chkauxvdc4.Location = new System.Drawing.Point(499, 170);
            this.chkauxvdc4.Name = "chkauxvdc4";
            this.chkauxvdc4.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc4.TabIndex = 17;
            this.chkauxvdc4.Text = "A04Vdc : ";
            this.chkauxvdc4.UseVisualStyleBackColor = true;
            this.chkauxvdc4.CheckedChanged += new System.EventHandler(this.chkauxvdc4_CheckedChanged);
            // 
            // chkauxvdc5
            // 
            this.chkauxvdc5.AutoSize = true;
            this.chkauxvdc5.Location = new System.Drawing.Point(499, 196);
            this.chkauxvdc5.Name = "chkauxvdc5";
            this.chkauxvdc5.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc5.TabIndex = 18;
            this.chkauxvdc5.Text = "A05Vdc : ";
            this.chkauxvdc5.UseVisualStyleBackColor = true;
            this.chkauxvdc5.CheckedChanged += new System.EventHandler(this.chkauxvdc5_CheckedChanged);
            // 
            // chkauxvdc6
            // 
            this.chkauxvdc6.AutoSize = true;
            this.chkauxvdc6.Location = new System.Drawing.Point(499, 222);
            this.chkauxvdc6.Name = "chkauxvdc6";
            this.chkauxvdc6.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc6.TabIndex = 19;
            this.chkauxvdc6.Text = "A06Vdc : ";
            this.chkauxvdc6.UseVisualStyleBackColor = true;
            this.chkauxvdc6.CheckedChanged += new System.EventHandler(this.chkauxvdc6_CheckedChanged);
            // 
            // chkauxvdc7
            // 
            this.chkauxvdc7.AutoSize = true;
            this.chkauxvdc7.Location = new System.Drawing.Point(499, 247);
            this.chkauxvdc7.Name = "chkauxvdc7";
            this.chkauxvdc7.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc7.TabIndex = 20;
            this.chkauxvdc7.Text = "A07Vdc : ";
            this.chkauxvdc7.UseVisualStyleBackColor = true;
            this.chkauxvdc7.CheckedChanged += new System.EventHandler(this.chkauxvdc7_CheckedChanged);
            // 
            // chkauxvdc8
            // 
            this.chkauxvdc8.AutoSize = true;
            this.chkauxvdc8.Location = new System.Drawing.Point(499, 273);
            this.chkauxvdc8.Name = "chkauxvdc8";
            this.chkauxvdc8.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc8.TabIndex = 21;
            this.chkauxvdc8.Text = "A08Vdc : ";
            this.chkauxvdc8.UseVisualStyleBackColor = true;
            this.chkauxvdc8.CheckedChanged += new System.EventHandler(this.chkauxvdc8_CheckedChanged);
            // 
            // chkauxvdc9
            // 
            this.chkauxvdc9.AutoSize = true;
            this.chkauxvdc9.Location = new System.Drawing.Point(499, 299);
            this.chkauxvdc9.Name = "chkauxvdc9";
            this.chkauxvdc9.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc9.TabIndex = 22;
            this.chkauxvdc9.Text = "A09Vdc : ";
            this.chkauxvdc9.UseVisualStyleBackColor = true;
            this.chkauxvdc9.CheckedChanged += new System.EventHandler(this.chkauxvdc9_CheckedChanged);
            // 
            // chkauxvdc10
            // 
            this.chkauxvdc10.AutoSize = true;
            this.chkauxvdc10.Location = new System.Drawing.Point(499, 324);
            this.chkauxvdc10.Name = "chkauxvdc10";
            this.chkauxvdc10.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc10.TabIndex = 23;
            this.chkauxvdc10.Text = "A10Vdc : ";
            this.chkauxvdc10.UseVisualStyleBackColor = true;
            this.chkauxvdc10.CheckedChanged += new System.EventHandler(this.chkauxvdc10_CheckedChanged);
            // 
            // chkauxvdc11
            // 
            this.chkauxvdc11.AutoSize = true;
            this.chkauxvdc11.Location = new System.Drawing.Point(499, 350);
            this.chkauxvdc11.Name = "chkauxvdc11";
            this.chkauxvdc11.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc11.TabIndex = 24;
            this.chkauxvdc11.Text = "A11Vdc : ";
            this.chkauxvdc11.UseVisualStyleBackColor = true;
            this.chkauxvdc11.CheckedChanged += new System.EventHandler(this.chkauxvdc11_CheckedChanged);
            // 
            // chkauxvdc12
            // 
            this.chkauxvdc12.AutoSize = true;
            this.chkauxvdc12.Location = new System.Drawing.Point(499, 376);
            this.chkauxvdc12.Name = "chkauxvdc12";
            this.chkauxvdc12.Size = new System.Drawing.Size(89, 18);
            this.chkauxvdc12.TabIndex = 25;
            this.chkauxvdc12.Text = "A12Vdc : ";
            this.chkauxvdc12.UseVisualStyleBackColor = true;
            this.chkauxvdc12.CheckedChanged += new System.EventHandler(this.chkauxvdc12_CheckedChanged);
            // 
            // cbocalctype
            // 
            this.cbocalctype.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbocalctype.FormattingEnabled = true;
            this.cbocalctype.Location = new System.Drawing.Point(499, 400);
            this.cbocalctype.Name = "cbocalctype";
            this.cbocalctype.Size = new System.Drawing.Size(74, 22);
            this.cbocalctype.TabIndex = 26;
            // 
            // txtcalc
            // 
            this.txtcalc.BackColor = System.Drawing.Color.Lavender;
            this.txtcalc.Location = new System.Drawing.Point(576, 400);
            this.txtcalc.Name = "txtcalc";
            this.txtcalc.ReadOnly = true;
            this.txtcalc.Size = new System.Drawing.Size(62, 22);
            this.txtcalc.TabIndex = 27;
            this.txtcalc.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // frmAuxVdc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(664, 456);
            this.Controls.Add(this.txtcalc);
            this.Controls.Add(this.cbocalctype);
            this.Controls.Add(this.chkauxvdc12);
            this.Controls.Add(this.chkauxvdc11);
            this.Controls.Add(this.chkauxvdc10);
            this.Controls.Add(this.chkauxvdc9);
            this.Controls.Add(this.chkauxvdc8);
            this.Controls.Add(this.chkauxvdc7);
            this.Controls.Add(this.chkauxvdc6);
            this.Controls.Add(this.chkauxvdc5);
            this.Controls.Add(this.chkauxvdc4);
            this.Controls.Add(this.chkauxvdc3);
            this.Controls.Add(this.chkauxvdc2);
            this.Controls.Add(this.chkauxvdc1);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.chart1);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
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
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton VdcSetButton;
        private System.Windows.Forms.CheckBox chkauxvdc1;
        private System.Windows.Forms.CheckBox chkauxvdc2;
        private System.Windows.Forms.CheckBox chkauxvdc3;
        private System.Windows.Forms.CheckBox chkauxvdc4;
        private System.Windows.Forms.CheckBox chkauxvdc5;
        private System.Windows.Forms.CheckBox chkauxvdc6;
        private System.Windows.Forms.CheckBox chkauxvdc7;
        private System.Windows.Forms.CheckBox chkauxvdc8;
        private System.Windows.Forms.CheckBox chkauxvdc9;
        private System.Windows.Forms.CheckBox chkauxvdc10;
        private System.Windows.Forms.CheckBox chkauxvdc11;
        private System.Windows.Forms.CheckBox chkauxvdc12;
        private System.Windows.Forms.ComboBox cbocalctype;
        private System.Windows.Forms.TextBox txtcalc;
    }
}