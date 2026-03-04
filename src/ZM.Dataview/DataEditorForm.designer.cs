namespace ZiveLab.ZM.Dataview
{
    partial class DataEditorForm
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
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마십시오.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(DataEditorForm));
            this.toolStripMain = new System.Windows.Forms.ToolStrip();
            this.gap1 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnOpen = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel1 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnReload = new System.Windows.Forms.ToolStripButton();
            this.gap6 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnStop = new System.Windows.Forms.ToolStripButton();
            this.gap3 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnSave = new System.Windows.Forms.ToolStripButton();
            this.gap4 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnOpenSchedule = new System.Windows.Forms.ToolStripButton();
            this.gap5 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnViewGraph = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel2 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnSaveText = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel3 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnExportExcel = new System.Windows.Forms.ToolStripButton();
            this.gap7 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnRunZMan = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel6 = new System.Windows.Forms.ToolStripLabel();
            this.toolStripLabel5 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnPrint = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel4 = new System.Windows.Forms.ToolStripLabel();
            this.tsbtnFileHeaderInfor = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel7 = new System.Windows.Forms.ToolStripLabel();
            this.backgroundWorker = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorkerText = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorkerSave = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorkerExcel = new System.ComponentModel.BackgroundWorker();
            this.timerBgChecker = new System.Windows.Forms.Timer(this.components);
            this.legend1 = new NationalInstruments.UI.WindowsForms.Legend();
            this.legendItem1 = new NationalInstruments.UI.LegendItem();
            this.panelMain = new System.Windows.Forms.Panel();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnUndo = new System.Windows.Forms.Button();
            this.btnDeleteData = new System.Windows.Forms.Button();
            this.groupBoxViewOpt = new System.Windows.Forms.GroupBox();
            this.ChkEISAux = new System.Windows.Forms.CheckBox();
            this.ChkEIS = new System.Windows.Forms.CheckBox();
            this.ChkDCAux = new System.Windows.Forms.CheckBox();
            this.ChkDC = new System.Windows.Forms.CheckBox();
            this.groupBoxFilter = new System.Windows.Forms.GroupBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.chkCycleNo = new System.Windows.Forms.CheckBox();
            this.tbCycleNo = new System.Windows.Forms.TextBox();
            this.c1StatusBar1 = new C1.Win.C1Ribbon.C1StatusBar();
            this.ribbonLabel1 = new C1.Win.C1Ribbon.RibbonLabel();
            this.ribbonProgressBar1 = new C1.Win.C1Ribbon.RibbonProgressBar();
            this.ribbonLabel2 = new C1.Win.C1Ribbon.RibbonLabel();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tbCellType = new System.Windows.Forms.TextBox();
            this.lblCellType = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.tbWriterName = new System.Windows.Forms.TextBox();
            this.textFileName = new C1.Win.C1Input.C1TextBox();
            this.textDataMemo = new System.Windows.Forms.TextBox();
            this.textUser = new System.Windows.Forms.TextBox();
            this.textDataCount = new System.Windows.Forms.TextBox();
            this.textScheduleFile = new System.Windows.Forms.TextBox();
            this.tbDataCapacity = new System.Windows.Forms.TextBox();
            this.textTestTime = new System.Windows.Forms.TextBox();
            this.label_User = new System.Windows.Forms.Label();
            this.label_Memo = new System.Windows.Forms.Label();
            this.label_ScheduleFile = new System.Windows.Forms.Label();
            this.label_DataCount = new System.Windows.Forms.Label();
            this.lblCapacity1 = new System.Windows.Forms.Label();
            this.label_TestTime = new System.Windows.Forms.Label();
            this.label_FileName = new System.Windows.Forms.Label();
            this.DataFlexGrid = new C1.Win.C1FlexGrid.C1FlexGrid();
            this.toolStripMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.legend1)).BeginInit();
            this.panelMain.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBoxViewOpt.SuspendLayout();
            this.groupBoxFilter.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.c1StatusBar1)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textFileName)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataFlexGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // toolStripMain
            // 
            resources.ApplyResources(this.toolStripMain, "toolStripMain");
            this.toolStripMain.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.toolStripMain.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.toolStripMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.gap1,
            this.tsbtnOpen,
            this.toolStripLabel1,
            this.tsbtnReload,
            this.gap6,
            this.tsbtnStop,
            this.gap3,
            this.tsbtnSave,
            this.gap4,
            this.tsbtnOpenSchedule,
            this.gap5,
            this.tsbtnViewGraph,
            this.toolStripLabel2,
            this.tsbtnSaveText,
            this.toolStripLabel3,
            this.tsbtnExportExcel,
            this.gap7,
            this.tsbtnRunZMan,
            this.toolStripLabel6,
            this.toolStripLabel5,
            this.tsbtnPrint,
            this.toolStripLabel4,
            this.tsbtnFileHeaderInfor,
            this.toolStripLabel7});
            this.toolStripMain.Name = "toolStripMain";
            // 
            // gap1
            // 
            this.gap1.Name = "gap1";
            resources.ApplyResources(this.gap1, "gap1");
            // 
            // tsbtnOpen
            // 
            this.tsbtnOpen.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.tsbtnOpen.Image = global::ZiveLab.ZM.Dataview.Properties.Resources.open_folder;
            resources.ApplyResources(this.tsbtnOpen, "tsbtnOpen");
            this.tsbtnOpen.Name = "tsbtnOpen";
            this.tsbtnOpen.Click += new System.EventHandler(this.tsbtnOpen_Click);
            // 
            // toolStripLabel1
            // 
            this.toolStripLabel1.Name = "toolStripLabel1";
            resources.ApplyResources(this.toolStripLabel1, "toolStripLabel1");
            // 
            // tsbtnReload
            // 
            this.tsbtnReload.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnReload, "tsbtnReload");
            this.tsbtnReload.Name = "tsbtnReload";
            this.tsbtnReload.Click += new System.EventHandler(this.tsbtnReload_Click);
            // 
            // gap6
            // 
            this.gap6.Name = "gap6";
            resources.ApplyResources(this.gap6, "gap6");
            // 
            // tsbtnStop
            // 
            this.tsbtnStop.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnStop, "tsbtnStop");
            this.tsbtnStop.Name = "tsbtnStop";
            this.tsbtnStop.Click += new System.EventHandler(this.tsbtnStop_Click);
            // 
            // gap3
            // 
            this.gap3.Name = "gap3";
            resources.ApplyResources(this.gap3, "gap3");
            // 
            // tsbtnSave
            // 
            this.tsbtnSave.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnSave, "tsbtnSave");
            this.tsbtnSave.Name = "tsbtnSave";
            this.tsbtnSave.Click += new System.EventHandler(this.tsbtnSave_Click);
            // 
            // gap4
            // 
            this.gap4.Name = "gap4";
            resources.ApplyResources(this.gap4, "gap4");
            // 
            // tsbtnOpenSchedule
            // 
            this.tsbtnOpenSchedule.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnOpenSchedule, "tsbtnOpenSchedule");
            this.tsbtnOpenSchedule.Image = global::ZiveLab.ZM.Dataview.Properties.Resources.DeviceTest;
            this.tsbtnOpenSchedule.Name = "tsbtnOpenSchedule";
            this.tsbtnOpenSchedule.Click += new System.EventHandler(this.tsbtnOpenSchedule_Click);
            // 
            // gap5
            // 
            this.gap5.Name = "gap5";
            resources.ApplyResources(this.gap5, "gap5");
            // 
            // tsbtnViewGraph
            // 
            this.tsbtnViewGraph.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnViewGraph, "tsbtnViewGraph");
            this.tsbtnViewGraph.Name = "tsbtnViewGraph";
            this.tsbtnViewGraph.Click += new System.EventHandler(this.tsbtnViewGraph_Click);
            // 
            // toolStripLabel2
            // 
            this.toolStripLabel2.Name = "toolStripLabel2";
            resources.ApplyResources(this.toolStripLabel2, "toolStripLabel2");
            // 
            // tsbtnSaveText
            // 
            this.tsbtnSaveText.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnSaveText, "tsbtnSaveText");
            this.tsbtnSaveText.Name = "tsbtnSaveText";
            this.tsbtnSaveText.Click += new System.EventHandler(this.tsbtnSaveText_Click);
            // 
            // toolStripLabel3
            // 
            this.toolStripLabel3.Name = "toolStripLabel3";
            resources.ApplyResources(this.toolStripLabel3, "toolStripLabel3");
            // 
            // tsbtnExportExcel
            // 
            this.tsbtnExportExcel.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnExportExcel, "tsbtnExportExcel");
            this.tsbtnExportExcel.Name = "tsbtnExportExcel";
            this.tsbtnExportExcel.Click += new System.EventHandler(this.tsbtnExportExcel_Click);
            // 
            // gap7
            // 
            this.gap7.Name = "gap7";
            resources.ApplyResources(this.gap7, "gap7");
            // 
            // tsbtnRunZMan
            // 
            this.tsbtnRunZMan.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnRunZMan, "tsbtnRunZMan");
            this.tsbtnRunZMan.Name = "tsbtnRunZMan";
            this.tsbtnRunZMan.Click += new System.EventHandler(this.tsbtnRunZMan_Click);
            // 
            // toolStripLabel6
            // 
            this.toolStripLabel6.Name = "toolStripLabel6";
            resources.ApplyResources(this.toolStripLabel6, "toolStripLabel6");
            // 
            // toolStripLabel5
            // 
            this.toolStripLabel5.Name = "toolStripLabel5";
            resources.ApplyResources(this.toolStripLabel5, "toolStripLabel5");
            // 
            // tsbtnPrint
            // 
            this.tsbtnPrint.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnPrint, "tsbtnPrint");
            this.tsbtnPrint.Name = "tsbtnPrint";
            this.tsbtnPrint.Click += new System.EventHandler(this.tsbtnPrint_Click);
            // 
            // toolStripLabel4
            // 
            this.toolStripLabel4.Name = "toolStripLabel4";
            resources.ApplyResources(this.toolStripLabel4, "toolStripLabel4");
            // 
            // tsbtnFileHeaderInfor
            // 
            this.tsbtnFileHeaderInfor.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            resources.ApplyResources(this.tsbtnFileHeaderInfor, "tsbtnFileHeaderInfor");
            this.tsbtnFileHeaderInfor.Image = global::ZiveLab.ZM.Dataview.Properties.Resources.fileinfor;
            this.tsbtnFileHeaderInfor.Name = "tsbtnFileHeaderInfor";
            this.tsbtnFileHeaderInfor.Click += new System.EventHandler(this.tsbtnFileHeaderInfor_Click);
            // 
            // toolStripLabel7
            // 
            this.toolStripLabel7.Name = "toolStripLabel7";
            resources.ApplyResources(this.toolStripLabel7, "toolStripLabel7");
            // 
            // backgroundWorker
            // 
            this.backgroundWorker.WorkerReportsProgress = true;
            this.backgroundWorker.WorkerSupportsCancellation = true;
            this.backgroundWorker.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker_DoWork);
            this.backgroundWorker.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorker_ProgressChanged);
            this.backgroundWorker.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker_RunWorkerCompleted);
            // 
            // backgroundWorkerText
            // 
            this.backgroundWorkerText.WorkerReportsProgress = true;
            this.backgroundWorkerText.WorkerSupportsCancellation = true;
            this.backgroundWorkerText.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorkerText_DoWork);
            this.backgroundWorkerText.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorkerText_ProgressChanged);
            this.backgroundWorkerText.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorkerText_RunWorkerCompleted);
            // 
            // backgroundWorkerSave
            // 
            this.backgroundWorkerSave.WorkerReportsProgress = true;
            this.backgroundWorkerSave.WorkerSupportsCancellation = true;
            this.backgroundWorkerSave.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorkerSave_DoWork);
            this.backgroundWorkerSave.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorkerSave_ProgressChanged);
            this.backgroundWorkerSave.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorkerSave_RunWorkerCompleted);
            // 
            // backgroundWorkerExcel
            // 
            this.backgroundWorkerExcel.WorkerReportsProgress = true;
            this.backgroundWorkerExcel.WorkerSupportsCancellation = true;
            this.backgroundWorkerExcel.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorkerExcel_DoWork);
            this.backgroundWorkerExcel.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorkerExcel_ProgressChanged);
            this.backgroundWorkerExcel.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorkerExcel_RunWorkerCompleted);
            // 
            // timerBgChecker
            // 
            this.timerBgChecker.Tick += new System.EventHandler(this.timerBgChecker_Tick);
            // 
            // legend1
            // 
            this.legend1.Items.AddRange(new NationalInstruments.UI.LegendItem[] {
            this.legendItem1});
            resources.ApplyResources(this.legend1, "legend1");
            this.legend1.Name = "legend1";
            // 
            // legendItem1
            // 
            this.legendItem1.Text = "Item 0";
            // 
            // panelMain
            // 
            resources.ApplyResources(this.panelMain, "panelMain");
            this.panelMain.Controls.Add(this.DataFlexGrid);
            this.panelMain.Controls.Add(this.groupBox3);
            this.panelMain.Controls.Add(this.groupBoxViewOpt);
            this.panelMain.Controls.Add(this.groupBoxFilter);
            this.panelMain.Controls.Add(this.c1StatusBar1);
            this.panelMain.Controls.Add(this.legend1);
            this.panelMain.Controls.Add(this.groupBox1);
            this.panelMain.Name = "panelMain";
            // 
            // groupBox3
            // 
            resources.ApplyResources(this.groupBox3, "groupBox3");
            this.groupBox3.Controls.Add(this.btnUndo);
            this.groupBox3.Controls.Add(this.btnDeleteData);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.TabStop = false;
            // 
            // btnUndo
            // 
            resources.ApplyResources(this.btnUndo, "btnUndo");
            this.btnUndo.Name = "btnUndo";
            this.btnUndo.UseVisualStyleBackColor = true;
            this.btnUndo.Click += new System.EventHandler(this.btnUndo_Click);
            // 
            // btnDeleteData
            // 
            resources.ApplyResources(this.btnDeleteData, "btnDeleteData");
            this.btnDeleteData.Name = "btnDeleteData";
            this.btnDeleteData.UseVisualStyleBackColor = true;
            // 
            // groupBoxViewOpt
            // 
            this.groupBoxViewOpt.Controls.Add(this.ChkEISAux);
            this.groupBoxViewOpt.Controls.Add(this.ChkEIS);
            this.groupBoxViewOpt.Controls.Add(this.ChkDCAux);
            this.groupBoxViewOpt.Controls.Add(this.ChkDC);
            resources.ApplyResources(this.groupBoxViewOpt, "groupBoxViewOpt");
            this.groupBoxViewOpt.Name = "groupBoxViewOpt";
            this.groupBoxViewOpt.TabStop = false;
            // 
            // ChkEISAux
            // 
            resources.ApplyResources(this.ChkEISAux, "ChkEISAux");
            this.ChkEISAux.Name = "ChkEISAux";
            this.ChkEISAux.UseVisualStyleBackColor = true;
            this.ChkEISAux.CheckedChanged += new System.EventHandler(this.ChkEISAux_CheckedChanged);
            // 
            // ChkEIS
            // 
            resources.ApplyResources(this.ChkEIS, "ChkEIS");
            this.ChkEIS.Name = "ChkEIS";
            this.ChkEIS.UseVisualStyleBackColor = true;
            this.ChkEIS.CheckedChanged += new System.EventHandler(this.ChkEIS_CheckedChanged);
            // 
            // ChkDCAux
            // 
            resources.ApplyResources(this.ChkDCAux, "ChkDCAux");
            this.ChkDCAux.Name = "ChkDCAux";
            this.ChkDCAux.UseVisualStyleBackColor = true;
            this.ChkDCAux.CheckedChanged += new System.EventHandler(this.ChkDCAux_CheckedChanged);
            // 
            // ChkDC
            // 
            resources.ApplyResources(this.ChkDC, "ChkDC");
            this.ChkDC.Name = "ChkDC";
            this.ChkDC.UseVisualStyleBackColor = true;
            this.ChkDC.CheckedChanged += new System.EventHandler(this.ChkDC_CheckedChanged);
            // 
            // groupBoxFilter
            // 
            this.groupBoxFilter.Controls.Add(this.btnSearch);
            this.groupBoxFilter.Controls.Add(this.chkCycleNo);
            this.groupBoxFilter.Controls.Add(this.tbCycleNo);
            resources.ApplyResources(this.groupBoxFilter, "groupBoxFilter");
            this.groupBoxFilter.Name = "groupBoxFilter";
            this.groupBoxFilter.TabStop = false;
            // 
            // btnSearch
            // 
            resources.ApplyResources(this.btnSearch, "btnSearch");
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // chkCycleNo
            // 
            resources.ApplyResources(this.chkCycleNo, "chkCycleNo");
            this.chkCycleNo.Name = "chkCycleNo";
            this.chkCycleNo.UseVisualStyleBackColor = true;
            this.chkCycleNo.CheckedChanged += new System.EventHandler(this.chkCycleNo_CheckedChanged);
            // 
            // tbCycleNo
            // 
            resources.ApplyResources(this.tbCycleNo, "tbCycleNo");
            this.tbCycleNo.Name = "tbCycleNo";
            // 
            // c1StatusBar1
            // 
            this.c1StatusBar1.LeftPaneItems.Add(this.ribbonLabel1);
            this.c1StatusBar1.LeftPaneItems.Add(this.ribbonProgressBar1);
            this.c1StatusBar1.LeftPaneItems.Add(this.ribbonLabel2);
            this.c1StatusBar1.Location = new System.Drawing.Point(0, 653);
            this.c1StatusBar1.Name = "c1StatusBar1";
            resources.ApplyResources(this.c1StatusBar1, "c1StatusBar1");
            this.c1StatusBar1.Size = new System.Drawing.Size(880, 22);
            // 
            // ribbonLabel1
            // 
            this.ribbonLabel1.ForeColorOuter = System.Drawing.Color.Red;
            this.ribbonLabel1.Name = "ribbonLabel1";
            resources.ApplyResources(this.ribbonLabel1, "ribbonLabel1");
            // 
            // ribbonProgressBar1
            // 
            this.ribbonProgressBar1.Name = "ribbonProgressBar1";
            this.ribbonProgressBar1.Visible = false;
            // 
            // ribbonLabel2
            // 
            this.ribbonLabel2.Name = "ribbonLabel2";
            resources.ApplyResources(this.ribbonLabel2, "ribbonLabel2");
            this.ribbonLabel2.Visible = false;
            // 
            // groupBox1
            // 
            resources.ApplyResources(this.groupBox1, "groupBox1");
            this.groupBox1.Controls.Add(this.tbCellType);
            this.groupBox1.Controls.Add(this.lblCellType);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.tbWriterName);
            this.groupBox1.Controls.Add(this.textFileName);
            this.groupBox1.Controls.Add(this.textDataMemo);
            this.groupBox1.Controls.Add(this.textUser);
            this.groupBox1.Controls.Add(this.textDataCount);
            this.groupBox1.Controls.Add(this.textScheduleFile);
            this.groupBox1.Controls.Add(this.tbDataCapacity);
            this.groupBox1.Controls.Add(this.textTestTime);
            this.groupBox1.Controls.Add(this.label_User);
            this.groupBox1.Controls.Add(this.label_Memo);
            this.groupBox1.Controls.Add(this.label_ScheduleFile);
            this.groupBox1.Controls.Add(this.label_DataCount);
            this.groupBox1.Controls.Add(this.lblCapacity1);
            this.groupBox1.Controls.Add(this.label_TestTime);
            this.groupBox1.Controls.Add(this.label_FileName);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.TabStop = false;
            // 
            // tbCellType
            // 
            resources.ApplyResources(this.tbCellType, "tbCellType");
            this.tbCellType.Name = "tbCellType";
            this.tbCellType.ReadOnly = true;
            // 
            // lblCellType
            // 
            resources.ApplyResources(this.lblCellType, "lblCellType");
            this.lblCellType.Name = "lblCellType";
            // 
            // label4
            // 
            resources.ApplyResources(this.label4, "label4");
            this.label4.Name = "label4";
            // 
            // tbWriterName
            // 
            resources.ApplyResources(this.tbWriterName, "tbWriterName");
            this.tbWriterName.Name = "tbWriterName";
            this.tbWriterName.ReadOnly = true;
            // 
            // textFileName
            // 
            resources.ApplyResources(this.textFileName, "textFileName");
            this.textFileName.Name = "textFileName";
            this.textFileName.ReadOnly = true;
            // 
            // textDataMemo
            // 
            resources.ApplyResources(this.textDataMemo, "textDataMemo");
            this.textDataMemo.Name = "textDataMemo";
            this.textDataMemo.ReadOnly = true;
            // 
            // textUser
            // 
            resources.ApplyResources(this.textUser, "textUser");
            this.textUser.Name = "textUser";
            this.textUser.ReadOnly = true;
            // 
            // textDataCount
            // 
            resources.ApplyResources(this.textDataCount, "textDataCount");
            this.textDataCount.Name = "textDataCount";
            this.textDataCount.ReadOnly = true;
            // 
            // textScheduleFile
            // 
            resources.ApplyResources(this.textScheduleFile, "textScheduleFile");
            this.textScheduleFile.Name = "textScheduleFile";
            this.textScheduleFile.ReadOnly = true;
            // 
            // tbDataCapacity
            // 
            resources.ApplyResources(this.tbDataCapacity, "tbDataCapacity");
            this.tbDataCapacity.Name = "tbDataCapacity";
            this.tbDataCapacity.ReadOnly = true;
            // 
            // textTestTime
            // 
            resources.ApplyResources(this.textTestTime, "textTestTime");
            this.textTestTime.Name = "textTestTime";
            this.textTestTime.ReadOnly = true;
            // 
            // label_User
            // 
            resources.ApplyResources(this.label_User, "label_User");
            this.label_User.Name = "label_User";
            // 
            // label_Memo
            // 
            resources.ApplyResources(this.label_Memo, "label_Memo");
            this.label_Memo.Name = "label_Memo";
            // 
            // label_ScheduleFile
            // 
            resources.ApplyResources(this.label_ScheduleFile, "label_ScheduleFile");
            this.label_ScheduleFile.Name = "label_ScheduleFile";
            // 
            // label_DataCount
            // 
            resources.ApplyResources(this.label_DataCount, "label_DataCount");
            this.label_DataCount.Name = "label_DataCount";
            // 
            // lblCapacity1
            // 
            resources.ApplyResources(this.lblCapacity1, "lblCapacity1");
            this.lblCapacity1.Name = "lblCapacity1";
            // 
            // label_TestTime
            // 
            resources.ApplyResources(this.label_TestTime, "label_TestTime");
            this.label_TestTime.Name = "label_TestTime";
            // 
            // label_FileName
            // 
            resources.ApplyResources(this.label_FileName, "label_FileName");
            this.label_FileName.Name = "label_FileName";
            // 
            // DataFlexGrid
            // 
            this.DataFlexGrid.AllowDragging = C1.Win.C1FlexGrid.AllowDraggingEnum.None;
            this.DataFlexGrid.AllowFiltering = true;
            this.DataFlexGrid.AllowResizing = C1.Win.C1FlexGrid.AllowResizingEnum.None;
            resources.ApplyResources(this.DataFlexGrid, "DataFlexGrid");
            this.DataFlexGrid.AutoClipboard = true;
            this.DataFlexGrid.Name = "DataFlexGrid";
            this.DataFlexGrid.Rows.Count = 1;
            this.DataFlexGrid.Rows.DefaultSize = 20;
            this.DataFlexGrid.Rows.GlyphRow = 0;
            this.DataFlexGrid.SelectionMode = C1.Win.C1FlexGrid.SelectionModeEnum.RowRange;
            this.DataFlexGrid.ShowCellLabels = true;
            this.DataFlexGrid.StyleInfo = resources.GetString("DataFlexGrid.StyleInfo");
            this.DataFlexGrid.VisualStyle = C1.Win.C1FlexGrid.VisualStyle.Office2007Blue;
            // 
            // DataEditorForm
            // 
            this.AllowDrop = true;
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.Controls.Add(this.panelMain);
            this.Controls.Add(this.toolStripMain);
            this.Name = "DataEditorForm";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormDataEditor_FormClosing);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.FormDataEditor_FormClosed);
            this.Load += new System.EventHandler(this.FormDataEditor_Load);
            this.DragDrop += new System.Windows.Forms.DragEventHandler(this.FormDataEditor_DragDrop);
            this.DragOver += new System.Windows.Forms.DragEventHandler(this.FormDataEditor_DragOver);
            this.toolStripMain.ResumeLayout(false);
            this.toolStripMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.legend1)).EndInit();
            this.panelMain.ResumeLayout(false);
            this.panelMain.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBoxViewOpt.ResumeLayout(false);
            this.groupBoxViewOpt.PerformLayout();
            this.groupBoxFilter.ResumeLayout(false);
            this.groupBoxFilter.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.c1StatusBar1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textFileName)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataFlexGrid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStrip toolStripMain;
        private System.Windows.Forms.ToolStripLabel gap1;
        private System.Windows.Forms.ToolStripButton tsbtnOpen;
        private System.Windows.Forms.ToolStripLabel toolStripLabel1;
        private System.Windows.Forms.ToolStripButton tsbtnReload;
        private System.Windows.Forms.ToolStripLabel gap3;
        private System.Windows.Forms.ToolStripButton tsbtnSave;
        private System.Windows.Forms.ToolStripLabel gap4;
        private System.Windows.Forms.ToolStripButton tsbtnOpenSchedule;
        private System.Windows.Forms.ToolStripLabel gap5;
        private System.Windows.Forms.ToolStripButton tsbtnSaveText;
        private System.Windows.Forms.ToolStripButton tsbtnExportExcel;
        private System.Windows.Forms.ToolStripLabel gap6;
        private System.Windows.Forms.ToolStripLabel toolStripLabel2;
        private System.Windows.Forms.ToolStripLabel gap7;
        private System.Windows.Forms.ToolStripButton tsbtnPrint;
        private System.Windows.Forms.ToolStripButton tsbtnStop;
        private System.Windows.Forms.ToolStripLabel toolStripLabel4;
        private System.Windows.Forms.ToolStripLabel toolStripLabel3;
        private System.ComponentModel.BackgroundWorker backgroundWorker;
        private System.ComponentModel.BackgroundWorker backgroundWorkerText;
        private System.ComponentModel.BackgroundWorker backgroundWorkerSave;
        private System.ComponentModel.BackgroundWorker backgroundWorkerExcel;
        private System.Windows.Forms.ToolStripLabel toolStripLabel6;
        private System.Windows.Forms.ToolStripLabel toolStripLabel5;
        private System.Windows.Forms.Timer timerBgChecker;
        private System.Windows.Forms.ToolStripButton tsbtnFileHeaderInfor;
        private System.Windows.Forms.ToolStripButton tsbtnViewGraph;
        private System.Windows.Forms.ToolStripButton tsbtnRunZMan;
        private System.Windows.Forms.ToolStripLabel toolStripLabel7;
        private NationalInstruments.UI.WindowsForms.Legend legend1;
        private NationalInstruments.UI.LegendItem legendItem1;
        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnUndo;
        private System.Windows.Forms.Button btnDeleteData;
        private System.Windows.Forms.GroupBox groupBoxViewOpt;
        private System.Windows.Forms.CheckBox ChkEISAux;
        private System.Windows.Forms.CheckBox ChkEIS;
        private System.Windows.Forms.CheckBox ChkDCAux;
        private System.Windows.Forms.CheckBox ChkDC;
        private System.Windows.Forms.GroupBox groupBoxFilter;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.CheckBox chkCycleNo;
        private System.Windows.Forms.TextBox tbCycleNo;
        private C1.Win.C1Ribbon.C1StatusBar c1StatusBar1;
        private C1.Win.C1Ribbon.RibbonLabel ribbonLabel1;
        private C1.Win.C1Ribbon.RibbonProgressBar ribbonProgressBar1;
        private C1.Win.C1Ribbon.RibbonLabel ribbonLabel2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox tbCellType;
        private System.Windows.Forms.Label lblCellType;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox tbWriterName;
        private C1.Win.C1Input.C1TextBox textFileName;
        private System.Windows.Forms.TextBox textDataMemo;
        private System.Windows.Forms.TextBox textUser;
        private System.Windows.Forms.TextBox textDataCount;
        private System.Windows.Forms.TextBox textScheduleFile;
        private System.Windows.Forms.TextBox tbDataCapacity;
        private System.Windows.Forms.TextBox textTestTime;
        private System.Windows.Forms.Label label_User;
        private System.Windows.Forms.Label label_Memo;
        private System.Windows.Forms.Label label_ScheduleFile;
        private System.Windows.Forms.Label label_DataCount;
        private System.Windows.Forms.Label lblCapacity1;
        private System.Windows.Forms.Label label_TestTime;
        private System.Windows.Forms.Label label_FileName;
        private C1.Win.C1FlexGrid.C1FlexGrid DataFlexGrid;
    }
}

