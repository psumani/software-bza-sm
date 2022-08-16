namespace ZiveLab.ZM
{
    partial class frmStart
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmStart));
            this.btstart = new System.Windows.Forms.Button();
            this.btcancel = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btselpath = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.txtfilepath = new System.Windows.Forms.TextBox();
            this.txtfilename = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.chkapptech = new System.Windows.Forms.CheckBox();
            this.txttechfile = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtmemo = new System.Windows.Forms.TextBox();
            this.txtuser = new System.Windows.Forms.TextBox();
            this.txtcapa = new System.Windows.Forms.TextBox();
            this.txtbatid = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.listbox1 = new System.Windows.Forms.ListBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // btstart
            // 
            this.btstart.Location = new System.Drawing.Point(487, 257);
            this.btstart.Name = "btstart";
            this.btstart.Size = new System.Drawing.Size(95, 31);
            this.btstart.TabIndex = 0;
            this.btstart.Text = "Start";
            this.btstart.UseVisualStyleBackColor = true;
            this.btstart.Click += new System.EventHandler(this.btstart_Click);
            // 
            // btcancel
            // 
            this.btcancel.Location = new System.Drawing.Point(487, 304);
            this.btcancel.Name = "btcancel";
            this.btcancel.Size = new System.Drawing.Size(95, 31);
            this.btcancel.TabIndex = 1;
            this.btcancel.Text = "Cancel";
            this.btcancel.UseVisualStyleBackColor = true;
            this.btcancel.Click += new System.EventHandler(this.btcancel_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btselpath);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txtfilepath);
            this.groupBox1.Controls.Add(this.txtfilename);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(13, 10);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(464, 103);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "[ Result file ]";
            // 
            // btselpath
            // 
            this.btselpath.Image = global::ZiveLab.ZM.Properties.Resources.Save;
            this.btselpath.Location = new System.Drawing.Point(425, 22);
            this.btselpath.Name = "btselpath";
            this.btselpath.Size = new System.Drawing.Size(26, 24);
            this.btselpath.TabIndex = 9;
            this.btselpath.UseVisualStyleBackColor = true;
            this.btselpath.Click += new System.EventHandler(this.btselpath_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 25);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 14);
            this.label2.TabIndex = 8;
            this.label2.Text = "Folder";
            // 
            // txtfilepath
            // 
            this.txtfilepath.Location = new System.Drawing.Point(91, 22);
            this.txtfilepath.Multiline = true;
            this.txtfilepath.Name = "txtfilepath";
            this.txtfilepath.ReadOnly = true;
            this.txtfilepath.Size = new System.Drawing.Size(328, 39);
            this.txtfilepath.TabIndex = 7;
            // 
            // txtfilename
            // 
            this.txtfilename.Location = new System.Drawing.Point(91, 69);
            this.txtfilename.Name = "txtfilename";
            this.txtfilename.Size = new System.Drawing.Size(328, 22);
            this.txtfilename.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 72);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 14);
            this.label1.TabIndex = 5;
            this.label1.Text = "Name";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.chkapptech);
            this.groupBox2.Controls.Add(this.txttechfile);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.txtmemo);
            this.groupBox2.Controls.Add(this.txtuser);
            this.groupBox2.Controls.Add(this.txtcapa);
            this.groupBox2.Controls.Add(this.txtbatid);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Location = new System.Drawing.Point(14, 118);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(462, 217);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "[ Information ]";
            // 
            // chkapptech
            // 
            this.chkapptech.AutoSize = true;
            this.chkapptech.Location = new System.Drawing.Point(16, 24);
            this.chkapptech.Name = "chkapptech";
            this.chkapptech.Size = new System.Drawing.Size(313, 18);
            this.chkapptech.TabIndex = 27;
            this.chkapptech.Text = "Use the parameters of the technique file.";
            this.chkapptech.UseVisualStyleBackColor = true;
            this.chkapptech.CheckedChanged += new System.EventHandler(this.chkapptech_CheckedChanged);
            // 
            // txttechfile
            // 
            this.txttechfile.Location = new System.Drawing.Point(90, 64);
            this.txttechfile.Multiline = true;
            this.txttechfile.Name = "txttechfile";
            this.txttechfile.ReadOnly = true;
            this.txttechfile.Size = new System.Drawing.Size(360, 39);
            this.txttechfile.TabIndex = 26;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(11, 47);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(105, 14);
            this.label3.TabIndex = 25;
            this.label3.Text = "Technique file";
            // 
            // txtmemo
            // 
            this.txtmemo.Location = new System.Drawing.Point(90, 168);
            this.txtmemo.Multiline = true;
            this.txtmemo.Name = "txtmemo";
            this.txtmemo.Size = new System.Drawing.Size(360, 41);
            this.txtmemo.TabIndex = 24;
            // 
            // txtuser
            // 
            this.txtuser.Location = new System.Drawing.Point(90, 139);
            this.txtuser.Name = "txtuser";
            this.txtuser.Size = new System.Drawing.Size(360, 22);
            this.txtuser.TabIndex = 23;
            // 
            // txtcapa
            // 
            this.txtcapa.Location = new System.Drawing.Point(351, 110);
            this.txtcapa.Name = "txtcapa";
            this.txtcapa.Size = new System.Drawing.Size(99, 22);
            this.txtcapa.TabIndex = 22;
            // 
            // txtbatid
            // 
            this.txtbatid.Location = new System.Drawing.Point(90, 110);
            this.txtbatid.Name = "txtbatid";
            this.txtbatid.Size = new System.Drawing.Size(99, 22);
            this.txtbatid.TabIndex = 21;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(198, 114);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(147, 14);
            this.label8.TabIndex = 20;
            this.label8.Text = "Nominal capacity(AH)";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(11, 114);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(77, 14);
            this.label7.TabIndex = 19;
            this.label7.Text = "Battery id";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(11, 174);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(35, 14);
            this.label5.TabIndex = 11;
            this.label5.Text = "Memo";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 143);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(35, 14);
            this.label4.TabIndex = 10;
            this.label4.Text = "User";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.listbox1);
            this.groupBox3.Location = new System.Drawing.Point(487, 10);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(95, 236);
            this.groupBox3.TabIndex = 9;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "[ Target ]";
            // 
            // listbox1
            // 
            this.listbox1.FormattingEnabled = true;
            this.listbox1.ItemHeight = 14;
            this.listbox1.Location = new System.Drawing.Point(10, 24);
            this.listbox1.Name = "listbox1";
            this.listbox1.Size = new System.Drawing.Size(74, 200);
            this.listbox1.TabIndex = 0;
            this.listbox1.SelectedIndexChanged += new System.EventHandler(this.listbox1_SelectedIndexChanged);
            // 
            // frmStart
            // 
            this.AcceptButton = this.btstart;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(591, 342);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btcancel);
            this.Controls.Add(this.btstart);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmStart";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Configuration start condition.";
            this.Load += new System.EventHandler(this.frmStart_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btstart;
        private System.Windows.Forms.Button btcancel;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btselpath;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtfilepath;
        private System.Windows.Forms.TextBox txtfilename;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtmemo;
        private System.Windows.Forms.TextBox txtuser;
        private System.Windows.Forms.TextBox txtcapa;
        private System.Windows.Forms.TextBox txtbatid;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txttechfile;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ListBox listbox1;
        private System.Windows.Forms.CheckBox chkapptech;
    }
}