using System;
using System.Windows.Forms;

namespace ZiveLab.ZM.Dataview
{
    public partial class ExcelTypeForm : Form
    {
        public eExcelFormat ExcelFormat { get; private set; }

        public string Extention { get; private set; }

        public ExcelTypeForm(int langidx)
        {
            InitializeComponent();

            SetLanguage(langidx);
        }

        public void SetLanguage(int langidx)
        {
            DataviewCommon.SetLanguage(this, langidx, typeof(ExcelTypeForm));
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            if (rbXlsx.Checked)
            {
                ExcelFormat = eExcelFormat.Excel2007;
                Extention = "xlsx";
            }
            else if (rbXls.Checked)
            {
                ExcelFormat = eExcelFormat.Excel2003;
                Extention = "xls";
            }
        }
    }
}
