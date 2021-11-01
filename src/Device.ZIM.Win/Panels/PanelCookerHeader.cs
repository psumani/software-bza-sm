using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelCookerHeader : UserControl
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

        public PanelCookerHeader()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        #endregion Life and Death

        #region Private Methods

        private void UpdateUI()
        {
            string titleText = ""; 

            if (Status == null || Status.State == State.NotAssigned)
            {
                titleText = "Not yet assigned";
            }
            else if (Status.State == State.Running || Status.State == State.InitDelay || Status.State == State.Finished || Status.State == State.Stopped)
            {
                titleText = string.Format("Cooking @ {0:#0.00 Hz}", Status.StepFrequency); // TODO: display "Initial Delay"
            }
            else if (Status.State == State.RunningNoiseLevel)
            {
                titleText = "Measuring noise level...";
            }
            else
            {
                titleText = (Status.ZData != null && Status.ZData.Count > 0)
                    ? string.Format("Cooked @ {0:yyyy-MM-dd HH:mm:ss}", Status.Started)
                    : "Not yet cooked";
            }

            if (labelTitle.Text != titleText)
                labelTitle.Text = titleText;
        }

        #endregion Private Methods

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

        #endregion Private Event Handlers
    }
}
