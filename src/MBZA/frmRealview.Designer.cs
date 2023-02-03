namespace ZiveLab.ZM
{
    partial class frmRealview
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
            this.pan = new System.Windows.Forms.FlowLayoutPanel();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.SuspendLayout();
            // 
            // pan
            // 
            this.pan.AutoScroll = true;
            this.pan.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pan.Location = new System.Drawing.Point(0, 0);
            this.pan.Name = "pan";
            this.pan.Size = new System.Drawing.Size(321, 227);
            this.pan.TabIndex = 0;
            this.pan.SizeChanged += new System.EventHandler(this.pan_SizeChanged);
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // frmRealview
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(321, 227);
            this.Controls.Add(this.pan);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "frmRealview";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Real-time monitor";
            this.Activated += new System.EventHandler(this.frmRealview_Activated);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmRealview_FormClosing);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmRealview_FormClosed);
            this.Load += new System.EventHandler(this.frmRealview_Load);
            this.MdiChildActivate += new System.EventHandler(this.frmRealview_MdiChildActivate);
            this.LocationChanged += new System.EventHandler(this.frmRealview_LocationChanged);
            this.SizeChanged += new System.EventHandler(this.frmRealview_SizeChanged);
            this.Move += new System.EventHandler(this.frmRealview_Move);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.FlowLayoutPanel pan;
        private System.Windows.Forms.Timer timer1;
    }
}