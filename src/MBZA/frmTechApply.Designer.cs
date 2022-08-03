namespace ZiveLab.ZM
{
    partial class frmTechApply
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmTechApply));
            this.btok = new System.Windows.Forms.Button();
            this.btcancel = new System.Windows.Forms.Button();
            this.btselall = new System.Windows.Forms.Button();
            this.btdeselall = new System.Windows.Forms.Button();
            this.lstbox = new System.Windows.Forms.CheckedListBox();
            this.SuspendLayout();
            // 
            // btok
            // 
            this.btok.Location = new System.Drawing.Point(290, 133);
            this.btok.Name = "btok";
            this.btok.Size = new System.Drawing.Size(100, 27);
            this.btok.TabIndex = 1;
            this.btok.Text = "Ok";
            this.btok.UseVisualStyleBackColor = true;
            this.btok.Click += new System.EventHandler(this.btok_Click);
            // 
            // btcancel
            // 
            this.btcancel.Location = new System.Drawing.Point(290, 170);
            this.btcancel.Name = "btcancel";
            this.btcancel.Size = new System.Drawing.Size(100, 27);
            this.btcancel.TabIndex = 2;
            this.btcancel.Text = "Cancel";
            this.btcancel.UseVisualStyleBackColor = true;
            this.btcancel.Click += new System.EventHandler(this.btcancel_Click);
            // 
            // btselall
            // 
            this.btselall.Location = new System.Drawing.Point(290, 7);
            this.btselall.Name = "btselall";
            this.btselall.Size = new System.Drawing.Size(100, 27);
            this.btselall.TabIndex = 3;
            this.btselall.Text = "Select all";
            this.btselall.UseVisualStyleBackColor = true;
            this.btselall.Click += new System.EventHandler(this.btselall_Click);
            // 
            // btdeselall
            // 
            this.btdeselall.Location = new System.Drawing.Point(290, 45);
            this.btdeselall.Name = "btdeselall";
            this.btdeselall.Size = new System.Drawing.Size(100, 27);
            this.btdeselall.TabIndex = 4;
            this.btdeselall.Text = "Deselect all";
            this.btdeselall.UseVisualStyleBackColor = true;
            this.btdeselall.Click += new System.EventHandler(this.btdeselall_Click);
            // 
            // lstbox
            // 
            this.lstbox.CheckOnClick = true;
            this.lstbox.FormattingEnabled = true;
            this.lstbox.Location = new System.Drawing.Point(7, 8);
            this.lstbox.Name = "lstbox";
            this.lstbox.Size = new System.Drawing.Size(272, 191);
            this.lstbox.TabIndex = 1;
            // 
            // frmTechApply
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(402, 206);
            this.Controls.Add(this.lstbox);
            this.Controls.Add(this.btdeselall);
            this.Controls.Add(this.btselall);
            this.Controls.Add(this.btcancel);
            this.Controls.Add(this.btok);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmTechApply";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select channels to apply the thchnique file to.";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.frmTechApply_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btok;
        private System.Windows.Forms.Button btcancel;
        private System.Windows.Forms.Button btselall;
        private System.Windows.Forms.Button btdeselall;
        private System.Windows.Forms.CheckedListBox lstbox;
    }
}