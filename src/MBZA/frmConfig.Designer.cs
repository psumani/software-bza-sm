namespace ZiveLab.ZM
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmConfig));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lstch = new System.Windows.Forms.ListBox();
            this.grtinf = new System.Windows.Forms.GroupBox();
            this.infoch = new ZiveLab.ZM.InfomationGrid();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.ToolStripDummyInfo = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1.SuspendLayout();
            this.grtinf.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.groupBox1.Controls.Add(this.lstch);
            this.groupBox1.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 28);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(133, 375);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "[ Channels ]";
            // 
            // lstch
            // 
            this.lstch.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lstch.FormattingEnabled = true;
            this.lstch.ItemHeight = 14;
            this.lstch.Location = new System.Drawing.Point(8, 20);
            this.lstch.Name = "lstch";
            this.lstch.Size = new System.Drawing.Size(119, 340);
            this.lstch.TabIndex = 0;
            this.lstch.SelectedIndexChanged += new System.EventHandler(this.lstch_SelectedIndexChanged);
            // 
            // grtinf
            // 
            this.grtinf.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.grtinf.Controls.Add(this.infoch);
            this.grtinf.Location = new System.Drawing.Point(151, 28);
            this.grtinf.Name = "grtinf";
            this.grtinf.Size = new System.Drawing.Size(730, 375);
            this.grtinf.TabIndex = 19;
            this.grtinf.TabStop = false;
            this.grtinf.Text = "[ Channel 0 (serial-0) ]";
            // 
            // infoch
            // 
            this.infoch.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.infoch.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.infoch.Location = new System.Drawing.Point(6, 21);
            this.infoch.Name = "infoch";
            this.infoch.Size = new System.Drawing.Size(710, 339);
            this.infoch.TabIndex = 19;
            // 
            // menuStrip1
            // 
            this.menuStrip1.AllowMerge = false;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripDummyInfo});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(890, 24);
            this.menuStrip1.TabIndex = 20;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // ToolStripDummyInfo
            // 
            this.ToolStripDummyInfo.Image = ((System.Drawing.Image)(resources.GetObject("ToolStripDummyInfo.Image")));
            this.ToolStripDummyInfo.Name = "ToolStripDummyInfo";
            this.ToolStripDummyInfo.Size = new System.Drawing.Size(171, 20);
            this.ToolStripDummyInfo.Text = "Edit dummy information.";
            this.ToolStripDummyInfo.Click += new System.EventHandler(this.ToolStripDummyInfo_Click);
            // 
            // frmConfig
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(890, 408);
            this.Controls.Add(this.grtinf);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.menuStrip1);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "frmConfig";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Configuration";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmConfig_FormClosing);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmConfig_FormClosed);
            this.Load += new System.EventHandler(this.frmConfig_Load);
            this.LocationChanged += new System.EventHandler(this.frmConfig_LocationChanged);
            this.SizeChanged += new System.EventHandler(this.frmConfig_SizeChanged);
            this.groupBox1.ResumeLayout(false);
            this.grtinf.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ListBox lstch;
        private System.Windows.Forms.GroupBox grtinf;
        private InfomationGrid infoch;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem ToolStripDummyInfo;
    }
}