namespace ZiveLab.ZM
{
    partial class frmSplash
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSplash));
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.lnkSearch = new System.Windows.Forms.LinkLabel();
            this.lnkRegister = new System.Windows.Forms.LinkLabel();
            this.LnkContinue = new System.Windows.Forms.LinkLabel();
            this.CircProgress = new CircularProgress.CircularProgressControl();
            this.LblAction = new System.Windows.Forms.Label();
            this.txtResult = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lnkExit = new System.Windows.Forms.LinkLabel();
            this.label1 = new System.Windows.Forms.Label();
            this.LblVer = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.WorkerReportsProgress = true;
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            this.backgroundWorker1.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker1_RunWorkerCompleted);
            // 
            // lnkSearch
            // 
            this.lnkSearch.AutoSize = true;
            this.lnkSearch.LinkColor = System.Drawing.Color.Blue;
            this.lnkSearch.Location = new System.Drawing.Point(477, 170);
            this.lnkSearch.Name = "lnkSearch";
            this.lnkSearch.Size = new System.Drawing.Size(182, 14);
            this.lnkSearch.TabIndex = 5;
            this.lnkSearch.TabStop = true;
            this.lnkSearch.Text = "Perform device discovery.";
            this.lnkSearch.VisitedLinkColor = System.Drawing.Color.Blue;
            this.lnkSearch.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkSearch_LinkClicked);
            // 
            // lnkRegister
            // 
            this.lnkRegister.AutoSize = true;
            this.lnkRegister.LinkColor = System.Drawing.Color.Blue;
            this.lnkRegister.Location = new System.Drawing.Point(477, 213);
            this.lnkRegister.Name = "lnkRegister";
            this.lnkRegister.Size = new System.Drawing.Size(238, 14);
            this.lnkRegister.TabIndex = 6;
            this.lnkRegister.TabStop = true;
            this.lnkRegister.Text = "Modify the device\'s registration.";
            this.lnkRegister.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkRegister_LinkClicked);
            // 
            // LnkContinue
            // 
            this.LnkContinue.AutoSize = true;
            this.LnkContinue.LinkColor = System.Drawing.Color.Blue;
            this.LnkContinue.Location = new System.Drawing.Point(477, 316);
            this.LnkContinue.Name = "LnkContinue";
            this.LnkContinue.Size = new System.Drawing.Size(147, 14);
            this.LnkContinue.TabIndex = 7;
            this.LnkContinue.TabStop = true;
            this.LnkContinue.Text = "Continue to proceed.";
            this.LnkContinue.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.LnkContinue_LinkClicked);
            // 
            // CircProgress
            // 
            this.CircProgress.BackColor = System.Drawing.SystemColors.Control;
            this.CircProgress.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.CircProgress.Cursor = System.Windows.Forms.Cursors.No;
            this.CircProgress.ForeColor = System.Drawing.Color.Black;
            this.CircProgress.Interval = 60;
            this.CircProgress.Location = new System.Drawing.Point(379, 17);
            this.CircProgress.MinimumSize = new System.Drawing.Size(28, 33);
            this.CircProgress.Name = "CircProgress";
            this.CircProgress.Rotation = CircularProgress.CircularProgressControl.Direction.CLOCKWISE;
            this.CircProgress.Size = new System.Drawing.Size(35, 38);
            this.CircProgress.StartAngle = 270;
            this.CircProgress.TabIndex = 9;
            this.CircProgress.TickColor = System.Drawing.Color.Purple;
            this.CircProgress.Visible = false;
            // 
            // LblAction
            // 
            this.LblAction.AutoSize = true;
            this.LblAction.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LblAction.ForeColor = System.Drawing.Color.Indigo;
            this.LblAction.Location = new System.Drawing.Point(14, 141);
            this.LblAction.Name = "LblAction";
            this.LblAction.Size = new System.Drawing.Size(49, 14);
            this.LblAction.TabIndex = 10;
            this.LblAction.Text = "label1";
            // 
            // txtResult
            // 
            this.txtResult.BackColor = System.Drawing.Color.White;
            this.txtResult.Font = new System.Drawing.Font("Consolas", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtResult.ForeColor = System.Drawing.Color.Black;
            this.txtResult.Location = new System.Drawing.Point(10, 162);
            this.txtResult.Multiline = true;
            this.txtResult.Name = "txtResult";
            this.txtResult.ReadOnly = true;
            this.txtResult.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtResult.Size = new System.Drawing.Size(460, 180);
            this.txtResult.TabIndex = 11;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pictureBox1.BackgroundImage")));
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(476, 30);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(240, 93);
            this.pictureBox1.TabIndex = 12;
            this.pictureBox1.TabStop = false;
            // 
            // lnkExit
            // 
            this.lnkExit.AutoSize = true;
            this.lnkExit.LinkColor = System.Drawing.Color.Blue;
            this.lnkExit.Location = new System.Drawing.Point(477, 278);
            this.lnkExit.Name = "lnkExit";
            this.lnkExit.Size = new System.Drawing.Size(168, 14);
            this.lnkExit.TabIndex = 13;
            this.lnkExit.TabStop = true;
            this.lnkExit.Text = "Terminates the program.";
            this.lnkExit.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkExit_LinkClicked);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Arial Narrow", 27.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Indigo;
            this.label1.Location = new System.Drawing.Point(74, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(313, 43);
            this.label1.TabIndex = 14;
            this.label1.Text = "Impedance Manager";
            // 
            // LblVer
            // 
            this.LblVer.AutoSize = true;
            this.LblVer.Font = new System.Drawing.Font("Arial Narrow", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LblVer.ForeColor = System.Drawing.Color.Purple;
            this.LblVer.Location = new System.Drawing.Point(209, 92);
            this.LblVer.Name = "LblVer";
            this.LblVer.Size = new System.Drawing.Size(169, 31);
            this.LblVer.TabIndex = 15;
            this.LblVer.Text = "ZM   ver 1.0.0.0";
            // 
            // frmSplash
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(725, 351);
            this.Controls.Add(this.LblVer);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lnkExit);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.txtResult);
            this.Controls.Add(this.LblAction);
            this.Controls.Add(this.CircProgress);
            this.Controls.Add(this.LnkContinue);
            this.Controls.Add(this.lnkRegister);
            this.Controls.Add(this.lnkSearch);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSplash";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ZM v1.0.0.0";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.LinkLabel lnkSearch;
        private System.Windows.Forms.LinkLabel lnkRegister;
        private System.Windows.Forms.LinkLabel LnkContinue;
        private CircularProgress.CircularProgressControl CircProgress;
        private System.Windows.Forms.Label LblAction;
        private System.Windows.Forms.TextBox txtResult;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.LinkLabel lnkExit;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label LblVer;
    }
}