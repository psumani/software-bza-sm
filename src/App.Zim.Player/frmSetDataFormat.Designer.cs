namespace App.Zim.Player
{
    partial class frmSetDataFormat
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
            this.panSetFormat = new ZiveUniFile.PanelSetDataFormat();
            this.SuspendLayout();
            // 
            // panSetFormat
            // 
            this.panSetFormat.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panSetFormat.Location = new System.Drawing.Point(0, 0);
            this.panSetFormat.Name = "panSetFormat";
            this.panSetFormat.Size = new System.Drawing.Size(961, 601);
            this.panSetFormat.TabIndex = 0;
            // 
            // frmSetDataFormat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(961, 601);
            this.Controls.Add(this.panSetFormat);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "frmSetDataFormat";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Set test data format";
            this.Load += new System.EventHandler(this.frmSetDataFormat_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private ZiveUniFile.PanelSetDataFormat panSetFormat;
    }
}