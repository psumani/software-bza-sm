using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.Dataview;

namespace ZiveLab.ZM
{
    public partial class frmSetOption : Form
    {
        public DataViewSet tDataViewSet;
        public frmSetOption()
        {
            InitializeComponent();
            this.Icon = gBZA.BitmapToIcon(Properties.Resources.SettingsFile);
            tDataViewSet = gBZA.mDataViewSet;

        }
        public void SetLanguage(int langidx)
        {
            Properties.Resources.Culture = DataviewCommon.SetLanguage(this, langidx, typeof(frmSetOption));
        }
        private void Update(bool update = true)
        {
            if (update)
            {
                tDataViewSet._dataConvSet.DataColList.Clear();

                for (int i = 0; i < tvCol.Nodes.Count; i++)
                {
                    DataColItem gdCol = (DataColItem)tvCol.Nodes[i].Tag;

                    gdCol.Enable = tvCol.Nodes[i].Checked;

                    tDataViewSet._dataConvSet.DataColList.Add(gdCol);
                }
            }
            else
            {
                tvCol.Nodes.Clear();

                foreach (DataColItem gdcol in tDataViewSet._dataConvSet.DataColList)
                {
                    DataColItem clone = CoSerialize.Clone<DataColItem>(gdcol);

                    TreeNode treeNode = new TreeNode(clone.ToString());
                    treeNode.Tag = clone;
                    treeNode.Checked = clone.Enable;
                    tvCol.Nodes.Add(treeNode);

                    //if (clone.ColumnID == DataColItem.eColumnId.IR)
                    //{
                    //    treeNode.ForeColor = System.Drawing.Color.Gray;
                    //}
                }
            }
        }
        private void MoveNodeUp(TreeView treeView)
        {
            TreeNode selectedNode = treeView.SelectedNode;

            if (selectedNode == null || selectedNode.PrevNode == null)
                return;

            int index = selectedNode.Index;
            TreeNodeCollection nodes = selectedNode.Parent?.Nodes ?? treeView.Nodes;

            nodes.RemoveAt(index);
            nodes.Insert(index - 1, selectedNode);

            treeView.SelectedNode = selectedNode;
        }

        private void MoveNodeDown(TreeView treeView)
        {
            TreeNode selectedNode = treeView.SelectedNode;

            if (selectedNode == null || selectedNode.NextNode == null)
                return;

            int index = selectedNode.Index;
            TreeNodeCollection nodes = selectedNode.Parent?.Nodes ?? treeView.Nodes;

            nodes.RemoveAt(index);
            nodes.Insert(index + 1, selectedNode);

            treeView.SelectedNode = selectedNode;
        }


        private void btnOk_Click(object sender, EventArgs e)
        {
            Update();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {

        }

        private void btnColItemUp_Click(object sender, EventArgs e)
        {
            MoveNodeUp(tvCol);
        }

        private void btnColItemDn_Click(object sender, EventArgs e)
        {
            MoveNodeDown(tvCol);
        }

        private void frmSetOption_Load(object sender, EventArgs e)
        {
            Update(false);
        }
    }
}
