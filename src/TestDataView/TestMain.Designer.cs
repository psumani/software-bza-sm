namespace TestDataView
{
    partial class TestMain
    {
        /// <summary>
        /// 필수 디자이너 변수입니다.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 사용 중인 모든 리소스를 정리합니다.
        /// </summary>
        /// <param name="disposing">관리되는 리소스를 삭제해야 하면 true이고, 그렇지 않으면 false입니다.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 디자이너에서 생성한 코드

        /// <summary>
        /// 디자이너 지원에 필요한 메서드입니다. 
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마세요.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(TestMain));
            this.txtFile = new System.Windows.Forms.TextBox();
            this.linkSelFile = new System.Windows.Forms.LinkLabel();
            this.linkGraph = new System.Windows.Forms.LinkLabel();
            this.linkDataeditor = new System.Windows.Forms.LinkLabel();
            this.SuspendLayout();
            // 
            // txtFile
            // 
            resources.ApplyResources(this.txtFile, "txtFile");
            this.txtFile.Name = "txtFile";
            this.txtFile.ReadOnly = true;
            // 
            // linkSelFile
            // 
            resources.ApplyResources(this.linkSelFile, "linkSelFile");
            this.linkSelFile.Name = "linkSelFile";
            this.linkSelFile.TabStop = true;
            this.linkSelFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkSelFile_LinkClicked);
            // 
            // linkGraph
            // 
            resources.ApplyResources(this.linkGraph, "linkGraph");
            this.linkGraph.Name = "linkGraph";
            this.linkGraph.TabStop = true;
            this.linkGraph.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkGraph_LinkClicked);
            // 
            // linkDataeditor
            // 
            resources.ApplyResources(this.linkDataeditor, "linkDataeditor");
            this.linkDataeditor.Name = "linkDataeditor";
            this.linkDataeditor.TabStop = true;
            this.linkDataeditor.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkDataeditor_LinkClicked);
            // 
            // TestMain
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.linkDataeditor);
            this.Controls.Add(this.linkGraph);
            this.Controls.Add(this.linkSelFile);
            this.Controls.Add(this.txtFile);
            this.Name = "TestMain";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtFile;
        private System.Windows.Forms.LinkLabel linkSelFile;
        private System.Windows.Forms.LinkLabel linkGraph;
        private System.Windows.Forms.LinkLabel linkDataeditor;
    }
}

