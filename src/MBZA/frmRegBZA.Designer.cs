namespace ZiveLab.ZM
{
    partial class frmRegBZA
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmRegBZA));
            this.grdChs = new C1.Win.C1FlexGrid.Classic.C1FlexGridClassic();
            this.RegMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.grdBZAs = new C1.Win.C1FlexGrid.Classic.C1FlexGridClassic();
            this.ScanMenu1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.UploadSif = new System.Windows.Forms.ToolStripMenuItem();
            this.rdoAll = new System.Windows.Forms.RadioButton();
            this.rdoBZA = new System.Windows.Forms.RadioButton();
            this.lblSelected = new System.Windows.Forms.Label();
            this.ScanMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.CmdBZALink = new System.Windows.Forms.ToolStripMenuItem();
            this.UploadZim = new System.Windows.Forms.ToolStripMenuItem();
            this.lblSelectReg = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.lblselsif = new System.Windows.Forms.Label();
            this.CircProgress = new CircularProgress.CircularProgressControl();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btRefreshSifCh = new System.Windows.Forms.Button();
            this.grdBzaCh = new C1.Win.C1FlexGrid.Classic.C1FlexGridClassic();
            this.LnkLblLoad = new System.Windows.Forms.LinkLabel();
            this.LnkLblSave = new System.Windows.Forms.LinkLabel();
            this.LnkLblClose = new System.Windows.Forms.LinkLabel();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.LnkLblSave1 = new System.Windows.Forms.LinkLabel();
            ((System.ComponentModel.ISupportInitialize)(this.grdChs)).BeginInit();
            this.RegMenu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grdBZAs)).BeginInit();
            this.ScanMenu1.SuspendLayout();
            this.ScanMenu.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grdBzaCh)).BeginInit();
            this.SuspendLayout();
            // 
            // grdChs
            // 
            this.grdChs.BackColorSel = System.Drawing.Color.LemonChiffon;
            this.grdChs.ColumnInfo = "10,1,0,0,0,95,Columns:";
            this.grdChs.ContextMenuStrip = this.RegMenu;
            this.grdChs.Font = new System.Drawing.Font("굴림", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.grdChs.ForeColorSel = System.Drawing.SystemColors.ControlText;
            this.grdChs.GridColor = System.Drawing.Color.Silver;
            this.grdChs.GridColorFixed = System.Drawing.SystemColors.ControlDark;
            this.grdChs.Location = new System.Drawing.Point(9, 56);
            this.grdChs.Name = "grdChs";
            this.grdChs.NodeClosedPicture = null;
            this.grdChs.NodeOpenPicture = null;
            this.grdChs.OutlineCol = -1;
            this.grdChs.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            this.grdChs.ShowCursor = true;
            this.grdChs.Size = new System.Drawing.Size(320, 422);
            this.grdChs.StyleInfo = resources.GetString("grdChs.StyleInfo");
            this.grdChs.TabIndex = 4;
            this.grdChs.TreeColor = System.Drawing.Color.DarkGray;
            this.grdChs.RowColChange += new System.EventHandler(this.grdChs_RowColChange);
            this.grdChs.SelChange += new System.EventHandler(this.grdChs_SelChange);
            this.grdChs.EnterCell += new System.EventHandler(this.grdChs_EnterCell);
            this.grdChs.CellChanged += new C1.Win.C1FlexGrid.RowColEventHandler(this.grdChs_CellChanged);
            this.grdChs.MouseDown += new System.Windows.Forms.MouseEventHandler(this.grdChs_MouseDown);
            // 
            // RegMenu
            // 
            this.RegMenu.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.RegMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem1});
            this.RegMenu.Name = "RegMenu";
            this.RegMenu.Size = new System.Drawing.Size(183, 34);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.ForeColor = System.Drawing.Color.DarkRed;
            this.toolStripMenuItem1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripMenuItem1.Image")));
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(182, 30);
            this.toolStripMenuItem1.Text = "Cancel registration";
            this.toolStripMenuItem1.ToolTipText = "Cancel a registered channel.";
            this.toolStripMenuItem1.Click += new System.EventHandler(this.toolStripMenuItem1_Click);
            // 
            // grdBZAs
            // 
            this.grdBZAs.BackColorSel = System.Drawing.Color.LemonChiffon;
            this.grdBZAs.ColumnInfo = "10,1,0,0,0,95,Columns:";
            this.grdBZAs.ContextMenuStrip = this.ScanMenu1;
            this.grdBZAs.Font = new System.Drawing.Font("굴림", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.grdBZAs.GridColor = System.Drawing.Color.Silver;
            this.grdBZAs.GridColorFixed = System.Drawing.SystemColors.ControlDark;
            this.grdBZAs.Location = new System.Drawing.Point(15, 85);
            this.grdBZAs.Name = "grdBZAs";
            this.grdBZAs.NodeClosedPicture = null;
            this.grdBZAs.NodeOpenPicture = null;
            this.grdBZAs.OutlineCol = -1;
            this.grdBZAs.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.grdBZAs.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            this.grdBZAs.ShowCursor = true;
            this.grdBZAs.Size = new System.Drawing.Size(579, 158);
            this.grdBZAs.StyleInfo = resources.GetString("grdBZAs.StyleInfo");
            this.grdBZAs.TabIndex = 5;
            this.grdBZAs.TreeColor = System.Drawing.Color.DarkGray;
            this.grdBZAs.RowColChange += new System.EventHandler(this.grdBZAs_RowColChange);
            this.grdBZAs.MouseDown += new System.Windows.Forms.MouseEventHandler(this.grdBZAs_MouseDown);
            // 
            // ScanMenu1
            // 
            this.ScanMenu1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.ScanMenu1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.UploadSif});
            this.ScanMenu1.Name = "RegMenu";
            this.ScanMenu1.Size = new System.Drawing.Size(164, 26);
            // 
            // UploadSif
            // 
            this.UploadSif.Name = "UploadSif";
            this.UploadSif.Size = new System.Drawing.Size(163, 22);
            this.UploadSif.Text = "&Upload firmware";
            this.UploadSif.Click += new System.EventHandler(this.UploadSif_Click);
            // 
            // rdoAll
            // 
            this.rdoAll.AutoSize = true;
            this.rdoAll.Location = new System.Drawing.Point(15, 27);
            this.rdoAll.Name = "rdoAll";
            this.rdoAll.Size = new System.Drawing.Size(144, 18);
            this.rdoAll.TabIndex = 6;
            this.rdoAll.TabStop = true;
            this.rdoAll.Text = "All scan devices.";
            this.rdoAll.UseVisualStyleBackColor = true;
            this.rdoAll.CheckedChanged += new System.EventHandler(this.rdoAll_CheckedChanged);
            // 
            // rdoBZA
            // 
            this.rdoBZA.AutoSize = true;
            this.rdoBZA.Location = new System.Drawing.Point(178, 27);
            this.rdoBZA.Name = "rdoBZA";
            this.rdoBZA.Size = new System.Drawing.Size(137, 18);
            this.rdoBZA.TabIndex = 7;
            this.rdoBZA.TabStop = true;
            this.rdoBZA.Text = "BZA device only.";
            this.rdoBZA.UseVisualStyleBackColor = true;
            this.rdoBZA.CheckedChanged += new System.EventHandler(this.rdoBZA_CheckedChanged);
            // 
            // lblSelected
            // 
            this.lblSelected.AutoSize = true;
            this.lblSelected.Location = new System.Drawing.Point(13, 29);
            this.lblSelected.Name = "lblSelected";
            this.lblSelected.Size = new System.Drawing.Size(119, 14);
            this.lblSelected.TabIndex = 9;
            this.lblSelected.Text = "* Selected: None";
            // 
            // ScanMenu
            // 
            this.ScanMenu.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.ScanMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.CmdBZALink,
            this.UploadZim});
            this.ScanMenu.Name = "RegMenu";
            this.ScanMenu.Size = new System.Drawing.Size(164, 48);
            // 
            // CmdBZALink
            // 
            this.CmdBZALink.Name = "CmdBZALink";
            this.CmdBZALink.Size = new System.Drawing.Size(163, 22);
            this.CmdBZALink.Text = "&Registration";
            this.CmdBZALink.Click += new System.EventHandler(this.CmdBZALink_Click);
            // 
            // UploadZim
            // 
            this.UploadZim.Name = "UploadZim";
            this.UploadZim.Size = new System.Drawing.Size(163, 22);
            this.UploadZim.Text = "&Upload firmware";
            this.UploadZim.Click += new System.EventHandler(this.UploadZim_Click);
            // 
            // lblSelectReg
            // 
            this.lblSelectReg.AutoSize = true;
            this.lblSelectReg.Location = new System.Drawing.Point(7, 28);
            this.lblSelectReg.Name = "lblSelectReg";
            this.lblSelectReg.Size = new System.Drawing.Size(119, 14);
            this.lblSelectReg.TabIndex = 10;
            this.lblSelectReg.Text = "* Selected: None";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblSelectReg);
            this.groupBox1.Controls.Add(this.grdChs);
            this.groupBox1.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(7, 15);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(340, 496);
            this.groupBox1.TabIndex = 11;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "[ Information of registered channels ]";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.lblselsif);
            this.groupBox2.Controls.Add(this.CircProgress);
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Controls.Add(this.rdoBZA);
            this.groupBox2.Controls.Add(this.rdoAll);
            this.groupBox2.Controls.Add(this.grdBZAs);
            this.groupBox2.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(361, 16);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(603, 493);
            this.groupBox2.TabIndex = 12;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "[ Information of discovered BZA devices ]";
            // 
            // lblselsif
            // 
            this.lblselsif.AutoSize = true;
            this.lblselsif.Location = new System.Drawing.Point(12, 55);
            this.lblselsif.Name = "lblselsif";
            this.lblselsif.Size = new System.Drawing.Size(119, 14);
            this.lblselsif.TabIndex = 12;
            this.lblselsif.Text = "* Selected: None";
            // 
            // CircProgress
            // 
            this.CircProgress.BackColor = System.Drawing.SystemColors.Control;
            this.CircProgress.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.CircProgress.Cursor = System.Windows.Forms.Cursors.No;
            this.CircProgress.ForeColor = System.Drawing.Color.Black;
            this.CircProgress.Interval = 60;
            this.CircProgress.Location = new System.Drawing.Point(302, -16);
            this.CircProgress.MinimumSize = new System.Drawing.Size(28, 51);
            this.CircProgress.Name = "CircProgress";
            this.CircProgress.Rotation = CircularProgress.CircularProgressControl.Direction.CLOCKWISE;
            this.CircProgress.Size = new System.Drawing.Size(33, 51);
            this.CircProgress.StartAngle = 270;
            this.CircProgress.TabIndex = 11;
            this.CircProgress.TickColor = System.Drawing.Color.Purple;
            this.CircProgress.Visible = false;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btRefreshSifCh);
            this.groupBox3.Controls.Add(this.grdBzaCh);
            this.groupBox3.Controls.Add(this.lblSelected);
            this.groupBox3.Location = new System.Drawing.Point(14, 253);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(580, 227);
            this.groupBox3.TabIndex = 10;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "[ Information channel of selected BZA device ]";
            // 
            // btRefreshSifCh
            // 
            this.btRefreshSifCh.Location = new System.Drawing.Point(494, 23);
            this.btRefreshSifCh.Name = "btRefreshSifCh";
            this.btRefreshSifCh.Size = new System.Drawing.Size(73, 28);
            this.btRefreshSifCh.TabIndex = 11;
            this.btRefreshSifCh.Text = "Refresh";
            this.btRefreshSifCh.UseVisualStyleBackColor = true;
            this.btRefreshSifCh.Click += new System.EventHandler(this.btRefreshSifCh_Click);
            // 
            // grdBzaCh
            // 
            this.grdBzaCh.AllowUserResizing = C1.Win.C1FlexGrid.Classic.AllowUserResizeSettings.flexResizeNone;
            this.grdBzaCh.BackColorSel = System.Drawing.Color.LemonChiffon;
            this.grdBzaCh.ColumnInfo = "10,1,0,0,0,95,Columns:";
            this.grdBzaCh.EditOptions = ((C1.Win.C1FlexGrid.EditFlags)((C1.Win.C1FlexGrid.EditFlags.ExitOnLeftRightKeys | C1.Win.C1FlexGrid.EditFlags.EditOnRequest)));
            this.grdBzaCh.Font = new System.Drawing.Font("굴림", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(129)));
            this.grdBzaCh.ForeColorSel = System.Drawing.SystemColors.ControlText;
            this.grdBzaCh.GridColor = System.Drawing.Color.Silver;
            this.grdBzaCh.GridColorFixed = System.Drawing.SystemColors.ControlDark;
            this.grdBzaCh.Location = new System.Drawing.Point(11, 59);
            this.grdBzaCh.Name = "grdBzaCh";
            this.grdBzaCh.NodeClosedPicture = null;
            this.grdBzaCh.NodeOpenPicture = null;
            this.grdBzaCh.OutlineCol = -1;
            this.grdBzaCh.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.grdBzaCh.SelectionMode = C1.Win.C1FlexGrid.Classic.SelModeSettings.flexSelectionByRow;
            this.grdBzaCh.ShowCursor = true;
            this.grdBzaCh.Size = new System.Drawing.Size(556, 149);
            this.grdBzaCh.StyleInfo = resources.GetString("grdBzaCh.StyleInfo");
            this.grdBzaCh.TabIndex = 10;
            this.grdBzaCh.TreeColor = System.Drawing.Color.DarkGray;
            this.grdBzaCh.BeforeMouseDown += new C1.Win.C1FlexGrid.BeforeMouseDownEventHandler(this.grdBzaCh_BeforeMouseDown);
            this.grdBzaCh.RowColChange += new System.EventHandler(this.grdBzaCh_RowColChange);
            this.grdBzaCh.SelChange += new System.EventHandler(this.grdBzaCh_SelChange);
            this.grdBzaCh.MouseDown += new System.Windows.Forms.MouseEventHandler(this.grdBzaCh_MouseDown);
            // 
            // LnkLblLoad
            // 
            this.LnkLblLoad.AutoSize = true;
            this.LnkLblLoad.Location = new System.Drawing.Point(298, 530);
            this.LnkLblLoad.Name = "LnkLblLoad";
            this.LnkLblLoad.Size = new System.Drawing.Size(217, 14);
            this.LnkLblLoad.TabIndex = 13;
            this.LnkLblLoad.TabStop = true;
            this.LnkLblLoad.Text = "Reading and displaying a file.";
            this.LnkLblLoad.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkLblLoad_LinkClicked);
            // 
            // LnkLblSave
            // 
            this.LnkLblSave.AutoSize = true;
            this.LnkLblSave.Location = new System.Drawing.Point(5, 530);
            this.LnkLblSave.Name = "LnkLblSave";
            this.LnkLblSave.Size = new System.Drawing.Size(196, 14);
            this.LnkLblSave.TabIndex = 14;
            this.LnkLblSave.TabStop = true;
            this.LnkLblSave.Text = "Save as configuration file.";
            this.LnkLblSave.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkLblSave_LinkClicked);
            // 
            // LnkLblClose
            // 
            this.LnkLblClose.AutoSize = true;
            this.LnkLblClose.Location = new System.Drawing.Point(922, 530);
            this.LnkLblClose.Name = "LnkLblClose";
            this.LnkLblClose.Size = new System.Drawing.Size(42, 14);
            this.LnkLblClose.TabIndex = 15;
            this.LnkLblClose.TabStop = true;
            this.LnkLblClose.Text = "Close";
            this.LnkLblClose.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkLblClose_LinkClicked);
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            this.backgroundWorker1.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker1_RunWorkerCompleted);
            // 
            // LnkLblSave1
            // 
            this.LnkLblSave1.AutoSize = true;
            this.LnkLblSave1.Location = new System.Drawing.Point(628, 530);
            this.LnkLblSave1.Name = "LnkLblSave1";
            this.LnkLblSave1.Size = new System.Drawing.Size(175, 14);
            this.LnkLblSave1.TabIndex = 16;
            this.LnkLblSave1.TabStop = true;
            this.LnkLblSave1.Text = "Save configuration file.";
            this.LnkLblSave1.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkLblSave1_LinkClicked);
            // 
            // frmRegBZA
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(976, 558);
            this.Controls.Add(this.LnkLblSave1);
            this.Controls.Add(this.LnkLblClose);
            this.Controls.Add(this.LnkLblSave);
            this.Controls.Add(this.LnkLblLoad);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "frmRegBZA";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Registration BZA";
            this.TopMost = true;
            ((System.ComponentModel.ISupportInitialize)(this.grdChs)).EndInit();
            this.RegMenu.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.grdBZAs)).EndInit();
            this.ScanMenu1.ResumeLayout(false);
            this.ScanMenu.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grdBzaCh)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private C1.Win.C1FlexGrid.Classic.C1FlexGridClassic grdChs;
        private C1.Win.C1FlexGrid.Classic.C1FlexGridClassic grdBZAs;
        private System.Windows.Forms.RadioButton rdoAll;
        private System.Windows.Forms.RadioButton rdoBZA;
        private System.Windows.Forms.Label lblSelected;
        private System.Windows.Forms.ContextMenuStrip ScanMenu;
        private System.Windows.Forms.ToolStripMenuItem CmdBZALink;
        private System.Windows.Forms.Label lblSelectReg;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private C1.Win.C1FlexGrid.Classic.C1FlexGridClassic grdBzaCh;
        private System.Windows.Forms.LinkLabel LnkLblLoad;
        private System.Windows.Forms.LinkLabel LnkLblSave;
        private System.Windows.Forms.LinkLabel LnkLblClose;
        private System.Windows.Forms.ToolStripMenuItem UploadZim;
        private System.Windows.Forms.ContextMenuStrip ScanMenu1;
        private System.Windows.Forms.ToolStripMenuItem UploadSif;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Label lblselsif;
        private CircularProgress.CircularProgressControl CircProgress;
        private System.Windows.Forms.Button btRefreshSifCh;
        private System.Windows.Forms.LinkLabel LnkLblSave1;
        private System.Windows.Forms.ContextMenuStrip RegMenu;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
    }
}