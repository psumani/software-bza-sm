namespace ZiveLab.Device.ZIM.Win
{
    partial class StatusPanel
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
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.cbMenu = new System.Windows.Forms.CheckBox();
            this.panelLeft = new System.Windows.Forms.FlowLayoutPanel();
            this.panelHeader = new System.Windows.Forms.Panel();
            this.labelTitle = new System.Windows.Forms.Label();
            this.panelAux = new ZiveLab.Device.ZIM.Win.Panels.PanelAux();
            this.panelCookerHeader = new ZiveLab.Device.ZIM.Win.Panels.PanelCookerHeader();
            this.panelCooker = new ZiveLab.Device.ZIM.Win.Panels.panelCooker();
            this.panelStepSamples = new ZiveLab.Device.ZIM.Win.SubPanels.PanelStepSamples();
            this.panelSamplesHeader = new ZiveLab.Device.ZIM.Win.Panels.PanelSamplesHeader();
            this.panelSamples = new ZiveLab.Device.ZIM.Win.Panels.PanelSamples();
            this.panelNoiseLevelHeader = new ZiveLab.Device.ZIM.Win.Panels.PanelNoiseLevelHeader();
            this.panelNoiseLevel = new ZiveLab.Device.ZIM.Win.Panels.PanelNoiseLevel();
            this.panelBlank = new ZiveLab.Device.ZIM.Win.Panels.PanelBlank();
            this.panelLeft.SuspendLayout();
            this.panelHeader.SuspendLayout();
            this.SuspendLayout();
            // 
            // cbMenu
            // 
            this.cbMenu.Appearance = System.Windows.Forms.Appearance.Button;
            this.cbMenu.AutoSize = true;
            this.cbMenu.BackColor = System.Drawing.SystemColors.Control;
            this.cbMenu.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.cbMenu.Cursor = System.Windows.Forms.Cursors.Default;
            this.cbMenu.Dock = System.Windows.Forms.DockStyle.Left;
            this.cbMenu.FlatAppearance.BorderSize = 0;
            this.cbMenu.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cbMenu.Font = new System.Drawing.Font("Consolas", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbMenu.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.HambergerMenu;
            this.cbMenu.Location = new System.Drawing.Point(0, 0);
            this.cbMenu.Name = "cbMenu";
            this.cbMenu.Size = new System.Drawing.Size(30, 25);
            this.cbMenu.TabIndex = 1;
            this.cbMenu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.toolTip.SetToolTip(this.cbMenu, "Menu");
            this.cbMenu.UseVisualStyleBackColor = false;
            // 
            // panelLeft
            // 
            this.panelLeft.AutoScroll = true;
            this.panelLeft.BackColor = System.Drawing.SystemColors.Control;
            this.panelLeft.Controls.Add(this.panelHeader);
            this.panelLeft.Controls.Add(this.panelAux);
            this.panelLeft.Controls.Add(this.panelCookerHeader);
            this.panelLeft.Controls.Add(this.panelCooker);
            this.panelLeft.Controls.Add(this.panelStepSamples);
            this.panelLeft.Controls.Add(this.panelSamplesHeader);
            this.panelLeft.Controls.Add(this.panelSamples);
            this.panelLeft.Controls.Add(this.panelNoiseLevelHeader);
            this.panelLeft.Controls.Add(this.panelNoiseLevel);
            this.panelLeft.Controls.Add(this.panelBlank);
            this.panelLeft.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelLeft.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.panelLeft.Location = new System.Drawing.Point(0, 0);
            this.panelLeft.MinimumSize = new System.Drawing.Size(340, 390);
            this.panelLeft.Name = "panelLeft";
            this.panelLeft.Padding = new System.Windows.Forms.Padding(10);
            this.panelLeft.Size = new System.Drawing.Size(364, 1000);
            this.panelLeft.TabIndex = 7;
            this.panelLeft.WrapContents = false;
            // 
            // panelHeader
            // 
            this.panelHeader.BackColor = System.Drawing.Color.White;
            this.panelHeader.Controls.Add(this.labelTitle);
            this.panelHeader.Controls.Add(this.cbMenu);
            this.panelHeader.Location = new System.Drawing.Point(13, 13);
            this.panelHeader.Name = "panelHeader";
            this.panelHeader.Size = new System.Drawing.Size(320, 25);
            this.panelHeader.TabIndex = 16;
            // 
            // labelTitle
            // 
            this.labelTitle.BackColor = System.Drawing.SystemColors.Control;
            this.labelTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.labelTitle.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelTitle.Location = new System.Drawing.Point(30, 0);
            this.labelTitle.Name = "labelTitle";
            this.labelTitle.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.labelTitle.Size = new System.Drawing.Size(290, 25);
            this.labelTitle.TabIndex = 2;
            this.labelTitle.Text = "ZIM-SIF";
            this.labelTitle.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // panelAux
            // 
            this.panelAux.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelAux.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelAux.Location = new System.Drawing.Point(13, 44);
            this.panelAux.Name = "panelAux";
            this.panelAux.Size = new System.Drawing.Size(320, 129);
            this.panelAux.TabIndex = 18;
            // 
            // panelCookerHeader
            // 
            this.panelCookerHeader.BackColor = System.Drawing.SystemColors.Control;
            this.panelCookerHeader.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelCookerHeader.Location = new System.Drawing.Point(13, 179);
            this.panelCookerHeader.Name = "panelCookerHeader";
            this.panelCookerHeader.Size = new System.Drawing.Size(320, 25);
            this.panelCookerHeader.TabIndex = 16;
            this.panelCookerHeader.ExpandPanel += new System.EventHandler(this.panelCookerHeader_ExpandPanel);
            this.panelCookerHeader.CollapsePanel += new System.EventHandler(this.panelCookerHeader_CollapsePanel);
            this.panelCookerHeader.EnabledChanged += new System.EventHandler(this.panelCookerHeader_EnabledChanged);
            // 
            // panelCooker
            // 
            this.panelCooker.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelCooker.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelCooker.Index = 0;
            this.panelCooker.Location = new System.Drawing.Point(13, 210);
            this.panelCooker.Name = "panelCooker";
            this.panelCooker.Size = new System.Drawing.Size(320, 150);
            this.panelCooker.TabIndex = 21;
            this.panelCooker.ReadSamplesVuttonClicked += new System.EventHandler(this.panelCooker_ReadSamplesClicked);
            this.panelCooker.StartExperimentClicked += new System.EventHandler(this.panelCooker_StartExperimentClicked);
            this.panelCooker.StopExperimentClicked += new System.EventHandler(this.panelCooker_StopExperimentClicked);
            this.panelCooker.RefreshVacClicked += new System.EventHandler(this.panelCooker_RefreshVacClicked);
            this.panelCooker.IndexChanged += new System.EventHandler(this.panelCooker_IndexChanged);
            // 
            // panelStepSamples
            // 
            this.panelStepSamples.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelStepSamples.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelStepSamples.Location = new System.Drawing.Point(13, 366);
            this.panelStepSamples.Name = "panelStepSamples";
            this.panelStepSamples.Size = new System.Drawing.Size(320, 277);
            this.panelStepSamples.TabIndex = 17;
            // 
            // panelSamplesHeader
            // 
            this.panelSamplesHeader.BackColor = System.Drawing.SystemColors.Control;
            this.panelSamplesHeader.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelSamplesHeader.Location = new System.Drawing.Point(13, 649);
            this.panelSamplesHeader.Name = "panelSamplesHeader";
            this.panelSamplesHeader.Size = new System.Drawing.Size(320, 25);
            this.panelSamplesHeader.TabIndex = 4;
            this.panelSamplesHeader.Title = "Samples";
            this.panelSamplesHeader.SamplesModeChanged += new System.EventHandler(this.panelSamplesHeader_SamplesModeChanged);
            this.panelSamplesHeader.ExpandPanel += new System.EventHandler(this.panelSamplesHeader_ExpandPanel);
            this.panelSamplesHeader.CollapsePanel += new System.EventHandler(this.panelSamplesHeader_CollapsePanel);
            this.panelSamplesHeader.EnabledChanged += new System.EventHandler(this.panelSamplesHeader_EnabledChanged);
            this.panelSamplesHeader.VisibleChanged += new System.EventHandler(this.panelSamplesHeader_VisibleChanged);
            // 
            // panelSamples
            // 
            this.panelSamples.BackColor = System.Drawing.Color.White;
            this.panelSamples.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelSamples.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelSamples.Index = 0;
            this.panelSamples.Location = new System.Drawing.Point(13, 680);
            this.panelSamples.Name = "panelSamples";
            this.panelSamples.SamplesMode = ZiveLab.Device.ZIM.Win.Panels.SamplesMode.Summary;
            this.panelSamples.Size = new System.Drawing.Size(320, 320);
            this.panelSamples.TabIndex = 1;
            this.panelSamples.Visible = false;
            // 
            // panelNoiseLevelHeader
            // 
            this.panelNoiseLevelHeader.BackColor = System.Drawing.SystemColors.Control;
            this.panelNoiseLevelHeader.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelNoiseLevelHeader.Location = new System.Drawing.Point(13, 1006);
            this.panelNoiseLevelHeader.Name = "panelNoiseLevelHeader";
            this.panelNoiseLevelHeader.Size = new System.Drawing.Size(320, 25);
            this.panelNoiseLevelHeader.TabIndex = 19;
            this.panelNoiseLevelHeader.ExpandPanel += new System.EventHandler(this.panelNoiseLevelHeader_ExpandPanel);
            this.panelNoiseLevelHeader.CollapsePanel += new System.EventHandler(this.panelNoiseLevelHeader_CollapsePanel);
            this.panelNoiseLevelHeader.EnabledChanged += new System.EventHandler(this.panelNoiseLevelHeader_EnabledChanged);
            this.panelNoiseLevelHeader.VisibleChanged += new System.EventHandler(this.panelNoiseLevelHeader_VisibleChanged);
            // 
            // panelNoiseLevel
            // 
            this.panelNoiseLevel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelNoiseLevel.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelNoiseLevel.Location = new System.Drawing.Point(13, 1037);
            this.panelNoiseLevel.Name = "panelNoiseLevel";
            this.panelNoiseLevel.Size = new System.Drawing.Size(320, 80);
            this.panelNoiseLevel.TabIndex = 20;
            this.panelNoiseLevel.MeasureNoiseLevelClicked += new System.EventHandler(this.panelNoiseLevel_MeasureNoiseLevelClicked);
            // 
            // panelBlank
            // 
            this.panelBlank.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panelBlank.Location = new System.Drawing.Point(13, 1123);
            this.panelBlank.Name = "panelBlank";
            this.panelBlank.Size = new System.Drawing.Size(320, 25);
            this.panelBlank.TabIndex = 22;
            // 
            // StatusPanel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelLeft);
            this.Name = "StatusPanel";
            this.Size = new System.Drawing.Size(364, 1000);
            this.Load += new System.EventHandler(this.StatusPanel_Load);
            this.panelLeft.ResumeLayout(false);
            this.panelHeader.ResumeLayout(false);
            this.panelHeader.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.CheckBox cbMenu;
        private System.Windows.Forms.FlowLayoutPanel panelLeft;
        private ZiveLab.Device.ZIM.Win.Panels.PanelSamples panelSamples;
        private ZiveLab.Device.ZIM.Win.Panels.PanelSamplesHeader panelSamplesHeader;
        private System.Windows.Forms.Panel panelHeader;
        private System.Windows.Forms.Label labelTitle;
        private SubPanels.PanelStepSamples panelStepSamples;
        private Panels.PanelAux panelAux;
        private Panels.PanelNoiseLevel panelNoiseLevel;
        private Panels.PanelNoiseLevelHeader panelNoiseLevelHeader;
        private Panels.PanelCookerHeader panelCookerHeader;
        private Panels.panelCooker panelCooker;
        private Panels.PanelBlank panelBlank;
    }
}
