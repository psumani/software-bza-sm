namespace ZiveLab.ZM
{
    partial class frmSetVdcReference
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSetVdcReference));
            this.btcancel = new System.Windows.Forms.Button();
            this.btok = new System.Windows.Forms.Button();
            this.txtValue = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.chkautorng = new System.Windows.Forms.CheckBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtmax = new System.Windows.Forms.TextBox();
            this.txtmin = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btcancel
            // 
            this.btcancel.Font = new System.Drawing.Font("Consolas", 9F);
            this.btcancel.Location = new System.Drawing.Point(279, 134);
            this.btcancel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btcancel.Name = "btcancel";
            this.btcancel.Size = new System.Drawing.Size(64, 34);
            this.btcancel.TabIndex = 28;
            this.btcancel.Text = "Cancel";
            this.btcancel.UseVisualStyleBackColor = true;
            // 
            // btok
            // 
            this.btok.Font = new System.Drawing.Font("Consolas", 9F);
            this.btok.Location = new System.Drawing.Point(279, 88);
            this.btok.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btok.Name = "btok";
            this.btok.Size = new System.Drawing.Size(64, 34);
            this.btok.TabIndex = 27;
            this.btok.Text = "Ok";
            this.btok.UseVisualStyleBackColor = true;
            this.btok.Click += new System.EventHandler(this.btok_Click);
            // 
            // txtValue
            // 
            this.txtValue.Font = new System.Drawing.Font("Consolas", 9F);
            this.txtValue.Location = new System.Drawing.Point(138, 140);
            this.txtValue.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtValue.Name = "txtValue";
            this.txtValue.Size = new System.Drawing.Size(104, 22);
            this.txtValue.TabIndex = 26;
            this.txtValue.Text = "0.0";
            // 
            // label4
            // 
            this.label4.Font = new System.Drawing.Font("Consolas", 9F);
            this.label4.Location = new System.Drawing.Point(13, 134);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(123, 38);
            this.label4.TabIndex = 25;
            this.label4.Text = "Reference value";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // chkautorng
            // 
            this.chkautorng.AutoSize = true;
            this.chkautorng.Location = new System.Drawing.Point(16, 14);
            this.chkautorng.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.chkautorng.Name = "chkautorng";
            this.chkautorng.Size = new System.Drawing.Size(82, 19);
            this.chkautorng.TabIndex = 36;
            this.chkautorng.Text = "Automatic";
            this.chkautorng.UseVisualStyleBackColor = true;
            this.chkautorng.CheckedChanged += new System.EventHandler(this.chkautorng_CheckedChanged);
            this.chkautorng.CheckStateChanged += new System.EventHandler(this.chkautorng_CheckStateChanged);
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(8, 62);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 30);
            this.label1.TabIndex = 32;
            this.label1.Text = "Minimum value";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(8, 31);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(113, 22);
            this.label2.TabIndex = 31;
            this.label2.Text = "Maximum value";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtmax
            // 
            this.txtmax.Font = new System.Drawing.Font("Consolas", 9F);
            this.txtmax.Location = new System.Drawing.Point(127, 30);
            this.txtmax.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtmax.Name = "txtmax";
            this.txtmax.Size = new System.Drawing.Size(104, 22);
            this.txtmax.TabIndex = 33;
            this.txtmax.Text = "0.0";
            // 
            // txtmin
            // 
            this.txtmin.Font = new System.Drawing.Font("Consolas", 9F);
            this.txtmin.Location = new System.Drawing.Point(127, 65);
            this.txtmin.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtmin.Name = "txtmin";
            this.txtmin.Size = new System.Drawing.Size(104, 22);
            this.txtmin.TabIndex = 34;
            this.txtmin.Text = "0.0";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtmin);
            this.groupBox1.Controls.Add(this.txtmax);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(16, 14);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(247, 108);
            this.groupBox1.TabIndex = 36;
            this.groupBox1.TabStop = false;
            // 
            // frmSetVdcReference
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(362, 181);
            this.Controls.Add(this.chkautorng);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btcancel);
            this.Controls.Add(this.btok);
            this.Controls.Add(this.txtValue);
            this.Controls.Add(this.label4);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmSetVdcReference";
            this.Text = "Auxiliary Cell voltage monitor setting.";
            this.Load += new System.EventHandler(this.frmSetVdcReference_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btcancel;
        private System.Windows.Forms.Button btok;
        private System.Windows.Forms.TextBox txtValue;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox chkautorng;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtmax;
        private System.Windows.Forms.TextBox txtmin;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}