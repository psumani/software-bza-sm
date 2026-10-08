namespace ZiveLab.ZM.Dataview
{
    partial class frmSelectDataFolderDlg
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
            this.ListPath = new System.Windows.Forms.ListView();
            this.txtpath = new System.Windows.Forms.TextBox();
            this.btOk = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // ListPath
            // 
            this.ListPath.BackColor = System.Drawing.Color.White;
            this.ListPath.Location = new System.Drawing.Point(28, 28);
            this.ListPath.MultiSelect = false;
            this.ListPath.Name = "ListPath";
            this.ListPath.Size = new System.Drawing.Size(684, 145);
            this.ListPath.TabIndex = 0;
            this.ListPath.UseCompatibleStateImageBehavior = false;
            this.ListPath.DrawColumnHeader += new System.Windows.Forms.DrawListViewColumnHeaderEventHandler(this.ListPath_DrawColumnHeader);
            this.ListPath.DrawItem += new System.Windows.Forms.DrawListViewItemEventHandler(this.ListPath_DrawItem);
            this.ListPath.DrawSubItem += new System.Windows.Forms.DrawListViewSubItemEventHandler(this.ListPath_DrawSubItem);
            this.ListPath.SelectedIndexChanged += new System.EventHandler(this.ListPath_SelectedIndexChanged);
            // 
            // txtpath
            // 
            this.txtpath.Location = new System.Drawing.Point(29, 202);
            this.txtpath.Multiline = true;
            this.txtpath.Name = "txtpath";
            this.txtpath.ReadOnly = true;
            this.txtpath.Size = new System.Drawing.Size(683, 51);
            this.txtpath.TabIndex = 1;
            // 
            // btOk
            // 
            this.btOk.Location = new System.Drawing.Point(633, 259);
            this.btOk.Name = "btOk";
            this.btOk.Size = new System.Drawing.Size(79, 36);
            this.btOk.TabIndex = 2;
            this.btOk.Text = "OK";
            this.btOk.UseVisualStyleBackColor = true;
            this.btOk.Click += new System.EventHandler(this.btOk_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(26, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(231, 14);
            this.label1.TabIndex = 3;
            this.label1.Text = "* List of previously used paths:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(26, 185);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 14);
            this.label2.TabIndex = 4;
            this.label2.Text = "* Selected path:";
            // 
            // frmSelectDataFolderDlg
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(96F, 96F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.ClientSize = new System.Drawing.Size(727, 305);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btOk);
            this.Controls.Add(this.txtpath);
            this.Controls.Add(this.ListPath);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSelectDataFolderDlg";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Please select a path.";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListView ListPath;
        private System.Windows.Forms.TextBox txtpath;
        private System.Windows.Forms.Button btOk;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}