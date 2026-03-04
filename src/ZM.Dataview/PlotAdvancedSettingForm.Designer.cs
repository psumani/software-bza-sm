namespace ZiveLab.ZM.Dataview
{
    partial class PlotAdvancedSettingForm
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
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마십시오.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(PlotAdvancedSettingForm));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.group_SetAxes = new System.Windows.Forms.GroupBox();
            this.dataGridViewSetAxes = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.group_DataCondition = new System.Windows.Forms.GroupBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.text_CycleNumber = new System.Windows.Forms.TextBox();
            this.text_StepNumber = new System.Windows.Forms.TextBox();
            this.text_FileNumber = new System.Windows.Forms.TextBox();
            this.text_from = new System.Windows.Forms.TextBox();
            this.text_to = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.checkboxStepNo = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.combo_item = new System.Windows.Forms.ComboBox();
            this.checkboxCycleNo = new System.Windows.Forms.CheckBox();
            this.check_StepNumber = new System.Windows.Forms.CheckBox();
            this.checkboxTime = new System.Windows.Forms.CheckBox();
            this.checkboxFileNo = new System.Windows.Forms.CheckBox();
            this.btn_cancel = new System.Windows.Forms.Button();
            this.btn_refresh = new System.Windows.Forms.Button();
            this.group_SetAxes.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewSetAxes)).BeginInit();
            this.group_DataCondition.SuspendLayout();
            this.SuspendLayout();
            // 
            // group_SetAxes
            // 
            this.group_SetAxes.Controls.Add(this.dataGridViewSetAxes);
            resources.ApplyResources(this.group_SetAxes, "group_SetAxes");
            this.group_SetAxes.Name = "group_SetAxes";
            this.group_SetAxes.TabStop = false;
            // 
            // dataGridViewSetAxes
            // 
            this.dataGridViewSetAxes.AllowUserToAddRows = false;
            this.dataGridViewSetAxes.AllowUserToDeleteRows = false;
            this.dataGridViewSetAxes.AllowUserToResizeColumns = false;
            this.dataGridViewSetAxes.AllowUserToResizeRows = false;
            this.dataGridViewSetAxes.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 8F);
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridViewSetAxes.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridViewSetAxes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewSetAxes.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5});
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Segoe UI", 8F);
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridViewSetAxes.DefaultCellStyle = dataGridViewCellStyle7;
            resources.ApplyResources(this.dataGridViewSetAxes, "dataGridViewSetAxes");
            this.dataGridViewSetAxes.MultiSelect = false;
            this.dataGridViewSetAxes.Name = "dataGridViewSetAxes";
            this.dataGridViewSetAxes.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            this.dataGridViewSetAxes.RowsDefaultCellStyle = dataGridViewCellStyle8;
            this.dataGridViewSetAxes.RowTemplate.Height = 23;
            this.dataGridViewSetAxes.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.dataGridViewSetAxes.ShowCellErrors = false;
            this.dataGridViewSetAxes.ShowCellToolTips = false;
            this.dataGridViewSetAxes.ShowEditingIcon = false;
            this.dataGridViewSetAxes.ShowRowErrors = false;
            this.dataGridViewSetAxes.CellBeginEdit += new System.Windows.Forms.DataGridViewCellCancelEventHandler(this.dataGridView1_CellBeginEdit);
            this.dataGridViewSetAxes.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            this.dataGridViewSetAxes.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellEndEdit);
            // 
            // Column1
            // 
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Column1.DefaultCellStyle = dataGridViewCellStyle2;
            resources.ApplyResources(this.Column1, "Column1");
            this.Column1.Name = "Column1";
            this.Column1.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Column1.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // Column2
            // 
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Column2.DefaultCellStyle = dataGridViewCellStyle3;
            resources.ApplyResources(this.Column2, "Column2");
            this.Column2.Name = "Column2";
            this.Column2.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Column2.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // Column3
            // 
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Column3.DefaultCellStyle = dataGridViewCellStyle4;
            resources.ApplyResources(this.Column3, "Column3");
            this.Column3.Name = "Column3";
            this.Column3.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Column3.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // Column4
            // 
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Column4.DefaultCellStyle = dataGridViewCellStyle5;
            resources.ApplyResources(this.Column4, "Column4");
            this.Column4.Name = "Column4";
            this.Column4.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Column4.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // Column5
            // 
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Column5.DefaultCellStyle = dataGridViewCellStyle6;
            resources.ApplyResources(this.Column5, "Column5");
            this.Column5.Name = "Column5";
            this.Column5.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.Column5.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            // 
            // group_DataCondition
            // 
            this.group_DataCondition.Controls.Add(this.label8);
            this.group_DataCondition.Controls.Add(this.label7);
            this.group_DataCondition.Controls.Add(this.label6);
            this.group_DataCondition.Controls.Add(this.label5);
            this.group_DataCondition.Controls.Add(this.text_CycleNumber);
            this.group_DataCondition.Controls.Add(this.text_StepNumber);
            this.group_DataCondition.Controls.Add(this.text_FileNumber);
            this.group_DataCondition.Controls.Add(this.text_from);
            this.group_DataCondition.Controls.Add(this.text_to);
            this.group_DataCondition.Controls.Add(this.label4);
            this.group_DataCondition.Controls.Add(this.checkboxStepNo);
            this.group_DataCondition.Controls.Add(this.label2);
            this.group_DataCondition.Controls.Add(this.label1);
            this.group_DataCondition.Controls.Add(this.combo_item);
            this.group_DataCondition.Controls.Add(this.checkboxCycleNo);
            this.group_DataCondition.Controls.Add(this.check_StepNumber);
            this.group_DataCondition.Controls.Add(this.checkboxTime);
            this.group_DataCondition.Controls.Add(this.checkboxFileNo);
            resources.ApplyResources(this.group_DataCondition, "group_DataCondition");
            this.group_DataCondition.Name = "group_DataCondition";
            this.group_DataCondition.TabStop = false;
            // 
            // label8
            // 
            resources.ApplyResources(this.label8, "label8");
            this.label8.Name = "label8";
            // 
            // label7
            // 
            resources.ApplyResources(this.label7, "label7");
            this.label7.Name = "label7";
            // 
            // label6
            // 
            resources.ApplyResources(this.label6, "label6");
            this.label6.Name = "label6";
            // 
            // label5
            // 
            resources.ApplyResources(this.label5, "label5");
            this.label5.Name = "label5";
            // 
            // text_CycleNumber
            // 
            resources.ApplyResources(this.text_CycleNumber, "text_CycleNumber");
            this.text_CycleNumber.Name = "text_CycleNumber";
            // 
            // text_StepNumber
            // 
            resources.ApplyResources(this.text_StepNumber, "text_StepNumber");
            this.text_StepNumber.Name = "text_StepNumber";
            // 
            // text_FileNumber
            // 
            resources.ApplyResources(this.text_FileNumber, "text_FileNumber");
            this.text_FileNumber.Name = "text_FileNumber";
            // 
            // text_from
            // 
            resources.ApplyResources(this.text_from, "text_from");
            this.text_from.Name = "text_from";
            // 
            // text_to
            // 
            resources.ApplyResources(this.text_to, "text_to");
            this.text_to.Name = "text_to";
            // 
            // label4
            // 
            resources.ApplyResources(this.label4, "label4");
            this.label4.Name = "label4";
            // 
            // checkboxStepNo
            // 
            resources.ApplyResources(this.checkboxStepNo, "checkboxStepNo");
            this.checkboxStepNo.Name = "checkboxStepNo";
            // 
            // label2
            // 
            resources.ApplyResources(this.label2, "label2");
            this.label2.Name = "label2";
            // 
            // label1
            // 
            resources.ApplyResources(this.label1, "label1");
            this.label1.Name = "label1";
            // 
            // combo_item
            // 
            this.combo_item.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            resources.ApplyResources(this.combo_item, "combo_item");
            this.combo_item.FormattingEnabled = true;
            this.combo_item.Name = "combo_item";
            // 
            // checkboxCycleNo
            // 
            resources.ApplyResources(this.checkboxCycleNo, "checkboxCycleNo");
            this.checkboxCycleNo.Name = "checkboxCycleNo";
            this.checkboxCycleNo.UseVisualStyleBackColor = true;
            this.checkboxCycleNo.CheckedChanged += new System.EventHandler(this.check_CycleNumber_CheckedChanged);
            // 
            // check_StepNumber
            // 
            resources.ApplyResources(this.check_StepNumber, "check_StepNumber");
            this.check_StepNumber.Name = "check_StepNumber";
            this.check_StepNumber.UseVisualStyleBackColor = true;
            this.check_StepNumber.CheckedChanged += new System.EventHandler(this.check_StepNumber_CheckedChanged);
            // 
            // checkboxTime
            // 
            resources.ApplyResources(this.checkboxTime, "checkboxTime");
            this.checkboxTime.Name = "checkboxTime";
            this.checkboxTime.UseVisualStyleBackColor = true;
            this.checkboxTime.CheckedChanged += new System.EventHandler(this.check_items_CheckedChanged);
            // 
            // checkboxFileNo
            // 
            resources.ApplyResources(this.checkboxFileNo, "checkboxFileNo");
            this.checkboxFileNo.Name = "checkboxFileNo";
            this.checkboxFileNo.UseVisualStyleBackColor = true;
            this.checkboxFileNo.CheckedChanged += new System.EventHandler(this.check_FileNumber_CheckedChanged);
            // 
            // btn_cancel
            // 
            this.btn_cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            resources.ApplyResources(this.btn_cancel, "btn_cancel");
            this.btn_cancel.Name = "btn_cancel";
            this.btn_cancel.UseVisualStyleBackColor = true;
            this.btn_cancel.Click += new System.EventHandler(this.btn_cancel_Click);
            // 
            // btn_refresh
            // 
            this.btn_refresh.DialogResult = System.Windows.Forms.DialogResult.OK;
            resources.ApplyResources(this.btn_refresh, "btn_refresh");
            this.btn_refresh.Name = "btn_refresh";
            this.btn_refresh.UseVisualStyleBackColor = true;
            this.btn_refresh.Click += new System.EventHandler(this.btn_refresh_Click);
            // 
            // PlotAdvancedSettingForm
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.CancelButton = this.btn_cancel;
            this.Controls.Add(this.btn_refresh);
            this.Controls.Add(this.btn_cancel);
            this.Controls.Add(this.group_DataCondition);
            this.Controls.Add(this.group_SetAxes);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "PlotAdvancedSettingForm";
            this.ShowIcon = false;
            this.Load += new System.EventHandler(this.Form_PlotAdvancedSetting_Load);
            this.group_SetAxes.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewSetAxes)).EndInit();
            this.group_DataCondition.ResumeLayout(false);
            this.group_DataCondition.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox group_SetAxes;
        private System.Windows.Forms.GroupBox group_DataCondition;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox text_CycleNumber;
        private System.Windows.Forms.TextBox text_StepNumber;
        private System.Windows.Forms.TextBox text_FileNumber;
        private System.Windows.Forms.TextBox text_from;
        private System.Windows.Forms.TextBox text_to;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label checkboxStepNo;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox combo_item;
        private System.Windows.Forms.CheckBox checkboxCycleNo;
        private System.Windows.Forms.CheckBox check_StepNumber;
        private System.Windows.Forms.CheckBox checkboxTime;
        private System.Windows.Forms.CheckBox checkboxFileNo;
        private System.Windows.Forms.Button btn_cancel;
        private System.Windows.Forms.Button btn_refresh;
        private System.Windows.Forms.DataGridView dataGridViewSetAxes;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
    }
}

