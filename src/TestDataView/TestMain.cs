using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows.Forms;
using ZiveLab.ZM.Dataview;

namespace TestDataView
{
    public partial class TestMain : Form
    {
        public TestMain()
        {
            InitializeComponent();
            linkGraph.Enabled = false;
            linkDataeditor.Enabled = false;
        }
        

        private void linkSelFile_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Title = "Open BZA's file(*.zmf)";
            dlg.InitialDirectory = "C:\\ZIVE DATA\\ZM\\Data";
            dlg.Multiselect = false;
            dlg.Filter = "BZA's files(*.zmf)|*.zmf|All files(*.*)|*.*";

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                txtFile.Text = dlg.FileName;
                linkGraph.Enabled = true;
                linkDataeditor.Enabled = true;
            }
        }

        private void linkDataeditor_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            DataEditorForm deForm = new DataEditorForm();
            deForm.MsgBoxCaption = this.Text;
            //deForm.UnitC = false;
            //deForm.IVManPath = GetIVManPath();
            //deForm.GraphSetEx = gBZA.mGraphSetEx;
            //deForm.EnAlwaysOpenPath = false;
            //deForm.ZManPath = GetZManPath();
            //deForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            //deForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            deForm.TimeFormat = 1;

            //deForm.OpenSchEditorClick += EgForm_OpenTechEditorClick;
            //deForm.OpenGeneralGraphClick += DeForm_OpenGeneralGraphClick;
            //deForm.OpenCycleGraphClick += DeForm_OpenCycleGraphClick;
            //deForm.OpenEisGraphClick += DeForm_OpenEisGraphClick;
            //deForm.MdiParent = this.MdiParent;

            deForm.ShowInTaskbar = false;
            deForm.Initialize(0);

            deForm.Show();
            deForm.LoadData(txtFile.Text);
        }

        private void linkGraph_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            GeneralGraphForm ggForm = new GeneralGraphForm(0);

            var assembly = Assembly.GetExecutingAssembly();
            AssemblyTitleAttribute titleAttribute = (AssemblyTitleAttribute)Attribute.GetCustomAttribute(assembly, typeof(AssemblyTitleAttribute));

            ggForm.MsgBoxCaption = titleAttribute.Title;
            ggForm.EnAlwaysOpenPath = false;
            //ggForm.AlwaysOpenPath = gBZA.appcfg.PathData;
            ggForm.AllowTransparency = false;
            //ggForm.ZManPath = GetZManPath();
            //ggForm.SchTempPath = gBZA.appcfg.PathSchTemp;
            //ggForm.UnitC = false;
            ggForm.TimeFormat = 1;
            //ggForm.MdiParent = this;
            ggForm.ShowInTaskbar = false;
           ///ggForm.OpenDataEditorClick += GgForm_OpenDataEditorClick;
           // ggForm.OpenSchEditorClick += GgForm_OpenTechEditorClick;
            ggForm.Show();
            string[] sFile = new string[1];
            sFile[0] = txtFile.Text;
            ggForm.LoadFiles(sFile);
        }
    }
}
