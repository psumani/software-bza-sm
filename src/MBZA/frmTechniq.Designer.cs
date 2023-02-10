namespace ZiveLab.ZM
{
    partial class frmTechniq
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
            this.components = new System.ComponentModel.Container();
            this.tabtech = new System.Windows.Forms.TabControl();
            this.tabtech1 = new System.Windows.Forms.TabPage();
            this.cboeiscyc = new System.Windows.Forms.ComboBox();
            this.cboeisskipcyc = new System.Windows.Forms.ComboBox();
            this.lbleiscycle = new System.Windows.Forms.Label();
            this.lbleisskipcycle = new System.Windows.Forms.Label();
            this.txteisrepeat = new System.Windows.Forms.TextBox();
            this.lbleisiteration = new System.Windows.Forms.Label();
            this.txteisdensity = new System.Windows.Forms.TextBox();
            this.txteisfinalfreq = new System.Windows.Forms.TextBox();
            this.txteisinitfreq = new System.Windows.Forms.TextBox();
            this.lbleisdensity = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tabtech2 = new System.Windows.Forms.TabPage();
            this.cbomonctrl = new System.Windows.Forms.ComboBox();
            this.txtMonCutoff = new System.Windows.Forms.TextBox();
            this.lblcutoff = new System.Windows.Forms.Label();
            this.lblctrlrate = new System.Windows.Forms.Label();
            this.chkhfrcelloffwait = new System.Windows.Forms.CheckBox();
            this.txthfrtotaltime = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.txthfrinterval = new System.Windows.Forms.TextBox();
            this.lblhfrinterval = new System.Windows.Forms.Label();
            this.txthfrfreq = new System.Windows.Forms.TextBox();
            this.lblhfrfreq = new System.Windows.Forms.Label();
            this.tabtech3 = new System.Windows.Forms.TabPage();
            this.chkrpend = new System.Windows.Forms.CheckBox();
            this.chkprrcelloffwait = new System.Windows.Forms.CheckBox();
            this.txtprrtotaltime = new System.Windows.Forms.TextBox();
            this.label21 = new System.Windows.Forms.Label();
            this.txtprrinterval = new System.Windows.Forms.TextBox();
            this.label22 = new System.Windows.Forms.Label();
            this.txtprrrpendfreq = new System.Windows.Forms.TextBox();
            this.txtprrrpfreq = new System.Windows.Forms.TextBox();
            this.txtprrrsfreq = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.chkondelaystable = new System.Windows.Forms.CheckBox();
            this.txtondelay = new System.Windows.Forms.TextBox();
            this.lblondelay = new System.Windows.Forms.Label();
            this.cboIrange = new System.Windows.Forms.ComboBox();
            this.lbliRange = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtbattid = new System.Windows.Forms.TextBox();
            this.txtcreator = new System.Windows.Forms.TextBox();
            this.txtcapa = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.btopen = new System.Windows.Forms.Button();
            this.btsaveas = new System.Windows.Forms.Button();
            this.btsave = new System.Windows.Forms.Button();
            this.btapply = new System.Windows.Forms.Button();
            this.btclose = new System.Windows.Forms.Button();
            this.techtree = new System.Windows.Forms.TreeView();
            this.lbltech = new System.Windows.Forms.Label();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.tabtech.SuspendLayout();
            this.tabtech1.SuspendLayout();
            this.tabtech2.SuspendLayout();
            this.tabtech3.SuspendLayout();
            this.panel1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabtech
            // 
            this.tabtech.Controls.Add(this.tabtech1);
            this.tabtech.Controls.Add(this.tabtech2);
            this.tabtech.Controls.Add(this.tabtech3);
            this.tabtech.Location = new System.Drawing.Point(164, 8);
            this.tabtech.Name = "tabtech";
            this.tabtech.SelectedIndex = 0;
            this.tabtech.Size = new System.Drawing.Size(423, 204);
            this.tabtech.TabIndex = 5;
            this.tabtech.SelectedIndexChanged += new System.EventHandler(this.tbbtech_SelectedIndexChanged);
            // 
            // tabtech1
            // 
            this.tabtech1.BackColor = System.Drawing.SystemColors.Control;
            this.tabtech1.Controls.Add(this.cboeiscyc);
            this.tabtech1.Controls.Add(this.cboeisskipcyc);
            this.tabtech1.Controls.Add(this.lbleiscycle);
            this.tabtech1.Controls.Add(this.lbleisskipcycle);
            this.tabtech1.Controls.Add(this.txteisrepeat);
            this.tabtech1.Controls.Add(this.lbleisiteration);
            this.tabtech1.Controls.Add(this.txteisdensity);
            this.tabtech1.Controls.Add(this.txteisfinalfreq);
            this.tabtech1.Controls.Add(this.txteisinitfreq);
            this.tabtech1.Controls.Add(this.lbleisdensity);
            this.tabtech1.Controls.Add(this.label3);
            this.tabtech1.Controls.Add(this.label2);
            this.tabtech1.Location = new System.Drawing.Point(4, 23);
            this.tabtech1.Name = "tabtech1";
            this.tabtech1.Padding = new System.Windows.Forms.Padding(3);
            this.tabtech1.Size = new System.Drawing.Size(415, 177);
            this.tabtech1.TabIndex = 0;
            this.tabtech1.Text = "a";
            // 
            // cboeiscyc
            // 
            this.cboeiscyc.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboeiscyc.FormattingEnabled = true;
            this.cboeiscyc.Location = new System.Drawing.Point(194, 147);
            this.cboeiscyc.Name = "cboeiscyc";
            this.cboeiscyc.Size = new System.Drawing.Size(86, 22);
            this.cboeiscyc.TabIndex = 24;
            this.cboeiscyc.SelectedIndexChanged += new System.EventHandler(this.cboeiscyc_SelectedIndexChanged);
            // 
            // cboeisskipcyc
            // 
            this.cboeisskipcyc.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboeisskipcyc.FormattingEnabled = true;
            this.cboeisskipcyc.Location = new System.Drawing.Point(194, 120);
            this.cboeisskipcyc.Name = "cboeisskipcyc";
            this.cboeisskipcyc.Size = new System.Drawing.Size(86, 22);
            this.cboeisskipcyc.TabIndex = 23;
            this.cboeisskipcyc.SelectedIndexChanged += new System.EventHandler(this.cboeisskipcyc_SelectedIndexChanged);
            // 
            // lbleiscycle
            // 
            this.lbleiscycle.AutoSize = true;
            this.lbleiscycle.Location = new System.Drawing.Point(40, 152);
            this.lbleiscycle.Name = "lbleiscycle";
            this.lbleiscycle.Size = new System.Drawing.Size(84, 14);
            this.lbleiscycle.TabIndex = 22;
            this.lbleiscycle.Text = "Cycle count";
            // 
            // lbleisskipcycle
            // 
            this.lbleisskipcycle.AutoSize = true;
            this.lbleisskipcycle.Location = new System.Drawing.Point(40, 125);
            this.lbleisskipcycle.Name = "lbleisskipcycle";
            this.lbleisskipcycle.Size = new System.Drawing.Size(77, 14);
            this.lbleisskipcycle.TabIndex = 20;
            this.lbleisskipcycle.Text = "Skip cycle";
            // 
            // txteisrepeat
            // 
            this.txteisrepeat.Location = new System.Drawing.Point(194, 93);
            this.txteisrepeat.Name = "txteisrepeat";
            this.txteisrepeat.Size = new System.Drawing.Size(86, 22);
            this.txteisrepeat.TabIndex = 19;
            this.txteisrepeat.Leave += new System.EventHandler(this.txteisrepeat_Leave);
            // 
            // lbleisiteration
            // 
            this.lbleisiteration.AutoSize = true;
            this.lbleisiteration.Location = new System.Drawing.Point(40, 96);
            this.lbleisiteration.Name = "lbleisiteration";
            this.lbleisiteration.Size = new System.Drawing.Size(70, 14);
            this.lbleisiteration.TabIndex = 18;
            this.lbleisiteration.Text = "Iteration";
            // 
            // txteisdensity
            // 
            this.txteisdensity.Location = new System.Drawing.Point(194, 65);
            this.txteisdensity.Name = "txteisdensity";
            this.txteisdensity.Size = new System.Drawing.Size(86, 22);
            this.txteisdensity.TabIndex = 17;
            this.txteisdensity.Leave += new System.EventHandler(this.txteisdensity_Leave);
            // 
            // txteisfinalfreq
            // 
            this.txteisfinalfreq.Location = new System.Drawing.Point(194, 37);
            this.txteisfinalfreq.Name = "txteisfinalfreq";
            this.txteisfinalfreq.Size = new System.Drawing.Size(86, 22);
            this.txteisfinalfreq.TabIndex = 16;
            this.txteisfinalfreq.Leave += new System.EventHandler(this.txteisfinalfreq_Leave);
            // 
            // txteisinitfreq
            // 
            this.txteisinitfreq.Location = new System.Drawing.Point(194, 9);
            this.txteisinitfreq.Name = "txteisinitfreq";
            this.txteisinitfreq.Size = new System.Drawing.Size(86, 22);
            this.txteisinitfreq.TabIndex = 15;
            this.txteisinitfreq.Leave += new System.EventHandler(this.txteisinitfreq_Leave);
            // 
            // lbleisdensity
            // 
            this.lbleisdensity.AutoSize = true;
            this.lbleisdensity.Location = new System.Drawing.Point(40, 68);
            this.lbleisdensity.Name = "lbleisdensity";
            this.lbleisdensity.Size = new System.Drawing.Size(56, 14);
            this.lbleisdensity.TabIndex = 12;
            this.lbleisdensity.Text = "Density";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(38, 41);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(140, 14);
            this.label3.TabIndex = 11;
            this.label3.Text = "Final frequency(Hz)";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(38, 13);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(154, 14);
            this.label2.TabIndex = 10;
            this.label2.Text = "Initial frequency(Hz)";
            // 
            // tabtech2
            // 
            this.tabtech2.BackColor = System.Drawing.SystemColors.Control;
            this.tabtech2.Controls.Add(this.cbomonctrl);
            this.tabtech2.Controls.Add(this.txtMonCutoff);
            this.tabtech2.Controls.Add(this.lblcutoff);
            this.tabtech2.Controls.Add(this.lblctrlrate);
            this.tabtech2.Controls.Add(this.chkhfrcelloffwait);
            this.tabtech2.Controls.Add(this.txthfrtotaltime);
            this.tabtech2.Controls.Add(this.label14);
            this.tabtech2.Controls.Add(this.txthfrinterval);
            this.tabtech2.Controls.Add(this.lblhfrinterval);
            this.tabtech2.Controls.Add(this.txthfrfreq);
            this.tabtech2.Controls.Add(this.lblhfrfreq);
            this.tabtech2.Location = new System.Drawing.Point(4, 23);
            this.tabtech2.Name = "tabtech2";
            this.tabtech2.Padding = new System.Windows.Forms.Padding(3);
            this.tabtech2.Size = new System.Drawing.Size(415, 177);
            this.tabtech2.TabIndex = 1;
            this.tabtech2.Text = "b";
            // 
            // cbomonctrl
            // 
            this.cbomonctrl.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbomonctrl.FormattingEnabled = true;
            this.cbomonctrl.Location = new System.Drawing.Point(175, 118);
            this.cbomonctrl.Name = "cbomonctrl";
            this.cbomonctrl.Size = new System.Drawing.Size(86, 22);
            this.cbomonctrl.TabIndex = 30;
            this.cbomonctrl.SelectedIndexChanged += new System.EventHandler(this.cbomonctrl_SelectedIndexChanged);
            // 
            // txtMonCutoff
            // 
            this.txtMonCutoff.Location = new System.Drawing.Point(175, 147);
            this.txtMonCutoff.Name = "txtMonCutoff";
            this.txtMonCutoff.Size = new System.Drawing.Size(86, 22);
            this.txtMonCutoff.TabIndex = 29;
            this.txtMonCutoff.Leave += new System.EventHandler(this.txtMonCutoff_Leave);
            // 
            // lblcutoff
            // 
            this.lblcutoff.AutoSize = true;
            this.lblcutoff.Location = new System.Drawing.Point(21, 150);
            this.lblcutoff.Name = "lblcutoff";
            this.lblcutoff.Size = new System.Drawing.Size(133, 14);
            this.lblcutoff.TabIndex = 28;
            this.lblcutoff.Text = "Cut-off voltage(V)";
            // 
            // lblctrlrate
            // 
            this.lblctrlrate.AutoSize = true;
            this.lblctrlrate.Location = new System.Drawing.Point(21, 120);
            this.lblctrlrate.Name = "lblctrlrate";
            this.lblctrlrate.Size = new System.Drawing.Size(126, 14);
            this.lblctrlrate.TabIndex = 26;
            this.lblctrlrate.Text = "Discharge current";
            // 
            // chkhfrcelloffwait
            // 
            this.chkhfrcelloffwait.AutoSize = true;
            this.chkhfrcelloffwait.Location = new System.Drawing.Point(177, 96);
            this.chkhfrcelloffwait.Name = "chkhfrcelloffwait";
            this.chkhfrcelloffwait.Size = new System.Drawing.Size(166, 18);
            this.chkhfrcelloffwait.TabIndex = 25;
            this.chkhfrcelloffwait.Text = "Load off at waiting.";
            this.chkhfrcelloffwait.UseVisualStyleBackColor = true;
            this.chkhfrcelloffwait.CheckedChanged += new System.EventHandler(this.chkhfrcelloffwait_CheckedChanged);
            // 
            // txthfrtotaltime
            // 
            this.txthfrtotaltime.Location = new System.Drawing.Point(174, 69);
            this.txthfrtotaltime.Name = "txthfrtotaltime";
            this.txthfrtotaltime.Size = new System.Drawing.Size(86, 22);
            this.txthfrtotaltime.TabIndex = 21;
            this.txthfrtotaltime.Leave += new System.EventHandler(this.txthfrtotaltime_Leave);
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(20, 72);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(98, 14);
            this.label14.TabIndex = 20;
            this.label14.Text = "Total time(s)";
            // 
            // txthfrinterval
            // 
            this.txthfrinterval.Location = new System.Drawing.Point(174, 41);
            this.txthfrinterval.Name = "txthfrinterval";
            this.txthfrinterval.Size = new System.Drawing.Size(86, 22);
            this.txthfrinterval.TabIndex = 19;
            this.txthfrinterval.Leave += new System.EventHandler(this.txthfrinterval_Leave);
            // 
            // lblhfrinterval
            // 
            this.lblhfrinterval.AutoSize = true;
            this.lblhfrinterval.Location = new System.Drawing.Point(20, 45);
            this.lblhfrinterval.Name = "lblhfrinterval";
            this.lblhfrinterval.Size = new System.Drawing.Size(84, 14);
            this.lblhfrinterval.TabIndex = 18;
            this.lblhfrinterval.Text = "Interval(s)";
            // 
            // txthfrfreq
            // 
            this.txthfrfreq.Location = new System.Drawing.Point(174, 14);
            this.txthfrfreq.Name = "txthfrfreq";
            this.txthfrfreq.Size = new System.Drawing.Size(86, 22);
            this.txthfrfreq.TabIndex = 17;
            this.txthfrfreq.Leave += new System.EventHandler(this.txthfrfreq_Leave);
            // 
            // lblhfrfreq
            // 
            this.lblhfrfreq.AutoSize = true;
            this.lblhfrfreq.Location = new System.Drawing.Point(21, 18);
            this.lblhfrfreq.Name = "lblhfrfreq";
            this.lblhfrfreq.Size = new System.Drawing.Size(98, 14);
            this.lblhfrfreq.TabIndex = 16;
            this.lblhfrfreq.Text = "Frequency(Hz)";
            // 
            // tabtech3
            // 
            this.tabtech3.BackColor = System.Drawing.SystemColors.Control;
            this.tabtech3.Controls.Add(this.chkrpend);
            this.tabtech3.Controls.Add(this.chkprrcelloffwait);
            this.tabtech3.Controls.Add(this.txtprrtotaltime);
            this.tabtech3.Controls.Add(this.label21);
            this.tabtech3.Controls.Add(this.txtprrinterval);
            this.tabtech3.Controls.Add(this.label22);
            this.tabtech3.Controls.Add(this.txtprrrpendfreq);
            this.tabtech3.Controls.Add(this.txtprrrpfreq);
            this.tabtech3.Controls.Add(this.txtprrrsfreq);
            this.tabtech3.Controls.Add(this.label17);
            this.tabtech3.Controls.Add(this.label18);
            this.tabtech3.Location = new System.Drawing.Point(4, 23);
            this.tabtech3.Name = "tabtech3";
            this.tabtech3.Size = new System.Drawing.Size(415, 177);
            this.tabtech3.TabIndex = 2;
            this.tabtech3.Text = "c";
            // 
            // chkrpend
            // 
            this.chkrpend.AutoSize = true;
            this.chkrpend.Location = new System.Drawing.Point(14, 68);
            this.chkrpend.Name = "chkrpend";
            this.chkrpend.Size = new System.Drawing.Size(215, 18);
            this.chkrpend.TabIndex = 30;
            this.chkrpend.Text = "Pseudo Rp end frequency(Hz)";
            this.chkrpend.UseVisualStyleBackColor = true;
            this.chkrpend.CheckedChanged += new System.EventHandler(this.chkrpend_CheckedChanged);
            // 
            // chkprrcelloffwait
            // 
            this.chkprrcelloffwait.AutoSize = true;
            this.chkprrcelloffwait.Location = new System.Drawing.Point(231, 118);
            this.chkprrcelloffwait.Name = "chkprrcelloffwait";
            this.chkprrcelloffwait.Size = new System.Drawing.Size(166, 18);
            this.chkprrcelloffwait.TabIndex = 29;
            this.chkprrcelloffwait.Text = "Load off at waiting.";
            this.chkprrcelloffwait.UseVisualStyleBackColor = true;
            this.chkprrcelloffwait.CheckedChanged += new System.EventHandler(this.chkprrcelloffwait_CheckedChanged);
            // 
            // txtprrtotaltime
            // 
            this.txtprrtotaltime.Location = new System.Drawing.Point(229, 143);
            this.txtprrtotaltime.Name = "txtprrtotaltime";
            this.txtprrtotaltime.Size = new System.Drawing.Size(100, 22);
            this.txtprrtotaltime.TabIndex = 28;
            this.txtprrtotaltime.Leave += new System.EventHandler(this.txtprrtotaltime_Leave);
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(28, 144);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(98, 14);
            this.label21.TabIndex = 27;
            this.label21.Text = "Total time(s)";
            // 
            // txtprrinterval
            // 
            this.txtprrinterval.Location = new System.Drawing.Point(229, 93);
            this.txtprrinterval.Name = "txtprrinterval";
            this.txtprrinterval.Size = new System.Drawing.Size(100, 22);
            this.txtprrinterval.TabIndex = 26;
            this.txtprrinterval.Leave += new System.EventHandler(this.txtprrinterval_Leave);
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(28, 96);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(84, 14);
            this.label22.TabIndex = 25;
            this.label22.Text = "Interval(s)";
            // 
            // txtprrrpendfreq
            // 
            this.txtprrrpendfreq.Location = new System.Drawing.Point(229, 66);
            this.txtprrrpendfreq.Name = "txtprrrpendfreq";
            this.txtprrrpendfreq.Size = new System.Drawing.Size(100, 22);
            this.txtprrrpendfreq.TabIndex = 22;
            this.txtprrrpendfreq.Leave += new System.EventHandler(this.txtprrrpendfreq_Leave);
            // 
            // txtprrrpfreq
            // 
            this.txtprrrpfreq.Location = new System.Drawing.Point(229, 39);
            this.txtprrrpfreq.Name = "txtprrrpfreq";
            this.txtprrrpfreq.Size = new System.Drawing.Size(100, 22);
            this.txtprrrpfreq.TabIndex = 20;
            this.txtprrrpfreq.Leave += new System.EventHandler(this.txtprrrpfreq_Leave);
            // 
            // txtprrrsfreq
            // 
            this.txtprrrsfreq.Location = new System.Drawing.Point(229, 12);
            this.txtprrrsfreq.Name = "txtprrrsfreq";
            this.txtprrrsfreq.Size = new System.Drawing.Size(100, 22);
            this.txtprrrsfreq.TabIndex = 19;
            this.txtprrrsfreq.Leave += new System.EventHandler(this.txtprrrsfreq_Leave);
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(30, 42);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(168, 14);
            this.label17.TabIndex = 18;
            this.label17.Text = "Pseudo Rp frequency(Hz)";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(30, 15);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(168, 14);
            this.label18.TabIndex = 17;
            this.label18.Text = "       Rs frequency(Hz)";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.chkondelaystable);
            this.panel1.Controls.Add(this.txtondelay);
            this.panel1.Controls.Add(this.lblondelay);
            this.panel1.Controls.Add(this.cboIrange);
            this.panel1.Controls.Add(this.lbliRange);
            this.panel1.Controls.Add(this.groupBox2);
            this.panel1.Location = new System.Drawing.Point(164, 218);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(418, 200);
            this.panel1.TabIndex = 10;
            // 
            // chkondelaystable
            // 
            this.chkondelaystable.AutoSize = true;
            this.chkondelaystable.Location = new System.Drawing.Point(271, 19);
            this.chkondelaystable.Name = "chkondelaystable";
            this.chkondelaystable.Size = new System.Drawing.Size(145, 18);
            this.chkondelaystable.TabIndex = 24;
            this.chkondelaystable.Text = "Skip when stable.";
            this.chkondelaystable.UseVisualStyleBackColor = true;
            this.chkondelaystable.CheckedChanged += new System.EventHandler(this.chkondelaystable_CheckedChanged);
            // 
            // txtondelay
            // 
            this.txtondelay.Location = new System.Drawing.Point(177, 16);
            this.txtondelay.Name = "txtondelay";
            this.txtondelay.Size = new System.Drawing.Size(86, 22);
            this.txtondelay.TabIndex = 23;
            this.txtondelay.Leave += new System.EventHandler(this.txtondelay_Leave);
            // 
            // lblondelay
            // 
            this.lblondelay.AutoSize = true;
            this.lblondelay.Location = new System.Drawing.Point(24, 19);
            this.lblondelay.Name = "lblondelay";
            this.lblondelay.Size = new System.Drawing.Size(84, 14);
            this.lblondelay.TabIndex = 22;
            this.lblondelay.Text = "On delay(s)";
            // 
            // cboIrange
            // 
            this.cboIrange.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboIrange.FormattingEnabled = true;
            this.cboIrange.Location = new System.Drawing.Point(177, 53);
            this.cboIrange.Name = "cboIrange";
            this.cboIrange.Size = new System.Drawing.Size(86, 22);
            this.cboIrange.TabIndex = 20;
            this.cboIrange.SelectedIndexChanged += new System.EventHandler(this.cboIrange_SelectedIndexChanged);
            // 
            // lbliRange
            // 
            this.lbliRange.AutoSize = true;
            this.lbliRange.Location = new System.Drawing.Point(24, 57);
            this.lbliRange.Name = "lbliRange";
            this.lbliRange.Size = new System.Drawing.Size(56, 14);
            this.lbliRange.TabIndex = 19;
            this.lbliRange.Text = "I Range";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtbattid);
            this.groupBox2.Controls.Add(this.txtcreator);
            this.groupBox2.Controls.Add(this.txtcapa);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Location = new System.Drawing.Point(15, 80);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(388, 111);
            this.groupBox2.TabIndex = 12;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "[ Test infomation ]";
            // 
            // txtbattid
            // 
            this.txtbattid.Location = new System.Drawing.Point(178, 25);
            this.txtbattid.Name = "txtbattid";
            this.txtbattid.Size = new System.Drawing.Size(86, 22);
            this.txtbattid.TabIndex = 22;
            this.txtbattid.Leave += new System.EventHandler(this.txtbattid_Leave);
            // 
            // txtcreator
            // 
            this.txtcreator.Location = new System.Drawing.Point(178, 81);
            this.txtcreator.Name = "txtcreator";
            this.txtcreator.Size = new System.Drawing.Size(182, 22);
            this.txtcreator.TabIndex = 21;
            this.txtcreator.Leave += new System.EventHandler(this.txtcreator_Leave);
            // 
            // txtcapa
            // 
            this.txtcapa.Location = new System.Drawing.Point(178, 53);
            this.txtcapa.Name = "txtcapa";
            this.txtcapa.Size = new System.Drawing.Size(86, 22);
            this.txtcapa.TabIndex = 20;
            this.txtcapa.Leave += new System.EventHandler(this.txtcapa_Leave);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(21, 84);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(56, 14);
            this.label9.TabIndex = 19;
            this.label9.Text = "Creator";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(19, 55);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(147, 14);
            this.label8.TabIndex = 18;
            this.label8.Text = "Nominal capacity(AH)";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(21, 28);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(77, 14);
            this.label7.TabIndex = 17;
            this.label7.Text = "Battery ID";
            // 
            // btopen
            // 
            this.btopen.Location = new System.Drawing.Point(596, 32);
            this.btopen.Name = "btopen";
            this.btopen.Size = new System.Drawing.Size(73, 26);
            this.btopen.TabIndex = 11;
            this.btopen.Text = "Open";
            this.btopen.UseVisualStyleBackColor = true;
            this.btopen.Click += new System.EventHandler(this.btopen_Click);
            // 
            // btsaveas
            // 
            this.btsaveas.Location = new System.Drawing.Point(596, 188);
            this.btsaveas.Name = "btsaveas";
            this.btsaveas.Size = new System.Drawing.Size(73, 26);
            this.btsaveas.TabIndex = 12;
            this.btsaveas.Text = "Save as";
            this.btsaveas.UseVisualStyleBackColor = true;
            this.btsaveas.Click += new System.EventHandler(this.btsaveas_Click);
            // 
            // btsave
            // 
            this.btsave.Location = new System.Drawing.Point(596, 144);
            this.btsave.Name = "btsave";
            this.btsave.Size = new System.Drawing.Size(73, 26);
            this.btsave.TabIndex = 13;
            this.btsave.Text = "Save";
            this.btsave.UseVisualStyleBackColor = true;
            this.btsave.Click += new System.EventHandler(this.btsave_Click);
            // 
            // btapply
            // 
            this.btapply.Location = new System.Drawing.Point(596, 298);
            this.btapply.Name = "btapply";
            this.btapply.Size = new System.Drawing.Size(73, 26);
            this.btapply.TabIndex = 14;
            this.btapply.Text = "Apply";
            this.btapply.UseVisualStyleBackColor = true;
            this.btapply.Click += new System.EventHandler(this.btapply_Click);
            // 
            // btclose
            // 
            this.btclose.Location = new System.Drawing.Point(596, 392);
            this.btclose.Name = "btclose";
            this.btclose.Size = new System.Drawing.Size(73, 26);
            this.btclose.TabIndex = 15;
            this.btclose.Text = "Close";
            this.btclose.UseVisualStyleBackColor = true;
            this.btclose.Click += new System.EventHandler(this.btclose_Click);
            // 
            // techtree
            // 
            this.techtree.HideSelection = false;
            this.techtree.Location = new System.Drawing.Point(8, 31);
            this.techtree.Name = "techtree";
            this.techtree.Size = new System.Drawing.Size(149, 386);
            this.techtree.TabIndex = 16;
            this.techtree.NodeMouseClick += new System.Windows.Forms.TreeNodeMouseClickEventHandler(this.techtree_NodeMouseClick);
            // 
            // lbltech
            // 
            this.lbltech.AutoSize = true;
            this.lbltech.Location = new System.Drawing.Point(11, 12);
            this.lbltech.Name = "lbltech";
            this.lbltech.Size = new System.Drawing.Size(112, 14);
            this.lbltech.TabIndex = 17;
            this.lbltech.Text = "Technique type.";
            // 
            // imageList1
            // 
            this.imageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
            this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            // 
            // frmTechniq
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(678, 427);
            this.Controls.Add(this.lbltech);
            this.Controls.Add(this.techtree);
            this.Controls.Add(this.btclose);
            this.Controls.Add(this.btapply);
            this.Controls.Add(this.btsave);
            this.Controls.Add(this.btsaveas);
            this.Controls.Add(this.btopen);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.tabtech);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmTechniq";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Technique.";
            this.TopMost = true;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmTechniq_FormClosing);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmTechniq_FormClosed);
            this.Load += new System.EventHandler(this.frmTechniq_Load);
            this.LocationChanged += new System.EventHandler(this.frmTechniq_LocationChanged);
            this.SizeChanged += new System.EventHandler(this.frmTechniq_SizeChanged);
            this.tabtech.ResumeLayout(false);
            this.tabtech1.ResumeLayout(false);
            this.tabtech1.PerformLayout();
            this.tabtech2.ResumeLayout(false);
            this.tabtech2.PerformLayout();
            this.tabtech3.ResumeLayout(false);
            this.tabtech3.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl tabtech;
        private System.Windows.Forms.TabPage tabtech1;
        private System.Windows.Forms.TabPage tabtech2;
        private System.Windows.Forms.TabPage tabtech3;
        private System.Windows.Forms.Label lbleisdensity;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txteisdensity;
        private System.Windows.Forms.TextBox txteisfinalfreq;
        private System.Windows.Forms.TextBox txteisinitfreq;
        private System.Windows.Forms.TextBox txthfrtotaltime;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txthfrinterval;
        private System.Windows.Forms.Label lblhfrinterval;
        private System.Windows.Forms.TextBox txthfrfreq;
        private System.Windows.Forms.Label lblhfrfreq;
        private System.Windows.Forms.TextBox txtprrtotaltime;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.TextBox txtprrinterval;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.TextBox txtprrrpendfreq;
        private System.Windows.Forms.TextBox txtprrrpfreq;
        private System.Windows.Forms.TextBox txtprrrsfreq;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtcreator;
        private System.Windows.Forms.TextBox txtcapa;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button btopen;
        private System.Windows.Forms.Button btsaveas;
        private System.Windows.Forms.Button btsave;
        private System.Windows.Forms.Button btapply;
        private System.Windows.Forms.Button btclose;
        private System.Windows.Forms.TextBox txtbattid;
        private System.Windows.Forms.ComboBox cboIrange;
        private System.Windows.Forms.TextBox txteisrepeat;
        private System.Windows.Forms.Label lbleisiteration;
        private System.Windows.Forms.CheckBox chkprrcelloffwait;
        private System.Windows.Forms.CheckBox chkondelaystable;
        private System.Windows.Forms.TextBox txtondelay;
        private System.Windows.Forms.Label lblondelay;
        private System.Windows.Forms.Label lbliRange;
        private System.Windows.Forms.CheckBox chkrpend;
        private System.Windows.Forms.Label lbleiscycle;
        private System.Windows.Forms.Label lbleisskipcycle;
        private System.Windows.Forms.TreeView techtree;
        private System.Windows.Forms.Label lbltech;
        private System.Windows.Forms.ComboBox cboeiscyc;
        private System.Windows.Forms.ComboBox cboeisskipcyc;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.TextBox txtMonCutoff;
        private System.Windows.Forms.Label lblcutoff;
        private System.Windows.Forms.Label lblctrlrate;
        private System.Windows.Forms.ComboBox cbomonctrl;
        private System.Windows.Forms.CheckBox chkhfrcelloffwait;
    }
}