namespace ZiveLab.ZM
{
    partial class frmInputValue
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
            this.txtValue = new System.Windows.Forms.TextBox();
            this.btOk = new System.Windows.Forms.Button();
            this.btCancel = new System.Windows.Forms.Button();
            this.chkbox = new System.Windows.Forms.CheckBox();
            this.txtIP0 = new System.Windows.Forms.TextBox();
            this.txtIP1 = new System.Windows.Forms.TextBox();
            this.txtIP2 = new System.Windows.Forms.TextBox();
            this.txtIP3 = new System.Windows.Forms.TextBox();
            this.lblIPSplash = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtValue
            // 
            this.txtValue.Location = new System.Drawing.Point(25, 19);
            this.txtValue.Name = "txtValue";
            this.txtValue.Size = new System.Drawing.Size(106, 22);
            this.txtValue.TabIndex = 1;
            this.txtValue.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtValue_KeyPress);
            // 
            // btOk
            // 
            this.btOk.Location = new System.Drawing.Point(185, 16);
            this.btOk.Name = "btOk";
            this.btOk.Size = new System.Drawing.Size(59, 27);
            this.btOk.TabIndex = 2;
            this.btOk.Text = "OK";
            this.btOk.UseVisualStyleBackColor = true;
            this.btOk.Click += new System.EventHandler(this.btOk_Click);
            // 
            // btCancel
            // 
            this.btCancel.Location = new System.Drawing.Point(252, 16);
            this.btCancel.Name = "btCancel";
            this.btCancel.Size = new System.Drawing.Size(59, 27);
            this.btCancel.TabIndex = 3;
            this.btCancel.Text = "Cancel";
            this.btCancel.UseVisualStyleBackColor = true;
            this.btCancel.Click += new System.EventHandler(this.btCancel_Click);
            // 
            // chkbox
            // 
            this.chkbox.AutoSize = true;
            this.chkbox.Location = new System.Drawing.Point(26, 21);
            this.chkbox.Name = "chkbox";
            this.chkbox.Size = new System.Drawing.Size(89, 18);
            this.chkbox.TabIndex = 4;
            this.chkbox.Text = "checkBox1";
            this.chkbox.UseVisualStyleBackColor = true;
            // 
            // txtIP0
            // 
            this.txtIP0.Location = new System.Drawing.Point(16, 19);
            this.txtIP0.Name = "txtIP0";
            this.txtIP0.Size = new System.Drawing.Size(33, 22);
            this.txtIP0.TabIndex = 5;
            this.txtIP0.Text = "192";
            this.txtIP0.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtIP1
            // 
            this.txtIP1.Location = new System.Drawing.Point(55, 19);
            this.txtIP1.Name = "txtIP1";
            this.txtIP1.Size = new System.Drawing.Size(33, 22);
            this.txtIP1.TabIndex = 6;
            this.txtIP1.Text = "192";
            this.txtIP1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtIP2
            // 
            this.txtIP2.Location = new System.Drawing.Point(94, 19);
            this.txtIP2.Name = "txtIP2";
            this.txtIP2.Size = new System.Drawing.Size(33, 22);
            this.txtIP2.TabIndex = 7;
            this.txtIP2.Text = "192";
            this.txtIP2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtIP3
            // 
            this.txtIP3.Location = new System.Drawing.Point(133, 19);
            this.txtIP3.Name = "txtIP3";
            this.txtIP3.Size = new System.Drawing.Size(33, 22);
            this.txtIP3.TabIndex = 8;
            this.txtIP3.Text = "192";
            this.txtIP3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // lblIPSplash
            // 
            this.lblIPSplash.AutoSize = true;
            this.lblIPSplash.Location = new System.Drawing.Point(49, 29);
            this.lblIPSplash.Name = "lblIPSplash";
            this.lblIPSplash.Size = new System.Drawing.Size(154, 14);
            this.lblIPSplash.TabIndex = 9;
            this.lblIPSplash.Text = ".         .        . ";
            // 
            // frmInputValue
            // 
            this.AcceptButton = this.btOk;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(325, 63);
            this.Controls.Add(this.txtIP3);
            this.Controls.Add(this.txtIP2);
            this.Controls.Add(this.txtIP1);
            this.Controls.Add(this.txtIP0);
            this.Controls.Add(this.chkbox);
            this.Controls.Add(this.btCancel);
            this.Controls.Add(this.btOk);
            this.Controls.Add(this.txtValue);
            this.Controls.Add(this.lblIPSplash);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MaximizeBox = false;
            this.Name = "frmInputValue";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Change the value.";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtValue;
        private System.Windows.Forms.Button btOk;
        private System.Windows.Forms.Button btCancel;
        private System.Windows.Forms.CheckBox chkbox;
        private System.Windows.Forms.TextBox txtIP0;
        private System.Windows.Forms.TextBox txtIP1;
        private System.Windows.Forms.TextBox txtIP2;
        private System.Windows.Forms.TextBox txtIP3;
        private System.Windows.Forms.Label lblIPSplash;
    }
}