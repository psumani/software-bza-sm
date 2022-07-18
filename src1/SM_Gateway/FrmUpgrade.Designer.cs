namespace SM_Gateway
{
    partial class FrmUpgrade
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmUpgrade));
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.btCmdNext = new System.Windows.Forms.Button();
            this.descAction = new System.Windows.Forms.TextBox();
            this.BtCmdPrev = new System.Windows.Forms.Button();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.BtCmdSkip = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // progressBar1
            // 
            this.progressBar1.Location = new System.Drawing.Point(242, 53);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(303, 18);
            this.progressBar1.TabIndex = 1;
            // 
            // btCmdNext
            // 
            this.btCmdNext.Location = new System.Drawing.Point(470, 75);
            this.btCmdNext.Name = "btCmdNext";
            this.btCmdNext.Size = new System.Drawing.Size(75, 23);
            this.btCmdNext.TabIndex = 2;
            this.btCmdNext.Text = ">>";
            this.btCmdNext.UseVisualStyleBackColor = true;
            this.btCmdNext.Click += new System.EventHandler(this.btCmdNext_Click);
            // 
            // descAction
            // 
            this.descAction.BackColor = System.Drawing.Color.WhiteSmoke;
            this.descAction.Location = new System.Drawing.Point(242, 12);
            this.descAction.Multiline = true;
            this.descAction.Name = "descAction";
            this.descAction.Size = new System.Drawing.Size(303, 35);
            this.descAction.TabIndex = 4;
            // 
            // BtCmdPrev
            // 
            this.BtCmdPrev.Location = new System.Drawing.Point(242, 75);
            this.BtCmdPrev.Name = "BtCmdPrev";
            this.BtCmdPrev.Size = new System.Drawing.Size(73, 25);
            this.BtCmdPrev.TabIndex = 6;
            this.BtCmdPrev.Text = "<<";
            this.BtCmdPrev.UseVisualStyleBackColor = true;
            this.BtCmdPrev.Click += new System.EventHandler(this.BtCmdPrev_Click);
            // 
            // listBox1
            // 
            this.listBox1.BackColor = System.Drawing.Color.WhiteSmoke;
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 12;
            this.listBox1.Location = new System.Drawing.Point(12, 12);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(224, 88);
            this.listBox1.TabIndex = 7;
            this.listBox1.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // backgroundWorker1
            // 
            this.backgroundWorker1.WorkerReportsProgress = true;
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            this.backgroundWorker1.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorker1_ProgressChanged);
            this.backgroundWorker1.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorker1_RunWorkerCompleted);
            // 
            // BtCmdSkip
            // 
            this.BtCmdSkip.Location = new System.Drawing.Point(379, 75);
            this.BtCmdSkip.Name = "BtCmdSkip";
            this.BtCmdSkip.Size = new System.Drawing.Size(75, 23);
            this.BtCmdSkip.TabIndex = 8;
            this.BtCmdSkip.Text = "Skip";
            this.BtCmdSkip.UseVisualStyleBackColor = true;
            this.BtCmdSkip.Click += new System.EventHandler(this.BtCmdSkip_Click);
            // 
            // FrmUpgrade
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(557, 109);
            this.Controls.Add(this.BtCmdSkip);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.BtCmdPrev);
            this.Controls.Add(this.descAction);
            this.Controls.Add(this.btCmdNext);
            this.Controls.Add(this.progressBar1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmUpgrade";
            this.Text = "Upgrade device";
            this.TransparencyKey = System.Drawing.Color.Transparent;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmUpgrade_FormClosing);
            this.Load += new System.EventHandler(this.FrmUpgrade_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.Button btCmdNext;
        private System.Windows.Forms.TextBox descAction;
        private System.Windows.Forms.Button BtCmdPrev;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Button BtCmdSkip;
    }
}