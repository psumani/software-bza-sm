namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelSamplesHeader
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
            this.labelTitle = new System.Windows.Forms.Label();
            this.expanderButton = new System.Windows.Forms.CheckBox();
            this.buttonLissajousCurve = new System.Windows.Forms.RadioButton();
            this.buttonTimeDomain = new System.Windows.Forms.RadioButton();
            this.buttonFourierDomain = new System.Windows.Forms.RadioButton();
            this.panelOptions = new System.Windows.Forms.Panel();
            this.buttonSummary = new System.Windows.Forms.RadioButton();
            this.buttonError = new System.Windows.Forms.RadioButton();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.panelOptions.SuspendLayout();
            this.SuspendLayout();
            // 
            // labelTitle
            // 
            this.labelTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.labelTitle.Font = new System.Drawing.Font("Consolas", 9F);
            this.labelTitle.Location = new System.Drawing.Point(22, 0);
            this.labelTitle.Name = "labelTitle";
            this.labelTitle.Size = new System.Drawing.Size(298, 29);
            this.labelTitle.TabIndex = 1;
            this.labelTitle.Text = "Samples";
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
            this.expanderButton.TabIndex = 0;
            this.expanderButton.UseVisualStyleBackColor = false;
            this.expanderButton.Click += new System.EventHandler(this.expanderButton_Click);
            // 
            // buttonLissajousCurve
            // 
            this.buttonLissajousCurve.AutoSize = true;
            this.buttonLissajousCurve.Location = new System.Drawing.Point(22, 7);
            this.buttonLissajousCurve.Name = "buttonLissajousCurve";
            this.buttonLissajousCurve.Size = new System.Drawing.Size(14, 13);
            this.buttonLissajousCurve.TabIndex = 3;
            this.toolTip.SetToolTip(this.buttonLissajousCurve, "Lissajous Curve");
            this.buttonLissajousCurve.UseVisualStyleBackColor = true;
            this.buttonLissajousCurve.Click += new System.EventHandler(this.samplesModeButton_Click);
            // 
            // buttonTimeDomain
            // 
            this.buttonTimeDomain.AutoSize = true;
            this.buttonTimeDomain.Location = new System.Drawing.Point(41, 7);
            this.buttonTimeDomain.Name = "buttonTimeDomain";
            this.buttonTimeDomain.Size = new System.Drawing.Size(14, 13);
            this.buttonTimeDomain.TabIndex = 4;
            this.toolTip.SetToolTip(this.buttonTimeDomain, "Time Domain");
            this.buttonTimeDomain.UseVisualStyleBackColor = true;
            this.buttonTimeDomain.Click += new System.EventHandler(this.samplesModeButton_Click);
            // 
            // buttonFourierDomain
            // 
            this.buttonFourierDomain.AutoSize = true;
            this.buttonFourierDomain.Location = new System.Drawing.Point(60, 7);
            this.buttonFourierDomain.Name = "buttonFourierDomain";
            this.buttonFourierDomain.Size = new System.Drawing.Size(14, 13);
            this.buttonFourierDomain.TabIndex = 5;
            this.toolTip.SetToolTip(this.buttonFourierDomain, "Frequnecy Domain");
            this.buttonFourierDomain.UseVisualStyleBackColor = true;
            this.buttonFourierDomain.Click += new System.EventHandler(this.samplesModeButton_Click);
            // 
            // panelOptions
            // 
            this.panelOptions.Controls.Add(this.buttonSummary);
            this.panelOptions.Controls.Add(this.buttonError);
            this.panelOptions.Controls.Add(this.buttonLissajousCurve);
            this.panelOptions.Controls.Add(this.buttonFourierDomain);
            this.panelOptions.Controls.Add(this.buttonTimeDomain);
            this.panelOptions.Dock = System.Windows.Forms.DockStyle.Right;
            this.panelOptions.Location = new System.Drawing.Point(212, 0);
            this.panelOptions.Name = "panelOptions";
            this.panelOptions.Size = new System.Drawing.Size(108, 29);
            this.panelOptions.TabIndex = 2;
            // 
            // buttonSummary
            // 
            this.buttonSummary.AutoSize = true;
            this.buttonSummary.Checked = true;
            this.buttonSummary.Location = new System.Drawing.Point(3, 7);
            this.buttonSummary.Name = "buttonSummary";
            this.buttonSummary.Size = new System.Drawing.Size(14, 13);
            this.buttonSummary.TabIndex = 2;
            this.buttonSummary.TabStop = true;
            this.toolTip.SetToolTip(this.buttonSummary, "Summary");
            this.buttonSummary.UseVisualStyleBackColor = true;
            this.buttonSummary.Click += new System.EventHandler(this.samplesModeButton_Click);
            // 
            // buttonError
            // 
            this.buttonError.AutoSize = true;
            this.buttonError.Location = new System.Drawing.Point(79, 7);
            this.buttonError.Name = "buttonError";
            this.buttonError.Size = new System.Drawing.Size(14, 13);
            this.buttonError.TabIndex = 6;
            this.toolTip.SetToolTip(this.buttonError, "Error");
            this.buttonError.UseVisualStyleBackColor = true;
            this.buttonError.Click += new System.EventHandler(this.samplesModeButton_Click);
            // 
            // PanelSamplesHeader
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.Controls.Add(this.panelOptions);
            this.Controls.Add(this.labelTitle);
            this.Controls.Add(this.expanderButton);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelSamplesHeader";
            this.Size = new System.Drawing.Size(320, 29);
            this.EnabledChanged += new System.EventHandler(this.ExpanderPanel_EnabledChanged);
            this.VisibleChanged += new System.EventHandler(this.ExpanderPanel_VisibleChanged);
            this.panelOptions.ResumeLayout(false);
            this.panelOptions.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.CheckBox expanderButton;
        private System.Windows.Forms.Label labelTitle;
        private System.Windows.Forms.RadioButton buttonLissajousCurve;
        private System.Windows.Forms.RadioButton buttonTimeDomain;
        private System.Windows.Forms.RadioButton buttonFourierDomain;
        private System.Windows.Forms.Panel panelOptions;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.RadioButton buttonError;
        private System.Windows.Forms.RadioButton buttonSummary;
    }
}
