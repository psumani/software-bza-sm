namespace ZiveLab.Device.ZIM.Win.SubPanels
{
    partial class SpringItem
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.labelKey = new System.Windows.Forms.Label();
            this.labelValue = new System.Windows.Forms.Label();
            this.line = new System.Windows.Forms.Label();
            this.contentPanel = new System.Windows.Forms.Panel();
            this.contentPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // labelKey
            // 
            this.labelKey.AutoSize = true;
            this.labelKey.Dock = System.Windows.Forms.DockStyle.Left;
            this.labelKey.Font = new System.Drawing.Font("Calibri", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelKey.Location = new System.Drawing.Point(0, 0);
            this.labelKey.Name = "labelKey";
            this.labelKey.Padding = new System.Windows.Forms.Padding(5);
            this.labelKey.Size = new System.Drawing.Size(37, 25);
            this.labelKey.TabIndex = 1;
            this.labelKey.Text = "Key";
            // 
            // labelValue
            // 
            this.labelValue.AutoSize = true;
            this.labelValue.Dock = System.Windows.Forms.DockStyle.Right;
            this.labelValue.Location = new System.Drawing.Point(268, 0);
            this.labelValue.Margin = new System.Windows.Forms.Padding(0);
            this.labelValue.Name = "labelValue";
            this.labelValue.Padding = new System.Windows.Forms.Padding(5);
            this.labelValue.Size = new System.Drawing.Size(52, 25);
            this.labelValue.TabIndex = 2;
            this.labelValue.Text = "Value";
            // 
            // line
            // 
            this.line.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.line.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.line.Location = new System.Drawing.Point(0, 26);
            this.line.Name = "line";
            this.line.Size = new System.Drawing.Size(320, 2);
            this.line.TabIndex = 0;
            // 
            // contentPanel
            // 
            this.contentPanel.Controls.Add(this.labelKey);
            this.contentPanel.Controls.Add(this.labelValue);
            this.contentPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this.contentPanel.Location = new System.Drawing.Point(0, 0);
            this.contentPanel.Name = "contentPanel";
            this.contentPanel.Size = new System.Drawing.Size(320, 25);
            this.contentPanel.TabIndex = 3;
            // 
            // SpringItem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.contentPanel);
            this.Controls.Add(this.line);
            this.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "SpringItem";
            this.Size = new System.Drawing.Size(320, 28);
            this.contentPanel.ResumeLayout(false);
            this.contentPanel.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label labelKey;
        private System.Windows.Forms.Label labelValue;
        private System.Windows.Forms.Label line;
        private System.Windows.Forms.Panel contentPanel;
    }
}
