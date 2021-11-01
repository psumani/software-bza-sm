namespace Device.ZIM.Win
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
            this.groupBoxCooker = new System.Windows.Forms.GroupBox();
            this.cbMenu = new System.Windows.Forms.CheckBox();
            this.labelUnitZPhase = new System.Windows.Forms.Label();
            this.labelElapsedTime = new System.Windows.Forms.Label();
            this.labelZphase = new System.Windows.Forms.Label();
            this.labelUnitZmag = new System.Windows.Forms.Label();
            this.labelZmag = new System.Windows.Forms.Label();
            this.labelFrequency = new System.Windows.Forms.Label();
            this.buttonStop = new System.Windows.Forms.CheckBox();
            this.buttonSetUp = new System.Windows.Forms.CheckBox();
            this.buttonNext = new System.Windows.Forms.CheckBox();
            this.buttonPrevious = new System.Windows.Forms.CheckBox();
            this.buttonStart = new System.Windows.Forms.CheckBox();
            this.progressBar = new System.Windows.Forms.ProgressBar();
            this.groupBoxRangesAndAux = new System.Windows.Forms.GroupBox();
            this.labelUnitAuxTemperature = new System.Windows.Forms.Label();
            this.labelUnitAuxVoltage = new System.Windows.Forms.Label();
            this.labelIRange = new System.Windows.Forms.Label();
            this.labelVRange = new System.Windows.Forms.Label();
            this.labelAuxTemperature = new System.Windows.Forms.Label();
            this.labelAuxVoltage = new System.Windows.Forms.Label();
            this.groupBoxNoiseLevel = new System.Windows.Forms.GroupBox();
            this.labelUnitNoiseI = new System.Windows.Forms.Label();
            this.labelUnitNoiseV = new System.Windows.Forms.Label();
            this.buttonFindBestIRange = new System.Windows.Forms.CheckBox();
            this.labelNoiseCurrent = new System.Windows.Forms.Label();
            this.labelNoiseVoltage = new System.Windows.Forms.Label();
            this.buttonMeasureNoise = new System.Windows.Forms.CheckBox();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.flowLayoutPanel = new System.Windows.Forms.FlowLayoutPanel();
            this.groupBoxCooker.SuspendLayout();
            this.groupBoxRangesAndAux.SuspendLayout();
            this.groupBoxNoiseLevel.SuspendLayout();
            this.flowLayoutPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxCooker
            // 
            this.groupBoxCooker.Controls.Add(this.cbMenu);
            this.groupBoxCooker.Controls.Add(this.labelUnitZPhase);
            this.groupBoxCooker.Controls.Add(this.labelElapsedTime);
            this.groupBoxCooker.Controls.Add(this.labelZphase);
            this.groupBoxCooker.Controls.Add(this.labelUnitZmag);
            this.groupBoxCooker.Controls.Add(this.labelZmag);
            this.groupBoxCooker.Controls.Add(this.labelFrequency);
            this.groupBoxCooker.Controls.Add(this.buttonStop);
            this.groupBoxCooker.Controls.Add(this.buttonSetUp);
            this.groupBoxCooker.Controls.Add(this.buttonNext);
            this.groupBoxCooker.Controls.Add(this.buttonPrevious);
            this.groupBoxCooker.Controls.Add(this.buttonStart);
            this.groupBoxCooker.Controls.Add(this.progressBar);
            this.groupBoxCooker.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Bold);
            this.groupBoxCooker.Location = new System.Drawing.Point(8, 8);
            this.groupBoxCooker.Name = "groupBoxCooker";
            this.groupBoxCooker.Size = new System.Drawing.Size(320, 152);
            this.groupBoxCooker.TabIndex = 0;
            this.groupBoxCooker.TabStop = false;
            this.groupBoxCooker.Text = "EIS";
            // 
            // cbMenu
            // 
            this.cbMenu.Appearance = System.Windows.Forms.Appearance.Button;
            this.cbMenu.AutoSize = true;
            this.cbMenu.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.cbMenu.Cursor = System.Windows.Forms.Cursors.Default;
            this.cbMenu.FlatAppearance.BorderSize = 0;
            this.cbMenu.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cbMenu.Font = new System.Drawing.Font("Consolas", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbMenu.Location = new System.Drawing.Point(14, 23);
            this.cbMenu.Name = "cbMenu";
            this.cbMenu.Size = new System.Drawing.Size(26, 34);
            this.cbMenu.TabIndex = 1;
            this.cbMenu.Text = "⋮";
            this.cbMenu.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.toolTip.SetToolTip(this.cbMenu, "Menu");
            this.cbMenu.UseVisualStyleBackColor = true;
            this.cbMenu.MouseClick += new System.Windows.Forms.MouseEventHandler(this.cbMenu_MouseClick);
            // 
            // labelUnitZPhase
            // 
            this.labelUnitZPhase.AutoSize = true;
            this.labelUnitZPhase.Font = new System.Drawing.Font("Consolas", 18F);
            this.labelUnitZPhase.Location = new System.Drawing.Point(279, 110);
            this.labelUnitZPhase.Name = "labelUnitZPhase";
            this.labelUnitZPhase.Size = new System.Drawing.Size(25, 28);
            this.labelUnitZPhase.TabIndex = 11;
            this.labelUnitZPhase.Text = "°";
            this.labelUnitZPhase.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelElapsedTime
            // 
            this.labelElapsedTime.Font = new System.Drawing.Font("Consolas", 9F);
            this.labelElapsedTime.ForeColor = System.Drawing.SystemColors.ControlText;
            this.labelElapsedTime.Location = new System.Drawing.Point(168, 21);
            this.labelElapsedTime.Name = "labelElapsedTime";
            this.labelElapsedTime.Size = new System.Drawing.Size(143, 17);
            this.labelElapsedTime.TabIndex = 5;
            this.labelElapsedTime.Text = "00:00:00";
            this.labelElapsedTime.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.toolTip.SetToolTip(this.labelElapsedTime, "Elapsed Time");
            // 
            // labelZphase
            // 
            this.labelZphase.Font = new System.Drawing.Font("Consolas", 18F);
            this.labelZphase.Location = new System.Drawing.Point(146, 107);
            this.labelZphase.Name = "labelZphase";
            this.labelZphase.Size = new System.Drawing.Size(127, 34);
            this.labelZphase.TabIndex = 10;
            this.labelZphase.Text = "27.3";
            this.labelZphase.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.toolTip.SetToolTip(this.labelZphase, "Phase of measured impedance");
            // 
            // labelUnitZmag
            // 
            this.labelUnitZmag.AutoSize = true;
            this.labelUnitZmag.Font = new System.Drawing.Font("Consolas", 18F);
            this.labelUnitZmag.Location = new System.Drawing.Point(279, 73);
            this.labelUnitZmag.Name = "labelUnitZmag";
            this.labelUnitZmag.Size = new System.Drawing.Size(38, 28);
            this.labelUnitZmag.TabIndex = 9;
            this.labelUnitZmag.Text = "mΩ";
            this.labelUnitZmag.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelZmag
            // 
            this.labelZmag.Font = new System.Drawing.Font("Consolas", 18F);
            this.labelZmag.Location = new System.Drawing.Point(146, 68);
            this.labelZmag.Name = "labelZmag";
            this.labelZmag.Size = new System.Drawing.Size(127, 39);
            this.labelZmag.TabIndex = 8;
            this.labelZmag.Text = "3.2";
            this.labelZmag.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.toolTip.SetToolTip(this.labelZmag, "Magnitude of measured impedance");
            // 
            // labelFrequency
            // 
            this.labelFrequency.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelFrequency.Location = new System.Drawing.Point(13, 74);
            this.labelFrequency.Name = "labelFrequency";
            this.labelFrequency.Size = new System.Drawing.Size(123, 27);
            this.labelFrequency.TabIndex = 7;
            this.labelFrequency.Text = "1000.00 Hz";
            this.toolTip.SetToolTip(this.labelFrequency, "Frequency");
            // 
            // buttonStop
            // 
            this.buttonStop.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonStop.AutoSize = true;
            this.buttonStop.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonStop.FlatAppearance.BorderSize = 0;
            this.buttonStop.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonStop.Location = new System.Drawing.Point(124, 19);
            this.buttonStop.Name = "buttonStop";
            this.buttonStop.Size = new System.Drawing.Size(38, 38);
            this.buttonStop.TabIndex = 4;
            this.toolTip.SetToolTip(this.buttonStop, "Stop experiment");
            this.buttonStop.UseVisualStyleBackColor = true;
            this.buttonStop.Click += new System.EventHandler(this.buttonStop_Click);
            // 
            // buttonSetUp
            // 
            this.buttonSetUp.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonSetUp.AutoSize = true;
            this.buttonSetUp.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonSetUp.FlatAppearance.BorderSize = 0;
            this.buttonSetUp.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonSetUp.Location = new System.Drawing.Point(40, 19);
            this.buttonSetUp.Name = "buttonSetUp";
            this.buttonSetUp.Size = new System.Drawing.Size(38, 38);
            this.buttonSetUp.TabIndex = 2;
            this.toolTip.SetToolTip(this.buttonSetUp, "Configure settings...");
            this.buttonSetUp.UseVisualStyleBackColor = true;
            this.buttonSetUp.Click += new System.EventHandler(this.buttonSetUp_Click);
            // 
            // buttonNext
            // 
            this.buttonNext.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonNext.AutoSize = true;
            this.buttonNext.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonNext.FlatAppearance.BorderSize = 0;
            this.buttonNext.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonNext.Location = new System.Drawing.Point(50, 109);
            this.buttonNext.Name = "buttonNext";
            this.buttonNext.Size = new System.Drawing.Size(30, 30);
            this.buttonNext.TabIndex = 13;
            this.buttonNext.UseVisualStyleBackColor = true;
            this.buttonNext.Click += new System.EventHandler(this.buttonNext_Click);
            // 
            // buttonPrevious
            // 
            this.buttonPrevious.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonPrevious.AutoSize = true;
            this.buttonPrevious.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonPrevious.FlatAppearance.BorderSize = 0;
            this.buttonPrevious.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonPrevious.Location = new System.Drawing.Point(14, 109);
            this.buttonPrevious.Name = "buttonPrevious";
            this.buttonPrevious.Size = new System.Drawing.Size(30, 30);
            this.buttonPrevious.TabIndex = 12;
            this.buttonPrevious.UseVisualStyleBackColor = true;
            this.buttonPrevious.Click += new System.EventHandler(this.buttonPrevious_Click);
            // 
            // buttonStart
            // 
            this.buttonStart.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonStart.AutoSize = true;
            this.buttonStart.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonStart.FlatAppearance.BorderSize = 0;
            this.buttonStart.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonStart.Location = new System.Drawing.Point(82, 19);
            this.buttonStart.Name = "buttonStart";
            this.buttonStart.Size = new System.Drawing.Size(38, 38);
            this.buttonStart.TabIndex = 3;
            this.toolTip.SetToolTip(this.buttonStart, "Start experiment");
            this.buttonStart.UseVisualStyleBackColor = true;
            this.buttonStart.Click += new System.EventHandler(this.buttonStart_Click);
            // 
            // progressBar
            // 
            this.progressBar.Location = new System.Drawing.Point(200, 42);
            this.progressBar.Name = "progressBar";
            this.progressBar.Size = new System.Drawing.Size(110, 10);
            this.progressBar.TabIndex = 6;
            this.progressBar.Value = 50;
            // 
            // groupBoxRangesAndAux
            // 
            this.groupBoxRangesAndAux.Controls.Add(this.labelUnitAuxTemperature);
            this.groupBoxRangesAndAux.Controls.Add(this.labelUnitAuxVoltage);
            this.groupBoxRangesAndAux.Controls.Add(this.labelIRange);
            this.groupBoxRangesAndAux.Controls.Add(this.labelVRange);
            this.groupBoxRangesAndAux.Controls.Add(this.labelAuxTemperature);
            this.groupBoxRangesAndAux.Controls.Add(this.labelAuxVoltage);
            this.groupBoxRangesAndAux.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Bold);
            this.groupBoxRangesAndAux.Location = new System.Drawing.Point(8, 166);
            this.groupBoxRangesAndAux.Name = "groupBoxRangesAndAux";
            this.groupBoxRangesAndAux.Size = new System.Drawing.Size(320, 100);
            this.groupBoxRangesAndAux.TabIndex = 5;
            this.groupBoxRangesAndAux.TabStop = false;
            this.groupBoxRangesAndAux.Text = "Ranges and Auxiliaries";
            // 
            // labelUnitAuxTemperature
            // 
            this.labelUnitAuxTemperature.AutoSize = true;
            this.labelUnitAuxTemperature.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelUnitAuxTemperature.Location = new System.Drawing.Point(279, 59);
            this.labelUnitAuxTemperature.Name = "labelUnitAuxTemperature";
            this.labelUnitAuxTemperature.Size = new System.Drawing.Size(32, 23);
            this.labelUnitAuxTemperature.TabIndex = 19;
            this.labelUnitAuxTemperature.Text = "°C";
            this.labelUnitAuxTemperature.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelUnitAuxVoltage
            // 
            this.labelUnitAuxVoltage.AutoSize = true;
            this.labelUnitAuxVoltage.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelUnitAuxVoltage.Location = new System.Drawing.Point(279, 29);
            this.labelUnitAuxVoltage.Name = "labelUnitAuxVoltage";
            this.labelUnitAuxVoltage.Size = new System.Drawing.Size(21, 23);
            this.labelUnitAuxVoltage.TabIndex = 17;
            this.labelUnitAuxVoltage.Text = "V";
            this.labelUnitAuxVoltage.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelIRange
            // 
            this.labelIRange.Font = new System.Drawing.Font("Consolas", 10F);
            this.labelIRange.Location = new System.Drawing.Point(13, 59);
            this.labelIRange.Name = "labelIRange";
            this.labelIRange.Size = new System.Drawing.Size(113, 16);
            this.labelIRange.TabIndex = 15;
            this.labelIRange.Text = "2A Range";
            this.labelIRange.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.toolTip.SetToolTip(this.labelIRange, "Current Range");
            // 
            // labelVRange
            // 
            this.labelVRange.Font = new System.Drawing.Font("Consolas", 10F);
            this.labelVRange.Location = new System.Drawing.Point(13, 29);
            this.labelVRange.Name = "labelVRange";
            this.labelVRange.Size = new System.Drawing.Size(113, 16);
            this.labelVRange.TabIndex = 14;
            this.labelVRange.Text = "1000 V Range";
            this.labelVRange.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.toolTip.SetToolTip(this.labelVRange, "Range of Vdc");
            // 
            // labelAuxTemperature
            // 
            this.labelAuxTemperature.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelAuxTemperature.Location = new System.Drawing.Point(146, 59);
            this.labelAuxTemperature.Name = "labelAuxTemperature";
            this.labelAuxTemperature.Size = new System.Drawing.Size(127, 24);
            this.labelAuxTemperature.TabIndex = 18;
            this.labelAuxTemperature.Text = "25.000";
            this.labelAuxTemperature.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.toolTip.SetToolTip(this.labelAuxTemperature, "Temperature");
            // 
            // labelAuxVoltage
            // 
            this.labelAuxVoltage.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelAuxVoltage.Location = new System.Drawing.Point(146, 29);
            this.labelAuxVoltage.Name = "labelAuxVoltage";
            this.labelAuxVoltage.Size = new System.Drawing.Size(127, 24);
            this.labelAuxVoltage.TabIndex = 16;
            this.labelAuxVoltage.Text = "28.123";
            this.labelAuxVoltage.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.toolTip.SetToolTip(this.labelAuxVoltage, "Battery voltage");
            // 
            // groupBoxNoiseLevel
            // 
            this.groupBoxNoiseLevel.BackColor = System.Drawing.SystemColors.Control;
            this.groupBoxNoiseLevel.Controls.Add(this.labelUnitNoiseI);
            this.groupBoxNoiseLevel.Controls.Add(this.labelUnitNoiseV);
            this.groupBoxNoiseLevel.Controls.Add(this.buttonFindBestIRange);
            this.groupBoxNoiseLevel.Controls.Add(this.labelNoiseCurrent);
            this.groupBoxNoiseLevel.Controls.Add(this.labelNoiseVoltage);
            this.groupBoxNoiseLevel.Controls.Add(this.buttonMeasureNoise);
            this.groupBoxNoiseLevel.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Bold);
            this.groupBoxNoiseLevel.Location = new System.Drawing.Point(8, 272);
            this.groupBoxNoiseLevel.Name = "groupBoxNoiseLevel";
            this.groupBoxNoiseLevel.Size = new System.Drawing.Size(320, 100);
            this.groupBoxNoiseLevel.TabIndex = 6;
            this.groupBoxNoiseLevel.TabStop = false;
            this.groupBoxNoiseLevel.Text = "Noise Level";
            // 
            // labelUnitNoiseI
            // 
            this.labelUnitNoiseI.AutoSize = true;
            this.labelUnitNoiseI.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelUnitNoiseI.Location = new System.Drawing.Point(251, 60);
            this.labelUnitNoiseI.Name = "labelUnitNoiseI";
            this.labelUnitNoiseI.Size = new System.Drawing.Size(65, 23);
            this.labelUnitNoiseI.TabIndex = 25;
            this.labelUnitNoiseI.Text = "uArms";
            this.labelUnitNoiseI.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labelUnitNoiseV
            // 
            this.labelUnitNoiseV.AutoSize = true;
            this.labelUnitNoiseV.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelUnitNoiseV.Location = new System.Drawing.Point(251, 25);
            this.labelUnitNoiseV.Name = "labelUnitNoiseV";
            this.labelUnitNoiseV.Size = new System.Drawing.Size(65, 23);
            this.labelUnitNoiseV.TabIndex = 23;
            this.labelUnitNoiseV.Text = "uVrms";
            this.labelUnitNoiseV.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // buttonFindBestIRange
            // 
            this.buttonFindBestIRange.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonFindBestIRange.AutoSize = true;
            this.buttonFindBestIRange.FlatAppearance.BorderSize = 0;
            this.buttonFindBestIRange.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonFindBestIRange.Location = new System.Drawing.Point(14, 63);
            this.buttonFindBestIRange.Name = "buttonFindBestIRange";
            this.buttonFindBestIRange.Size = new System.Drawing.Size(94, 24);
            this.buttonFindBestIRange.TabIndex = 21;
            this.buttonFindBestIRange.Text = "Find IRange";
            this.buttonFindBestIRange.UseVisualStyleBackColor = true;
            this.buttonFindBestIRange.Click += new System.EventHandler(this.buttonFindBestIRange_Click);
            // 
            // labelNoiseCurrent
            // 
            this.labelNoiseCurrent.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelNoiseCurrent.Location = new System.Drawing.Point(118, 60);
            this.labelNoiseCurrent.Name = "labelNoiseCurrent";
            this.labelNoiseCurrent.Size = new System.Drawing.Size(127, 24);
            this.labelNoiseCurrent.TabIndex = 24;
            this.labelNoiseCurrent.Text = "10.000";
            this.labelNoiseCurrent.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.toolTip.SetToolTip(this.labelNoiseCurrent, "RMS value of current noise");
            // 
            // labelNoiseVoltage
            // 
            this.labelNoiseVoltage.Font = new System.Drawing.Font("Consolas", 15F);
            this.labelNoiseVoltage.Location = new System.Drawing.Point(118, 25);
            this.labelNoiseVoltage.Name = "labelNoiseVoltage";
            this.labelNoiseVoltage.Size = new System.Drawing.Size(127, 24);
            this.labelNoiseVoltage.TabIndex = 22;
            this.labelNoiseVoltage.Text = "7.000";
            this.labelNoiseVoltage.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.toolTip.SetToolTip(this.labelNoiseVoltage, "RMS value of voltage noise");
            // 
            // buttonMeasureNoise
            // 
            this.buttonMeasureNoise.Appearance = System.Windows.Forms.Appearance.Button;
            this.buttonMeasureNoise.AutoSize = true;
            this.buttonMeasureNoise.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.buttonMeasureNoise.FlatAppearance.BorderSize = 0;
            this.buttonMeasureNoise.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.buttonMeasureNoise.Location = new System.Drawing.Point(14, 22);
            this.buttonMeasureNoise.Name = "buttonMeasureNoise";
            this.buttonMeasureNoise.Size = new System.Drawing.Size(38, 38);
            this.buttonMeasureNoise.TabIndex = 20;
            this.toolTip.SetToolTip(this.buttonMeasureNoise, "Measure noise level");
            this.buttonMeasureNoise.UseVisualStyleBackColor = true;
            this.buttonMeasureNoise.Click += new System.EventHandler(this.buttonMeasureNoiseLevel_Click);
            // 
            // flowLayoutPanel
            // 
            this.flowLayoutPanel.Controls.Add(this.groupBoxCooker);
            this.flowLayoutPanel.Controls.Add(this.groupBoxRangesAndAux);
            this.flowLayoutPanel.Controls.Add(this.groupBoxNoiseLevel);
            this.flowLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flowLayoutPanel.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.flowLayoutPanel.Location = new System.Drawing.Point(0, 0);
            this.flowLayoutPanel.MinimumSize = new System.Drawing.Size(340, 390);
            this.flowLayoutPanel.Name = "flowLayoutPanel";
            this.flowLayoutPanel.Padding = new System.Windows.Forms.Padding(5);
            this.flowLayoutPanel.Size = new System.Drawing.Size(340, 648);
            this.flowLayoutPanel.TabIndex = 7;
            // 
            // StatusPanel
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.flowLayoutPanel);
            this.DoubleBuffered = true;
            this.Name = "StatusPanel";
            this.Size = new System.Drawing.Size(338, 648);
            this.groupBoxCooker.ResumeLayout(false);
            this.groupBoxCooker.PerformLayout();
            this.groupBoxRangesAndAux.ResumeLayout(false);
            this.groupBoxRangesAndAux.PerformLayout();
            this.groupBoxNoiseLevel.ResumeLayout(false);
            this.groupBoxNoiseLevel.PerformLayout();
            this.flowLayoutPanel.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBoxCooker;
        private System.Windows.Forms.ProgressBar progressBar;
        private System.Windows.Forms.CheckBox buttonStop;
        private System.Windows.Forms.CheckBox buttonStart;
        private System.Windows.Forms.CheckBox buttonSetUp;
        private System.Windows.Forms.GroupBox groupBoxRangesAndAux;
        private System.Windows.Forms.GroupBox groupBoxNoiseLevel;
        private System.Windows.Forms.CheckBox buttonMeasureNoise;
        private System.Windows.Forms.Label labelZmag;
        private System.Windows.Forms.Label labelFrequency;
        private System.Windows.Forms.Label labelZphase;
        private System.Windows.Forms.Label labelAuxTemperature;
        private System.Windows.Forms.Label labelAuxVoltage;
        private System.Windows.Forms.Label labelVRange;
        private System.Windows.Forms.Label labelNoiseCurrent;
        private System.Windows.Forms.Label labelNoiseVoltage;
        private System.Windows.Forms.Label labelIRange;
        private System.Windows.Forms.Label labelElapsedTime;
        private System.Windows.Forms.CheckBox buttonFindBestIRange;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.CheckBox buttonNext;
        private System.Windows.Forms.CheckBox buttonPrevious;
        private System.Windows.Forms.Label labelUnitZPhase;
        private System.Windows.Forms.Label labelUnitZmag;
        private System.Windows.Forms.Label labelUnitAuxTemperature;
        private System.Windows.Forms.Label labelUnitAuxVoltage;
        private System.Windows.Forms.Label labelUnitNoiseI;
        private System.Windows.Forms.Label labelUnitNoiseV;
        private System.Windows.Forms.CheckBox cbMenu;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel;
    }
}
