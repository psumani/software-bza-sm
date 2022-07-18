namespace ZiveLab.ZM.FactorySetting
{
    partial class frmInputString
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
            this.btok = new System.Windows.Forms.Button();
            this.txtinput = new System.Windows.Forms.TextBox();
            this.btcancel = new System.Windows.Forms.Button();
            this.btInit = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btok
            // 
            this.btok.Location = new System.Drawing.Point(105, 80);
            this.btok.Name = "btok";
            this.btok.Size = new System.Drawing.Size(71, 21);
            this.btok.TabIndex = 0;
            this.btok.Text = "Apply";
            this.btok.UseVisualStyleBackColor = true;
            this.btok.Click += new System.EventHandler(this.btok_Click);
            // 
            // txtinput
            // 
            this.txtinput.Location = new System.Drawing.Point(32, 38);
            this.txtinput.MaxLength = 20;
            this.txtinput.Name = "txtinput";
            this.txtinput.Size = new System.Drawing.Size(266, 21);
            this.txtinput.TabIndex = 1;
            // 
            // btcancel
            // 
            this.btcancel.Location = new System.Drawing.Point(227, 80);
            this.btcancel.Name = "btcancel";
            this.btcancel.Size = new System.Drawing.Size(71, 21);
            this.btcancel.TabIndex = 2;
            this.btcancel.Text = "Close";
            this.btcancel.UseVisualStyleBackColor = true;
            this.btcancel.Click += new System.EventHandler(this.btcancel_Click);
            // 
            // btInit
            // 
            this.btInit.Location = new System.Drawing.Point(35, 80);
            this.btInit.Name = "btInit";
            this.btInit.Size = new System.Drawing.Size(64, 21);
            this.btInit.TabIndex = 4;
            this.btInit.Text = "Initialize";
            this.btInit.UseVisualStyleBackColor = true;
            this.btInit.Click += new System.EventHandler(this.btInit_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(30, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(268, 12);
            this.label1.TabIndex = 5;
            this.label1.Text = "Default format : ZIM-{Mac[4]:X2}{Mac[5]:X2}";
            // 
            // frmInputString
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(327, 111);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btInit);
            this.Controls.Add(this.btcancel);
            this.Controls.Add(this.txtinput);
            this.Controls.Add(this.btok);
            this.MaximizeBox = false;
            this.Name = "frmInputString";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Change hostname.";
            this.Load += new System.EventHandler(this.frmInputString_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btok;
        private System.Windows.Forms.TextBox txtinput;
        private System.Windows.Forms.Button btcancel;
        private System.Windows.Forms.Button btInit;
        private System.Windows.Forms.Label label1;
    }
}