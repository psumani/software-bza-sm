namespace ZiveUniFile
{
    partial class PanelSetDataFormat
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

        #region 구성 요소 디자이너에서 생성한 코드

        /// <summary> 
        /// 디자이너 지원에 필요한 메서드입니다. 
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마세요.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.txtGroupCnt = new System.Windows.Forms.TextBox();
            this.menuGroup = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.add_menuGroup = new System.Windows.Forms.ToolStripMenuItem();
            this.insert_menuGroup = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.edit_menuGroup = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.delete_menuGroup = new System.Windows.Forms.ToolStripMenuItem();
            this.label2 = new System.Windows.Forms.Label();
            this.txtFilename = new System.Windows.Forms.TextBox();
            this.menuFile = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.newToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.loadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.saveToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.saveAsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.applyFormatToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator6 = new System.Windows.Forms.ToolStripSeparator();
            this.closeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.treeGroup = new System.Windows.Forms.TreeView();
            this.menuItem = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.Add_menuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.Insert_menuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator7 = new System.Windows.Forms.ToolStripSeparator();
            this.delete_menuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.label3 = new System.Windows.Forms.Label();
            this.txtItemCnt = new System.Windows.Forms.TextBox();
            this.txtSelGrp = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtFileCode = new System.Windows.Forms.TextBox();
            this.txtFileVersion = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.menuGroup.SuspendLayout();
            this.menuFile.SuspendLayout();
            this.menuItem.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(428, 79);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(88, 12);
            this.label1.TabIndex = 1;
            this.label1.Text = "Group Count : ";
            // 
            // txtGroupCnt
            // 
            this.txtGroupCnt.Location = new System.Drawing.Point(518, 74);
            this.txtGroupCnt.Name = "txtGroupCnt";
            this.txtGroupCnt.ReadOnly = true;
            this.txtGroupCnt.Size = new System.Drawing.Size(58, 21);
            this.txtGroupCnt.TabIndex = 2;
            this.txtGroupCnt.Text = "0";
            this.txtGroupCnt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // menuGroup
            // 
            this.menuGroup.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.add_menuGroup,
            this.insert_menuGroup,
            this.toolStripSeparator1,
            this.edit_menuGroup,
            this.toolStripSeparator4,
            this.delete_menuGroup});
            this.menuGroup.Name = "menuItemTool";
            this.menuGroup.Size = new System.Drawing.Size(146, 104);
            // 
            // add_menuGroup
            // 
            this.add_menuGroup.Name = "add_menuGroup";
            this.add_menuGroup.Size = new System.Drawing.Size(145, 22);
            this.add_menuGroup.Text = "Add Group";
            this.add_menuGroup.Click += new System.EventHandler(this.add_menuGroup_Click);
            // 
            // insert_menuGroup
            // 
            this.insert_menuGroup.Name = "insert_menuGroup";
            this.insert_menuGroup.Size = new System.Drawing.Size(145, 22);
            this.insert_menuGroup.Text = "Insert Group";
            this.insert_menuGroup.Click += new System.EventHandler(this.insert_menuGroup_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(142, 6);
            // 
            // edit_menuGroup
            // 
            this.edit_menuGroup.Name = "edit_menuGroup";
            this.edit_menuGroup.Size = new System.Drawing.Size(145, 22);
            this.edit_menuGroup.Text = "Edit Group";
            this.edit_menuGroup.Click += new System.EventHandler(this.edit_menuGroup_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(142, 6);
            // 
            // delete_menuGroup
            // 
            this.delete_menuGroup.Name = "delete_menuGroup";
            this.delete_menuGroup.Size = new System.Drawing.Size(145, 22);
            this.delete_menuGroup.Text = "Delete Group";
            this.delete_menuGroup.Click += new System.EventHandler(this.delete_menuGroup_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 12);
            this.label2.TabIndex = 7;
            this.label2.Text = "File Name : ";
            // 
            // txtFilename
            // 
            this.txtFilename.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtFilename.ContextMenuStrip = this.menuFile;
            this.txtFilename.Location = new System.Drawing.Point(93, 9);
            this.txtFilename.Multiline = true;
            this.txtFilename.Name = "txtFilename";
            this.txtFilename.ReadOnly = true;
            this.txtFilename.Size = new System.Drawing.Size(571, 56);
            this.txtFilename.TabIndex = 8;
            // 
            // menuFile
            // 
            this.menuFile.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.newToolStripMenuItem,
            this.loadToolStripMenuItem,
            this.toolStripSeparator3,
            this.saveToolStripMenuItem,
            this.saveAsToolStripMenuItem,
            this.toolStripSeparator2,
            this.applyFormatToolStripMenuItem,
            this.toolStripSeparator6,
            this.closeToolStripMenuItem});
            this.menuFile.Name = "menuFile";
            this.menuFile.Size = new System.Drawing.Size(148, 154);
            // 
            // newToolStripMenuItem
            // 
            this.newToolStripMenuItem.Name = "newToolStripMenuItem";
            this.newToolStripMenuItem.Size = new System.Drawing.Size(147, 22);
            this.newToolStripMenuItem.Text = "New";
            this.newToolStripMenuItem.Click += new System.EventHandler(this.newToolStripMenuItem_Click);
            // 
            // loadToolStripMenuItem
            // 
            this.loadToolStripMenuItem.Name = "loadToolStripMenuItem";
            this.loadToolStripMenuItem.Size = new System.Drawing.Size(147, 22);
            this.loadToolStripMenuItem.Text = "Load";
            this.loadToolStripMenuItem.Click += new System.EventHandler(this.loadToolStripMenuItem_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(144, 6);
            // 
            // saveToolStripMenuItem
            // 
            this.saveToolStripMenuItem.Name = "saveToolStripMenuItem";
            this.saveToolStripMenuItem.Size = new System.Drawing.Size(147, 22);
            this.saveToolStripMenuItem.Text = "Save";
            this.saveToolStripMenuItem.Click += new System.EventHandler(this.saveToolStripMenuItem_Click);
            // 
            // saveAsToolStripMenuItem
            // 
            this.saveAsToolStripMenuItem.Name = "saveAsToolStripMenuItem";
            this.saveAsToolStripMenuItem.Size = new System.Drawing.Size(147, 22);
            this.saveAsToolStripMenuItem.Text = "Save as";
            this.saveAsToolStripMenuItem.Click += new System.EventHandler(this.saveAsToolStripMenuItem_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(144, 6);
            // 
            // applyFormatToolStripMenuItem
            // 
            this.applyFormatToolStripMenuItem.Name = "applyFormatToolStripMenuItem";
            this.applyFormatToolStripMenuItem.Size = new System.Drawing.Size(147, 22);
            this.applyFormatToolStripMenuItem.Text = "Apply Format";
            this.applyFormatToolStripMenuItem.Click += new System.EventHandler(this.applyFormatToolStripMenuItem_Click);
            // 
            // toolStripSeparator6
            // 
            this.toolStripSeparator6.Name = "toolStripSeparator6";
            this.toolStripSeparator6.Size = new System.Drawing.Size(144, 6);
            // 
            // closeToolStripMenuItem
            // 
            this.closeToolStripMenuItem.Name = "closeToolStripMenuItem";
            this.closeToolStripMenuItem.Size = new System.Drawing.Size(147, 22);
            this.closeToolStripMenuItem.Text = "Close";
            this.closeToolStripMenuItem.Click += new System.EventHandler(this.closeToolStripMenuItem_Click);
            // 
            // treeGroup
            // 
            this.treeGroup.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.treeGroup.ContextMenuStrip = this.menuGroup;
            this.treeGroup.Location = new System.Drawing.Point(93, 138);
            this.treeGroup.Name = "treeGroup";
            this.treeGroup.Size = new System.Drawing.Size(571, 322);
            this.treeGroup.TabIndex = 10;
            this.treeGroup.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.treeGroup_AfterSelect);
            // 
            // menuItem
            // 
            this.menuItem.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Add_menuItem,
            this.Insert_menuItem,
            this.toolStripSeparator7,
            this.delete_menuItem});
            this.menuItem.Name = "menuItem";
            this.menuItem.Size = new System.Drawing.Size(137, 76);
            // 
            // Add_menuItem
            // 
            this.Add_menuItem.Name = "Add_menuItem";
            this.Add_menuItem.Size = new System.Drawing.Size(136, 22);
            this.Add_menuItem.Text = "Add Item";
            this.Add_menuItem.Click += new System.EventHandler(this.Add_menuItem_Click);
            // 
            // Insert_menuItem
            // 
            this.Insert_menuItem.Name = "Insert_menuItem";
            this.Insert_menuItem.Size = new System.Drawing.Size(136, 22);
            this.Insert_menuItem.Text = "Insert Item";
            this.Insert_menuItem.Click += new System.EventHandler(this.Insert_menuItem_Click);
            // 
            // toolStripSeparator7
            // 
            this.toolStripSeparator7.Name = "toolStripSeparator7";
            this.toolStripSeparator7.Size = new System.Drawing.Size(133, 6);
            // 
            // delete_menuItem
            // 
            this.delete_menuItem.Name = "delete_menuItem";
            this.delete_menuItem.Size = new System.Drawing.Size(136, 22);
            this.delete_menuItem.Text = "Delete Item";
            this.delete_menuItem.Click += new System.EventHandler(this.delete_menuItem_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(235, 115);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 12);
            this.label3.TabIndex = 12;
            this.label3.Text = "Item Count : ";
            // 
            // txtItemCnt
            // 
            this.txtItemCnt.Location = new System.Drawing.Point(313, 111);
            this.txtItemCnt.Name = "txtItemCnt";
            this.txtItemCnt.ReadOnly = true;
            this.txtItemCnt.Size = new System.Drawing.Size(61, 21);
            this.txtItemCnt.TabIndex = 13;
            this.txtItemCnt.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // txtSelGrp
            // 
            this.txtSelGrp.Location = new System.Drawing.Point(157, 112);
            this.txtSelGrp.Name = "txtSelGrp";
            this.txtSelGrp.ReadOnly = true;
            this.txtSelGrp.Size = new System.Drawing.Size(61, 21);
            this.txtSelGrp.TabIndex = 15;
            this.txtSelGrp.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(94, 116);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 12);
            this.label4.TabIndex = 14;
            this.label4.Text = "Selected : ";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(94, 77);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(59, 12);
            this.label5.TabIndex = 16;
            this.label5.Text = "File Code";
            // 
            // txtFileCode
            // 
            this.txtFileCode.Location = new System.Drawing.Point(154, 72);
            this.txtFileCode.Name = "txtFileCode";
            this.txtFileCode.ReadOnly = true;
            this.txtFileCode.Size = new System.Drawing.Size(78, 21);
            this.txtFileCode.TabIndex = 17;
            // 
            // txtFileVersion
            // 
            this.txtFileVersion.Location = new System.Drawing.Point(324, 74);
            this.txtFileVersion.Name = "txtFileVersion";
            this.txtFileVersion.ReadOnly = true;
            this.txtFileVersion.Size = new System.Drawing.Size(78, 21);
            this.txtFileVersion.TabIndex = 19;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(248, 79);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(72, 12);
            this.label6.TabIndex = 18;
            this.label6.Text = "File Version";
            // 
            // PanelSetDataFormat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtFileVersion);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtFileCode);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtSelGrp);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtItemCnt);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.treeGroup);
            this.Controls.Add(this.txtFilename);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtGroupCnt);
            this.Controls.Add(this.label1);
            this.Name = "PanelSetDataFormat";
            this.Size = new System.Drawing.Size(679, 472);
            this.Load += new System.EventHandler(this.PanelSetDataFormat_Load);
            this.menuGroup.ResumeLayout(false);
            this.menuFile.ResumeLayout(false);
            this.menuItem.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtGroupCnt;
        private System.Windows.Forms.ContextMenuStrip menuGroup;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtFilename;
        private System.Windows.Forms.ContextMenuStrip menuFile;
        private System.Windows.Forms.ToolStripMenuItem newToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem loadToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripMenuItem saveToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem saveAsToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem closeToolStripMenuItem;
        private System.Windows.Forms.TreeView treeGroup;
        private System.Windows.Forms.ToolStripMenuItem add_menuGroup;
        private System.Windows.Forms.ToolStripMenuItem insert_menuGroup;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripMenuItem delete_menuGroup;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtItemCnt;
        private System.Windows.Forms.TextBox txtSelGrp;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ToolStripMenuItem applyFormatToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator6;
        private System.Windows.Forms.ContextMenuStrip menuItem;
        private System.Windows.Forms.ToolStripMenuItem Add_menuItem;
        private System.Windows.Forms.ToolStripMenuItem Insert_menuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator7;
        private System.Windows.Forms.ToolStripMenuItem delete_menuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem edit_menuGroup;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtFileCode;
        private System.Windows.Forms.TextBox txtFileVersion;
        private System.Windows.Forms.Label label6;
    }
}
