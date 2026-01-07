namespace ZiveLab.ZM.Dataview
{
    partial class ExcelTypeForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ExcelTypeForm));
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnOk = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rbXls = new System.Windows.Forms.RadioButton();
            this.rbXlsx = new System.Windows.Forms.RadioButton();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.rbEIS = new System.Windows.Forms.RadioButton();
            this.rbCycle = new System.Windows.Forms.RadioButton();
            this.rbGeneral = new System.Windows.Forms.RadioButton();
            this.groupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            resources.ApplyResources(this.btnCancel, "btnCancel");
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            // 
            // btnOk
            // 
            resources.ApplyResources(this.btnOk, "btnOk");
            this.btnOk.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOk.Name = "btnOk";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // groupBox1
            // 
            resources.ApplyResources(this.groupBox1, "groupBox1");
            this.groupBox1.Controls.Add(this.rbXls);
            this.groupBox1.Controls.Add(this.rbXlsx);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.TabStop = false;
            // 
            // rbXls
            // 
            resources.ApplyResources(this.rbXls, "rbXls");
            this.rbXls.Name = "rbXls";
            this.rbXls.UseVisualStyleBackColor = true;
            // 
            // rbXlsx
            // 
            resources.ApplyResources(this.rbXlsx, "rbXlsx");
            this.rbXlsx.Checked = true;
            this.rbXlsx.Name = "rbXlsx";
            this.rbXlsx.TabStop = true;
            this.rbXlsx.UseVisualStyleBackColor = true;
            // 
            // groupBox3
            // 
            resources.ApplyResources(this.groupBox3, "groupBox3");
            this.groupBox3.Controls.Add(this.rbEIS);
            this.groupBox3.Controls.Add(this.rbCycle);
            this.groupBox3.Controls.Add(this.rbGeneral);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.TabStop = false;
            // 
            // rbEIS
            // 
            resources.ApplyResources(this.rbEIS, "rbEIS");
            this.rbEIS.Name = "rbEIS";
            this.rbEIS.UseVisualStyleBackColor = true;
            // 
            // rbCycle
            // 
            resources.ApplyResources(this.rbCycle, "rbCycle");
            this.rbCycle.Name = "rbCycle";
            this.rbCycle.UseVisualStyleBackColor = true;
            // 
            // rbGeneral
            // 
            resources.ApplyResources(this.rbGeneral, "rbGeneral");
            this.rbGeneral.Checked = true;
            this.rbGeneral.Name = "rbGeneral";
            this.rbGeneral.TabStop = true;
            this.rbGeneral.UseVisualStyleBackColor = true;
            // 
            // ExcelTypeForm
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.CancelButton = this.btnCancel;
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ExcelTypeForm";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton rbXls;
        private System.Windows.Forms.RadioButton rbXlsx;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.RadioButton rbCycle;
        private System.Windows.Forms.RadioButton rbGeneral;
        private System.Windows.Forms.RadioButton rbEIS;
    }
}