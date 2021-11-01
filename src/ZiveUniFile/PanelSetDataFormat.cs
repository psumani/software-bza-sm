using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using ZiveUniFile.Utilities;
using System.IO;

namespace ZiveUniFile
{

    public partial class PanelSetDataFormat : UserControl
    {
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        [Bindable(false)]
        [Browsable(false)]
        public string Filename;
        public int Filetype;
        public ZUF_Utility objZUF;
        public TreeNode SelectedNode;
        public ZUF_NodeTag stag;
        public stFileHeader mHeader;
        public List<stFlexTitleGroup> GrpList;
        public PanelSetDataFormat()
        {
            InitializeComponent();
            DoubleBuffered = true;

            Filename = Path.Combine(Application.StartupPath, "App.Zim.Player.zufcfg");
            Filetype = 1;
            stag = new ZUF_NodeTag(-1,-1);
            GrpList = new List<stFlexTitleGroup>();
            SelectedNode = null;
            objZUF = new ZUF_Utility();

        }

        private int GetFileType(string filename)
        {
            string sfilename = filename.ToUpper();
            string sExtension = Path.GetExtension(sfilename);
            if (sExtension == ".ZUFCFG") return 0;
            else if (sExtension == ".ZUF") return 1;
            else if (sExtension == ".XML") return 2;
            return -1;
        }
        private void PanelSetDataFormat_Load(object sender, EventArgs e)
        {

        }

        public void Initialize()
        {

            Filename = Path.Combine(Application.StartupPath, "App.Zim.Player.zufcfg");
            Filetype = GetFileType(Filename);

            txtFilename.Text = Filename;

            objZUF.Initialize();
            

            GrpList.Clear();
            SelectedNode = null;
            stag = new ZUF_NodeTag(-1, -1);

            txtFileCode.Text = objZUF.mFileHeader.FileCode.ToString();
            txtFileVersion.Text = objZUF.mFileHeader.FileVersion.ToString();
            txtGroupCnt.Text = objZUF.mFileHeader.GroupCount.ToString();
            txtSelGrp.Text = "";
            txtItemCnt.Text = "";

            if (Filetype == -1) txtFilename.BackColor = Color.DarkGray;
            else
            {
                if (!File.Exists(Filename))
                {
                    if (objZUF.CreateFile(Filename) == false)
                    {
                        MessageBox.Show("Failed create file.");
                        txtFilename.BackColor = Color.DarkGray;
                        return;
                    }
                }
                else
                {
                    if(objZUF.OpenFile(Filename) == false)
                    {
                        MessageBox.Show("Failed open file.");
                        txtFilename.BackColor = Color.DarkGray;
                        return;
                    }
                    objZUF.ReadAllInfo();
                }
                txtFilename.BackColor = SystemColors.Control;
            }
            Refreshview();
        }

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Filename = Path.Combine(Application.StartupPath, "ZIM_DataFormat.zufcfg");
            Filetype = 0;

            if (File.Exists(Filename))
            {
                try
                {
                    File.Delete(Filename);
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return;
                }
            }

            if(objZUF.CreateFile(Filename) == false)
            {
                MessageBox.Show("Failed create file.");
                return;
            }

            GrpList.Clear();


            txtSelGrp.Text = "0";
            txtItemCnt.Text = "0";
        }

        private void Refreshview()
        {
            txtFilename.BackColor = SystemColors.Control;
            txtFilename.Text = Filename;
            

            RefreshTreeview();
            if (SelectedNode == null)
            {
                txtSelGrp.Text = "";
                txtItemCnt.Text = "";
                txtGroupCnt.Text = "0";
            }
            else
            {
                txtSelGrp.Text = (((ZUF_NodeTag)SelectedNode.Tag).GroupIndex + 1).ToString();
                txtItemCnt.Text = GrpList[((ZUF_NodeTag)SelectedNode.Tag).GroupIndex].Header.Count.ToString();
                txtGroupCnt.Text = GrpList.Count.ToString();
            }
        }
        private void RefreshTreeview()
        {
            treeGroup.Nodes.Clear();
            int index = 0;
            int index1 = 0;
            string str;
            stFlexTitleGroup grp;
            stFlexHeadItem item;
            ZUF_NodeTag tag;
            

            if (GrpList.Count < 1)
            {
                SelectedNode = null;
                return;
            }

            if(SelectedNode != null) stag = (ZUF_NodeTag)SelectedNode.Tag;

            SelectedNode = null;
            for (index=0; index < GrpList.Count; index++)
            {
                grp = GrpList[index];

                grp.Header.Index = (byte)index;
                grp.Header.Count = (byte)grp.Items.Length;
                
                tag  = new ZUF_NodeTag(index, -1);

                str = "[" + (grp.Header.Index + 1).ToString() + "]";
                str += grp.GroupLabel.GetLabel() + ",";
                str += "Type=" + ((eGroupRowType)grp.Header.Type).ToString() + ",";
                str += "ItemCount="+grp.Header.Count.ToString() + ",";
                str += "RowSize=" + grp.Header.DataRowSize.ToString() + ",";
                str += "TotalSize=" + grp.Header.Size.ToString();
                TreeNode GrpNode = new TreeNode(str);
                GrpNode.Tag = tag;

                if (tag.ItemIndex == stag.ItemIndex && tag.GroupIndex == stag.GroupIndex)
                {
                    SelectedNode = GrpNode;
                }

                for (index1 = 0; index1 < grp.Items.Length; index1++)
                {
                    item = grp.Items[index1];

                    tag = new ZUF_NodeTag(index, index1);

                    str = "[" + (index1+1).ToString() +  "]";
                    if(item.GetUnit().Length < 1) str += item.GetLabel() + ",";
                    else str += item.GetLabel() + "(" + item.GetUnit() + "),";
                    str += "Type=" + ((eDataItemType)item.Type).ToString() + ",";
                    str += "DataType=" + EnumUtil.GetDescription((eDataType)item.Datatype) + ",";
                    str += "DataSize=" + item.DataSize.ToString() + ",";
                    str += "TotalSize=" + item.Size.ToString();

                    TreeNode ItemNode = new TreeNode(str);
                    ItemNode.Tag = tag;

                    GrpNode.Nodes.Add(ItemNode);

                    if (tag.ItemIndex == stag.ItemIndex && tag.GroupIndex == stag.GroupIndex)
                    {
                        SelectedNode = ItemNode;
                    }
                }
                
                treeGroup.Nodes.Add(GrpNode);
            }
            if(SelectedNode == null) treeGroup.SelectedNode = treeGroup.Nodes[0];
            else treeGroup.SelectedNode = SelectedNode;
        }

        private void loadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Title = "Load the information of the data format";
            dlg.Multiselect = false;
            dlg.DefaultExt = "zufcfg";
            dlg.Filter = "ZUFCFG files (*.zufcfg)|*.zufcfg|ZUF files (*.zuf)|*.zuf|All files (*.*)|*.*";
            dlg.FileName = "ZIM_DataFormat.zufcfg";
            dlg.InitialDirectory = Application.ExecutablePath;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                Filetype = GetFileType(dlg.FileName);
                if (Filetype == 0) objZUF.LoadFormatFromZufcfg(dlg.FileName, ref mHeader, ref GrpList);
                else if (Filetype == 1) objZUF.LoadFormatFromXml(dlg.FileName, ref mHeader, ref GrpList);

                if (Filetype == -1) txtFilename.BackColor = Color.DarkGray;
                else txtFilename.BackColor = SystemColors.Control;
                txtFilename.Text = Filename;

                Refreshview();

            }
        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {

            mHeader.GroupCount = (ushort)GrpList.Count;
            if (Path.GetExtension(Filename.ToUpper()) == ".ZUFCFG") objZUF.SaveFormatToZufcfg(Filename, mHeader, GrpList);
            else objZUF.SaveFormatToXml(Filename, mHeader, GrpList);
            txtFilename.Text = Filename;

            txtFilename.BackColor = SystemColors.Control;

            //if (Filetype == 0) objZUF.SaveTitleGroupsToZuf(dlg.FileName, GrpList);
            //else if (Filetype == 1) objZUF.SaveTitleGroupsToXml(dlg.FileName, GrpList);
        }

        private void saveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog dlg = new SaveFileDialog();
            dlg.Title = "Save the information of the data format";
            dlg.DefaultExt = "zufcfg";
            dlg.Filter = "ZUFCFG files (*.zufcfg)|*.zufcfg|XML files (*.xml)|*.xml";
            dlg.FileName = "ZIM_DataFormat.zufcfg"; //    Path.GetFileName(Properties.Settings.Default.PathRangeInfo);
            dlg.InitialDirectory = Application.ExecutablePath;

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                Filename = dlg.FileName;
                mHeader.GroupCount = (ushort)GrpList.Count;
                if (Path.GetExtension(Filename.ToUpper()) == ".ZUFCFG") objZUF.SaveFormatToZufcfg(Filename, mHeader, GrpList);
                else objZUF.SaveFormatToXml(Filename, mHeader, GrpList);
                txtFilename.Text = Filename;

                txtFilename.BackColor = SystemColors.Control;

                //if (Filetype == 0) objZUF.SaveTitleGroupsToZuf(dlg.FileName, GrpList);
                //else if (Filetype == 1) objZUF.SaveTitleGroupsToXml(dlg.FileName, GrpList);
            }
        }

        private void applyFormatToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void closeToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void add_menuGroup_Click(object sender, EventArgs e)
        {

            stFlexTitleGroup group = new stFlexTitleGroup((byte)GrpList.Count, "New Group");
            PopupEditGroup frm = new PopupEditGroup(group);
            if(frm.ShowDialog() == DialogResult.OK)
            {
                group = frm.GetGroupInfo();
                GrpList.Add(group);
                SelectedNode = null;
                stag.GroupIndex = GrpList.Count-1;
                stag.ItemIndex = -1;
                Refreshview();
            }
            
        }

        private void insert_menuGroup_Click(object sender, EventArgs e)
        {

        }

        private void delete_menuGroup_Click(object sender, EventArgs e)
        {

        }

        private void Add_menuItem_Click(object sender, EventArgs e)
        {

        }

        private void Insert_menuItem_Click(object sender, EventArgs e)
        {

        }

        private void delete_menuItem_Click(object sender, EventArgs e)
        {

        }

        private void edit_menuGroup_Click(object sender, EventArgs e)
        {

        }

        private void treeGroup_AfterSelect(object sender, TreeViewEventArgs e)
        {
            SelectedNode = e.Node;
            stag = (ZUF_NodeTag)SelectedNode.Tag;
            txtSelGrp.Text = (stag.GroupIndex + 1).ToString();
            txtItemCnt.Text = GrpList[stag.GroupIndex].Header.Count.ToString();
        }
    }
}
