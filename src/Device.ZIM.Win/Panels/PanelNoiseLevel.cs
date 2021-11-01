using System;
using System.ComponentModel;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Win.Controls;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelNoiseLevel : UserControl
    {
        #region Public Properties

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        [Bindable(false)]
        [Browsable(false)]
        public ChannelStatus Status
        {
            get { return status; }
            set
            {
                status = value;
                UpdateUI();
            }
        }
        private ChannelStatus status = new ChannelStatus();

        #endregion Public Properties

        #region Custom Events

        public event EventHandler MeasureNoiseLevelClicked;
        protected virtual void OnMeasureNoiseLevelClicked(EventArgs e)
        {
            var handler = MeasureNoiseLevelClicked;
            if (handler != null)
                handler(this, e);
        }

        #endregion Custom Events

        #region Life and Death

        public PanelNoiseLevel()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        #endregion Life and Death

        #region Private Methods

        private void UpdateUI()
        {
            var noiseVoltageTxt = (Status == null || Status.NoiseLevel == null || !Status.NoiseLevel.IsValid)
                ? "--"
                : string.Format("{0:#0.000}", Status.NoiseLevel.NoiseVoltage * 1E6); // uVrms
            if (labelNoiseVoltage.Text != noiseVoltageTxt)
                labelNoiseVoltage.Text = noiseVoltageTxt;

            var noiseCurrentTxt = (Status == null || Status.NoiseLevel == null || !Status.NoiseLevel.IsValid)
                ? "--"
                : string.Format("{0:#0.000}", Status.NoiseLevel.NoiseCurrent * 1E6); // uArms       
            if (labelNoiseCurrent.Text != noiseCurrentTxt)
                labelNoiseCurrent.Text = noiseCurrentTxt;

            var enabled = (Status != null && Status.State != State.NotAssigned && Status.State != State.Running && Status.State != State.InitDelay && Status.State != State.RunningNoiseLevel);

            if (buttonMeasureNoise.Enabled != enabled)
                buttonMeasureNoise.Enabled = enabled;

            if (buttonFindBestIRange.Enabled != enabled)
                buttonFindBestIRange.Enabled = enabled;
        }

        #endregion Private Methods

        #region Private Event Handlers

        private void buttonMeasureNoiseLevel_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            var irange = (Status.NoiseLevel.IsValid)
                ? Status.NoiseLevel.NoiseIRange
                : Status.CurrentRange;

            var panelControl = new PanelSelectCurrentRange(irange);
            var popupPanel = new PopupPanel(panelControl);
            popupPanel.ShowingAnimation = PopupAnimations.Slide | PopupAnimations.TopToBottom;
            popupPanel.HidingAnimation = PopupAnimations.Slide | PopupAnimations.BottomToTop;
            popupPanel.AutoSize = true;
            popupPanel.Show(control);

            panelControl.StartExperimentClicked += delegate
            {
                popupPanel.Close();
                var args = new IRangeEventArgs(panelControl.IRange);
                OnMeasureNoiseLevelClicked(args);
            };
        }

        private void buttonFindBestIRange_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            var zexp = double.IsNaN(Status.LastImpedance.Magnitude) ? 0.001 : Status.LastImpedance.Magnitude;
            var vrms = Status.NoiseLevel.IsValid ? Status.NoiseLevel.NoiseVoltage : 0.000010;
            var panelControl = new PanelFindBestIRange(zexp, vrms);
            var popupPanel = new PopupPanel(panelControl);
            popupPanel.ShowingAnimation = PopupAnimations.Slide | PopupAnimations.TopToBottom;
            popupPanel.HidingAnimation = PopupAnimations.Slide | PopupAnimations.BottomToTop;
            popupPanel.AutoSize = true;
            popupPanel.Show(control);
        }

        #endregion Private Event Handlers
    }
}
