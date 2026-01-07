using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ZiveLab.ZM.Dataview
{
    public partial class DelimiterForm : Form
    {
        public eDelimiter Delimiter { get; private set; }

        public DelimiterForm(int langidx)
        {
            InitializeComponent();

            SetLanguage(langidx);
        }

        public void SetLanguage(int langidx)
        {
            DataviewCommon.SetLanguage(this, langidx, typeof(DelimiterForm));
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            if (rbTab.Checked)
                Delimiter = eDelimiter.Tab;

            if (rbComma.Checked)
                Delimiter = eDelimiter.Comma;

            if (rbSpace.Checked)
                Delimiter = eDelimiter.Space;
        }
    }
}
