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
        public int OpenType;
        public eZimType zimtype;
        public event EventHandler CloseThis;
        public stTech mtech;
        public stTech_EIS eis;
        public stTech_HFR hfr;
        public stTech_PRR prr;

        public bool bopen;
        public string filename;

        public frmTechniq(int tch, string sfile = "", eZimType type = eZimType.UNKNOWN)
        {

            
            InitializeComponent();
            mtech = new stTech(0);
        

            eis = new stTech_EIS(0);
            hfr = new stTech_HFR(0);
            prr = new stTech_PRR(0);

            OpenType = -1;
            bopen = false;
            this.Icon = gBZA.BitmapToIcon(Properties.Resources.TestSettings);
            ch = tch;
            string sch = ch.ToString();

            cboIrange.Items.Clear();

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
                cboIrange.Items.Add("Auto");
                for (int i = 0; i < DeviceConstants.MAX_IAC_RNGCNT; i++)
                {
                    cboIrange.Items.Add(SM_Number.ToRangeString(zim.ranges.iac_rng[i].realmax, "A"));
                    cboIrange.Items.Add(SM_Number.ToRangeString(zim.ranges.iac_rng[i].realmax * zim.ranges.iac_rng[i].controlgain, "A"));
                }
            }

            filename = sfile;
            if (File.Exists(filename))
            {
                Openfile(filename);
            }
            else
            {
                this.Text = string.Format("Technique[{0}].", GetFixedFilename("New", 60));
            }
            
        }

        public void ViewTechnique()
        {
            tabtech.SelectedIndex = mtech.type;
            cboIrange.SelectedIndex = mtech.irange;

            txtondelay.Text = GetTimeString(mtech.ondelay);
            chkondelaystable.Checked = (mtech.ondelaystable == 0) ? false : true;

            txtbattid.Text = Encoding.UTF8.GetString(mtech.info.batid).Trim('\0');
            txtcapa.Text = string.Format("{0:0.0##}", mtech.info.Capa);
            txtcreator.Text = Encoding.UTF8.GetString(mtech.info.creator).Trim('\0');


            txthfrfreq.Text = GetFreqString(ref hfr.freq);
            txthfrinterval.Text = GetTimeString(hfr.interval);
            txthfrtotaltime.Text = GetTimeString(hfr.totaltime);
            chkhfrcelloffwait.Checked = (hfr.celloffwait == 0) ? false : true;


            txtprrrsfreq.Text = GetFreqString(ref prr.rsfreq);
            txtprrrpfreq.Text = GetFreqString(ref prr.rdfreq);
            if (prr.rdendfreq == 0.0)
            {
                chkrpend.Checked = false;
                txtprrrpendfreq.ReadOnly = true;
            }
            else
            {
                chkrpend.Checked = true;
                txtprrrpendfreq.ReadOnly = false;
            }
            txtprrrpendfreq.Text = GetFreqString(ref prr.rdendfreq);
            

            txtprrinterval.Text = GetTimeString(prr.interval);
            txtprrtotaltime.Text = GetTimeString(prr.totaltime);
            chkprrcelloffwait.Checked = (prr.celloffwait == 0) ? false : true;

            txteisinitfreq.Text = GetFreqString(ref eis.initfreq);
            txteisfinalfreq.Text = GetFreqString(ref eis.finalfreq);
            txteisdensity.Text = eis.density.ToString();
            txteisrepeat.Text = eis.iteration.ToString();


        }

        public string GetFreqString(ref double freq)
        {
            if (freq > DeviceConstants.MAX_EIS_FREQUENCY) freq = DeviceConstants.MAX_EIS_FREQUENCY;
            if (freq != 0.0 && freq < DeviceConstants.MIN_EIS_FREQUENCY) freq = DeviceConstants.MIN_EIS_FREQUENCY;

            return string.Format("{0:#0.###}", freq);
        }

        public double SM_atof(string sval)
        {
            string stime = sval.Trim();
            int nLen = stime.Length;
            string str = "";
            string str1 = "";
            double dTemp;
            double dTemp1;
            for (int i = 0; i < nLen; i++)
            {
                str1 = stime.Substring(i, 1);
                switch (str1)
                {
                    case "e":
                    case "0":
                    case "1":
                    case "2":
                    case "3":
                    case "4":
                    case "5":
                    case "6":
                    case "7":
                    case "8":
                    case "9":
                    case "+":
                    case "-":
                    case "E":
                    case ".":
                        break;
                    default:
                        str1 = "";
                        break;
                }
                str += str1;
            }
            dTemp = Convert.ToDouble(str);
            dTemp1 = 1.0f;

            str1 = stime.Substring(nLen - 1, 1);
            switch (str1)
            {
                case "T": dTemp1 = 1e12; break;
                case "G": dTemp1 = 1e9; break;
                case "M": dTemp1 = 1e6; break;
                case "K": dTemp1 = 1e3; break;
                case "k": dTemp1 = 1e3; break;
                case "m": dTemp1 = 1e-3; break;
                case "u": dTemp1 = 1e-6; break;
                case "n": dTemp1 = 1e-9; break;
                case "p": dTemp1 = 1e-12; break;
                case "f": dTemp1 = 1e-15; break;
                case "a": dTemp1 = 1e-18; break;
            }
            dTemp *= dTemp1;
            return dTemp;
        }

        int searchnumber(int startindex, string sval)
        {
            char[] chars = new char[sval.Length];
            chars = sval.ToCharArray();

            int i = startindex;

            while (true)
            {
                if (i >= sval.Length)
                {
                    break;
                }

                if (chars[i] == 0)
                {
                    return i;
                }
                if (char.IsDigit(chars[i]))
                {
                    return i;
                }
                i++;
            }
            return -1;
        }

        double atot(string buffer)		// Ascii to Time
        {
            double[] itemvalue = new double[3];
            int itemcount, currentvalue;
            double dotvalue;
            double timevalue, multiplevalue;
            string stime = buffer.Trim();
            int pos = 0;
            if (stime.IndexOf('e') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('E') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('T') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('G') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('M') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('K') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('k') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('m') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('u') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('n') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('p') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('f') >= 0)
            {
                return SM_atof(buffer);
            }
            if (stime.IndexOf('a') >= 0)
            {
                return SM_atof(buffer);
            }

            char[] chars = stime.ToCharArray();
            char schar = (char)0;
            itemvalue[0] = itemvalue[1] = itemvalue[2] = 0.0;
            currentvalue = 0;
            itemcount = 0;
            pos = 0;

            for (itemcount = 0; itemcount < 3; itemcount++)
            {
                dotvalue = 0.0;

                pos = searchnumber(pos, stime);
                if(pos < 0 || pos >= stime.Length)
                {
                    break;
                }

                schar = chars[pos];
                pos++;
                if (schar == (char)0)
                {
                    break;
                }

                while (true)
                {
                    currentvalue *= 10;
                    currentvalue += (schar - 0x30);
                    dotvalue *= 10;
                    if(pos >= stime.Length)
                    {
                        break;
                    }
                    while (true)
                    {
                        schar = chars[pos];
                        if (schar == '.')
                        {
                            dotvalue = 1;
                            pos++;
                        }
                        else
                        {
                            break;
                        }
                    }
                    if (char.IsDigit(schar))
                    {
                        pos++;
                        continue;
                    }
                    break;
                }
                if (dotvalue == 0.0)
                {
                    itemvalue[itemcount] = currentvalue;
                }
                else
                {
                    itemvalue[itemcount] = currentvalue / dotvalue;
                }
                currentvalue = 0;
            }
            timevalue = 0.0;
            multiplevalue = 1.0;
            for (int i = (itemcount - 1); i >= 0; i--)
            {
                timevalue += itemvalue[i] * multiplevalue;
                multiplevalue *= 60.0;
            }
            return timevalue;
        }

        string DelLastZero(string str)
        {
            int i = 0;
            int Lastzero = str.Length;
            int nLen = str.Length;
            string c;

            while (true)
            {
                c = str.Substring(nLen - i - 1, 1);
                if (c == ".")
                {
                    i++;
                    break;
                }
                else if (c == "0")
                {
                    Lastzero = nLen - i - 1;
                }
                else
                {
                    break;
                }
                i++;
            }
            return str.Substring(0, Lastzero);
        }

        string GetTimeString(double dsecond)
        {
            string str;
            double dval = Math.Floor(dsecond * 1000000.0 + 0.5) / 1000000.0;
            double Milli, IntSec;

            IntSec = Math.Floor(dval);
            Milli = dval - IntSec;
            long MilliSecond = (long)IntSec;
            int LessMicro = (int)(Milli * 1000000.0 + 0.5);
            int hour = 0, minute = 0;

            if (MilliSecond >= 3600)
            {
                hour = (int)(MilliSecond / 3600);
                MilliSecond %= 3600;
            }
            if (MilliSecond >= 60)
            {
                minute = (int)(MilliSecond / 60);
                MilliSecond %= 60;
            }
            if (hour == 0)
            {
                if (minute == 0)
                {
                    if (LessMicro == 0)
                    {
                        str = string.Format("{0:D1}", MilliSecond);
                    }
                    else
                    {
                        if (LessMicro < 10)
                        {
                            str = string.Format("{0:D1}.00000{1:D1}", MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 100)
                        {
                            str = string.Format("{0:D1}.0000{1:D2}", MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 1000)
                        {
                            str = string.Format("{0:D1}.000{1:D3}", MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 10000)
                        {
                            str = string.Format("{0:D1}.00{1:D4}", MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 100000)
                        {
                            str = string.Format("{0:D1}.0{1:D5}", MilliSecond, LessMicro);
                        }
                        else
                        {
                            str = string.Format("{0:D1}.{1:D6}", MilliSecond, LessMicro);
                        }
                        str = DelLastZero(str);
                    }
                }
                else
                {
                    if (LessMicro == 0)
                    {
                        str = string.Format("{0:D1}:{1:D2}", minute, MilliSecond);
                    }
                    else
                    {
                        if (LessMicro < 10)
                        {
                            str = string.Format("{0:D1}:{1:D2}.00000{2:D1}", minute, MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 100)
                        {
                            str = string.Format("{0:D1}:{1:D2}.0000{2:D2}", minute, MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 1000)
                        {
                            str = string.Format("{0:D1}:{1:D2}.000{2:D3}", minute, MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 10000)
                        {
                            str = string.Format("{0:D1}:{1:D2}.00{2:D4}", minute, MilliSecond, LessMicro);
                        }
                        else if (LessMicro < 100000)
                        {
                            str = string.Format("{0:D1}:{1:D2}.0{2:D5}", minute, MilliSecond, LessMicro);
                        }
                        else
                        {
                            str = string.Format("{0:D1}:{1:D2}.{2:D6}", minute, MilliSecond, LessMicro);
                        }
                        str = DelLastZero(str);
                    }
                }

            }
            else
            {
                if (LessMicro == 0)
                {
                    str = string.Format("{0:D1}:{1:D2}:{2:D2}", hour, minute, MilliSecond);
                }
                else
                {
                    if (LessMicro < 10)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.00000{3:D1}", hour, minute, MilliSecond, LessMicro);
                    }
                    else if (LessMicro < 100)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.0000{3:D2}", hour, minute, MilliSecond, LessMicro);
                    }
                    else if (LessMicro < 1000)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.000{3:D3}", hour, minute, MilliSecond, LessMicro);
                    }
                    else if (LessMicro < 10000)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.00{3:D4}", hour, minute, MilliSecond, LessMicro);
                    }
                    else if (LessMicro < 100000)
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.0{3:D5}", hour, minute, MilliSecond, LessMicro);
                    }
                    else
                    {
                        str = string.Format("{0:D1}:{1:D2}:{2:D2}.{3:D6}", hour, minute, MilliSecond, LessMicro);
                    }
                    str = DelLastZero(str);
                }
            }
            return str;
        }



        public void RefreshFrequency(ref string sval, ref double freq)
        {
            double val;

            if (string.IsNullOrWhiteSpace(sval))
                return;
            if (double.TryParse(sval, out val))
            {
                freq = val;
            }

            if (freq > DeviceConstants.MAX_EIS_FREQUENCY)
                freq = DeviceConstants.MAX_EIS_FREQUENCY;
            if (freq < DeviceConstants.MIN_EIS_FREQUENCY)
                freq = DeviceConstants.MIN_EIS_FREQUENCY;

            sval = string.Format("{0:#0.###}", freq);
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
                mtech.info.Capa = Convert.ToDouble(txtcapa.Text);
                txtcapa.Text = string.Format("{0:0.0##}", mtech.info.Capa);
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
                RefreshFrequency(ref str, ref eis.initfreq);
                txteisinitfreq.Text = str;
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
                RefreshFrequency(ref str, ref eis.finalfreq);
                txteisfinalfreq.Text = str;
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
                eis.density = Convert.ToUInt16(txteisdensity.Text);
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
                eis.iteration = Convert.ToInt32(txteisrepeat.Text);
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
                RefreshFrequency(ref str, ref hfr.freq);
                txthfrfreq.Text = str;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txthfrfreq.Text = GetFreqString(ref hfr.freq);
            }
        }

        private void txthfrinterval_Leave(object sender, EventArgs e)
        {
            hfr.interval = atot(txthfrinterval.Text);
            txthfrinterval.Text = GetTimeString(hfr.interval);
        }

        private void txthfrtotaltime_Leave(object sender, EventArgs e)
        {
            hfr.totaltime = atot(txthfrtotaltime.Text);
            txthfrtotaltime.Text = GetTimeString(hfr.totaltime);
        }

        private void txtprrrsfreq_Leave(object sender, EventArgs e)
        {
            try
            {
                string str = txtprrrsfreq.Text;
                RefreshFrequency(ref str, ref prr.rsfreq);
                txtprrrsfreq.Text = str;
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
                RefreshFrequency(ref str, ref prr.rdfreq);
                txtprrrpfreq.Text = str;
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
                RefreshFrequency(ref str, ref prr.rdendfreq);
                txtprrrpendfreq.Text = str;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                txtprrrpendfreq.Text = GetFreqString(ref prr.rdendfreq);
            }
        }

        private void txtprrinterval_Leave(object sender, EventArgs e)
        {
            prr.interval = atot(txtprrinterval.Text);
            txtprrinterval.Text = GetTimeString(prr.interval);
        }

        private void txtprrtotaltime_Leave(object sender, EventArgs e)
        {
            prr.totaltime = atot(txtprrtotaltime.Text);
            txtprrtotaltime.Text = GetTimeString(prr.totaltime);
        }

        private void tbbtech_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (bopen == true) return;
            /* if (tabtech.SelectedTab == tabtech1)
             {
                 mtech.type = 0;
             }
             else if (tabtech.SelectedTab == tabtech2)
             {
                 mtech.type = 1;
             }
             else if (tabtech.SelectedTab == tabtech3)
             {
                 mtech.type = 2;
             }
             */
            if (OpenType < 0 || OpenType > 2)
            {
                if (tabtech.SelectedIndex != mtech.type)
                {
                    mtech.type = (ushort)tabtech.SelectedIndex;
                }
            }
        }

        private void frmTechniq_Load(object sender, EventArgs e)
        {
            
            ViewTechnique();
        }

        public bool Openfile(string sfilename)
        {
            FileCondition fc = new FileCondition();
            if(fc.OpenFile(sfilename, ref mtech) == false)
            {
                return false;
            }

            gBZA.appcfg.PathSch = Path.GetDirectoryName(sfilename);
            gBZA.appcfg.Save();

            filename = sfilename;

            this.Text = string.Format("Technique[{0}].", GetFixedFilename(filename, 60));
            OpenType = mtech.type;
            if (mtech.type == 1)
            {
                eis.initialize();
                mtech.GetHFR(ref hfr);
                prr.initialize();
            }
            else if (mtech.type == 2)
            {
                eis.initialize();
                hfr.initialize();
                mtech.GetPRR(ref prr);
            }
            else
            {
                mtech.GetEIS(ref eis);
                hfr.initialize();
                prr.initialize();
            }
            SetTabpagesitem(mtech.type);
            bopen = true;
            ViewTechnique();
            return true;
        }

        private void btopen_Click(object sender, EventArgs e)
        {
            string sfilename;
            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Multiselect = false;
            dlg.InitialDirectory = gBZA.appcfg.PathSch;

            dlg.Filter = "Galvanostatic EIS (*.eis) | *.eis|Galvanostatic HFR (*.hfr) |*.hfr|Pseudo Rs Rp mearsurement (*.prr) | *.Prr|All files (*.*)|*.*";
            if (mtech.type == 1)
            {
                dlg.Title = "Open Galvanostatic HFR technique file.";
                dlg.DefaultExt = "hfr";
                dlg.FilterIndex = 2;
            }
            else if (mtech.type == 2)
            {
                dlg.Title = "Open Pseudo Rs Rp mearsurement technique file.";
                dlg.DefaultExt = "prr";
                dlg.FilterIndex = 3;
            }
            else
            {
                dlg.Title = "Open Galvanostatic EIS technique file.";
                dlg.DefaultExt = "eis";
                dlg.FilterIndex = 1;
            }

            if (bopen == false)
            {
                sfilename = GetDefaultname();
            }
            else
            {
                sfilename = filename;
            }

            dlg.FileName = Path.GetFileName(sfilename);

            if (dlg.ShowDialog() == DialogResult.OK)
            {
                filename = dlg.FileName;
                gBZA.appcfg.PathSch = Path.GetDirectoryName(dlg.FileName);
                gBZA.appcfg.Save();
                FileCondition fc = new FileCondition();
                fc.OpenFile(dlg.FileName, ref mtech);
                if(mtech.type == 1)
                {
                    mtech.GetHFR(ref hfr);
                }
                else if (mtech.type == 2)
                {
                    mtech.GetPRR(ref prr);
                }
                else
                {
                    mtech.GetEIS(ref eis);
                }
                SetTabpagesitem(mtech.type);
                bopen = true;
                ViewTechnique();



                this.Text = string.Format("Technique[{0}].", GetFixedFilename(filename, 60));
            }
        }

        private void SetTabpagesitem(int type)
        {
            if (mtech.type == 1)
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == true) this.tabtech.TabPages.Remove(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == false) this.tabtech.TabPages.Add(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == true) this.tabtech.TabPages.Remove(this.tabtech3);
            }
            else if (mtech.type == 2)
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == true) this.tabtech.TabPages.Remove(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == true) this.tabtech.TabPages.Remove(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == false) this.tabtech.TabPages.Add(this.tabtech3);
            }
            else if (mtech.type == 0)
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == false) this.tabtech.TabPages.Add(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == true) this.tabtech.TabPages.Remove(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == true) this.tabtech.TabPages.Remove(this.tabtech3);
            }
            else
            {
                if (this.tabtech.TabPages.Contains(this.tabtech1) == false) this.tabtech.TabPages.Add(this.tabtech1);
                if (this.tabtech.TabPages.Contains(this.tabtech2) == false) this.tabtech.TabPages.Add(this.tabtech2);
                if (this.tabtech.TabPages.Contains(this.tabtech3) == false) this.tabtech.TabPages.Add(this.tabtech3);
            }
        }

        private string GetDefaultname()
        {
            string str;
            string sext;
            string sname;
            string sfilename;

            if (mtech.type == 1)
            {
                sname = "technique_HFR";
                sext = "hfr";
            }
            else if (mtech.type == 2)
            {
                sname = "technique_PRR";
                sext = "prr";
            }
            else
            {
                sname = "technique_EIS";
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

        private bool Save()
        {

            if (bopen == true && File.Exists(filename) == true)
            {
                FileCondition fc = new FileCondition();
                if (mtech.type == 1)
                {
                    mtech.SetHFR(hfr);
                }
                else if (mtech.type == 2)
                {
                    mtech.SetPRR(prr);
                }
                else
                {
                    mtech.SetEIS(eis);
                }
                return fc.Save(filename, mtech);
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
            saveDlg.InitialDirectory = gBZA.appcfg.PathSch;

            if (mtech.type == 1)
            {
                saveDlg.Title = "Saving Galvanostatic HFR technique file.";
                saveDlg.DefaultExt = "*.hfr";
                saveDlg.Filter = "Galvanostatic HFR (*.hfr) |*.hfr";
            }
            else if (mtech.type == 2)
            {
                saveDlg.Title = "Saving Pseudo Rs Rp mearsurement technique file.";
                saveDlg.DefaultExt = "*.Prr";
                saveDlg.Filter = "Pseudo Rs Rp mearsurement(*.Prr) | *.Prr";
            }
            else
            {
                saveDlg.Title = "Saving Galvanostatic EIS technique file.";
                saveDlg.DefaultExt = "*.eis";
                saveDlg.Filter = "Galvanostatic EIS (*.eis) | *.eis";
            }
            saveDlg.OverwritePrompt = false;

            saveDlg.FileName = Path.GetFileName(GetDefaultname());

            if (saveDlg.ShowDialog() == DialogResult.Cancel)
            {
                return false;
            }
            gBZA.appcfg.PathSch = Path.GetDirectoryName(saveDlg.FileName);
            gBZA.appcfg.Save();

            FileCondition fc = new FileCondition();

            if(mtech.type == 1)
            {
                mtech.SetHFR(hfr);
            }
            else if (mtech.type == 2)
            {
                mtech.SetPRR(prr);
            }
            else
            {
                mtech.SetEIS(eis);
            }

            if(fc.Save(saveDlg.FileName, mtech) == false)
            {
                return false;
            }

            SetTabpagesitem(mtech.type);
            bopen = true;
            filename = saveDlg.FileName;
            this.Text = string.Format("Technique[{0}].", GetFixedFilename(filename, 60));
            return true;
        }

        private void btsave_Click(object sender, EventArgs e)
        {
            Save();
        }

        private void btsaveas_Click(object sender, EventArgs e)
        {
            SaveAs();
        }

        private void btapply_Click(object sender, EventArgs e)
        {
            Save();

            frmTechApply frm = new frmTechApply(filename);
            
            frm.ShowDialog();
        }

        private void btclose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtondelay_Leave(object sender, EventArgs e)
        {
            mtech.ondelay = atot(txtondelay.Text);
            txtondelay.Text = GetTimeString(mtech.ondelay);
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
            
        }

        private void frmTechniq_SizeChanged(object sender, EventArgs e)
        {
            
        }

        private void chkrpend_CheckedChanged(object sender, EventArgs e)
        {
            
            if (chkrpend.Checked == true)
            {
                txtprrrpendfreq.ReadOnly = false;
                prr.rdendfreq = prr.rdfreq;
            }
            else
            {
                txtprrrpendfreq.ReadOnly = true;
                prr.rdendfreq = 0.0;
            }
            txtprrrpendfreq.Text = GetFreqString(ref prr.rdendfreq);
        }

        private void frmTechniq_FormClosing(object sender, FormClosingEventArgs e)
        {
            Point pt = this.Location;


            if (pt.X != -32000 && pt.Y != -32000)
            {
                gBZA.appcfg.TechLocation = pt;
                gBZA.appcfg.Save();
            }
        }
    }
}
