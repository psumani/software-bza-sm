using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ZiveLab.ZM
{
    public partial class LabelProgress : UserControl
    {
        private int prog_max;
        [Category("Progress")]
        [Description("Progress Maximum")]
        [DisplayName("Progress Maximum")]
        public int Prog_Max
        {
            get { return prog_max; }
            set
            {
                prog_max = value;
                this.Invalidate();
            }
        }
        private int prog_min;
        [Category("Progress")]
        [Description("Progress Minimum")]
        [DisplayName("Progress Minimum")]
        public int Prog_Min
        {
            get { return prog_min; }
            set
            {
                prog_min = value;
                this.Invalidate();
            }
        }

        private int prog_val;
        [Category("Progress")]
        [Description("Progress Value")]
        [DisplayName("Progress Value")]
        public int Prog_Val
        {
            get { return prog_val; }
            set
            {
                prog_val = value;
                this.Invalidate();
            }
        }

        private Color prog_color;
        [Category("Progress")]
        [Description("Progress Color")]
        [DisplayName("Progress Color")]
        public Color Prog_Color
        {
            get { return prog_color; }
            set
            {
                prog_color = value;
                this.Invalidate();
            }
        }

        private bool outline_visible;
        [Category("OutLine")]
        [Description("OutLine Visible")]
        [DisplayName("OutLine Visible")]
        public bool OutLine_Visible
        {
            get { return outline_visible; }
            set
            {
                outline_visible = value;
                this.Invalidate();
            }
        }

        private Color outline_color;
        [Category("OutLine")]
        [Description("OutLine Color")]
        [DisplayName("OutLine Color")]
        public Color OutLine_Color
        {
            get { return outline_color; }
            set
            {
                outline_color = value;
                this.Invalidate();
            }
        }

        private int outline_width;
        [Category("OutLine")]
        [Description("OutLine Width")]
        [DisplayName("OutLine Width")]
        public int OutLine_Width
        {
            get { return outline_width; }
            set
            {
                outline_width = value;
                this.Invalidate();
            }
        }

        private Color labelcolor;
        [Category("Label")]
        [Description("Label Color")]
        [DisplayName("Label Color")]
        public Color LabelColor
        {
            get { return labelcolor; }
            set
            {
                labelcolor = value;
                this.Invalidate();
            }
        }

        private string labeltext;
        [Category("Label")]
        [Description("Label Text")]
        [DisplayName("Label Text")]
        public string LabelText
        {
            get { return labeltext; }
            set
            {
                labeltext = value;
                this.Invalidate();
            }
        }


        public LabelProgress()
        {
            InitializeComponent();
            prog_max = 100;
            prog_min = 0;
            prog_val = 50;
            prog_color = Color.Aqua;

            outline_visible = true;
            outline_color = Color.Black;
            outline_width = 1;

            labeltext = "Label progressbar";
            labelcolor = Color.Black;
          
            //SetStyle(ControlStyles.ResizeRedraw, true);
        }

        private void LabelProgress_SizeChanged(object sender, EventArgs e)
        {

        }

        private void LabelProgress_Load(object sender, EventArgs e)
        {

        }

        private void LabelProgress_Paint(object sender, PaintEventArgs e)
        {
            float percent = (float)prog_val / (float)(prog_max - prog_min);

            float view_width = ((float)this.Size.Width - 2.0f) * percent;
            float view_height = ((float)this.Size.Height - 2.0f);
            
            SizeF fsize = e.Graphics.MeasureString(labeltext, this.Font);

            float text_x = this.Size.Width * 0.5f - fsize.Width * 0.5f;
            float text_y = this.Size.Height * 0.5f - fsize.Height * 0.5f;

            SolidBrush progbrush = new SolidBrush(prog_color);
            var fillarea = new RectangleF(new PointF(1.0f, 1.0f), new SizeF(view_width, view_height));
            e.Graphics.FillRectangle(progbrush, fillarea);

            Brush txtbrush = new SolidBrush(labelcolor);
            e.Graphics.DrawString(labeltext, this.Font, txtbrush, text_x, text_y);

            if (outline_visible)
            {
                var myPen = new Pen(outline_color, outline_width);
                var area = new Rectangle(new Point(0, 0), new Size(this.Size.Width - 1, this.Size.Height - 1));
                e.Graphics.DrawRectangle(myPen, area);
                myPen.Dispose();
            }

            progbrush.Dispose();
            txtbrush.Dispose();
        }
    }
    
}
