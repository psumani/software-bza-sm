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
            this.txtreal = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btcancel = new System.Windows.Forms.Button();
            this.btok = new System.Windows.Forms.Button();
            this.txtValue = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtreal
            // 
            this.txtreal.Font = new System.Drawing.Font("Consolas", 9F);
            this.txtreal.Location = new System.Drawing.Point(142, 28);
            this.txtreal.Name = "txtreal";
            this.txtreal.ReadOnly = true;
            this.txtreal.Size = new System.Drawing.Size(104, 22);
            this.txtreal.TabIndex = 32;
            this.txtreal.Text = "1.0";
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(9, 23);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(127, 31);
            this.label2.TabIndex = 31;
            this.label2.Text = "Current Reference";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btcancel
            // 
            this.btcancel.Font = new System.Drawing.Font("Consolas", 9F);
            this.btcancel.Location = new System.Drawing.Point(142, 118);
            this.btcancel.Name = "btcancel";
            this.btcancel.Size = new System.Drawing.Size(64, 30);
            this.btcancel.TabIndex = 28;
            this.btcancel.Text = "Cancel";
            this.btcancel.UseVisualStyleBackColor = true;
            // 
            // btok
            // 
            this.btok.Font = new System.Drawing.Font("Consolas", 9F);
            this.btok.Location = new System.Drawing.Point(60, 118);
            this.btok.Name = "btok";
            this.btok.Size = new System.Drawing.Size(64, 30);
            this.btok.TabIndex = 27;
            this.btok.Text = "Ok";
            this.btok.UseVisualStyleBackColor = true;
            this.btok.Click += new System.EventHandler(this.btok_Click);
            // 
            // txtValue
            // 
            this.txtValue.Font = new System.Drawing.Font("Consolas", 9F);
            this.txtValue.Location = new System.Drawing.Point(142, 65);
            this.txtValue.Name = "txtValue";
            this.txtValue.Size = new System.Drawing.Size(104, 22);
            this.txtValue.TabIndex = 26;
            this.txtValue.Text = "0.0";
            // 
            // label4
            // 
            this.label4.Font = new System.Drawing.Font("Consolas", 9F);
            this.label4.Location = new System.Drawing.Point(9, 60);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(127, 30);
            this.label4.TabIndex = 25;
            this.label4.Text = "Set New Reference";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // frmSetVdcReference
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(262, 164);
            this.Controls.Add(this.txtreal);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btcancel);
            this.Controls.Add(this.btok);
            this.Controls.Add(this.txtValue);
            this.Controls.Add(this.label4);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmSetVdcReference";
            this.Text = "Set Vdc Reference";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox txtreal;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btcancel;
        private System.Windows.Forms.Button btok;
        private System.Windows.Forms.TextBox txtValue;
        private System.Windows.Forms.Label label4;
    }
}