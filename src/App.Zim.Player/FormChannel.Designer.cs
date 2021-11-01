namespace App.Zim.Player
{
    partial class FormChannel
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
            this.components = new System.ComponentModel.Container();
            this.listView = new System.Windows.Forms.ListView();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.panelNyquist = new ZiveLab.Device.ZIM.Win.Panels.PanelNyquist();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.panelBode = new ZiveLab.Device.ZIM.Win.Panels.PanelBode();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.statusPanel = new ZiveLab.Device.ZIM.Win.StatusPanel();
            this.tabControl1.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.SuspendLayout();
            // 
            // listView
            // 
            this.listView.BackColor = System.Drawing.Color.White;
            this.listView.Dock = System.Windows.Forms.DockStyle.Fill;
            this.listView.GridLines = true;
            this.listView.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable;
            this.listView.HideSelection = false;
            this.listView.LabelEdit = true;
            this.listView.Location = new System.Drawing.Point(3, 3);
            this.listView.MultiSelect = false;
            this.listView.Name = "listView";
            this.listView.Size = new System.Drawing.Size(793, 786);
            this.listView.TabIndex = 5;
            this.listView.UseCompatibleStateImageBehavior = false;
            this.listView.View = System.Windows.Forms.View.Details;
            this.listView.Click += new System.EventHandler(this.listView_Click);
            this.listView.KeyDown += new System.Windows.Forms.KeyEventHandler(this.listView_KeyDown);
            // 
            // timer1
            // 
            this.timer1.Interval = 500;
            this.timer1.Tick += new System.EventHandler(this.timer_Tick);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(807, 825);
            this.tabControl1.TabIndex = 1;
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.listView);
            this.tabPage3.Location = new System.Drawing.Point(4, 23);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(799, 798);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Data";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.panelNyquist);
            this.tabPage1.Location = new System.Drawing.Point(4, 23);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(799, 798);
            this.tabPage1.TabIndex = 3;
            this.tabPage1.Text = "Nyquist";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // panelNyquist
            // 
            this.panelNyquist.BackColor = System.Drawing.Color.White;
            this.panelNyquist.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelNyquist.Location = new System.Drawing.Point(3, 3);
            this.panelNyquist.Name = "panelNyquist";
            this.panelNyquist.Size = new System.Drawing.Size(793, 787);
            this.panelNyquist.TabIndex = 0;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.panelBode);
            this.tabPage2.Location = new System.Drawing.Point(4, 23);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(799, 798);
            this.tabPage2.TabIndex = 4;
            this.tabPage2.Text = "Bode";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // panelBode
            // 
            this.panelBode.BackColor = System.Drawing.Color.White;
            this.panelBode.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelBode.Location = new System.Drawing.Point(3, 3);
            this.panelBode.Name = "panelBode";
            this.panelBode.Size = new System.Drawing.Size(793, 787);
            this.panelBode.TabIndex = 0;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.FixedPanel = System.Windows.Forms.FixedPanel.Panel1;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.statusPanel);
            this.splitContainer1.Panel1MinSize = 364;
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.tabControl1);
            this.splitContainer1.Size = new System.Drawing.Size(1175, 825);
            this.splitContainer1.SplitterDistance = 364;
            this.splitContainer1.TabIndex = 2;
            // 
            // statusPanel
            // 
            this.statusPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.statusPanel.Index = 0;
            this.statusPanel.Location = new System.Drawing.Point(0, 0);
            this.statusPanel.Name = "statusPanel";
            this.statusPanel.Size = new System.Drawing.Size(364, 825);
            this.statusPanel.TabIndex = 0;
            this.statusPanel.StartExperimentClicked += new System.EventHandler(this.statusPanel_StartExperimentClicked);
            this.statusPanel.StopExperimentClicked += new System.EventHandler(this.statusPanel_StopExperimentClicked);
            this.statusPanel.MeasureNoiseLevelClicked += new System.EventHandler(this.statusPanel_MeasureNoiseLevelClicked);
            this.statusPanel.RefreshVacClicked += new System.EventHandler(this.statusPanel_RefreshVacClicked);
            this.statusPanel.IndexChanged += new System.EventHandler(this.statusPanel_IndexChanged);
            this.statusPanel.MenuConnectingClicked += new System.EventHandler(this.statusPanel_MenuConnecting);
            this.statusPanel.CalWith1ohmMenuSelected += new System.EventHandler(this.statusPanel_CalWith1ohmMenuSelected);
            this.statusPanel.CalGainWith2AMenuSelected += new System.EventHandler(this.statusPanel_CalGainWith2AMenuSelected);
            this.statusPanel.CalGainWith200mAMenuSelected += new System.EventHandler(this.statusPanel_CalGainWith200mAMenuSelected);
            this.statusPanel.CalGainWith20mAMenuSelected += new System.EventHandler(this.statusPanel_CalGainWith20mAMenuSelected);
            this.statusPanel.CalGainWith2mAMenuSelected += new System.EventHandler(this.statusPanel_CalGainWith2mAMenuSelected);
            this.statusPanel.ReportWith2AMenuSelected += new System.EventHandler(this.statusPanel_ReportWith2AMenuSelected);
            this.statusPanel.ReportWith200mAMenuSelected += new System.EventHandler(this.statusPanel_ReportWith200mAMenuSelected);
            this.statusPanel.ReportWith20mAMenuSelected += new System.EventHandler(this.statusPanel_ReportWith20mAMenuSelected);
            this.statusPanel.ReportWith2mAMenuSelected += new System.EventHandler(this.statusPanel_ReportWith2mAMenuSelected);
            this.statusPanel.CalInitAt1ohmMenuSelected += new System.EventHandler(this.statusPanel_CalInitAt1ohmMenuSelected);
            this.statusPanel.CalGainInitAt2AMenuSelected += new System.EventHandler(this.statusPanel_CalGainInitAt2AMenuSelected);
            this.statusPanel.CalGainInitAt200mAMenuSelected += new System.EventHandler(this.statusPanel_CalGainInitAt200mAMenuSelected);
            this.statusPanel.CalGainInitAt20mAMenuSelected += new System.EventHandler(this.statusPanel_CalGainInitAt20mAMenuSelected);
            this.statusPanel.CalGainInitAt2mAMenuSelected += new System.EventHandler(this.statusPanel_CalGainInitAt2mAMenuSelected);
            this.statusPanel.CalInitAtAllMenuSelected += new System.EventHandler(this.statusPanel_CalInitAtAllMenuSelected);
            this.statusPanel.ReadSamplesMenuSelected += new System.EventHandler(this.statusPanel_ReadSamplesMenuSelected);
            this.statusPanel.SaveAllMenuSelected += new System.EventHandler(this.statusPanel_SaveAllMenuSelected);
            this.statusPanel.SaveSamplesMenuSelected += new System.EventHandler(this.statusPanel_SaveSamplesMenuSelected);
            this.statusPanel.SaveRptMenuSelected += new System.EventHandler(this.statusPanel_SaveRptMenuSelected);
            // 
            // FormChannel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1175, 825);
            this.Controls.Add(this.splitContainer1);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.KeyPreview = true;
            this.Name = "FormChannel";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ZIM - Control and Measure.";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormChannel_FormClosing);
            this.Load += new System.EventHandler(this.FormChannel_Load);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.FormChannel_KeyDown);
            this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.FormChannel_KeyPress);
            this.tabControl1.ResumeLayout(false);
            this.tabPage3.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage2.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.ListView listView;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.TabControl tabControl1;
        private ZiveLab.Device.ZIM.Win.StatusPanel statusPanel;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.TabPage tabPage1;
        private ZiveLab.Device.ZIM.Win.Panels.PanelNyquist panelNyquist;
        private System.Windows.Forms.TabPage tabPage2;
        private ZiveLab.Device.ZIM.Win.Panels.PanelBode panelBode;
        private System.Windows.Forms.SplitContainer splitContainer1;
    }
}