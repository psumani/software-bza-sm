namespace App.Zim.Player
{
    partial class frmConfig
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
            this.components = new System.ComponentModel.Container();
            this.listNetInf = new System.Windows.Forms.ListView();
            this.TabCtrl = new System.Windows.Forms.TabControl();
            this.tabPage8 = new System.Windows.Forms.TabPage();
            this.listConnStat = new System.Windows.Forms.ListView();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage7 = new System.Windows.Forms.TabPage();
            this.listDevInf = new System.Windows.Forms.ListView();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.btRefIac = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.cboIacRng = new System.Windows.Forms.ComboBox();
            this.ListIacRng = new System.Windows.Forms.ListView();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.btRefVac = new System.Windows.Forms.Button();
            this.ListVacRng = new System.Windows.Forms.ListView();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.button1 = new System.Windows.Forms.Button();
            this.btRefVdc = new System.Windows.Forms.Button();
            this.btVdcCal = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.cboSelVdc = new System.Windows.Forms.ComboBox();
            this.ListVdcRng = new System.Windows.Forms.ListView();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.btTempCal = new System.Windows.Forms.Button();
            this.btRefRtd = new System.Windows.Forms.Button();
            this.ListTempRng = new System.Windows.Forms.ListView();
            this.tabPage6 = new System.Windows.Forms.TabPage();
            this.cboRngEisCal = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btRefEisCal = new System.Windows.Forms.Button();
            this.ListCal = new System.Windows.Forms.ListView();
            this.menuConfig = new System.Windows.Forms.MenuStrip();
            this.menucfg_file = new System.Windows.Forms.ToolStripMenuItem();
            this.menucfg_loadfile = new System.Windows.Forms.ToolStripMenuItem();
            this.menucfg_savefile = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.menucfg_SetDataFormat = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.editDummyResistorInfoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator8 = new System.Windows.Forms.ToolStripSeparator();
            this.menucfg_close = new System.Windows.Forms.ToolStripMenuItem();
            this.menucfg_sif = new System.Windows.Forms.ToolStripMenuItem();
            this.menucfg_loadsif = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.menuCfgInitLanInfo = new System.Windows.Forms.ToolStripMenuItem();
            this.menuCfgLoadLanInfo = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.menuCfgApplyLanInfo = new System.Windows.Forms.ToolStripMenuItem();
            this.menuCfgRanges = new System.Windows.Forms.ToolStripMenuItem();
            this.menuCfgInitRngInfo = new System.Windows.Forms.ToolStripMenuItem();
            this.menucfg_loadrnginfo = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.menucfg_applyrangeinfo = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator6 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripSeparator7 = new System.Windows.Forms.ToolStripSeparator();
            this.menuCfgInitRngInfoZIM = new System.Windows.Forms.ToolStripMenuItem();
            this.menuWebService = new System.Windows.Forms.ToolStripMenuItem();
            this.menuWebService_Setup = new System.Windows.Forms.ToolStripMenuItem();
            this.testSineToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.label2 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.mInductor = new System.Windows.Forms.TextBox();
            this.mPower = new System.Windows.Forms.TextBox();
            this.TabCtrl.SuspendLayout();
            this.tabPage8.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage7.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.tabPage5.SuspendLayout();
            this.tabPage6.SuspendLayout();
            this.menuConfig.SuspendLayout();
            this.SuspendLayout();
            // 
            // listNetInf
            // 
            this.listNetInf.Location = new System.Drawing.Point(19, 17);
            this.listNetInf.Name = "listNetInf";
            this.listNetInf.Size = new System.Drawing.Size(348, 191);
            this.listNetInf.TabIndex = 5;
            this.listNetInf.UseCompatibleStateImageBehavior = false;
            this.listNetInf.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.listNetInf_MouseDoubleClick);
            // 
            // TabCtrl
            // 
            this.TabCtrl.Controls.Add(this.tabPage8);
            this.TabCtrl.Controls.Add(this.tabPage1);
            this.TabCtrl.Controls.Add(this.tabPage7);
            this.TabCtrl.Controls.Add(this.tabPage2);
            this.TabCtrl.Controls.Add(this.tabPage3);
            this.TabCtrl.Controls.Add(this.tabPage4);
            this.TabCtrl.Controls.Add(this.tabPage5);
            this.TabCtrl.Controls.Add(this.tabPage6);
            this.TabCtrl.Location = new System.Drawing.Point(12, 43);
            this.TabCtrl.Multiline = true;
            this.TabCtrl.Name = "TabCtrl";
            this.TabCtrl.SelectedIndex = 0;
            this.TabCtrl.Size = new System.Drawing.Size(395, 271);
            this.TabCtrl.TabIndex = 7;
            this.TabCtrl.SelectedIndexChanged += new System.EventHandler(this.TabCtrl_SelectedIndexChanged);
            // 
            // tabPage8
            // 
            this.tabPage8.Controls.Add(this.listConnStat);
            this.tabPage8.Location = new System.Drawing.Point(4, 42);
            this.tabPage8.Name = "tabPage8";
            this.tabPage8.Size = new System.Drawing.Size(387, 225);
            this.tabPage8.TabIndex = 7;
            this.tabPage8.Text = "Connection";
            this.tabPage8.UseVisualStyleBackColor = true;
            // 
            // listConnStat
            // 
            this.listConnStat.Location = new System.Drawing.Point(14, 31);
            this.listConnStat.Name = "listConnStat";
            this.listConnStat.Size = new System.Drawing.Size(354, 175);
            this.listConnStat.TabIndex = 6;
            this.listConnStat.UseCompatibleStateImageBehavior = false;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.listNetInf);
            this.tabPage1.Location = new System.Drawing.Point(4, 23);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(387, 244);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Network";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage7
            // 
            this.tabPage7.Controls.Add(this.listDevInf);
            this.tabPage7.Location = new System.Drawing.Point(4, 23);
            this.tabPage7.Name = "tabPage7";
            this.tabPage7.Size = new System.Drawing.Size(387, 244);
            this.tabPage7.TabIndex = 6;
            this.tabPage7.Text = "Device";
            this.tabPage7.UseVisualStyleBackColor = true;
            // 
            // listDevInf
            // 
            this.listDevInf.Location = new System.Drawing.Point(23, 24);
            this.listDevInf.Name = "listDevInf";
            this.listDevInf.Size = new System.Drawing.Size(341, 183);
            this.listDevInf.TabIndex = 7;
            this.listDevInf.UseCompatibleStateImageBehavior = false;
            this.listDevInf.SelectedIndexChanged += new System.EventHandler(this.listDevInf_SelectedIndexChanged);
            this.listDevInf.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.listDevInf_MouseDoubleClick);
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.btRefIac);
            this.tabPage2.Controls.Add(this.label3);
            this.tabPage2.Controls.Add(this.cboIacRng);
            this.tabPage2.Controls.Add(this.ListIacRng);
            this.tabPage2.Location = new System.Drawing.Point(4, 23);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(387, 244);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Range[Iac]";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // btRefIac
            // 
            this.btRefIac.Location = new System.Drawing.Point(298, 185);
            this.btRefIac.Name = "btRefIac";
            this.btRefIac.Size = new System.Drawing.Size(67, 27);
            this.btRefIac.TabIndex = 14;
            this.btRefIac.Text = "Refresh";
            this.btRefIac.UseVisualStyleBackColor = true;
            this.btRefIac.Click += new System.EventHandler(this.btRefIac_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(17, 19);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(105, 14);
            this.label3.TabIndex = 2;
            this.label3.Text = "Range Selected";
            // 
            // cboIacRng
            // 
            this.cboIacRng.FormattingEnabled = true;
            this.cboIacRng.Items.AddRange(new object[] {
            "2A",
            "0.2A",
            "0.02A",
            "0.002A"});
            this.cboIacRng.Location = new System.Drawing.Point(128, 15);
            this.cboIacRng.Name = "cboIacRng";
            this.cboIacRng.Size = new System.Drawing.Size(99, 22);
            this.cboIacRng.TabIndex = 1;
            this.cboIacRng.SelectedIndexChanged += new System.EventHandler(this.cboIacRng_SelectedIndexChanged);
            // 
            // ListIacRng
            // 
            this.ListIacRng.Location = new System.Drawing.Point(19, 45);
            this.ListIacRng.Name = "ListIacRng";
            this.ListIacRng.Size = new System.Drawing.Size(349, 132);
            this.ListIacRng.TabIndex = 0;
            this.ListIacRng.UseCompatibleStateImageBehavior = false;
            this.ListIacRng.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.ListIacRng_MouseDoubleClick);
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.btRefVac);
            this.tabPage3.Controls.Add(this.ListVacRng);
            this.tabPage3.Location = new System.Drawing.Point(4, 23);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Size = new System.Drawing.Size(387, 244);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Range[Vac]";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // btRefVac
            // 
            this.btRefVac.Location = new System.Drawing.Point(296, 185);
            this.btRefVac.Name = "btRefVac";
            this.btRefVac.Size = new System.Drawing.Size(67, 27);
            this.btRefVac.TabIndex = 15;
            this.btRefVac.Text = "Refresh";
            this.btRefVac.UseVisualStyleBackColor = true;
            this.btRefVac.Click += new System.EventHandler(this.btRefVac_Click);
            // 
            // ListVacRng
            // 
            this.ListVacRng.Location = new System.Drawing.Point(23, 26);
            this.ListVacRng.Name = "ListVacRng";
            this.ListVacRng.Size = new System.Drawing.Size(344, 153);
            this.ListVacRng.TabIndex = 1;
            this.ListVacRng.UseCompatibleStateImageBehavior = false;
            this.ListVacRng.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.ListVacRng_MouseDoubleClick);
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.button1);
            this.tabPage4.Controls.Add(this.btRefVdc);
            this.tabPage4.Controls.Add(this.btVdcCal);
            this.tabPage4.Controls.Add(this.label4);
            this.tabPage4.Controls.Add(this.cboSelVdc);
            this.tabPage4.Controls.Add(this.ListVdcRng);
            this.tabPage4.Location = new System.Drawing.Point(4, 42);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Size = new System.Drawing.Size(387, 225);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Range[Vdc]";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(20, 184);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(117, 27);
            this.button1.TabIndex = 16;
            this.button1.Text = "Set max. range";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btRefVdc
            // 
            this.btRefVdc.Location = new System.Drawing.Point(296, 184);
            this.btRefVdc.Name = "btRefVdc";
            this.btRefVdc.Size = new System.Drawing.Size(67, 27);
            this.btRefVdc.TabIndex = 15;
            this.btRefVdc.Text = "Refresh";
            this.btRefVdc.UseVisualStyleBackColor = true;
            this.btRefVdc.Click += new System.EventHandler(this.btRefVdc_Click);
            // 
            // btVdcCal
            // 
            this.btVdcCal.Location = new System.Drawing.Point(153, 184);
            this.btVdcCal.Name = "btVdcCal";
            this.btVdcCal.Size = new System.Drawing.Size(92, 27);
            this.btVdcCal.TabIndex = 14;
            this.btVdcCal.Text = "Calibration";
            this.btVdcCal.UseVisualStyleBackColor = true;
            this.btVdcCal.Click += new System.EventHandler(this.btVdcCal_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(19, 15);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 14);
            this.label4.TabIndex = 4;
            this.label4.Text = "Range Selected";
            // 
            // cboSelVdc
            // 
            this.cboSelVdc.FormattingEnabled = true;
            this.cboSelVdc.Items.AddRange(new object[] {
            "X1",
            "X0.1"});
            this.cboSelVdc.Location = new System.Drawing.Point(131, 10);
            this.cboSelVdc.Name = "cboSelVdc";
            this.cboSelVdc.Size = new System.Drawing.Size(73, 22);
            this.cboSelVdc.TabIndex = 3;
            this.cboSelVdc.SelectedIndexChanged += new System.EventHandler(this.cboSelVdc_SelectedIndexChanged);
            // 
            // ListVdcRng
            // 
            this.ListVdcRng.Location = new System.Drawing.Point(21, 43);
            this.ListVdcRng.Name = "ListVdcRng";
            this.ListVdcRng.Size = new System.Drawing.Size(345, 133);
            this.ListVdcRng.TabIndex = 2;
            this.ListVdcRng.UseCompatibleStateImageBehavior = false;
            this.ListVdcRng.SelectedIndexChanged += new System.EventHandler(this.ListVdcRng_SelectedIndexChanged);
            this.ListVdcRng.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.ListVdcRng_MouseDoubleClick);
            // 
            // tabPage5
            // 
            this.tabPage5.Controls.Add(this.btTempCal);
            this.tabPage5.Controls.Add(this.btRefRtd);
            this.tabPage5.Controls.Add(this.ListTempRng);
            this.tabPage5.Location = new System.Drawing.Point(4, 42);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Size = new System.Drawing.Size(387, 225);
            this.tabPage5.TabIndex = 4;
            this.tabPage5.Text = "Range[Temp]";
            this.tabPage5.UseVisualStyleBackColor = true;
            // 
            // btTempCal
            // 
            this.btTempCal.Location = new System.Drawing.Point(129, 184);
            this.btTempCal.Name = "btTempCal";
            this.btTempCal.Size = new System.Drawing.Size(105, 27);
            this.btTempCal.TabIndex = 15;
            this.btTempCal.Text = "Calibration";
            this.btTempCal.UseVisualStyleBackColor = true;
            this.btTempCal.Click += new System.EventHandler(this.btTempCal_Click);
            // 
            // btRefRtd
            // 
            this.btRefRtd.Location = new System.Drawing.Point(299, 184);
            this.btRefRtd.Name = "btRefRtd";
            this.btRefRtd.Size = new System.Drawing.Size(67, 27);
            this.btRefRtd.TabIndex = 12;
            this.btRefRtd.Text = "Refresh";
            this.btRefRtd.UseVisualStyleBackColor = true;
            this.btRefRtd.Click += new System.EventHandler(this.btRefRtd_Click);
            // 
            // ListTempRng
            // 
            this.ListTempRng.Location = new System.Drawing.Point(20, 21);
            this.ListTempRng.Name = "ListTempRng";
            this.ListTempRng.Size = new System.Drawing.Size(346, 149);
            this.ListTempRng.TabIndex = 3;
            this.ListTempRng.UseCompatibleStateImageBehavior = false;
            this.ListTempRng.SelectedIndexChanged += new System.EventHandler(this.ListTempRng_SelectedIndexChanged);
            this.ListTempRng.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.ListTempRng_MouseDoubleClick);
            // 
            // tabPage6
            // 
            this.tabPage6.Controls.Add(this.mPower);
            this.tabPage6.Controls.Add(this.mInductor);
            this.tabPage6.Controls.Add(this.label5);
            this.tabPage6.Controls.Add(this.label2);
            this.tabPage6.Controls.Add(this.cboRngEisCal);
            this.tabPage6.Controls.Add(this.label1);
            this.tabPage6.Controls.Add(this.btRefEisCal);
            this.tabPage6.Controls.Add(this.ListCal);
            this.tabPage6.Location = new System.Drawing.Point(4, 42);
            this.tabPage6.Name = "tabPage6";
            this.tabPage6.Size = new System.Drawing.Size(387, 225);
            this.tabPage6.TabIndex = 5;
            this.tabPage6.Text = "EIS Cal. and Safety";
            this.tabPage6.UseVisualStyleBackColor = true;
            // 
            // cboRngEisCal
            // 
            this.cboRngEisCal.FormattingEnabled = true;
            this.cboRngEisCal.Items.AddRange(new object[] {
            "2A",
            "400mA",
            "200mA",
            "40mA",
            "20mA ",
            "4mA",
            "2mA",
            "400uA"});
            this.cboRngEisCal.Location = new System.Drawing.Point(129, 15);
            this.cboRngEisCal.Name = "cboRngEisCal";
            this.cboRngEisCal.Size = new System.Drawing.Size(103, 22);
            this.cboRngEisCal.TabIndex = 15;
            this.cboRngEisCal.SelectedIndexChanged += new System.EventHandler(this.cboRngEisCal_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(105, 14);
            this.label1.TabIndex = 14;
            this.label1.Text = "Range Selected";
            // 
            // btRefEisCal
            // 
            this.btRefEisCal.Location = new System.Drawing.Point(297, 12);
            this.btRefEisCal.Name = "btRefEisCal";
            this.btRefEisCal.Size = new System.Drawing.Size(67, 27);
            this.btRefEisCal.TabIndex = 13;
            this.btRefEisCal.Text = "Refresh";
            this.btRefEisCal.UseVisualStyleBackColor = true;
            this.btRefEisCal.Click += new System.EventHandler(this.btRefEisCal_Click);
            // 
            // ListCal
            // 
            this.ListCal.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable;
            this.ListCal.Location = new System.Drawing.Point(16, 43);
            this.ListCal.Name = "ListCal";
            this.ListCal.Size = new System.Drawing.Size(347, 145);
            this.ListCal.TabIndex = 4;
            this.ListCal.UseCompatibleStateImageBehavior = false;
            this.ListCal.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.ListCal_MouseDoubleClick);
            // 
            // menuConfig
            // 
            this.menuConfig.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menucfg_file,
            this.menucfg_sif,
            this.menuCfgRanges,
            this.menuWebService,
            this.testSineToolStripMenuItem});
            this.menuConfig.Location = new System.Drawing.Point(0, 0);
            this.menuConfig.Name = "menuConfig";
            this.menuConfig.Size = new System.Drawing.Size(407, 24);
            this.menuConfig.TabIndex = 13;
            this.menuConfig.Text = "menuStrip1";
            // 
            // menucfg_file
            // 
            this.menucfg_file.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menucfg_loadfile,
            this.menucfg_savefile,
            this.toolStripSeparator1,
            this.menucfg_SetDataFormat,
            this.toolStripSeparator4,
            this.editDummyResistorInfoToolStripMenuItem,
            this.toolStripSeparator8,
            this.menucfg_close});
            this.menucfg_file.Name = "menucfg_file";
            this.menucfg_file.Size = new System.Drawing.Size(37, 20);
            this.menucfg_file.Text = "&File";
            // 
            // menucfg_loadfile
            // 
            this.menucfg_loadfile.Name = "menucfg_loadfile";
            this.menucfg_loadfile.Size = new System.Drawing.Size(315, 22);
            this.menucfg_loadfile.Text = "Load the ranges Information from File.";
            this.menucfg_loadfile.Click += new System.EventHandler(this.menucfg_loadfile_Click);
            // 
            // menucfg_savefile
            // 
            this.menucfg_savefile.Name = "menucfg_savefile";
            this.menucfg_savefile.Size = new System.Drawing.Size(315, 22);
            this.menucfg_savefile.Text = "Saves the information of the ranges as a file.";
            this.menucfg_savefile.Click += new System.EventHandler(this.menucfg_savefile_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(312, 6);
            // 
            // menucfg_SetDataFormat
            // 
            this.menucfg_SetDataFormat.Enabled = false;
            this.menucfg_SetDataFormat.Name = "menucfg_SetDataFormat";
            this.menucfg_SetDataFormat.Size = new System.Drawing.Size(315, 22);
            this.menucfg_SetDataFormat.Text = "Set data storage format.";
            this.menucfg_SetDataFormat.Click += new System.EventHandler(this.menucfg_SetDataFormat_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(312, 6);
            // 
            // editDummyResistorInfoToolStripMenuItem
            // 
            this.editDummyResistorInfoToolStripMenuItem.Name = "editDummyResistorInfoToolStripMenuItem";
            this.editDummyResistorInfoToolStripMenuItem.Size = new System.Drawing.Size(315, 22);
            this.editDummyResistorInfoToolStripMenuItem.Text = "Edit dummy resistor info.";
            this.editDummyResistorInfoToolStripMenuItem.Click += new System.EventHandler(this.editDummyResistorInfoToolStripMenuItem_Click);
            // 
            // toolStripSeparator8
            // 
            this.toolStripSeparator8.Name = "toolStripSeparator8";
            this.toolStripSeparator8.Size = new System.Drawing.Size(312, 6);
            // 
            // menucfg_close
            // 
            this.menucfg_close.Name = "menucfg_close";
            this.menucfg_close.Size = new System.Drawing.Size(315, 22);
            this.menucfg_close.Text = "Close";
            this.menucfg_close.Click += new System.EventHandler(this.menucfg_close_Click);
            // 
            // menucfg_sif
            // 
            this.menucfg_sif.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menucfg_loadsif,
            this.toolStripSeparator2,
            this.menuCfgInitLanInfo,
            this.menuCfgLoadLanInfo,
            this.toolStripSeparator5,
            this.menuCfgApplyLanInfo});
            this.menucfg_sif.Name = "menucfg_sif";
            this.menucfg_sif.Size = new System.Drawing.Size(70, 20);
            this.menucfg_sif.Text = "&SIF Board";
            // 
            // menucfg_loadsif
            // 
            this.menucfg_loadsif.Name = "menucfg_loadsif";
            this.menucfg_loadsif.Size = new System.Drawing.Size(351, 22);
            this.menucfg_loadsif.Text = "Load the device Information from SIF.";
            this.menucfg_loadsif.Click += new System.EventHandler(this.menucfg_loadsif_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(348, 6);
            // 
            // menuCfgInitLanInfo
            // 
            this.menuCfgInitLanInfo.Name = "menuCfgInitLanInfo";
            this.menuCfgInitLanInfo.Size = new System.Drawing.Size(351, 22);
            this.menuCfgInitLanInfo.Text = "Initialize the Ethernet configuration of the SIF.";
            this.menuCfgInitLanInfo.Click += new System.EventHandler(this.menuCfgInitLanInfo_Click);
            // 
            // menuCfgLoadLanInfo
            // 
            this.menuCfgLoadLanInfo.Name = "menuCfgLoadLanInfo";
            this.menuCfgLoadLanInfo.Size = new System.Drawing.Size(351, 22);
            this.menuCfgLoadLanInfo.Text = "Load the Ethernet configuration from the SIF.";
            this.menuCfgLoadLanInfo.Click += new System.EventHandler(this.menuCfgLoadLanInfo_Click);
            // 
            // toolStripSeparator5
            // 
            this.toolStripSeparator5.Name = "toolStripSeparator5";
            this.toolStripSeparator5.Size = new System.Drawing.Size(348, 6);
            // 
            // menuCfgApplyLanInfo
            // 
            this.menuCfgApplyLanInfo.Name = "menuCfgApplyLanInfo";
            this.menuCfgApplyLanInfo.Size = new System.Drawing.Size(351, 22);
            this.menuCfgApplyLanInfo.Text = "Apply the current Ethernet configuration to the SIF.";
            this.menuCfgApplyLanInfo.Click += new System.EventHandler(this.menuCfgApplyLanInfo_Click);
            // 
            // menuCfgRanges
            // 
            this.menuCfgRanges.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuCfgInitRngInfo,
            this.menucfg_loadrnginfo,
            this.toolStripSeparator3,
            this.menucfg_applyrangeinfo,
            this.toolStripSeparator6,
            this.toolStripSeparator7,
            this.menuCfgInitRngInfoZIM});
            this.menuCfgRanges.Name = "menuCfgRanges";
            this.menuCfgRanges.Size = new System.Drawing.Size(57, 20);
            this.menuCfgRanges.Text = "&Ranges";
            // 
            // menuCfgInitRngInfo
            // 
            this.menuCfgInitRngInfo.Name = "menuCfgInitRngInfo";
            this.menuCfgInitRngInfo.Size = new System.Drawing.Size(369, 22);
            this.menuCfgInitRngInfo.Text = "Initialize ranges Information in SIF.";
            this.menuCfgInitRngInfo.Click += new System.EventHandler(this.menuCfgInitRngInfo_Click);
            // 
            // menucfg_loadrnginfo
            // 
            this.menucfg_loadrnginfo.Name = "menucfg_loadrnginfo";
            this.menucfg_loadrnginfo.Size = new System.Drawing.Size(369, 22);
            this.menucfg_loadrnginfo.Text = "Load the ranges Information from SIF.";
            this.menucfg_loadrnginfo.Click += new System.EventHandler(this.menucfg_loadrnginfo_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(366, 6);
            // 
            // menucfg_applyrangeinfo
            // 
            this.menucfg_applyrangeinfo.Name = "menucfg_applyrangeinfo";
            this.menucfg_applyrangeinfo.Size = new System.Drawing.Size(369, 22);
            this.menucfg_applyrangeinfo.Text = "Apply the information of the current ranges to the SIF.";
            this.menucfg_applyrangeinfo.Click += new System.EventHandler(this.menucfg_applyrangeinfo_Click);
            // 
            // toolStripSeparator6
            // 
            this.toolStripSeparator6.Name = "toolStripSeparator6";
            this.toolStripSeparator6.Size = new System.Drawing.Size(366, 6);
            // 
            // toolStripSeparator7
            // 
            this.toolStripSeparator7.Name = "toolStripSeparator7";
            this.toolStripSeparator7.Size = new System.Drawing.Size(366, 6);
            // 
            // menuCfgInitRngInfoZIM
            // 
            this.menuCfgInitRngInfoZIM.Name = "menuCfgInitRngInfoZIM";
            this.menuCfgInitRngInfoZIM.Size = new System.Drawing.Size(369, 22);
            this.menuCfgInitRngInfoZIM.Text = "Initialize ranges Information in ZIM.";
            this.menuCfgInitRngInfoZIM.Click += new System.EventHandler(this.menuCfgInitRngInfoZIM_Click);
            // 
            // menuWebService
            // 
            this.menuWebService.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuWebService_Setup});
            this.menuWebService.Name = "menuWebService";
            this.menuWebService.Size = new System.Drawing.Size(85, 20);
            this.menuWebService.Text = "&Web Service";
            // 
            // menuWebService_Setup
            // 
            this.menuWebService_Setup.Name = "menuWebService_Setup";
            this.menuWebService_Setup.Size = new System.Drawing.Size(248, 22);
            this.menuWebService_Setup.Text = "Set up the web site information.";
            this.menuWebService_Setup.Click += new System.EventHandler(this.menuWebService_Setup_Click);
            // 
            // testSineToolStripMenuItem
            // 
            this.testSineToolStripMenuItem.Name = "testSineToolStripMenuItem";
            this.testSineToolStripMenuItem.Size = new System.Drawing.Size(67, 20);
            this.testSineToolStripMenuItem.Text = "Test Sine";
            this.testSineToolStripMenuItem.Click += new System.EventHandler(this.testSineToolStripMenuItem_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 200);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(98, 14);
            this.label2.TabIndex = 16;
            this.label2.Text = "Inductance(H)";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(187, 199);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(112, 14);
            this.label5.TabIndex = 17;
            this.label5.Text = "Safety Power(W)";
            // 
            // mInductor
            // 
            this.mInductor.Location = new System.Drawing.Point(109, 195);
            this.mInductor.Name = "mInductor";
            this.mInductor.ReadOnly = true;
            this.mInductor.Size = new System.Drawing.Size(73, 22);
            this.mInductor.TabIndex = 18;
            this.mInductor.TextChanged += new System.EventHandler(this.mInductor_TextChanged);
            this.mInductor.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.mInductor_MouseDoubleClick);
            // 
            // mPower
            // 
            this.mPower.Location = new System.Drawing.Point(299, 195);
            this.mPower.Name = "mPower";
            this.mPower.ReadOnly = true;
            this.mPower.Size = new System.Drawing.Size(65, 22);
            this.mPower.TabIndex = 19;
            // 
            // frmConfig
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(407, 321);
            this.Controls.Add(this.TabCtrl);
            this.Controls.Add(this.menuConfig);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MainMenuStrip = this.menuConfig;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmConfig";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Configuration";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmConfig_FormClosing);
            this.Load += new System.EventHandler(this.frmConfig_Load);
            this.TabCtrl.ResumeLayout(false);
            this.tabPage8.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage7.ResumeLayout(false);
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.tabPage3.ResumeLayout(false);
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.tabPage5.ResumeLayout(false);
            this.tabPage6.ResumeLayout(false);
            this.tabPage6.PerformLayout();
            this.menuConfig.ResumeLayout(false);
            this.menuConfig.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ListView listNetInf;
        private System.Windows.Forms.TabControl TabCtrl;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.TabPage tabPage6;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboIacRng;
        private System.Windows.Forms.ListView ListIacRng;
        private System.Windows.Forms.ListView ListVacRng;
        private System.Windows.Forms.ListView ListVdcRng;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cboSelVdc;
        private System.Windows.Forms.ListView ListTempRng;
        private System.Windows.Forms.TabPage tabPage7;
        private System.Windows.Forms.ListView listDevInf;
        private System.Windows.Forms.ListView ListCal;
        private System.Windows.Forms.MenuStrip menuConfig;
        private System.Windows.Forms.ToolStripMenuItem menucfg_file;
        private System.Windows.Forms.ToolStripMenuItem menucfg_loadfile;
        private System.Windows.Forms.ToolStripMenuItem menucfg_savefile;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem menucfg_close;
        private System.Windows.Forms.ToolStripMenuItem menucfg_sif;
        private System.Windows.Forms.ToolStripMenuItem menucfg_loadsif;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.Button btRefRtd;
        private System.Windows.Forms.Button btRefEisCal;
        private System.Windows.Forms.Button btRefIac;
        private System.Windows.Forms.Button btRefVac;
        private System.Windows.Forms.ToolStripMenuItem menuCfgInitLanInfo;
        private System.Windows.Forms.ToolStripMenuItem menuCfgLoadLanInfo;
        private System.Windows.Forms.ToolStripMenuItem menuCfgApplyLanInfo;
        private System.Windows.Forms.ToolStripMenuItem menuCfgRanges;
        private System.Windows.Forms.ToolStripMenuItem menuCfgInitRngInfo;
        private System.Windows.Forms.ToolStripMenuItem menucfg_loadrnginfo;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripMenuItem menucfg_applyrangeinfo;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
        private System.Windows.Forms.TabPage tabPage8;
        private System.Windows.Forms.ListView listConnStat;
        private System.Windows.Forms.Button btVdcCal;
        private System.Windows.Forms.Button btRefVdc;
        private System.Windows.Forms.Button btTempCal;
        private System.Windows.Forms.ToolStripMenuItem menuWebService;
        private System.Windows.Forms.ToolStripMenuItem menuWebService_Setup;
        private System.Windows.Forms.ComboBox cboRngEisCal;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolStripMenuItem menucfg_SetDataFormat;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator6;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator7;
        private System.Windows.Forms.ToolStripMenuItem menuCfgInitRngInfoZIM;
        private System.Windows.Forms.ToolStripMenuItem testSineToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem editDummyResistorInfoToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator8;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox mPower;
        private System.Windows.Forms.TextBox mInductor;
    }
}