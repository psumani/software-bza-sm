

namespace SM_Gateway
{
    
    partial class FormMain
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMain));
            this.notifyIcon1 = new System.Windows.Forms.NotifyIcon(this.components);
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.CommStatGrid = new C1.Win.C1FlexGrid.Classic.C1FlexGridClassic();
            this.contextMenuStrip2 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.changeFirmwareToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.upgradeDeviceToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.contextMenuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CommStatGrid)).BeginInit();
            this.contextMenuStrip2.SuspendLayout();
            this.SuspendLayout();
            // 
            // notifyIcon1
            // 
            this.notifyIcon1.ContextMenuStrip = this.contextMenuStrip1;
            this.notifyIcon1.Icon = ((System.Drawing.Icon)(resources.GetObject("notifyIcon1.Icon")));
            this.notifyIcon1.Text = "notifyIcon1";
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.exitToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(94, 26);
            this.contextMenuStrip1.TabStop = true;
            this.contextMenuStrip1.Text = "Menu";
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.AutoToolTip = true;
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(93, 22);
            this.exitToolStripMenuItem.Text = "Exit";
            this.exitToolStripMenuItem.ToolTipText = "Exit Application";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 200;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // CommStatGrid
            // 
            this.CommStatGrid.AutoGenerateColumns = false;
            this.CommStatGrid.AutoSizeMode = C1.Win.C1FlexGrid.Classic.AutoSizeSettings.flexAutoSizeRowHeight;
            this.CommStatGrid.ColumnInfo = "10,1,0,0,0,100,Columns:";
            this.CommStatGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.CommStatGrid.GridColor = System.Drawing.SystemColors.ControlLight;
            this.CommStatGrid.GridColorFixed = System.Drawing.SystemColors.ControlDark;
            this.CommStatGrid.Location = new System.Drawing.Point(0, 0);
            this.CommStatGrid.Name = "CommStatGrid";
            this.CommStatGrid.NodeClosedPicture = null;
            this.CommStatGrid.NodeOpenPicture = null;
            this.CommStatGrid.OutlineCol = -1;
            this.CommStatGrid.Size = new System.Drawing.Size(1004, 586);
            this.CommStatGrid.StyleInfo = resources.GetString("CommStatGrid.StyleInfo");
            this.CommStatGrid.TabIndex = 1;
            this.CommStatGrid.TreeColor = System.Drawing.Color.DarkGray;
            this.CommStatGrid.MouseEnterCell += new C1.Win.C1FlexGrid.RowColEventHandler(this.CommStatGrid_MouseEnterCell);
            this.CommStatGrid.MouseLeaveCell += new C1.Win.C1FlexGrid.RowColEventHandler(this.CommStatGrid_MouseLeaveCell);
            this.CommStatGrid.RowValidating += new C1.Win.C1FlexGrid.RowColEventHandler(this.CommStatGrid_RowValidating);
            this.CommStatGrid.SizeChanged += new System.EventHandler(this.CommStatGrid_SizeChanged);
            this.CommStatGrid.Click += new System.EventHandler(this.CommStatGrid_Click);
            this.CommStatGrid.MouseClick += new System.Windows.Forms.MouseEventHandler(this.CommStatGrid_MouseClick);
            this.CommStatGrid.MouseDown += new System.Windows.Forms.MouseEventHandler(this.CommStatGrid_MouseDown);
            // 
            // contextMenuStrip2
            // 
            this.contextMenuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.changeFirmwareToolStripMenuItem,
            this.upgradeDeviceToolStripMenuItem});
            this.contextMenuStrip2.Name = "contextMenuStrip2";
            this.contextMenuStrip2.Size = new System.Drawing.Size(167, 70);
            // 
            // changeFirmwareToolStripMenuItem
            // 
            this.changeFirmwareToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("changeFirmwareToolStripMenuItem.Image")));
            this.changeFirmwareToolStripMenuItem.Name = "changeFirmwareToolStripMenuItem";
            this.changeFirmwareToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
            this.changeFirmwareToolStripMenuItem.Text = "Change firmware";
            this.changeFirmwareToolStripMenuItem.Click += new System.EventHandler(this.changeFirmwareToolStripMenuItem_Click);
            // 
            // upgradeDeviceToolStripMenuItem
            // 
            this.upgradeDeviceToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("upgradeDeviceToolStripMenuItem.Image")));
            this.upgradeDeviceToolStripMenuItem.Name = "upgradeDeviceToolStripMenuItem";
            this.upgradeDeviceToolStripMenuItem.Size = new System.Drawing.Size(166, 22);
            this.upgradeDeviceToolStripMenuItem.Text = "Upgrade device";
            this.upgradeDeviceToolStripMenuItem.Click += new System.EventHandler(this.upgradeDeviceToolStripMenuItem_Click);
            // 
            // FormMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(96F, 96F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.ClientSize = new System.Drawing.Size(1004, 586);
            this.Controls.Add(this.CommStatGrid);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormMain";
            this.RightToLeftLayout = true;
            this.Text = "SM_Gateway";
            this.Load += new System.EventHandler(this.FormMain_Load);
            this.SizeChanged += new System.EventHandler(this.FormMain_SizeChanged);
            this.contextMenuStrip1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.CommStatGrid)).EndInit();
            this.contextMenuStrip2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.NotifyIcon notifyIcon1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.Timer timer1;
        private C1.Win.C1FlexGrid.Classic.C1FlexGridClassic CommStatGrid;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip2;
        private System.Windows.Forms.ToolStripMenuItem changeFirmwareToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem upgradeDeviceToolStripMenuItem;
    }
}

