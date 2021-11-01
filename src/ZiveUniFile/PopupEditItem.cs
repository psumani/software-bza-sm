using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ZiveUniFile
{
    public partial class PopupEditItem : Form
    {
        private bool bActiveForm;
        private stFlexHeadItem Item;
        public PopupEditItem(stFlexHeadItem item)
        {
            bActiveForm = false;
            InitializeComponent();
            Item = item;
            InitCboItemType();
            InitCboDataType();
            RefreshView();
        }

        private void InitCboItemType()
        {
            CboItemType.Items.Clear();
            
            CboItemType.Items.Add(eDataItemType.Custom.ToString());

            CboItemType.Items.Add(eDataItemType.Test_Time.ToString());
            CboItemType.Items.Add(eDataItemType.Batch_Time.ToString());
            CboItemType.Items.Add(eDataItemType.Cycle_Time.ToString());
            CboItemType.Items.Add(eDataItemType.Step_Time.ToString());
            CboItemType.Items.Add(eDataItemType.Batch_Step_No.ToString());
            CboItemType.Items.Add(eDataItemType.Cycle_No.ToString());
            CboItemType.Items.Add(eDataItemType.Step_No.ToString());
            CboItemType.Items.Add(eDataItemType.STair_Step_No.ToString());

            CboItemType.Items.Add(eDataItemType.Current.ToString());
            CboItemType.Items.Add(eDataItemType.Idc.ToString());
            CboItemType.Items.Add(eDataItemType.lac.ToString());

            CboItemType.Items.Add(eDataItemType.Voltage.ToString());
            CboItemType.Items.Add(eDataItemType.Vdc.ToString());
            CboItemType.Items.Add(eDataItemType.Vac.ToString());

            CboItemType.Items.Add(eDataItemType.Frequency.ToString());
            CboItemType.Items.Add(eDataItemType.Zreal.ToString());
            CboItemType.Items.Add(eDataItemType.Zimg.ToString());
            CboItemType.Items.Add(eDataItemType.Zmag.ToString());
            CboItemType.Items.Add(eDataItemType.Zph.ToString());

            CboItemType.SelectedItem = eDataItemType.Custom.ToString();
        }

        private void InitCboDataType()
        {
            CboDataType.Items.Clear();
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._null));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._double));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._float));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._long));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._int));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._short));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._ulong));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._uint));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._ushort));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._char));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._byte));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._string));
            CboDataType.Items.Add(EnumUtil.GetDescription(eDataType._byte_array));
            CboDataType.SelectedItem = EnumUtil.GetDescription(eDataType._null);
            txtDataSize.ReadOnly = false;
        }

        private void RefreshView()
        {
            string str;
            txtCaption.Text = Item.GetLabel();
            txtUnit.Text = Item.GetUnit();
            CboItemType.SelectedItem = ((eDataItemType)Item.Type).ToString();
            CboDataType.SelectedItem = EnumUtil.GetDescription((eDataType)Item.Datatype);
            txtDataSize.Text = Item.GetDataSize((eDataType)Item.Datatype).ToString();
            str = CboDataType.SelectedItem.ToString();
            if (str == EnumUtil.GetDescription(eDataType._char)
                    || str == EnumUtil.GetDescription(eDataType._string)
                    || str == EnumUtil.GetDescription(eDataType._byte_array))
            {
                txtDataSize.ReadOnly = false;
            }
            else
            {
                txtDataSize.ReadOnly = true;
            }

        }

        private void btOk_Click(object sender, EventArgs e)
        {
            txtCaption.Text = txtCaption.Text.Trim();
            Item.SetLabel(txtCaption.Text);

            txtUnit.Text = txtUnit.Text.Trim();
            Item.SetUnit(txtUnit.Text);
            Item.DataSize = Convert.ToByte(txtDataSize.Text.ToString());

            Item.Type = (byte)Enum.Parse(typeof(eDataItemType), CboItemType.SelectedItem.ToString());
            Item.Datatype = (byte)Enum.Parse(typeof(eDataType), "_" + CboDataType.SelectedItem.ToString());
            Item.DataSize = Item.GetDataSize((eDataType)Item.Datatype);

            this.DialogResult = DialogResult.OK;
        }

        private void btCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        public stFlexHeadItem GetItemInfo()
        {
            return Item;
        }

        private void txtCaption_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void txtUnit_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void CboItemType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bActiveForm == false) return;
            
        }

        private void CboDataType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bActiveForm == false) return;
            string str;
            str = CboDataType.SelectedItem.ToString();
            if (CboDataType.SelectedIndex >= 0)
            {
                if(str == EnumUtil.GetDescription(eDataType._char)
                    || str == EnumUtil.GetDescription(eDataType._string)
                    || str == EnumUtil.GetDescription(eDataType._byte_array))
                {
                    txtDataSize.ReadOnly = false;
                }
                else
                {
                    txtDataSize.ReadOnly = true;
                }
            }
            
        }

        private void PopupEditItem_Load(object sender, EventArgs e)
        {
            bActiveForm = true;
        }
    }
}
