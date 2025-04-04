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
            this.txtFile = new System.Windows.Forms.TextBox();
            this.linkSelFile = new System.Windows.Forms.LinkLabel();
            this.linkGraph = new System.Windows.Forms.LinkLabel();
            this.linkDataeditor = new System.Windows.Forms.LinkLabel();
            this.SuspendLayout();
            // 
            // txtFile
            // 
            this.txtFile.Location = new System.Drawing.Point(51, 27);
            this.txtFile.Multiline = true;
            this.txtFile.Name = "txtFile";
            this.txtFile.ReadOnly = true;
            this.txtFile.Size = new System.Drawing.Size(654, 56);
            this.txtFile.TabIndex = 1;
            // 
            // linkSelFile
            // 
            this.linkSelFile.AutoSize = true;
            this.linkSelFile.Location = new System.Drawing.Point(32, 12);
            this.linkSelFile.Name = "linkSelFile";
            this.linkSelFile.Size = new System.Drawing.Size(162, 12);
            this.linkSelFile.TabIndex = 2;
            this.linkSelFile.TabStop = true;
            this.linkSelFile.Text = "Select BZA data file(*.ZMF)";
            this.linkSelFile.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkSelFile_LinkClicked);
            // 
            // linkGraph
            // 
            this.linkGraph.AutoSize = true;
            this.linkGraph.Location = new System.Drawing.Point(49, 106);
            this.linkGraph.Name = "linkGraph";
            this.linkGraph.Size = new System.Drawing.Size(70, 12);
            this.linkGraph.TabIndex = 3;
            this.linkGraph.TabStop = true;
            this.linkGraph.Text = "Test graph ";
            this.linkGraph.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkGraph_LinkClicked);
            // 
            // linkDataeditor
            // 
            this.linkDataeditor.AutoSize = true;
            this.linkDataeditor.Location = new System.Drawing.Point(153, 106);
            this.linkDataeditor.Name = "linkDataeditor";
            this.linkDataeditor.Size = new System.Drawing.Size(93, 12);
            this.linkDataeditor.TabIndex = 4;
            this.linkDataeditor.TabStop = true;
            this.linkDataeditor.Text = "Test data editor";
            this.linkDataeditor.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkDataeditor_LinkClicked);
            // 
            // TestMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(730, 158);
            this.Controls.Add(this.linkDataeditor);
            this.Controls.Add(this.linkGraph);
            this.Controls.Add(this.linkSelFile);
            this.Controls.Add(this.txtFile);
            this.Name = "TestMain";
            this.Text = "Test dataview";
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

