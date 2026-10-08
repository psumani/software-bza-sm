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

namespace ZiveLab.ZM.Dataview
{
    public partial class frmSelTarget : Form
    {
        public int TargetIdx;
        public int _MaxAuxCount;
        public List<bool> ListAux;
        public List<int> ListAuxch;
        public frmSelTarget(int langidx, int MaxAuxCount, List<bool> tListAux)
        {
            InitializeComponent();
            this.Icon = Util.BitmapToIcon(Properties.Resources.SelectCell);
            ListAux = tListAux;
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
            TargetIdx = ListAuxch[cboTarget.SelectedIndex];

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

            ListAuxch = new List<int>();
            ListAuxch.Clear();
            ListAuxch.Add(0);
            for (int i = 0; i < MBZA_Constant.MAX_AUX_BOARD; i++)
            {
                if (ListAux[i])
                {
                    cboTarget.Items.Add(string.Format("Aux {0}", i + 1));
                    ListAuxch.Add(i+1);
                }
            }

            cboTarget.SelectedIndex = 0;


            if (_MaxAuxCount <= 0) cboTarget.Enabled = false;
            else  cboTarget.Enabled = true;

        }
    }
}
