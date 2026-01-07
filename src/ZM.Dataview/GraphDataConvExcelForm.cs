using System;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Collections;
using C1.Win.C1FlexGrid;

namespace ZiveLab.ZM.Dataview
{
    public partial class GraphDataConvExcelForm : Form
    {
        public bool GraphOnly { get; private set; }
        public List<Node> CheckedNodeList { get; private set; }

        public GraphDataConvExcelForm(Node[] nodes, int langidx)
        {
            InitializeComponent();

            SetLanguage(langidx);

            if (nodes != null)
            {
                IEnumerator ie = nodes.GetEnumerator();

                while (ie.MoveNext())
                {
                    Node node = (Node)ie.Current;

                    FileNodeInfor fni = (FileNodeInfor)node.Row.UserData;

                    //DataHeaderValues dhv = fni.DataHeaderValue;

                    TreeNode filenode = treeViewFileList.Nodes.Add(fni.FileName);
                    filenode.Checked = true;
                    filenode.Tag = node;
                }
            }
        }

        public void SetLanguage(int langidx)
        {
            DataviewCommon.SetLanguage(this, langidx, typeof(GraphDataConvExcelForm));
        }

        private void Form_GraphDataConvExcel_Load(object sender, EventArgs e)
        {
                       
        }

        private void buttonOK_Click(object sender, EventArgs e)
        {
            GraphOnly = checkboxGraphOnly.Checked;

            CheckedNodeList = new List<Node>();

            for (int i = 0; i < treeViewFileList.Nodes.Count; i++)
                if (treeViewFileList.Nodes[i].Checked)
                    CheckedNodeList.Add((Node)treeViewFileList.Nodes[i].Tag);                   
        }
    }
}
