using System.ComponentModel;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Utilities;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelAux : UserControl
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
        private ChannelStatus status;
        #endregion Public Properties

        #region Life and Death

        public PanelAux()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        #endregion Life and Death

        #region Private Methods

        private void UpdateUI()
        {
            string str;

            var LastStatText = "Last status:--";
            if (Status == null || Status.Eisstate == EisState.none) LastStatText = "Last status:--";
            else if (Status.Eisstate < EisState.lastauto) LastStatText = "Last action:" + Status.Eisstate.GetDescription();
            else LastStatText = "Last status:" + Status.Eisstate.GetDescription();

            if (lblLastStatus.Text != LastStatText)
                lblLastStatus.Text = LastStatText;
            if (Status.Eisstate == EisState.none) lblLastStatus.ForeColor = System.Drawing.Color.Black;
            else if (Status.Eisstate < EisState.lastauto) lblLastStatus.ForeColor = System.Drawing.Color.DarkGreen;
            else if (Status.Eisstate == EisState.lastauto) lblLastStatus.ForeColor = System.Drawing.Color.DarkBlue;
            else lblLastStatus.ForeColor = System.Drawing.Color.DarkRed;

            var StatText = (Status == null || Status.State == State.NotAssigned)
                ? "Test status:--"
                : "Test status:"+Status.State.GetDescription();
            if (lblTestStatus.Text != StatText)
                lblTestStatus.Text = StatText;

            if (Status.State == State.Running || Status.State == State.RunningNoiseLevel) lblTestStatus.ForeColor = System.Drawing.Color.Blue;
            else if (Status.State == State.InitDelay) lblTestStatus.ForeColor = System.Drawing.Color.Green;
            else if (Status.State == State.DetectedFaild
                || Status.State == State.DetectedOverTemperatue
                || Status.State == State.DetecteNoZIM
                || Status.State == State.DetectedNotYetReady) lblTestStatus.ForeColor = System.Drawing.Color.Red;
            else if (Status.State == State.DetecteFailedControl
                || Status.State == State.DetecteErrorCommZIM) lblTestStatus.ForeColor = System.Drawing.Color.DarkRed;
            else lblTestStatus.ForeColor = System.Drawing.Color.Black;

            // Voltage Range
            var vRangeText = "";
            if (Status.mType == eDeviceType.BZA100)
            {
                vRangeText = (Status == null || Status.State == State.NotAssigned)
                    ? "--"
                    : ((VoltageRange_BZA100)Status.VoltageRange).GetDescription() + " range";
            }
            else
            {
                vRangeText = (Status == null || Status.State == State.NotAssigned)
                   ? "--"
                   : Status.VoltageRange.GetDescription() + " range";
            }
            if(labelVRange.Text != vRangeText)
                    labelVRange.Text = vRangeText;

            // Current range
            var iRangeText = (Status == null || Status.State == State.NotAssigned)
                ? "--"
                : Status.CurrentRange.GetDescription() + " range";
            if (labelIRange.Text != iRangeText)
                labelIRange.Text = iRangeText;

            // AuxVoltage
            if (Status.AuxVoltage >= 1000.0) str = string.Format("{0:#0.0}", Status.AuxVoltage);
            else if (Status.AuxVoltage >= 100.0) str = string.Format("{0:#0.00}", Status.AuxVoltage);
            else str = string.Format("{0:#0.000}", Status.AuxVoltage);

            var auxVoltageText = (Status == null || Status.State == State.NotAssigned || double.IsNaN(Status.AuxVoltage))
                ? "--"
                : str; // string.Format("{0:#0.000}", Status.AuxVoltage);
            if (labelAuxVoltage.Text != auxVoltageText)
                labelAuxVoltage.Text = auxVoltageText;

            // AuxTemperature
            var auxTemperatureText = (Status == null || Status.State == State.NotAssigned || double.IsNaN(Status.AuxTemperature))
                ? "--" 
                : string.Format("{0:#0.0}", Status.AuxTemperature);
            if (labelAuxTemperature.Text != auxTemperatureText)
                labelAuxTemperature.Text = auxTemperatureText;
        }

        #endregion Private Methods
    }
}
