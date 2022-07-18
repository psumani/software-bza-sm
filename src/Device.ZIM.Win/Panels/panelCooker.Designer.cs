namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class panelCooker
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
            this.labelUnitZPhase = new System.Windows.Forms.Label();
            this.labelElapsedTime = new System.Windows.Forms.Label();
            this.labelZphase = new System.Windows.Forms.Label();
            this.labelUnitZmag = new System.Windows.Forms.Label();
            this.labelZmag = new System.Windows.Forms.Label();
            this.labelFrequency = new System.Windows.Forms.Label();
            this.progressBar = new System.Windows.Forms.ProgressBar();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.buttonRefreshVac = new System.Windows.Forms.CheckBox();
            this.buttonRefresh = new System.Windows.Forms.CheckBox();
            this.buttonGoLast = new System.Windows.Forms.CheckBox();
            this.buttonGoFirst = new System.Windows.Forms.CheckBox();
            this.buttonStop = new System.Windows.Forms.CheckBox();
            this.buttonSetUp = new System.Windows.Forms.CheckBox();
            this.buttonGoNext = new System.Windows.Forms.CheckBox();
            this.buttonGoPrevious = new System.Windows.Forms.CheckBox();
            this.buttonStart = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // labelUnitZPhase
            // 
            this.labelUnitZPhase.AutoSize = true;
            this.labelUnitZPhase.Font = new System.Drawing.Font("Consolas", 18F);
            this.labelUnitZPhase.Location = new System.Drawing.Point(278, 120);
            this.labelUnitZPhase.Name = "labelUnitZPhase";
            this.labelUnitZPhase.Size = new System.Drawing.Size(25, 28);
            this.labelUnitZPhase.TabIndex = 25;
            this.labelUnitZPhase.Text = "°";
            this.labelUnitZPhase.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelElapsedTime
            // 
            this.labelElapsedTime.Font = new System.Drawing.Font("Consolas", 9F);
            this.labelElapsedTime.ForeColor = System.Drawing.SystemColors.ControlText;
            this.labelElapsedTime.Location = new System.Drawing.Point(199, 23);
            this.labelElapsedTime.Name = "labelElapsedTime";
            this.labelElapsedTime.Size = new System.Drawing.Size(111, 20);
            this.labelElapsedTime.TabIndex = 19;
            this.labelElapsedTime.Text = "00:00:00";
            this.labelElapsedTime.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.labelElapsedTime.Visible = false;
            // 
            // labelZphase
            // 
            this.labelZphase.Font = new System.Drawing.Font("Consolas", 18F);
            this.labelZphase.Location = new System.Drawing.Point(145, 117);
            this.labelZphase.Name = "labelZphase";
            this.labelZphase.Size = new System.Drawing.Size(127, 40);
            this.labelZphase.TabIndex = 24;
            this.labelZphase.Text = "--";
            this.labelZphase.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // labelUnitZmag
            // 
            this.labelUnitZmag.AutoSize = true;
            this.labelUnitZmag.Font = new System.Drawing.Font("Consolas", 18F);
            this.labelUnitZmag.Location = new System.Drawing.Point(278, 77);
            this.labelUnitZmag.Name = "labelUnitZmag";
            this.labelUnitZmag.Size = new System.Drawing.Size(38, 28);
            this.labelUnitZmag.TabIndex = 23;
            this.labelUnitZmag.Text = "mΩ";
            this.labelUnitZmag.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelZmag
            // 
            this.labelZmag.Font = new System.Drawing.Font("Consolas", 18F);
            this.labelZmag.Location = new System.Drawing.Point(145, 71);
            this.labelZmag.Name = "labelZmag";
            this.labelZmag.Size = new System.Drawing.Size(127, 45);
            this.labelZmag.TabIndex = 22;
            this.labelZmag.Text = "--";
            this.labelZmag.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // labelFrequency
            // 
            this.labelFrequency.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelFrequency.Location = new System.Drawing.Point(12, 78);
            this.labelFrequency.Name = "labelFrequency";
            this.labelFrequency.Size = new System.Drawing.Size(123, 31);
            this.labelFrequency.TabIndex = 21;
            this.labelFrequency.Text = "-- Hz";
            // 
            // progressBar
            // 
            this.progressBar.Location = new System.Drawing.Point(199, 48);
            this.progressBar.Name = "progressBar";
            this.progressBar.Size = new System.Drawing.Size(110, 12);
            this.progressBar.TabIndex = 20;
            this.progressBar.Visible = false;
            // 
            // buttonRefreshVac
            // 
            this.buttonRefreshVac.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonRefreshVac.AutoSize = true;
            this.buttonRefreshVac.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonRefreshVac.Enabled = false;
            this.buttonRefreshVac.FlatAppearance.BorderSize = 0;
            this.buttonRefreshVac.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonRefreshVac.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonRefreshVac.ForeColor = System.Drawing.Color.Black;
            this.buttonRefreshVac.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.play_circle_outline;
            this.buttonRefreshVac.Location = new System.Drawing.Point(47, 19);
            this.buttonRefreshVac.Name = "buttonRefreshVac";
            this.buttonRefreshVac.Size = new System.Drawing.Size(30, 30);
            this.buttonRefreshVac.TabIndex = 31;
            this.buttonRefreshVac.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.buttonRefreshVac.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.toolTip.SetToolTip(this.buttonRefreshVac, "Upload condition.");
            this.buttonRefreshVac.UseVisualStyleBackColor = true;
            this.buttonRefreshVac.CheckedChanged += new System.EventHandler(this.buttonRefreshVac_CheckedChanged);
            this.buttonRefreshVac.Click += new System.EventHandler(this.buttonRefreshVac_Click);
            // 
            // buttonRefresh
            // 
            this.buttonRefresh.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonRefresh.AutoSize = true;
            this.buttonRefresh.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonRefresh.Enabled = false;
            this.buttonRefresh.FlatAppearance.BorderSize = 0;
            this.buttonRefresh.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonRefresh.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.refresh;
            this.buttonRefresh.Location = new System.Drawing.Point(3, 124);
            this.buttonRefresh.Name = "buttonRefresh";
            this.buttonRefresh.Size = new System.Drawing.Size(22, 22);
            this.buttonRefresh.TabIndex = 26;
            this.toolTip.SetToolTip(this.buttonRefresh, "Read samples again");
            this.buttonRefresh.UseVisualStyleBackColor = true;
            this.buttonRefresh.Click += new System.EventHandler(this.buttonRefresh_Click);
            // 
            // buttonGoLast
            // 
            this.buttonGoLast.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonGoLast.AutoSize = true;
            this.buttonGoLast.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonGoLast.Enabled = false;
            this.buttonGoLast.FlatAppearance.BorderSize = 0;
            this.buttonGoLast.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonGoLast.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.checkbox_blank_outline;
            this.buttonGoLast.Location = new System.Drawing.Point(107, 124);
            this.buttonGoLast.Name = "buttonGoLast";
            this.buttonGoLast.Size = new System.Drawing.Size(22, 22);
            this.buttonGoLast.TabIndex = 30;
            this.toolTip.SetToolTip(this.buttonGoLast, "Go last");
            this.buttonGoLast.UseVisualStyleBackColor = true;
            this.buttonGoLast.Click += new System.EventHandler(this.buttonGoLast_Click);
            // 
            // buttonGoFirst
            // 
            this.buttonGoFirst.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonGoFirst.AutoSize = true;
            this.buttonGoFirst.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonGoFirst.Enabled = false;
            this.buttonGoFirst.FlatAppearance.BorderSize = 0;
            this.buttonGoFirst.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonGoFirst.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.checkbox_blank_circle_outline;
            this.buttonGoFirst.Location = new System.Drawing.Point(29, 124);
            this.buttonGoFirst.Name = "buttonGoFirst";
            this.buttonGoFirst.Size = new System.Drawing.Size(22, 22);
            this.buttonGoFirst.TabIndex = 27;
            this.toolTip.SetToolTip(this.buttonGoFirst, "Go first");
            this.buttonGoFirst.UseVisualStyleBackColor = true;
            this.buttonGoFirst.Click += new System.EventHandler(this.buttonGoFirst_Click);
            // 
            // buttonStop
            // 
            this.buttonStop.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonStop.AutoSize = true;
            this.buttonStop.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonStop.Enabled = false;
            this.buttonStop.FlatAppearance.BorderSize = 0;
            this.buttonStop.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonStop.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.Stop;
            this.buttonStop.Location = new System.Drawing.Point(89, 19);
            this.buttonStop.Name = "buttonStop";
            this.buttonStop.Size = new System.Drawing.Size(30, 30);
            this.buttonStop.TabIndex = 18;
            this.toolTip.SetToolTip(this.buttonStop, "Stop experiment");
            this.buttonStop.UseVisualStyleBackColor = true;
            this.buttonStop.Click += new System.EventHandler(this.buttonStop_Click);
            // 
            // buttonSetUp
            // 
            this.buttonSetUp.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonSetUp.AutoSize = true;
            this.buttonSetUp.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonSetUp.Enabled = false;
            this.buttonSetUp.FlatAppearance.BorderSize = 0;
            this.buttonSetUp.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonSetUp.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.settings_outline;
            this.buttonSetUp.Location = new System.Drawing.Point(5, 19);
            this.buttonSetUp.Name = "buttonSetUp";
            this.buttonSetUp.Size = new System.Drawing.Size(30, 30);
            this.buttonSetUp.TabIndex = 16;
            this.toolTip.SetToolTip(this.buttonSetUp, "Setup parameters");
            this.buttonSetUp.UseVisualStyleBackColor = true;
            this.buttonSetUp.Click += new System.EventHandler(this.buttonSetUp_Click);
            // 
            // buttonGoNext
            // 
            this.buttonGoNext.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonGoNext.AutoSize = true;
            this.buttonGoNext.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonGoNext.Enabled = false;
            this.buttonGoNext.FlatAppearance.BorderSize = 0;
            this.buttonGoNext.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonGoNext.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.arrow_right_bold_box_outline;
            this.buttonGoNext.Location = new System.Drawing.Point(81, 124);
            this.buttonGoNext.Name = "buttonGoNext";
            this.buttonGoNext.Size = new System.Drawing.Size(22, 22);
            this.buttonGoNext.TabIndex = 29;
            this.toolTip.SetToolTip(this.buttonGoNext, "Go next");
            this.buttonGoNext.UseVisualStyleBackColor = true;
            this.buttonGoNext.Click += new System.EventHandler(this.buttonGoNext_Click);
            // 
            // buttonGoPrevious
            // 
            this.buttonGoPrevious.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonGoPrevious.AutoSize = true;
            this.buttonGoPrevious.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonGoPrevious.Enabled = false;
            this.buttonGoPrevious.FlatAppearance.BorderSize = 0;
            this.buttonGoPrevious.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonGoPrevious.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.arrow_left_bold_box_outline;
            this.buttonGoPrevious.Location = new System.Drawing.Point(55, 124);
            this.buttonGoPrevious.Name = "buttonGoPrevious";
            this.buttonGoPrevious.Size = new System.Drawing.Size(22, 22);
            this.buttonGoPrevious.TabIndex = 28;
            this.toolTip.SetToolTip(this.buttonGoPrevious, "Go previous");
            this.buttonGoPrevious.UseVisualStyleBackColor = true;
            this.buttonGoPrevious.Click += new System.EventHandler(this.buttonGoPrevious_Click);
            // 
            // buttonStart
            // 
            this.buttonStart.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonStart.AutoSize = true;
            this.buttonStart.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonStart.Enabled = false;
            this.buttonStart.FlatAppearance.BorderSize = 0;
            this.buttonStart.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonStart.Image = global::ZiveLab.Device.ZIM.Win.Properties.Resources.Play;
            this.buttonStart.Location = new System.Drawing.Point(127, 19);
            this.buttonStart.Name = "buttonStart";
            this.buttonStart.Size = new System.Drawing.Size(30, 30);
            this.buttonStart.TabIndex = 17;
            this.toolTip.SetToolTip(this.buttonStart, "Start experiment");
            this.buttonStart.UseVisualStyleBackColor = true;
            this.buttonStart.CheckedChanged += new System.EventHandler(this.buttonStart_CheckedChanged);
            this.buttonStart.Click += new System.EventHandler(this.buttonStart_Click);
            // 
            // panelCooker
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.buttonRefreshVac);
            this.Controls.Add(this.buttonRefresh);
            this.Controls.Add(this.buttonGoLast);
            this.Controls.Add(this.buttonGoFirst);
            this.Controls.Add(this.labelUnitZPhase);
            this.Controls.Add(this.labelElapsedTime);
            this.Controls.Add(this.labelZphase);
            this.Controls.Add(this.labelUnitZmag);
            this.Controls.Add(this.labelZmag);
            this.Controls.Add(this.labelFrequency);
            this.Controls.Add(this.buttonStop);
            this.Controls.Add(this.buttonSetUp);
            this.Controls.Add(this.buttonGoNext);
            this.Controls.Add(this.buttonGoPrevious);
            this.Controls.Add(this.buttonStart);
            this.Controls.Add(this.progressBar);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "panelCooker";
            this.Size = new System.Drawing.Size(320, 169);
            this.Load += new System.EventHandler(this.panelCooker_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox buttonGoLast;
        private System.Windows.Forms.CheckBox buttonGoFirst;
        private System.Windows.Forms.Label labelUnitZPhase;
        private System.Windows.Forms.Label labelElapsedTime;
        private System.Windows.Forms.Label labelZphase;
        private System.Windows.Forms.Label labelUnitZmag;
        private System.Windows.Forms.Label labelZmag;
        private System.Windows.Forms.Label labelFrequency;
        private System.Windows.Forms.CheckBox buttonStop;
        private System.Windows.Forms.CheckBox buttonSetUp;
        private System.Windows.Forms.CheckBox buttonGoNext;
        private System.Windows.Forms.CheckBox buttonGoPrevious;
        private System.Windows.Forms.CheckBox buttonStart;
        private System.Windows.Forms.ProgressBar progressBar;
        private System.Windows.Forms.CheckBox buttonRefresh;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.CheckBox buttonRefreshVac;
    }
}
