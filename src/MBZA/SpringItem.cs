using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Forms;

namespace ZiveLab.ZM
{
    public partial class SpringItem : UserControl
    {        
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        [Bindable(false)]
        [Browsable(false)]
        public KeyValuePair<string, string> Pair
        {
            get { return pair; }
            set
            {
                pair = value;
                labelKey.Text = pair.Key;
                labelValue.Text = pair.Value;
            }
        }
        KeyValuePair<string, string> pair;

        public SpringItem()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }
    }
}
