using System;
using System.Drawing;
using System.Windows.Forms;

namespace ZiveLab.ZM.Dataview
{
    public partial class PlotAdvancedSettingForm : Form
    {
        private object m_OldValue;

        private AxisFormat m_XAxisFormat;
        private AxisFormat[] m_YAxesFormat;

        private DataFilter _DataFilter;

        public DataFilter DataFilter
        {
            set { _DataFilter = value; }
        }

        public PlotAdvancedSettingForm(AxisFormat x, AxisFormat[] y, int langidx)
        {
            InitializeComponent();

            SetLanguage(langidx);

            m_XAxisFormat = x;
            m_YAxesFormat = y;
        }

        public void SetLanguage(int langidx)
        {
            DataviewCommon.SetLanguage(this, langidx, typeof(PlotAdvancedSettingForm));
        }

        private void Form_PlotAdvancedSetting_Load(object sender, EventArgs e)
        {
            combo_item.Items.Add(Properties.Resources.Test_Time);
            combo_item.SelectedIndex = 0;

            dataGridViewSetAxes.TopLeftHeaderCell.Value = Properties.Resources.Item;
            dataGridViewSetAxes.RowHeadersWidth = 110;
            ColsSetting();
            RowsSetting();
            DataFilterSetting();
        }

        private void ColsSetting()
        {
            dataGridViewSetAxes.Columns[0].HeaderText = Properties.Resources.X_Axis;

            int idx = 1;

            dataGridViewSetAxes.Columns[1].HeaderText = string.Format(Properties.Resources.Yx_Axis, idx++);
            dataGridViewSetAxes.Columns[2].HeaderText = string.Format(Properties.Resources.Yx_Axis, idx++);
            dataGridViewSetAxes.Columns[3].HeaderText = string.Format(Properties.Resources.Yx_Axis, idx++);
            dataGridViewSetAxes.Columns[4].HeaderText = string.Format(Properties.Resources.Yx_Axis, idx++);
        }

        private void RowsSetting()
        {
            dataGridViewSetAxes.Rows.Add();
            dataGridViewSetAxes.Rows[0].HeaderCell.Value = Properties.Resources.Name;
            dataGridViewSetAxes.Rows.Add();
            dataGridViewSetAxes.Rows[1].HeaderCell.Value = Properties.Resources.Direction;
            dataGridViewSetAxes.Rows.Add();
            dataGridViewSetAxes.Rows[2].HeaderCell.Value = Properties.Resources.ScaleType;
            dataGridViewSetAxes.Rows.Add();
            dataGridViewSetAxes.Rows[3].HeaderCell.Value = Properties.Resources.Color;

            int cellidx = 0;
            int rowidx = 0;

            dataGridViewSetAxes.Rows[rowidx].Cells[cellidx].Value = m_XAxisFormat.ToString();
            dataGridViewSetAxes.Rows[rowidx++].Cells[cellidx].ReadOnly = true;
            //dataGridViewSetAxes.Rows[1].Cells[cellidx] = new MyDGVCheckBoxCell();
            //((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[1].Cells[cellidx]).Label = "Auto";
            //((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[1].Cells[cellidx]).ValueType = typeof(bool);
            //dataGridViewSetAxes.Rows[1].Cells[cellidx].Value = (m_XAxisFormat.AxisMode == AxisMode.Fixed) ? false : true;
            //dataGridViewSetAxes.Rows[2].Cells[cellidx].Value = Utility.DoubleToString(m_XAxisFormat.RangeMax);
            //dataGridViewSetAxes.Rows[3].Cells[cellidx].Value = Utility.DoubleToString(m_XAxisFormat.RangeMin);
            dataGridViewSetAxes.Rows[rowidx].Cells[cellidx] = new MyDGVCheckBoxCell();
            ((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Label = Properties.Resources.Invert;
            ((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).ValueType = typeof(bool);
            dataGridViewSetAxes.Rows[rowidx++].Cells[cellidx].Value = m_XAxisFormat.Inverted;

            dataGridViewSetAxes.Rows[rowidx].Cells[cellidx] = new MyDGVCheckBoxCell();
            ((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Label = Properties.Resources.Logarithm;
            ((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).ValueType = typeof(bool);
            dataGridViewSetAxes.Rows[rowidx++].Cells[cellidx].Value = m_XAxisFormat.ScaleType == NationalInstruments.UI.ScaleType.Linear ? false : true;

            dataGridViewSetAxes.Rows[rowidx].Cells[cellidx] = new DataGridViewButtonCell();
            ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).FlatStyle = FlatStyle.Popup;
            ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Style.BackColor = m_XAxisFormat.AxisColor;
            ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Style.ForeColor = Color.White;
            ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Style.SelectionBackColor = m_XAxisFormat.AxisColor;
            ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx++]).Style.SelectionForeColor = Color.White;

            for (int i = 0; i < 4; i++)
            {
                rowidx = 0;

                dataGridViewSetAxes.Rows[rowidx].Cells[cellidx].Value = m_YAxesFormat[i].ToString();
                dataGridViewSetAxes.Rows[rowidx++].Cells[cellidx].ReadOnly = true;

                //dataGridViewSetAxes.Rows[1].Cells[cellidx] = new MyDGVCheckBoxCell();
                //((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[1].Cells[cellidx]).Label = "Auto";
                //((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[1].Cells[cellidx]).ValueType = typeof(bool);
                //dataGridViewSetAxes.Rows[1].Cells[cellidx].Value = (m_YAxesFormat[i].AxisMode == AxisMode.Fixed) ? false : true;
                //dataGridViewSetAxes.Rows[2].Cells[cellidx].Value = Utility.DoubleToString(m_YAxesFormat[i].RangeMax);
                //dataGridViewSetAxes.Rows[3].Cells[cellidx].Value = Utility.DoubleToString(m_YAxesFormat[i].RangeMin);
                dataGridViewSetAxes.Rows[rowidx].Cells[cellidx] = new MyDGVCheckBoxCell();
                ((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Label = Properties.Resources.Invert;
                ((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).ValueType = typeof(bool);
                dataGridViewSetAxes.Rows[rowidx++].Cells[cellidx].Value = m_YAxesFormat[i].Inverted;
                dataGridViewSetAxes.Rows[rowidx].Cells[cellidx] = new MyDGVCheckBoxCell();
                ((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Label = Properties.Resources.Logarithm;
                ((MyDGVCheckBoxCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).ValueType = typeof(bool);
                dataGridViewSetAxes.Rows[rowidx++].Cells[cellidx].Value = m_YAxesFormat[i].ScaleType == NationalInstruments.UI.ScaleType.Linear ? false : true;
                dataGridViewSetAxes.Rows[rowidx].Cells[cellidx] = new DataGridViewButtonCell();
                ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).FlatStyle = FlatStyle.Popup;
                ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Style.BackColor = m_YAxesFormat[i].AxisColor;
                ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Style.ForeColor = Color.White;
                ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx]).Style.SelectionBackColor = m_YAxesFormat[i].AxisColor;
                ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[rowidx].Cells[cellidx++]).Style.SelectionForeColor = Color.White;
            }
        }        

        private void DataFilterSetting()
        {
            if(_DataFilter != null)
            {
                checkboxTime.Checked = _DataFilter.TimeEnable;
                combo_item.SelectedItem = _DataFilter.TimeType;
                text_to.Text = CoTypeString.TimeToStringII(_DataFilter.StartTime);
                text_from.Text = CoTypeString.TimeToStringII(_DataFilter.EndTime);

                checkboxCycleNo.Checked = _DataFilter.CycNoEnable;
                text_CycleNumber.Text = _DataFilter.CycNoString;

                check_StepNumber.Checked = _DataFilter.StepNoEnable;
                text_StepNumber.Text = _DataFilter.StepNoString;
            }
        }

        public class MyDGVCheckBoxColumn : DataGridViewCheckBoxColumn
        {
            private string label;

            public string Label
            {
                get
                {
                    return label;
                }
                set
                {
                    label = value;
                }
            }

            public override DataGridViewCell CellTemplate
            {
                get
                {
                    return new MyDGVCheckBoxCell();
                }
            }
        }

        public class MyDGVCheckBoxCell : DataGridViewCheckBoxCell
        {
            private string label;            

            public string Label
            {
                get
                {
                    return label;
                }
                set
                {
                    label = value;
                }

            }

            public MyDGVCheckBoxCell()
            {               
            }

            protected override void Paint(Graphics graphics, Rectangle clipBounds, Rectangle cellBounds, int rowIndex, DataGridViewElementStates elementState, object value, object formattedValue, string errorText, DataGridViewCellStyle cellStyle, DataGridViewAdvancedBorderStyle advancedBorderStyle, DataGridViewPaintParts paintParts)
            {

                // the base Paint implementation paints the check box
                base.Paint(graphics, clipBounds, cellBounds, rowIndex, elementState, value, formattedValue, errorText, cellStyle, advancedBorderStyle, paintParts);

                // Get the check box bounds: they are the content bounds
                Rectangle contentBounds = this.GetContentBounds(rowIndex);

                // Compute the location where we want to paint the string.
                Point stringLocation = new Point();

                // Compute the Y.
                // NOTE: the current logic does not take into account padding.
                stringLocation.Y = cellBounds.Y + 2;


                // Compute the X.
                // Content bounds are computed relative to the cell bounds
                // - not relative to the DataGridView control.
                stringLocation.X = cellBounds.X + contentBounds.Right + 2;


                // Paint the string.
                if (this.Label == null)
                {
                    MyDGVCheckBoxColumn col = (MyDGVCheckBoxColumn)this.OwningColumn;
                    this.label = col.Label;
                }

                graphics.DrawString(this.Label, this.DataGridView.Font, System.Drawing.Brushes.DarkGreen, stringLocation);

            }

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (IsANonHeaderLinkCell(e))
            {
                MoveToLinked(e);
            }
            else if (IsANonHeaderButtonCell(e))
            {
                ColorDialog dlg = new ColorDialog();
                if (dlg.ShowDialog() == DialogResult.OK)
                {
                    int str;
                    str = dlg.Color.ToArgb();
                    dataGridViewSetAxes.Rows[e.RowIndex].Cells[e.ColumnIndex].Style.BackColor = Color.FromArgb(str);
                    dataGridViewSetAxes.Rows[e.RowIndex].Cells[e.ColumnIndex].Style.SelectionBackColor = Color.FromArgb(str);
                }
            }
        }

        private void MoveToLinked(DataGridViewCellEventArgs e)
        {
            string employeeId;
            object value = dataGridViewSetAxes.Rows[e.RowIndex].Cells[e.ColumnIndex].Value;
            if (value is DBNull) { return; }

            employeeId = value.ToString();
            DataGridViewCell boss = RetrieveSuperiorsLastNameCell(employeeId);
            if (boss != null)
            {
                dataGridViewSetAxes.CurrentCell = boss;
            }
        }

        private bool IsANonHeaderLinkCell(DataGridViewCellEventArgs cellEvent)
        {
            if (cellEvent.ColumnIndex != -1 && dataGridViewSetAxes.Columns[cellEvent.ColumnIndex] is DataGridViewLinkColumn && cellEvent.RowIndex != -1)
            { return true; }
            else { return false; }
        }

        private bool IsANonHeaderButtonCell(DataGridViewCellEventArgs cellEvent)
        {
            if (cellEvent.ColumnIndex != -1 && cellEvent.RowIndex == 3 && cellEvent.RowIndex != -1)
            { return true; }
            else { return (false); }
        }

        private DataGridViewCell RetrieveSuperiorsLastNameCell(string employeeId)
        {

            foreach (DataGridViewRow row in dataGridViewSetAxes.Rows)
            {
                //if (row.IsNewRow) { return null; }
                //if (row.Cells[ColumnName.EmployeeId.ToString()].Value.ToString().Equals(employeeId))
                //{
                //    return row.Cells[ColumnName.LastName.ToString()];
                //}
            }
            return null;
        }

        private void check_items_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxTime.Checked)
            {
                combo_item.Enabled = true;
                text_to.Enabled = true;
                text_from.Enabled = true;
            }
            else
            {
                combo_item.Enabled = false;
                text_to.Enabled = false; 
                text_from.Enabled = false;
            }
        }

        private void check_FileNumber_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxFileNo.Checked)
                text_FileNumber.Enabled = true;
            else
                text_FileNumber.Enabled = false;
        }

        private void check_CycleNumber_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxCycleNo.Checked)
                text_CycleNumber.Enabled = true;
            else
                text_CycleNumber.Enabled = false;
        }

        private void check_StepNumber_CheckedChanged(object sender, EventArgs e)
        {
            if (check_StepNumber.Checked)
                text_StepNumber.Enabled = true;
            else
                text_StepNumber.Enabled = false;
        }

        private void btn_refresh_Click(object sender, EventArgs e)
        {
            int cellidx = 0;

            //m_XAxisFormat.AxisMode = ((bool)dataGridViewSetAxes.Rows[1].Cells[cellidx].Value == true) ? AxisMode.AutoScaleLoose : AxisMode.Fixed;
            //m_XAxisFormat.RangeMax = double.Parse((string)dataGridViewSetAxes.Rows[2].Cells[cellidx].Value);
            //m_XAxisFormat.RangeMin = double.Parse((string)dataGridViewSetAxes.Rows[3].Cells[cellidx].Value);
            m_XAxisFormat.Inverted = (bool)dataGridViewSetAxes.Rows[1].Cells[cellidx].Value;
            m_XAxisFormat.ScaleType = (bool)dataGridViewSetAxes.Rows[2].Cells[cellidx].Value ? NationalInstruments.UI.ScaleType.Logarithmic : NationalInstruments.UI.ScaleType.Linear;
            m_XAxisFormat.AxisColor = ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[3].Cells[cellidx++]).Style.BackColor;

            //m_XAxisFormat.AxisMode = m_XAxisFormat.ScaleType == NationalInstruments.UI.ScaleType.Linear ? AxisMode.Fixed : AxisMode.AutoScaleLoose;

            for (int i = 0; i < 4; i++)
            {
                //m_YAxesFormat[i].AxisMode = ((bool)dataGridViewSetAxes.Rows[1].Cells[cellidx].Value == true) ? AxisMode.AutoScaleLoose : AxisMode.Fixed;
                //m_YAxesFormat[i].RangeMax = double.Parse((string)dataGridViewSetAxes.Rows[2].Cells[cellidx].Value);
                //m_YAxesFormat[i].RangeMin = double.Parse((string)dataGridViewSetAxes.Rows[3].Cells[cellidx].Value);
                m_YAxesFormat[i].Inverted = (bool)dataGridViewSetAxes.Rows[1].Cells[cellidx].Value;
                m_YAxesFormat[i].ScaleType = (bool)dataGridViewSetAxes.Rows[2].Cells[cellidx].Value ? NationalInstruments.UI.ScaleType.Logarithmic : NationalInstruments.UI.ScaleType.Linear;
                m_YAxesFormat[i].AxisColor = ((DataGridViewButtonCell)dataGridViewSetAxes.Rows[3].Cells[cellidx++]).Style.BackColor;

                //m_YAxesFormat[i].AxisMode = m_YAxesFormat[i].ScaleType == NationalInstruments.UI.ScaleType.Linear ? AxisMode.Fixed : AxisMode.AutoScaleLoose;
            }

            _DataFilter.TimeEnable = checkboxTime.Checked;
            _DataFilter.TimeType = (string)combo_item.SelectedItem;
            _DataFilter.StartTime = CoTypeString.StringToTimeSpan(text_to.Text);
            _DataFilter.EndTime = CoTypeString.StringToTimeSpan(text_from.Text);
            _DataFilter.CycNoEnable = checkboxCycleNo.Checked;
            _DataFilter.CycNoString = text_CycleNumber.Text;

            _DataFilter.StepNoEnable = check_StepNumber.Checked;
            _DataFilter.StepNoString = text_StepNumber.Text;
        }

        private void btn_cancel_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void dataGridView1_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            if (e.RowIndex != 3 && e.RowIndex != 3)
                return;

            m_OldValue = dataGridViewSetAxes.Rows[e.RowIndex].Cells[e.ColumnIndex].Value;
        }

        private void dataGridView1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex != 3 && e.RowIndex != 4)
                return;

            double temp;

            if (double.TryParse((string)dataGridViewSetAxes.Rows[e.RowIndex].Cells[e.ColumnIndex].Value, out temp) == false)
                dataGridViewSetAxes.Rows[e.RowIndex].Cells[e.ColumnIndex].Value = m_OldValue;
            else
                dataGridViewSetAxes.Rows[e.RowIndex].Cells[e.ColumnIndex].Value = CoTypeString.DoubleToString(temp);
        }

    }

    class MyDataGridViewCheckBoxCell : DataGridViewCheckBoxCell
    {
        protected override void Paint(System.Drawing.Graphics graphics, System.Drawing.Rectangle clipBounds, System.Drawing.Rectangle cellBounds, int rowIndex, DataGridViewElementStates elementState, object value, object formattedValue, string errorText, DataGridViewCellStyle cellStyle, DataGridViewAdvancedBorderStyle advancedBorderStyle, DataGridViewPaintParts paintParts)
        {
            base.Paint(graphics, clipBounds, cellBounds, rowIndex, elementState, value, formattedValue, errorText, cellStyle, advancedBorderStyle, paintParts);

            Rectangle contentBounds = this.GetContentBounds(rowIndex);

            // Compute the location where we want to paint the string.

            Point stringLocation = new Point();

            // Compute the Y.

            // NOTE: the current logic does not take into account padding.

            stringLocation.Y = cellBounds.Y + 2;

            // Compute the X.

            // Content bounds are computed relative to the cell bounds

            // - not relative to the DataGridView control.

            stringLocation.X = cellBounds.X + contentBounds.Right + 2;

            // Paint the string.

            graphics.DrawString(ToolTipText, Control.DefaultFont, System.Drawing.Brushes.Black, stringLocation);
        }
    }

    class MyDataGridViewCheckBoxColumn : DataGridViewCheckBoxColumn
    {
        public override DataGridViewCell CellTemplate
        {
            get
            {
                return new MyDataGridViewCheckBoxCell();
            }
        }
    }

}
