namespace ZiveLab.ZM
{
    partial class InfomationGrid
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(InfomationGrid));
            this.treeView1 = new System.Windows.Forms.TreeView();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.clearCalibrationItemsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addCalibrationItemsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addCalibrationCheckedItemsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.calibrationStartToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.acculacyCheckStartToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.propertyGrid1 = new System.Windows.Forms.PropertyGrid();
            this.splitter1 = new System.Windows.Forms.Splitter();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripSplitButton3 = new System.Windows.Forms.ToolStripSplitButton();
            this.toolStripVdcX1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripVdcX10 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripCalibTemp = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripzerophase = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripCalib0 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripCalib1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripCalib2 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripCalib3 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripSeparator6 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripControlDevice = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripCheckHT = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripTest = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripSplitButton2 = new System.Windows.Forms.ToolStripSplitButton();
            this.toolStripAppDummy = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripInitInfo = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripRefreshbydevice = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator7 = new System.Windows.Forms.ToolStripSeparator();
            this.ToolStripApplyDev = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator8 = new System.Windows.Forms.ToolStripSeparator();
            this.ToolStripWriteROM = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSplitButton1 = new System.Windows.Forms.ToolStripSplitButton();
            this.loadChFileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.saveChFileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.contextMenuStrip1.SuspendLayout();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // treeView1
            // 
            this.treeView1.CheckBoxes = true;
            this.treeView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.treeView1.Location = new System.Drawing.Point(0, 25);
            this.treeView1.Name = "treeView1";
            this.treeView1.ShowNodeToolTips = true;
            this.treeView1.Size = new System.Drawing.Size(134, 322);
            this.treeView1.TabIndex = 0;
            this.treeView1.AfterCheck += new System.Windows.Forms.TreeViewEventHandler(this.treeView1_AfterCheck);
            this.treeView1.DrawNode += new System.Windows.Forms.DrawTreeNodeEventHandler(this.treeView1_DrawNode);
            this.treeView1.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.treeView1_AfterSelect);
            this.treeView1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.treeView1_MouseDown);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.clearCalibrationItemsToolStripMenuItem,
            this.addCalibrationItemsToolStripMenuItem,
            this.addCalibrationCheckedItemsToolStripMenuItem,
            this.toolStripSeparator2,
            this.calibrationStartToolStripMenuItem,
            this.acculacyCheckStartToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(246, 120);
            // 
            // clearCalibrationItemsToolStripMenuItem
            // 
            this.clearCalibrationItemsToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("clearCalibrationItemsToolStripMenuItem.Image")));
            this.clearCalibrationItemsToolStripMenuItem.Name = "clearCalibrationItemsToolStripMenuItem";
            this.clearCalibrationItemsToolStripMenuItem.Size = new System.Drawing.Size(245, 22);
            this.clearCalibrationItemsToolStripMenuItem.Text = "Clear calibration item(s)";
            this.clearCalibrationItemsToolStripMenuItem.Click += new System.EventHandler(this.clearCalibrationItemsToolStripMenuItem_Click);
            // 
            // addCalibrationItemsToolStripMenuItem
            // 
            this.addCalibrationItemsToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("addCalibrationItemsToolStripMenuItem.Image")));
            this.addCalibrationItemsToolStripMenuItem.Name = "addCalibrationItemsToolStripMenuItem";
            this.addCalibrationItemsToolStripMenuItem.Size = new System.Drawing.Size(245, 22);
            this.addCalibrationItemsToolStripMenuItem.Text = "Add calibration item(s)";
            this.addCalibrationItemsToolStripMenuItem.Click += new System.EventHandler(this.addCalibrationItemsToolStripMenuItem_Click);
            // 
            // addCalibrationCheckedItemsToolStripMenuItem
            // 
            this.addCalibrationCheckedItemsToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("addCalibrationCheckedItemsToolStripMenuItem.Image")));
            this.addCalibrationCheckedItemsToolStripMenuItem.Name = "addCalibrationCheckedItemsToolStripMenuItem";
            this.addCalibrationCheckedItemsToolStripMenuItem.Size = new System.Drawing.Size(245, 22);
            this.addCalibrationCheckedItemsToolStripMenuItem.Text = "Add calibration checked item(s)";
            this.addCalibrationCheckedItemsToolStripMenuItem.Click += new System.EventHandler(this.addCalibrationCheckedItemsToolStripMenuItem_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(242, 6);
            // 
            // calibrationStartToolStripMenuItem
            // 
            this.calibrationStartToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("calibrationStartToolStripMenuItem.Image")));
            this.calibrationStartToolStripMenuItem.Name = "calibrationStartToolStripMenuItem";
            this.calibrationStartToolStripMenuItem.Size = new System.Drawing.Size(245, 22);
            this.calibrationStartToolStripMenuItem.Text = "Calibration start";
            this.calibrationStartToolStripMenuItem.Click += new System.EventHandler(this.calibrationStartToolStripMenuItem_Click);
            // 
            // acculacyCheckStartToolStripMenuItem
            // 
            this.acculacyCheckStartToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("acculacyCheckStartToolStripMenuItem.Image")));
            this.acculacyCheckStartToolStripMenuItem.Name = "acculacyCheckStartToolStripMenuItem";
            this.acculacyCheckStartToolStripMenuItem.Size = new System.Drawing.Size(245, 22);
            this.acculacyCheckStartToolStripMenuItem.Text = "Accuracy check start";
            this.acculacyCheckStartToolStripMenuItem.Click += new System.EventHandler(this.acculacyCheckStartToolStripMenuItem_Click);
            // 
            // propertyGrid1
            // 
            this.propertyGrid1.BackColor = System.Drawing.SystemColors.Control;
            this.propertyGrid1.CommandsDisabledLinkColor = System.Drawing.SystemColors.ControlDark;
            this.propertyGrid1.Dock = System.Windows.Forms.DockStyle.Right;
            this.propertyGrid1.Font = new System.Drawing.Font("Consolas", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.propertyGrid1.LineColor = System.Drawing.SystemColors.Control;
            this.propertyGrid1.Location = new System.Drawing.Point(138, 0);
            this.propertyGrid1.Name = "propertyGrid1";
            this.propertyGrid1.PropertySort = System.Windows.Forms.PropertySort.NoSort;
            this.propertyGrid1.Size = new System.Drawing.Size(362, 347);
            this.propertyGrid1.TabIndex = 1;
            this.propertyGrid1.Resize += new System.EventHandler(this.propertyGrid1_Resize);
            // 
            // splitter1
            // 
            this.splitter1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.splitter1.Dock = System.Windows.Forms.DockStyle.Right;
            this.splitter1.Location = new System.Drawing.Point(134, 0);
            this.splitter1.Name = "splitter1";
            this.splitter1.Size = new System.Drawing.Size(4, 347);
            this.splitter1.TabIndex = 2;
            this.splitter1.TabStop = false;
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripSplitButton3,
            this.toolStripSeparator1,
            this.toolStripSplitButton2,
            this.toolStripSplitButton1});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.toolStrip1.Size = new System.Drawing.Size(134, 25);
            this.toolStrip1.TabIndex = 3;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolStripSplitButton3
            // 
            this.toolStripSplitButton3.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripSplitButton3.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripVdcX1,
            this.toolStripVdcX10,
            this.toolStripCalibTemp,
            this.toolStripSeparator4,
            this.toolStripzerophase,
            this.toolStripSeparator5,
            this.toolStripCalib0,
            this.toolStripCalib1,
            this.toolStripCalib2,
            this.toolStripCalib3,
            this.toolStripSeparator3,
            this.toolStripSeparator6,
            this.toolStripControlDevice,
            this.toolStripCheckHT,
            this.toolStripTest});
            this.toolStripSplitButton3.Image = ((System.Drawing.Image)(resources.GetObject("toolStripSplitButton3.Image")));
            this.toolStripSplitButton3.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripSplitButton3.Name = "toolStripSplitButton3";
            this.toolStripSplitButton3.Size = new System.Drawing.Size(32, 22);
            this.toolStripSplitButton3.Text = "User function";
            this.toolStripSplitButton3.ToolTipText = "Calibration and testing of devices.";
            this.toolStripSplitButton3.Visible = false;
            // 
            // toolStripVdcX1
            // 
            this.toolStripVdcX1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripVdcX1.Image")));
            this.toolStripVdcX1.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripVdcX1.Name = "toolStripVdcX1";
            this.toolStripVdcX1.Size = new System.Drawing.Size(341, 22);
            this.toolStripVdcX1.Text = "calibration of dc voltage(x1) .";
            this.toolStripVdcX1.Click += new System.EventHandler(this.toolStripVdcX1_Click);
            // 
            // toolStripVdcX10
            // 
            this.toolStripVdcX10.Image = ((System.Drawing.Image)(resources.GetObject("toolStripVdcX10.Image")));
            this.toolStripVdcX10.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripVdcX10.Name = "toolStripVdcX10";
            this.toolStripVdcX10.Size = new System.Drawing.Size(341, 22);
            this.toolStripVdcX10.Text = "calibration of dc voltage(x10) .";
            this.toolStripVdcX10.Click += new System.EventHandler(this.toolStripVdcX10_Click);
            // 
            // toolStripCalibTemp
            // 
            this.toolStripCalibTemp.Image = ((System.Drawing.Image)(resources.GetObject("toolStripCalibTemp.Image")));
            this.toolStripCalibTemp.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripCalibTemp.Name = "toolStripCalibTemp";
            this.toolStripCalibTemp.Size = new System.Drawing.Size(341, 22);
            this.toolStripCalibTemp.Text = "calibration of temperature.";
            this.toolStripCalibTemp.Click += new System.EventHandler(this.toolStripCalibTemp_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(338, 6);
            // 
            // toolStripzerophase
            // 
            this.toolStripzerophase.Image = ((System.Drawing.Image)(resources.GetObject("toolStripzerophase.Image")));
            this.toolStripzerophase.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripzerophase.Name = "toolStripzerophase";
            this.toolStripzerophase.Size = new System.Drawing.Size(341, 22);
            this.toolStripzerophase.Text = "Phase zero degree adjustment at low frequencies.";
            this.toolStripzerophase.Click += new System.EventHandler(this.toolStripzerophase_Click);
            // 
            // toolStripSeparator5
            // 
            this.toolStripSeparator5.Name = "toolStripSeparator5";
            this.toolStripSeparator5.Size = new System.Drawing.Size(338, 6);
            // 
            // toolStripCalib0
            // 
            this.toolStripCalib0.Image = ((System.Drawing.Image)(resources.GetObject("toolStripCalib0.Image")));
            this.toolStripCalib0.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripCalib0.Name = "toolStripCalib0";
            this.toolStripCalib0.Size = new System.Drawing.Size(341, 22);
            this.toolStripCalib0.Text = "EIS Calibration[0].";
            this.toolStripCalib0.Click += new System.EventHandler(this.toolStripCalib0_Click);
            // 
            // toolStripCalib1
            // 
            this.toolStripCalib1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripCalib1.Image")));
            this.toolStripCalib1.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripCalib1.Name = "toolStripCalib1";
            this.toolStripCalib1.Size = new System.Drawing.Size(341, 22);
            this.toolStripCalib1.Text = "EIS Calibration[1].";
            this.toolStripCalib1.Click += new System.EventHandler(this.toolStripCalib1_Click);
            // 
            // toolStripCalib2
            // 
            this.toolStripCalib2.Image = ((System.Drawing.Image)(resources.GetObject("toolStripCalib2.Image")));
            this.toolStripCalib2.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripCalib2.Name = "toolStripCalib2";
            this.toolStripCalib2.Size = new System.Drawing.Size(341, 22);
            this.toolStripCalib2.Text = "EIS Calibration[2].";
            this.toolStripCalib2.Click += new System.EventHandler(this.toolStripCalib2_Click);
            // 
            // toolStripCalib3
            // 
            this.toolStripCalib3.Image = ((System.Drawing.Image)(resources.GetObject("toolStripCalib3.Image")));
            this.toolStripCalib3.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripCalib3.Name = "toolStripCalib3";
            this.toolStripCalib3.Size = new System.Drawing.Size(341, 22);
            this.toolStripCalib3.Text = "EIS Calibration[3].";
            this.toolStripCalib3.Click += new System.EventHandler(this.toolStripCalib3_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(338, 6);
            // 
            // toolStripSeparator6
            // 
            this.toolStripSeparator6.Name = "toolStripSeparator6";
            this.toolStripSeparator6.Size = new System.Drawing.Size(338, 6);
            // 
            // toolStripControlDevice
            // 
            this.toolStripControlDevice.Image = ((System.Drawing.Image)(resources.GetObject("toolStripControlDevice.Image")));
            this.toolStripControlDevice.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripControlDevice.Name = "toolStripControlDevice";
            this.toolStripControlDevice.Size = new System.Drawing.Size(341, 22);
            this.toolStripControlDevice.Text = "Simple device control.";
            this.toolStripControlDevice.Click += new System.EventHandler(this.toolStripControlDevice_Click);
            // 
            // toolStripCheckHT
            // 
            this.toolStripCheckHT.Image = ((System.Drawing.Image)(resources.GetObject("toolStripCheckHT.Image")));
            this.toolStripCheckHT.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripCheckHT.Name = "toolStripCheckHT";
            this.toolStripCheckHT.Size = new System.Drawing.Size(341, 22);
            this.toolStripCheckHT.Text = "Check the temperature limit of the heatsink.";
            this.toolStripCheckHT.Click += new System.EventHandler(this.toolStripCheckHT_Click);
            // 
            // toolStripTest
            // 
            this.toolStripTest.Image = ((System.Drawing.Image)(resources.GetObject("toolStripTest.Image")));
            this.toolStripTest.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripTest.Name = "toolStripTest";
            this.toolStripTest.Size = new System.Drawing.Size(341, 22);
            this.toolStripTest.Text = "EIS test to confirm calibration status.";
            this.toolStripTest.Click += new System.EventHandler(this.toolStripTest_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripSplitButton2
            // 
            this.toolStripSplitButton2.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripSplitButton2.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripAppDummy,
            this.toolStripInitInfo,
            this.ToolStripRefreshbydevice,
            this.toolStripSeparator7,
            this.ToolStripApplyDev,
            this.toolStripSeparator8,
            this.ToolStripWriteROM});
            this.toolStripSplitButton2.Image = ((System.Drawing.Image)(resources.GetObject("toolStripSplitButton2.Image")));
            this.toolStripSplitButton2.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripSplitButton2.Name = "toolStripSplitButton2";
            this.toolStripSplitButton2.Size = new System.Drawing.Size(32, 22);
            this.toolStripSplitButton2.Text = "toolStripSplitButton2";
            this.toolStripSplitButton2.ToolTipText = "Refresh view and data";
            // 
            // toolStripAppDummy
            // 
            this.toolStripAppDummy.Image = ((System.Drawing.Image)(resources.GetObject("toolStripAppDummy.Image")));
            this.toolStripAppDummy.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripAppDummy.Name = "toolStripAppDummy";
            this.toolStripAppDummy.Size = new System.Drawing.Size(343, 22);
            this.toolStripAppDummy.Text = "Applies the set dummy information to the device.";
            this.toolStripAppDummy.Click += new System.EventHandler(this.toolStripAppDummy_Click);
            // 
            // toolStripInitInfo
            // 
            this.toolStripInitInfo.Image = ((System.Drawing.Image)(resources.GetObject("toolStripInitInfo.Image")));
            this.toolStripInitInfo.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.toolStripInitInfo.Name = "toolStripInitInfo";
            this.toolStripInitInfo.Size = new System.Drawing.Size(343, 22);
            this.toolStripInitInfo.Text = "Initialize device information.";
            this.toolStripInitInfo.Click += new System.EventHandler(this.toolStripInitInfo_Click);
            // 
            // ToolStripRefreshbydevice
            // 
            this.ToolStripRefreshbydevice.Image = ((System.Drawing.Image)(resources.GetObject("ToolStripRefreshbydevice.Image")));
            this.ToolStripRefreshbydevice.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.ToolStripRefreshbydevice.Name = "ToolStripRefreshbydevice";
            this.ToolStripRefreshbydevice.Size = new System.Drawing.Size(343, 22);
            this.ToolStripRefreshbydevice.Text = "Reads and displays device information.";
            this.ToolStripRefreshbydevice.Click += new System.EventHandler(this.ToolStripRefreshbydevice_Click);
            // 
            // toolStripSeparator7
            // 
            this.toolStripSeparator7.Name = "toolStripSeparator7";
            this.toolStripSeparator7.Size = new System.Drawing.Size(340, 6);
            // 
            // ToolStripApplyDev
            // 
            this.ToolStripApplyDev.Image = ((System.Drawing.Image)(resources.GetObject("ToolStripApplyDev.Image")));
            this.ToolStripApplyDev.Name = "ToolStripApplyDev";
            this.ToolStripApplyDev.Size = new System.Drawing.Size(343, 22);
            this.ToolStripApplyDev.Text = "Sending information to the device.";
            this.ToolStripApplyDev.Click += new System.EventHandler(this.ToolStripApplyDev_Click);
            // 
            // toolStripSeparator8
            // 
            this.toolStripSeparator8.Name = "toolStripSeparator8";
            this.toolStripSeparator8.Size = new System.Drawing.Size(340, 6);
            // 
            // ToolStripWriteROM
            // 
            this.ToolStripWriteROM.Image = ((System.Drawing.Image)(resources.GetObject("ToolStripWriteROM.Image")));
            this.ToolStripWriteROM.ImageTransparentColor = System.Drawing.Color.Fuchsia;
            this.ToolStripWriteROM.Name = "ToolStripWriteROM";
            this.ToolStripWriteROM.Size = new System.Drawing.Size(343, 22);
            this.ToolStripWriteROM.Text = "Storing information in the device\'s ROM.";
            this.ToolStripWriteROM.Click += new System.EventHandler(this.ToolStripWriteROM_Click);
            // 
            // toolStripSplitButton1
            // 
            this.toolStripSplitButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripSplitButton1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.loadChFileToolStripMenuItem,
            this.saveChFileToolStripMenuItem});
            this.toolStripSplitButton1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripSplitButton1.Image")));
            this.toolStripSplitButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripSplitButton1.Name = "toolStripSplitButton1";
            this.toolStripSplitButton1.Size = new System.Drawing.Size(32, 22);
            this.toolStripSplitButton1.Text = "toolStripSplitButton1";
            this.toolStripSplitButton1.ToolTipText = "process system file .";
            // 
            // loadChFileToolStripMenuItem
            // 
            this.loadChFileToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("loadChFileToolStripMenuItem.Image")));
            this.loadChFileToolStripMenuItem.Name = "loadChFileToolStripMenuItem";
            this.loadChFileToolStripMenuItem.Size = new System.Drawing.Size(297, 22);
            this.loadChFileToolStripMenuItem.Text = "Load from ZIM(Channel) information file.";
            this.loadChFileToolStripMenuItem.Click += new System.EventHandler(this.loadChFileToolStripMenuItem_Click);
            // 
            // saveChFileToolStripMenuItem
            // 
            this.saveChFileToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("saveChFileToolStripMenuItem.Image")));
            this.saveChFileToolStripMenuItem.Name = "saveChFileToolStripMenuItem";
            this.saveChFileToolStripMenuItem.Size = new System.Drawing.Size(297, 22);
            this.saveChFileToolStripMenuItem.Text = "Save as a ZIM(Channel) information file.";
            this.saveChFileToolStripMenuItem.Click += new System.EventHandler(this.saveChFileToolStripMenuItem_Click);
            // 
            // imageList1
            // 
            this.imageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth32Bit;
            this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
            this.imageList1.TransparentColor = System.Drawing.Color.Violet;
            // 
            // InfomationGrid
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.treeView1);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.splitter1);
            this.Controls.Add(this.propertyGrid1);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "InfomationGrid";
            this.Size = new System.Drawing.Size(500, 347);
            this.contextMenuStrip1.ResumeLayout(false);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TreeView treeView1;
        private System.Windows.Forms.PropertyGrid propertyGrid1;
        private System.Windows.Forms.Splitter splitter1;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripSplitButton toolStripSplitButton1;
        private System.Windows.Forms.ToolStripSplitButton toolStripSplitButton2;
        private System.Windows.Forms.ToolStripMenuItem ToolStripWriteROM;
        private System.Windows.Forms.ToolStripMenuItem ToolStripRefreshbydevice;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem clearCalibrationItemsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addCalibrationItemsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addCalibrationCheckedItemsToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem calibrationStartToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem acculacyCheckStartToolStripMenuItem;
        private System.Windows.Forms.ToolStripSplitButton toolStripSplitButton3;
        private System.Windows.Forms.ToolStripMenuItem ToolStripApplyDev;
        private System.Windows.Forms.ToolStripMenuItem toolStripTest;
        private System.Windows.Forms.ToolStripMenuItem loadChFileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem saveChFileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolStripVdcX1;
        private System.Windows.Forms.ToolStripMenuItem toolStripVdcX10;
        private System.Windows.Forms.ToolStripMenuItem toolStripCalibTemp;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripMenuItem toolStripzerophase;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
        private System.Windows.Forms.ToolStripMenuItem toolStripCalib0;
        private System.Windows.Forms.ToolStripMenuItem toolStripCalib1;
        private System.Windows.Forms.ToolStripMenuItem toolStripCalib2;
        private System.Windows.Forms.ToolStripMenuItem toolStripCalib3;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator6;
        private System.Windows.Forms.ToolStripMenuItem toolStripControlDevice;
        private System.Windows.Forms.ToolStripMenuItem toolStripCheckHT;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator7;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator8;
        private System.Windows.Forms.ToolStripMenuItem toolStripInitInfo;
        private System.Windows.Forms.ToolStripMenuItem toolStripAppDummy;
    }
}