namespace App.Zim.Player
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.btnConnsif = new System.Windows.Forms.Button();
            this.btnEisTest = new System.Windows.Forms.Button();
            this.btnUploadSIF = new System.Windows.Forms.Button();
            this.btnUploadZIM = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.appConfigurationToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.communicationToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.MenuConfig = new System.Windows.Forms.ToolStripMenuItem();
            this.deviceInformationToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.deviceCheckingToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.batteryParametersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnConnsif
            // 
            this.btnConnsif.Location = new System.Drawing.Point(12, 27);
            this.btnConnsif.Name = "btnConnsif";
            this.btnConnsif.Size = new System.Drawing.Size(247, 30);
            this.btnConnsif.TabIndex = 3;
            this.btnConnsif.Text = "Connect or Reconnect SIF.";
            this.btnConnsif.UseVisualStyleBackColor = true;
            this.btnConnsif.Click += new System.EventHandler(this.btnConnsif_Click);
            this.btnConnsif.KeyDown += new System.Windows.Forms.KeyEventHandler(this.btnConnsif_KeyDown);
            // 
            // btnEisTest
            // 
            this.btnEisTest.Location = new System.Drawing.Point(12, 63);
            this.btnEisTest.Name = "btnEisTest";
            this.btnEisTest.Size = new System.Drawing.Size(247, 30);
            this.btnEisTest.TabIndex = 5;
            this.btnEisTest.Text = "Control and Measure.";
            this.btnEisTest.UseVisualStyleBackColor = true;
            this.btnEisTest.Click += new System.EventHandler(this.btnEisTest_Click);
            this.btnEisTest.KeyDown += new System.Windows.Forms.KeyEventHandler(this.btnEisTest_KeyDown);
            // 
            // btnUploadSIF
            // 
            this.btnUploadSIF.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btnUploadSIF.Location = new System.Drawing.Point(309, 26);
            this.btnUploadSIF.Name = "btnUploadSIF";
            this.btnUploadSIF.Size = new System.Drawing.Size(247, 30);
            this.btnUploadSIF.TabIndex = 6;
            this.btnUploadSIF.Text = "Firmware Change of SIF.";
            this.btnUploadSIF.UseVisualStyleBackColor = true;
            this.btnUploadSIF.Click += new System.EventHandler(this.btnUploadSIF_Click);
            this.btnUploadSIF.KeyDown += new System.Windows.Forms.KeyEventHandler(this.btnUploadSIF_KeyDown);
            // 
            // btnUploadZIM
            // 
            this.btnUploadZIM.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.btnUploadZIM.Location = new System.Drawing.Point(309, 62);
            this.btnUploadZIM.Name = "btnUploadZIM";
            this.btnUploadZIM.Size = new System.Drawing.Size(247, 30);
            this.btnUploadZIM.TabIndex = 8;
            this.btnUploadZIM.Text = "Firmware Change of FPGA in ZIM.";
            this.btnUploadZIM.UseVisualStyleBackColor = true;
            this.btnUploadZIM.Click += new System.EventHandler(this.btnUploadZIM_Click);
            this.btnUploadZIM.KeyDown += new System.Windows.Forms.KeyEventHandler(this.btnUploadZIM_KeyDown);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.appConfigurationToolStripMenuItem,
            this.MenuConfig});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(566, 24);
            this.menuStrip1.TabIndex = 9;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // appConfigurationToolStripMenuItem
            // 
            this.appConfigurationToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.communicationToolStripMenuItem,
            this.batteryParametersToolStripMenuItem});
            this.appConfigurationToolStripMenuItem.Name = "appConfigurationToolStripMenuItem";
            this.appConfigurationToolStripMenuItem.Size = new System.Drawing.Size(62, 20);
            this.appConfigurationToolStripMenuItem.Text = "Settings";
            // 
            // communicationToolStripMenuItem
            // 
            this.communicationToolStripMenuItem.Name = "communicationToolStripMenuItem";
            this.communicationToolStripMenuItem.Size = new System.Drawing.Size(174, 22);
            this.communicationToolStripMenuItem.Text = "Application";
            this.communicationToolStripMenuItem.Click += new System.EventHandler(this.communicationToolStripMenuItem_Click);
            // 
            // MenuConfig
            // 
            this.MenuConfig.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.deviceInformationToolStripMenuItem,
            this.toolStripSeparator1,
            this.deviceCheckingToolStripMenuItem});
            this.MenuConfig.Name = "MenuConfig";
            this.MenuConfig.Size = new System.Drawing.Size(133, 20);
            this.MenuConfig.Text = "Device Configuration";
            // 
            // deviceInformationToolStripMenuItem
            // 
            this.deviceInformationToolStripMenuItem.Name = "deviceInformationToolStripMenuItem";
            this.deviceInformationToolStripMenuItem.Size = new System.Drawing.Size(177, 22);
            this.deviceInformationToolStripMenuItem.Text = "Device Information";
            this.deviceInformationToolStripMenuItem.Click += new System.EventHandler(this.deviceInformationToolStripMenuItem_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(174, 6);
            // 
            // deviceCheckingToolStripMenuItem
            // 
            this.deviceCheckingToolStripMenuItem.Name = "deviceCheckingToolStripMenuItem";
            this.deviceCheckingToolStripMenuItem.Size = new System.Drawing.Size(177, 22);
            this.deviceCheckingToolStripMenuItem.Text = "Device Checking";
            this.deviceCheckingToolStripMenuItem.Click += new System.EventHandler(this.deviceCheckingToolStripMenuItem_Click);
            // 
            // batteryParametersToolStripMenuItem
            // 
            this.batteryParametersToolStripMenuItem.Name = "batteryParametersToolStripMenuItem";
            this.batteryParametersToolStripMenuItem.Size = new System.Drawing.Size(174, 22);
            this.batteryParametersToolStripMenuItem.Text = "Battery Parameters";
            this.batteryParametersToolStripMenuItem.Click += new System.EventHandler(this.batteryParametersToolStripMenuItem_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(566, 104);
            this.Controls.Add(this.btnUploadZIM);
            this.Controls.Add(this.btnUploadSIF);
            this.Controls.Add(this.btnEisTest);
            this.Controls.Add(this.btnConnsif);
            this.Controls.Add(this.menuStrip1);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "BM";
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.frmMain_KeyDown);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnConnsif;
        private System.Windows.Forms.Button btnEisTest;
        private System.Windows.Forms.Button btnUploadSIF;
        private System.Windows.Forms.Button btnUploadZIM;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem MenuConfig;
        private System.Windows.Forms.ToolStripMenuItem deviceInformationToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem deviceCheckingToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem appConfigurationToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem communicationToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem batteryParametersToolStripMenuItem;
    }
}

