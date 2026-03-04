using NationalInstruments.UI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;

namespace ZiveLab.ZM
{
    public partial class frmSetPlotsColor : Form
    {
        public int ch;
        public string sch;
        public stLinkSifCh lnkch;
        public string serial;
        public int sifch;

        private int grptype;
        st_GrpCh_vars grpvars;

        public frmSetPlotsColor(int ich, st_GrpCh_vars grpvars, int grptype)
        {
            InitializeComponent();

            this.grpvars = grpvars;
            this.grptype = grptype;

            ch = ich;
            sch = ch.ToString();
            lnkch = gBZA.ChLnkLst[sch];
            serial = lnkch.sSerial;
            sifch = lnkch.SifCh;

            InitChannelColorGrid();
        }
        private void InitChannelColorGrid()
        {
            DataGridView dgv = dataGridView1;
            dgv.ReadOnly = true;
            dgv.AllowUserToAddRows = false;
            dgv.RowHeadersVisible = false;
            dgv.ColumnHeadersVisible = true;
            dgv.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
            dgv.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgv.ClearSelection();
            dgv.SelectionMode = DataGridViewSelectionMode.CellSelect;
            dgv.DefaultCellStyle.SelectionBackColor = Color.Transparent;
            dgv.DefaultCellStyle.SelectionForeColor = Color.Black;

            // col setting
            dgv.Columns.Clear();
            dgv.Columns.Add("colLabel", "");

            dgv.Columns.Add("colChannel0", "Main");
            for (int i = 1; i < grpvars.nAuxChCount + 1; i++)
            {
                dgv.Columns.Add("colChannel"+i, $"Aux CH{i}");
            }

            // row setting
            dgv.Rows.Clear();
            int rowIdx;
            DataGridViewRow row;
            // tech, grp type
            switch (grptype)
            {
                case 3:
                    rowIdx = dgv.Rows.Add();
                    row = dgv.Rows[rowIdx];
                    row.Cells["colLabel"].Value = "I";
                    rowIdx = dgv.Rows.Add();
                    row = dgv.Rows[rowIdx];
                    row.Cells["colLabel"].Value = "V";
                    break;
                case 1:
                    switch ((enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type)
                    {
                        case enTechType.TECH_HFR:
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Zreal";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Vdc";
                            break;
                        case enTechType.TECH_PRR:
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Rs";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "P_Rp";
                            break;
                        case enTechType.TECH_QIS:
                        case enTechType.TECH_EIS:
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "-Zimg";
                            break;
                        case enTechType.TECH_MON:
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Eoc";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Temp";
                            break;
                        case enTechType.TECH_DCH:
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Vdc";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Temp";
                            break;
                    }
                    break;
                case 2:
                    switch ((enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type)
                    {
                        case enTechType.TECH_HFR:
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Cs";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Cp";
                            break;
                        case enTechType.TECH_PRR:
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "R1 - Cs";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "R2 - Cs";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "R3 - Cs";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "R1 | Cp";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "R2 | Cp";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "R3 | Cp";
                            break;
                        case enTechType.TECH_QIS:
                        case enTechType.TECH_EIS:
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Zmag";
                            rowIdx = dgv.Rows.Add();
                            row = dgv.Rows[rowIdx];
                            row.Cells["colLabel"].Value = "Zphase";
                            break;
                        case enTechType.TECH_MON: // non
                        case enTechType.TECH_DCH: // non
                            break;
                    }
                    break;
            }
            dataGridView1.CellClick += dataGridView1_CellClick;
            UpdateChannelColorGrid();
        }

        private void UpdateChannelColorGrid()
        {
            DataGridView dgv = dataGridView1;
            for (int i = 0; i < grpvars.nAuxChCount + 1; i++)
            {
                switch (grptype)
                {
                    case 3:
                        for (int j = 0; j < dgv.RowCount; j++)
                            dgv.Rows[j].Cells[i + 1].Style.BackColor = grpvars.GrpItemsRT.PlotColor[i * 2 + j];
                        break;
                    case 1:
                        for (int j = 0; j < dgv.RowCount; j++)
                            dgv.Rows[j].Cells[i + 1].Style.BackColor = grpvars.GrpItems1.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                        switch ((enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type)
                        {
                            case enTechType.TECH_EIS:
                            case enTechType.TECH_QIS:
                            case enTechType.TECH_HFR:
                            case enTechType.TECH_PRR:
                                break;
                            case enTechType.TECH_MON:
                            case enTechType.TECH_DCH:
                                if(i!=0)
                                {
                                    dgv.Rows[1].Cells[i + 1].Value = "✕";
                                    dgv.Rows[1].Cells[i + 1].Style.BackColor = Color.LightGray;
                                    dgv.Rows[1].Cells[i + 1].Tag = "disabled";
                                }
                                break;
                        }
                        break;
                    case 2:
                        for (int j = 0; j < dgv.RowCount; j++)
                            dgv.Rows[j].Cells[i + 1].Style.BackColor = grpvars.GrpItems2.PlotColor[i * MBZA_Constant.MAX_GRAPH_PLOTS + j];
                        /*switch ((enTechType)gBZA.SifLnkLst[serial].MBZAIF.Oldtech[sifch].type)
                        {
                            case enTechType.TECH_HFR:
                            case enTechType.TECH_PRR:
                                break;
                            case enTechType.TECH_EIS:
                            case enTechType.TECH_QIS:
                            case enTechType.TECH_MON:
                            case enTechType.TECH_DCH:
                                break;
                        }*/
                        break;
                }
            }
        }
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0) return;
            if (e.ColumnIndex <= 0) return;

            int row = e.RowIndex;
            int col = e.ColumnIndex;

            Console.WriteLine($"클릭: {row}행 {col}열");

            if (dataGridView1.Rows[row].Cells[col].Tag != null && dataGridView1.Rows[row].Cells[col].Tag.ToString() == "disabled")
                return;

            ColorDialog colorDialog = new ColorDialog();
            colorDialog.Color = dataGridView1.Rows[row].Cells[col].Style.BackColor;
            if (colorDialog.ShowDialog() == DialogResult.OK)
            {
                Color newColor = colorDialog.Color;
                dataGridView1.Rows[row].Cells[col].Style.BackColor = newColor;
                switch (grptype)
                {
                    case 1:
                        grpvars.GrpItems1.PlotColor[(col - 1) * MBZA_Constant.MAX_GRAPH_PLOTS + row] = newColor;
                        break;
                    case 2:
                        grpvars.GrpItems2.PlotColor[(col - 1) * MBZA_Constant.MAX_GRAPH_PLOTS + row] = newColor;
                        break;
                    case 3:
                        grpvars.GrpItemsRT.PlotColor[(col - 1) * 2 + row] = newColor;
                        break;
                }
            }
            this.BeginInvoke(new System.Action(() =>
            {
                dataGridView1.ClearSelection();
                dataGridView1.Refresh();
            }));
        }

        private void buttonOK_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
            this.Close();
        }
    }
}
