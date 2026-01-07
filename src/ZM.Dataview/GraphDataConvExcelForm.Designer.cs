namespace ZiveLab.ZM.Dataview
{
    partial class GraphDataConvExcelForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(GraphDataConvExcelForm));
            this.checkboxGraphOnly = new System.Windows.Forms.CheckBox();
            this.treeViewFileList = new System.Windows.Forms.TreeView();
            this.buttonOK = new System.Windows.Forms.Button();
            this.buttonCancel = new System.Windows.Forms.Button();
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
            // buttonOK
            // 
            resources.ApplyResources(this.buttonOK, "buttonOK");
            this.buttonOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.buttonOK.Name = "buttonOK";
            this.buttonOK.UseVisualStyleBackColor = true;
            this.buttonOK.Click += new System.EventHandler(this.buttonOK_Click);
            // 
            // buttonCancel
            // 
            resources.ApplyResources(this.buttonCancel, "buttonCancel");
            this.buttonCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.buttonCancel.Name = "buttonCancel";
            this.buttonCancel.UseVisualStyleBackColor = true;
            // 
            // GraphDataConvExcelForm
            // 
            this.AcceptButton = this.buttonOK;
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.CancelButton = this.buttonCancel;
            this.Controls.Add(this.buttonCancel);
            this.Controls.Add(this.buttonOK);
            this.Controls.Add(this.treeViewFileList);
            this.Controls.Add(this.checkboxGraphOnly);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "GraphDataConvExcelForm";
            this.Load += new System.EventHandler(this.Form_GraphDataConvExcel_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox checkboxGraphOnly;
        private System.Windows.Forms.TreeView treeViewFileList;
        private System.Windows.Forms.Button buttonOK;
        private System.Windows.Forms.Button buttonCancel;
    }
}