namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelNoiseLevelHeader
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
            this.labelTitle = new System.Windows.Forms.Label();
            this.expanderButton = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // labelTitle
            // 
            this.labelTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.labelTitle.Font = new System.Drawing.Font("Consolas", 9F);
            this.labelTitle.Location = new System.Drawing.Point(22, 0);
            this.labelTitle.Name = "labelTitle";
            this.labelTitle.Size = new System.Drawing.Size(298, 29);
            this.labelTitle.TabIndex = 3;
            this.labelTitle.Text = "Noise Level";
            this.labelTitle.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // expanderButton
            // 
            this.expanderButton.Appearance = System.Windows.Forms.Appearance.Button;
            this.expanderButton.BackColor = System.Drawing.Color.Transparent;
            this.expanderButton.Dock = System.Windows.Forms.DockStyle.Left;
            this.expanderButton.FlatAppearance.BorderSize = 0;
            this.expanderButton.FlatAppearance.CheckedBackColor = System.Drawing.Color.Transparent;
            this.expanderButton.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.expanderButton.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.expanderButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.expanderButton.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.chevron_right;
            this.expanderButton.Location = new System.Drawing.Point(0, 0);
            this.expanderButton.Name = "expanderButton";
            this.expanderButton.Size = new System.Drawing.Size(22, 29);
            this.expanderButton.TabIndex = 2;
            this.expanderButton.UseVisualStyleBackColor = false;
            this.expanderButton.Click += new System.EventHandler(this.expanderButton_Click);
            // 
            // PanelNoiseLevelHeader
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.labelTitle);
            this.Controls.Add(this.expanderButton);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelNoiseLevelHeader";
            this.Size = new System.Drawing.Size(320, 29);
            this.EnabledChanged += new System.EventHandler(this.ExpanderPanel_EnabledChanged);
            this.VisibleChanged += new System.EventHandler(this.ExpanderPanel_VisibleChanged);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label labelTitle;
        private System.Windows.Forms.CheckBox expanderButton;
    }
}
