using MathNet.Numerics;
using System;
using System.ComponentModel;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Win.Controls;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class panelCooker : UserControl
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

        public int Index
        {
            get { return index; }
            set
            {
                if (Status == null || Status.State != State.Idle || Status.ZData == null || Status.ZData.Count == 0)
                    return;

                index = Math.Max(0, value);
                index = Math.Min(index, Status.ZData.Count - 1);
                UpdateUI();
            }
        }
        private int index = 0;

        public ZParameters Get_Init_ZPara()
        {
            var par = Status.IsValidParameters ? Status.ZParameters : new ZParameters();
            return par;
        }

        #endregion Public Properties

        #region Custom Events

        public event EventHandler ReadSamplesVuttonClicked;
        protected virtual void OnReadSamplesButtonClicked(EventArgs e)
        {
            var handler = ReadSamplesVuttonClicked;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler StartExperimentClicked;
        protected virtual void OnStartExperimentClicked(EventArgs e)
        {
            var handler = StartExperimentClicked;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler StopExperimentClicked;
        protected virtual void OnStopExperimentClicked(EventArgs e)
        {
            var handler = StopExperimentClicked;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler RefreshVacClicked;
        protected virtual void OnRefreshVacClicked(EventArgs e)
        {
            var handler = RefreshVacClicked;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler IndexChanged;
        protected virtual void OnIndexChanged(EventArgs e)
        {
            var handler = IndexChanged;
            if (handler != null)
                handler(this, e);
        }

        #endregion Custom Events

        #region Life and Death

        public panelCooker()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        #endregion Life and Death

        #region Private Methods

        private void UpdateUI()
        {
            if (Status == null || Status.State == State.NotAssigned)
            {         
                labelElapsedTime.Visible = false;
                progressBar.Visible = false;

                labelFrequency.Text = "-- Hz";
                labelZmag.Text = "--";
                labelZphase.Text = "--";

                buttonSetUp.Enabled = true;
                buttonStart.Enabled = false;
                buttonStop.Enabled = false;

                buttonGoFirst.Enabled = false;
                buttonGoPrevious.Enabled = false;
                buttonGoNext.Enabled = false;
                buttonGoLast.Enabled = false;

                return;
            }

            if (Status.State == State.Running || Status.State == State.InitDelay || Status.State == State.Finished || Status.State == State.Stopped )
            {
                // Elapsed Time                
                labelElapsedTime.Text = string.Format("{0:##00}:{1:00}:{2:00}", Status.ElapsedTime.Hours, Status.ElapsedTime.Minutes, Status.ElapsedTime.Seconds);
                labelElapsedTime.Visible = true;

                // Progress
                progressBar.Maximum = Status.Steps;
                progressBar.Value = Math.Min(progressBar.Maximum, Status.CurrentStep);
                progressBar.Visible = true;

                labelFrequency.Text = double.IsNaN(Status.LastFrequency)
                    ? "-- Hz"
                    : string.Format("{0:#0.00} Hz", Status.LastFrequency);

                labelZmag.Text = double.IsNaN(Status.LastFrequency) || double.IsNaN(Status.LastImpedance.Magnitude)
                    ? "--"
                    : string.Format("{0:#0.000}", Status.LastImpedance.Magnitude * 1000.0);

                labelZphase.Text = double.IsNaN(Status.LastFrequency) || double.IsNaN(Status.LastImpedance.Phase)
                    ? "--"
                    : string.Format("{0:#0.000}", Status.LastImpedance.Phase * 180.0 / Constants.Pi);

                index = Status.CurrentStep;
            }
            else if (Status.State == State.RunningNoiseLevel)
            {
                // Elapsed Time                
                labelElapsedTime.Text = string.Format("{0:##00}:{1:00}:{2:00}", Status.ElapsedTime.Hours, Status.ElapsedTime.Minutes, Status.ElapsedTime.Seconds);
                labelElapsedTime.Visible = true;

                // Progress
                progressBar.Visible = false;
            }
            else
            {
                labelElapsedTime.Visible = false;
                progressBar.Visible = false;

                var isAvailableZData = (Status.ZData != null && Status.ZData.Count > 0);
                if (isAvailableZData)
                {
                    index = Math.Min(Index, Status.ZData.Count - 1);
                    index = Math.Max(Index, 0);
                }

                labelFrequency.Text = !isAvailableZData
                    ? "-- Hz"
                    : string.Format("{0:#0.00} Hz", Status.ZData[Index].Frequency);

                labelZmag.Text = !isAvailableZData
                    ? "--"
                    : string.Format("{0:#0.000}", Status.ZData[Index].Impedance.Magnitude * 1000.0);

                labelZphase.Text = !isAvailableZData
                    ? "--"
                    : string.Format("{0:#0.000}", Status.ZData[Index].Impedance.Phase * 180.0 / Constants.Pi);
            }

            // Buttons
            buttonSetUp.Enabled = (Status.State != State.Running
                                && Status.State != State.InitDelay
                                && Status.State != State.RunningNoiseLevel
                                && Status.State != State.RefreshVac
                                && Status.State != State.DetectedNotYetReady
                                && Status.State != State.DetecteNoZIM
                                && Status.State != State.DetectedFaild
                                && Status.State != State.DetectedOverTemperatue);

            buttonStart.Enabled = ( Status.State != State.Running
                                && Status.State != State.InitDelay
                                && Status.State != State.RunningNoiseLevel
                                && Status.State != State.RefreshVac
                                && Status.State != State.DetectedNotYetReady
                                && Status.State != State.DetectedFaild
                                && Status.State != State.DetecteNoZIM
                                && Status.State != State.DetectedOverTemperatue
                                && Status.IsValidParameters);

            buttonStop.Enabled = (Status.State == State.Running || Status.State == State.InitDelay || Status.State == State.RefreshVac);

            buttonRefreshVac.Enabled = (Status.State != State.Running
                                && Status.State != State.InitDelay
                                && Status.State != State.RunningNoiseLevel
                                && Status.State != State.RefreshVac
                                && Status.State == State.DetectedNotYetReady);

            buttonRefresh.Enabled = (Status.State == State.Idle
                                || Status.State == State.Stopped
                                || Status.State == State.DetecteNotYetCalibrated
                                || Status.State == State.DetecteErrorCommZIM
                                || Status.State == State.DetecteFailedControl
                                || Status.State == State.Finished);

            buttonGoFirst.Enabled = 
                (Status.State == State.Idle
                     || Status.State == State.Stopped
                     || Status.State == State.DetecteNotYetCalibrated
                     || Status.State == State.DetecteErrorCommZIM
                     || Status.State == State.DetecteFailedControl
                     || Status.State == State.Finished)
                && Status.ZData != null
                && Status.ZData.Count > 0
                && Index != 0;
            buttonGoPrevious.Enabled = 
                (Status.State == State.Idle
                    || Status.State == State.Stopped
                    || Status.State == State.DetecteNotYetCalibrated
                    || Status.State == State.DetecteErrorCommZIM
                    || Status.State == State.DetecteFailedControl
                    || Status.State == State.Finished)
                && Status.ZData != null
                && Status.ZData.Count > 0
                && Index > 0;
            buttonGoNext.Enabled =
                (Status.State == State.Idle
                    || Status.State == State.Stopped
                    || Status.State == State.DetecteNotYetCalibrated
                    || Status.State == State.DetecteErrorCommZIM
                    || Status.State == State.DetecteFailedControl
                    || Status.State == State.Finished) 
                && Status.ZData != null
                && Status.ZData.Count > 0
                && Index < Status.ZData.Count - 1;
            buttonGoLast.Enabled =
                (Status.State == State.Idle
                    || Status.State == State.Stopped
                    || Status.State == State.DetecteNotYetCalibrated
                    || Status.State == State.DetecteErrorCommZIM
                    || Status.State == State.DetecteFailedControl
                    || Status.State == State.Finished)
                && Status.ZData != null
                && Status.ZData.Count > 0
                && Index != Status.ZData.Count - 1;
        }

        #endregion Private Methods

        #region Private Event Handlers
        
        private void buttonSetUp_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            var par = Status.IsValidParameters ? Status.ZParameters : null;
            var panelControl = new PanelSetupParameters() { Parameters = par };
            var popupPanel = new PopupPanel(panelControl);
            popupPanel.ShowingAnimation = PopupAnimations.Slide | PopupAnimations.TopToBottom;
            popupPanel.HidingAnimation = PopupAnimations.Slide | PopupAnimations.BottomToTop;
            popupPanel.AutoSize = true;
            popupPanel.Show(control);

            panelControl.StartExperimentClicked += delegate
            {
                popupPanel.Close();
                Status.ZParameters = panelControl.Parameters;
                var args = new ParametersEventArgs(panelControl.Parameters);
                OnStartExperimentClicked(args);
            };
        }

        private void buttonStart_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            var args = new ParametersEventArgs(Status.ZParameters);
            OnStartExperimentClicked(args);
        }

        private void buttonRefreshVac_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            OnRefreshVacClicked(e);
        }

        private void buttonStop_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            OnStopExperimentClicked(e);
        }

        private void buttonGoFirst_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (Status.State == State.Running || Status.State == State.InitDelay 
                || Status.State == State.RunningNoiseLevel || Status.State == State.RefreshVac
                || Status.ZData == null || Status.ZData.Count == 0)
                return;


            index = 0;

            IntEventArgs args = new IntEventArgs(index);
            OnIndexChanged(args);
        }

        private void buttonGoPrevious_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (Status.State == State.Running || Status.State == State.InitDelay
               || Status.State == State.RunningNoiseLevel || Status.State == State.RefreshVac
               || Status.ZData == null || Status.ZData.Count == 0)
                return;

            if (index < 1) index = 0; else index--;

            IntEventArgs args = new IntEventArgs(index);
            OnIndexChanged(args);
        }

        private void buttonGoNext_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (Status.State == State.Running || Status.State == State.InitDelay
               || Status.State == State.RunningNoiseLevel || Status.State == State.RefreshVac
               || Status.ZData == null || Status.ZData.Count == 0)
                return;

            if (index >= Status.ZData.Count - 1) index = Status.ZData.Count - 1; else index++;

            IntEventArgs args = new IntEventArgs(index);
            OnIndexChanged(args);
        }

        private void buttonGoLast_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (Status.State == State.Running || Status.State == State.InitDelay
               || Status.State == State.RunningNoiseLevel || Status.State == State.RefreshVac
               || Status.ZData == null || Status.ZData.Count == 0)
                return;

            index = Status.ZData.Count - 1;

            IntEventArgs args = new IntEventArgs(index);
            OnIndexChanged(args);
        }

        private void buttonRefresh_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            OnReadSamplesButtonClicked(e);
        }

        #endregion Private Event Handlers

        private void panelCooker_Load(object sender, EventArgs e)
        {

        }
    }
}
