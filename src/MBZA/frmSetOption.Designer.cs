namespace ZiveLab.ZM
{
    partial class frmSetOption
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSetOption));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btUnchkallDataItem = new System.Windows.Forms.Button();
            this.btChkallDataItem = new System.Windows.Forms.Button();
            this.tabWindow = new System.Windows.Forms.TabPage();
            this.lnkResetWindows = new System.Windows.Forms.LinkLabel();
            this.tabData = new System.Windows.Forms.TabPage();
            this.cboCUnit = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cboTimeFormat = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tabGeneral = new System.Windows.Forms.TabPage();
            this.label4 = new System.Windows.Forms.Label();
            this.lnkZmanPathh = new System.Windows.Forms.LinkLabel();
            this.lnkDefaultSchPath = new System.Windows.Forms.Button();
            this.lnkDefaultDataPath = new System.Windows.Forms.Button();
            this.btDefaultZmanPath = new System.Windows.Forms.Button();
            this.lnkSchPath = new System.Windows.Forms.LinkLabel();
            this.txtZmanDataPath = new System.Windows.Forms.TextBox();
            this.lnkDataPath = new System.Windows.Forms.LinkLabel();
            this.txtSchPath = new System.Windows.Forms.TextBox();
            this.chkUseDefaultSchPath = new System.Windows.Forms.CheckBox();
            this.btInitRecentSchPath = new System.Windows.Forms.Button();
            this.lstRecentSchPath = new System.Windows.Forms.ListView();
            this.txtDataPath = new System.Windows.Forms.TextBox();
            this.btInitRecentDataPath = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.chkUseDefaultDataPath = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lstRecentDataPath = new System.Windows.Forms.ListView();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.label6 = new System.Windows.Forms.Label();
            this.lnkResetZM = new System.Windows.Forms.LinkLabel();
            this.label7 = new System.Windows.Forms.Label();
            this.ChkFloatMainView = new System.Windows.Forms.CheckBox();
            this.lnkResetMainView = new System.Windows.Forms.LinkLabel();
            this.label8 = new System.Windows.Forms.Label();
            this.lnkResetTech = new System.Windows.Forms.LinkLabel();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.lnkResetGraph = new System.Windows.Forms.LinkLabel();
            this.ChkFloatGraph = new System.Windows.Forms.CheckBox();
            this.lnkResetEditor = new System.Windows.Forms.LinkLabel();
            this.ChkFloatEditor = new System.Windows.Forms.CheckBox();
            this.lnkResetDataTool = new System.Windows.Forms.LinkLabel();
            this.ChkFloatDatatool = new System.Windows.Forms.CheckBox();
            this.label11 = new System.Windows.Forms.Label();
            this.lnkResetAuxvolt = new System.Windows.Forms.LinkLabel();
            this.ChkFloatAuxVolt = new System.Windows.Forms.CheckBox();
            this.label12 = new System.Windows.Forms.Label();
            this.lnkResetCfg = new System.Windows.Forms.LinkLabel();
            this.ChkFloatCfg = new System.Windows.Forms.CheckBox();
            this.label13 = new System.Windows.Forms.Label();
            this.lnkResetSingleCh = new System.Windows.Forms.LinkLabel();
            this.ChkFloatSingleCh = new System.Windows.Forms.CheckBox();
            this.label14 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.lnkResetRegCh = new System.Windows.Forms.LinkLabel();
            this.ChkFloatRegCh = new System.Windows.Forms.CheckBox();
            this.label15 = new System.Windows.Forms.Label();
            this.lnkResetGrpCh = new System.Windows.Forms.LinkLabel();
            this.ChkFloatGrpCh = new System.Windows.Forms.CheckBox();
            this.label16 = new System.Windows.Forms.Label();
            this.btApply1 = new System.Windows.Forms.Button();
            this.btApply2 = new System.Windows.Forms.Button();
            this.ListData = new System.Windows.Forms.CheckedListBox();
            this.groupBox1.SuspendLayout();
            this.tabWindow.SuspendLayout();
            this.tabData.SuspendLayout();
            this.tabGeneral.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.ListData);
            this.groupBox1.Controls.Add(this.btUnchkallDataItem);
            this.groupBox1.Controls.Add(this.btChkallDataItem);
            resources.ApplyResources(this.groupBox1, "groupBox1");
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.TabStop = false;
            // 
            // btUnchkallDataItem
            // 
            resources.ApplyResources(this.btUnchkallDataItem, "btUnchkallDataItem");
            this.btUnchkallDataItem.Name = "btUnchkallDataItem";
            this.btUnchkallDataItem.UseVisualStyleBackColor = true;
            this.btUnchkallDataItem.Click += new System.EventHandler(this.btUnchkallDataItem_Click);
            // 
            // btChkallDataItem
            // 
            resources.ApplyResources(this.btChkallDataItem, "btChkallDataItem");
            this.btChkallDataItem.Name = "btChkallDataItem";
            this.btChkallDataItem.UseVisualStyleBackColor = true;
            this.btChkallDataItem.Click += new System.EventHandler(this.btChkallDataItem_Click);
            // 
            // tabWindow
            // 
            this.tabWindow.Controls.Add(this.groupBox2);
            this.tabWindow.Controls.Add(this.lnkResetCfg);
            this.tabWindow.Controls.Add(this.ChkFloatCfg);
            this.tabWindow.Controls.Add(this.label13);
            this.tabWindow.Controls.Add(this.lnkResetAuxvolt);
            this.tabWindow.Controls.Add(this.ChkFloatAuxVolt);
            this.tabWindow.Controls.Add(this.label12);
            this.tabWindow.Controls.Add(this.lnkResetDataTool);
            this.tabWindow.Controls.Add(this.ChkFloatDatatool);
            this.tabWindow.Controls.Add(this.label11);
            this.tabWindow.Controls.Add(this.lnkResetEditor);
            this.tabWindow.Controls.Add(this.ChkFloatEditor);
            this.tabWindow.Controls.Add(this.lnkResetGraph);
            this.tabWindow.Controls.Add(this.ChkFloatGraph);
            this.tabWindow.Controls.Add(this.label10);
            this.tabWindow.Controls.Add(this.label9);
            this.tabWindow.Controls.Add(this.lnkResetTech);
            this.tabWindow.Controls.Add(this.label8);
            this.tabWindow.Controls.Add(this.lnkResetZM);
            this.tabWindow.Controls.Add(this.label6);
            this.tabWindow.Controls.Add(this.lnkResetWindows);
            resources.ApplyResources(this.tabWindow, "tabWindow");
            this.tabWindow.Name = "tabWindow";
            this.tabWindow.UseVisualStyleBackColor = true;
            this.tabWindow.Click += new System.EventHandler(this.tabWindow_Click);
            // 
            // lnkResetWindows
            // 
            resources.ApplyResources(this.lnkResetWindows, "lnkResetWindows");
            this.lnkResetWindows.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetWindows.Name = "lnkResetWindows";
            this.lnkResetWindows.TabStop = true;
            this.lnkResetWindows.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetWindows_LinkClicked);
            // 
            // tabData
            // 
            this.tabData.Controls.Add(this.btApply2);
            this.tabData.Controls.Add(this.cboCUnit);
            this.tabData.Controls.Add(this.label5);
            this.tabData.Controls.Add(this.cboTimeFormat);
            this.tabData.Controls.Add(this.groupBox1);
            this.tabData.Controls.Add(this.label1);
            resources.ApplyResources(this.tabData, "tabData");
            this.tabData.Name = "tabData";
            this.tabData.UseVisualStyleBackColor = true;
            // 
            // cboCUnit
            // 
            this.cboCUnit.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboCUnit.FormattingEnabled = true;
            this.cboCUnit.Items.AddRange(new object[] {
            resources.GetString("cboCUnit.Items"),
            resources.GetString("cboCUnit.Items1")});
            resources.ApplyResources(this.cboCUnit, "cboCUnit");
            this.cboCUnit.Name = "cboCUnit";
            // 
            // label5
            // 
            resources.ApplyResources(this.label5, "label5");
            this.label5.Name = "label5";
            // 
            // cboTimeFormat
            // 
            this.cboTimeFormat.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboTimeFormat.FormattingEnabled = true;
            resources.ApplyResources(this.cboTimeFormat, "cboTimeFormat");
            this.cboTimeFormat.Name = "cboTimeFormat";
            // 
            // label1
            // 
            resources.ApplyResources(this.label1, "label1");
            this.label1.Name = "label1";
            // 
            // tabGeneral
            // 
            this.tabGeneral.Controls.Add(this.btApply1);
            this.tabGeneral.Controls.Add(this.label4);
            this.tabGeneral.Controls.Add(this.lnkZmanPathh);
            this.tabGeneral.Controls.Add(this.lnkDefaultSchPath);
            this.tabGeneral.Controls.Add(this.lnkDefaultDataPath);
            this.tabGeneral.Controls.Add(this.btDefaultZmanPath);
            this.tabGeneral.Controls.Add(this.lnkSchPath);
            this.tabGeneral.Controls.Add(this.txtZmanDataPath);
            this.tabGeneral.Controls.Add(this.lnkDataPath);
            this.tabGeneral.Controls.Add(this.txtSchPath);
            this.tabGeneral.Controls.Add(this.chkUseDefaultSchPath);
            this.tabGeneral.Controls.Add(this.btInitRecentSchPath);
            this.tabGeneral.Controls.Add(this.lstRecentSchPath);
            this.tabGeneral.Controls.Add(this.txtDataPath);
            this.tabGeneral.Controls.Add(this.btInitRecentDataPath);
            this.tabGeneral.Controls.Add(this.label3);
            this.tabGeneral.Controls.Add(this.chkUseDefaultDataPath);
            this.tabGeneral.Controls.Add(this.label2);
            this.tabGeneral.Controls.Add(this.lstRecentDataPath);
            resources.ApplyResources(this.tabGeneral, "tabGeneral");
            this.tabGeneral.Name = "tabGeneral";
            this.tabGeneral.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            resources.ApplyResources(this.label4, "label4");
            this.label4.Name = "label4";
            // 
            // lnkZmanPathh
            // 
            resources.ApplyResources(this.lnkZmanPathh, "lnkZmanPathh");
            this.lnkZmanPathh.Name = "lnkZmanPathh";
            this.lnkZmanPathh.TabStop = true;
            this.lnkZmanPathh.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkZmanPathh_LinkClicked);
            // 
            // lnkDefaultSchPath
            // 
            this.lnkDefaultSchPath.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            resources.ApplyResources(this.lnkDefaultSchPath, "lnkDefaultSchPath");
            this.lnkDefaultSchPath.Name = "lnkDefaultSchPath";
            this.lnkDefaultSchPath.UseVisualStyleBackColor = true;
            this.lnkDefaultSchPath.Click += new System.EventHandler(this.lnkDefaultSchPath_Click);
            // 
            // lnkDefaultDataPath
            // 
            this.lnkDefaultDataPath.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            resources.ApplyResources(this.lnkDefaultDataPath, "lnkDefaultDataPath");
            this.lnkDefaultDataPath.Name = "lnkDefaultDataPath";
            this.lnkDefaultDataPath.UseVisualStyleBackColor = true;
            this.lnkDefaultDataPath.Click += new System.EventHandler(this.lnkDefaultDataPath_Click);
            // 
            // btDefaultZmanPath
            // 
            this.btDefaultZmanPath.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            resources.ApplyResources(this.btDefaultZmanPath, "btDefaultZmanPath");
            this.btDefaultZmanPath.Name = "btDefaultZmanPath";
            this.btDefaultZmanPath.UseVisualStyleBackColor = true;
            this.btDefaultZmanPath.Click += new System.EventHandler(this.btDefaultZmanPath_Click);
            // 
            // lnkSchPath
            // 
            resources.ApplyResources(this.lnkSchPath, "lnkSchPath");
            this.lnkSchPath.Name = "lnkSchPath";
            this.lnkSchPath.TabStop = true;
            this.lnkSchPath.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkSchPath_LinkClicked);
            // 
            // txtZmanDataPath
            // 
            resources.ApplyResources(this.txtZmanDataPath, "txtZmanDataPath");
            this.txtZmanDataPath.Name = "txtZmanDataPath";
            this.txtZmanDataPath.ReadOnly = true;
            // 
            // lnkDataPath
            // 
            resources.ApplyResources(this.lnkDataPath, "lnkDataPath");
            this.lnkDataPath.Name = "lnkDataPath";
            this.lnkDataPath.TabStop = true;
            this.lnkDataPath.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkDataPath_LinkClicked);
            // 
            // txtSchPath
            // 
            resources.ApplyResources(this.txtSchPath, "txtSchPath");
            this.txtSchPath.Name = "txtSchPath";
            this.txtSchPath.ReadOnly = true;
            // 
            // chkUseDefaultSchPath
            // 
            resources.ApplyResources(this.chkUseDefaultSchPath, "chkUseDefaultSchPath");
            this.chkUseDefaultSchPath.ForeColor = System.Drawing.Color.DarkRed;
            this.chkUseDefaultSchPath.Name = "chkUseDefaultSchPath";
            this.chkUseDefaultSchPath.UseVisualStyleBackColor = true;
            // 
            // btInitRecentSchPath
            // 
            this.btInitRecentSchPath.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            resources.ApplyResources(this.btInitRecentSchPath, "btInitRecentSchPath");
            this.btInitRecentSchPath.Name = "btInitRecentSchPath";
            this.btInitRecentSchPath.UseVisualStyleBackColor = true;
            this.btInitRecentSchPath.Click += new System.EventHandler(this.btInitRecentSchPath_Click);
            // 
            // lstRecentSchPath
            // 
            resources.ApplyResources(this.lstRecentSchPath, "lstRecentSchPath");
            this.lstRecentSchPath.Name = "lstRecentSchPath";
            this.lstRecentSchPath.UseCompatibleStateImageBehavior = false;
            // 
            // txtDataPath
            // 
            resources.ApplyResources(this.txtDataPath, "txtDataPath");
            this.txtDataPath.Name = "txtDataPath";
            this.txtDataPath.ReadOnly = true;
            // 
            // btInitRecentDataPath
            // 
            this.btInitRecentDataPath.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            resources.ApplyResources(this.btInitRecentDataPath, "btInitRecentDataPath");
            this.btInitRecentDataPath.Name = "btInitRecentDataPath";
            this.btInitRecentDataPath.UseVisualStyleBackColor = true;
            this.btInitRecentDataPath.Click += new System.EventHandler(this.btInitRecentDataPath_Click);
            // 
            // label3
            // 
            resources.ApplyResources(this.label3, "label3");
            this.label3.Name = "label3";
            // 
            // chkUseDefaultDataPath
            // 
            resources.ApplyResources(this.chkUseDefaultDataPath, "chkUseDefaultDataPath");
            this.chkUseDefaultDataPath.ForeColor = System.Drawing.Color.DarkRed;
            this.chkUseDefaultDataPath.Name = "chkUseDefaultDataPath";
            this.chkUseDefaultDataPath.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            resources.ApplyResources(this.label2, "label2");
            this.label2.Name = "label2";
            // 
            // lstRecentDataPath
            // 
            resources.ApplyResources(this.lstRecentDataPath, "lstRecentDataPath");
            this.lstRecentDataPath.Name = "lstRecentDataPath";
            this.lstRecentDataPath.UseCompatibleStateImageBehavior = false;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabGeneral);
            this.tabControl1.Controls.Add(this.tabData);
            this.tabControl1.Controls.Add(this.tabWindow);
            resources.ApplyResources(this.tabControl1, "tabControl1");
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            // 
            // label6
            // 
            resources.ApplyResources(this.label6, "label6");
            this.label6.Name = "label6";
            // 
            // lnkResetZM
            // 
            resources.ApplyResources(this.lnkResetZM, "lnkResetZM");
            this.lnkResetZM.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetZM.Name = "lnkResetZM";
            this.lnkResetZM.TabStop = true;
            this.lnkResetZM.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetZM_LinkClicked);
            // 
            // label7
            // 
            resources.ApplyResources(this.label7, "label7");
            this.label7.Name = "label7";
            // 
            // ChkFloatMainView
            // 
            resources.ApplyResources(this.ChkFloatMainView, "ChkFloatMainView");
            this.ChkFloatMainView.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatMainView.Name = "ChkFloatMainView";
            this.ChkFloatMainView.UseVisualStyleBackColor = true;
            this.ChkFloatMainView.CheckedChanged += new System.EventHandler(this.ChkFloatMainView_CheckedChanged);
            // 
            // lnkResetMainView
            // 
            resources.ApplyResources(this.lnkResetMainView, "lnkResetMainView");
            this.lnkResetMainView.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetMainView.Name = "lnkResetMainView";
            this.lnkResetMainView.TabStop = true;
            this.lnkResetMainView.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetMainView_LinkClicked);
            // 
            // label8
            // 
            resources.ApplyResources(this.label8, "label8");
            this.label8.Name = "label8";
            // 
            // lnkResetTech
            // 
            resources.ApplyResources(this.lnkResetTech, "lnkResetTech");
            this.lnkResetTech.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetTech.Name = "lnkResetTech";
            this.lnkResetTech.TabStop = true;
            this.lnkResetTech.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetTech_LinkClicked);
            // 
            // label9
            // 
            resources.ApplyResources(this.label9, "label9");
            this.label9.Name = "label9";
            // 
            // label10
            // 
            resources.ApplyResources(this.label10, "label10");
            this.label10.Name = "label10";
            // 
            // lnkResetGraph
            // 
            resources.ApplyResources(this.lnkResetGraph, "lnkResetGraph");
            this.lnkResetGraph.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetGraph.Name = "lnkResetGraph";
            this.lnkResetGraph.TabStop = true;
            this.lnkResetGraph.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetGraph_LinkClicked);
            // 
            // ChkFloatGraph
            // 
            resources.ApplyResources(this.ChkFloatGraph, "ChkFloatGraph");
            this.ChkFloatGraph.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatGraph.Name = "ChkFloatGraph";
            this.ChkFloatGraph.UseVisualStyleBackColor = true;
            this.ChkFloatGraph.CheckedChanged += new System.EventHandler(this.ChkFloatGraph_CheckedChanged);
            // 
            // lnkResetEditor
            // 
            resources.ApplyResources(this.lnkResetEditor, "lnkResetEditor");
            this.lnkResetEditor.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetEditor.Name = "lnkResetEditor";
            this.lnkResetEditor.TabStop = true;
            this.lnkResetEditor.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetEditor_LinkClicked);
            // 
            // ChkFloatEditor
            // 
            resources.ApplyResources(this.ChkFloatEditor, "ChkFloatEditor");
            this.ChkFloatEditor.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatEditor.Name = "ChkFloatEditor";
            this.ChkFloatEditor.UseVisualStyleBackColor = true;
            this.ChkFloatEditor.CheckedChanged += new System.EventHandler(this.ChkFloatEditor_CheckedChanged);
            // 
            // lnkResetDataTool
            // 
            resources.ApplyResources(this.lnkResetDataTool, "lnkResetDataTool");
            this.lnkResetDataTool.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetDataTool.Name = "lnkResetDataTool";
            this.lnkResetDataTool.TabStop = true;
            this.lnkResetDataTool.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetDataTool_LinkClicked);
            // 
            // ChkFloatDatatool
            // 
            resources.ApplyResources(this.ChkFloatDatatool, "ChkFloatDatatool");
            this.ChkFloatDatatool.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatDatatool.Name = "ChkFloatDatatool";
            this.ChkFloatDatatool.UseVisualStyleBackColor = true;
            this.ChkFloatDatatool.CheckedChanged += new System.EventHandler(this.ChkFloatDatatool_CheckedChanged);
            // 
            // label11
            // 
            resources.ApplyResources(this.label11, "label11");
            this.label11.Name = "label11";
            // 
            // lnkResetAuxvolt
            // 
            resources.ApplyResources(this.lnkResetAuxvolt, "lnkResetAuxvolt");
            this.lnkResetAuxvolt.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetAuxvolt.Name = "lnkResetAuxvolt";
            this.lnkResetAuxvolt.TabStop = true;
            this.lnkResetAuxvolt.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetAuxvolt_LinkClicked);
            // 
            // ChkFloatAuxVolt
            // 
            resources.ApplyResources(this.ChkFloatAuxVolt, "ChkFloatAuxVolt");
            this.ChkFloatAuxVolt.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatAuxVolt.Name = "ChkFloatAuxVolt";
            this.ChkFloatAuxVolt.UseVisualStyleBackColor = true;
            this.ChkFloatAuxVolt.CheckedChanged += new System.EventHandler(this.ChkFloatAuxVolt_CheckedChanged);
            // 
            // label12
            // 
            resources.ApplyResources(this.label12, "label12");
            this.label12.Name = "label12";
            // 
            // lnkResetCfg
            // 
            resources.ApplyResources(this.lnkResetCfg, "lnkResetCfg");
            this.lnkResetCfg.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetCfg.Name = "lnkResetCfg";
            this.lnkResetCfg.TabStop = true;
            this.lnkResetCfg.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetCfg_LinkClicked);
            // 
            // ChkFloatCfg
            // 
            resources.ApplyResources(this.ChkFloatCfg, "ChkFloatCfg");
            this.ChkFloatCfg.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatCfg.Name = "ChkFloatCfg";
            this.ChkFloatCfg.UseVisualStyleBackColor = true;
            this.ChkFloatCfg.CheckedChanged += new System.EventHandler(this.ChkFloatCfg_CheckedChanged);
            // 
            // label13
            // 
            resources.ApplyResources(this.label13, "label13");
            this.label13.Name = "label13";
            // 
            // lnkResetSingleCh
            // 
            resources.ApplyResources(this.lnkResetSingleCh, "lnkResetSingleCh");
            this.lnkResetSingleCh.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetSingleCh.Name = "lnkResetSingleCh";
            this.lnkResetSingleCh.TabStop = true;
            this.lnkResetSingleCh.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetSingleCh_LinkClicked);
            // 
            // ChkFloatSingleCh
            // 
            resources.ApplyResources(this.ChkFloatSingleCh, "ChkFloatSingleCh");
            this.ChkFloatSingleCh.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatSingleCh.Name = "ChkFloatSingleCh";
            this.ChkFloatSingleCh.UseVisualStyleBackColor = true;
            this.ChkFloatSingleCh.CheckedChanged += new System.EventHandler(this.ChkFloatSingleCh_CheckedChanged);
            // 
            // label14
            // 
            resources.ApplyResources(this.label14, "label14");
            this.label14.Name = "label14";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.lnkResetGrpCh);
            this.groupBox2.Controls.Add(this.ChkFloatGrpCh);
            this.groupBox2.Controls.Add(this.label16);
            this.groupBox2.Controls.Add(this.lnkResetRegCh);
            this.groupBox2.Controls.Add(this.ChkFloatRegCh);
            this.groupBox2.Controls.Add(this.label15);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.lnkResetSingleCh);
            this.groupBox2.Controls.Add(this.ChkFloatMainView);
            this.groupBox2.Controls.Add(this.ChkFloatSingleCh);
            this.groupBox2.Controls.Add(this.lnkResetMainView);
            this.groupBox2.Controls.Add(this.label14);
            resources.ApplyResources(this.groupBox2, "groupBox2");
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.TabStop = false;
            // 
            // lnkResetRegCh
            // 
            resources.ApplyResources(this.lnkResetRegCh, "lnkResetRegCh");
            this.lnkResetRegCh.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetRegCh.Name = "lnkResetRegCh";
            this.lnkResetRegCh.TabStop = true;
            this.lnkResetRegCh.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetRegCh_LinkClicked);
            // 
            // ChkFloatRegCh
            // 
            resources.ApplyResources(this.ChkFloatRegCh, "ChkFloatRegCh");
            this.ChkFloatRegCh.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatRegCh.Name = "ChkFloatRegCh";
            this.ChkFloatRegCh.UseVisualStyleBackColor = true;
            this.ChkFloatRegCh.CheckedChanged += new System.EventHandler(this.ChkFloatRegCh_CheckedChanged);
            // 
            // label15
            // 
            resources.ApplyResources(this.label15, "label15");
            this.label15.Name = "label15";
            // 
            // lnkResetGrpCh
            // 
            resources.ApplyResources(this.lnkResetGrpCh, "lnkResetGrpCh");
            this.lnkResetGrpCh.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.lnkResetGrpCh.Name = "lnkResetGrpCh";
            this.lnkResetGrpCh.TabStop = true;
            this.lnkResetGrpCh.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lnkResetGrpCh_LinkClicked);
            // 
            // ChkFloatGrpCh
            // 
            resources.ApplyResources(this.ChkFloatGrpCh, "ChkFloatGrpCh");
            this.ChkFloatGrpCh.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.ChkFloatGrpCh.Name = "ChkFloatGrpCh";
            this.ChkFloatGrpCh.UseVisualStyleBackColor = true;
            this.ChkFloatGrpCh.CheckedChanged += new System.EventHandler(this.ChkFloatGrpCh_CheckedChanged);
            // 
            // label16
            // 
            resources.ApplyResources(this.label16, "label16");
            this.label16.Name = "label16";
            // 
            // btApply1
            // 
            resources.ApplyResources(this.btApply1, "btApply1");
            this.btApply1.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btApply1.Name = "btApply1";
            this.btApply1.UseVisualStyleBackColor = true;
            this.btApply1.Click += new System.EventHandler(this.btApply1_Click);
            // 
            // btApply2
            // 
            resources.ApplyResources(this.btApply2, "btApply2");
            this.btApply2.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btApply2.Name = "btApply2";
            this.btApply2.UseVisualStyleBackColor = true;
            this.btApply2.Click += new System.EventHandler(this.btApply2_Click);
            // 
            // ListData
            // 
            this.ListData.CheckOnClick = true;
            this.ListData.FormattingEnabled = true;
            this.ListData.Items.AddRange(new object[] {
            resources.GetString("ListData.Items")});
            resources.ApplyResources(this.ListData, "ListData");
            this.ListData.MultiColumn = true;
            this.ListData.Name = "ListData";
            // 
            // frmSetOption
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tabControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmSetOption";
            this.Load += new System.EventHandler(this.frmSetOption_Load);
            this.groupBox1.ResumeLayout(false);
            this.tabWindow.ResumeLayout(false);
            this.tabWindow.PerformLayout();
            this.tabData.ResumeLayout(false);
            this.tabData.PerformLayout();
            this.tabGeneral.ResumeLayout(false);
            this.tabGeneral.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TabPage tabWindow;
        private System.Windows.Forms.LinkLabel lnkResetWindows;
        private System.Windows.Forms.TabPage tabData;
        private System.Windows.Forms.ComboBox cboTimeFormat;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabPage tabGeneral;
        private System.Windows.Forms.TextBox txtZmanDataPath;
        private System.Windows.Forms.TextBox txtDataPath;
        private System.Windows.Forms.CheckBox chkUseDefaultDataPath;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.LinkLabel lnkZmanPathh;
        private System.Windows.Forms.Button lnkDefaultSchPath;
        private System.Windows.Forms.Button lnkDefaultDataPath;
        private System.Windows.Forms.Button btDefaultZmanPath;
        private System.Windows.Forms.LinkLabel lnkSchPath;
        private System.Windows.Forms.LinkLabel lnkDataPath;
        private System.Windows.Forms.TextBox txtSchPath;
        private System.Windows.Forms.CheckBox chkUseDefaultSchPath;
        private System.Windows.Forms.Button btInitRecentSchPath;
        private System.Windows.Forms.ListView lstRecentSchPath;
        private System.Windows.Forms.Button btInitRecentDataPath;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ListView lstRecentDataPath;
        private System.Windows.Forms.Button btUnchkallDataItem;
        private System.Windows.Forms.Button btChkallDataItem;
        private System.Windows.Forms.ComboBox cboCUnit;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.LinkLabel lnkResetZM;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.LinkLabel lnkResetMainView;
        private System.Windows.Forms.CheckBox ChkFloatMainView;
        private System.Windows.Forms.LinkLabel lnkResetTech;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.LinkLabel lnkResetEditor;
        private System.Windows.Forms.CheckBox ChkFloatEditor;
        private System.Windows.Forms.LinkLabel lnkResetGraph;
        private System.Windows.Forms.CheckBox ChkFloatGraph;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.LinkLabel lnkResetDataTool;
        private System.Windows.Forms.CheckBox ChkFloatDatatool;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.LinkLabel lnkResetCfg;
        private System.Windows.Forms.CheckBox ChkFloatCfg;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.LinkLabel lnkResetAuxvolt;
        private System.Windows.Forms.CheckBox ChkFloatAuxVolt;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.LinkLabel lnkResetGrpCh;
        private System.Windows.Forms.CheckBox ChkFloatGrpCh;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.LinkLabel lnkResetRegCh;
        private System.Windows.Forms.CheckBox ChkFloatRegCh;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.LinkLabel lnkResetSingleCh;
        private System.Windows.Forms.CheckBox ChkFloatSingleCh;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Button btApply2;
        private System.Windows.Forms.Button btApply1;
        private System.Windows.Forms.CheckedListBox ListData;
    }
}