namespace ZiveLab.ZM
{
    partial class frmDataTools
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
            this.listView1 = new System.Windows.Forms.ListView();
            this.txtCurPath = new System.Windows.Forms.TextBox();
            this.btChgRoot = new System.Windows.Forms.Button();
            this.btSearch = new System.Windows.Forms.Button();
            this.chkTechType0 = new System.Windows.Forms.CheckBox();
            this.chkTechType1 = new System.Windows.Forms.CheckBox();
            this.chkTechType2 = new System.Windows.Forms.CheckBox();
            this.chkTechType5 = new System.Windows.Forms.CheckBox();
            this.chkTechType4 = new System.Windows.Forms.CheckBox();
            this.chkTechType3 = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btDselAll = new System.Windows.Forms.Button();
            this.btSelAll = new System.Windows.Forms.Button();
            this.chkTechType6 = new System.Windows.Forms.CheckBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.chkwithsubfolder = new System.Windows.Forms.CheckBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.LnkHelp = new System.Windows.Forms.LinkLabel();
            this.legend1 = new NationalInstruments.UI.WindowsForms.Legend();
            this.legendItem11 = new NationalInstruments.UI.LegendItem();
            this.Grp1Plot1 = new NationalInstruments.UI.ScatterPlot();
            this.Grp1_xAxis1 = new NationalInstruments.UI.XAxis();
            this.Grp1_yAxis1 = new NationalInstruments.UI.YAxis();
            this.legendItem12 = new NationalInstruments.UI.LegendItem();
            this.Grp1Plot2 = new NationalInstruments.UI.ScatterPlot();
            this.legendItem13 = new NationalInstruments.UI.LegendItem();
            this.Grp1Plot3 = new NationalInstruments.UI.ScatterPlot();
            this.legendItem14 = new NationalInstruments.UI.LegendItem();
            this.Grp1Plot4 = new NationalInstruments.UI.ScatterPlot();
            this.Grp1_yAxis2 = new NationalInstruments.UI.YAxis();
            this.legendItem15 = new NationalInstruments.UI.LegendItem();
            this.Grp1Plot5 = new NationalInstruments.UI.ScatterPlot();
            this.legendItem16 = new NationalInstruments.UI.LegendItem();
            this.Grp1Plot6 = new NationalInstruments.UI.ScatterPlot();
            this.legendItem17 = new NationalInstruments.UI.LegendItem();
            this.Grp1Plot7 = new NationalInstruments.UI.ScatterPlot();
            this.grp1 = new NationalInstruments.UI.WindowsForms.ScatterGraph();
            this.xyCursor2 = new NationalInstruments.UI.XYCursor();
            this.btrefresh = new System.Windows.Forms.Button();
            this.txtFileInfor = new System.Windows.Forms.TextBox();
            this.LnkSaveTechFile = new System.Windows.Forms.LinkLabel();
            this.LnkSaveRngFile = new System.Windows.Forms.LinkLabel();
            this.LnkSavePrrDataFile = new System.Windows.Forms.LinkLabel();
            this.LnkClose = new System.Windows.Forms.LinkLabel();
            this.LnkSaveResmplFile = new System.Windows.Forms.LinkLabel();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.legend1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.grp1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xyCursor2)).BeginInit();
            this.SuspendLayout();
            // 
            // listView1
            // 
            this.listView1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.listView1.GridLines = true;
            this.listView1.Location = new System.Drawing.Point(12, 144);
            this.listView1.MultiSelect = false;
            this.listView1.Name = "listView1";
            this.listView1.ShowItemToolTips = true;
            this.listView1.Size = new System.Drawing.Size(764, 688);
            this.listView1.TabIndex = 1;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.SelectedIndexChanged += new System.EventHandler(this.listView1_SelectedIndexChanged);
            this.listView1.DoubleClick += new System.EventHandler(this.listView1_DoubleClick);
            // 
            // txtCurPath
            // 
            this.txtCurPath.Location = new System.Drawing.Point(16, 21);
            this.txtCurPath.Name = "txtCurPath";
            this.txtCurPath.ReadOnly = true;
            this.txtCurPath.Size = new System.Drawing.Size(662, 22);
            this.txtCurPath.TabIndex = 3;
            // 
            // btChgRoot
            // 
            this.btChgRoot.Location = new System.Drawing.Point(690, 19);
            this.btChgRoot.Name = "btChgRoot";
            this.btChgRoot.Size = new System.Drawing.Size(64, 22);
            this.btChgRoot.TabIndex = 4;
            this.btChgRoot.Text = "Change";
            this.btChgRoot.UseVisualStyleBackColor = true;
            this.btChgRoot.Click += new System.EventHandler(this.btChgRoot_Click);
            // 
            // btSearch
            // 
            this.btSearch.Location = new System.Drawing.Point(702, 117);
            this.btSearch.Name = "btSearch";
            this.btSearch.Size = new System.Drawing.Size(64, 22);
            this.btSearch.TabIndex = 5;
            this.btSearch.Text = "Refresh";
            this.btSearch.UseVisualStyleBackColor = true;
            this.btSearch.Click += new System.EventHandler(this.btSearch_Click);
            // 
            // chkTechType0
            // 
            this.chkTechType0.AutoSize = true;
            this.chkTechType0.Location = new System.Drawing.Point(13, 21);
            this.chkTechType0.Name = "chkTechType0";
            this.chkTechType0.Size = new System.Drawing.Size(61, 18);
            this.chkTechType0.TabIndex = 6;
            this.chkTechType0.Text = "Error";
            this.chkTechType0.UseVisualStyleBackColor = true;
            // 
            // chkTechType1
            // 
            this.chkTechType1.AutoSize = true;
            this.chkTechType1.Location = new System.Drawing.Point(106, 21);
            this.chkTechType1.Name = "chkTechType1";
            this.chkTechType1.Size = new System.Drawing.Size(47, 18);
            this.chkTechType1.TabIndex = 8;
            this.chkTechType1.Text = "EIS";
            this.chkTechType1.UseVisualStyleBackColor = true;
            // 
            // chkTechType2
            // 
            this.chkTechType2.AutoSize = true;
            this.chkTechType2.Location = new System.Drawing.Point(184, 21);
            this.chkTechType2.Name = "chkTechType2";
            this.chkTechType2.Size = new System.Drawing.Size(47, 18);
            this.chkTechType2.TabIndex = 9;
            this.chkTechType2.Text = "HFR";
            this.chkTechType2.UseVisualStyleBackColor = true;
            // 
            // chkTechType5
            // 
            this.chkTechType5.AutoSize = true;
            this.chkTechType5.Location = new System.Drawing.Point(407, 21);
            this.chkTechType5.Name = "chkTechType5";
            this.chkTechType5.Size = new System.Drawing.Size(47, 18);
            this.chkTechType5.TabIndex = 12;
            this.chkTechType5.Text = "QIS";
            this.chkTechType5.UseVisualStyleBackColor = true;
            // 
            // chkTechType4
            // 
            this.chkTechType4.AutoSize = true;
            this.chkTechType4.Location = new System.Drawing.Point(332, 21);
            this.chkTechType4.Name = "chkTechType4";
            this.chkTechType4.Size = new System.Drawing.Size(47, 18);
            this.chkTechType4.TabIndex = 11;
            this.chkTechType4.Text = "MON";
            this.chkTechType4.UseVisualStyleBackColor = true;
            // 
            // chkTechType3
            // 
            this.chkTechType3.AutoSize = true;
            this.chkTechType3.Location = new System.Drawing.Point(258, 21);
            this.chkTechType3.Name = "chkTechType3";
            this.chkTechType3.Size = new System.Drawing.Size(47, 18);
            this.chkTechType3.TabIndex = 10;
            this.chkTechType3.Text = "PRR";
            this.chkTechType3.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btDselAll);
            this.groupBox1.Controls.Add(this.btSelAll);
            this.groupBox1.Controls.Add(this.chkTechType6);
            this.groupBox1.Controls.Add(this.chkTechType0);
            this.groupBox1.Controls.Add(this.chkTechType5);
            this.groupBox1.Controls.Add(this.chkTechType1);
            this.groupBox1.Controls.Add(this.chkTechType4);
            this.groupBox1.Controls.Add(this.chkTechType2);
            this.groupBox1.Controls.Add(this.chkTechType3);
            this.groupBox1.Location = new System.Drawing.Point(12, 64);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(763, 46);
            this.groupBox1.TabIndex = 13;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "[ Search Technique type ]";
            // 
            // btDselAll
            // 
            this.btDselAll.Location = new System.Drawing.Point(652, 19);
            this.btDselAll.Name = "btDselAll";
            this.btDselAll.Size = new System.Drawing.Size(102, 22);
            this.btDselAll.TabIndex = 15;
            this.btDselAll.Text = "Deselect all";
            this.btDselAll.UseVisualStyleBackColor = true;
            this.btDselAll.Click += new System.EventHandler(this.btDselAll_Click);
            // 
            // btSelAll
            // 
            this.btSelAll.Location = new System.Drawing.Point(543, 18);
            this.btSelAll.Name = "btSelAll";
            this.btSelAll.Size = new System.Drawing.Size(102, 22);
            this.btSelAll.TabIndex = 14;
            this.btSelAll.Text = "Select all";
            this.btSelAll.UseVisualStyleBackColor = true;
            this.btSelAll.Click += new System.EventHandler(this.btSelAll_Click);
            // 
            // chkTechType6
            // 
            this.chkTechType6.AutoSize = true;
            this.chkTechType6.Location = new System.Drawing.Point(475, 21);
            this.chkTechType6.Name = "chkTechType6";
            this.chkTechType6.Size = new System.Drawing.Size(47, 18);
            this.chkTechType6.TabIndex = 13;
            this.chkTechType6.Text = "DCH";
            this.chkTechType6.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtCurPath);
            this.groupBox2.Controls.Add(this.btChgRoot);
            this.groupBox2.Location = new System.Drawing.Point(12, 9);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(763, 53);
            this.groupBox2.TabIndex = 14;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "[ Selected folder ]";
            // 
            // chkwithsubfolder
            // 
            this.chkwithsubfolder.AutoSize = true;
            this.chkwithsubfolder.Location = new System.Drawing.Point(25, 118);
            this.chkwithsubfolder.Name = "chkwithsubfolder";
            this.chkwithsubfolder.Size = new System.Drawing.Size(187, 18);
            this.chkwithsubfolder.TabIndex = 5;
            this.chkwithsubfolder.Text = "Search with sub folder.";
            this.chkwithsubfolder.UseVisualStyleBackColor = true;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.LnkHelp);
            this.groupBox3.Controls.Add(this.legend1);
            this.groupBox3.Controls.Add(this.grp1);
            this.groupBox3.Controls.Add(this.btrefresh);
            this.groupBox3.Controls.Add(this.txtFileInfor);
            this.groupBox3.Location = new System.Drawing.Point(782, 13);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(538, 659);
            this.groupBox3.TabIndex = 15;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "[ File information ]";
            // 
            // LnkHelp
            // 
            this.LnkHelp.AutoSize = true;
            this.LnkHelp.Location = new System.Drawing.Point(486, 642);
            this.LnkHelp.Name = "LnkHelp";
            this.LnkHelp.Size = new System.Drawing.Size(35, 14);
            this.LnkHelp.TabIndex = 98;
            this.LnkHelp.TabStop = true;
            this.LnkHelp.Text = "Help";
            this.LnkHelp.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkHelp_LinkClicked);
            // 
            // legend1
            // 
            this.legend1.Border = NationalInstruments.UI.Border.Dotted;
            this.legend1.Font = new System.Drawing.Font("Consolas", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.legend1.Items.AddRange(new NationalInstruments.UI.LegendItem[] {
            this.legendItem11,
            this.legendItem12,
            this.legendItem13,
            this.legendItem14,
            this.legendItem15,
            this.legendItem16,
            this.legendItem17});
            this.legend1.ItemSize = new System.Drawing.Size(24, 20);
            this.legend1.Location = new System.Drawing.Point(425, 210);
            this.legend1.Name = "legend1";
            this.legend1.Size = new System.Drawing.Size(87, 169);
            this.legend1.TabIndex = 97;
            // 
            // legendItem11
            // 
            this.legendItem11.Source = this.Grp1Plot1;
            this.legendItem11.Text = "Item1";
            // 
            // Grp1Plot1
            // 
            this.Grp1Plot1.XAxis = this.Grp1_xAxis1;
            this.Grp1Plot1.YAxis = this.Grp1_yAxis1;
            // 
            // legendItem12
            // 
            this.legendItem12.Source = this.Grp1Plot2;
            this.legendItem12.Text = "Item1";
            // 
            // Grp1Plot2
            // 
            this.Grp1Plot2.XAxis = this.Grp1_xAxis1;
            this.Grp1Plot2.YAxis = this.Grp1_yAxis1;
            // 
            // legendItem13
            // 
            this.legendItem13.Source = this.Grp1Plot3;
            this.legendItem13.Text = "Item 2";
            // 
            // Grp1Plot3
            // 
            this.Grp1Plot3.XAxis = this.Grp1_xAxis1;
            this.Grp1Plot3.YAxis = this.Grp1_yAxis1;
            // 
            // legendItem14
            // 
            this.legendItem14.Source = this.Grp1Plot4;
            this.legendItem14.Text = "Item 3";
            // 
            // Grp1Plot4
            // 
            this.Grp1Plot4.XAxis = this.Grp1_xAxis1;
            this.Grp1Plot4.YAxis = this.Grp1_yAxis2;
            // 
            // Grp1_yAxis2
            // 
            this.Grp1_yAxis2.CaptionPosition = NationalInstruments.UI.YAxisPosition.Right;
            this.Grp1_yAxis2.Position = NationalInstruments.UI.YAxisPosition.Right;
            // 
            // legendItem15
            // 
            this.legendItem15.Source = this.Grp1Plot5;
            this.legendItem15.Text = "Item 4";
            // 
            // Grp1Plot5
            // 
            this.Grp1Plot5.XAxis = this.Grp1_xAxis1;
            this.Grp1Plot5.YAxis = this.Grp1_yAxis2;
            // 
            // legendItem16
            // 
            this.legendItem16.Source = this.Grp1Plot6;
            this.legendItem16.Text = "Zphase";
            // 
            // Grp1Plot6
            // 
            this.Grp1Plot6.LineColor = System.Drawing.Color.Maroon;
            this.Grp1Plot6.LineColorPrecedence = NationalInstruments.UI.ColorPrecedence.UserDefinedColor;
            this.Grp1Plot6.XAxis = this.Grp1_xAxis1;
            this.Grp1Plot6.YAxis = this.Grp1_yAxis2;
            // 
            // legendItem17
            // 
            this.legendItem17.Source = this.Grp1Plot7;
            this.legendItem17.Text = "Item 6";
            // 
            // Grp1Plot7
            // 
            this.Grp1Plot7.LineColor = System.Drawing.Color.DarkGray;
            this.Grp1Plot7.LineColorPrecedence = NationalInstruments.UI.ColorPrecedence.UserDefinedColor;
            this.Grp1Plot7.LineStyle = NationalInstruments.UI.LineStyle.Dot;
            this.Grp1Plot7.PointColor = System.Drawing.Color.DarkGray;
            this.Grp1Plot7.PointStyle = NationalInstruments.UI.PointStyle.EmptyCircle;
            this.Grp1Plot7.ProcessSpecialValues = true;
            this.Grp1Plot7.XAxis = this.Grp1_xAxis1;
            this.Grp1Plot7.YAxis = this.Grp1_yAxis1;
            // 
            // grp1
            // 
            this.grp1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.grp1.Caption = " ";
            this.grp1.CaptionBackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.grp1.Cursors.AddRange(new NationalInstruments.UI.XYCursor[] {
            this.xyCursor2});
            this.grp1.Location = new System.Drawing.Point(15, 198);
            this.grp1.Name = "grp1";
            this.grp1.PlotAreaColor = System.Drawing.Color.White;
            this.grp1.Plots.AddRange(new NationalInstruments.UI.ScatterPlot[] {
            this.Grp1Plot7,
            this.Grp1Plot1,
            this.Grp1Plot2,
            this.Grp1Plot3,
            this.Grp1Plot4,
            this.Grp1Plot5,
            this.Grp1Plot6});
            this.grp1.Size = new System.Drawing.Size(508, 443);
            this.grp1.TabIndex = 96;
            this.grp1.UseColorGenerator = true;
            this.grp1.XAxes.AddRange(new NationalInstruments.UI.XAxis[] {
            this.Grp1_xAxis1});
            this.grp1.YAxes.AddRange(new NationalInstruments.UI.YAxis[] {
            this.Grp1_yAxis1,
            this.Grp1_yAxis2});
            // 
            // xyCursor2
            // 
            this.xyCursor2.Plot = this.Grp1Plot1;
            // 
            // btrefresh
            // 
            this.btrefresh.Location = new System.Drawing.Point(457, 11);
            this.btrefresh.Name = "btrefresh";
            this.btrefresh.Size = new System.Drawing.Size(64, 22);
            this.btrefresh.TabIndex = 95;
            this.btrefresh.Text = "Refresh";
            this.btrefresh.UseVisualStyleBackColor = true;
            this.btrefresh.Click += new System.EventHandler(this.btrefresh_Click);
            // 
            // txtFileInfor
            // 
            this.txtFileInfor.Location = new System.Drawing.Point(15, 34);
            this.txtFileInfor.Multiline = true;
            this.txtFileInfor.Name = "txtFileInfor";
            this.txtFileInfor.ReadOnly = true;
            this.txtFileInfor.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtFileInfor.Size = new System.Drawing.Size(508, 158);
            this.txtFileInfor.TabIndex = 0;
            // 
            // LnkSaveTechFile
            // 
            this.LnkSaveTechFile.AutoSize = true;
            this.LnkSaveTechFile.Location = new System.Drawing.Point(794, 675);
            this.LnkSaveTechFile.Name = "LnkSaveTechFile";
            this.LnkSaveTechFile.Size = new System.Drawing.Size(210, 14);
            this.LnkSaveTechFile.TabIndex = 16;
            this.LnkSaveTechFile.TabStop = true;
            this.LnkSaveTechFile.Text = "Save the technique file used.";
            this.LnkSaveTechFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkSaveTechFile_LinkClicked);
            // 
            // LnkSaveRngFile
            // 
            this.LnkSaveRngFile.AutoSize = true;
            this.LnkSaveRngFile.Location = new System.Drawing.Point(794, 710);
            this.LnkSaveRngFile.Name = "LnkSaveRngFile";
            this.LnkSaveRngFile.Size = new System.Drawing.Size(364, 14);
            this.LnkSaveRngFile.TabIndex = 17;
            this.LnkSaveRngFile.TabStop = true;
            this.LnkSaveRngFile.Text = "Save the range information file of the used device.";
            this.LnkSaveRngFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkSaveRngFile_LinkClicked);
            // 
            // LnkSavePrrDataFile
            // 
            this.LnkSavePrrDataFile.AutoSize = true;
            this.LnkSavePrrDataFile.Location = new System.Drawing.Point(794, 748);
            this.LnkSavePrrDataFile.Name = "LnkSavePrrDataFile";
            this.LnkSavePrrDataFile.Size = new System.Drawing.Size(413, 14);
            this.LnkSavePrrDataFile.TabIndex = 18;
            this.LnkSavePrrDataFile.TabStop = true;
            this.LnkSavePrrDataFile.Text = "Process the PRR test results and save them to a text file.";
            this.LnkSavePrrDataFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkSavePrrDataFile_LinkClicked);
            // 
            // LnkClose
            // 
            this.LnkClose.AutoSize = true;
            this.LnkClose.Location = new System.Drawing.Point(794, 818);
            this.LnkClose.Name = "LnkClose";
            this.LnkClose.Size = new System.Drawing.Size(133, 14);
            this.LnkClose.TabIndex = 19;
            this.LnkClose.TabStop = true;
            this.LnkClose.Text = "Close this window.";
            this.LnkClose.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkClose_LinkClicked);
            // 
            // LnkSaveResmplFile
            // 
            this.LnkSaveResmplFile.AutoSize = true;
            this.LnkSaveResmplFile.Location = new System.Drawing.Point(794, 786);
            this.LnkSaveResmplFile.Name = "LnkSaveResmplFile";
            this.LnkSaveResmplFile.Size = new System.Drawing.Size(371, 14);
            this.LnkSaveResmplFile.TabIndex = 20;
            this.LnkSaveResmplFile.TabStop = true;
            this.LnkSaveResmplFile.Text = "Save the data displayed on the graph to a data file.";
            this.LnkSaveResmplFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkSaveResmplFile_LinkClicked);
            // 
            // frmDataTools
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1330, 844);
            this.Controls.Add(this.LnkSaveResmplFile);
            this.Controls.Add(this.LnkClose);
            this.Controls.Add(this.LnkSavePrrDataFile);
            this.Controls.Add(this.LnkSaveRngFile);
            this.Controls.Add(this.LnkSaveTechFile);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.chkwithsubfolder);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.btSearch);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.listView1);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.MaximizeBox = false;
            this.Name = "frmDataTools";
            this.Text = "Tools for data files.";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmDataTools_FormClosed);
            this.Load += new System.EventHandler(this.frmDataTools_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.legend1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.grp1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xyCursor2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ListView listView1;
        private System.Windows.Forms.TextBox txtCurPath;
        private System.Windows.Forms.Button btChgRoot;
        private System.Windows.Forms.Button btSearch;
        private System.Windows.Forms.CheckBox chkTechType0;
        private System.Windows.Forms.CheckBox chkTechType1;
        private System.Windows.Forms.CheckBox chkTechType2;
        private System.Windows.Forms.CheckBox chkTechType5;
        private System.Windows.Forms.CheckBox chkTechType4;
        private System.Windows.Forms.CheckBox chkTechType3;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.CheckBox chkwithsubfolder;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txtFileInfor;
        private System.Windows.Forms.LinkLabel LnkSaveTechFile;
        private System.Windows.Forms.LinkLabel LnkSaveRngFile;
        private System.Windows.Forms.LinkLabel LnkSavePrrDataFile;
        private System.Windows.Forms.LinkLabel LnkClose;
        private System.Windows.Forms.LinkLabel LnkSaveResmplFile;
        private System.Windows.Forms.Button btrefresh;
        private NationalInstruments.UI.WindowsForms.Legend legend1;
        private NationalInstruments.UI.LegendItem legendItem11;
        private NationalInstruments.UI.ScatterPlot Grp1Plot1;
        private NationalInstruments.UI.XAxis Grp1_xAxis1;
        private NationalInstruments.UI.YAxis Grp1_yAxis1;
        private NationalInstruments.UI.LegendItem legendItem12;
        private NationalInstruments.UI.ScatterPlot Grp1Plot2;
        private NationalInstruments.UI.LegendItem legendItem13;
        private NationalInstruments.UI.ScatterPlot Grp1Plot3;
        private NationalInstruments.UI.LegendItem legendItem14;
        private NationalInstruments.UI.ScatterPlot Grp1Plot4;
        private NationalInstruments.UI.YAxis Grp1_yAxis2;
        private NationalInstruments.UI.LegendItem legendItem15;
        private NationalInstruments.UI.ScatterPlot Grp1Plot5;
        private NationalInstruments.UI.LegendItem legendItem16;
        private NationalInstruments.UI.ScatterPlot Grp1Plot6;
        private NationalInstruments.UI.LegendItem legendItem17;
        private NationalInstruments.UI.ScatterPlot Grp1Plot7;
        private NationalInstruments.UI.WindowsForms.ScatterGraph grp1;
        private NationalInstruments.UI.XYCursor xyCursor2;
        private System.Windows.Forms.LinkLabel LnkHelp;
        private System.Windows.Forms.CheckBox chkTechType6;
        private System.Windows.Forms.Button btDselAll;
        private System.Windows.Forms.Button btSelAll;
    }
}