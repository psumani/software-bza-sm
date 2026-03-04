using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ZiveLab.ZM.Dataview
{
    public partial class frmSelTarget : Form
    {
        public eDelimiter Delimiter { get; private set; }
        public int TargetIdx;
        public int _MaxAuxCount;
        public frmSelTarget(int langidx, int MaxAuxCount)
        {
            InitializeComponent();
            this.Icon = Util.BitmapToIcon(Properties.Resources.SelectCell);

            _MaxAuxCount = MaxAuxCount;
            TargetIdx = 0;
            SetLanguage(langidx);
        }

        public void SetLanguage(int langidx)
        {
            DataviewCommon.SetLanguage(this, langidx, typeof(frmSelTarget));
        }


        private void OnOK_Click(object sender, EventArgs e)
        {
            TargetIdx = cboTarget.SelectedIndex;
            if (rbTab.Checked)
                Delimiter = eDelimiter.Tab;

            if (rbComma.Checked)
                Delimiter = eDelimiter.Comma;

            if (rbSpace.Checked)
                Delimiter = eDelimiter.Space;

            DialogResult = DialogResult.OK;
        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        private void frmSelTarget_Load(object sender, EventArgs e)
        {
            if (_MaxAuxCount <= 0) cboTarget.Enabled = false;

                cboTarget.Items.Clear();

            cboTarget.Items.Add("Main");

            for (int i = 0; i < _MaxAuxCount; i++)
            {
                cboTarget.Items.Add(string.Format("Aux {0}",i+1));
            }
            cboTarget.SelectedIndex = 0;


            if (_MaxAuxCount <= 0) cboTarget.Enabled = false;
            else  cboTarget.Enabled = true;

        }
    }
}
