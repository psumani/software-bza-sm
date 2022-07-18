namespace SM_Gateway
{
    partial class frmGateBurn
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmGateBurn));
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.btBurn = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btFileSelect = new System.Windows.Forms.Button();
            this.textFile = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btdevicerefresh = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.btadds = new System.Windows.Forms.Button();
            this.btdels = new System.Windows.Forms.Button();
            this.btdel = new System.Windows.Forms.Button();
            this.btadd = new System.Windows.Forms.Button();
            this.listTarget = new System.Windows.Forms.ListBox();
            this.listChannel = new System.Windows.Forms.ListBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textDesc = new System.Windows.Forms.TextBox();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // progressBar1
            // 
            this.progressBar1.Location = new System.Drawing.Point(295, 75);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(439, 20);
            this.progressBar1.TabIndex = 10;
            // 
            // btBurn
            // 
            this.btBurn.Image = ((System.Drawing.Image)(resources.GetObject("btBurn.Image")));
            this.btBurn.Location = new System.Drawing.Point(740, 75);
            this.btBurn.Name = "btBurn";
            this.btBurn.Size = new System.Drawing.Size(29, 23);
            this.btBurn.TabIndex = 11;
            this.btBurn.UseVisualStyleBackColor = true;
            this.btBurn.Click += new System.EventHandler(this.btBurn_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btFileSelect);
            this.groupBox1.Controls.Add(this.textFile);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(757, 48);
            this.groupBox1.TabIndex = 12;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "[Select firmware ]";
            // 
            // btFileSelect
            // 
            this.btFileSelect.Image = ((System.Drawing.Image)(resources.GetObject("btFileSelect.Image")));
            this.btFileSelect.Location = new System.Drawing.Point(713, 18);
            this.btFileSelect.Name = "btFileSelect";
            this.btFileSelect.Size = new System.Drawing.Size(29, 23);
            this.btFileSelect.TabIndex = 13;
            this.btFileSelect.UseVisualStyleBackColor = true;
            this.btFileSelect.Click += new System.EventHandler(this.btFileSelect_Click);
            // 
            // textFile
            // 
            this.textFile.Location = new System.Drawing.Point(10, 20);
            this.textFile.Name = "textFile";
            this.textFile.ReadOnly = true;
            this.textFile.Size = new System.Drawing.Size(697, 21);
            this.textFile.TabIndex = 0;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btdevicerefresh);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.btadds);
            this.groupBox2.Controls.Add(this.btdels);
            this.groupBox2.Controls.Add(this.btdel);
            this.groupBox2.Controls.Add(this.btadd);
            this.groupBox2.Controls.Add(this.listTarget);
            this.groupBox2.Controls.Add(this.listChannel);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Location = new System.Drawing.Point(12, 66);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(274, 162);
            this.groupBox2.TabIndex = 13;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "[Select target channel ]";
            // 
            // btdevicerefresh
            // 
            this.btdevicerefresh.Image = ((System.Drawing.Image)(resources.GetObject("btdevicerefresh.Image")));
            this.btdevicerefresh.Location = new System.Drawing.Point(84, 20);
            this.btdevicerefresh.Name = "btdevicerefresh";
            this.btdevicerefresh.Size = new System.Drawing.Size(31, 23);
            this.btdevicerefresh.TabIndex = 21;
            this.btdevicerefresh.UseVisualStyleBackColor = true;
            this.btdevicerefresh.Click += new System.EventHandler(this.btdevicerefresh_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(153, 27);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 12);
            this.label3.TabIndex = 19;
            this.label3.Text = "Target List";
            // 
            // btadds
            // 
            this.btadds.Location = new System.Drawing.Point(120, 71);
            this.btadds.Name = "btadds";
            this.btadds.Size = new System.Drawing.Size(29, 23);
            this.btadds.TabIndex = 18;
            this.btadds.Text = ">>";
            this.btadds.UseVisualStyleBackColor = true;
            this.btadds.Click += new System.EventHandler(this.btadds_Click);
            // 
            // btdels
            // 
            this.btdels.Location = new System.Drawing.Point(119, 129);
            this.btdels.Name = "btdels";
            this.btdels.Size = new System.Drawing.Size(29, 23);
            this.btdels.TabIndex = 17;
            this.btdels.Text = "<<";
            this.btdels.UseVisualStyleBackColor = true;
            this.btdels.Click += new System.EventHandler(this.btdels_Click);
            // 
            // btdel
            // 
            this.btdel.Location = new System.Drawing.Point(119, 100);
            this.btdel.Name = "btdel";
            this.btdel.Size = new System.Drawing.Size(29, 23);
            this.btdel.TabIndex = 16;
            this.btdel.Text = "<";
            this.btdel.UseVisualStyleBackColor = true;
            this.btdel.Click += new System.EventHandler(this.btdel_Click);
            // 
            // btadd
            // 
            this.btadd.Location = new System.Drawing.Point(120, 42);
            this.btadd.Name = "btadd";
            this.btadd.Size = new System.Drawing.Size(29, 23);
            this.btadd.TabIndex = 15;
            this.btadd.Text = ">";
            this.btadd.UseVisualStyleBackColor = true;
            this.btadd.Click += new System.EventHandler(this.btadd_Click);
            // 
            // listTarget
            // 
            this.listTarget.FormattingEnabled = true;
            this.listTarget.ItemHeight = 12;
            this.listTarget.Location = new System.Drawing.Point(155, 42);
            this.listTarget.Name = "listTarget";
            this.listTarget.SelectionMode = System.Windows.Forms.SelectionMode.MultiSimple;
            this.listTarget.Size = new System.Drawing.Size(104, 112);
            this.listTarget.TabIndex = 13;
            // 
            // listChannel
            // 
            this.listChannel.FormattingEnabled = true;
            this.listChannel.ItemHeight = 12;
            this.listChannel.Location = new System.Drawing.Point(8, 42);
            this.listChannel.Name = "listChannel";
            this.listChannel.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;
            this.listChannel.Size = new System.Drawing.Size(105, 112);
            this.listChannel.TabIndex = 12;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 27);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 12);
            this.label2.TabIndex = 11;
            this.label2.Text = "Channels";
            // 
            // textDesc
            // 
            this.textDesc.Location = new System.Drawing.Point(295, 101);
            this.textDesc.Multiline = true;
            this.textDesc.Name = "textDesc";
            this.textDesc.ReadOnly = true;
            this.textDesc.Size = new System.Drawing.Size(474, 127);
            this.textDesc.TabIndex = 14;
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
            // frmGateBurn
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(781, 234);
            this.Controls.Add(this.textDesc);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btBurn);
            this.Controls.Add(this.progressBar1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "frmGateBurn";
            this.Text = "frmGateBurn";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmGateBurn_FormClosing);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.Button btBurn;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btFileSelect;
        private System.Windows.Forms.TextBox textFile;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btadds;
        private System.Windows.Forms.Button btdels;
        private System.Windows.Forms.Button btdel;
        private System.Windows.Forms.Button btadd;
        private System.Windows.Forms.ListBox listTarget;
        private System.Windows.Forms.ListBox listChannel;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textDesc;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Button btdevicerefresh;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
    }
}