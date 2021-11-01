namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelAbout
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
            this.components = new System.ComponentModel.Container();
            this.panelHeader = new System.Windows.Forms.Panel();
            this.buttonCopyToClipboard = new System.Windows.Forms.CheckBox();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.flowLayoutPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.panelHeader.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelHeader
            // 
            this.panelHeader.Controls.Add(this.buttonCopyToClipboard);
            this.panelHeader.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelHeader.Location = new System.Drawing.Point(0, 0);
            this.panelHeader.Name = "panelHeader";
            this.panelHeader.Size = new System.Drawing.Size(320, 29);
            this.panelHeader.TabIndex = 1;
            // 
            // buttonCopyToClipboard
            // 
            this.buttonCopyToClipboard.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonCopyToClipboard.BackColor = System.Drawing.SystemColors.Control;
            this.buttonCopyToClipboard.Dock = System.Windows.Forms.DockStyle.Right;
            this.buttonCopyToClipboard.FlatAppearance.BorderSize = 0;
            this.buttonCopyToClipboard.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonCopyToClipboard.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.CopyToClipboard;
            this.buttonCopyToClipboard.Location = new System.Drawing.Point(295, 0);
            this.buttonCopyToClipboard.Name = "buttonCopyToClipboard";
            this.buttonCopyToClipboard.Size = new System.Drawing.Size(25, 29);
            this.buttonCopyToClipboard.TabIndex = 5;
            this.toolTip.SetToolTip(this.buttonCopyToClipboard, "Copy to clipboard");
            this.buttonCopyToClipboard.UseVisualStyleBackColor = false;
            this.buttonCopyToClipboard.Click += new System.EventHandler(this.buttonCopyToClipboard_Click);
            // 
            // flowLayoutPanel
            // 
            this.flowLayoutPanel.AutoScroll = true;
            this.flowLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flowLayoutPanel.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.flowLayoutPanel.Location = new System.Drawing.Point(0, 29);
            this.flowLayoutPanel.Name = "flowLayoutPanel";
            this.flowLayoutPanel.Size = new System.Drawing.Size(320, 344);
            this.flowLayoutPanel.TabIndex = 3;
            this.flowLayoutPanel.WrapContents = false;
            // 
            // PanelAbout
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.flowLayoutPanel);
            this.Controls.Add(this.panelHeader);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelAbout";
            this.Size = new System.Drawing.Size(320, 373);
            this.panelHeader.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel panelHeader;
        private System.Windows.Forms.CheckBox buttonCopyToClipboard;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel;
    }
}
