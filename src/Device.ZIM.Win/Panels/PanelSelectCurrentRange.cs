using System;
using System.Windows.Forms;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelSelectCurrentRange : UserControl
    {
        public CurrentRange IRange;

        public event EventHandler StartExperimentClicked;
        protected virtual void OnStartExperimentClicked(EventArgs e)
        {
            var handler = StartExperimentClicked;
            if (handler != null)
                handler(this, e);
        }

        public PanelSelectCurrentRange(CurrentRange iRange)
        {
            InitializeComponent();

            DoubleBuffered = true;

            IRange = iRange;
        }

        private void PanelSelectCurrentRange_Load(object sender, EventArgs e)
        {
            iRange0.Tag = CurrentRange.I2A;
            iRange0.Checked = (IRange == CurrentRange.I2A);
            iRange1.Tag = CurrentRange.I400mA;
            iRange1.Checked = (IRange == CurrentRange.I400mA);
            iRange2.Tag = CurrentRange.I200mA;
            iRange2.Checked = (IRange == CurrentRange.I200mA);
            iRange3.Tag = CurrentRange.I40mA;
            iRange3.Checked = (IRange == CurrentRange.I40mA);
            iRange4.Tag = CurrentRange.I20mA;
            iRange4.Checked = (IRange == CurrentRange.I20mA);
            iRange5.Tag = CurrentRange.I4mA;
            iRange5.Checked = (IRange == CurrentRange.I4mA);
            iRange6.Tag = CurrentRange.I2mA;
            iRange6.Checked = (IRange == CurrentRange.I2mA);
            iRange7.Tag = CurrentRange.I400uA;
            iRange7.Checked = (IRange == CurrentRange.I400uA);
        }

        private void iRange_CheckedChanged(object sender, EventArgs e)
        {
            foreach (Control control in this.groupBox.Controls)
            {
                if (control is RadioButton)
                {
                    RadioButton radio = control as RadioButton;
                    if (radio.Checked)
                    {
                        IRange = (CurrentRange)radio.Tag;
                    }
                }
            }
        }

        private void buttonStart_Click(object sender, EventArgs e)
        {
            OnStartExperimentClicked(e);
        }

        private void SelectIRangePanel_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter || e.KeyCode == Keys.Return)
            {
                OnStartExperimentClicked(e);
            }
        }
    }
}
