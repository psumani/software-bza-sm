namespace App.RemoteTest
{
    partial class FrmMain
    {
        /// <summary>
        /// 필수 디자이너 변수입니다.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 사용 중인 모든 리소스를 정리합니다.
        /// </summary>
        /// <param name="disposing">관리되는 리소스를 삭제해야 하면 true이고, 그렇지 않으면 false입니다.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 디자이너에서 생성한 코드

        /// <summary>
        /// 디자이너 지원에 필요한 메서드입니다. 
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마세요.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmMain));
            this.chkremote = new System.Windows.Forms.CheckBox();
            this.btstart = new System.Windows.Forms.Button();
            this.chkcond = new System.Windows.Forms.CheckBox();
            this.grpremote = new System.Windows.Forms.GroupBox();
            this.grpresfile = new System.Windows.Forms.GroupBox();
            this.txtsetresfile = new System.Windows.Forms.TextBox();
            this.btselfile = new System.Windows.Forms.Button();
            this.chkresfile = new System.Windows.Forms.CheckBox();
            this.grpcond = new System.Windows.Forms.GroupBox();
            this.txtskipcycle = new System.Windows.Forms.TextBox();
            this.cborange = new System.Windows.Forms.ComboBox();
            this.txtiteration = new System.Windows.Forms.TextBox();
            this.txtfanalfreq = new System.Windows.Forms.TextBox();
            this.txtdensity = new System.Windows.Forms.TextBox();
            this.txtinitfreq = new System.Windows.Forms.TextBox();
            this.txtinitdelay = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.chkautorefresh = new System.Windows.Forms.CheckBox();
            this.btrefresh = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txttemp = new System.Windows.Forms.TextBox();
            this.txtvdc = new System.Windows.Forms.TextBox();
            this.txtidc = new System.Windows.Forms.TextBox();
            this.txtzph = new System.Windows.Forms.TextBox();
            this.txtzmag = new System.Windows.Forms.TextBox();
            this.txtzimg = new System.Windows.Forms.TextBox();
            this.txtzreal = new System.Windows.Forms.TextBox();
            this.txtfreq = new System.Windows.Forms.TextBox();
            this.txtelapsedtime = new System.Windows.Forms.TextBox();
            this.txtcurrentrange = new System.Windows.Forms.TextBox();
            this.txtdatacount = new System.Windows.Forms.TextBox();
            this.txtstartdt = new System.Windows.Forms.TextBox();
            this.txtstarted = new System.Windows.Forms.TextBox();
            this.txttick = new System.Windows.Forms.TextBox();
            this.btopenres = new System.Windows.Forms.Button();
            this.txtmodel = new System.Windows.Forms.TextBox();
            this.label23 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.txtresfile = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.label24 = new System.Windows.Forms.Label();
            this.txtstatus = new System.Windows.Forms.TextBox();
            this.grpremote.SuspendLayout();
            this.grpresfile.SuspendLayout();
            this.grpcond.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // chkremote
            // 
            this.chkremote.AutoSize = true;
            this.chkremote.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkremote.Location = new System.Drawing.Point(11, 6);
            this.chkremote.Name = "chkremote";
            this.chkremote.Size = new System.Drawing.Size(124, 18);
            this.chkremote.TabIndex = 0;
            this.chkremote.Text = "Remote control";
            this.chkremote.UseVisualStyleBackColor = true;
            // 
            // btstart
            // 
            this.btstart.Location = new System.Drawing.Point(433, 341);
            this.btstart.Name = "btstart";
            this.btstart.Size = new System.Drawing.Size(70, 32);
            this.btstart.TabIndex = 1;
            this.btstart.Text = "Start";
            this.btstart.UseVisualStyleBackColor = true;
            this.btstart.Click += new System.EventHandler(this.btstart_Click);
            // 
            // chkcond
            // 
            this.chkcond.AutoSize = true;
            this.chkcond.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkcond.Location = new System.Drawing.Point(19, 26);
            this.chkcond.Name = "chkcond";
            this.chkcond.Size = new System.Drawing.Size(145, 18);
            this.chkcond.TabIndex = 2;
            this.chkcond.Text = "Applied condition";
            this.chkcond.UseVisualStyleBackColor = true;
            this.chkcond.CheckedChanged += new System.EventHandler(this.chkcond_CheckedChanged);
            // 
            // grpremote
            // 
            this.grpremote.Controls.Add(this.grpresfile);
            this.grpremote.Controls.Add(this.chkresfile);
            this.grpremote.Controls.Add(this.btstart);
            this.grpremote.Controls.Add(this.grpcond);
            this.grpremote.Controls.Add(this.chkcond);
            this.grpremote.Location = new System.Drawing.Point(11, 30);
            this.grpremote.Name = "grpremote";
            this.grpremote.Size = new System.Drawing.Size(519, 391);
            this.grpremote.TabIndex = 3;
            this.grpremote.TabStop = false;
            this.grpremote.Text = "[ Remote ]";
            // 
            // grpresfile
            // 
            this.grpresfile.Controls.Add(this.txtsetresfile);
            this.grpresfile.Controls.Add(this.btselfile);
            this.grpresfile.Location = new System.Drawing.Point(19, 239);
            this.grpresfile.Name = "grpresfile";
            this.grpresfile.Size = new System.Drawing.Size(484, 96);
            this.grpresfile.TabIndex = 7;
            this.grpresfile.TabStop = false;
            this.grpresfile.Text = "[ Result file name ]";
            // 
            // txtsetresfile
            // 
            this.txtsetresfile.Location = new System.Drawing.Point(8, 45);
            this.txtsetresfile.Multiline = true;
            this.txtsetresfile.Name = "txtsetresfile";
            this.txtsetresfile.ReadOnly = true;
            this.txtsetresfile.Size = new System.Drawing.Size(467, 43);
            this.txtsetresfile.TabIndex = 4;
            // 
            // btselfile
            // 
            this.btselfile.Font = new System.Drawing.Font("Consolas", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btselfile.Location = new System.Drawing.Point(439, 19);
            this.btselfile.Name = "btselfile";
            this.btselfile.Size = new System.Drawing.Size(36, 23);
            this.btselfile.TabIndex = 6;
            this.btselfile.Text = "...";
            this.btselfile.UseVisualStyleBackColor = true;
            this.btselfile.Click += new System.EventHandler(this.btselfile_Click);
            // 
            // chkresfile
            // 
            this.chkresfile.AutoSize = true;
            this.chkresfile.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkresfile.Location = new System.Drawing.Point(19, 215);
            this.chkresfile.Name = "chkresfile";
            this.chkresfile.Size = new System.Drawing.Size(159, 18);
            this.chkresfile.TabIndex = 3;
            this.chkresfile.Text = "Applied result file";
            this.chkresfile.UseVisualStyleBackColor = true;
            this.chkresfile.CheckedChanged += new System.EventHandler(this.chkresfile_CheckedChanged);
            // 
            // grpcond
            // 
            this.grpcond.Controls.Add(this.txtskipcycle);
            this.grpcond.Controls.Add(this.cborange);
            this.grpcond.Controls.Add(this.txtiteration);
            this.grpcond.Controls.Add(this.txtfanalfreq);
            this.grpcond.Controls.Add(this.txtdensity);
            this.grpcond.Controls.Add(this.txtinitfreq);
            this.grpcond.Controls.Add(this.txtinitdelay);
            this.grpcond.Controls.Add(this.label8);
            this.grpcond.Controls.Add(this.label7);
            this.grpcond.Controls.Add(this.label6);
            this.grpcond.Controls.Add(this.label5);
            this.grpcond.Controls.Add(this.label4);
            this.grpcond.Controls.Add(this.label3);
            this.grpcond.Controls.Add(this.label2);
            this.grpcond.Location = new System.Drawing.Point(19, 50);
            this.grpcond.Name = "grpcond";
            this.grpcond.Size = new System.Drawing.Size(484, 145);
            this.grpcond.TabIndex = 0;
            this.grpcond.TabStop = false;
            this.grpcond.Text = "[ Test condition ]";
            // 
            // txtskipcycle
            // 
            this.txtskipcycle.Location = new System.Drawing.Point(376, 111);
            this.txtskipcycle.Name = "txtskipcycle";
            this.txtskipcycle.Size = new System.Drawing.Size(63, 22);
            this.txtskipcycle.TabIndex = 19;
            // 
            // cborange
            // 
            this.cborange.FormattingEnabled = true;
            this.cborange.Location = new System.Drawing.Point(171, 111);
            this.cborange.Name = "cborange";
            this.cborange.Size = new System.Drawing.Size(96, 22);
            this.cborange.TabIndex = 18;
            // 
            // txtiteration
            // 
            this.txtiteration.Location = new System.Drawing.Point(375, 52);
            this.txtiteration.Name = "txtiteration";
            this.txtiteration.Size = new System.Drawing.Size(63, 22);
            this.txtiteration.TabIndex = 17;
            // 
            // txtfanalfreq
            // 
            this.txtfanalfreq.Location = new System.Drawing.Point(171, 81);
            this.txtfanalfreq.Name = "txtfanalfreq";
            this.txtfanalfreq.Size = new System.Drawing.Size(99, 22);
            this.txtfanalfreq.TabIndex = 16;
            // 
            // txtdensity
            // 
            this.txtdensity.Location = new System.Drawing.Point(375, 23);
            this.txtdensity.Name = "txtdensity";
            this.txtdensity.Size = new System.Drawing.Size(63, 22);
            this.txtdensity.TabIndex = 15;
            // 
            // txtinitfreq
            // 
            this.txtinitfreq.Location = new System.Drawing.Point(171, 52);
            this.txtinitfreq.Name = "txtinitfreq";
            this.txtinitfreq.Size = new System.Drawing.Size(99, 22);
            this.txtinitfreq.TabIndex = 14;
            // 
            // txtinitdelay
            // 
            this.txtinitdelay.Location = new System.Drawing.Point(171, 23);
            this.txtinitdelay.Name = "txtinitdelay";
            this.txtinitdelay.Size = new System.Drawing.Size(63, 22);
            this.txtinitdelay.TabIndex = 13;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(293, 114);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(77, 14);
            this.label8.TabIndex = 12;
            this.label8.Text = "Skip cycle";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(17, 28);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(119, 14);
            this.label7.TabIndex = 11;
            this.label7.Text = "Initial delay(s)";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(293, 55);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(70, 14);
            this.label6.TabIndex = 10;
            this.label6.Text = "Iteration";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(293, 31);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(56, 14);
            this.label5.TabIndex = 9;
            this.label5.Text = "Density";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(19, 114);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(98, 14);
            this.label4.TabIndex = 8;
            this.label4.Text = "Current range";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(19, 84);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(140, 14);
            this.label3.TabIndex = 7;
            this.label3.Text = "Final frequency(Hz)";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(17, 55);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(154, 14);
            this.label2.TabIndex = 6;
            this.label2.Text = "Initial frequency(Hz)";
            // 
            // chkautorefresh
            // 
            this.chkautorefresh.AutoSize = true;
            this.chkautorefresh.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkautorefresh.Location = new System.Drawing.Point(549, 6);
            this.chkautorefresh.Name = "chkautorefresh";
            this.chkautorefresh.Size = new System.Drawing.Size(194, 18);
            this.chkautorefresh.TabIndex = 4;
            this.chkautorefresh.Text = "Automatic refresh status";
            this.chkautorefresh.UseVisualStyleBackColor = true;
            this.chkautorefresh.CheckedChanged += new System.EventHandler(this.chkautorefresh_CheckedChanged);
            // 
            // btrefresh
            // 
            this.btrefresh.Location = new System.Drawing.Point(332, 19);
            this.btrefresh.Name = "btrefresh";
            this.btrefresh.Size = new System.Drawing.Size(57, 23);
            this.btrefresh.TabIndex = 5;
            this.btrefresh.Text = "Refresh";
            this.btrefresh.UseVisualStyleBackColor = true;
            this.btrefresh.Click += new System.EventHandler(this.btrefresh_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtstatus);
            this.groupBox2.Controls.Add(this.label24);
            this.groupBox2.Controls.Add(this.txttemp);
            this.groupBox2.Controls.Add(this.txtvdc);
            this.groupBox2.Controls.Add(this.txtidc);
            this.groupBox2.Controls.Add(this.txtzph);
            this.groupBox2.Controls.Add(this.txtzmag);
            this.groupBox2.Controls.Add(this.txtzimg);
            this.groupBox2.Controls.Add(this.txtzreal);
            this.groupBox2.Controls.Add(this.txtfreq);
            this.groupBox2.Controls.Add(this.txtelapsedtime);
            this.groupBox2.Controls.Add(this.txtcurrentrange);
            this.groupBox2.Controls.Add(this.txtdatacount);
            this.groupBox2.Controls.Add(this.txtstartdt);
            this.groupBox2.Controls.Add(this.txtstarted);
            this.groupBox2.Controls.Add(this.txttick);
            this.groupBox2.Controls.Add(this.btopenres);
            this.groupBox2.Controls.Add(this.txtmodel);
            this.groupBox2.Controls.Add(this.label23);
            this.groupBox2.Controls.Add(this.label22);
            this.groupBox2.Controls.Add(this.label21);
            this.groupBox2.Controls.Add(this.label20);
            this.groupBox2.Controls.Add(this.label19);
            this.groupBox2.Controls.Add(this.label18);
            this.groupBox2.Controls.Add(this.label17);
            this.groupBox2.Controls.Add(this.label16);
            this.groupBox2.Controls.Add(this.label15);
            this.groupBox2.Controls.Add(this.label14);
            this.groupBox2.Controls.Add(this.label13);
            this.groupBox2.Controls.Add(this.label12);
            this.groupBox2.Controls.Add(this.txtresfile);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.btrefresh);
            this.groupBox2.Location = new System.Drawing.Point(549, 30);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(400, 391);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "[ Status ]";
            // 
            // txttemp
            // 
            this.txttemp.Location = new System.Drawing.Point(312, 278);
            this.txttemp.Name = "txttemp";
            this.txttemp.ReadOnly = true;
            this.txttemp.Size = new System.Drawing.Size(77, 22);
            this.txttemp.TabIndex = 44;
            // 
            // txtvdc
            // 
            this.txtvdc.Location = new System.Drawing.Point(312, 362);
            this.txtvdc.Name = "txtvdc";
            this.txtvdc.ReadOnly = true;
            this.txtvdc.Size = new System.Drawing.Size(77, 22);
            this.txtvdc.TabIndex = 43;
            // 
            // txtidc
            // 
            this.txtidc.Location = new System.Drawing.Point(121, 362);
            this.txtidc.Name = "txtidc";
            this.txtidc.ReadOnly = true;
            this.txtidc.Size = new System.Drawing.Size(77, 22);
            this.txtidc.TabIndex = 42;
            // 
            // txtzph
            // 
            this.txtzph.Location = new System.Drawing.Point(312, 333);
            this.txtzph.Name = "txtzph";
            this.txtzph.ReadOnly = true;
            this.txtzph.Size = new System.Drawing.Size(77, 22);
            this.txtzph.TabIndex = 41;
            // 
            // txtzmag
            // 
            this.txtzmag.Location = new System.Drawing.Point(121, 334);
            this.txtzmag.Name = "txtzmag";
            this.txtzmag.ReadOnly = true;
            this.txtzmag.Size = new System.Drawing.Size(77, 22);
            this.txtzmag.TabIndex = 40;
            // 
            // txtzimg
            // 
            this.txtzimg.Location = new System.Drawing.Point(312, 306);
            this.txtzimg.Name = "txtzimg";
            this.txtzimg.ReadOnly = true;
            this.txtzimg.Size = new System.Drawing.Size(77, 22);
            this.txtzimg.TabIndex = 39;
            // 
            // txtzreal
            // 
            this.txtzreal.Location = new System.Drawing.Point(121, 306);
            this.txtzreal.Name = "txtzreal";
            this.txtzreal.ReadOnly = true;
            this.txtzreal.Size = new System.Drawing.Size(77, 22);
            this.txtzreal.TabIndex = 38;
            // 
            // txtfreq
            // 
            this.txtfreq.Location = new System.Drawing.Point(121, 278);
            this.txtfreq.Name = "txtfreq";
            this.txtfreq.ReadOnly = true;
            this.txtfreq.Size = new System.Drawing.Size(77, 22);
            this.txtfreq.TabIndex = 37;
            // 
            // txtelapsedtime
            // 
            this.txtelapsedtime.Location = new System.Drawing.Point(121, 251);
            this.txtelapsedtime.Name = "txtelapsedtime";
            this.txtelapsedtime.ReadOnly = true;
            this.txtelapsedtime.Size = new System.Drawing.Size(268, 22);
            this.txtelapsedtime.TabIndex = 36;
            // 
            // txtcurrentrange
            // 
            this.txtcurrentrange.Location = new System.Drawing.Point(312, 223);
            this.txtcurrentrange.Name = "txtcurrentrange";
            this.txtcurrentrange.ReadOnly = true;
            this.txtcurrentrange.Size = new System.Drawing.Size(77, 22);
            this.txtcurrentrange.TabIndex = 35;
            // 
            // txtdatacount
            // 
            this.txtdatacount.Location = new System.Drawing.Point(121, 223);
            this.txtdatacount.Name = "txtdatacount";
            this.txtdatacount.ReadOnly = true;
            this.txtdatacount.Size = new System.Drawing.Size(77, 22);
            this.txtdatacount.TabIndex = 34;
            // 
            // txtstartdt
            // 
            this.txtstartdt.Location = new System.Drawing.Point(121, 195);
            this.txtstartdt.Name = "txtstartdt";
            this.txtstartdt.ReadOnly = true;
            this.txtstartdt.Size = new System.Drawing.Size(266, 22);
            this.txtstartdt.TabIndex = 33;
            // 
            // txtstarted
            // 
            this.txtstarted.Location = new System.Drawing.Point(72, 23);
            this.txtstarted.Name = "txtstarted";
            this.txtstarted.ReadOnly = true;
            this.txtstarted.Size = new System.Drawing.Size(55, 22);
            this.txtstarted.TabIndex = 32;
            // 
            // txttick
            // 
            this.txttick.Location = new System.Drawing.Point(209, 23);
            this.txttick.Name = "txttick";
            this.txttick.ReadOnly = true;
            this.txttick.Size = new System.Drawing.Size(94, 22);
            this.txttick.TabIndex = 31;
            // 
            // btopenres
            // 
            this.btopenres.Font = new System.Drawing.Font("Consolas", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btopenres.Location = new System.Drawing.Point(332, 105);
            this.btopenres.Name = "btopenres";
            this.btopenres.Size = new System.Drawing.Size(57, 23);
            this.btopenres.TabIndex = 30;
            this.btopenres.Text = "Open";
            this.btopenres.UseVisualStyleBackColor = true;
            this.btopenres.Click += new System.EventHandler(this.btopenres_Click);
            // 
            // txtmodel
            // 
            this.txtmodel.Location = new System.Drawing.Point(74, 80);
            this.txtmodel.Name = "txtmodel";
            this.txtmodel.ReadOnly = true;
            this.txtmodel.Size = new System.Drawing.Size(315, 22);
            this.txtmodel.TabIndex = 29;
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Location = new System.Drawing.Point(208, 281);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(105, 14);
            this.label23.TabIndex = 28;
            this.label23.Text = "Temperatue(°C)";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(208, 365);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(49, 14);
            this.label22.TabIndex = 27;
            this.label22.Text = "Vdc(V)";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(15, 365);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(49, 14);
            this.label21.TabIndex = 26;
            this.label21.Text = "Idc(A)";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(208, 337);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(70, 14);
            this.label20.TabIndex = 25;
            this.label20.Text = "Zphase(°)";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(8, 341);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(56, 14);
            this.label19.TabIndex = 24;
            this.label19.Text = "Zmag(Ω)";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(208, 312);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(56, 14);
            this.label18.TabIndex = 23;
            this.label18.Text = "Zimg(Ω)";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(8, 312);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(63, 14);
            this.label17.TabIndex = 22;
            this.label17.Text = "Zreal(Ω)";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(8, 281);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(98, 14);
            this.label16.TabIndex = 21;
            this.label16.Text = "Frequency[Hz)";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(8, 255);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(112, 14);
            this.label15.TabIndex = 20;
            this.label15.Text = "Elapsed time(s)";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(208, 226);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(98, 14);
            this.label14.TabIndex = 19;
            this.label14.Text = "Current range";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(8, 199);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(105, 14);
            this.label13.TabIndex = 18;
            this.label13.Text = "Start datetime";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(8, 228);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(77, 14);
            this.label12.TabIndex = 17;
            this.label12.Text = "Data count";
            // 
            // txtresfile
            // 
            this.txtresfile.Location = new System.Drawing.Point(23, 131);
            this.txtresfile.Multiline = true;
            this.txtresfile.Name = "txtresfile";
            this.txtresfile.ReadOnly = true;
            this.txtresfile.Size = new System.Drawing.Size(366, 57);
            this.txtresfile.TabIndex = 16;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(8, 114);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(112, 14);
            this.label11.TabIndex = 15;
            this.label11.Text = "Result filename";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 26);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(56, 14);
            this.label10.TabIndex = 14;
            this.label10.Text = "Started";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(8, 84);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(42, 14);
            this.label9.TabIndex = 13;
            this.label9.Text = "Model";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(133, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 14);
            this.label1.TabIndex = 12;
            this.label1.Text = "Life tick";
            // 
            // timer1
            // 
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Location = new System.Drawing.Point(6, 60);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(49, 14);
            this.label24.TabIndex = 45;
            this.label24.Text = "Status";
            // 
            // txtstatus
            // 
            this.txtstatus.Location = new System.Drawing.Point(74, 52);
            this.txtstatus.Name = "txtstatus";
            this.txtstatus.ReadOnly = true;
            this.txtstatus.Size = new System.Drawing.Size(315, 22);
            this.txtstatus.TabIndex = 46;
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(963, 433);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.chkautorefresh);
            this.Controls.Add(this.grpremote);
            this.Controls.Add(this.chkremote);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Consolas", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Remote Test";
            this.TopMost = true;
            this.grpremote.ResumeLayout(false);
            this.grpremote.PerformLayout();
            this.grpresfile.ResumeLayout(false);
            this.grpresfile.PerformLayout();
            this.grpcond.ResumeLayout(false);
            this.grpcond.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox chkremote;
        private System.Windows.Forms.Button btstart;
        private System.Windows.Forms.CheckBox chkcond;
        private System.Windows.Forms.GroupBox grpremote;
        private System.Windows.Forms.GroupBox grpcond;
        private System.Windows.Forms.Button btselfile;
        private System.Windows.Forms.TextBox txtsetresfile;
        private System.Windows.Forms.CheckBox chkresfile;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox grpresfile;
        private System.Windows.Forms.TextBox txtskipcycle;
        private System.Windows.Forms.ComboBox cborange;
        private System.Windows.Forms.TextBox txtiteration;
        private System.Windows.Forms.TextBox txtfanalfreq;
        private System.Windows.Forms.TextBox txtdensity;
        private System.Windows.Forms.TextBox txtinitfreq;
        private System.Windows.Forms.TextBox txtinitdelay;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.CheckBox chkautorefresh;
        private System.Windows.Forms.Button btrefresh;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtresfile;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.TextBox txttemp;
        private System.Windows.Forms.TextBox txtvdc;
        private System.Windows.Forms.TextBox txtidc;
        private System.Windows.Forms.TextBox txtzph;
        private System.Windows.Forms.TextBox txtzmag;
        private System.Windows.Forms.TextBox txtzimg;
        private System.Windows.Forms.TextBox txtzreal;
        private System.Windows.Forms.TextBox txtfreq;
        private System.Windows.Forms.TextBox txtelapsedtime;
        private System.Windows.Forms.TextBox txtcurrentrange;
        private System.Windows.Forms.TextBox txtdatacount;
        private System.Windows.Forms.TextBox txtstartdt;
        private System.Windows.Forms.TextBox txtstarted;
        private System.Windows.Forms.TextBox txttick;
        private System.Windows.Forms.Button btopenres;
        private System.Windows.Forms.TextBox txtmodel;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.TextBox txtstatus;
        private System.Windows.Forms.Label label24;
    }
}

