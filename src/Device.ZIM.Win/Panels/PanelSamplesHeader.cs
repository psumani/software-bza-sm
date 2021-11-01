using System;
using System.Windows.Forms;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelSamplesHeader : UserControl
    {
        #region Public Properties

        public SamplesMode SamplesMode
        {
            get { return samplesMode; }
            private set
            {
                samplesMode = value;

                var args = new SamplesModeEventArgs(samplesMode);
                OnSamplesModeChanged(args);
            }
        }
        SamplesMode samplesMode = SamplesMode.Summary;

        string title = "header";
        public string Title
        {
            get { return title; }
            set
            {
                title = value;
                labelTitle.Text = title;
            }
        }

        #endregion Public Properties

        #region Custom Events

        public event EventHandler SamplesModeChanged;
        protected virtual void OnSamplesModeChanged(EventArgs e)
        {
            var handler = SamplesModeChanged;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler ExpandPanel;
        
        protected virtual void OnExpandPanel(EventArgs e)
        {
            var handler = ExpandPanel;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CollapsePanel;

        protected virtual void OnCollapsePanel(EventArgs e)
        {
            var handler = CollapsePanel;
            if (handler != null)
                handler(this, e);
        }

        #endregion Custom Events

        #region Life and Death

        public PanelSamplesHeader()
        {
            InitializeComponent();

            buttonSummary.Checked = true;

            buttonSummary.Tag = SamplesMode.Summary;
            buttonLissajousCurve.Tag = SamplesMode.LissajousCurve;
            buttonTimeDomain.Tag = SamplesMode.TimeDomain;
            buttonFourierDomain.Tag = SamplesMode.FrequencyDomain;
            buttonError.Tag = SamplesMode.Error;
        }

        #endregion Life and Death

        #region Private Event Handlers

        private void ExpanderPanel_EnabledChanged(object sender, EventArgs e)
        {
            expanderButton.Enabled = this.Enabled;

            if (!this.Enabled)
            {
                expanderButton.Checked = false;
                expanderButton.Image = Properties.Resources.chevron_right;
                OnCollapsePanel(e);
            }
        }

        private void ExpanderPanel_VisibleChanged(object sender, EventArgs e)
        {
            expanderButton.Enabled = this.Enabled;

            if (!this.Visible)
            {
                expanderButton.Checked = false;
                expanderButton.Image = Properties.Resources.chevron_right;
                OnCollapsePanel(e);
            }
        }

        private void expanderButton_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;

            if (control.Checked)
            {
                control.Image = Properties.Resources.chevron_down;

                OnExpandPanel(e);
            }
            else
            {
                control.Image = Properties.Resources.chevron_right;

                OnCollapsePanel(e);
            }
        }
        
        private void samplesModeButton_Click(object sender, EventArgs e)
        {
            foreach (Control control in this.panelOptions.Controls)
            {
                if (control is RadioButton)
                {
                    RadioButton radio = control as RadioButton;
                    if (radio.Checked)
                    {
                        this.SamplesMode = (SamplesMode)radio.Tag;
                    }
                }
            }
        }

        #endregion Private Event Handlers
    }

    public enum SamplesMode
    {
        Summary = 0,
        LissajousCurve = 1,
        TimeDomain = 2, 
        FrequencyDomain = 3,
        Error = 4,
    }

    public class SamplesModeEventArgs : EventArgs
    {
        public SamplesMode Value;
        public SamplesModeEventArgs(SamplesMode value)
        {
            Value = value;
        }
    }
}
