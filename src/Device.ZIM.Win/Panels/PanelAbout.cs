using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Win.SubPanels;

namespace ZiveLab.Device.ZIM.Win.Panels
{
    public partial class PanelAbout : UserControl
    {
        #region Public Properties

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        [Bindable(false)]
        [Browsable(false)]
        public List<KeyValuePair<string, string>> Pairs
        {
            get { return pairs; }
            set
            {
                if (pairs != value)
                {
                    pairs = value;

                    if (pairs != null)
                        UpdateUI();
                    else
                        flowLayoutPanel.Controls.Clear();
                }
            }
        }
        List<KeyValuePair<string, string>> pairs;

        #endregion Public Properties

        #region Life and Death

        public PanelAbout()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        #endregion Life and Death

        #region Private Methods

        private void UpdateUI()
        {
            if (Pairs == null || Pairs.Count == 0)
            {
                this.flowLayoutPanel.Controls.Clear();
                return;
            }

            if (Pairs.Count == flowLayoutPanel.Controls.Count)
            {
                for (int i = 0; i < flowLayoutPanel.Controls.Count; i++)
                {
                    var control = flowLayoutPanel.Controls[i] as SpringItem;
                    control.Pair = new KeyValuePair<string, string>(Pairs[i].Key, Pairs[i].Value);
                }
                return;
            }

            this.flowLayoutPanel.Controls.Clear();
            var width = this.flowLayoutPanel.Width - 25;
            foreach (var pair in Pairs)
            {
                var item = new SpringItem() { Pair = pair };
                item.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
                item.Size = new System.Drawing.Size(width, 28);

                this.flowLayoutPanel.Controls.Add(item);
            }
        }

        #endregion Private Methods

        #region Private Event Handlers

        private void buttonCopyToClipboard_Click(object sender, System.EventArgs e)
        {
            var control = sender as CheckBox;
            control.Checked = false;

            if (Pairs == null || Pairs.Count < 1) return;

            StringBuilder sb = new StringBuilder();
            foreach (var x in Pairs)
            {
                sb.Append(x.Key);
                sb.Append("\t");
                sb.Append(x.Value);
                sb.AppendLine();
            }

            Clipboard.SetText(sb.ToString());
        }

        #endregion Private Event Handlers
    }
}
