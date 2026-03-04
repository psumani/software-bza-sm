using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Forms;
using System.Threading;
using System.IO;
using C1.Win.C1FlexGrid;
using System.Collections;
using System.Drawing.Printing;
using System.Diagnostics;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml;
using System.Drawing;

namespace ZiveLab.ZM.Dataview
{
    public partial class DataEditorForm : Form
    {
        public event EventHandler OpenSchEditorClick;
        public event EventHandler OpenGraphClick;
        public event EventHandler OpenDataEditorEvent;

        public int MaxAuxCount;
        private ZMF_File mResFile;
        private DataHeaderValues _DataHeaderValues;
        private Hashtable _BgWorkerTable = new Hashtable();

        private Stack<Stack<DeleteUndo>> _UndoItemStack;

        private int _LangIdx = 0;
        public int _Pad = 14;
        private bool _EnAlwaysOpenPath;
        private string _AlwaysOpenPath;
        private string _SchTempPath;
        private string _MsgBoxCaption;
        private int _TimeFormat;

        public bool bFileOpened;
        public int ZSharpTarget;
        
        private DataViewSet _dataviewset;

        // 외부 프로그램
        private ExtAppProc _extAppPath;

        public string MsgBoxCaption { set { _MsgBoxCaption = value; } }
        public bool EnAlwaysOpenPath { set { _EnAlwaysOpenPath = value; } }
        public string AlwaysOpenPath { set { _AlwaysOpenPath = value; } }
        public string SchTempPath { set { _SchTempPath = value; } }
        public int TimeFormat { set { _TimeFormat = value; } }
        public ExtAppProc ExtAppPath { set { _extAppPath = value; } }

        public DataViewSet dataviewset { set { _dataviewset = value; } }
        public DataEditorForm(bool viewOpenSch = true)
        {
            InitializeComponent();

            this.Icon = Util.BitmapToIcon(Properties.Resources.Report);
            bFileOpened = false;
            ZSharpTarget = -1;
            MaxAuxCount = 0;
            mResFile = new ZMF_File();

            _DataHeaderValues = new DataHeaderValues();
            _dataviewset = DataviewCommon.LoadFromSetFile();

            _TimeFormat = _dataviewset._dataConvSet.TimeFormat;
            tsbtnOpenSchedule.Visible = viewOpenSch;
            _EnAlwaysOpenPath = false;

            tsbtnViewGraph.Visible = true;
            tsbtnRunZMan.Visible = true;
            chkCycleNo.Checked = false;

            ChkDC.Checked = true;
            ChkDC.Text = "DC Data (";
            ChkDCAux.Checked = true;
            ChkDCAux.Text = "Auxilary    ) ";
            ChkEIS.Checked = true;
            ChkDC.Text = "EIS Data (";
            ChkEISAux.Checked = true;
            ChkDCAux.Text = "Auxilary    ) ";
            tbCycleNo.Text = "";
            tbCycleNo.Enabled = chkCycleNo.Checked;
            ChkDC.Enabled = false;
            ChkDCAux.Enabled = false;
            ChkEIS.Enabled = false;
            ChkEISAux.Enabled = false;
        }

        
        public void Initialize(int langidx)
        {
            SetLanguage(langidx);

            _UndoItemStack = new Stack<Stack<DeleteUndo>>();

            ChkDC.Checked = true;
            ChkDC.Text = "DC Data (";
            ChkDCAux.Checked = true;
            ChkDCAux.Text = "Auxilary    ) ";
            ChkEIS.Checked = true;
            ChkDC.Text = "EIS Data (";
            ChkEISAux.Checked = true;
            ChkDCAux.Text = "Auxilary    ) ";
            tbCycleNo.Text = "";
            tbCycleNo.Enabled = chkCycleNo.Checked;
            ChkDC.Enabled = false;
            ChkDCAux.Enabled = false;
            ChkEIS.Enabled = false;
            ChkEISAux.Enabled = false;
        }


        public void SetLanguage(int langidx)
        {
            _LangIdx = langidx;

            Properties.Resources.Culture = DataviewCommon.SetLanguage(this, langidx, typeof(DataEditorForm));
            _TimeFormat = _dataviewset._dataConvSet.TimeFormat;

            InitToolTip();
            InitLabel();

            RefreshGridColumn(DataFlexGrid, _dataviewset._dataConvSet.GetEnabledDataColList());
        }

        private void InitToolTip()
        {
            tsbtnOpen.ToolTipText = Properties.Resources.Open_Data_File;
            tsbtnReload.ToolTipText = Properties.Resources.Reload_Data_File;
            tsbtnStop.ToolTipText = Properties.Resources.Stop_Loading;
            tsbtnSave.ToolTipText = Properties.Resources.Save_As_Data_File;
            tsbtnOpenSchedule.ToolTipText = Properties.Resources.Open_Schedule_File;
            tsbtnSaveText.ToolTipText = Properties.Resources.Convert_To_Ascii_File;
            tsbtnExportExcel.ToolTipText = Properties.Resources.Convert_To_Excel_File;
            tsbtnPrint.ToolTipText = Properties.Resources.Print_Data;
            tsbtnFileHeaderInfor.ToolTipText = Properties.Resources.File_Information;
        }

        private void InitLabel()
        {
            string unitQ1 = _dataviewset._dataConvSet.UnitC ? "C" : "mAh";
            string unitQ2 = _dataviewset._dataConvSet.UnitC ? "C" : "Ah";
            string unitQ3 = _dataviewset._dataConvSet.UnitC ? "C/g" : "Ah/g";

            lblCapacity1.Text = string.Format(Properties.Resources.Capacity_x, unitQ1);
        }

        private void RefreshGridColumn(C1FlexGrid flexgrid, List<DataColItem> dciList)
        {
            flexgrid.Cols.Count = dciList.Count;

            int col = 0;

            foreach (DataColItem dci in dciList)
            {
                flexgrid[0, col] = dci.ToString();

                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col].TextAlign = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col].Width = (int)dci.ColumnWidth * 6;
                flexgrid.Cols[col].StyleFixed.Font = new System.Drawing.Font("Segoe UI", 8.25f);
                flexgrid.Cols[col].AllowEditing = dci.AllowEdit;
                flexgrid.Cols[col].Style.ForeColor = dci.AllowEdit ? System.Drawing.Color.DarkRed : System.Drawing.Color.Black;
                flexgrid.Cols[col].AllowDragging = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowMerging = false;
                flexgrid.Cols[col].AllowSorting = false;

                switch (dci.ColumnID)
                {
                    case DataColItem.eColumnId.CYCTIME:
                    case DataColItem.eColumnId.TESTTIME:
                        flexgrid[0, col] = dci.GetColName(false);
                        break;

                    case DataColItem.eColumnId.AUX1:
                    case DataColItem.eColumnId.AUX2:
                    case DataColItem.eColumnId.AUX3:
                    case DataColItem.eColumnId.AUX4:
                    case DataColItem.eColumnId.AUX5:
                    case DataColItem.eColumnId.AUX6:
                    case DataColItem.eColumnId.AUX7:
                    case DataColItem.eColumnId.AUX8:
                    case DataColItem.eColumnId.AUX9:
                    case DataColItem.eColumnId.AUX10:
                    case DataColItem.eColumnId.AUX11:
                    case DataColItem.eColumnId.AUX12:
                        flexgrid.Cols[col].AllowEditing = false;
                        flexgrid.Cols[col].Style.ForeColor = System.Drawing.Color.Black;
                        break;

                    case DataColItem.eColumnId.EOC:
                        flexgrid.Cols[col].AllowEditing = false;
                        flexgrid.Cols[col].Style.ForeColor = System.Drawing.Color.Black;
                        break;
                }

                //switch(_dataFileReader.FileType)
                //{
                //    case DataFileReader.eFileType.ZSharp:

                //        break;
                //}                

                col++;
            }

            //SetColDataFormat();

            flexgrid.Rows[0].Height = 25;
        }

        private void InitGridColumn(C1FlexGrid flexgrid, List<DataColItem> dciList)
        {
            int auxidx;
            flexgrid.Clear(ClearFlags.All);

            flexgrid.Cols.Count = dciList.Count;

            int col = 0;

            foreach (DataColItem dci in dciList)
            {

                switch (dci.ColumnID)
                {
                    case DataColItem.eColumnId.AUX1:
                    case DataColItem.eColumnId.AUX2:
                    case DataColItem.eColumnId.AUX3:
                    case DataColItem.eColumnId.AUX4:
                    case DataColItem.eColumnId.AUX5:
                    case DataColItem.eColumnId.AUX6:
                    case DataColItem.eColumnId.AUX7:
                    case DataColItem.eColumnId.AUX8:
                    case DataColItem.eColumnId.AUX9:
                    case DataColItem.eColumnId.AUX10:
                    case DataColItem.eColumnId.AUX11:
                    case DataColItem.eColumnId.AUX12:
                        auxidx = dci.ColumnID - DataColItem.eColumnId.AUX1;
                        if (auxidx >= MaxAuxCount) continue;
                        break;
                    case DataColItem.eColumnId.AUX01_ZRE:
                    case DataColItem.eColumnId.AUX01_ZIM:
                    case DataColItem.eColumnId.AUX02_ZRE:
                    case DataColItem.eColumnId.AUX02_ZIM:
                    case DataColItem.eColumnId.AUX03_ZRE:
                    case DataColItem.eColumnId.AUX03_ZIM:
                    case DataColItem.eColumnId.AUX04_ZRE:
                    case DataColItem.eColumnId.AUX04_ZIM:
                    case DataColItem.eColumnId.AUX05_ZRE:
                    case DataColItem.eColumnId.AUX05_ZIM:
                    case DataColItem.eColumnId.AUX06_ZRE:
                    case DataColItem.eColumnId.AUX06_ZIM:
                    case DataColItem.eColumnId.AUX07_ZRE:
                    case DataColItem.eColumnId.AUX07_ZIM:
                    case DataColItem.eColumnId.AUX08_ZRE:
                    case DataColItem.eColumnId.AUX08_ZIM:
                    case DataColItem.eColumnId.AUX09_ZRE:
                    case DataColItem.eColumnId.AUX09_ZIM:
                    case DataColItem.eColumnId.AUX10_ZRE:
                    case DataColItem.eColumnId.AUX10_ZIM:
                    case DataColItem.eColumnId.AUX11_ZRE:
                    case DataColItem.eColumnId.AUX11_ZIM:
                    case DataColItem.eColumnId.AUX12_ZRE:
                    case DataColItem.eColumnId.AUX12_ZIM:
                        auxidx = dci.ColumnID - DataColItem.eColumnId.AUX01_ZRE;
                        auxidx = auxidx / 2;
                        if (auxidx >= MaxAuxCount) continue;
                        break;
                }
                flexgrid[0, col] = dci.ToString();
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col].TextAlign = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col].Width = (int)dci.ColumnWidth * 6;
                flexgrid.Cols[col].StyleFixed.Font = new System.Drawing.Font("Segoe UI", 8.25f);
                flexgrid.Cols[col].AllowEditing = dci.AllowEdit;
                flexgrid.Cols[col].Style.ForeColor = dci.AllowEdit ? System.Drawing.Color.DarkRed : System.Drawing.Color.Black;
                flexgrid.Cols[col].AllowDragging = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowMerging = false;
                flexgrid.Cols[col].AllowSorting = false;

                switch (dci.ColumnID)
                {
                    case DataColItem.eColumnId.CYCTIME:
                    case DataColItem.eColumnId.TESTTIME:
                         flexgrid[0, col] = dci.GetColName(false);
                        break;

                    case DataColItem.eColumnId.AUX1:
                    case DataColItem.eColumnId.AUX2:
                    case DataColItem.eColumnId.AUX3:
                    case DataColItem.eColumnId.AUX4:
                    case DataColItem.eColumnId.AUX5:
                    case DataColItem.eColumnId.AUX6:
                    case DataColItem.eColumnId.AUX7:
                    case DataColItem.eColumnId.AUX8:
                    case DataColItem.eColumnId.AUX9:
                    case DataColItem.eColumnId.AUX10:
                    case DataColItem.eColumnId.AUX11:
                    case DataColItem.eColumnId.AUX12:
                        flexgrid.Cols[col].AllowEditing = false;
                        flexgrid.Cols[col].Style.ForeColor = System.Drawing.Color.Black;
                        break;

                    case DataColItem.eColumnId.EOC:
                        flexgrid.Cols[col].AllowEditing = false;
                        flexgrid.Cols[col].Style.ForeColor = System.Drawing.Color.Black;
                        break;
                }

                col++;
            }
            flexgrid.Cols.Count = col;
            flexgrid.Rows[0].Height = 25;
        }
       
        private void EnableToolStripButton(ToolStrip ts, ToolStripButton btn, bool enable)
        {
            ts.Invoke(new MethodInvoker(delegate
            {
                btn.Enabled = enable;
            }));
        }

        void FormDataEditor_DataFileLoaded(object sender, EventArgs e)
        {
            EnableToolStripButton(toolStripMain, tsbtnViewGraph, true);
        }

        private void FormDataEditor_ScheduleLoaded(object sender, EventArgs e)
        {
            EnableToolStripButton(toolStripMain, tsbtnOpenSchedule, true);
        }

        private void FormDataEditor_Load(object sender, EventArgs e)
        {
                     
        }

        private void tsbtnOpen_Click(object sender, EventArgs e)
        {
            string filter = string.Format("{0}(*.zmf)|*.zmf|{1} (*.*)|*.*", Properties.Resources.BZADataFiles, Properties.Resources.All_Files);
  

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Title = Properties.Resources.Open_Data_File;
            dlg.InitialDirectory = _EnAlwaysOpenPath ? _AlwaysOpenPath : _dataviewset._GraphSetEx.OpenPath;
            dlg.Multiselect = false;
            dlg.Filter = filter;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                LoadProc(dlg.FileName);
                _dataviewset._GraphSetEx.OpenPath = Path.GetDirectoryName(dlg.FileName);
                DataviewCommon.SaveToSetFile(_dataviewset);
            }
        }

        private void tsbtnReload_Click(object sender, EventArgs e)
        {
            Reload();
        }

        private void Reload()
        {
            LoadProc(_DataHeaderValues._FileName);
        }

        private void LoadProc(string filename)
        {
            if (File.Exists(filename))
            {
                _DataHeaderValues._FileName = filename;

                if (!backgroundWorker.IsBusy)
                {
                    tsbtnOpen.Enabled = false;
                    tsbtnReload.Enabled = false;
                    tsbtnStop.Enabled = true;
                    tsbtnSave.Enabled = false;
                    tsbtnOpenSchedule.Enabled = false;
                    tsbtnSaveText.Enabled = false;
                    tsbtnExportExcel.Enabled = false;
                    tsbtnViewGraph.Enabled = false;
                    tsbtnRunZMan.Enabled = false;
                    tsbtnPrint.Enabled = false;
                    tsbtnFileHeaderInfor.Enabled = false;
                    groupBoxFilter.Enabled = false;
                    groupBoxViewOpt.Enabled = false;

                    ribbonProgressBar1.Minimum = 0;
                    ribbonProgressBar1.Maximum = 100;
                    ribbonProgressBar1.Value = 0;
                    ribbonProgressBar1.Visible = true;
                    ribbonLabel2.Text = "0%";
                    ribbonLabel2.Visible = true;

                    ClearInfor();

                    DataFlexGrid.Rows.Count = 1;

                    Cursor = Cursors.WaitCursor;

                    backgroundWorker.RunWorkerAsync(filename);
                }
            }
        }

        private void ClearInfor()
        {
            textFileName.Value = string.Empty;
            textTestTime.Text = string.Empty;
            textDataCount.Text = string.Empty;
            textUser.Text = string.Empty;
            textDataMemo.Text = string.Empty;
            textScheduleFile.Text = string.Empty;
            tbDataCapacity.Text = string.Empty;
        }

        private void SaveProc(string filename)
        {   
            if (!backgroundWorkerSave.IsBusy)
            {
                tsbtnOpen.Enabled = false;
                tsbtnReload.Enabled = false;
                tsbtnStop.Enabled = true;
                tsbtnSave.Enabled = false;
                tsbtnOpenSchedule.Enabled = false;
                tsbtnSaveText.Enabled = false;
                tsbtnExportExcel.Enabled = false;
                tsbtnViewGraph.Enabled = false;
                tsbtnPrint.Enabled = false;
                groupBoxFilter.Enabled = false;
                groupBoxViewOpt.Enabled = false;

                ribbonProgressBar1.Minimum = 0;
                ribbonProgressBar1.Maximum = 100;
                ribbonProgressBar1.Value = 0;
                ribbonProgressBar1.Visible = true;
                ribbonLabel2.Text = "0%";
                ribbonLabel2.Visible = true;

                this.Cursor = Cursors.AppStarting;

                backgroundWorkerSave.RunWorkerAsync(filename);
            }            
        }

        private void ConvertToTextProc(string filename, eDelimiter ed, int Target = -1)
        {
            if (!backgroundWorkerText.IsBusy)
            {
                tsbtnOpen.Enabled = false;
                tsbtnReload.Enabled = false;
                tsbtnStop.Enabled = true;
                tsbtnSave.Enabled = false;
                tsbtnOpenSchedule.Enabled = false;
                tsbtnSaveText.Enabled = false;
                tsbtnExportExcel.Enabled = false;
                tsbtnViewGraph.Enabled = false;
                tsbtnRunZMan.Enabled = false;
                tsbtnPrint.Enabled = false;
                tsbtnFileHeaderInfor.Enabled = false;
                groupBoxFilter.Enabled = false;
                groupBoxViewOpt.Enabled = false;

                ribbonProgressBar1.Minimum = 0;
                ribbonProgressBar1.Maximum = 100;
                ribbonProgressBar1.Value = 0;
                ribbonProgressBar1.Visible = true;
                ribbonLabel2.Text = "0%";
                ribbonLabel2.Visible = true;

                _TimeFormat = _dataviewset._dataConvSet.TimeFormat;
                object[] param = new object[] { filename, ed, Target };

                this.Cursor = Cursors.AppStarting;

                backgroundWorkerText.RunWorkerAsync(param);
            }     
        }

        private void ConvertToExcelProc(string filename, eExcelFormat eef)
        {
            if (!backgroundWorkerExcel.IsBusy)
            {
                tsbtnOpen.Enabled = false;
                tsbtnReload.Enabled = false;
                tsbtnStop.Enabled = true;
                tsbtnSave.Enabled = false;
                tsbtnOpenSchedule.Enabled = false;
                tsbtnSaveText.Enabled = false;
                tsbtnExportExcel.Enabled = false;
                tsbtnViewGraph.Enabled = false;
                groupBoxFilter.Enabled = false;
                groupBoxViewOpt.Enabled = false;

                tsbtnRunZMan.Enabled = false;
                tsbtnPrint.Enabled = false;
                tsbtnFileHeaderInfor.Enabled = false;

                ribbonProgressBar1.Minimum = 0;
                ribbonProgressBar1.Maximum = 100;
                ribbonProgressBar1.Value = 0;
                ribbonProgressBar1.Visible = true;
                ribbonLabel2.Text = "0%";
                ribbonLabel2.Visible = true;

                _TimeFormat = _dataviewset._dataConvSet.TimeFormat;
                object[] param = new object[] { filename, eef };

                this.Cursor = Cursors.AppStarting;

                backgroundWorkerExcel.RunWorkerAsync(param);
            }
        }

        private void tsbtnSave_Click(object sender, EventArgs e)
        {

            string extension = Path.GetExtension(_DataHeaderValues._FileName);

            SaveFileDialog dlg = new SaveFileDialog();
            dlg.Title = Properties.Resources.Save_As_Data_File;
            dlg.InitialDirectory = Path.GetDirectoryName(_DataHeaderValues._FileName);
            dlg.FileName = Path.GetFileNameWithoutExtension(_DataHeaderValues._FileName) + string.Format("({0:MMddHHmmss})", DateTime.Now) + extension;
            dlg.Filter = string.Format("{0} (*.zmf)|*.zmf", Properties.Resources.BZADataFiles);
            dlg.DefaultExt = extension;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                SaveProc(dlg.FileName);
            }
        }

        private void tsbtnOpenSchedule_Click(object sender, EventArgs e)
        {
            if (bFileOpened == false)
            {
                MessageBox.Show("The data file has not been opened.");
                return;
            }
            
            OpenSchEditorClick?.Invoke(sender, new DataViewEventArgs(string.Empty, _DataHeaderValues._FileName));     
        }

        private char[] Delimiter = new char[] { '\t', ',', ' ' };

        private void tsbtnSaveText_Click(object sender, EventArgs e)
        {
            if (bFileOpened == false)
            {
                MessageBox.Show("The data file has not been opened.");
                return;
            }
            if (mResFile.datacount < 1)
            {
                MessageBox.Show("There is no data.");
                return;
            }

            DelimiterForm dlg = new DelimiterForm(_LangIdx);
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                string extention = "txt";

                if (dlg.Delimiter == eDelimiter.Comma)
                    extention = "csv";

                SaveFileDialog savedlg = new SaveFileDialog();
                savedlg.Title = Properties.Resources.Save_Ascii_File;
                savedlg.InitialDirectory = Path.GetDirectoryName(_DataHeaderValues._FileName);
                savedlg.FileName = Path.GetFileNameWithoutExtension(_DataHeaderValues._FileName);
                savedlg.Filter = string.Format("{1} (*.{0})|*.{0}", extention, Properties.Resources.Ascii_Files);
                savedlg.DefaultExt = extention;

                if (savedlg.ShowDialog() == DialogResult.OK)
                {
                    ConvertToTextProc(savedlg.FileName, dlg.Delimiter);
                }
            }
        }

        private void tsbtnExportExcel_Click(object sender, EventArgs e)
        {
            if (bFileOpened == false)
            {
                MessageBox.Show("The data file has not been opened.");
                return;
            }
            if (mResFile.datacount < 1)
            {
                MessageBox.Show("There is no data.");
                return;
            }

            ExcelTypeForm dlg = new ExcelTypeForm(_LangIdx);
            if (dlg.ShowDialog() == DialogResult.OK)
            {
               
                SaveFileDialog savedlg = new SaveFileDialog();
                savedlg.Title = Properties.Resources.Save_Excel_File;
                savedlg.InitialDirectory = Path.GetDirectoryName(_DataHeaderValues._FileName);
                savedlg.FileName = Path.GetFileNameWithoutExtension(_DataHeaderValues._FileName);
                savedlg.Filter = string.Format("{1} (*.{0})|*.{0}", dlg.Extention, Properties.Resources.Excel_Files);
                savedlg.DefaultExt = dlg.Extention;

                if (savedlg.ShowDialog() == DialogResult.OK)
                {
                    ConvertToExcelProc(savedlg.FileName, dlg.ExcelFormat);
                }
            }
        }
        

        private object _PrevValue = null;

        private void dataFlexGrid_BeforeEdit(object sender, RowColEventArgs e)
        {
            C1FlexGrid c1fg = (C1FlexGrid)sender;

            _PrevValue = c1fg[e.Row, e.Col];
        }

        private void dataFlexGrid_BeforeDeleteRow(object sender, RowColEventArgs e)
        {
            if (MessageBox.Show(Properties.Resources.Msg_DelSelRow_Q, _MsgBoxCaption, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                e.Cancel = true;
        }

        private void tsbtnPrint_Click(object sender, EventArgs e)
        {
            if (bFileOpened == false)
            {
                MessageBox.Show("The data file has not been opened.");
                return;
            }
            if (mResFile.datacount < 1)
            {
                MessageBox.Show("There is no data.");
                return;
            }

            if (DataFlexGrid.Rows.Count > 1)
            {
                PrintDocument pd = DataFlexGrid.PrintParameters.PrintDocument;
                pd.DefaultPageSettings.Landscape = true;
                pd.DefaultPageSettings.Margins.Left = 50;
                pd.DefaultPageSettings.Margins.Top = 50;
                pd.DefaultPageSettings.Margins.Right = 50;
                pd.DefaultPageSettings.Margins.Bottom = 50;

                PrintDialog pdlg = new PrintDialog();
                if (pdlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    pd.PrinterSettings = pdlg.PrinterSettings;
                    //pd.Print();
                    DataFlexGrid.PrintParameters.PrintDocument.PrinterSettings = pdlg.PrinterSettings;
                    DataFlexGrid.PrintParameters.HeaderFont = this.Font;
                    DataFlexGrid.PrintParameters.FooterFont = this.Font;

                    //미리보기
                    string header = string.Format("##### {0} #####", Properties.Resources.Information) + "\n";
                    header += string.Format("{1} : {0}", mResFile.sfilename, Properties.Resources.Test_Data_File) + "\n";
                    header += string.Format("{1} : {0}", mResFile.GetStartDateTime().ToString("yyyy/MM/dd HH:mm:ss"), Properties.Resources.Test_Duration);
                    DateTime EndDateTime = mResFile.GetEndDateTiem();
                    if (EndDateTime < DateTime.MaxValue)
                        header += string.Format(" ~ {0}", EndDateTime.ToString("yyyy/MM/dd HH:mm:ss"));
                    header += "\n";
                    //header += string.Format("Data Count : {0}", mResFile.datacount) + "\r\n";
                    header += string.Format("{0}, {1} ", mResFile.tmphead.mInfo.GetUser(), mResFile.tmphead.mInfo.GetBattId()) + "\n";
                    header += string.Format("{1} : {0}", mResFile.tmphead.mInfo.GetMemo(), Properties.Resources.Memo) + "\n";
                    //header += string.Format("Schedule File : {0}", mResFile.tmphead.mInfo.GetTechFile() + "\r\n";

                    DataFlexGrid.PrintGrid("C1FlexGrid", PrintGridFlags.FitToPageWidth | PrintGridFlags.ShowPreviewDialog, header, "\t\tPage {0} of {1}");
                }
            }
        }
        
        #region Public
        public void LoadData(string filename)
        {
            LoadProc(filename);
        }
        #endregion  

        private delegate void SetDataSourceCallback(C1FlexGrid flexgrid, object src);

        public void RefreshCoulmn()
        { 
            int col = 6;
            if (DataFlexGrid.Cols.Count < 40) return;
            DataFlexGrid.Cols[col++].Visible = ChkDC.Checked ? true : false;
            DataFlexGrid.Cols[col++].Visible = ChkDC.Checked ? true : false;
            DataFlexGrid.Cols[col++].Visible = ChkDC.Checked ? true : false;
            DataFlexGrid.Cols[col++].Visible = ChkDC.Checked ? true : false;
            DataFlexGrid.Cols[col++].Visible = ChkDC.Checked ? true : false;
            DataFlexGrid.Cols[col++].Visible = ChkDC.Checked ? true : false;
            for (int i = 0; i < 12; i++)
            {
                DataFlexGrid.Cols[col++].Visible = (ChkDCAux.Checked && (_DataHeaderValues.MaxAuxCh > i)) ? true : false;
            }
            DataFlexGrid.Cols[col++].Visible = ChkEIS.Checked ? true : false;
            DataFlexGrid.Cols[col++].Visible = ChkEIS.Checked ? true : false;
            DataFlexGrid.Cols[col++].Visible = ChkEIS.Checked ? true : false;
            for (int i = 0; i < 12; i++)
            {
                DataFlexGrid.Cols[col++].Visible = (ChkEISAux.Checked && (_DataHeaderValues.MaxAuxCh > i)) ? true : false;
                DataFlexGrid.Cols[col++].Visible = (ChkEISAux.Checked && (_DataHeaderValues.MaxAuxCh > i)) ? true : false;
            }
        }
        public void SetDataSource(C1FlexGrid flexgrid, object src)
        {
            if (flexgrid.InvokeRequired)
            {
                flexgrid.Invoke(new SetDataSourceCallback(SetDataSource), new object[] { flexgrid, src });
            }
            else
            {
                flexgrid.DataSource = src;

                int col = 1;

                // Index
                flexgrid.Cols[col].Width = 70;
                flexgrid.Cols[col].AllowEditing = false;
                //flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.GeneralCenter;
                // Test Time
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                //flexgrid.Cols[col].Format = "d:hh:mm:ss.fff";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.CenterCenter;
                // Cycle No.
                flexgrid.Cols[col].Width = 70;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.Default;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.CenterCenter;
                // Cycle Time
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.CenterCenter;
                // Step No
                flexgrid.Cols[col].Width = 70;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.Default;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.CenterCenter;
                // Step Time
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.CenterCenter;

                // Current
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = true;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // Voltage
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = true;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // Power
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // Load
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // Sum Q
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // Sum E
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                

                for (int i = 0; i < 12; i++)
                {
                    // Auxiliary
                    flexgrid.Cols[col].Width = -1;
                    flexgrid.Cols[col].AllowEditing = true;
                    flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                    flexgrid.Cols[col].AllowSorting = false;
                    flexgrid.Cols[col].Format = "e5";
                    flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                    flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                }

                // freq
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = true;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // Zre
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = true;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // Zim
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = true;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;

                for (int i = 0; i < 12; i++)
                {
                    // Aux Zre
                    flexgrid.Cols[col].Width = -1;
                    flexgrid.Cols[col].AllowEditing = true;
                    flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                    flexgrid.Cols[col].AllowSorting = false;
                    flexgrid.Cols[col].Format = "e5";
                    flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                    flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                    // Aux Zim
                    flexgrid.Cols[col].Width = -1;
                    flexgrid.Cols[col].AllowEditing = true;
                    flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                    flexgrid.Cols[col].AllowSorting = false;
                    flexgrid.Cols[col].Format = "e5";
                    flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                    flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                }
                // Temperature
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = true;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "F2";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // OCP
                flexgrid.Cols[col].Width = -1;
                flexgrid.Cols[col].AllowEditing = true;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].Format = "e5";
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.RightCenter;
                // Range
                flexgrid.Cols[col].Width = 70;
                flexgrid.Cols[col].AllowEditing = false;
                flexgrid.Cols[col].AllowFiltering = AllowFiltering.None;
                flexgrid.Cols[col].AllowSorting = false;
                flexgrid.Cols[col].TextAlignFixed = TextAlignEnum.CenterCenter;
                flexgrid.Cols[col++].TextAlign = TextAlignEnum.CenterCenter;
            }
        }
        
        private void FormDataEditor_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (mResFile.bopen)
                mResFile.CloseFile();
        }

        private void tsbtnStop_Click(object sender, EventArgs e)
        {
            if (backgroundWorker.WorkerSupportsCancellation)
                backgroundWorker.CancelAsync();

            if (backgroundWorkerSave.WorkerSupportsCancellation)
                backgroundWorkerSave.CancelAsync();

            if (backgroundWorkerText.WorkerSupportsCancellation)
                backgroundWorkerText.CancelAsync();

            if (backgroundWorkerExcel.WorkerSupportsCancellation && backgroundWorkerExcel.IsBusy)
                backgroundWorkerExcel.CancelAsync();
        }
        
        private void backgroundWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            DataLoading(sender, e); 
        }

        private void DataLoading(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker bgWorker = sender as BackgroundWorker;
            string fileName = (string)e.Argument;
            int oldPercent = -1;

            if (mResFile.Open(fileName) == false)
            {
                e.Result = new object[] { Properties.Resources.Error_c_Open_failed };
                return;
            }

            bgWorker.ReportProgress(mResFile.Percent, new object[] { Properties.Resources.Loading_ddd, mResFile.PercentDouble });

            _DataHeaderValues = mResFile.dhv;
            MaxAuxCount = _DataHeaderValues.MaxAuxCh;

            while (true)
            {
                if((bgWorker.CancellationPending))
                {
                    e.Result = new object[] { Properties.Resources.User_Stop };
                    return;
                }
                else
                {
                    int result = mResFile.ReadDatas();
                    
                    if (result == -1)
                    {

                        break;
                    }

                    double dpercent = (int)((double)mResFile.FilePosition / (double)mResFile.FileLength * 100);
                    int ipercent = (int)dpercent;

                    if (oldPercent != ipercent)
                    {
                        oldPercent = ipercent;
                        bgWorker.ReportProgress(ipercent, new object[] { Properties.Resources.Loading_ddd, dpercent });
                    }

                    Thread.Sleep(0);
                }
            }

            mResFile.Analysis();
            
            e.Result = new object[] { Properties.Resources.Loaded };
        }        

        private void backgroundWorker_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            object[] staArr = (object[])e.UserState;

            string message = (string)staArr[0];
            double percent = (double)staArr[1];

            ribbonLabel1.Text = message;
            ribbonLabel2.Text = string.Format(" {0:F1}%", percent);
            ribbonProgressBar1.Value = e.ProgressPercentage;            
        }

        private delegate void SetFileNameCB(string text, System.Drawing.Color foreColor);
        private delegate void SetTextCB(TextBox textbox, string text);
        private delegate void SetLabelCB(Label textbox, string text);

        private void SetFileName(string text, System.Drawing.Color foreColor)
        {
            if (textFileName.InvokeRequired)
            {
                textFileName.Invoke(new SetFileNameCB(SetFileName), new object[] { text, foreColor });
            }
            else
            {
                textFileName.Value = text;
                textFileName.ForeColor = foreColor;
            }
        }

        private void SetText(TextBox textbox, string text)
        {
            if (textbox.InvokeRequired)
            {
                textbox.Invoke(new SetTextCB(SetText), new object[] { textbox, text });
            }
            else
            {
                textbox.Text = text;
            }
        }

        private void SetText(Label textbox, string text)
        {
            if (textbox.InvokeRequired)
            {
                textbox.Invoke(new SetLabelCB(SetText), new object[] { textbox, text });
            }
            else
            {
                textbox.Text = text;
            }
        }

        private void UpdateHeader()
        {
            SetFileName(_DataHeaderValues._FileName, System.Drawing.Color.Black);
            SetText(textTestTime, mResFile.GetTestDuration());
            SetText(textScheduleFile, mResFile.tmphead.mInfo.GetTechFile());
            SetText(textUser, mResFile.tmphead.mInfo.GetUser());
            SetText(textDataMemo, mResFile.tmphead.mInfo.GetMemo());                    
            SetText(tbDataCapacity, (mResFile.tmphead.tech.info.Capa).ToString());
            SetText(tbCellType, mResFile.tmphead.mInfo.GetBattId());
            SetText(tbWriterName, mResFile.tmphead.tech.info.GetCreater());
        }
        
        private void UpdateDataCount(long count)
        {
            SetText(textDataCount, count.ToString());
        }

        private void backgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            object[] resArr = (object[])e.Result;

            string message = (string)resArr[0];

            tsbtnOpen.Enabled = true;
            tsbtnReload.Enabled = true;
            tsbtnStop.Enabled = false;
            tsbtnSave.Enabled = true;
            tsbtnOpenSchedule.Enabled = true;
            tsbtnSaveText.Enabled = true;
            tsbtnExportExcel.Enabled = true;
            tsbtnViewGraph.Enabled = true;

            if (mResFile.bopen)
            {
                UpdateHeader();
                _DataHeaderValues = mResFile.dhv;

                tsbtnRunZMan.Enabled = _extAppPath == null ? false : File.Exists(_extAppPath.ZMan);            
                textDataCount.Text = mResFile.GetDatacount().ToString();
             }
            _DataHeaderValues.RefreshInfo();
            ChkDC.Checked = true;
            ChkDC.Enabled = true;
            if (_DataHeaderValues.bDCOnly == true)
            {
                ChkDC.Checked = true;
                ChkDC.Enabled = false;
                if (_DataHeaderValues.MaxAuxCh == 0)
                {
                    ChkDC.Text = "DC Data";
                    ChkDCAux.Checked = false;
                    ChkDCAux.Visible = false;
                    ChkDCAux.Enabled = false;
                }
                else
                {
                    ChkDC.Text = "DC Data (";
                    ChkDCAux.Checked = true;
                    ChkDCAux.Visible = true;
                    ChkDCAux.Enabled = true;
                }

                ChkEIS.Checked = false;
                ChkEIS.Visible = false;
                ChkEISAux.Checked = false;
                ChkEISAux.Visible = false;
                
            }
            else
            {
                ChkDC.Checked = true;
                ChkDC.Enabled = true;

                if (_DataHeaderValues.MaxAuxCh == 0)
                {
                    ChkEIS.Text = "EIS Data";
                    ChkEIS.Visible = true;
                    ChkEIS.Checked = true;
                    ChkEISAux.Checked = false;
                    ChkEISAux.Visible = false;

                    ChkDC.Text = "DC Data";
                    ChkDCAux.Checked = false;
                    ChkDCAux.Visible = false;
                    ChkDCAux.Enabled = false;
                }
                else
                {
                    ChkEIS.Text = "EIS Data (";
                    ChkEIS.Visible = true;
                    ChkEIS.Checked = true;
                    ChkEISAux.Checked = true;
                    ChkEISAux.Visible = true;

                    ChkDC.Text = "DC Data (";
                    ChkDCAux.Checked = true;
                    ChkDCAux.Visible = true;
                    ChkDCAux.Enabled = true;
                }
            }

            
            
            tsbtnPrint.Enabled = true;     
            tsbtnFileHeaderInfor.Enabled = true;


            ribbonLabel1.Text = message;
            ribbonProgressBar1.Visible = false;            
            ribbonLabel2.Visible = false;

            InitGridColumn(DataFlexGrid, _dataviewset._dataConvSet.GetEnabledDataColList());


            UpdateDataFlexGrid(mResFile.gdList);

            _UndoItemStack.Clear();

            btnUndo.Enabled = false;

            chkCycleNo.Checked = false;

            groupBoxFilter.Enabled = true;
            groupBoxViewOpt.Enabled = true;

            mResFile.CloseFile();
            RefreshCoulmn();
            bFileOpened = true;
            Cursor = Cursors.Default;
        }

        private void UpdateDataFlexGrid(List<UnitReportData> urgdList)
        {
            if (urgdList == null)
                return;

            DataFlexGrid.BeginUpdate();

            foreach(UnitReportData urgd in urgdList)
            {
                SetDataRow(urgd);
            }

            DataFlexGrid.EndUpdate();
        }

        private int _OldPercent;        

        private void backgroundWorkerText_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;

            object[] param = (object[])e.Argument;

            string filename = (string)param[0];
            eDelimiter delimiter = (eDelimiter)param[1];
            ZSharpTarget = (int)param[2];
            string errmsg;

            DataFileTextWriter dftw = new DataFileTextWriter(_dataviewset._dataConvSet.UnitC);
            if (dftw.Create(filename, delimiter, out errmsg) == false)
            {
                string message = string.Format("{0} : {1}", Properties.Resources.Error, errmsg);
                e.Result = new BackgroundWorkerResult(message);
                return;
            }

            _OldPercent = -1;
  
            worker.ReportProgress(1);
            if (ZSharpTarget >= 0) dftw.ColZSharp(ZSharpTarget);
            else dftw.ColLanguage(_dataviewset._dataConvSet.UnitC, _LangIdx);

            int errcode = dftw.WriteHeader(_DataHeaderValues);

            if (errcode != Define.NO_ERROR)
            {
                e.Result = new BackgroundWorkerResult(Properties.Resources.Error);
                return;
            }

            worker.ReportProgress(2);

            int length;
            int count;
            int index;            


            length = DataFlexGrid.Rows.Count;
            count = 0;
            index = 0;
            if (ZSharpTarget >= 0) dftw.WriteColumnZSharp(_dataviewset._dataConvSet, _Pad, ZSharpTarget);
            else    dftw.WriteColumn(_dataviewset._dataConvSet,_Pad, MaxAuxCount);

            for (int i = 1; i < length; i++)
            {
                if ((worker.CancellationPending == true))
                {
                    e.Result = new BackgroundWorkerResult(Properties.Resources.Stop, filename);
                    dftw.Close();
                    return;
                }
                else
                {
                    if (DataFlexGrid.Rows[i].IsVisible)
                    {
                        GridRowFlag grf = DataFlexGrid.Rows[i].UserData as GridRowFlag;
                        UnitReportData urgd = (UnitReportData)grf.Data;
                        if (ZSharpTarget >= 0) errcode = dftw.ZSharpWriteData(index++, urgd, delimiter, _Pad, null, ZSharpTarget);
                        else errcode = dftw.WriteData(index++, urgd, _dataviewset._dataConvSet, delimiter, _Pad, null, MaxAuxCount);
                    }

                    count++;

                    worker.ReportProgress((int)((double)count / length * 97));

                    // Perform a time consuming operation and report progress.
                    Thread.Sleep(0);
                }
            }
            
            worker.ReportProgress(100);
            e.Result = new BackgroundWorkerResult(Properties.Resources.Saved, filename);

            dftw.Close();
        }

        private void backgroundWorkerText_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            if (_OldPercent != e.ProgressPercentage)
            {
                _OldPercent = e.ProgressPercentage;

                ribbonLabel1.Text = Properties.Resources.Saving_ddd;
                ribbonLabel2.Text = string.Format("{0}%", e.ProgressPercentage);
                ribbonProgressBar1.Value = e.ProgressPercentage;
            }
        }

        private void backgroundWorkerText_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            BackgroundWorkerResult result = (BackgroundWorkerResult)e.Result;

            tsbtnOpen.Enabled = true;
            tsbtnReload.Enabled = true;
            tsbtnStop.Enabled = false;
            tsbtnSave.Enabled = true;
            tsbtnOpenSchedule.Enabled = true;
            tsbtnSaveText.Enabled = true;
            tsbtnExportExcel.Enabled = true;

            tsbtnViewGraph.Enabled = true;

            
            groupBoxFilter.Enabled = true;
            groupBoxViewOpt.Enabled = true;
            tsbtnPrint.Enabled = true;

            ribbonLabel1.Text = result.Result;
            ribbonProgressBar1.Visible = false;
            ribbonLabel2.Visible = false;

            this.Cursor = Cursors.Default;

            if (result.UserData1 == null)
                return;

            string filename = (string)result.UserData1;

            if (File.Exists(filename) == false)
                return;

            if (ZSharpTarget >= 0)
            {

                if (_extAppPath != null && File.Exists(_extAppPath.ZMan))
                {
                    if (File.Exists(filename))
                    {
                        ProcessStartInfo psi = new ProcessStartInfo
                        {
                            FileName = _extAppPath.ZMan,
                            Arguments = $"\"{filename}\"", // 문서 경로를 인자로 전달
                            UseShellExecute = false
                        };
                        Process.Start(psi);
                    }
                    else
                        Process.Start(_extAppPath.ZMan);
                }
                else
                {
                    ProcessStartInfo psi = new ProcessStartInfo
                    {
                        FileName = "notepad.exe",
                        Arguments = $"\"{filename}\"", // 문서 경로를 인자로 전달
                        UseShellExecute = false
                    };
                    Process.Start(psi);
                }
            }
            else
            {
                string message = Properties.Resources.Msg_AsciiConvOk;

                if (MessageBox.Show(message, _MsgBoxCaption, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    Process.Start(filename);
                }
            }
            tsbtnRunZMan.Enabled = _extAppPath == null ? false : File.Exists(_extAppPath.ZMan);
            ZSharpTarget = -1;
        }

        private void btnDeleteData_Click(object sender, EventArgs e)
        {
            try
            {

                if (DataFlexGrid.Rows.Count > 1)
                {
                    int index = DataFlexGrid.Selection.TopRow;
                    int count = DataFlexGrid.Selection.BottomRow - DataFlexGrid.Selection.TopRow + 1;

                    if (count > 0)
                    {
                        DataFlexGrid.BeginUpdate();

                        Stack<DeleteUndo> duStack = new Stack<DeleteUndo>();

                        for (int i = DataFlexGrid.Selection.TopRow; i <= DataFlexGrid.Selection.BottomRow; i++)
                        {
                            UnitReportData urdb = ((GridRowFlag)DataFlexGrid.Rows[i].UserData).Data;

                            urdb.Enable = DataFlexGrid.Rows[i].Visible = false;

                            duStack.Push(new DeleteUndo(i, -1, urdb));
                        }

                        _UndoItemStack.Push(duStack);

                        btnUndo.Enabled = (_UndoItemStack.Count > 0) ? true : false;                            

                        DataFlexGrid.EndUpdate();
                    }
                }
              
            }
            catch (Exception)
            {
            }
        }

        private void UpdateGeneralDataGrid(List<UnitReportData> urgdList, int row)
        {
            DataFlexGrid.BeginUpdate();

            IEnumerator ie = urgdList.GetEnumerator();

            int irow = row;

            while (ie.MoveNext())
            {
                UnitReportData urgd = (UnitReportData)ie.Current;

                //SetGeneralDataRow(irow, urgd);

                irow++;
            }

            DataFlexGrid.EndUpdate();
        }        
        
        private delegate void SetGenDataRowCB(UnitReportData urgd, long pos);
        private delegate void GridUpdateCB(bool begin);
        private delegate void SetGridRowCountCB(C1FlexGrid grid, int count);

        private void GenUpdate(bool begin)
        {
            if (DataFlexGrid.InvokeRequired)
            {
                DataFlexGrid.Invoke(new GridUpdateCB(GenUpdate), new object[] { begin });
            }
            else
            {
                if (begin)
                    DataFlexGrid.BeginUpdate();
                else
                    DataFlexGrid.EndUpdate();
            }
        }
        
        private void SetGridRowCount(C1FlexGrid grid, int count)
        {
            if (grid.InvokeRequired)
            {
                grid.Invoke(new SetGridRowCountCB(SetGridRowCount), new object[] { grid, count });
            }
            else
            {
                grid.Rows.Count = count + 1;
            }
        }

        private string GetTimeSpanStringA(TimeSpan ts, int timeFormat)
        {
            string result = string.Empty;

            switch (timeFormat)
            {
                case 0:
                    result = CoTypeString.TimeToStringII(ts);
                    break;
                case 1:
                    result = ts.TotalSeconds.ToString("F5");
                    break;
                case 2:
                    result = string.Format("{0:E3}", ts.TotalSeconds);
                    break;
                default:
                    result = ts.TotalSeconds.ToString("F5");
                    break;
            }

            return result;
        }

        private void SetColDataFormat()
        {
            int colno = 0;

            foreach (DataColItem dci in _dataviewset._dataConvSet.DataColList)
            {
                if(dci.Enable)
                {
                    switch(dci.ColumnID)
                    {
                        case DataColItem.eColumnId.TESTTIME:
                        case DataColItem.eColumnId.CYCTIME:
                            switch (dci.DataFormat)
                            {
                                case DataColItem.eDataFormat.STRING:
                                case DataColItem.eDataFormat.NUMBER:
                                    //dcDataFlexGrid.Cols[colno].DataType = typeof(object);
                                    break;
                                case DataColItem.eDataFormat.EXPONENTIAL:
                                    DataFlexGrid.Cols[colno].DataType = typeof(double);
                                    DataFlexGrid.Cols[colno].Format = "E3";
                                    break;
                                case DataColItem.eDataFormat.F2TYPE:
                                    DataFlexGrid.Cols[colno].DataType = typeof(double);
                                    DataFlexGrid.Cols[colno].Format = "F2";
                                    break;
                                case DataColItem.eDataFormat.F3TYPE:
                                    DataFlexGrid.Cols[colno].DataType = typeof(double);
                                    DataFlexGrid.Cols[colno].Format = "F3";
                                    break;
                                case DataColItem.eDataFormat.F4TYPE:
                                    DataFlexGrid.Cols[colno].DataType = typeof(double);
                                    DataFlexGrid.Cols[colno].Format = "F4";
                                    break;
                                case DataColItem.eDataFormat.F5TYPE:
                                    DataFlexGrid.Cols[colno].DataType = typeof(double);
                                    DataFlexGrid.Cols[colno].Format = "F5";
                                    break;                                
                            }
                            break;        
                    }

                    colno++;
                }
            }
        }

        private string ApplyFormat(DataColItem dci, double temp, bool unitC)
        {
            temp = CoMath.UnitConv(temp, dci.SIUnit, unitC);

            return ApplyFormat(dci, temp);            
        }

        private string ApplyFormat(DataColItem dci, double temp)
        {
            string result = string.Empty;

            switch (dci.DataFormat)
            {
                case DataColItem.eDataFormat.STRING:
                case DataColItem.eDataFormat.EXPONENTIAL:
                    result = CoTypeString.DoubleToString(temp);
                    break;

                case DataColItem.eDataFormat.NUMBER:
                    result = $"{temp:F6}";
                    break;

                case DataColItem.eDataFormat.F2TYPE:
                    result = $"{temp:F2}";
                    break;

                case DataColItem.eDataFormat.F3TYPE:
                    result = $"{temp:F3}";
                    break;

                case DataColItem.eDataFormat.F4TYPE:
                    result = $"{temp:F4}";
                    break;

                case DataColItem.eDataFormat.F5TYPE:
                    result = $"{temp:F5}";
                    break;

                default:
                    result = CoTypeString.DoubleToString(temp);
                    break;
            }

            return result;
        }

        private void SetDataRow(UnitReportData urgd)
        {
            C1.Win.C1FlexGrid.Row row = DataFlexGrid.Rows.Add();

            int ri = 0;
            int zidx = 0;
            int itype = 0;
            int auxidx = 0;
            int bd = 0;
            int bdch = 0;
            foreach (DataColItem dci in _dataviewset._dataConvSet.DataColList)
            {
                if(dci.Enable)
                {
                    switch(dci.ColumnID)
                    {
                        case DataColItem.eColumnId.INDEX:
                            row[ri] = row.DataIndex + 1;
                            break;

                        case DataColItem.eColumnId.TESTTIME:
                            row[ri] = CoTypeString.TimeToStringII(TimeSpan.FromSeconds(urgd.mRawData.TestTime));
                            break;

                        case DataColItem.eColumnId.CYCNO:
                            row[ri] = urgd.mRawData.nCycle + 1;
                            break;

                        case DataColItem.eColumnId.CYCTIME:
                            row[ri] = CoTypeString.TimeToStringII(TimeSpan.FromSeconds(urgd.mRawData.CycleTime));
                            break;

                        case DataColItem.eColumnId.AMPS:
                            row[ri] = ApplyFormat(dci, urgd.mRawData.Idc, false);
                            break;

                        case DataColItem.eColumnId.VOLT:
                            row[ri] = ApplyFormat(dci, urgd.mRawData.Vdc, false);
                            break;
                        case DataColItem.eColumnId.POWER:
                            row[ri] = ApplyFormat(dci, urgd.Power, false);
                            break;

                        case DataColItem.eColumnId.LOAD:
                            row[ri] = ApplyFormat(dci, urgd.Load, false);
                            break;

                        case DataColItem.eColumnId.CAPACITY:
                            row[ri] = ApplyFormat(dci, urgd.Capacity, _dataviewset._dataConvSet.UnitC);
                            break;

                        case DataColItem.eColumnId.ENERGY:
                            row[ri] = ApplyFormat(dci, urgd.Energy, _dataviewset._dataConvSet.UnitC);
                            break;
                        case DataColItem.eColumnId.AUX1:
                        case DataColItem.eColumnId.AUX2:
                        case DataColItem.eColumnId.AUX3:
                        case DataColItem.eColumnId.AUX4:
                        case DataColItem.eColumnId.AUX5:
                        case DataColItem.eColumnId.AUX6:
                        case DataColItem.eColumnId.AUX7:
                        case DataColItem.eColumnId.AUX8:
                        case DataColItem.eColumnId.AUX9:
                        case DataColItem.eColumnId.AUX10:
                        case DataColItem.eColumnId.AUX11:
                        case DataColItem.eColumnId.AUX12:
                            auxidx = dci.ColumnID - DataColItem.eColumnId.AUX1;
                            if (auxidx >= MaxAuxCount) continue;
                            bd = auxidx / 4;
                            bdch = auxidx % 4;
                            row[ri] = ApplyFormat(dci, urgd.mRawData.mdata[bd].mdata[bdch].Vdc, false);
                            break;

                        case DataColItem.eColumnId.FREQ:
                            row[ri] = ApplyFormat(dci, urgd.mRawData.fFreq, false);
                            break;

                        case DataColItem.eColumnId.ZRE:
                            row[ri] = ApplyFormat(dci, urgd.mRawData.real, false);
                            break;

                        case DataColItem.eColumnId.ZIM:
                            row[ri] = ApplyFormat(dci, urgd.mRawData.img, false);
                            break;

                        case DataColItem.eColumnId.AUX01_ZRE:
                        case DataColItem.eColumnId.AUX01_ZIM:
                        case DataColItem.eColumnId.AUX02_ZRE:
                        case DataColItem.eColumnId.AUX02_ZIM:
                        case DataColItem.eColumnId.AUX03_ZRE:
                        case DataColItem.eColumnId.AUX03_ZIM:
                        case DataColItem.eColumnId.AUX04_ZRE:
                        case DataColItem.eColumnId.AUX04_ZIM:
                        case DataColItem.eColumnId.AUX05_ZRE:
                        case DataColItem.eColumnId.AUX05_ZIM:
                        case DataColItem.eColumnId.AUX06_ZRE:
                        case DataColItem.eColumnId.AUX06_ZIM:
                        case DataColItem.eColumnId.AUX07_ZRE:
                        case DataColItem.eColumnId.AUX07_ZIM:
                        case DataColItem.eColumnId.AUX08_ZRE:
                        case DataColItem.eColumnId.AUX08_ZIM:
                        case DataColItem.eColumnId.AUX09_ZRE:
                        case DataColItem.eColumnId.AUX09_ZIM:
                        case DataColItem.eColumnId.AUX10_ZRE:
                        case DataColItem.eColumnId.AUX10_ZIM:
                        case DataColItem.eColumnId.AUX11_ZRE:
                        case DataColItem.eColumnId.AUX11_ZIM:
                        case DataColItem.eColumnId.AUX12_ZRE:
                        case DataColItem.eColumnId.AUX12_ZIM:
                            zidx = dci.ColumnID - DataColItem.eColumnId.AUX01_ZRE;
                            itype = zidx % 2;
                            auxidx = zidx/2;
                            if (auxidx >= MaxAuxCount) continue;
                            bd = auxidx / 4;
                            bdch = auxidx % 4;

                            if(zidx == 0)
                            {
                                row[ri] = ApplyFormat(dci, urgd.mRawData.mdata[bd].mdata[bdch].Zre, false);
                            }
                            else
                            {
                                row[ri] = ApplyFormat(dci, urgd.mRawData.mdata[bd].mdata[bdch].Zim, false);
                            }
                            
                            break;
                        case DataColItem.eColumnId.TEMP:
                            row[ri] = ApplyFormat(dci, urgd.mRawData.Temperature, false);
                            break;
                        case DataColItem.eColumnId.EOC:
                            row[ri] = ApplyFormat(dci, urgd.mRawData.Veoc, false);
                            break;

                        case DataColItem.eColumnId.IRNG:
                            row[ri] = urgd.Range;
                            break;
                    }

                    ri++;
                }
            }

            row.UserData = new GridRowFlag(urgd);
        }
        
        private void btnUndo_Click(object sender, EventArgs e)
        {
            if (_UndoItemStack.Count > 0)
            {
                DataFlexGrid.BeginUpdate();

                Stack<DeleteUndo> duStack = _UndoItemStack.Pop();

                while (duStack.Count > 0)
                {
                    DeleteUndo du = duStack.Pop();
                    UnitReportData urdb = du.Data as UnitReportData;
                    urdb.Enable = DataFlexGrid.Rows[du.RowIndex].Visible = true;
                }

                DataFlexGrid.EndUpdate();

                btnUndo.Enabled = (_UndoItemStack.Count > 0) ? true : false;
            }
            
        }

        private void chkCycleNo_CheckedChanged(object sender, EventArgs e)
        {
            tbCycleNo.Enabled = chkCycleNo.Checked;
        }

        private bool calculate_trendline(List<double> x, List<double> y, ref double m, ref double b)
        {
            if (x.Count != y.Count)
            {
                return false;
            }

            int n = x.Count;

            // 필요한 값들 계산
            double sum_x = 0.0, sum_y = 0.0, sum_xy = 0.0, sum_x2 = 0.0;

            for (int i = 0; i < n; ++i)
            {
                sum_x += x[i];
                sum_y += y[i];
                sum_xy += x[i] * y[i];
                sum_x2 += x[i] * x[i];
            }

            // 기울기 (m) 계산
            m = (n * sum_xy - sum_x * sum_y) / (n * sum_x2 - sum_x * sum_x);

            // 절편 (b) 계산
            b = (sum_y - m * sum_x) / n;

            return true;
        }

        private bool calculate_power_trendline(List<double> x, List<double> y, ref double a, ref double b) 
        {
            if (x.Count != y.Count)
            {
                return false;
            }

            int n = x.Count;

            // 로그 변환된 값들의 합을 계산
            double sum_log_x = 0.0, sum_log_y = 0.0, sum_log_x_log_y = 0.0, sum_log_x2 = 0.0;
            double log_x;
            double log_y;
            for (int i = 0; i<n; ++i)
            {
                log_x = Math.Log(x[i]);
                log_y = Math.Log(y[i]);
                sum_log_x += log_x;
                sum_log_y += log_y;
                sum_log_x_log_y += log_x* log_y;
                sum_log_x2 += log_x* log_x;
            }

            // 기울기 b 계산 (선형 회귀에서 b)
            b = (n* sum_log_x_log_y - sum_log_x* sum_log_y) / (n* sum_log_x2 - sum_log_x* sum_log_x);

            // 절편 B' 계산
            double log_a = (sum_log_y - b * sum_log_x) / n;

            // a 계산 (log_a = ln(a)이므로 a = exp(log_a))
            a = Math.Exp(log_a);
            return true;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            List<double> lx = new List<double>();
            List<double> ly = new List<double>();
            double m, b;
            m = 0.0;
            b = 0.0;
            lx.Add(20.0); ly.Add(1.08E-04);
            lx.Add(30.0); ly.Add(7.31E-05);
            lx.Add(40.0); ly.Add(5.39E-05);
            lx.Add(50.0); ly.Add(4.33E-05);

            calculate_power_trendline(lx, ly,ref m,ref b);


            List<uint> cycleList = CoStringFilter.GetFilterIndexList(tbCycleNo.Text);

            if (DataFlexGrid.Rows.Count > 1)
            {
                DataFlexGrid.BeginUpdate();

                for (int i = 1; i < DataFlexGrid.Rows.Count; i++)
                {
                    GridRowFlag grf = (GridRowFlag)DataFlexGrid.Rows[i].UserData;
                    UnitReportData urgd = grf.Data as UnitReportData;

                    bool visible = urgd.Enable;

                    if (chkCycleNo.Checked)
                    {
                        if (!cycleList.Contains((uint)urgd.mRawData.nCycle))
                            visible = false;
                    }

                    DataFlexGrid.Rows[i].Visible = visible;
                }

                DataFlexGrid.EndUpdate();
            }            
        }

        private GridRowData GetGridGenRowData(C1.Win.C1FlexGrid.Row row, bool end = false)
        {
            double temp;

            GridRowData ggrd = new GridRowData();

            ggrd.End = end;
            if (!end)
            {
                int ri = 2;

                ggrd.Index = (Int64)row[ri++] - 1;
                ggrd.TestTime = CoTypeString.StringToTimeSpan((string)row[ri++]);
                ggrd.CycNo = (Int32)row[ri++] - 1;
                ggrd.CycTime = CoTypeString.StringToTimeSpan((string)row[ri++]);
                ggrd.StepNo = (Int32)row[ri++] - 1;
                ggrd.StepTime = CoTypeString.StringToTimeSpan((string)row[ri++]);
                ggrd.Current = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.Voltage = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.Power = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.Load = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.DchQ = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.DchE = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.Temp = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV1 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV2 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV3 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV4 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV5 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV6 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV7 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV8 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV9 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV10 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV11 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxV12 = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.Ocp = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.Range = (string)row[ri++];
                ggrd.RefreshRngIndex();
                ggrd.Frequency = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[0].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[0].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[1].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[1].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[2].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[2].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[3].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[3].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[4].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[4].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[5].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[5].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[6].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[6].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[7].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[7].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[8].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[8].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[9].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[9].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[10].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[10].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[11].Zre = double.TryParse((string)row[ri++], out temp) ? temp : 0;
                ggrd.AuxZ[11].Zim = double.TryParse((string)row[ri++], out temp) ? temp : 0;
            }

            return ggrd;
        }
        
        private void backgroundWorkerSave_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;

            List<object> urgdList = new List<object>();

            string filename = (string)e.Argument;
            ZMF_File wfile = new ZMF_File();


            if (wfile.Create(filename, _DataHeaderValues._ResHead) == false)
            {
                e.Result = new BackgroundWorkerResult(Properties.Resources.Error, true, filename);
                return;
            }

            _OldPercent = -1;
            
            worker.ReportProgress(2);

            int count = 0;
            int datalength = mResFile.gdList.Count;

            foreach (UnitReportData urdb in mResFile.gdList)
            {
                if ((worker.CancellationPending == true))
                {
                    e.Result = new BackgroundWorkerResult(Properties.Resources.Stop, false, filename);

                    wfile.CloseFile();
                    break;
                }

                if(urdb.Enable)
                    wfile.AppendData(urdb.mRawData);

                count++;

                worker.ReportProgress((int)((double)count / datalength * 97));

                Thread.Sleep(0);
            }

            worker.ReportProgress(100);

            e.Result = new BackgroundWorkerResult(Properties.Resources.Saved, true, filename);
            wfile.CloseFile();
            
        }

        private void backgroundWorkerSave_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            if (_OldPercent != e.ProgressPercentage)
            {
                _OldPercent = e.ProgressPercentage;
                ribbonLabel1.Text = Properties.Resources.Saving_ddd;
                ribbonLabel2.Text = string.Format("{0}%", e.ProgressPercentage);
                ribbonProgressBar1.Value = e.ProgressPercentage;
            }
        }

        private void backgroundWorkerSave_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            BackgroundWorkerResult result = (BackgroundWorkerResult)e.Result;

            tsbtnOpen.Enabled = true;
            tsbtnReload.Enabled = true;
            tsbtnStop.Enabled = false;
            tsbtnSave.Enabled = true;
            tsbtnOpenSchedule.Enabled = true;
            tsbtnSaveText.Enabled = true;
            tsbtnExportExcel.Enabled = true;
            
            tsbtnViewGraph.Enabled = true;

            tsbtnRunZMan.Enabled = _extAppPath == null ? false : File.Exists(_extAppPath.ZMan);

            tsbtnPrint.Enabled = true;
            groupBoxFilter.Enabled = true;
            groupBoxViewOpt.Enabled = true;

            ribbonLabel1.Text = result.Result;
            ribbonProgressBar1.Visible = false;
            ribbonLabel2.Visible = false;

            this.Cursor = Cursors.Default;

            string message = Properties.Resources.Msg_OpenNewDataEditor;
            if (MessageBox.Show(message, _MsgBoxCaption, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                OpenDataEditorEvent?.Invoke(this, new DataViewEventArgs(string.Empty, result.FileName));
            }
        }
        
        private void ConvertToExcel2003(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;

            string errmsg;

            object[] param = (object[])e.Argument;

            string filename = (string)param[0];
            eExcelFormat excelFormat = (eExcelFormat)param[1];

            //수정
            DataFileExcelWriter excelWriter = new DataFileExcelWriter(_dataviewset._dataConvSet, _LangIdx);

            if (excelWriter.Create(filename, excelFormat) == false)
            {
                e.Result = new BackgroundWorkerResult(Properties.Resources.Error);
                return;
            }

            _OldPercent = -1;            

            if (excelWriter.WriteHeader(_DataHeaderValues) == false)
            {
                e.Result = new BackgroundWorkerResult(Properties.Resources.Error);
                return;
            }            

            int length;
            int count;
            int index;

            length = DataFlexGrid.Rows.Count;
            count = 0;

            index = 0;

            for (int i = 1; i < length; i++)
            {
                if ((worker.CancellationPending == true))
                {
                    if (excelWriter.Save(out errmsg) == false)
                        e.Result = new BackgroundWorkerResult(string.Format("{1} : {0}", errmsg, Properties.Resources.Error));
                    else
                        e.Result = new BackgroundWorkerResult(string.Format("{0} & {1}", Properties.Resources.Stop, Properties.Resources.Saved), filename);

                    return;
                }
                else
                {
                    if (DataFlexGrid.Rows[i].IsVisible)
                    {
                        GridRowFlag grf = DataFlexGrid.Rows[i].UserData as GridRowFlag;
                        UnitReportData urgd = (UnitReportData)grf.Data;
                        //UnitReportGeneralData urgd = new UnitReportGeneralData(GetGridGenRowData(dcDataFlexGrid.Rows[i]));

                        excelWriter.WriteData(index++, urgd, _TimeFormat,MaxAuxCount);
                    }

                    count++;

                    worker.ReportProgress((int)((double)count / length * 10000));

                    // Perform a time consuming operation and report progress.
                    Thread.Sleep(0);
                }
            }

            if (excelWriter.Save(out errmsg) == false)
            {
                e.Result = new BackgroundWorkerResult("{1} : {0}", errmsg, Properties.Resources.Error);
                return;
            }

            worker.ReportProgress(100);
            e.Result = new BackgroundWorkerResult(Properties.Resources.Saved, filename);
        }

        private void WriteInfor(SheetData sd, string[] infoArr)
        {
            foreach (string info in infoArr)
            {
                DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();
                row.Append(ConstructCell(info, CellValues.String));

                sd.AppendChild(row);
            }
        }

        private Cell GetTimeSpanString(TimeSpan ts, int timeFormat)
        {
            Cell cell = null;

            switch(timeFormat)
            {
                case 0:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(CoTypeString.TimeToStringII(ts)),
                        DataType = new EnumValue<CellValues>(CellValues.String),
                        StyleIndex = 4
                    };
                    break;
                case 1:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(ts.TotalSeconds.ToString()),
                        DataType = new EnumValue<CellValues>(CellValues.Number)
                    };
                    break;
                case 2:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(string.Format("{0:F3}", ts.TotalSeconds.ToString())),
                        DataType = new EnumValue<CellValues>(CellValues.Number),
                        StyleIndex = 3
                    };
                    break;
                default:
                    cell = new Cell()
                    {
                        CellValue = new CellValue(ts.TotalSeconds.ToString()),
                        DataType = new EnumValue<CellValues>(CellValues.Number)
                    };
                    break;
            }

            return cell;
        }

        private Cell ConstructCell(string value, CellValues dataType)
        {
            return new Cell()
            {
                CellValue = new CellValue(value),
                DataType = new EnumValue<CellValues>(dataType)
            };
        }

        private void WriteColumn(SheetData sd, string[] colList)
        {
            DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();

            foreach (string col in colList)
            {
                row.Append(ConstructCell(col, CellValues.String));
            }

            sd.AppendChild(row);
        }

        private void WriteData(SheetData sheetdata, int dataIdx, UnitReportData urgd)
        {
            DocumentFormat.OpenXml.Spreadsheet.Row row = new DocumentFormat.OpenXml.Spreadsheet.Row();

            row.Append(ConstructCell(dataIdx.ToString(), CellValues.Number));
            row.Append(GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.TestTime), _TimeFormat));
            row.Append(ConstructCell((urgd.mRawData.nCycle + 1).ToString(), CellValues.Number));
            row.Append(GetTimeSpanString(TimeSpan.FromSeconds(urgd.mRawData.CycleTime), _TimeFormat));
            row.Append(ConstructCell(urgd.mRawData.Idc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Power.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Load.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Capacity.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Energy.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.Temperature.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[0].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[1].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[2].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[3].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[0].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[1].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[2].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[3].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[0].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[1].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[2].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[3].Vdc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.Veoc.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.Range, CellValues.String));

            row.Append(ConstructCell(urgd.mRawData.fFreq.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.real.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.img.ToString(), CellValues.Number));
           
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[0].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[0].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[1].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[1].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[2].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[2].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[3].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[0].mdata[3].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[1].mdata[0].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[1].mdata[0].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[1].mdata[1].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[1].mdata[1].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[1].mdata[2].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[1].mdata[2].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[1].mdata[3].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[1].mdata[3].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[2].mdata[0].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[2].mdata[0].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[2].mdata[1].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[2].mdata[1].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[2].mdata[2].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[2].mdata[2].Zim.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[2].mdata[3].Zre.ToString(), CellValues.Number));
            row.Append(ConstructCell(urgd.mRawData.mdata[2].mdata[3].Zim.ToString(), CellValues.Number));

            sheetdata.AppendChild(row);
        }
        
        private Stylesheet CreateStylesheet()
        {
            Stylesheet ss = new Stylesheet();

            Fonts fts = new Fonts();

            DocumentFormat.OpenXml.Spreadsheet.Font ft = new DocumentFormat.OpenXml.Spreadsheet.Font();
            FontName ftn = new FontName();
            ftn.Val = StringValue.FromString("Calibri");
            FontSize ftsz = new FontSize();
            ftsz.Val = DoubleValue.FromDouble(11);
            ft.FontName = ftn;
            ft.FontSize = ftsz;
            fts.Append(ft);

            ft = new DocumentFormat.OpenXml.Spreadsheet.Font();
            ftn = new FontName();
            ftn.Val = StringValue.FromString("Palatino Linotype");
            ftsz = new FontSize();
            ftsz.Val = DoubleValue.FromDouble(18);
            ft.FontName = ftn;
            ft.FontSize = ftsz;
            fts.Append(ft);

            fts.Count = UInt32Value.FromUInt32((uint)fts.ChildElements.Count);

            Fills fills = new Fills();
            Fill fill;
            PatternFill patternFill;
            fill = new Fill();
            patternFill = new PatternFill();
            patternFill.PatternType = PatternValues.None;
            fill.PatternFill = patternFill;
            fills.Append(fill);

            fill = new Fill();
            patternFill = new PatternFill();
            patternFill.PatternType = PatternValues.Gray125;
            fill.PatternFill = patternFill;
            fills.Append(fill);

            fill = new Fill();
            patternFill = new PatternFill();
            patternFill.PatternType = PatternValues.Solid;
            patternFill.ForegroundColor = new ForegroundColor();
            patternFill.ForegroundColor.Rgb = HexBinaryValue.FromString("00ff9728");
            patternFill.BackgroundColor = new BackgroundColor();
            patternFill.BackgroundColor.Rgb = patternFill.ForegroundColor.Rgb;
            fill.PatternFill = patternFill;
            fills.Append(fill);

            fills.Count = UInt32Value.FromUInt32((uint)fills.ChildElements.Count);

            Borders borders = new Borders();

            Border border = new Border();
            border.LeftBorder = new LeftBorder();
            border.RightBorder = new RightBorder();
            border.TopBorder = new TopBorder();
            border.BottomBorder = new BottomBorder();
            border.DiagonalBorder = new DiagonalBorder();
            borders.Append(border);

            border = new Border();
            border.LeftBorder = new LeftBorder();
            border.LeftBorder.Style = BorderStyleValues.Thin;
            border.RightBorder = new RightBorder();
            border.RightBorder.Style = BorderStyleValues.Thin;
            border.TopBorder = new TopBorder();
            border.TopBorder.Style = BorderStyleValues.Thin;
            border.BottomBorder = new BottomBorder();
            border.BottomBorder.Style = BorderStyleValues.Thin;
            border.DiagonalBorder = new DiagonalBorder();
            borders.Append(border);
            borders.Count = UInt32Value.FromUInt32((uint)borders.ChildElements.Count);

            CellStyleFormats csfs = new CellStyleFormats();

            CellFormat cf = new CellFormat();
            cf.NumberFormatId = 0;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            csfs.Append(cf);
            csfs.Count = UInt32Value.FromUInt32((uint)csfs.ChildElements.Count);

            uint iExcelIndex = 164;
            NumberingFormats nfs = new NumberingFormats();
            CellFormats cfs = new CellFormats();

            cf = new CellFormat();
            cf.NumberFormatId = 0;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cfs.Append(cf);

            NumberingFormat nfDateTime = new NumberingFormat();
            nfDateTime.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nfDateTime.FormatCode = StringValue.FromString("dd/mm/yyyy hh:mm:ss");
            nfs.Append(nfDateTime);

            NumberingFormat nf4decimal = new NumberingFormat();
            nf4decimal.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nf4decimal.FormatCode = StringValue.FromString("#,##0.0000");
            nfs.Append(nf4decimal);

            NumberingFormat nfExponent = new NumberingFormat();
            nfExponent.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nfExponent.FormatCode = StringValue.FromString("0.000E+000");
            nfs.Append(nfExponent);

            // #,##0.00 is also Excel style index 4
            NumberingFormat nf2decimal = new NumberingFormat();
            nf2decimal.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nf2decimal.FormatCode = StringValue.FromString("#,##0.00");
            nfs.Append(nf2decimal);

            // @ is also Excel style index 49
            NumberingFormat nfForcedText = new NumberingFormat();
            nfForcedText.NumberFormatId = UInt32Value.FromUInt32(iExcelIndex++);
            nfForcedText.FormatCode = StringValue.FromString("@");
            nfs.Append(nfForcedText);

            // index 1
            cf = new CellFormat();
            cf.NumberFormatId = nfDateTime.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 2
            cf = new CellFormat();
            cf.NumberFormatId = nf4decimal.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 3
            cf = new CellFormat();
            cf.NumberFormatId = nfExponent.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 4
            cf = new CellFormat();
            cf.NumberFormatId = nfForcedText.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 5
            // Header text
            cf = new CellFormat();
            cf.NumberFormatId = nfForcedText.NumberFormatId;
            cf.FontId = 1;
            cf.FillId = 0;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 6
            // column text
            cf = new CellFormat();
            cf.NumberFormatId = nfForcedText.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 0;
            cf.BorderId = 1;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 7
            // coloured 2 decimal text
            cf = new CellFormat();
            cf.NumberFormatId = nf2decimal.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 2;
            cf.BorderId = 0;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            // index 8
            // coloured column text
            cf = new CellFormat();
            cf.NumberFormatId = nfForcedText.NumberFormatId;
            cf.FontId = 0;
            cf.FillId = 2;
            cf.BorderId = 1;
            cf.FormatId = 0;
            cf.ApplyNumberFormat = BooleanValue.FromBoolean(true);
            cfs.Append(cf);

            nfs.Count = UInt32Value.FromUInt32((uint)nfs.ChildElements.Count);
            cfs.Count = UInt32Value.FromUInt32((uint)cfs.ChildElements.Count);

            ss.Append(nfs);
            ss.Append(fts);
            ss.Append(fills);
            ss.Append(borders);
            ss.Append(csfs);
            ss.Append(cfs);

            CellStyles css = new CellStyles();
            DocumentFormat.OpenXml.Spreadsheet.CellStyle cs = new DocumentFormat.OpenXml.Spreadsheet.CellStyle();
            cs.Name = StringValue.FromString("Normal");
            cs.FormatId = 0;
            cs.BuiltinId = 0;
            css.Append(cs);
            css.Count = UInt32Value.FromUInt32((uint)css.ChildElements.Count);
            ss.Append(css);

            DifferentialFormats dfs = new DifferentialFormats();
            dfs.Count = 0;
            ss.Append(dfs);

            TableStyles tss = new TableStyles();
            tss.Count = 0;
            tss.DefaultTableStyle = StringValue.FromString("TableStyleMedium9");
            tss.DefaultPivotStyle = StringValue.FromString("PivotStyleLight16");
            ss.Append(tss);

            return ss;
        }
        
        private List<object> GetDataList()
        {
            List<object> urgdList = new List<object>();

            for (int i = 1; i < DataFlexGrid.Rows.Count; i++)
            {
                if (DataFlexGrid.Rows[i].IsVisible)
                {
                    GridRowFlag grf = DataFlexGrid.Rows[i].UserData as GridRowFlag;
                    UnitReportData urgd = (UnitReportData)grf.Data;

                    urgdList.Add(urgd);
                }
            }

            return urgdList;
        }
        
        private void ConvertToExcel2007(object sender, DoWorkEventArgs e)
        {
            try
            {
                BackgroundWorker worker = sender as BackgroundWorker;

                object[] param = (object[])e.Argument;

                string filename = (string)param[0];

                DataFileToExcel toExcel = null;
  
                List<object> urgdList = GetDataList();
                toExcel = new DataFileToExcel(_dataviewset._dataConvSet, _DataHeaderValues, urgdList,MaxAuxCount);

                if (toExcel != null)
                    toExcel.Run(filename, worker);
                
                worker.ReportProgress(100);
                e.Result = new BackgroundWorkerResult(Properties.Resources.Saved, filename);
            }
            catch (Exception)
            {
                e.Result = new BackgroundWorkerResult(Properties.Resources.File_creation_failed, string.Empty);
            }
        }

        private List<string> GetColList()
        {
            List<string> colList = new List<string>();
            int offset = 2;
            int max = DataFlexGrid.Cols.Count - 1;

            for (int i = offset; i < max; i++)
                colList.Add((string)DataFlexGrid[0, i]);

            return colList;
        }
        
        private void backgroundWorkerExcel_DoWork(object sender, DoWorkEventArgs e)
        {
            object[] param = (object[])e.Argument;

            string filename = (string)param[0];
            eExcelFormat excelFormat = (eExcelFormat)param[1];

            if(excelFormat == eExcelFormat.Excel2003)
                ConvertToExcel2003(sender, e);
            else if(excelFormat == eExcelFormat.Excel2007)
                ConvertToExcel2007(sender, e);
        }

        private void backgroundWorkerExcel_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            if (_OldPercent != e.ProgressPercentage)
            {
                _OldPercent = e.ProgressPercentage;
                ribbonLabel1.Text = Properties.Resources.Saving_ddd;
                ribbonLabel2.Text = string.Format("{0:F2}%", (double)e.ProgressPercentage / 100.0);
                ribbonProgressBar1.Value = (e.ProgressPercentage / 100 > 100) ? 100 : e.ProgressPercentage / 100;
            }
        }

        private void backgroundWorkerExcel_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            BackgroundWorkerResult result = (BackgroundWorkerResult)e.Result;

            tsbtnOpen.Enabled = true;
            tsbtnReload.Enabled = true;
            tsbtnStop.Enabled = false;
            tsbtnSave.Enabled = true;
            tsbtnOpenSchedule.Enabled = true;
            tsbtnSaveText.Enabled = true;
            tsbtnExportExcel.Enabled = true;
            tsbtnViewGraph.Enabled = true;
            groupBoxFilter.Enabled = true;
            groupBoxViewOpt.Enabled = true;
            tsbtnFileHeaderInfor.Enabled = true;
            tsbtnRunZMan.Enabled = _extAppPath == null ? false : File.Exists(_extAppPath.ZMan);
            
            tsbtnPrint.Enabled = true;
            
            ribbonLabel1.Text = result.Result;
            ribbonProgressBar1.Visible = false;
            ribbonLabel2.Visible = false;

            this.Cursor = Cursors.Default;

            if (result.UserData1 == null)
                return;

            string filename = (string)result.UserData1;

            if (File.Exists(filename) == false)
                return;

            string message = Properties.Resources.Msg_ExcelConvOk;

            if (MessageBox.Show(message, _MsgBoxCaption, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Process.Start(filename);
            }
        }

        private void FormDataEditor_DragOver(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop, true))
            {
                string[] filenames = e.Data.GetData(DataFormats.FileDrop, true) as string[];

                bool check = true;

                foreach (string filename in filenames)
                {
                    string extention = Path.GetExtension(filename);

                    if (extention != ".wrd" && extention != ".wcd")
                        check = false;
                }

                if (check == true)
                    e.Effect = DragDropEffects.Move;
                else
                    e.Effect = DragDropEffects.None;
            }
        }

        private void FormDataEditor_DragDrop(object sender, DragEventArgs e)
        {
            string[] filenames = e.Data.GetData(DataFormats.FileDrop, true) as string[];

            if(filenames.Length > 0)
                LoadProc(filenames[0]);
        }

        
        private void FormDataEditor_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (backgroundWorker.IsBusy)
            {
                backgroundWorker.CancelAsync();
                e.Cancel = true;

                timerBgChecker.Start();
            }

            if(backgroundWorkerExcel.IsBusy)
            {
                backgroundWorkerExcel.CancelAsync();
                e.Cancel = true;

                timerBgChecker.Start();
            }

            if (backgroundWorkerSave.IsBusy)
            {
                backgroundWorkerSave.CancelAsync();
                e.Cancel = true;

                timerBgChecker.Start();
            }

            if (backgroundWorkerText.IsBusy)
            {
                backgroundWorkerText.CancelAsync();
                e.Cancel = true;

                timerBgChecker.Start();
            }
        }

        private void timerBgChecker_Tick(object sender, EventArgs e)
        {
            if (!backgroundWorker.IsBusy && !backgroundWorkerExcel.IsBusy && !backgroundWorkerSave.IsBusy && !backgroundWorkerText.IsBusy)
            {
                timerBgChecker.Stop();
                Close();                
            }            
        }

        private void tsbtnFileHeaderInfor_Click(object sender, EventArgs e)
        {
            FileHeaderInforForm dlg = new FileHeaderInforForm(_LangIdx);
            dlg.dhv = _DataHeaderValues;
            dlg.ShowDialog();
        }

        private void tsbtnViewGraph_Click(object sender, EventArgs e)
        {
            OpenGraphClick?.Invoke(sender, new DataViewEventArgs(string.Empty, _DataHeaderValues._FileName));
        }
        
        private void tsbtnSearchVvsCp_Click(object sender, EventArgs e)
        {
           
        }

        private void tsbtnRunZMan_Click(object sender, EventArgs e)
        {
            try
            {
                
                if (bFileOpened == false)
                {
                    MessageBox.Show("The data file has not been opened.");
                    return;
                }
                if (mResFile.datacount < 1)
                {
                    MessageBox.Show("There is no data.");
                    return;
                }

                frmSelTarget dlg = new frmSelTarget(_LangIdx,MaxAuxCount);
                if (dlg.ShowDialog() == DialogResult.OK)
                {
                    SaveFileDialog savedlg = new SaveFileDialog();
                    savedlg.Title = Properties.Resources.Save_Ascii_File;
                    savedlg.InitialDirectory = Path.GetDirectoryName(_DataHeaderValues._FileName);

                    if (dlg.TargetIdx <= 0) savedlg.FileName = Path.GetFileNameWithoutExtension(_DataHeaderValues._FileName);
                    else savedlg.FileName = string.Format("{0}_AUX{1}", Path.GetFileNameWithoutExtension(_DataHeaderValues._FileName),dlg.TargetIdx);

                    savedlg.Filter = "Z# data files(*.Z#)|*.Z#";
                    savedlg.DefaultExt = "Z#";

                    if (savedlg.ShowDialog() == DialogResult.OK)
                    {
                        ConvertToTextProc(savedlg.FileName, dlg.Delimiter,dlg.TargetIdx);
                    }
                }
            }
            catch (Exception)
            {
            }
        }

        private void tsbtnRunIVManDA_Click(object sender, EventArgs e)
        {
            string path = CoPath.GetCurrentDirectory();

            MessageBox.Show(path);
        }

        private void textStepCount_TextChanged(object sender, EventArgs e)
        {

        }

        private void ChkDC_CheckedChanged(object sender, EventArgs e)
        {
            RefreshCoulmn();
        }

        private void ChkDCAux_CheckedChanged(object sender, EventArgs e)
        {
            RefreshCoulmn();
        }

        private void ChkEIS_CheckedChanged(object sender, EventArgs e)
        {
            RefreshCoulmn();
        }

        private void ChkEISAux_CheckedChanged(object sender, EventArgs e)
        {
            RefreshCoulmn();
        }
    }
    public class BackgroundWorkerResult
    {
        public string Result { get; private set; }
        public bool Error { get; private set; }
        public object UserData1 { get; private set; }
        public object UserData2 { get; private set; }
        public string FileName { get; private set; }

        public BackgroundWorkerResult(string result)
        {
            Result = result;
            Error = false;
            UserData1 = null;
            UserData2 = null;
            FileName = string.Empty;
        }

        public BackgroundWorkerResult(string result, object ud1)
        {
            Result = result;
            Error = false;
            UserData1 = ud1;
            UserData2 = null;
            FileName = string.Empty;
        }        

        public BackgroundWorkerResult(string result, object ud1, object ud2)
        {
            Result = result;
            Error = false;
            UserData1 = ud1;
            UserData2 = ud2;
            FileName = string.Empty;
        }

        public BackgroundWorkerResult(string result, bool error, string filename)
        {
            Result = result;
            Error = error;
            UserData1 = null;
            UserData2 = null;
            FileName = filename;
        }
    }
    public class GridRowFlag
    {
        public UnitReportData Data { get; set; }
        public bool Modified { get; set; }

        public GridRowFlag(UnitReportData data, bool modified = false)
        {
            Data = data;
            Modified = modified;
        }
    }


    public class DeleteUndo
    {
        public int RowIndex { get; set; }
        public int DataIndex { get; set; }
        public UnitReportData Data { get; set; }

        public DeleteUndo(int rowIndex, int index, UnitReportData data)
        {
            RowIndex = rowIndex;
            DataIndex = index;
            Data = data;
        }
    }

    public class CoStringFilter
    {
        static public List<uint> GetFilterIndexList(string text)
        {
            List<uint> list = new List<uint>();

            string[] result = text.Split(',');

            foreach (string s in result)
            {
                string temp = s.Trim();

                if (temp.Contains("-"))
                {
                    string[] stemp = temp.Split('-');

                    if (stemp.Length == 2)
                    {
                        string ltemp, rtemp;
                        uint lval, rval;

                        ltemp = stemp[0].Trim();
                        rtemp = stemp[1].Trim();

                        if (uint.TryParse(ltemp, out lval) == true && uint.TryParse(rtemp, out rval) == true)
                        {
                            uint max, min;

                            min = Math.Min(lval, rval);
                            max = Math.Max(lval, rval);

                            for (uint i = min; i <= max; i++)
                            {
                                if (list.Contains(i - 1) == false)
                                    list.Add(i - 1);
                            }
                        }
                    }
                }
                else
                {
                    uint oval;

                    if (uint.TryParse(temp, out oval))
                    {
                        if (list.Contains(oval - 1) == false)
                            list.Add(oval - 1);
                    }
                }
            }

            list.Sort();

            return list;
        }
        static public List<int> GetFilterIndexListII(string text)
        {
            List<int> list = new List<int>();

            string[] result = text.Split(',');

            foreach (string s in result)
            {
                string temp = s.Trim();

                if (temp.Contains("-"))
                {
                    string[] stemp = temp.Split('-');

                    if (stemp.Length == 2)
                    {
                        string ltemp, rtemp;
                        int lval, rval;

                        ltemp = stemp[0].Trim();
                        rtemp = stemp[1].Trim();

                        if (int.TryParse(ltemp, out lval) == true && int.TryParse(rtemp, out rval) == true)
                        {
                            int max, min;

                            min = Math.Min(lval, rval);
                            max = Math.Max(lval, rval);

                            for (int i = min; i <= max; i++)
                            {
                                if (list.Contains(i - 1) == false)
                                    list.Add(i - 1);
                            }
                        }
                    }
                }
                else
                {
                    int oval;

                    if (int.TryParse(temp, out oval))
                    {
                        if (list.Contains(oval - 1) == false)
                            list.Add(oval - 1);
                    }
                }
            }

            list.Sort();

            return list;
        }
    }
}
