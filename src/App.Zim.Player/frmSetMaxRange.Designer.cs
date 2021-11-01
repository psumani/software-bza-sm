namespace App.Zim.Player
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
            this.label4 = new System.Windows.Forms.Label();
            this.txtValue = new System.Windows.Forms.TextBox();
            this.btcancel = new System.Windows.Forms.Button();
            this.btok = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(12, 9);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(119, 22);
            this.label4.TabIndex = 16;
            this.label4.Text = "Maximum value";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtValue
            // 
            this.txtValue.Location = new System.Drawing.Point(137, 9);
            this.txtValue.Name = "txtValue";
            this.txtValue.Size = new System.Drawing.Size(104, 21);
            this.txtValue.TabIndex = 17;
            this.txtValue.Text = "1.0";
            // 
            // btcancel
            // 
            this.btcancel.Location = new System.Drawing.Point(162, 42);
            this.btcancel.Name = "btcancel";
            this.btcancel.Size = new System.Drawing.Size(79, 30);
            this.btcancel.TabIndex = 19;
            this.btcancel.Text = "Cancel";
            this.btcancel.UseVisualStyleBackColor = true;
            this.btcancel.Click += new System.EventHandler(this.btcancel_Click);
            // 
            // btok
            // 
            this.btok.Location = new System.Drawing.Point(65, 42);
            this.btok.Name = "btok";
            this.btok.Size = new System.Drawing.Size(79, 30);
            this.btok.TabIndex = 18;
            this.btok.Text = "Ok";
            this.btok.UseVisualStyleBackColor = true;
            this.btok.Click += new System.EventHandler(this.btok_Click);
            // 
            // frmSetMaxRange
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(277, 78);
            this.Controls.Add(this.btcancel);
            this.Controls.Add(this.btok);
            this.Controls.Add(this.txtValue);
            this.Controls.Add(this.label4);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmSetMaxRange";
            this.Text = "Set maximum range ";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtValue;
        private System.Windows.Forms.Button btcancel;
        private System.Windows.Forms.Button btok;
    }
}