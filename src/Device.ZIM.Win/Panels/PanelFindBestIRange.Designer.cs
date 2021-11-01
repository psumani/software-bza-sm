namespace ZiveLab.Device.ZIM.Win.Panels
{
    partial class PanelFindBestIRange
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
            this.cbSuggestedSNR = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.tbNoiseLevel = new System.Windows.Forms.TextBox();
            this.tbMaxVrms = new System.Windows.Forms.TextBox();
            this.tbExpectedZ = new System.Windows.Forms.TextBox();
            this.parGrid = new System.Windows.Forms.DataGridView();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.parGrid)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // cbSuggestedSNR
            // 
            this.cbSuggestedSNR.Font = new System.Drawing.Font("Consolas", 12F);
            this.cbSuggestedSNR.FormattingEnabled = true;
            this.cbSuggestedSNR.ItemHeight = 19;
            this.cbSuggestedSNR.Location = new System.Drawing.Point(215, 139);
            this.cbSuggestedSNR.Name = "cbSuggestedSNR";
            this.cbSuggestedSNR.Size = new System.Drawing.Size(100, 27);
            this.cbSuggestedSNR.TabIndex = 12;
            this.cbSuggestedSNR.SelectionChangeCommitted += new System.EventHandler(this.cbSuggestedSNR_SelectionChangeCommitted);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Consolas", 12F);
            this.label5.Location = new System.Drawing.Point(322, 143);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(27, 19);
            this.label5.TabIndex = 13;
            this.label5.Text = "dB";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Consolas", 12F);
            this.label6.Location = new System.Drawing.Point(322, 107);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(54, 19);
            this.label6.TabIndex = 10;
            this.label6.Text = "uVrms";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Consolas", 12F);
            this.label7.Location = new System.Drawing.Point(322, 71);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(54, 19);
            this.label7.TabIndex = 7;
            this.label7.Text = "mVrms";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Consolas", 12F);
            this.label8.Location = new System.Drawing.Point(322, 35);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(27, 19);
            this.label8.TabIndex = 4;
            this.label8.Text = "mΩ";
            // 
            // tbNoiseLevel
            // 
            this.tbNoiseLevel.Enabled = false;
            this.tbNoiseLevel.Font = new System.Drawing.Font("Consolas", 12F);
            this.tbNoiseLevel.Location = new System.Drawing.Point(215, 103);
            this.tbNoiseLevel.Name = "tbNoiseLevel";
            this.tbNoiseLevel.Size = new System.Drawing.Size(100, 26);
            this.tbNoiseLevel.TabIndex = 9;
            this.tbNoiseLevel.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbMaxVrms
            // 
            this.tbMaxVrms.Font = new System.Drawing.Font("Consolas", 12F);
            this.tbMaxVrms.Location = new System.Drawing.Point(215, 66);
            this.tbMaxVrms.Name = "tbMaxVrms";
            this.tbMaxVrms.Size = new System.Drawing.Size(100, 26);
            this.tbMaxVrms.TabIndex = 6;
            this.tbMaxVrms.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.tbMaxVrms.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbMaxVrms_KeyDown);
            this.tbMaxVrms.Leave += new System.EventHandler(this.tbMaxVrms_Leave);
            // 
            // tbExpectedZ
            // 
            this.tbExpectedZ.Font = new System.Drawing.Font("Consolas", 12F);
            this.tbExpectedZ.Location = new System.Drawing.Point(215, 30);
            this.tbExpectedZ.Name = "tbExpectedZ";
            this.tbExpectedZ.Size = new System.Drawing.Size(100, 26);
            this.tbExpectedZ.TabIndex = 3;
            this.tbExpectedZ.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.tbExpectedZ.KeyDown += new System.Windows.Forms.KeyEventHandler(this.tbExpectedZ_KeyDown);
            this.tbExpectedZ.Leave += new System.EventHandler(this.tbExpectedZ_Leave);
            // 
            // parGrid
            // 
            this.parGrid.AllowUserToAddRows = false;
            this.parGrid.AllowUserToDeleteRows = false;
            this.parGrid.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.ColumnHeader;
            this.parGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.parGrid.Enabled = false;
            this.parGrid.Location = new System.Drawing.Point(15, 229);
            this.parGrid.MultiSelect = false;
            this.parGrid.Name = "parGrid";
            this.parGrid.ReadOnly = true;
            this.parGrid.RowHeadersVisible = false;
            this.parGrid.RowTemplate.Height = 23;
            this.parGrid.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.parGrid.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.parGrid.Size = new System.Drawing.Size(420, 240);
            this.parGrid.TabIndex = 1;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Consolas", 12F);
            this.label4.Location = new System.Drawing.Point(39, 143);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(126, 19);
            this.label4.TabIndex = 11;
            this.label4.Text = "Requested SNR";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Consolas", 12F);
            this.label3.Location = new System.Drawing.Point(39, 107);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(108, 19);
            this.label3.TabIndex = 8;
            this.label3.Text = "Noise level";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Consolas", 12F);
            this.label2.Location = new System.Drawing.Point(39, 71);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(162, 19);
            this.label2.TabIndex = 5;
            this.label2.Text = "Max linear region";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Consolas", 12F);
            this.label1.Location = new System.Drawing.Point(39, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(171, 19);
            this.label1.TabIndex = 2;
            this.label1.Text = "Expected impedance";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.cbSuggestedSNR);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.tbExpectedZ);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.tbMaxVrms);
            this.groupBox1.Controls.Add(this.tbNoiseLevel);
            this.groupBox1.Location = new System.Drawing.Point(15, 17);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(420, 191);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            // 
            // PanelFindBestIRange
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.parGrid);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "PanelFindBestIRange";
            this.Size = new System.Drawing.Size(451, 489);
            this.Load += new System.EventHandler(this.PanelFindBestIRange_Load);
            ((System.ComponentModel.ISupportInitialize)(this.parGrid)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox cbSuggestedSNR;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox tbNoiseLevel;
        private System.Windows.Forms.TextBox tbMaxVrms;
        private System.Windows.Forms.TextBox tbExpectedZ;
        private System.Windows.Forms.DataGridView parGrid;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}
