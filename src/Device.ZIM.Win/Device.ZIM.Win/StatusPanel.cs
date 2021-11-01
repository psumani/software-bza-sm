using Device.ZIM.Win.Controls;
using Device.ZIM.Win.Panels;
using System;
using System.Diagnostics;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using ZiveLab.Device.ZIM;
using ZiveLab.Device.ZIM.Utilities;

namespace Device.ZIM.Win
{
    public partial class StatusPanel : UserControl
    {
        private ZimStatus status;
        public ZimStatus Status
        {
            get { return status; }
            set
            {
                status = value;
                UpdateUI();
            }
        }

        private int index = 0;
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

        public event EventHandler MeasureNoiseLevelClicked;
        protected virtual void OnMeasureNoiseLevelClicked(EventArgs e)
        {
            var handler = MeasureNoiseLevelClicked;
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

        public event EventHandler ReadAllMenuSelected;
        protected virtual void OnReadAllMenuSelected(EventArgs e)
        {
            var handler = ReadAllMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler SaveAllMenuSelected;
        protected virtual void OnSaveAllMenuSelected(EventArgs e)
        {
            var handler = SaveAllMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler SaveSamplesMenuSelected;
        protected virtual void OnSaveSamplesMenuSelected(EventArgs e)
        {
            var handler = SaveSamplesMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public StatusPanel()
        {
            InitializeComponent();

            InitializeUI();
        }

        private MenuItem menuAbout;
        private MenuItem menuReadAll;
        private MenuItem menuSaveAll;
        private MenuItem menuSaveSamples;
        private void InitializeUI()
        {
            var cm = new ContextMenu();
            menuAbout = new MenuItem("About");
            menuAbout.Click += delegate
            {
                var panelControl = new PanelAbout(Status.About.ToKeyValuePairs());
                var popupPanel = new PopupPanel(panelControl);
                popupPanel.ShowingAnimation = PopupAnimations.Slide | PopupAnimations.TopToBottom;
                popupPanel.HidingAnimation = PopupAnimations.Slide | PopupAnimations.BottomToTop;
                popupPanel.AutoSize = true;
                popupPanel.Show(cbMenu);
            };
            cm.MenuItems.Add(menuAbout);

            cm.MenuItems.Add("-");

            menuReadAll = new MenuItem("Read All Again");
            menuReadAll.Click += delegate
            {
                OnReadAllMenuSelected(null);
            };
            cm.MenuItems.Add(menuReadAll);

            cm.MenuItems.Add("-");

            menuSaveAll = new MenuItem("Save Data...");
            menuSaveAll.Click += delegate
            {
                OnSaveAllMenuSelected(null);
            };
            cm.MenuItems.Add(menuSaveAll);

            menuSaveSamples = new MenuItem("Save Samples...");
            menuSaveSamples.Click += delegate
            {
                OnSaveSamplesMenuSelected(null);
            };
            cm.MenuItems.Add(menuSaveSamples);

            cbMenu.ContextMenu = cm;
        }

        private void UpdateUI()
        {
            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();
                        
            if (Status == null || Status.State == State.NotAssigned)
            {
                groupBoxCooker.Text = "Idle";

                labelAuxVoltage.Text = "--";
                labelAuxTemperature.Text = "--";

                labelVRange.Text = "--";
                labelIRange.Text = "--";

                labelElapsedTime.Visible = false;
                progressBar.Visible = false;

                labelFrequency.Text = "-- Hz";
                labelZmag.Text = "--";
                labelZphase.Text = "--";

                buttonSetUp.Enabled = true;
                buttonStart.Enabled = false;
                buttonStop.Enabled = false;
                buttonPrevious.Enabled = false;
                buttonNext.Enabled = false;

                groupBoxCooker.Text = "EIS";
                labelNoiseVoltage.Text = "--";
                labelNoiseCurrent.Text = "--";

                buttonMeasureNoise.Enabled = false;
                buttonFindBestIRange.Enabled = false;

                menuReadAll.Enabled = false;
                menuSaveAll.Enabled = false;
                menuSaveSamples.Enabled = false;

                return;
            }

            // Voltage Range
            labelVRange.Text = Status.VoltageRange.GetDescription() + " range";

            // Current range
            labelIRange.Text = Status.CurrentRange.GetDescription() + " range";

            // AuxVoltage
            labelAuxVoltage.Text = double.IsNaN(Status.AuxVoltage) ? "--" : string.Format("{0:#0.000}", Status.AuxVoltage);

            // AuxTemperature
            labelAuxTemperature.Text = double.IsNaN(Status.AuxTemperature) ? "--" : string.Format("{0:#0.000}", Status.AuxTemperature);

            if (Status.State == State.Running)
            {
                groupBoxCooker.Text = string.Format("EIS - {0:yyyy-MM-dd HH:mm:ss}", Status.Started);

                // Status
                groupBoxCooker.Text = string.Format("Running @ {0:#0.00 Hz}", Status.StepFrequency);

                // Elapsed Time                
                labelElapsedTime.Text = string.Format("{0:##00}:{1:00}:{2:00}.{3:000}", Status.ElapsedTime.Hours, Status.ElapsedTime.Minutes, Status.ElapsedTime.Seconds, Status.ElapsedTime.Milliseconds);
                labelElapsedTime.Visible = true;

                // Progress
                progressBar.Maximum = Status.Steps;
                progressBar.Value = Math.Min(progressBar.Maximum, Status.CurrentStep);
                progressBar.Visible = true;

                labelFrequency.Text = double.IsNaN(Status.LastFrequency)
                    ? "-- Hz"
                    : string.Format("{0:#0.00} Hz", Status.LastFrequency);

                labelZmag.Text = double.IsNaN(Status.LastFrequency)
                    ? "--"
                    : string.Format("{0:#0.000}", Status.LastImpedance.Magnitude * 1000.0);

                labelZphase.Text = double.IsNaN(Status.LastFrequency)
                    ? "--"
                    : string.Format("{0:#0.000}", Status.LastImpedance.Phase / Constants.PiOver180);

                index = Status.CurrentStep;
            }
            else if (Status.State == State.RunningNoiseLevel)
            {
                // Status
                groupBoxCooker.Text = "Running - Noise Level";

                // Elapsed Time                
                labelElapsedTime.Text = string.Format("{0:##00}:{1:00}:{2:00}.{3:000}", Status.ElapsedTime.Hours, Status.ElapsedTime.Minutes, Status.ElapsedTime.Seconds, Status.ElapsedTime.Milliseconds);
                labelElapsedTime.Visible = true;

                // Progress
                progressBar.Visible = false;
            }
            else
            {
                groupBoxCooker.Text = Status.State.GetDescription();

                labelElapsedTime.Visible = false;
                progressBar.Visible = false;

                var isAvailableZData = (Status.ZData != null && Status.ZData.Count > 0);
                if (isAvailableZData)
                {
                    index = Math.Min(Index, Status.ZData.Count - 1);
                    index = Math.Max(Index, 0);
                }

                groupBoxCooker.Text = (isAvailableZData)
                    ? string.Format("EIS - {0:yyyy-MM-dd HH:mm:ss}", Status.Started)
                    : "EIS";

                labelFrequency.Text = !isAvailableZData
                    ? "-- Hz"
                    : string.Format("{0:#0.00} Hz", Status.ZData[Index].Frequency);

                labelZmag.Text = !isAvailableZData
                    ? "--"
                    : string.Format("{0:#0.000}", Status.ZData[Index].Impedance.Magnitude * 1000.0);

                labelZphase.Text = !isAvailableZData
                    ? "--"
                    : string.Format("{0:#0.000}", Status.ZData[Index].Impedance.Phase / Constants.PiOver180);
            }

            // Noise Level
            groupBoxNoiseLevel.Text = Status.IsValidNoiseMeasurement
                ? "Noise Level in " + Status.NoiseIRange.GetDescription() + " range"
                : "Noise Level - not yet measured";                
            labelNoiseVoltage.Text = Status.IsValidNoiseMeasurement
                ? string.Format("{0:#0.000}", Status.NoiseVoltage * 1E6) // uVrms
                : "--";
            labelNoiseCurrent.Text = Status.IsValidNoiseMeasurement
                ? string.Format("{0:#0.000}", Status.NoiseCurrent * 1E6) // uArms       
                : "--";

            // Buttons
            buttonSetUp.Enabled = (Status.State == State.Idle);
            buttonStart.Enabled = (Status.State != State.Running && Status.IsValidParameters);
            buttonStop.Enabled = (Status.State == State.Running);

            buttonPrevious.Enabled = Status.State == State.Idle 
                && Status.ZData != null 
                && Status.ZData.Count > 0
                && Index > 0;
            buttonNext.Enabled = Status.State == State.Idle
                && Status.ZData != null
                && Status.ZData.Count > 0
                && Index < Status.ZData.Count - 1;

            menuReadAll.Enabled = Status.State == State.Idle;
            menuSaveAll.Enabled = Status.State == State.Idle
                && Status.ZData != null
                && Status.ZData.Count > 0;
            menuSaveSamples.Enabled = Status.State == State.Idle
                && Status.ZData != null
                && Status.ZData.Count > 0
                && Index < Status.ZData.Count;

            buttonMeasureNoise.Enabled = (Status.State == State.Idle);
            buttonFindBestIRange.Enabled = (Status.State == State.Idle);

            Thread.Sleep(10);

            stopwatch.Stop();
            Debug.WriteLine("Time elapsed for updating UI in StatusPanel: {0}", stopwatch.Elapsed);
        }
        
        private void buttonSetUp_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            var par = Status.IsValidParameters ? Status.ZParameters : null;
            var panelControl = new PanelSetupParameters(par);
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

            OnStartExperimentClicked(e);
        }

        private void buttonStop_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            OnStopExperimentClicked(e);
        }

        private void buttonMeasureNoiseLevel_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            var irange = (Status.IsValidNoiseMeasurement)
                ? Status.NoiseIRange
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
            var vrms = Status.IsValidNoiseMeasurement ? Status.NoiseVoltage : 0.000010;
            var panelControl = new PanelFindBestIRange(zexp, vrms);
            var popupPanel = new PopupPanel(panelControl);
            popupPanel.ShowingAnimation = PopupAnimations.Slide | PopupAnimations.TopToBottom;
            popupPanel.HidingAnimation = PopupAnimations.Slide | PopupAnimations.BottomToTop;
            popupPanel.AutoSize = true;
            popupPanel.Show(control);
        }

        private void buttonPrevious_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (Status.State != State.Idle || Status.ZData == null || Status.ZData.Count == 0)
                return;

            if (Index < 1) Index = 0; else Index--;

            IntEventArgs args = new IntEventArgs(Index);
            OnIndexChanged(args);
        }

        private void buttonNext_Click(object sender, EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (Status.State != State.Idle || Status.ZData == null || Status.ZData.Count == 0)
                return;

            if (Index > Status.ZData.Count - 1) Index = Status.ZData.Count - 1; else Index++;

            IntEventArgs args = new IntEventArgs(Index);
            OnIndexChanged(args);
        }

        private void cbMenu_MouseClick(object sender, MouseEventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (e.Button == MouseButtons.Left)
            {
                control.ContextMenu.Show(control, new Point(e.X, e.Y)); // PointToScreen(new Point(e.X, e.Y)));
            }
        }
    }

    public class IntEventArgs : EventArgs
    {
        public int Value;
        public IntEventArgs(int value)
        {
            Value = value;
        }
    }

    public class IRangeEventArgs : EventArgs
    {
        public CurrentRange IRange;
        public IRangeEventArgs(CurrentRange irange)
        {
            IRange = irange;
        }
    }

    public class ParametersEventArgs : EventArgs
    {
        public ZParameters Parameters;

        public ParametersEventArgs(ZParameters parameters)
        {
            Parameters = parameters;
        }
    }
}
