namespace ZiveLab.ZM
{
    partial class frmMain
    {
        /// <summary>
        /// 필수 디자이너 변수입니다.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 사용 중인 모든 리소스를 정리합니다.
        /// </summary>
        /// <param name="disposing">관리되는 리소스를 삭제해야 하면 true이고, 그렇지 않으면 false입니다.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 디자이너에서 생성한 코드

        /// <summary>
        /// 디자이너 지원에 필요한 메서드입니다. 
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마세요.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.notifyIcon1 = new System.Windows.Forms.NotifyIcon(this.components);
            this.MainMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.viewHomeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator11 = new System.Windows.Forms.ToolStripSeparator();
            this.realtimeMonitorToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.techniqueToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.graphToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.dataEditorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.batteryParameterToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator13 = new System.Windows.Forms.ToolStripSeparator();
            this.modifyTheDevicesRegistrationToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator12 = new System.Windows.Forms.ToolStripSeparator();
            this.configurationToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.setDefaultWindowToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator19 = new System.Windows.Forms.ToolStripSeparator();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.hgrid = new C1.Win.C1FlexGrid.C1FlexGrid();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.systemToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.modifyTheDevicesRegistrationToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator6 = new System.Windows.Forms.ToolStripSeparator();
            this.batteryParameterToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator9 = new System.Windows.Forms.ToolStripSeparator();
            this.configurationToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator10 = new System.Windows.Forms.ToolStripSeparator();
            this.exitToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.techniqueToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator7 = new System.Windows.Forms.ToolStripSeparator();
            this.graphToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator8 = new System.Windows.Forms.ToolStripSeparator();
            this.dataEditorToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.windowsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.realtimeMonitorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gtip = new System.Windows.Forms.ToolTip(this.components);
            this.btselall = new System.Windows.Forms.Button();
            this.btdeselall = new System.Windows.Forms.Button();
            this.btgrpstart = new System.Windows.Forms.Button();
            this.btgrpstop = new System.Windows.Forms.Button();
            this.btgrpmon = new System.Windows.Forms.Button();
            this.btgrptech = new System.Windows.Forms.Button();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripbtRegist = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator14 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripbtBattPara = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator15 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripbtTech = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator16 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripBtGraph = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator17 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripBtReport = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator18 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripBtRealMon = new System.Windows.Forms.ToolStripButton();
            this.label1 = new System.Windows.Forms.Label();
            this.MainMenu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.hgrid)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // notifyIcon1
            // 
            this.notifyIcon1.ContextMenuStrip = this.MainMenu;
            this.notifyIcon1.Text = "notifyIcon1";
            this.notifyIcon1.Visible = true;
            // 
            // MainMenu
            // 
            this.MainMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.viewHomeToolStripMenuItem,
            this.toolStripSeparator11,
            this.realtimeMonitorToolStripMenuItem1,
            this.toolStripSeparator2,
            this.techniqueToolStripMenuItem,
            this.toolStripSeparator4,
            this.graphToolStripMenuItem,
            this.toolStripSeparator3,
            this.dataEditorToolStripMenuItem,
            this.toolStripSeparator5,
            this.batteryParameterToolStripMenuItem1,
            this.toolStripSeparator13,
            this.modifyTheDevicesRegistrationToolStripMenuItem,
            this.toolStripSeparator12,
            this.configurationToolStripMenuItem1,
            this.toolStripSeparator1,
            this.setDefaultWindowToolStripMenuItem,
            this.toolStripSeparator19,
            this.exitToolStripMenuItem});
            this.MainMenu.Name = "contextMenuStrip1";
            this.MainMenu.Size = new System.Drawing.Size(247, 278);
            // 
            // viewHomeToolStripMenuItem
            // 
            this.viewHomeToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("viewHomeToolStripMenuItem.Image")));
            this.viewHomeToolStripMenuItem.Name = "viewHomeToolStripMenuItem";
            this.viewHomeToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.viewHomeToolStripMenuItem.Text = "Show/Hide &home";
            this.viewHomeToolStripMenuItem.ToolTipText = "Shows or hides the main home window.";
            this.viewHomeToolStripMenuItem.Click += new System.EventHandler(this.viewHomeToolStripMenuItem_Click);
            // 
            // toolStripSeparator11
            // 
            this.toolStripSeparator11.Name = "toolStripSeparator11";
            this.toolStripSeparator11.Size = new System.Drawing.Size(243, 6);
            // 
            // realtimeMonitorToolStripMenuItem1
            // 
            this.realtimeMonitorToolStripMenuItem1.Image = global::ZiveLab.ZM.Properties.Resources.List;
            this.realtimeMonitorToolStripMenuItem1.Name = "realtimeMonitorToolStripMenuItem1";
            this.realtimeMonitorToolStripMenuItem1.Size = new System.Drawing.Size(246, 22);
            this.realtimeMonitorToolStripMenuItem1.Text = "&Realtime monitor";
            this.realtimeMonitorToolStripMenuItem1.ToolTipText = "You can control registered channels or check real-time information.";
            this.realtimeMonitorToolStripMenuItem1.Click += new System.EventHandler(this.realtimeMonitorToolStripMenuItem1_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(243, 6);
            // 
            // techniqueToolStripMenuItem
            // 
            this.techniqueToolStripMenuItem.Image = global::ZiveLab.ZM.Properties.Resources.TestSettings;
            this.techniqueToolStripMenuItem.Name = "techniqueToolStripMenuItem";
            this.techniqueToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.techniqueToolStripMenuItem.Text = "&Technique";
            this.techniqueToolStripMenuItem.ToolTipText = "Create, edit, or register technique files to be used for testing.";
            this.techniqueToolStripMenuItem.Click += new System.EventHandler(this.techniqueToolStripMenuItem_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(243, 6);
            // 
            // graphToolStripMenuItem
            // 
            this.graphToolStripMenuItem.Image = global::ZiveLab.ZM.Properties.Resources.AutoscaleXY;
            this.graphToolStripMenuItem.Name = "graphToolStripMenuItem";
            this.graphToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.graphToolStripMenuItem.Text = "&Graph";
            this.graphToolStripMenuItem.ToolTipText = "Open the test result file as a graph to see the information.";
            this.graphToolStripMenuItem.Click += new System.EventHandler(this.graphToolStripMenuItem_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(243, 6);
            // 
            // dataEditorToolStripMenuItem
            // 
            this.dataEditorToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("dataEditorToolStripMenuItem.Image")));
            this.dataEditorToolStripMenuItem.Name = "dataEditorToolStripMenuItem";
            this.dataEditorToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.dataEditorToolStripMenuItem.Text = "Data &editor";
            this.dataEditorToolStripMenuItem.ToolTipText = "Open the test results file as a report to view the information.";
            this.dataEditorToolStripMenuItem.Click += new System.EventHandler(this.dataEditorToolStripMenuItem_Click);
            // 
            // toolStripSeparator5
            // 
            this.toolStripSeparator5.Name = "toolStripSeparator5";
            this.toolStripSeparator5.Size = new System.Drawing.Size(243, 6);
            // 
            // batteryParameterToolStripMenuItem1
            // 
            this.batteryParameterToolStripMenuItem1.Image = ((System.Drawing.Image)(resources.GetObject("batteryParameterToolStripMenuItem1.Image")));
            this.batteryParameterToolStripMenuItem1.Name = "batteryParameterToolStripMenuItem1";
            this.batteryParameterToolStripMenuItem1.Size = new System.Drawing.Size(246, 22);
            this.batteryParameterToolStripMenuItem1.Text = "&Battery parameter";
            this.batteryParameterToolStripMenuItem1.ToolTipText = "Set parameters for standard information for each battery type.";
            this.batteryParameterToolStripMenuItem1.Visible = false;
            this.batteryParameterToolStripMenuItem1.Click += new System.EventHandler(this.batteryParameterToolStripMenuItem1_Click);
            // 
            // toolStripSeparator13
            // 
            this.toolStripSeparator13.Name = "toolStripSeparator13";
            this.toolStripSeparator13.Size = new System.Drawing.Size(243, 6);
            this.toolStripSeparator13.Visible = false;
            // 
            // modifyTheDevicesRegistrationToolStripMenuItem
            // 
            this.modifyTheDevicesRegistrationToolStripMenuItem.Image = global::ZiveLab.ZM.Properties.Resources.settings_outline;
            this.modifyTheDevicesRegistrationToolStripMenuItem.Name = "modifyTheDevicesRegistrationToolStripMenuItem";
            this.modifyTheDevicesRegistrationToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.modifyTheDevicesRegistrationToolStripMenuItem.Text = "Modify the device\'s &registration.";
            this.modifyTheDevicesRegistrationToolStripMenuItem.ToolTipText = "Registers or unregisters a device to be used in the program with a channel.";
            this.modifyTheDevicesRegistrationToolStripMenuItem.Click += new System.EventHandler(this.modifyTheDevicesRegistrationToolStripMenuItem_Click);
            // 
            // toolStripSeparator12
            // 
            this.toolStripSeparator12.Name = "toolStripSeparator12";
            this.toolStripSeparator12.Size = new System.Drawing.Size(243, 6);
            // 
            // configurationToolStripMenuItem1
            // 
            this.configurationToolStripMenuItem1.Image = ((System.Drawing.Image)(resources.GetObject("configurationToolStripMenuItem1.Image")));
            this.configurationToolStripMenuItem1.Name = "configurationToolStripMenuItem1";
            this.configurationToolStripMenuItem1.Size = new System.Drawing.Size(246, 22);
            this.configurationToolStripMenuItem1.Text = "&Configuration";
            this.configurationToolStripMenuItem1.ToolTipText = "You can check or change information about registered channels, and provide a cali" +
    "bration function.";
            this.configurationToolStripMenuItem1.Click += new System.EventHandler(this.configurationToolStripMenuItem1_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(243, 6);
            // 
            // setDefaultWindowToolStripMenuItem
            // 
            this.setDefaultWindowToolStripMenuItem.Image = global::ZiveLab.ZM.Properties.Resources.Report1;
            this.setDefaultWindowToolStripMenuItem.Name = "setDefaultWindowToolStripMenuItem";
            this.setDefaultWindowToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.setDefaultWindowToolStripMenuItem.Text = "set default window";
            this.setDefaultWindowToolStripMenuItem.ToolTipText = "Information about the position and size of the window is restored to its default " +
    "value.";
            this.setDefaultWindowToolStripMenuItem.Click += new System.EventHandler(this.setDefaultWindowToolStripMenuItem_Click);
            // 
            // toolStripSeparator19
            // 
            this.toolStripSeparator19.Name = "toolStripSeparator19";
            this.toolStripSeparator19.Size = new System.Drawing.Size(243, 6);
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Image = global::ZiveLab.ZM.Properties.Resources.Exit;
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.exitToolStripMenuItem.Text = "E&xit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem1_Click);
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // hgrid
            // 
            this.hgrid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.hgrid.BackColor = System.Drawing.Color.WhiteSmoke;
            this.hgrid.ColumnInfo = "10,1,0,0,0,105,Columns:";
            this.hgrid.ForeColor = System.Drawing.Color.Black;
            this.hgrid.Location = new System.Drawing.Point(1, 82);
            this.hgrid.Name = "hgrid";
            this.hgrid.Rows.DefaultSize = 21;
            this.hgrid.ShowButtons = C1.Win.C1FlexGrid.ShowButtonsEnum.Always;
            this.hgrid.Size = new System.Drawing.Size(1592, 220);
            this.hgrid.StyleInfo = resources.GetString("hgrid.StyleInfo");
            this.hgrid.TabIndex = 1;
            this.hgrid.EnterCell += new System.EventHandler(this.hgrid_EnterCell);
            this.hgrid.AfterEdit += new C1.Win.C1FlexGrid.RowColEventHandler(this.hgrid_AfterEdit);
            this.hgrid.CellChecked += new C1.Win.C1FlexGrid.RowColEventHandler(this.hgrid_CellChecked);
            this.hgrid.Paint += new System.Windows.Forms.PaintEventHandler(this.hgrid_Paint);
            this.hgrid.MouseMove += new System.Windows.Forms.MouseEventHandler(this.hgrid_MouseMove);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.systemToolStripMenuItem,
            this.toolsToolStripMenuItem,
            this.windowsToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1593, 24);
            this.menuStrip1.TabIndex = 3;
            this.menuStrip1.Text = "menuStrip1";
            this.menuStrip1.LocationChanged += new System.EventHandler(this.menuStrip1_LocationChanged);
            this.menuStrip1.SizeChanged += new System.EventHandler(this.menuStrip1_SizeChanged);
            // 
            // systemToolStripMenuItem
            // 
            this.systemToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.modifyTheDevicesRegistrationToolStripMenuItem1,
            this.toolStripSeparator6,
            this.batteryParameterToolStripMenuItem,
            this.toolStripSeparator9,
            this.configurationToolStripMenuItem,
            this.toolStripSeparator10,
            this.exitToolStripMenuItem1});
            this.systemToolStripMenuItem.Name = "systemToolStripMenuItem";
            this.systemToolStripMenuItem.Size = new System.Drawing.Size(58, 20);
            this.systemToolStripMenuItem.Text = "&System";
            // 
            // modifyTheDevicesRegistrationToolStripMenuItem1
            // 
            this.modifyTheDevicesRegistrationToolStripMenuItem1.Image = global::ZiveLab.ZM.Properties.Resources.settings_outline;
            this.modifyTheDevicesRegistrationToolStripMenuItem1.Name = "modifyTheDevicesRegistrationToolStripMenuItem1";
            this.modifyTheDevicesRegistrationToolStripMenuItem1.Size = new System.Drawing.Size(246, 22);
            this.modifyTheDevicesRegistrationToolStripMenuItem1.Text = "Modify the device\'s &registration.";
            this.modifyTheDevicesRegistrationToolStripMenuItem1.ToolTipText = "Registers or unregisters a device to be used in the program with a channel.";
            this.modifyTheDevicesRegistrationToolStripMenuItem1.Click += new System.EventHandler(this.modifyTheDevicesRegistrationToolStripMenuItem1_Click);
            // 
            // toolStripSeparator6
            // 
            this.toolStripSeparator6.Name = "toolStripSeparator6";
            this.toolStripSeparator6.Size = new System.Drawing.Size(243, 6);
            // 
            // batteryParameterToolStripMenuItem
            // 
            this.batteryParameterToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("batteryParameterToolStripMenuItem.Image")));
            this.batteryParameterToolStripMenuItem.Name = "batteryParameterToolStripMenuItem";
            this.batteryParameterToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.batteryParameterToolStripMenuItem.Text = "&Battery parameter";
            this.batteryParameterToolStripMenuItem.ToolTipText = "Set parameters for standard information for each battery type.";
            this.batteryParameterToolStripMenuItem.Visible = false;
            this.batteryParameterToolStripMenuItem.Click += new System.EventHandler(this.batteryParameterToolStripMenuItem_Click);
            // 
            // toolStripSeparator9
            // 
            this.toolStripSeparator9.Name = "toolStripSeparator9";
            this.toolStripSeparator9.Size = new System.Drawing.Size(243, 6);
            this.toolStripSeparator9.Visible = false;
            // 
            // configurationToolStripMenuItem
            // 
            this.configurationToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("configurationToolStripMenuItem.Image")));
            this.configurationToolStripMenuItem.Name = "configurationToolStripMenuItem";
            this.configurationToolStripMenuItem.Size = new System.Drawing.Size(246, 22);
            this.configurationToolStripMenuItem.Text = "&Configuration";
            this.configurationToolStripMenuItem.ToolTipText = "You can check or change information about registered channels, and provide a cali" +
    "bration function.";
            this.configurationToolStripMenuItem.Click += new System.EventHandler(this.configurationToolStripMenuItem_Click);
            // 
            // toolStripSeparator10
            // 
            this.toolStripSeparator10.Name = "toolStripSeparator10";
            this.toolStripSeparator10.Size = new System.Drawing.Size(243, 6);
            // 
            // exitToolStripMenuItem1
            // 
            this.exitToolStripMenuItem1.Image = global::ZiveLab.ZM.Properties.Resources.Exit;
            this.exitToolStripMenuItem1.Name = "exitToolStripMenuItem1";
            this.exitToolStripMenuItem1.Size = new System.Drawing.Size(246, 22);
            this.exitToolStripMenuItem1.Text = "E&xit";
            this.exitToolStripMenuItem1.Click += new System.EventHandler(this.exitToolStripMenuItem1_Click);
            // 
            // toolsToolStripMenuItem
            // 
            this.toolsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.techniqueToolStripMenuItem1,
            this.toolStripSeparator7,
            this.graphToolStripMenuItem1,
            this.toolStripSeparator8,
            this.dataEditorToolStripMenuItem1});
            this.toolsToolStripMenuItem.Name = "toolsToolStripMenuItem";
            this.toolsToolStripMenuItem.Size = new System.Drawing.Size(47, 20);
            this.toolsToolStripMenuItem.Text = "&Tools";
            // 
            // techniqueToolStripMenuItem1
            // 
            this.techniqueToolStripMenuItem1.Image = global::ZiveLab.ZM.Properties.Resources.TestSettings;
            this.techniqueToolStripMenuItem1.Name = "techniqueToolStripMenuItem1";
            this.techniqueToolStripMenuItem1.Size = new System.Drawing.Size(134, 22);
            this.techniqueToolStripMenuItem1.Text = "&Technique";
            this.techniqueToolStripMenuItem1.ToolTipText = "Create, edit, or register technique files to be used for testing.";
            this.techniqueToolStripMenuItem1.Click += new System.EventHandler(this.techniqueToolStripMenuItem1_Click);
            // 
            // toolStripSeparator7
            // 
            this.toolStripSeparator7.Name = "toolStripSeparator7";
            this.toolStripSeparator7.Size = new System.Drawing.Size(131, 6);
            // 
            // graphToolStripMenuItem1
            // 
            this.graphToolStripMenuItem1.Image = global::ZiveLab.ZM.Properties.Resources.AutoscaleXY;
            this.graphToolStripMenuItem1.Name = "graphToolStripMenuItem1";
            this.graphToolStripMenuItem1.Size = new System.Drawing.Size(134, 22);
            this.graphToolStripMenuItem1.Text = "&Graph";
            this.graphToolStripMenuItem1.ToolTipText = "Open the test result file as a graph to see the information.";
            this.graphToolStripMenuItem1.Click += new System.EventHandler(this.graphToolStripMenuItem1_Click);
            // 
            // toolStripSeparator8
            // 
            this.toolStripSeparator8.Name = "toolStripSeparator8";
            this.toolStripSeparator8.Size = new System.Drawing.Size(131, 6);
            // 
            // dataEditorToolStripMenuItem1
            // 
            this.dataEditorToolStripMenuItem1.Image = ((System.Drawing.Image)(resources.GetObject("dataEditorToolStripMenuItem1.Image")));
            this.dataEditorToolStripMenuItem1.Name = "dataEditorToolStripMenuItem1";
            this.dataEditorToolStripMenuItem1.Size = new System.Drawing.Size(134, 22);
            this.dataEditorToolStripMenuItem1.Text = "Data &editor";
            this.dataEditorToolStripMenuItem1.ToolTipText = "Open the test results file as a report to view the information.";
            this.dataEditorToolStripMenuItem1.Click += new System.EventHandler(this.dataEditorToolStripMenuItem1_Click);
            // 
            // windowsToolStripMenuItem
            // 
            this.windowsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.realtimeMonitorToolStripMenuItem});
            this.windowsToolStripMenuItem.Name = "windowsToolStripMenuItem";
            this.windowsToolStripMenuItem.Size = new System.Drawing.Size(68, 20);
            this.windowsToolStripMenuItem.Text = "&Windows";
            // 
            // realtimeMonitorToolStripMenuItem
            // 
            this.realtimeMonitorToolStripMenuItem.Image = global::ZiveLab.ZM.Properties.Resources.List;
            this.realtimeMonitorToolStripMenuItem.Name = "realtimeMonitorToolStripMenuItem";
            this.realtimeMonitorToolStripMenuItem.Size = new System.Drawing.Size(167, 22);
            this.realtimeMonitorToolStripMenuItem.Text = "&Realtime monitor";
            this.realtimeMonitorToolStripMenuItem.ToolTipText = "You can control registered channels or check real-time information.";
            this.realtimeMonitorToolStripMenuItem.Click += new System.EventHandler(this.realtimeMonitorToolStripMenuItem_Click);
            // 
            // btselall
            // 
            this.btselall.Image = global::ZiveLab.ZM.Properties.Resources.chevron_down;
            this.btselall.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btselall.Location = new System.Drawing.Point(100, 55);
            this.btselall.Name = "btselall";
            this.btselall.Size = new System.Drawing.Size(124, 24);
            this.btselall.TabIndex = 4;
            this.btselall.Text = "  Select all";
            this.btselall.UseVisualStyleBackColor = true;
            this.btselall.Click += new System.EventHandler(this.btselall_Click);
            // 
            // btdeselall
            // 
            this.btdeselall.Image = global::ZiveLab.ZM.Properties.Resources.checkbox_blank_outline;
            this.btdeselall.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btdeselall.Location = new System.Drawing.Point(230, 55);
            this.btdeselall.Name = "btdeselall";
            this.btdeselall.Size = new System.Drawing.Size(124, 24);
            this.btdeselall.TabIndex = 5;
            this.btdeselall.Text = "  Deselect all";
            this.btdeselall.UseVisualStyleBackColor = true;
            this.btdeselall.Click += new System.EventHandler(this.btdeselall_Click);
            // 
            // btgrpstart
            // 
            this.btgrpstart.Image = global::ZiveLab.ZM.Properties.Resources.Play;
            this.btgrpstart.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btgrpstart.Location = new System.Drawing.Point(510, 55);
            this.btgrpstart.Name = "btgrpstart";
            this.btgrpstart.Size = new System.Drawing.Size(124, 24);
            this.btgrpstart.TabIndex = 6;
            this.btgrpstart.Text = "  Start";
            this.btgrpstart.UseVisualStyleBackColor = true;
            this.btgrpstart.Click += new System.EventHandler(this.btgrpstart_Click);
            // 
            // btgrpstop
            // 
            this.btgrpstop.Image = global::ZiveLab.ZM.Properties.Resources.Stop;
            this.btgrpstop.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btgrpstop.Location = new System.Drawing.Point(641, 55);
            this.btgrpstop.Name = "btgrpstop";
            this.btgrpstop.Size = new System.Drawing.Size(124, 24);
            this.btgrpstop.TabIndex = 7;
            this.btgrpstop.Text = "  Stop";
            this.btgrpstop.UseVisualStyleBackColor = true;
            this.btgrpstop.Click += new System.EventHandler(this.btgrpstop_Click);
            // 
            // btgrpmon
            // 
            this.btgrpmon.Image = global::ZiveLab.ZM.Properties.Resources.ExportImage;
            this.btgrpmon.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btgrpmon.Location = new System.Drawing.Point(781, 55);
            this.btgrpmon.Name = "btgrpmon";
            this.btgrpmon.Size = new System.Drawing.Size(124, 24);
            this.btgrpmon.TabIndex = 8;
            this.btgrpmon.Text = "  Monitor";
            this.btgrpmon.UseVisualStyleBackColor = true;
            this.btgrpmon.Click += new System.EventHandler(this.btgrpmon_Click);
            // 
            // btgrptech
            // 
            this.btgrptech.Image = global::ZiveLab.ZM.Properties.Resources.TestSettings;
            this.btgrptech.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btgrptech.Location = new System.Drawing.Point(370, 55);
            this.btgrptech.Name = "btgrptech";
            this.btgrptech.Size = new System.Drawing.Size(124, 24);
            this.btgrptech.TabIndex = 9;
            this.btgrptech.Text = "  Technique ";
            this.btgrptech.UseVisualStyleBackColor = true;
            this.btgrptech.Click += new System.EventHandler(this.btgrptech_Click);
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripbtRegist,
            this.toolStripSeparator14,
            this.toolStripbtBattPara,
            this.toolStripSeparator15,
            this.toolStripbtTech,
            this.toolStripSeparator16,
            this.toolStripBtGraph,
            this.toolStripSeparator17,
            this.toolStripBtReport,
            this.toolStripSeparator18,
            this.toolStripBtRealMon});
            this.toolStrip1.Location = new System.Drawing.Point(0, 24);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(1593, 25);
            this.toolStrip1.TabIndex = 2;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolStripbtRegist
            // 
            this.toolStripbtRegist.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripbtRegist.Image = global::ZiveLab.ZM.Properties.Resources.settings_outline;
            this.toolStripbtRegist.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripbtRegist.Name = "toolStripbtRegist";
            this.toolStripbtRegist.Size = new System.Drawing.Size(23, 22);
            this.toolStripbtRegist.ToolTipText = "Registers or unregisters a device to be used in the program with a channel.";
            this.toolStripbtRegist.Click += new System.EventHandler(this.toolStripbtRegist_Click);
            // 
            // toolStripSeparator14
            // 
            this.toolStripSeparator14.Name = "toolStripSeparator14";
            this.toolStripSeparator14.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripbtBattPara
            // 
            this.toolStripbtBattPara.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripbtBattPara.Image = ((System.Drawing.Image)(resources.GetObject("toolStripbtBattPara.Image")));
            this.toolStripbtBattPara.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripbtBattPara.Name = "toolStripbtBattPara";
            this.toolStripbtBattPara.Size = new System.Drawing.Size(23, 22);
            this.toolStripbtBattPara.ToolTipText = "Set parameters for standard information for each battery type.";
            this.toolStripbtBattPara.Visible = false;
            this.toolStripbtBattPara.Click += new System.EventHandler(this.toolStripbtBattPara_Click);
            // 
            // toolStripSeparator15
            // 
            this.toolStripSeparator15.Name = "toolStripSeparator15";
            this.toolStripSeparator15.Size = new System.Drawing.Size(6, 25);
            this.toolStripSeparator15.Visible = false;
            // 
            // toolStripbtTech
            // 
            this.toolStripbtTech.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripbtTech.Image = global::ZiveLab.ZM.Properties.Resources.TestSettings;
            this.toolStripbtTech.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripbtTech.Name = "toolStripbtTech";
            this.toolStripbtTech.Size = new System.Drawing.Size(23, 22);
            this.toolStripbtTech.ToolTipText = "Create, edit, or register technique files to be used for testing.";
            this.toolStripbtTech.Click += new System.EventHandler(this.toolStripbtTech_Click);
            // 
            // toolStripSeparator16
            // 
            this.toolStripSeparator16.Name = "toolStripSeparator16";
            this.toolStripSeparator16.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripBtGraph
            // 
            this.toolStripBtGraph.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripBtGraph.Image = global::ZiveLab.ZM.Properties.Resources.AutoscaleXY;
            this.toolStripBtGraph.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripBtGraph.Name = "toolStripBtGraph";
            this.toolStripBtGraph.Size = new System.Drawing.Size(23, 22);
            this.toolStripBtGraph.ToolTipText = "Open the test result file as a graph to see the information.";
            this.toolStripBtGraph.Click += new System.EventHandler(this.toolStripBtGraph_Click);
            // 
            // toolStripSeparator17
            // 
            this.toolStripSeparator17.Name = "toolStripSeparator17";
            this.toolStripSeparator17.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripBtReport
            // 
            this.toolStripBtReport.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripBtReport.Image = global::ZiveLab.ZM.Properties.Resources.Report1;
            this.toolStripBtReport.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripBtReport.Name = "toolStripBtReport";
            this.toolStripBtReport.Size = new System.Drawing.Size(23, 22);
            this.toolStripBtReport.ToolTipText = "Open the test results file as a report to view the information.";
            this.toolStripBtReport.Click += new System.EventHandler(this.toolStripBtReport_Click);
            // 
            // toolStripSeparator18
            // 
            this.toolStripSeparator18.Name = "toolStripSeparator18";
            this.toolStripSeparator18.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripBtRealMon
            // 
            this.toolStripBtRealMon.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripBtRealMon.Image = global::ZiveLab.ZM.Properties.Resources.List;
            this.toolStripBtRealMon.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripBtRealMon.Name = "toolStripBtRealMon";
            this.toolStripBtRealMon.Size = new System.Drawing.Size(23, 22);
            this.toolStripBtRealMon.ToolTipText = "You can control registered channels or check real-time information.";
            this.toolStripBtRealMon.Click += new System.EventHandler(this.toolStripBtRealMon_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(4, 59);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 14);
            this.label1.TabIndex = 10;
            this.label1.Text = "Group tools/";
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1593, 302);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btgrptech);
            this.Controls.Add(this.btgrpmon);
            this.Controls.Add(this.btgrpstop);
            this.Controls.Add(this.btgrpstart);
            this.Controls.Add(this.btdeselall);
            this.Controls.Add(this.btselall);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.hgrid);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmMain";
            this.Text = "ZM";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmMain_FormClosing);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.LocationChanged += new System.EventHandler(this.frmMain_LocationChanged);
            this.Move += new System.EventHandler(this.frmMain_Move);
            this.MainMenu.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.hgrid)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.NotifyIcon notifyIcon1;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.ContextMenuStrip MainMenu;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem modifyTheDevicesRegistrationToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem viewHomeToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripMenuItem graphToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripMenuItem techniqueToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
        private System.Windows.Forms.ToolStripMenuItem dataEditorToolStripMenuItem;
        private C1.Win.C1FlexGrid.C1FlexGrid hgrid;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem systemToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem modifyTheDevicesRegistrationToolStripMenuItem1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator6;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem toolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem techniqueToolStripMenuItem1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator7;
        private System.Windows.Forms.ToolStripMenuItem graphToolStripMenuItem1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator8;
        private System.Windows.Forms.ToolStripMenuItem dataEditorToolStripMenuItem1;
        private System.Windows.Forms.ToolTip gtip;
        private System.Windows.Forms.Button btselall;
        private System.Windows.Forms.Button btdeselall;
        private System.Windows.Forms.Button btgrpstart;
        private System.Windows.Forms.Button btgrpstop;
        private System.Windows.Forms.Button btgrpmon;
        private System.Windows.Forms.Button btgrptech;
        private System.Windows.Forms.ToolStripMenuItem windowsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem realtimeMonitorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem batteryParameterToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator9;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator10;
        private System.Windows.Forms.ToolStripMenuItem configurationToolStripMenuItem;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator11;
        private System.Windows.Forms.ToolStripMenuItem realtimeMonitorToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem configurationToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem batteryParameterToolStripMenuItem1;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator13;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator12;
        private System.Windows.Forms.ToolStripButton toolStripbtRegist;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator14;
        private System.Windows.Forms.ToolStripButton toolStripbtBattPara;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator15;
        private System.Windows.Forms.ToolStripButton toolStripbtTech;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator16;
        private System.Windows.Forms.ToolStripButton toolStripBtGraph;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator17;
        private System.Windows.Forms.ToolStripButton toolStripBtReport;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator18;
        private System.Windows.Forms.ToolStripButton toolStripBtRealMon;
        private System.Windows.Forms.ToolStripMenuItem setDefaultWindowToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator19;
    }
}

