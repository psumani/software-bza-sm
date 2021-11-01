using System;
using System.ComponentModel;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Utilities;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelNoiseLevelHeader : UserControl
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

        public PanelNoiseLevelHeader()
        {
            InitializeComponent();
        }

        #endregion Life and Death

        #region Private Methods

        private void UpdateUI()
        {
            this.labelTitle.Text = (Status!= null && Status.NoiseLevel != null && Status.NoiseLevel.IsValid)
                ? string.Format("{0:#0.0} uVrms measured in {1} range", Status.NoiseLevel.NoiseVoltage * 1E6, Status.NoiseLevel.NoiseIRange.GetDescription())
                : "Noise Level - not yet measured";
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
