namespace ZiveLab.ZM
{
    partial class frmSelEditTypeDlg
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSelEditTypeDlg));
            this.rdoEditor1 = new System.Windows.Forms.RadioButton();
            this.rdoEditor2 = new System.Windows.Forms.RadioButton();
            this.bttypeok = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // rdoEditor1
            // 
            this.rdoEditor1.AutoSize = true;
            this.rdoEditor1.Location = new System.Drawing.Point(28, 12);
            this.rdoEditor1.Name = "rdoEditor1";
            this.rdoEditor1.Size = new System.Drawing.Size(137, 18);
            this.rdoEditor1.TabIndex = 0;
            this.rdoEditor1.TabStop = true;
            this.rdoEditor1.Text = "View as a graph.";
            this.rdoEditor1.UseVisualStyleBackColor = true;
            // 
            // rdoEditor2
            // 
            this.rdoEditor2.AutoSize = true;
            this.rdoEditor2.Location = new System.Drawing.Point(28, 46);
            this.rdoEditor2.Name = "rdoEditor2";
            this.rdoEditor2.Size = new System.Drawing.Size(144, 18);
            this.rdoEditor2.TabIndex = 1;
            this.rdoEditor2.TabStop = true;
            this.rdoEditor2.Text = "View as a editor.";
            this.rdoEditor2.UseVisualStyleBackColor = true;
            // 
            // bttypeok
            // 
            this.bttypeok.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.bttypeok.Location = new System.Drawing.Point(258, 35);
            this.bttypeok.Name = "bttypeok";
            this.bttypeok.Size = new System.Drawing.Size(68, 29);
            this.bttypeok.TabIndex = 2;
            this.bttypeok.Text = "OK";
            this.bttypeok.UseVisualStyleBackColor = true;
            this.bttypeok.Click += new System.EventHandler(this.bttypeok_Click);
            // 
            // frmSelEditTypeDlg
            // 
            this.AcceptButton = this.bttypeok;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(338, 79);
            this.Controls.Add(this.bttypeok);
            this.Controls.Add(this.rdoEditor2);
            this.Controls.Add(this.rdoEditor1);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSelEditTypeDlg";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Select the data viewer you want to use.";
            this.TopMost = true;
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RadioButton rdoEditor1;
        private System.Windows.Forms.RadioButton rdoEditor2;
        private System.Windows.Forms.Button bttypeok;
    }
}