using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ZiveUniFile
{
    public partial class PopupEditGroup : Form
    {
        private int Selected;
        private stFlexTitleGroup Group;
        public PopupEditGroup(stFlexTitleGroup group)
        {
            InitializeComponent();

            Group = group;
            Selected = -1;

            cbogrptype.Items.Clear();
            cbogrptype.Items.Add(eGroupRowType.Information.ToString());
            cbogrptype.Items.Add(eGroupRowType.DataHead.ToString());

            RefreshView();
        }
        public stFlexTitleGroup GetGroupInfo()
        {
            return Group;
        }
        public void RefreshView()
        {
            Group.Header.DataRowSize = Group.GetDataRowSize();
            Group.Header.Size = Group.GetGroupSize();
            Group.Header.Count = Group.GetItemCount();

            txtkey.Text = string.Format("{0}", Group.Header.Index);
            cbogrptype.SelectedIndex = Group.Header.Type;
            txtcaption.Text = Group.GroupLabel.GetLabel();
            txtgroupsize.Text = string.Format("{0}", Group.Header.Size);
            txtdatasize.Text = string.Format("{0}", Group.Header.DataRowSize);
            txtitems.Text = string.Format("{0}", Group.Header.Count);
            if (Group.Header.Count < 1) Selected = -1;
            else
            {
                if (Selected < 0) Selected = 0;
                else if(Selected >= Group.Header.Count) Selected = Group.Header.Count-1;
            }
            if (Selected < 0)
            {
                txtselitem.Text = "";
                btdelitem.Enabled = false;
            }
            else
            {
                listItem.Items[Selected].Selected = true;
                txtselitem.Text = string.Format("{0}", Selected);
                btdelitem.Enabled = true;
            }
            RefreshListView();
        }
        private void InitializeListView()
        {
            listItem.Columns.Clear();
            listItem.Items.Clear();
            listItem.Clear();

            listItem.View = View.Details;
            listItem.GridLines = true;
            listItem.FullRowSelect = true;
            listItem.CheckBoxes = false;
            listItem.MultiSelect = false;
            listItem.LabelEdit = false;
            listItem.LabelWrap = false;
            listItem.HideSelection = false;

            listItem.Columns.Add("index", 50,HorizontalAlignment.Center);
            listItem.Columns.Add("Caption[Unit]", 200, HorizontalAlignment.Center);
            listItem.Columns.Add("Code", 60, HorizontalAlignment.Center);
            listItem.Columns.Add("Type", 60, HorizontalAlignment.Center);
            listItem.Columns.Add("DataSize", 70, HorizontalAlignment.Center);
            listItem.Columns.Add("ItemSize", 70, HorizontalAlignment.Center);
        }

        public void RefreshListView()
        {
            InitializeListView();
            int index = 0;
            if (Group.Items == null) return;

            ListViewItem imtem;

            foreach (stFlexHeadItem item in Group.Items)
            {
                imtem = new ListViewItem(
                            new string[] {
                                    string.Format("{0}", index + 1),
                                    string.Format("{0}[{1}]", item.GetLabel(), item.GetUnit()),
                                    string.Format("{0}", ((eDataItemType)item.Type).ToString()),
                                    string.Format("{0}", EnumUtil.GetDescription((eDataType)item.Datatype)),
                                    string.Format("{0}", item.DataSize),
                                    string.Format("{0}", item.Size)});
                listItem.Items.Add(imtem);
                index++;
            }

            if (Selected >= 0)
            {
                listItem.Items[Selected].Focused = true;
                listItem.Items[Selected].Selected = true;
                listItem.Focus();
            }
        }
        private void btcancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void btadd_Click(object sender, EventArgs e)
        {
            Group.GroupLabel.SetLabel(txtcaption.Text);
            Group.Header.Count = 0;
            Group.Header.Type = (byte)cbogrptype.SelectedIndex;
            Group.Header.DataRowSize = Group.GetDataRowSize();
            Group.Header.Size = Group.GetGroupSize();
            Group.Header.Count = Group.GetItemCount();
            this.DialogResult = DialogResult.OK;
        }

        private void listItem_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Group.Header.Count < 1 || listItem.FocusedItem == null)
            {
                if(Selected > 0) listItem.Items[Selected].Selected = false;
                Selected = -1;
            }
            else
            {
                Selected = listItem.FocusedItem.Index;
                if (Selected < 0) Selected = 0;
                else if (Selected >= Group.Header.Count) Selected = Group.Header.Count - 1;
            }
            if (Selected < 0)
            {
                txtselitem.Text = "";
                btdelitem.Enabled = false;
                btedititem.Enabled = false;
            }
            else
            {
                listItem.Items[Selected].Selected = true;
                txtselitem.Text = string.Format("{0}", Selected+1);
                btdelitem.Enabled = true;
                btedititem.Enabled = true;
            }
        }

        private void btdelitem_Click(object sender, EventArgs e)
        {
            if(Selected < 0 || Selected >= Group.Header.Count)
            {
                MessageBox.Show("Bad selected item.");
                return;
            }

            List<stFlexHeadItem> tmp = new List<stFlexHeadItem>(Group.Items);
            tmp.RemoveAt(Selected);
            Group.Items = tmp.ToArray();
            Trace.Assert(Group.Header.Count - 1 == Group.Items.Length, "************* No match size of stFlexHeadItem.");

            Group.Header.Count = (byte)Group.Items.Length;

            if (Group.Header.Count <= 1) Selected = -1;
            else if (Selected >= Group.Header.Count) Selected = Group.Header.Count - 1;

            RefreshListView();

            
        }

        private void btadditem_Click(object sender, EventArgs e)
        {
            stFlexHeadItem tItem = new stFlexHeadItem(true);
            PopupEditItem frm = new PopupEditItem(tItem);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                tItem = frm.GetItemInfo();
                Group.AddItem(tItem);
                Selected = Group.Header.Count - 1;
                RefreshListView();
            }
        }

        private void btedititem_Click(object sender, EventArgs e)
        {
            PopupEditItem frm = new PopupEditItem(Group.Items[Selected]);
            if(frm.ShowDialog() == DialogResult.OK)
            {
                Group.Items[Selected] = frm.GetItemInfo();
                RefreshListView();
            }
        }
    }
}
