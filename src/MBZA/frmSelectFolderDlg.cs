using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ZiveLab.ZM
{
    public partial class frmSelectFolderDlg : Form
    {
        private frmMdiMain mMdiParent;
        private bool bSchedule;
        public string SelectPath;
        public frmSelectFolderDlg(bool schedulepath = false, frmMdiMain tMdiparent = null)
        {
            InitializeComponent();
            this.Icon = gBZA.BitmapToIcon(Properties.Resources.PathListBoxItem);
            mMdiParent = tMdiparent;
            bSchedule = schedulepath;

            RefreshPathList();

            if (bSchedule)
            {
                SelectPath = gBZA.appcfg.PathSch[0];
                if (SelectPath.Trim().Length < 5) SelectPath = gBZA.appcfg.PathAlwaysSch;
            }
            else
            {
                SelectPath = gBZA.appcfg.PathData[0];
                if (SelectPath.Trim().Length < 5) SelectPath = gBZA.appcfg.PathAlwaysData;
            }
            txtpath.Text = SelectPath;
        }

        private void RefreshPathList()
        {
            ListPath.Clear();
            ListPath.View = View.Details;
            ListPath.FullRowSelect = true;
            ListPath.GridLines = true;

            ListPath.Columns.Clear();
            ListPath.Columns.Add("Index", 60,HorizontalAlignment.Center);
            ListPath.Columns.Add("Remembered path", ListPath.Width-80, HorizontalAlignment.Center);

            ListPath.OwnerDraw = true;

            int i = 0;
            if (bSchedule)
            {
                var uniquepathsch = gBZA.appcfg.PathSch.Distinct();
                foreach (var spath in uniquepathsch)
                {
                    ListViewItem item = new ListViewItem(string.Format("{0}", i + 1));
                    item.SubItems.Add(spath);                           
                    ListPath.Items.Add(item);
                    i++;
                }
            }
            else
            {
                var uniquepathdata = gBZA.appcfg.PathData.Distinct();
                foreach (var spath in uniquepathdata)
                {
                    ListViewItem item = new ListViewItem(string.Format("{0}", i + 1));
                    item.SubItems.Add(spath);

                    ListPath.Items.Add(item);
                    i++;
                }
            }
        }

        private void ListPath_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ListPath.SelectedItems.Count > 0)
            {
                ListViewItem selectedItem = ListPath.SelectedItems[0];
                txtpath.Text = selectedItem.SubItems[1].Text;
            }
            else
            {
                txtpath.Text = string.Empty;
            }
        }

        private void btOk_Click(object sender, EventArgs e)
        {
            SelectPath = txtpath.Text;
            this.DialogResult = DialogResult.OK;
        }

        private void ListPath_DrawColumnHeader(object sender, DrawListViewColumnHeaderEventArgs e)
        {
            using (SolidBrush backBrush = new SolidBrush(Color.LightGray))
            {
                e.Graphics.FillRectangle(backBrush, e.Bounds);
            }

            // 헤더 텍스트 그리기 (글자색: 흰색)
            using (SolidBrush textBrush = new SolidBrush(Color.Black))
            {
                // 정렬 기준 설정 (기본값: 왼쪽 정렬)
                StringFormat sf = new StringFormat();
                switch (e.Header.TextAlign)
                {
                    case HorizontalAlignment.Center:
                        sf.Alignment = StringAlignment.Center;
                        break;
                    case HorizontalAlignment.Right:
                        sf.Alignment = StringAlignment.Far;
                        break;
                    default:
                        sf.Alignment = StringAlignment.Near;
                        break;
                }
                sf.LineAlignment = StringAlignment.Center; // 세로 중앙 정렬

                // 텍스트 출력
                e.Graphics.DrawString(e.Header.Text, e.Font, textBrush, e.Bounds, sf);
            }
        }
        private void ListPath_DrawItem(object sender, DrawListViewItemEventArgs e)
        {
            e.DrawDefault = true;
        }

        private void ListPath_DrawSubItem(object sender, DrawListViewSubItemEventArgs e)
        {
            e.DrawDefault = true;
        }
    }
}
