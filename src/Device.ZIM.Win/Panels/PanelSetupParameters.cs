using System;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Utilities;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelSetupParameters : UserControl
    {
        public ZParameters Parameters;

        public event EventHandler StartExperimentClicked;
        protected virtual void OnStartExperimentClicked(EventArgs e)
        {
            var handler = StartExperimentClicked;
            if (handler != null)
                handler(this, e);
        }
      

        public PanelSetupParameters()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        private void PanelSetupParameters_Load(object sender, EventArgs e)
        {
            if (Parameters == null)
            {
                Parameters = new ZParameters();
            }

            cbIRange.Items.Clear();
            //cbIRange.Items.Add("Auto");
            var iRanges = Enum.GetValues(typeof(CurrentRange)).Cast<CurrentRange>();
            foreach (var item in iRanges)
            {
                cbIRange.Items.Add(item.GetDescription());
            }
            cbIRange.Items.RemoveAt(cbIRange.Items.Count - 1); // remove "Auto"

            cbCycle.Items.Clear();
            int i = 0;
            cbCycle.Items.Add(string.Format("Auto"));
            while (true)
            {
                int j = (int)Math.Pow(2, i);
                if (j > 8) break;
                cbCycle.Items.Add(string.Format("{0}", Math.Pow(2, i)));
                i++;
            }

            txtInitialFreq.Text = string.Format("{0:#0.###}", Parameters.InitialFrequency);
            txtFinalFreq.Text = string.Format("{0:#0.###}", Parameters.FinalFrequency);
            txtDensity.Text = Parameters.Density.ToString();
            textIteration.Text = Parameters.Iteration.ToString();
            cbIRange.SelectedIndex = (int)Parameters.IRange;
            txtMaxInitialDelay.Text = string.Format("{0:#0.0}", Parameters.MaxInitialDelay);
            txtSkipCycle.Text = Parameters.SkipCycle.ToString();
            cbCycle.SelectedIndex = (Parameters.Cycle <= 0) ? 0 : (int)Math.Log(Parameters.Cycle, 2.0);
        }

        private void txtInitialFreq_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (int)13)
            {
                OnInitialFreqValueChanged(txtInitialFreq.Text);
            }
        }

        private void txtInitialFreq_Leave(object sender, EventArgs e)
        {
            OnInitialFreqValueChanged(txtInitialFreq.Text);
        }

        private void OnInitialFreqValueChanged(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return;

            double val;
            if (double.TryParse(text, out val))
            {
                Parameters.InitialFrequency = val;
            }

            if (Parameters.InitialFrequency > DeviceConstants.MAX_EIS_FREQUENCY)
                Parameters.InitialFrequency = DeviceConstants.MAX_EIS_FREQUENCY;
            if (Parameters.InitialFrequency < DeviceConstants.MIN_EIS_FREQUENCY)
                Parameters.InitialFrequency = DeviceConstants.MIN_EIS_FREQUENCY;

            txtInitialFreq.Text = string.Format("{0:#0.###}", Parameters.InitialFrequency);
        }

        private void txtFinalFreq_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (int)13)
            {
                OnFinalFreqValueChanged(txtFinalFreq.Text);
            }
        }

        private void txtFinalFreq_Leave(object sender, EventArgs e)
        {
            OnFinalFreqValueChanged(txtFinalFreq.Text);
        }

        private void OnFinalFreqValueChanged(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return;

            double val;
            if (double.TryParse(text, out val))
            {
                Parameters.FinalFrequency = val;
            }

            if (Parameters.FinalFrequency > DeviceConstants.MAX_EIS_FREQUENCY)
                Parameters.FinalFrequency = DeviceConstants.MAX_EIS_FREQUENCY;
            if (Parameters.FinalFrequency < DeviceConstants.MIN_EIS_FREQUENCY)
                Parameters.FinalFrequency = DeviceConstants.MIN_EIS_FREQUENCY;

            txtFinalFreq.Text = string.Format("{0:#0.###}", Parameters.FinalFrequency);
        }

        private void txtDensity_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (int)13)
            {
                OnDensityValueChanged(txtDensity.Text);
            }
        }

        private void txtDensity_Leave(object sender, EventArgs e)
        {
            OnDensityValueChanged(txtDensity.Text);
        }

        private void OnDensityValueChanged(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return;

            int val;
            if (int.TryParse(text, out val))
            {
                Parameters.Density = val;
            }

            if (Parameters.Density > 40)
                Parameters.Density = 40;
            if (Parameters.Density < 0)
                Parameters.Density = 1;

            txtDensity.Text = Parameters.Density.ToString();
        }

        private void textIteration_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (int)13)
            {
                OnIterationValueChanged(textIteration.Text);
            }
        }

        private void textIteration_Leave(object sender, EventArgs e)
        {
            OnIterationValueChanged(textIteration.Text);
        }

        private void OnIterationValueChanged(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return;

            int val;
            if (int.TryParse(text, out val))
            {
                Parameters.Iteration = val;
            }

            if (Parameters.Iteration > 200)
                Parameters.Iteration = 200;
            if (Parameters.Iteration < 0)
                Parameters.Iteration = 1;

            textIteration.Text = Parameters.Iteration.ToString();
        }

        private void txtMaxInitialDelay_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (int)13)
            {
                OnMaxInitialDelayValueChanged(txtMaxInitialDelay.Text);
            }
        }

        private void txtMaxInitialDelay_Leave(object sender, EventArgs e)
        {
            OnMaxInitialDelayValueChanged(txtMaxInitialDelay.Text);
        }

        private void OnMaxInitialDelayValueChanged(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return;

            double val;
            if (double.TryParse(text, out val))
            {
                Parameters.MaxInitialDelay = val;
            }

            if (Parameters.MaxInitialDelay > 1000)
                Parameters.MaxInitialDelay = 1000;
            if (Parameters.MaxInitialDelay < 0)
                Parameters.MaxInitialDelay = 0;

            txtMaxInitialDelay.Text = string.Format("{0:#0.0}", Parameters.MaxInitialDelay);
        }

        private void txtSkipCycle_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (int)13)
            {
                OnSkipCycleValueChanged(txtSkipCycle.Text);
            }
        }

        private void txtSkipCycle_Leave(object sender, EventArgs e)
        {
            OnSkipCycleValueChanged(txtSkipCycle.Text);
        }

        private void OnSkipCycleValueChanged(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return;

            int val;
            if (int.TryParse(text, out val))
            {
                Parameters.SkipCycle = val;
            }

            if (Parameters.SkipCycle > 100)
                Parameters.SkipCycle = 100;
            if (Parameters.SkipCycle < 0)
                Parameters.SkipCycle = 0;

            txtSkipCycle.Text = Parameters.SkipCycle.ToString();
        }

        private void cbIRange_SelectedIndexChanged(object sender, EventArgs e)
        {
            Parameters.IRange = (CurrentRange)(cbIRange.SelectedIndex);
        }

        private void cbCycle_SelectedIndexChanged(object sender, EventArgs e)
        {
            Parameters.Cycle = (cbCycle.SelectedIndex <= 0)
                ? 0
                : (int)Math.Pow(2, cbCycle.SelectedIndex);
        }

        private void buttonStart_Click(object sender, EventArgs e)
        {
            OnStartExperimentClicked(e);
        }
    }
}
