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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSetOption));
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
            resources.ApplyResources(this.btnCancel, "btnCancel");
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOk
            // 
            resources.ApplyResources(this.btnOk, "btnOk");
            this.btnOk.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOk.Name = "btnOk";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // tvCol
            // 
            resources.ApplyResources(this.tvCol, "tvCol");
            this.tvCol.CheckBoxes = true;
            this.tvCol.FullRowSelect = true;
            this.tvCol.HideSelection = false;
            this.tvCol.Name = "tvCol";
            this.tvCol.ShowLines = false;
            this.tvCol.ShowPlusMinus = false;
            this.tvCol.ShowRootLines = false;
            // 
            // groupBox1
            // 
            resources.ApplyResources(this.groupBox1, "groupBox1");
            this.groupBox1.Controls.Add(this.btnColItemDn);
            this.groupBox1.Controls.Add(this.btnColItemUp);
            this.groupBox1.Controls.Add(this.tvCol);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.TabStop = false;
            // 
            // btnColItemDn
            // 
            resources.ApplyResources(this.btnColItemDn, "btnColItemDn");
            this.btnColItemDn.Name = "btnColItemDn";
            this.btnColItemDn.UseVisualStyleBackColor = true;
            this.btnColItemDn.Click += new System.EventHandler(this.btnColItemDn_Click);
            // 
            // btnColItemUp
            // 
            resources.ApplyResources(this.btnColItemUp, "btnColItemUp");
            this.btnColItemUp.Name = "btnColItemUp";
            this.btnColItemUp.UseVisualStyleBackColor = true;
            this.btnColItemUp.Click += new System.EventHandler(this.btnColItemUp_Click);
            // 
            // frmSetOption
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOk);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSetOption";
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