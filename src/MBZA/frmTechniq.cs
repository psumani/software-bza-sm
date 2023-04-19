using SMLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;
using ZiveLab.ZM.ZIM.Packets;
using ZiveLab.ZM.ZIM.Utilities;

namespace ZiveLab.ZM
{

    public partial class frmTechniq : Form
    {
        public int ch;
        public eZimType zimtype;
        public event EventHandler CloseThis;
        public stTech mtech;
        public stTech_EIS eis;
        public stTech_HFR hfr;
        public stTech_PRR prr;
        public stTech_MON mon;
        public stTech_QIS qis;
        public stTech_DCH dch;
        public enTechType techtype;
        public bool bopen;
        public bool loaderr;
        public string filename;
        public string filefullpath;
        public bool bClose;
        public frmTechniq(int tch, string sfile = "", eZimType type = eZimType.UNKNOWN)
        {
            InitializeComponent();

            int i;
            bClose = false;
            loaderr = false;
            techtype = enTechType.TECH_EIS;

            mtech = new stTech(techtype);

            eis = new stTech_EIS(0);
            hfr = new stTech_HFR(0);
            prr = new stTech_PRR(0);
            mon = new stTech_MON(0);
            qis = new stTech_QIS(0);
            dch = new stTech_DCH(0);

            TechInitialize();

            bopen = false;
            this.Icon = gBZA.BitmapToIcon(Properties.Resources.TestSettings);

            ch = tch;

            string sch = ch.ToString();

            this.imageList1.Images.Clear();
            
            this.imageList1.Images.Add(Properties.Resources.TestSettings);
            this.imageList1.Images.Add(Properties.Resources.DeviceTest_inactive);
            this.imageList1.Images.Add(Properties.Resources.DeviceTest_active);
            this.imageList1.Images.Add(Properties.Resources.folder);


            techtree.ImageList = this.imageList1;
            techtree.Nodes.Clear();
            
            TreeNode Root = new TreeNode("Techniques", 0, 0);

            List<string> list = new List<string>();

            list = Enum.GetNames(typeof(enTechType)).ToList();

            for (i=0; i< list.Count; i++)
            {

                Root.Nodes.Add(i.ToString(), list[i], 1, 2);
            }
            techtree.Nodes.Add(Root);
            techtree.SelectedNode = techtree.Nodes[0].Nodes[(int)techtype];


            cboeisskipcyc.Items.Clear();
            cboeisskipcyc.Items.Add("none");


            for (i = 1; i < 11; i++)
            {
                cboeisskipcyc.Items.Add(i.ToString());
            }
            cboeisskipcyc.SelectedIndex = eis.skipcycle;

            cboeiscyc.Items.Clear();
            cboeiscyc.Items.Add("auto");
            for (i = 2; i < 10; i++)
            {
                cboeiscyc.Items.Add(i.ToString());
            }

            for (i = 10; i <= 100; i+=10)
            {
                cboeiscyc.Items.Add(i.ToString());
            }
            cboeiscyc.Items.Add("128");

            cboeiscyc.SelectedIndex = GetCycIdxFromCycle(eis.cycle);

            cboIrange.Items.Clear();
            cbomonctrl.Items.Clear();
            if (ch < 0 || gBZA.ChLnkLst.ContainsKey(sch) == false)
            {
                if (type == eZimType.UNKNOWN) zimtype = eZimType.BZA1000;
                else zimtype = type;

                var iRanges = Enum.GetValues(typeof(enCurrentRange)).Cast<enCurrentRange>();
                foreach (var item in iRanges)
                {
                    cboIrange.Items.Add(item.GetDescription());
                }

                

            }
            else
            {
                var zim = gBZA.SifLnkLst[gBZA.ChLnkLst[sch].sSerial].MBZAIF.mDevInf.mSysCfg.mZimCfg[gBZA.ChLnkLst[sch].SifCh];
                zimtype = (eZimType)(zim.info.cModel[0] - 0x30);
                for (i = 0; i < DeviceConstants.MAX_IAC_RNGCNT; i++)
                {
                    cboIrange.Items.Add(SM_Number.ToRangeString(zim.ranges.iac_rng[i].realmax, "A"));
                    cboIrange.Items.Add(SM_Number.ToRangeString(zim.ranges.iac_rng[i].realmax * zim.ranges.iac_rng[i].controlgain, "A"));
                }
            }

            var iControl = Enum.GetValues(typeof(enCurrentControl)).Cast<enCurrentControl>();
            foreach (var icontitem in iControl)
            {
                cbomonctrl.Items.Add(icontitem.GetDescription());
            }


            cboIrange.SelectedIndex = 2;
            cbomonctrl.SelectedIndex = 2;
            filefullpath = sfile;
            if (File.Exists(filefullpath))
            {
                if(Openfile(filefullpath) == false)
                {
                    loaderr = true;
                    return;
                }
                ChangeViewMode();
            }
            else
            {
                filefullpath = GetDefaultname();
                filename = Path.GetFileName(filefullpath);
                this.Text = string.Format("new {0}.", GetFixedFilename(filename, 60));

                techtree.SelectedNode = techtree.Nodes[0].Nodes[(int)techtype];
                SetTabpagesitem();
                ViewTechnique();
                ChangeViewMode(false);
            }
            
        }

        public void ChangeViewMode(bool changetech = true)
        {
            
            if (changetech)
            {

                btopen.Visible = false;
                lbltech.Visible = false;
                techtree.Visible = false;

                tabtech.Location = new Point(8, 8);
                panel1.Location = new Point(8, 284);
                btopen.Location = new Point(440, 32);
                btsave.Location = new Point(440, 144);
                btsaveas.Location = new Point(440, 188);
                btapply.Location = new Point(440, 298);
                btclose.Location = new Point(440, 438);
                this.Size = new Size(538, 515);
            }
            else
            {
                
                tabtech.Location = new Point(164, 8);
                panel1.Location = new Point(164, 284);
                btopen.Location = new Point(596, 32);
                btsave.Location = new Point(596, 144);
                btsaveas.Location = new Point(596, 188);
                btapply.Location = new Point(596, 298);
                btclose.Location = new Point(596, 438);
                techtree.Size = new Size(150, 434);
                this.Size = new Size(698, 515);

                lbltech.Visible = true;
                techtree.Visible = true;
            }


        }
        
        private void frmTechniq_Load(object sender, EventArgs e)
        {
        }

        private void TechInitialize()
        {
            stTech ttech = new stTech(techtype);
            ttech = mtech;

            mtech.initialize(techtype);
            if (techtype == enTechType.TECH_HFR)
            {
                hfr.initialize();
                mtech.SetHFR(hfr);
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                prr.initialize();
                mtech.SetPRR(prr);
            }
            else if (techtype == enTechType.TECH_MON)
            {
                mon.initialize();
                mtech.SetMON(mon);
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                qis.initialize();
                mtech.SetQIS(qis);
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                dch.initialize();
                mtech.SetDCH(dch);
            }
            else
            {
                eis.initialize();
                mtech.SetEIS(eis);
            }

            mtech.irange = ttech.irange;
            mtech.vrange = ttech.vrange;
            mtech.info = ttech.info;
        }

        private string GetDefaultname()
        {
            string str;
            string sext;
            string sname;
            string sfilename;

            sname = "technique";
            if (techtype == enTechType.TECH_HFR)
            {
                sext = "hfr";
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                sext = "prr";
            }
            else if (techtype == enTechType.TECH_MON)
            {
                sext = "vtm";
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                sext = "qis";
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                sext = "dch";
            }
            else
            {
                sext = "eis";
            }
            int i = 0;

            while (true)
            {
                sfilename = string.Format("{0}{1}.{2}", sname, i + 1, sext);
                str = Path.Combine(gBZA.appcfg.PathSch, sfilename);
                if (File.Exists(str) == false)
                {
                    break;
                }
                i++;
            }

            return str;
        }
        public void RefreshView(enTechType ttech,bool binit = false)
        {
            if(ttech != techtype)
            {
                techtype = ttech;
                techtree.SelectedNode = techtree.Nodes[0].Nodes[(int)techtype];
                if (binit == true)
                {
                    TechInitialize();
                    filefullpath = GetDefaultname();
                    filename = Path.GetFileName(filefullpath);
                    this.Text = string.Format("new {0}.", GetFixedFilename(filename, 60));
                }
            }
            SetTabpagesitem();
            ViewTechnique();
        }

        public bool Openfile(string sfilename)
        {
            var info = new FileInfo(sfilename);
            if (info.Length != MBZA_Constant.TECHFILESIZE)
            {
                MessageBox.Show("Unsupported file format.\r\n Please check the file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }


            FileCondition fc = new FileCondition();

            if (fc.OpenFile(sfilename, ref mtech) == false)
            {
                MessageBox.Show("Failed to load file information.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            if (mtech.CheckVal != DeviceConstants.CHECKSCHVAL)
            {
                MessageBox.Show("Unsupported file format.\r\n Please check the file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            /*
            if (mtech.version.Major != DeviceConstants.SCH_MAJOR || mtech.version.Minor != DeviceConstants.SCH_MINOR
                || mtech.version.Revision != DeviceConstants.SCH_REVISION || mtech.version.Build != DeviceConstants.SCH_BUILD)
            {
                string smsg = string.Format("The version of the technical file is out of date[{0}.{1}.{2}.{3}]. \r\n  Would you like to continue?",
                    mtech.version.Major, mtech.version.Minor, mtech.version.Revision, mtech.version.Build);
                if (MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
                {
                    return false;
                }
            }
            */

            gBZA.appcfg.PathSch = Path.GetDirectoryName(sfilename);
            gBZA.appcfg.Save();

            if ((enTechType)mtech.type == enTechType.TECH_HFR)
            {
                eis.initialize();
                mtech.GetHFR(ref hfr);
                prr.initialize();
                mon.initialize();
                qis.initialize();
                dch.initialize();
            }
            else if ((enTechType)mtech.type == enTechType.TECH_PRR)
            {
                eis.initialize();
                hfr.initialize();
                mtech.GetPRR(ref prr);
                mon.initialize();
                qis.initialize();
                dch.initialize();
            }
            else if ((enTechType)mtech.type == enTechType.TECH_MON)
            {
                eis.initialize();
                hfr.initialize();
                prr.initialize();
                mtech.GetMON(ref mon);
                qis.initialize();
                dch.initialize();
            }
            else if ((enTechType)mtech.type == enTechType.TECH_QIS)
            {
                eis.initialize();
                hfr.initialize();
                prr.initialize();
                mon.initialize();
                mtech.GetQIS(ref qis);
                dch.initialize();
            }
            else if ((enTechType)mtech.type == enTechType.TECH_DCH)
            {
                eis.initialize();
                hfr.initialize();
                prr.initialize();
                mon.initialize();
                qis.initialize();
                mtech.GetDCH(ref dch);
            }
            else
            {
                mtech.GetEIS(ref eis);
                hfr.initialize();
                prr.initialize();
                mon.initialize();
                qis.initialize();
                dch.initialize();
            }
            
            bopen = true;
            filefullpath = sfilename;
            filename = Path.GetFileName(filefullpath);
            this.Text = string.Format("{0}.", GetFixedFilename(filename, 60));

            RefreshView((enTechType)mtech.type);
            
            return true;
        }

        public void Updatedata()
        {
            string str;
            byte[] arr;
            int len;

            arr = Encoding.UTF8.GetBytes(txtbattid.Text);
            len = arr.Count();
            if (len > DeviceConstants.BATIDSIZE) len = DeviceConstants.BATIDSIZE;
            Array.Copy(arr, mtech.info.batid, len);
            mtech.info.Capa = Convert.ToDouble(txtcapa.Text) / 1000.0;
            txtcapa.Text = string.Format("{0:0.0##}", mtech.info.Capa);

            arr = Encoding.UTF8.GetBytes(txtcreator.Text);
            len = arr.Count();
            if (len > DeviceConstants.USERSIZE) len = DeviceConstants.USERSIZE;
            Array.Copy(arr, mtech.info.creator, len);


            if (techtype == enTechType.TECH_HFR)
            {
                str = txthfrfreq.Text;
                if (RefreshFrequency(ref str, ref hfr.freq)) txthfrfreq.Text = str;

                hfr.interval = SM_Number.atot(txthfrinterval.Text);
                txthfrinterval.Text = SM_Number.GetTimeString(hfr.interval);

                hfr.celloffwait = (ushort)(chkhfrcelloffwait.Checked ? 1 : 0);

                hfr.totaltime = SM_Number.atot(txthfrtotaltime.Text);
                txthfrtotaltime.Text = SM_Number.GetTimeString(hfr.totaltime);
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                str = txtprrrsfreq.Text;
                if (RefreshFrequency(ref str, ref prr.rsfreq)) txtprrrsfreq.Text = str;

                str = txtprrrpfreq.Text;
                if (RefreshFrequency(ref str, ref prr.rdfreq)) txtprrrpfreq.Text = str;

                if (chkrpend.Checked == true)
                {
                    lblRpCalc.Visible = true;
                    cborpcalc.Visible = true;
                    
                    prr.rpcalmode = (ushort)cborpcalc.SelectedIndex;
                    txtprrrpendfreq.ReadOnly = false;
                }
                else
                {
                    prr.rpcalmode = 0;
                    cborpcalc.Visible = false;
                    lblRpCalc.Visible = false;
                    txtprrrpendfreq.ReadOnly = true;
                }

                str = txtprrrpendfreq.Text;
                if (RefreshFrequency(ref str, ref prr.rdendfreq)) txtprrrpendfreq.Text = str;

                prr.interval = SM_Number.atot(txtprrinterval.Text);
                txtprrinterval.Text = SM_Number.GetTimeString(prr.interval);
                prr.celloffwait = (ushort)(chkprrcelloffwait.Checked ? 1 : 0);
                prr.totaltime = SM_Number.atot(txtprrtotaltime.Text);
                txtprrtotaltime.Text = SM_Number.GetTimeString(prr.totaltime);
            }
            else if (techtype == enTechType.TECH_MON)
            {
                mon.sampletime = SM_Number.atot(txthfrinterval.Text);
                txthfrinterval.Text = SM_Number.GetTimeString(mon.sampletime);

                mon.totaltime = SM_Number.atot(txthfrtotaltime.Text);
                txthfrtotaltime.Text = SM_Number.GetTimeString(mon.totaltime);
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                str = txteisinitfreq.Text;
                if (RefreshFrequency(ref str, ref qis.initfreq)) txteisinitfreq.Text = str;
                str = txteisfinalfreq.Text;
                if (RefreshFrequency(ref str, ref qis.finalfreq)) txteisfinalfreq.Text = str;

         
                qis.density = 4;
                txteisdensity.Text = qis.density.ToString();
                qis.iteration = 1;
                txteisrepeat.Text = qis.iteration.ToString();

                qis.skipcycle = 0;
                cboeisskipcyc.SelectedIndex = qis.skipcycle;
                qis.cycle = 0;
                cboeiscyc.SelectedIndex = GetCycIdxFromCycle(qis.cycle);
                
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                if (chkIr.Checked) dch.useir = 1;
                else dch.useir = 0;

                str = txthfrfreq.Text;
                if (RefreshFrequency(ref str, ref dch.frequency)) txthfrfreq.Text = str;
                
                dch.Interval = SM_Number.atot(txthfrinterval.Text);
                txthfrinterval.Text = SM_Number.GetTimeString(dch.Interval);

                dch.sampletime = SM_Number.atot(txtdchsmpl.Text);
                txtdchsmpl.Text = SM_Number.GetTimeString(dch.sampletime);

                dch.CutoffV = SM_Number.ToDouble(txtMonCutoff.Text);
                txtMonCutoff.Text = SM_Number.ToString(dch.CutoffV, enSM_TypeNumberToString.SIPrefix);
            }
            else
            {
                str = txteisinitfreq.Text;
                if (RefreshFrequency(ref str, ref eis.initfreq)) txteisinitfreq.Text = str;
                str = txteisfinalfreq.Text;
                if (RefreshFrequency(ref str, ref eis.finalfreq)) txteisfinalfreq.Text = str;

                str = txteisdensity.Text;
                if (ushort.TryParse(str, out eis.density)) txteisdensity.Text = eis.density.ToString();

                str = txteisrepeat.Text;
                if (int.TryParse(str, out eis.iteration)) txteisrepeat.Text = eis.density.ToString();

                eis.skipcycle = (ushort)GetCycleFromCycIdx(cboeisskipcyc.SelectedIndex);
                eis.cycle = (ushort)GetCycleFromCycIdx(cboeiscyc.SelectedIndex);
            }

            
            if (techtype == enTechType.TECH_MON)
            {
                mtech.ondelaystable = 0;
                chkondelaystable.Checked = false;
                mtech.ondelay = 2.0;
                mtech.irange = 2;
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                mtech.ondelaystable = 0;
                chkondelaystable.Checked = (mtech.ondelaystable == 1) ? true : false;
                mtech.ondelay = 0.0;
                txtondelay.Text = SM_Number.GetTimeString(mtech.ondelay);
                mtech.irange = (ushort)cboIrange.SelectedIndex;
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                mtech.ondelaystable = 0;
                chkondelaystable.Checked = false;
                mtech.ondelay = 2.0;
                mtech.irange = (ushort)cbomonctrl.SelectedIndex;
            }
            else
            {
                mtech.ondelaystable = (ushort)(chkondelaystable.Checked ? 1 : 0);
                mtech.ondelay = SM_Number.atot(txtondelay.Text);
                txtondelay.Text = SM_Number.GetTimeString(mtech.ondelay);
                mtech.irange = (ushort)cboIrange.SelectedIndex;
            }
        }

        public void ViewTechnique()
        {

            

            if (techtype == enTechType.TECH_HFR)
            {
                chkIr.Visible = false;
                lbldchsmpl.Visible = false;
                txtdchsmpl.Visible = false;

                lblhfrfreq.Visible = true;
                txthfrfreq.Visible = true;

                lblhfrinterval.Visible = true;
                txthfrinterval.Visible = true;

                lblhfrtotaltime.Visible = true;
                txthfrtotaltime.Visible = true;

                cbomonctrl.Visible = false;
                lblctrlrate.Visible = false;

                lblcutoff.Visible = false;
                txtMonCutoff.Visible = false;

                chkhfrcelloffwait.Visible = true;

                txthfrfreq.Text = GetFreqString(ref hfr.freq);
                txthfrinterval.Text = SM_Number.GetTimeString(hfr.interval);
                txthfrtotaltime.Text = SM_Number.GetTimeString(hfr.totaltime);
                chkhfrcelloffwait.Checked = (hfr.celloffwait == 0) ? false : true;
                chkhfrcelloffwait.Text = "Load off at waiting.";

                lblondelay.Visible = true;
                txtondelay.Visible = true;
                chkondelaystable.Visible = true;
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                cbomonctrl.Visible = false;
                lblondelay.Visible = true;
                txtondelay.Visible = true;
                chkondelaystable.Visible = true;

                if (prr.rdendfreq == 0.0)
                {
                    chkrpend.Checked = false;
                    txtprrrpendfreq.ReadOnly = true;
                    prr.rpcalmode = 0;
                    cborpcalc.SelectedIndex = 0;
                    cborpcalc.Visible = false;
                    lblRpCalc.Visible = false;
                }
                else
                {
                    chkrpend.Checked = true;
                    txtprrrpendfreq.ReadOnly = false;
                    lblRpCalc.Visible = true;
                    cborpcalc.Visible = true;

                    cborpcalc.SelectedIndex = prr.rpcalmode;
                }
                

                txtprrrsfreq.Text = GetFreqString(ref prr.rsfreq);
                txtprrrpfreq.Text = GetFreqString(ref prr.rdfreq);
                
                txtprrrpendfreq.Text = GetFreqString(ref prr.rdendfreq);


                txtprrinterval.Text = SM_Number.GetTimeString(prr.interval);
                txtprrtotaltime.Text = SM_Number.GetTimeString(prr.totaltime);
                chkprrcelloffwait.Checked = (prr.celloffwait == 0) ? false : true;
                
            }
            else if (techtype == enTechType.TECH_MON)
            {
                chkIr.Visible = false;
                lbldchsmpl.Visible = true;
                txtdchsmpl.Visible = true;

                lblhfrinterval.Visible = false;
                txthfrinterval.Visible = false;
                txthfrinterval.Text = "0";
     
                lblhfrtotaltime.Visible = true;
                txthfrtotaltime.Visible = true;
                
                chkhfrcelloffwait.Visible = false;
                cbomonctrl.Visible = false;

                lblctrlrate.Visible = false;
                

                lblcutoff.Visible = false;
                txtMonCutoff.Visible = false;

                lblondelay.Visible = false;
                txtondelay.Visible = false;
                chkondelaystable.Visible = false;

                lblhfrfreq.Visible = false;
                txthfrfreq.Visible = false;
                txthfrinterval.Visible = false;

                mtech.ondelay = 2.0;
                mtech.ondelaystable = 0;

                txtdchsmpl.Text = SM_Number.GetTimeString(mon.sampletime);
                txthfrtotaltime.Text = SM_Number.GetTimeString(mon.totaltime);
                txthfrfreq.Text = "0";
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                lbleisdensity.Visible = false;
                txteisdensity.Visible = false;
                lbleisiteration.Visible = false;
                txteisrepeat.Visible = false;
                lbleisskipcycle.Visible = false;
                cboeisskipcyc.Visible = false;
                lbleiscycle.Visible = false;
                cboeiscyc.Visible = false;
                cbomonctrl.Visible = false;
                lblondelay.Visible = false;
                txtondelay.Visible = false;
                chkondelaystable.Visible = false;

                mtech.ondelay = 0.0;
                mtech.ondelaystable = 0;
                qis.density = 4;
                qis.iteration = 1;
                qis.skipcycle = 0;
                qis.cycle = 0;

                txteisinitfreq.Text = GetFreqString(ref qis.initfreq);
                txteisfinalfreq.Text = GetFreqString(ref qis.finalfreq);

                
                txteisdensity.Text = qis.density.ToString();
                
                txteisrepeat.Text = qis.iteration.ToString();

                
                cboeisskipcyc.SelectedIndex = qis.skipcycle;
                
                cboeiscyc.SelectedIndex = GetCycIdxFromCycle(qis.cycle);
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                chkIr.Visible = true;
                lbldchsmpl.Visible = true;
                txtdchsmpl.Visible = true;

                lblhfrtotaltime.Visible = false;
                txthfrtotaltime.Visible = false;

                chkhfrcelloffwait.Visible = false;

                cbomonctrl.Visible = true;

                lblctrlrate.Visible = true;

                lblcutoff.Visible = true;
                txtMonCutoff.Visible = true;

                mtech.ondelay = 0.0;
                mtech.ondelaystable = 0;

                lblondelay.Visible = false;
                txtondelay.Visible = false;
                chkondelaystable.Visible = false;

                if (dch.useir == 0)
                {
                    lblhfrinterval.Visible = false;
                    txthfrinterval.Visible = false;
                    lblhfrfreq.Visible = false;
                    txthfrfreq.Visible = false;
                }
                else
                {
                    lblhfrinterval.Visible = true;
                    txthfrinterval.Visible = true;
                    lblhfrfreq.Visible = true;
                    txthfrfreq.Visible = true;
                }

                if(dch.useir == 0) chkIr.Checked = false;
                else chkIr.Checked = true;
                
                txtdchsmpl.Text = SM_Number.GetTimeString(dch.sampletime);

                txtMonCutoff.Text = string.Format(" {0,4:##0.0}", dch.CutoffV);
                txthfrfreq.Text = GetFreqString(ref dch.frequency);
                txthfrinterval.Text = SM_Number.GetTimeString(dch.Interval);

            }
            else
            {
                lbleisdensity.Visible = true;
                txteisdensity.Visible = true;
                lbleisiteration.Visible = true;
                txteisrepeat.Visible = true;
                lbleisskipcycle.Visible = true;
                cboeisskipcyc.Visible = true;
                lbleiscycle.Visible = true;
                cboeiscyc.Visible = true;
                cbomonctrl.Visible = false;
                lblondelay.Visible = true;
                txtondelay.Visible = true;
                chkondelaystable.Visible = true;

                txteisinitfreq.Text = GetFreqString(ref eis.initfreq);
                txteisfinalfreq.Text = GetFreqString(ref eis.finalfreq);

                txteisdensity.Text = eis.density.ToString();
                txteisrepeat.Text = eis.iteration.ToString();
                
                if (eis.skipcycle > 10) eis.skipcycle = 10;
                if (eis.skipcycle < 0) eis.skipcycle = 0;
                if (eis.cycle > 128) eis.cycle = 128;
                if (eis.cycle < 0) eis.cycle = 0;

                cboeisskipcyc.SelectedIndex = eis.skipcycle;
                cboeiscyc.SelectedIndex = GetCycIdxFromCycle(eis.cycle);

                
            }
            if (techtype == enTechType.TECH_MON || techtype == enTechType.TECH_DCH)
            {
                lbliRange.Visible = false;
                cboIrange.Visible = false;
            }
            else
            {
                lbliRange.Visible = true;
                cboIrange.Visible = true;
            }
            cboIrange.SelectedIndex = (int)mtech.irange;
            cbomonctrl.SelectedIndex = (int)mtech.irange;

            txtondelay.Text = SM_Number.GetTimeString(mtech.ondelay);
            chkondelaystable.Checked = (mtech.ondelaystable == 0) ? false : true;

            txtbattid.Text = Encoding.UTF8.GetString(mtech.info.batid).Trim('\0');
            txtcapa.Text = string.Format("{0:0.0##}", mtech.info.Capa);
            txtcreator.Text = Encoding.UTF8.GetString(mtech.info.creator).Trim('\0');
        }

        public int GetCycIdxFromCycle(int cycle)
        {
            if (cycle == 0) return 0;
            if (cycle == 1) return 1;
            if (cycle > 1 && cycle <= 9) return cycle-1;
            if (cycle <= 100) return 9 + (cycle/10);
            return 20; // 128
        }

        public int GetCycleFromCycIdx(int index)
        {
            if (index == 0) return 0;
            if (index > 0  && index <= 9) return index+1;
            if (index > 9 && index <= 100) return (index - 9) * 10;
            return 128;
        }
        public string GetFreqString(ref double freq)
        {
            if (freq > DeviceConstants.MAX_EIS_FREQUENCY) freq = DeviceConstants.MAX_EIS_FREQUENCY;
            if (freq != 0.0 && freq < DeviceConstants.MIN_EIS_FREQUENCY) freq = DeviceConstants.MIN_EIS_FREQUENCY;

            return string.Format("{0:#0.###}", freq);
        }

        public bool RefreshFrequency(ref string sval, ref double freq)
        {
            double val;

            if (string.IsNullOrWhiteSpace(sval))
            {
                return false;
            }

            if (double.TryParse(sval, out val))
            {
                freq = val;
            }
            else
            {
                return false;
            }

            if (freq > DeviceConstants.MAX_EIS_FREQUENCY)
                freq = DeviceConstants.MAX_EIS_FREQUENCY;
            if (freq < DeviceConstants.MIN_EIS_FREQUENCY)
                freq = DeviceConstants.MIN_EIS_FREQUENCY;

            sval = string.Format("{0:#0.###}", freq);

            return true;
        }

        private void frmTechniq_FormClosed(object sender, FormClosedEventArgs e)
        {
            CloseThis?.Invoke(this, e);
        }

        private void cboIrange_SelectedIndexChanged(object sender, EventArgs e)
        {
            mtech.irange = (ushort)cboIrange.SelectedIndex;
        }

        private void txtbattid_Leave(object sender, EventArgs e)
        {
            byte[] arr = Encoding.UTF8.GetBytes(txtbattid.Text);
            int len = arr.Count();
            if (len > DeviceConstants.BATIDSIZE) len = DeviceConstants.BATIDSIZE;
            Array.Copy(arr, mtech.info.batid, len);
        }

        private void txtcapa_Leave(object sender, EventArgs e)
        {
            try
            {
                mtech.info.Capa = SM_Number.ToDouble(txtcapa.Text);
                txtcapa.Text = SM_Number.ToString(mtech.info.Capa,enSM_TypeNumberToString.SIPrefix,5);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txtcapa.Text = string.Format("{0:0.0##}", mtech.info.Capa);
            }
        }

        private void txtcreator_Leave(object sender, EventArgs e)
        {
            byte[] arr = Encoding.UTF8.GetBytes(txtcreator.Text);
            int len = arr.Count();
            if (len > DeviceConstants.USERSIZE) len = DeviceConstants.USERSIZE;
            Array.Copy(arr, mtech.info.creator, len);
        }

        private void txteisinitfreq_Leave(object sender, EventArgs e)
        {
            
            try
            {
                string str = txteisinitfreq.Text;

                if (techtype == enTechType.TECH_EIS)
                {
                    if (RefreshFrequency(ref str, ref eis.initfreq)) txteisinitfreq.Text = GetFreqString(ref eis.initfreq);
                }
                else if (techtype == enTechType.TECH_QIS)
                {
                    if (RefreshFrequency(ref str, ref qis.initfreq)) txteisinitfreq.Text = GetFreqString(ref qis.initfreq);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txteisinitfreq.Text = GetFreqString(ref eis.initfreq);
            }
        }

        private void txteisfinalfreq_Leave(object sender, EventArgs e)
        {
            try
            {
                string str = txteisfinalfreq.Text;
                if (techtype == enTechType.TECH_EIS)
                {
                    if (RefreshFrequency(ref str, ref eis.finalfreq)) txteisfinalfreq.Text = GetFreqString(ref eis.finalfreq);
                }
                else if (techtype == enTechType.TECH_QIS)
                {
                    if (RefreshFrequency(ref str, ref qis.finalfreq)) txteisfinalfreq.Text = GetFreqString(ref qis.finalfreq);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txteisfinalfreq.Text = GetFreqString(ref eis.finalfreq);
            }
        }

        private void txteisdensity_Leave(object sender, EventArgs e)
        {
            try
            {
                string str;
                str = txteisdensity.Text;
                if (ushort.TryParse(str,out eis.density)) txteisdensity.Text = eis.density.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txteisdensity.Text = eis.density.ToString();
            }
        }

        private void txteisrepeat_Leave(object sender, EventArgs e)
        {
            try
            {
                string str;
                str = txteisrepeat.Text;
                if (int.TryParse(str, out eis.iteration)) txteisrepeat.Text = eis.iteration.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txteisrepeat.Text = eis.iteration.ToString();
            }
        }

        private void txthfrfreq_Leave(object sender, EventArgs e)
        {
            try
            {
                string str = txthfrfreq.Text;
                if (techtype == enTechType.TECH_HFR)
                {
                    if (RefreshFrequency(ref str, ref hfr.freq))
                    {
                        txthfrfreq.Text = str;
                    }
                }
                else if (techtype == enTechType.TECH_DCH)
                {
                    if (RefreshFrequency(ref str, ref dch.frequency))
                    {
                        txthfrfreq.Text = str;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txthfrfreq.Text = GetFreqString(ref hfr.freq);
            }
        }

        private int GetWillSampleCount()
        {
            int count = 0;
            double tmp;
            if (techtype == enTechType.TECH_HFR)
            {
                count = (int)(hfr.totaltime / hfr.interval);
            }
            else if (techtype == enTechType.TECH_MON)
            {
                count = (int)(mon.totaltime / mon.sampletime);
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                tmp = 3.0;
                if (prr.rdendfreq == 0.0)
                {
                    tmp = 2.0;
                }
                count = (int)(prr.totaltime / (prr.interval * tmp));
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                count = qis.GetFreqCount();
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                //count = (int)(dch.totaltime / dch.sampletime);
            }
            else
            {
                count = eis.GetFreqCount();
            }
            return count;
        }

        private void txthfrinterval_Leave(object sender, EventArgs e)
        {
            double tmp = SM_Number.atot(txthfrinterval.Text);
            

            if (techtype == enTechType.TECH_HFR)
            {
                if (tmp < MBZA_Constant.MIN_INTERVALTIME)
                {
                    MessageBox.Show(string.Format("The minimum value for the interval time setting is {0}second.", MBZA_Constant.MIN_INTERVALTIME), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    tmp = MBZA_Constant.MIN_INTERVALTIME;
                }
                
                hfr.interval = tmp;
                txthfrinterval.Text = SM_Number.GetTimeString(hfr.interval);
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                if (tmp < MBZA_Constant.MIN_INTERVALTIME)
                {
                    MessageBox.Show(string.Format("The minimum value for the interval time setting is {0}second.", MBZA_Constant.MIN_INTERVALTIME), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    tmp = MBZA_Constant.MIN_INTERVALTIME;
                }
                
                dch.Interval = tmp;
                txthfrinterval.Text = SM_Number.GetTimeString(dch.Interval);
            }
        }

        private void txthfrtotaltime_Leave(object sender, EventArgs e)
        {
            if (techtype == enTechType.TECH_HFR)
            {
                hfr.totaltime = SM_Number.atot(txthfrtotaltime.Text);
                if (hfr.totaltime < MBZA_Constant.MIN_TOTALTIME)
                {
                    MessageBox.Show(string.Format("The minimum value for the total time setting is {0}second.", MBZA_Constant.MIN_TOTALTIME), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    hfr.totaltime = MBZA_Constant.MIN_TOTALTIME;
                }
                txthfrtotaltime.Text = SM_Number.GetTimeString(hfr.totaltime);
            }
            else if (techtype == enTechType.TECH_MON)
            {
                mon.totaltime = SM_Number.atot(txthfrtotaltime.Text);
                if (mon.totaltime < MBZA_Constant.MIN_TOTALTIME)
                {
                    MessageBox.Show(string.Format("The minimum value for the total time setting is {0}second.", MBZA_Constant.MIN_TOTALTIME), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    mon.totaltime = MBZA_Constant.MIN_TOTALTIME;
                }
                txthfrtotaltime.Text = SM_Number.GetTimeString(mon.totaltime);
            }
          
        }

        private void txtprrrsfreq_Leave(object sender, EventArgs e)
        {
            try
            {
                string str = txtprrrsfreq.Text;
                if(RefreshFrequency(ref str, ref prr.rsfreq))  txtprrrsfreq.Text = str;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txtprrrsfreq.Text = GetFreqString(ref prr.rsfreq);
            }
        }

        private void txtprrrpfreq_Leave(object sender, EventArgs e)
        {
            try
            {
                string str = txtprrrpfreq.Text;
                if(RefreshFrequency(ref str, ref prr.rdfreq))  txtprrrpfreq.Text = str;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txtprrrpfreq.Text = GetFreqString(ref prr.rdfreq);
            }
        }

        private void txtprrrpendfreq_Leave(object sender, EventArgs e)
        {
            try
            {
                string str = txtprrrpendfreq.Text;
                if(RefreshFrequency(ref str, ref prr.rdendfreq)) txtprrrpendfreq.Text = str;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txtprrrpendfreq.Text = GetFreqString(ref prr.rdendfreq);
            }
        }

        private void txtprrinterval_Leave(object sender, EventArgs e)
        {
            prr.interval = SM_Number.atot(txtprrinterval.Text);
            if (prr.interval < MBZA_Constant.MIN_INTERVALTIME)
            {
                MessageBox.Show(string.Format("The minimum value for the interval time setting is {0}second.", MBZA_Constant.MIN_INTERVALTIME), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                prr.interval = MBZA_Constant.MIN_INTERVALTIME;
            }
            txtprrinterval.Text = SM_Number.GetTimeString(prr.interval);
        }

        private void txtprrtotaltime_Leave(object sender, EventArgs e)
        {
            prr.totaltime = SM_Number.atot(txtprrtotaltime.Text);
            if (prr.totaltime < MBZA_Constant.MIN_TOTALTIME)
            {
                MessageBox.Show(string.Format("The minimum value for the total time setting is {0}second.", MBZA_Constant.MIN_TOTALTIME), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                prr.totaltime = MBZA_Constant.MIN_TOTALTIME;
            }
            txtprrtotaltime.Text = SM_Number.GetTimeString(prr.totaltime);
        }

        private void tbbtech_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void btopen_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Multiselect = false;
            

            if (techtype == enTechType.TECH_HFR)
            {
                dlg.Filter = "Galvanostatic HFR (*.hfr) |*.hfr";
                dlg.Title = "Open Galvanostatic HFR technique file.";
                dlg.DefaultExt = "hfr";
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                dlg.Filter = "Pseudo Rs Rp (*.prr) |*.prr";
                dlg.Title = "Open Pseudo Rs Rp technique file.";
                dlg.DefaultExt = "prr";
            }
            else if (techtype == enTechType.TECH_MON)
            {
                dlg.Filter = "Eoc/Temp. monitor (*.vtm) |*.vtm";
                dlg.Title = "Open Eoc/Temperature monitor technique file.";
                dlg.DefaultExt = "vtm";
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                dlg.Filter = "Quick galvanostatic EIS (*.qis) |*.qis";
                dlg.Title = "Open Quick galvanostatic EIS technique file.";
                dlg.DefaultExt = "qis";
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                dlg.Filter = "Discharge test(*.dch) |*.dch";
                dlg.Title = "Open Discharge test technique file.";
                dlg.DefaultExt = "vtm";
            }
            else
            {
                dlg.Filter = "Galvanostatic EIS (*.eis) |*.eis";
                dlg.Title = "Open Galvanostatic EIS technique file.";
                dlg.DefaultExt = "eis";
                dlg.FilterIndex = 1;
            }

            if (bopen == false)
            {
                dlg.InitialDirectory = gBZA.appcfg.PathSch;
                dlg.FileName = "";
            }
            else
            {
                dlg.InitialDirectory = Path.GetDirectoryName(filefullpath);
                dlg.FileName = Path.GetFileName(filefullpath);
            }
            
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                if(Openfile(dlg.FileName) == false)
                {
                    MessageBox.Show("Unsupported file format.\r\n Please check the file.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void SetTabpagesitem()
        {
            if (techtype == enTechType.TECH_HFR)
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == true) this.tabtech.TabPages.Remove(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == false) this.tabtech.TabPages.Add(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == true) this.tabtech.TabPages.Remove(this.tabtech3);
                this.tabtech2.Text = "Galvanostatic HFR";
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == true) this.tabtech.TabPages.Remove(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == true) this.tabtech.TabPages.Remove(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == false) this.tabtech.TabPages.Add(this.tabtech3);
                this.tabtech3.Text = "Rs Pseudo Rp";
            }
            else if (techtype == enTechType.TECH_MON)
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == true) this.tabtech.TabPages.Remove(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == false) this.tabtech.TabPages.Add(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == true) this.tabtech.TabPages.Remove(this.tabtech3);
                this.tabtech2.Text = "Eoc/Temperature monitor";
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == false) this.tabtech.TabPages.Add(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == true) this.tabtech.TabPages.Remove(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == true) this.tabtech.TabPages.Remove(this.tabtech3);
                this.tabtech1.Text = "Quick galvanostatic EIS";
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == true) this.tabtech.TabPages.Remove(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == false) this.tabtech.TabPages.Add(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == true) this.tabtech.TabPages.Remove(this.tabtech3);
                this.tabtech2.Text = "Discharge test";
            }
            else 
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == false) this.tabtech.TabPages.Add(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == true) this.tabtech.TabPages.Remove(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == true) this.tabtech.TabPages.Remove(this.tabtech3);
                this.tabtech1.Text = "Galvanostatic EIS";
            }
        }

        

        private bool Save()
        {
            
            if (bopen == true && File.Exists(filefullpath) == true)
            {
                string smsg;

                string str = CheckCanSave(filefullpath);
                string str1;
                if (str.Length > 1)
                {
                    str1 = str.Substring(0, str.Length - 1);
                    smsg = string.Format("The following channels are experimenting with this technique file. \r\n  * Channels : {0}", str1);
                    MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
                enTechType techtype = (enTechType)mtech.type;

                FileCondition fc = new FileCondition();
                if (techtype == enTechType.TECH_HFR)
                {
                    mtech.SetHFR(hfr);
                }
                else if (techtype == enTechType.TECH_PRR)
                {
                    mtech.SetPRR(prr);
                }
                else if (techtype == enTechType.TECH_MON)
                {
                    mtech.SetMON(mon);
                }
                else if (techtype == enTechType.TECH_QIS)
                {
                    mtech.SetQIS(qis);
                }
                else if (techtype == enTechType.TECH_DCH)
                {
                    mtech.SetDCH(dch);
                }
                else
                {
                    mtech.SetEIS(eis);
                }
                return fc.Save(filefullpath, mtech);
            }
            else
            {
                return SaveAs();
            }
        }

        private string GetFixedFilename(string sfile, int max)
        {
            if (sfile.Length <= max)
            {
                return sfile;
            }
            int div = (max - 6) / 2;
            return string.Format("{0}......{1}", sfile.Substring(0, div), sfile.Substring(sfile.Length - div, div));
        }
        private bool SaveAs()
        {

            SaveFileDialog saveDlg = new SaveFileDialog();
            

            if (techtype == enTechType.TECH_HFR)
            {
                saveDlg.Title = "Save as Galvanostatic HFR technique file.";
                saveDlg.DefaultExt = "*.hfr";
                saveDlg.Filter = "Galvanostatic HFR (*.hfr) |*.hfr";
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                saveDlg.Title = "Save as Pseudo Rs Rp mearsurement technique file.";
                saveDlg.DefaultExt = "*.prr";
                saveDlg.Filter = "Pseudo Rs Rp mearsurement(*.prr) | *.prr";
            }
            else if (techtype == enTechType.TECH_MON)
            {
                saveDlg.Title = "Save as Voltage/Temperature monitor technique file.";
                saveDlg.DefaultExt = "*.vtm";
                saveDlg.Filter = "V/T monitor(*.vtm) | *.vtm";
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                saveDlg.Title = "Save as Quick galvanostatic EIS technique file.";
                saveDlg.DefaultExt = "*.qis";
                saveDlg.Filter = "Quick galvanostatic EIS (*.qis) | *.qis";
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                saveDlg.Title = "Save as Discharge test technique file.";
                saveDlg.DefaultExt = "*.dch";
                saveDlg.Filter = "Discharge test(*.dch) | *.dch";
            }
            else
            {
                saveDlg.Title = "Saving Galvanostatic EIS technique file.";
                saveDlg.DefaultExt = "*.eis";
                saveDlg.Filter = "Galvanostatic EIS (*.eis) | *.eis";
            }
            saveDlg.OverwritePrompt = false;
            if (bopen == true)
            {
                saveDlg.InitialDirectory = Path.GetDirectoryName(filefullpath);
                saveDlg.FileName = Path.GetFileName(filefullpath);
            }
            else
            {
                saveDlg.InitialDirectory = gBZA.appcfg.PathSch;
                saveDlg.FileName = Path.GetFileName(GetDefaultname());
            }

            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return false;
            }
            filefullpath = saveDlg.FileName;
            string smsg;
            string str = CheckCanSave(filefullpath);

            if (str.Length > 0)
            {
                smsg = string.Format("The following channels are experimenting with this technique file. \r\n Channels : {0}", str);
                MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }


            gBZA.appcfg.PathSch = Path.GetDirectoryName(saveDlg.FileName);
            gBZA.appcfg.Save();

            filefullpath = saveDlg.FileName;
            filename = Path.GetFileName(filefullpath);


            FileCondition fc = new FileCondition();

            if (techtype == enTechType.TECH_HFR)
            {
                mtech.SetHFR(hfr);
            }
            else if (techtype == enTechType.TECH_PRR)
            {
                mtech.SetPRR(prr);
            }
            else if (techtype == enTechType.TECH_MON)
            {
                mtech.SetMON(mon);
            }
            else if (techtype == enTechType.TECH_QIS)
            {
                mtech.SetQIS(qis);
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                mtech.SetDCH(dch);
            }
            else
            {
                mtech.SetEIS(eis);
            }

            if(fc.Save(filefullpath, mtech) == false)
            {
                return false;
            }
            
            this.Text = string.Format("{0}", GetFixedFilename(filename, 60));
            bopen = true;
            return true;
        }

        private void btsave_Click(object sender, EventArgs e)
        {
            
            if(GetWillSampleCount() > MBZA_Constant.MAX_DATA_CNT)
            {
                string smsg = string.Format("The current setting exceeds the maximum number of storable experimental data {0}. \r\nPlease check your settings and try again.", MBZA_Constant.MAX_DATA_CNT);
                MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            Save();
        }

        private void btsaveas_Click(object sender, EventArgs e)
        {
            if (GetWillSampleCount() > MBZA_Constant.MAX_DATA_CNT)
            {
                string smsg = string.Format("The current setting exceeds the maximum number of storable experimental data {0}. \r\nPlease check your settings and try again.", MBZA_Constant.MAX_DATA_CNT);
                MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            SaveAs();
        }

        private string CheckCanSave(string chkfile)
        {
            string str = "";
            foreach (var pair in gBZA.ChLnkLst)
            {
                if (gBZA.SifLnkLst.ContainsKey(pair.Value.sSerial) == false) continue;
                if (chkfile == gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.condfilename[pair.Value.SifCh])
                {
                    if (gBZA.CheckStatusRun(gBZA.SifLnkLst[pair.Value.sSerial].MBZAIF.mChStatInf[pair.Value.SifCh]))
                    {
                        str += string.Format("{0},", Convert.ToInt32(pair.Key) + 1);
                    }
                }
            }
            return str;
        }
        private void btapply_Click(object sender, EventArgs e)
        {
            if (GetWillSampleCount() > MBZA_Constant.MAX_DATA_CNT)
            {
                string smsg = string.Format("The current setting exceeds the maximum number of storable experimental data {0}. \r\nPlease check your settings and try again.", MBZA_Constant.MAX_DATA_CNT);
                MessageBox.Show(smsg, gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (Save() == false)
            {
                return;
            }

            frmTechApply frm = new frmTechApply(filefullpath);
            
            frm.ShowDialog();
        }

        private void btclose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtondelay_Leave(object sender, EventArgs e)
        {
            mtech.ondelay = SM_Number.atot(txtondelay.Text);
            txtondelay.Text = SM_Number.GetTimeString(mtech.ondelay);
        }

        private void chkondelaystable_CheckedChanged(object sender, EventArgs e)
        {
            mtech.ondelaystable = (ushort)(chkondelaystable.Checked ? 1 : 0);
        }

        private void chkhfrcelloffwait_CheckedChanged(object sender, EventArgs e)
        {
            hfr.celloffwait = (ushort)(chkhfrcelloffwait.Checked ? 1 : 0);
        }

        private void chkprrcelloffwait_CheckedChanged(object sender, EventArgs e)
        {
            prr.celloffwait = (ushort)(chkprrcelloffwait.Checked ? 1 : 0);
        }

        private void frmTechniq_LocationChanged(object sender, EventArgs e)
        {
            if (bClose) return;
            if (this.WindowState != FormWindowState.Normal) return;
            Point pt = this.Location;
            gBZA.appcfg.TechLocation = pt;
            gBZA.appcfg.Save();
        }

        private void frmTechniq_SizeChanged(object sender, EventArgs e)
        {
            
        }

        private void chkrpend_CheckedChanged(object sender, EventArgs e)
        {
            if (chkrpend.Checked == true)
            {
                /*if (txtprrrpendfreq.ReadOnly == true)
                {
                    prr.rdendfreq = prr.rdfreq;
                }
                */
                txtprrrpendfreq.ReadOnly = false;
                lblRpCalc.Visible = true;
                cborpcalc.Visible = true;
            }
            else
            {
                txtprrrpendfreq.ReadOnly = true;
                prr.rdendfreq = 0.0;
                prr.rpcalmode = 0;
                cborpcalc.SelectedIndex = 0;
                lblRpCalc.Visible = false;
                cborpcalc.Visible = false;
            }
            txtprrrpendfreq.Text = GetFreqString(ref prr.rdendfreq);
        }

        private void frmTechniq_FormClosing(object sender, FormClosingEventArgs e)
        {
            bClose = true;
            
        }

        private void techtree_NodeMouseClick(object sender, TreeNodeMouseClickEventArgs e)
        {
            int ttech;
            if(int.TryParse(e.Node.Name,out ttech) == false)
            {
                return;
            }
            RefreshView((enTechType)ttech, true);
        }
        
        private void txtMonCutoff_Leave(object sender, EventArgs e)
        {
            double tval = 0.0;
            if (techtype == enTechType.TECH_DCH)
            {
                if (double.TryParse(txtMonCutoff.Text, out tval) == true)
                {
                    dch.CutoffV = tval;
                }
                else
                {
                    MessageBox.Show("There is a problem with the input of the value. \r\n Please check and try again.", gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                txtMonCutoff.Text = string.Format(" {0,4:##0.0}", dch.CutoffV);
            }
        }

        private void cbomonctrl_SelectedIndexChanged(object sender, EventArgs e)
        {
            mtech.irange = (ushort)cbomonctrl.SelectedIndex;
        }

        private void cboeisskipcyc_SelectedIndexChanged(object sender, EventArgs e)
        {
            eis.skipcycle = (ushort)GetCycleFromCycIdx(cboeisskipcyc.SelectedIndex);
            
        }

        private void cboeiscyc_SelectedIndexChanged(object sender, EventArgs e)
        {
            eis.cycle = (ushort)GetCycleFromCycIdx(cboeiscyc.SelectedIndex);
        }

        private void cborpcalc_SelectedIndexChanged(object sender, EventArgs e)
        {
            prr.rpcalmode = (ushort)cborpcalc.SelectedIndex;
        }

        private void chkIr_CheckedChanged(object sender, EventArgs e)
        {
            if (techtype == enTechType.TECH_DCH)
            {
                if (chkIr.Checked == false)
                {
                    dch.useir = 0;
                    lblhfrinterval.Visible = false;
                    txthfrinterval.Visible = false;
                    lblhfrfreq.Visible = false;
                    txthfrfreq.Visible = false;
                }
                else
                {
                    dch.useir = 1;
                    lblhfrinterval.Visible = true;
                    txthfrinterval.Visible = true;
                    lblhfrfreq.Visible = true;
                    txthfrfreq.Visible = true;
                }
            }
        }

        private void txtdchsmpl_Leave(object sender, EventArgs e)
        {
            double tmp = SM_Number.atot(txtdchsmpl.Text);
            if (techtype == enTechType.TECH_MON)
            {
                if (tmp < MBZA_Constant.MIN_SAMPLETIME)
                {
                    MessageBox.Show(string.Format("The minimum value for the sampling time setting is {0}second.", MBZA_Constant.MIN_SAMPLETIME), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    tmp = MBZA_Constant.MIN_SAMPLETIME;
                }

                mon.sampletime = tmp;
                txtdchsmpl.Text = SM_Number.GetTimeString(mon.sampletime);
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                if (tmp < MBZA_Constant.MIN_SAMPLETIME)
                {
                    MessageBox.Show(string.Format("The minimum value for the sampling time setting is {0}second.", MBZA_Constant.MIN_SAMPLETIME), gBZA.sMsgTitle, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    tmp = MBZA_Constant.MIN_SAMPLETIME;
                }


                dch.sampletime = tmp;
                txtdchsmpl.Text = SM_Number.GetTimeString(dch.sampletime);
            }
        }

        private void txthfrtotaltime_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
