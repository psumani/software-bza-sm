namespace ZiveLab.ZM
{
    partial class frmSetMaxRange
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSetMaxRange));
            this.label4 = new System.Windows.Forms.Label();
            this.txtValue = new System.Windows.Forms.TextBox();
            this.btcancel = new System.Windows.Forms.Button();
            this.btok = new System.Windows.Forms.Button();
            this.txtValue1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtreal = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(11, 37);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(119, 26);
            this.label4.TabIndex = 16;
            this.label4.Text = "Maximum";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtValue
            // 
            this.txtValue.Location = new System.Drawing.Point(136, 37);
            this.txtValue.Name = "txtValue";
            this.txtValue.Size = new System.Drawing.Size(104, 22);
            this.txtValue.TabIndex = 17;
            this.txtValue.Text = "1.0";
            // 
            // btcancel
            // 
            this.btcancel.Location = new System.Drawing.Point(176, 105);
            this.btcancel.Name = "btcancel";
            this.btcancel.Size = new System.Drawing.Size(64, 30);
            this.btcancel.TabIndex = 19;
            this.btcancel.Text = "Cancel";
            this.btcancel.UseVisualStyleBackColor = true;
            this.btcancel.Click += new System.EventHandler(this.btcancel_Click);
            // 
            // btok
            // 
            this.btok.Location = new System.Drawing.Point(94, 105);
            this.btok.Name = "btok";
            this.btok.Size = new System.Drawing.Size(64, 30);
            this.btok.TabIndex = 18;
            this.btok.Text = "Ok";
            this.btok.UseVisualStyleBackColor = true;
            this.btok.Click += new System.EventHandler(this.btok_Click);
            // 
            // txtValue1
            // 
            this.txtValue1.Location = new System.Drawing.Point(136, 69);
            this.txtValue1.Name = "txtValue1";
            this.txtValue1.Size = new System.Drawing.Size(104, 22);
            this.txtValue1.TabIndex = 21;
            this.txtValue1.Text = "-1.0";
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(11, 69);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 26);
            this.label1.TabIndex = 20;
            this.label1.Text = "Minimum";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtreal
            // 
            this.txtreal.Location = new System.Drawing.Point(136, 6);
            this.txtreal.Name = "txtreal";
            this.txtreal.Size = new System.Drawing.Size(104, 22);
            this.txtreal.TabIndex = 23;
            this.txtreal.Text = "1.0";
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(11, 6);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 26);
            this.label2.TabIndex = 22;
            this.label2.Text = "Real Maximum";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // frmSetMaxRange
            // 
            this.AcceptButton = this.btok;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(254, 148);
            this.Controls.Add(this.txtreal);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtValue1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btcancel);
            this.Controls.Add(this.btok);
            this.Controls.Add(this.txtValue);
            this.Controls.Add(this.label4);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSetMaxRange";
            this.Text = "Change range.";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtValue;
        private System.Windows.Forms.Button btcancel;
        private System.Windows.Forms.Button btok;
        private System.Windows.Forms.TextBox txtValue1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtreal;
        private System.Windows.Forms.Label label2;
    }
}