namespace ZiveLab.ZM.Dataview
{
    partial class GraphDataConvTextForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(GraphDataConvTextForm));
            this.checkboxGraphOnly = new System.Windows.Forms.CheckBox();
            this.treeViewFileList = new System.Windows.Forms.TreeView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.radioButtonSpace = new System.Windows.Forms.RadioButton();
            this.radioButtonTab = new System.Windows.Forms.RadioButton();
            this.radioButtonComma = new System.Windows.Forms.RadioButton();
            this.btnOk = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // checkboxGraphOnly
            // 
            resources.ApplyResources(this.checkboxGraphOnly, "checkboxGraphOnly");
            this.checkboxGraphOnly.Checked = true;
            this.checkboxGraphOnly.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkboxGraphOnly.Name = "checkboxGraphOnly";
            this.checkboxGraphOnly.UseVisualStyleBackColor = true;
            // 
            // treeViewFileList
            // 
            resources.ApplyResources(this.treeViewFileList, "treeViewFileList");
            this.treeViewFileList.CheckBoxes = true;
            this.treeViewFileList.ItemHeight = 20;
            this.treeViewFileList.Name = "treeViewFileList";
            this.treeViewFileList.ShowLines = false;
            this.treeViewFileList.ShowPlusMinus = false;
            this.treeViewFileList.ShowRootLines = false;
            // 
            // groupBox1
            // 
            resources.ApplyResources(this.groupBox1, "groupBox1");
            this.groupBox1.Controls.Add(this.radioButtonSpace);
            this.groupBox1.Controls.Add(this.radioButtonTab);
            this.groupBox1.Controls.Add(this.radioButtonComma);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.TabStop = false;
            // 
            // radioButtonSpace
            // 
            resources.ApplyResources(this.radioButtonSpace, "radioButtonSpace");
            this.radioButtonSpace.Name = "radioButtonSpace";
            this.radioButtonSpace.UseVisualStyleBackColor = true;
            // 
            // radioButtonTab
            // 
            resources.ApplyResources(this.radioButtonTab, "radioButtonTab");
            this.radioButtonTab.Checked = true;
            this.radioButtonTab.Name = "radioButtonTab";
            this.radioButtonTab.TabStop = true;
            this.radioButtonTab.UseVisualStyleBackColor = true;
            // 
            // radioButtonComma
            // 
            resources.ApplyResources(this.radioButtonComma, "radioButtonComma");
            this.radioButtonComma.Name = "radioButtonComma";
            this.radioButtonComma.UseVisualStyleBackColor = true;
            // 
            // btnOk
            // 
            resources.ApplyResources(this.btnOk, "btnOk");
            this.btnOk.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOk.Name = "btnOk";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // btnCancel
            // 
            resources.ApplyResources(this.btnCancel, "btnCancel");
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            // 
            // GraphDataConvTextForm
            // 
            this.AcceptButton = this.btnOk;
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.CancelButton = this.btnCancel;
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.treeViewFileList);
            this.Controls.Add(this.checkboxGraphOnly);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "GraphDataConvTextForm";
            this.Load += new System.EventHandler(this.Form_GraphDataConvText_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox checkboxGraphOnly;
        private System.Windows.Forms.TreeView treeViewFileList;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton radioButtonComma;
        private System.Windows.Forms.RadioButton radioButtonSpace;
        private System.Windows.Forms.RadioButton radioButtonTab;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Button btnCancel;
    }
}