namespace ZiveLab.ZM
{
    partial class frmSetOption
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
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnOk = new System.Windows.Forms.Button();
            this.tvCol = new System.Windows.Forms.TreeView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnColItemDn = new System.Windows.Forms.Button();
            this.btnColItemUp = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.btnCancel.Location = new System.Drawing.Point(255, 376);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 31);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOk
            // 
            this.btnOk.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnOk.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOk.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.btnOk.Location = new System.Drawing.Point(255, 327);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(75, 31);
            this.btnOk.TabIndex = 2;
            this.btnOk.Text = "OK";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // tvCol
            // 
            this.tvCol.CheckBoxes = true;
            this.tvCol.FullRowSelect = true;
            this.tvCol.HideSelection = false;
            this.tvCol.Location = new System.Drawing.Point(11, 23);
            this.tvCol.Name = "tvCol";
            this.tvCol.ShowLines = false;
            this.tvCol.ShowPlusMinus = false;
            this.tvCol.ShowRootLines = false;
            this.tvCol.Size = new System.Drawing.Size(198, 335);
            this.tvCol.TabIndex = 1;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnColItemDn);
            this.groupBox1.Controls.Add(this.btnColItemUp);
            this.groupBox1.Controls.Add(this.tvCol);
            this.groupBox1.Location = new System.Drawing.Point(12, 14);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(226, 402);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "[ Select the type of data ]";
            // 
            // btnColItemDn
            // 
            this.btnColItemDn.Enabled = false;
            this.btnColItemDn.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.btnColItemDn.Location = new System.Drawing.Point(132, 366);
            this.btnColItemDn.Name = "btnColItemDn";
            this.btnColItemDn.Size = new System.Drawing.Size(76, 27);
            this.btnColItemDn.TabIndex = 2;
            this.btnColItemDn.Text = "Down";
            this.btnColItemDn.UseVisualStyleBackColor = true;
            this.btnColItemDn.Click += new System.EventHandler(this.btnColItemDn_Click);
            // 
            // btnColItemUp
            // 
            this.btnColItemUp.Enabled = false;
            this.btnColItemUp.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.btnColItemUp.Location = new System.Drawing.Point(10, 366);
            this.btnColItemUp.Name = "btnColItemUp";
            this.btnColItemUp.Size = new System.Drawing.Size(76, 27);
            this.btnColItemUp.TabIndex = 3;
            this.btnColItemUp.Text = "Up";
            this.btnColItemUp.UseVisualStyleBackColor = true;
            this.btnColItemUp.Click += new System.EventHandler(this.btnColItemUp_Click);
            // 
            // frmSetOption
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(346, 423);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOk);
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSetOption";
            this.Text = "frmSetOption";
            this.Load += new System.EventHandler(this.frmSetOption_Load);
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnColItemDn;
        private System.Windows.Forms.Button btnColItemUp;
        private System.Windows.Forms.TreeView tvCol;
    }
}