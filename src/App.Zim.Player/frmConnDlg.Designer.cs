namespace App.Zim.Player
{
    partial class frmConnDlg
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtPort = new System.Windows.Forms.TextBox();
            this.btnConnect = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.txtIP0 = new System.Windows.Forms.TextBox();
            this.txtIP1 = new System.Windows.Forms.TextBox();
            this.txtIP2 = new System.Windows.Forms.TextBox();
            this.txtIP3 = new System.Windows.Forms.TextBox();
            this.btnFind = new System.Windows.Forms.Button();
            this.Findlist = new System.Windows.Forms.ListBox();
            this.FindErrlist = new System.Windows.Forms.ListBox();
            this.label3 = new System.Windows.Forms.Label();
            this.labelWarning = new System.Windows.Forms.Label();
            this.chkdhcp = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(13, 230);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(122, 19);
            this.label1.TabIndex = 1;
            this.label1.Text = "Target IP Address";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(363, 233);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(90, 19);
            this.label2.TabIndex = 2;
            this.label2.Text = "Port Number";
            // 
            // txtPort
            // 
            this.txtPort.Enabled = false;
            this.txtPort.Location = new System.Drawing.Point(460, 230);
            this.txtPort.Name = "txtPort";
            this.txtPort.Size = new System.Drawing.Size(50, 26);
            this.txtPort.TabIndex = 3;
            // 
            // btnConnect
            // 
            this.btnConnect.Location = new System.Drawing.Point(460, 275);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(83, 29);
            this.btnConnect.TabIndex = 4;
            this.btnConnect.Text = "Connect";
            this.btnConnect.UseVisualStyleBackColor = true;
            this.btnConnect.Click += new System.EventHandler(this.btnConnect_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(571, 275);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(83, 29);
            this.btnCancel.TabIndex = 5;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // txtIP0
            // 
            this.txtIP0.Location = new System.Drawing.Point(141, 229);
            this.txtIP0.Name = "txtIP0";
            this.txtIP0.Size = new System.Drawing.Size(36, 26);
            this.txtIP0.TabIndex = 6;
            // 
            // txtIP1
            // 
            this.txtIP1.Location = new System.Drawing.Point(184, 229);
            this.txtIP1.Name = "txtIP1";
            this.txtIP1.Size = new System.Drawing.Size(36, 26);
            this.txtIP1.TabIndex = 7;
            // 
            // txtIP2
            // 
            this.txtIP2.Location = new System.Drawing.Point(226, 229);
            this.txtIP2.Name = "txtIP2";
            this.txtIP2.Size = new System.Drawing.Size(36, 26);
            this.txtIP2.TabIndex = 8;
            // 
            // txtIP3
            // 
            this.txtIP3.Location = new System.Drawing.Point(269, 229);
            this.txtIP3.Name = "txtIP3";
            this.txtIP3.Size = new System.Drawing.Size(36, 26);
            this.txtIP3.TabIndex = 9;
            // 
            // btnFind
            // 
            this.btnFind.Location = new System.Drawing.Point(243, 271);
            this.btnFind.Name = "btnFind";
            this.btnFind.Size = new System.Drawing.Size(83, 29);
            this.btnFind.TabIndex = 10;
            this.btnFind.Text = "Search";
            this.btnFind.UseVisualStyleBackColor = true;
            this.btnFind.Click += new System.EventHandler(this.btnFind_Click);
            // 
            // Findlist
            // 
            this.Findlist.FormattingEnabled = true;
            this.Findlist.ItemHeight = 19;
            this.Findlist.Location = new System.Drawing.Point(16, 143);
            this.Findlist.Name = "Findlist";
            this.Findlist.ScrollAlwaysVisible = true;
            this.Findlist.Size = new System.Drawing.Size(650, 80);
            this.Findlist.TabIndex = 11;
            this.Findlist.SelectedIndexChanged += new System.EventHandler(this.Findlist_SelectedIndexChanged);
            // 
            // FindErrlist
            // 
            this.FindErrlist.FormattingEnabled = true;
            this.FindErrlist.ItemHeight = 19;
            this.FindErrlist.Location = new System.Drawing.Point(16, 31);
            this.FindErrlist.Name = "FindErrlist";
            this.FindErrlist.ScrollAlwaysVisible = true;
            this.FindErrlist.Size = new System.Drawing.Size(650, 80);
            this.FindErrlist.TabIndex = 12;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.ForeColor = System.Drawing.Color.DarkRed;
            this.label3.Location = new System.Drawing.Point(12, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(234, 19);
            this.label3.TabIndex = 17;
            this.label3.Text = "< Device not available. >";
            // 
            // labelWarning
            // 
            this.labelWarning.AutoSize = true;
            this.labelWarning.ForeColor = System.Drawing.Color.Black;
            this.labelWarning.Location = new System.Drawing.Point(12, 121);
            this.labelWarning.Name = "labelWarning";
            this.labelWarning.Size = new System.Drawing.Size(207, 19);
            this.labelWarning.TabIndex = 16;
            this.labelWarning.Text = "< Available devices. >";
            // 
            // chkdhcp
            // 
            this.chkdhcp.AutoSize = true;
            this.chkdhcp.Location = new System.Drawing.Point(12, 275);
            this.chkdhcp.Name = "chkdhcp";
            this.chkdhcp.Size = new System.Drawing.Size(181, 23);
            this.chkdhcp.TabIndex = 18;
            this.chkdhcp.Text = "Searce with DHCP.";
            this.chkdhcp.UseVisualStyleBackColor = true;
            // 
            // frmConnDlg
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(681, 313);
            this.Controls.Add(this.chkdhcp);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.labelWarning);
            this.Controls.Add(this.FindErrlist);
            this.Controls.Add(this.Findlist);
            this.Controls.Add(this.btnFind);
            this.Controls.Add(this.txtIP3);
            this.Controls.Add(this.txtIP2);
            this.Controls.Add(this.txtIP1);
            this.Controls.Add(this.txtIP0);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnConnect);
            this.Controls.Add(this.txtPort);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Consolas", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(3, 5, 3, 5);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmConnDlg";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Connect SIF Board.";
            this.Load += new System.EventHandler(this.frmConnDlg_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtPort;
        private System.Windows.Forms.Button btnConnect;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.TextBox txtIP0;
        private System.Windows.Forms.TextBox txtIP1;
        private System.Windows.Forms.TextBox txtIP2;
        private System.Windows.Forms.TextBox txtIP3;
        private System.Windows.Forms.Button btnFind;
        private System.Windows.Forms.ListBox Findlist;
        private System.Windows.Forms.ListBox FindErrlist;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label labelWarning;
        private System.Windows.Forms.CheckBox chkdhcp;
    }
}