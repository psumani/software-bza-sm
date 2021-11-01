namespace App.Zim.Player
{
    partial class frmWebServceCfg
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
            this.LstFindFile = new System.Windows.Forms.ListBox();
            this.LnklblSelFolder = new System.Windows.Forms.LinkLabel();
            this.LnklblRefFindItems = new System.Windows.Forms.LinkLabel();
            this.lblFindInfo = new System.Windows.Forms.Label();
            this.LnklblApplyService = new System.Windows.Forms.LinkLabel();
            this.progSendWebApp = new System.Windows.Forms.ProgressBar();
            this.SuspendLayout();
            // 
            // LstFindFile
            // 
            this.LstFindFile.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.LstFindFile.FormattingEnabled = true;
            this.LstFindFile.HorizontalScrollbar = true;
            this.LstFindFile.ItemHeight = 12;
            this.LstFindFile.Location = new System.Drawing.Point(12, 100);
            this.LstFindFile.Name = "LstFindFile";
            this.LstFindFile.Size = new System.Drawing.Size(474, 364);
            this.LstFindFile.TabIndex = 8;
            // 
            // LnklblSelFolder
            // 
            this.LnklblSelFolder.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.LnklblSelFolder.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.LnklblSelFolder.Location = new System.Drawing.Point(12, 9);
            this.LnklblSelFolder.Name = "LnklblSelFolder";
            this.LnklblSelFolder.Size = new System.Drawing.Size(474, 67);
            this.LnklblSelFolder.TabIndex = 9;
            this.LnklblSelFolder.TabStop = true;
            this.LnklblSelFolder.Text = "F:\\SM_Document\\download_officetalk\\ControlNand";
            this.LnklblSelFolder.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblSelFolder_LinkClicked);
            // 
            // LnklblRefFindItems
            // 
            this.LnklblRefFindItems.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.LnklblRefFindItems.AutoSize = true;
            this.LnklblRefFindItems.Location = new System.Drawing.Point(12, 476);
            this.LnklblRefFindItems.Name = "LnklblRefFindItems";
            this.LnklblRefFindItems.Size = new System.Drawing.Size(83, 12);
            this.LnklblRefFindItems.TabIndex = 13;
            this.LnklblRefFindItems.TabStop = true;
            this.LnklblRefFindItems.Text = "Refresh items";
            this.LnklblRefFindItems.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblRefFindItems_LinkClicked);
            // 
            // lblFindInfo
            // 
            this.lblFindInfo.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblFindInfo.Location = new System.Drawing.Point(12, 80);
            this.lblFindInfo.Name = "lblFindInfo";
            this.lblFindInfo.Size = new System.Drawing.Size(473, 18);
            this.lblFindInfo.TabIndex = 14;
            this.lblFindInfo.Text = "label1";
            // 
            // LnklblApplyService
            // 
            this.LnklblApplyService.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.LnklblApplyService.AutoSize = true;
            this.LnklblApplyService.Location = new System.Drawing.Point(131, 476);
            this.LnklblApplyService.Name = "LnklblApplyService";
            this.LnklblApplyService.Size = new System.Drawing.Size(121, 12);
            this.LnklblApplyService.TabIndex = 16;
            this.LnklblApplyService.TabStop = true;
            this.LnklblApplyService.Text = "Apply web services.";
            this.LnklblApplyService.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnklblApplyService_LinkClicked);
            // 
            // progSendWebApp
            // 
            this.progSendWebApp.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.progSendWebApp.Location = new System.Drawing.Point(265, 474);
            this.progSendWebApp.Name = "progSendWebApp";
            this.progSendWebApp.Size = new System.Drawing.Size(220, 13);
            this.progSendWebApp.Style = System.Windows.Forms.ProgressBarStyle.Continuous;
            this.progSendWebApp.TabIndex = 17;
            // 
            // frmWebServceCfg
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(498, 496);
            this.Controls.Add(this.progSendWebApp);
            this.Controls.Add(this.LnklblApplyService);
            this.Controls.Add(this.lblFindInfo);
            this.Controls.Add(this.LstFindFile);
            this.Controls.Add(this.LnklblRefFindItems);
            this.Controls.Add(this.LnklblSelFolder);
            this.MaximizeBox = false;
            this.Name = "frmWebServceCfg";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Set up the web site information.";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ListBox LstFindFile;
        private System.Windows.Forms.LinkLabel LnklblSelFolder;
        private System.Windows.Forms.LinkLabel LnklblRefFindItems;
        private System.Windows.Forms.Label lblFindInfo;
        private System.Windows.Forms.LinkLabel LnklblApplyService;
        private System.Windows.Forms.ProgressBar progSendWebApp;
    }
}