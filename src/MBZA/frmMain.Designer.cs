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
            this.hgrid = new C1.Win.C1FlexGrid.C1FlexGrid();
            this.gtip = new System.Windows.Forms.ToolTip(this.components);
            this.btselall = new System.Windows.Forms.Button();
            this.btdeselall = new System.Windows.Forms.Button();
            this.btgrpstart = new System.Windows.Forms.Button();
            this.btgrpstop = new System.Windows.Forms.Button();
            this.btgrpmon = new System.Windows.Forms.Button();
            this.btgrptech = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.hgrid)).BeginInit();
            this.SuspendLayout();
            // 
            // hgrid
            // 
            this.hgrid.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.hgrid.BackColor = System.Drawing.Color.WhiteSmoke;
            this.hgrid.ColumnInfo = "10,1,0,0,0,105,Columns:";
            this.hgrid.ForeColor = System.Drawing.Color.Black;
            this.hgrid.Location = new System.Drawing.Point(7, 36);
            this.hgrid.Name = "hgrid";
            this.hgrid.Rows.DefaultSize = 21;
            this.hgrid.ShowButtons = C1.Win.C1FlexGrid.ShowButtonsEnum.Always;
            this.hgrid.Size = new System.Drawing.Size(1582, 264);
            this.hgrid.StyleInfo = resources.GetString("hgrid.StyleInfo");
            this.hgrid.TabIndex = 1;
            this.hgrid.EnterCell += new System.EventHandler(this.hgrid_EnterCell);
            this.hgrid.CellChecked += new C1.Win.C1FlexGrid.RowColEventHandler(this.hgrid_CellChecked);
            this.hgrid.Paint += new System.Windows.Forms.PaintEventHandler(this.hgrid_Paint);
            this.hgrid.MouseMove += new System.Windows.Forms.MouseEventHandler(this.hgrid_MouseMove);
            // 
            // btselall
            // 
            this.btselall.Image = global::ZiveLab.ZM.Properties.Resources.chevron_down;
            this.btselall.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btselall.Location = new System.Drawing.Point(100, 6);
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
            this.btdeselall.Location = new System.Drawing.Point(230, 6);
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
            this.btgrpstart.Location = new System.Drawing.Point(510, 6);
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
            this.btgrpstop.Location = new System.Drawing.Point(641, 6);
            this.btgrpstop.Name = "btgrpstop";
            this.btgrpstop.Size = new System.Drawing.Size(124, 24);
            this.btgrpstop.TabIndex = 7;
            this.btgrpstop.Text = "  Stop";
            this.btgrpstop.UseVisualStyleBackColor = true;
            this.btgrpstop.Click += new System.EventHandler(this.btgrpstop_Click);
            // 
            // btgrpmon
            // 
            this.btgrpmon.Image = global::ZiveLab.ZM.Properties.Resources.Monitor;
            this.btgrpmon.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btgrpmon.Location = new System.Drawing.Point(781, 6);
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
            this.btgrptech.Location = new System.Drawing.Point(370, 6);
            this.btgrptech.Name = "btgrptech";
            this.btgrptech.Size = new System.Drawing.Size(124, 24);
            this.btgrptech.TabIndex = 9;
            this.btgrptech.Text = "  Technique ";
            this.btgrptech.UseVisualStyleBackColor = true;
            this.btgrptech.Click += new System.EventHandler(this.btgrptech_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(4, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 14);
            this.label1.TabIndex = 10;
            this.label1.Text = "Group tools/";
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1593, 305);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btgrptech);
            this.Controls.Add(this.btgrpmon);
            this.Controls.Add(this.btgrpstop);
            this.Controls.Add(this.btgrpstart);
            this.Controls.Add(this.btdeselall);
            this.Controls.Add(this.btselall);
            this.Controls.Add(this.hgrid);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "frmMain";
            this.Text = "Monitor of Channels .";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmMain_FormClosing);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.LocationChanged += new System.EventHandler(this.frmMain_LocationChanged);
            this.SizeChanged += new System.EventHandler(this.frmMain_SizeChanged);
            ((System.ComponentModel.ISupportInitialize)(this.hgrid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private C1.Win.C1FlexGrid.C1FlexGrid hgrid;
        private System.Windows.Forms.ToolTip gtip;
        private System.Windows.Forms.Button btselall;
        private System.Windows.Forms.Button btdeselall;
        private System.Windows.Forms.Button btgrpstart;
        private System.Windows.Forms.Button btgrpstop;
        private System.Windows.Forms.Button btgrpmon;
        private System.Windows.Forms.Button btgrptech;
        private System.Windows.Forms.Label label1;
    }
}

