using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using SM_Comm;
using SM_Comm.SM_Comm_USB;
using System.Threading;
using SMLib;
using Microsoft.Win32;
using System.Xml.Serialization;
using System.IO;
using SM_Enum;
using C1.Win.C1FlexGrid;

namespace SM_Gateway
{
    
    public partial class FormMain : Form
    {
       
        public static SM_USB_Device mSM_Comm_USB;
        
        private int AniIdx;
        private int DispTick;
        private Icon[] AniIcons;
        private int DeviceCount;
        private int OldDeviceCount;
        private bool bExit;
        frmGateBurn[] mfrmBurn;
        int SelectedRow;
        public FormMain()
        {
            InitializeComponent();

            this.bExit = false;
            SelectedRow = -1;
            DeviceCount = 0;
            OldDeviceCount = 0;

            mSM_Comm_USB = new SM_USB_Device();
            mfrmBurn = new frmGateBurn[8];
            for (int i = 0; i < 8; i++)
            {
                mfrmBurn[i] = null;
            }
            this.DispTick = 0;
            this.AniIcons = new Icon[6];
            this.AniIdx = 0;
            this.AniIcons[0] = Properties.Resources.Loop0;
            this.AniIcons[1] = Properties.Resources.Loop1;
            this.AniIcons[2] = Properties.Resources.Loop2;
            this.AniIcons[3] = Properties.Resources.Loop3;
            this.AniIcons[4] = Properties.Resources.Loop4;
            this.AniIcons[5] = Properties.Resources.Loop5;

             CreateDirectory();

            this.FormClosing += this.FormMain_FormClosing;
            this.LostFocus += new EventHandler(FormMain_LostFocus);
            this.notifyIcon1.DoubleClick += this.notifyIcon1_DoubleClick;
            mSM_Comm_USB.SM_DeviceChange_Add += new EventHandler(mSM_Comm_USB_SM_DeviceChange_Add);
            mSM_Comm_USB.SM_DeviceChange_Remove+= new EventHandler(mSM_Comm_USB_SM_DeviceChange_Remove);
            this.exitToolStripMenuItem.Text = Properties.Resources.str_Exit;
            this.exitToolStripMenuItem.ToolTipText = Properties.Resources.str_TipExit;
            this.Icon = Properties.Resources.SM_Gateway;

            //           this.contextMenuStrip1.AllowTransparency = true;
            //           this.contextMenuStrip1.ImageList.TransparentColor = Color.Magenta;
            this.contextMenuStrip1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.contextMenuStrip1.ImageList = new ImageList();
            this.contextMenuStrip1.ImageList.Images.Clear();
            this.contextMenuStrip1.ImageList.Images.Add("Exit", Properties.Resources.Exit);

            this.notifyIcon1.Icon = Properties.Resources.SM_Gateway;
            this.notifyIcon1.BalloonTipText = "";
            this.notifyIcon1.BalloonTipIcon = ToolTipIcon.None;
            this.notifyIcon1.BalloonTipTitle = "SM_Gateway 1.0";
            this.notifyIcon1.Text = this.Text;
            this.notifyIcon1.Visible = true;
            
            this.exitToolStripMenuItem.ImageKey = "Exit";
            
            InitializeStats();
        }

        void FormMain_LostFocus(object sender, EventArgs e)
        {
            this.Visible = false;
            this.WindowState = FormWindowState.Minimized;
        }

        private void CreateDirectory()
        {
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SM_FOLDER_CFG);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SM_FOLDER_DATA);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SM_FOLDER_EXCEL);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SM_FOLDER_LOG);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SM_FOLDER_SCH);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SM_FOLDER_TEMP);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SM_FOLDER_RES);

            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_CFG);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_DATA);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_EXCEL);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_LOG);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_SCH);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_TEMP);
            System.IO.Directory.CreateDirectory(SM_Define.SM_Directory_define.SMGATEWAY_FOLDER_RES);
        }

        private void FormMain_Load(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
            this.ShowInTaskbar = false;
            this.Visible = false;
            this.timer1.Interval = 100;
            this.timer1.Start();
        
            this.notifyIcon1.Visible = true;
            RefreshDeviceList();
        }

        void ShowBalloon()
        {
            string str;
            string stitle;
            stitle = string.Format("{0} ver.{1}", Application.ProductName, Application.ProductVersion);
            if (this.DeviceCount > this.OldDeviceCount)
            {
                str = string.Format("{0} Device added. Total device is {1}.", 
                    this.DeviceCount - this.OldDeviceCount, this.DeviceCount);
                this.OldDeviceCount = this.DeviceCount;
            }
            else if (this.DeviceCount < this.OldDeviceCount)
            {
                if (this.DeviceCount == 0)
                {
                    str = string.Format("{0} Device removed. Device is none.",
                        this.OldDeviceCount - this.DeviceCount);
                }
                else
                {
                    str = string.Format("{0} Device removed. Total device is {1}.",
                        this.OldDeviceCount - this.DeviceCount, this.DeviceCount);
                }
                this.OldDeviceCount = this.DeviceCount;
            }
            else
            {
                this.OldDeviceCount = this.DeviceCount;
                return;
            }

            this.notifyIcon1.BalloonTipIcon = ToolTipIcon.Info;
            this.notifyIcon1.BalloonTipTitle = stitle;
            this.notifyIcon1.BalloonTipText = str;
            this.notifyIcon1.ShowBalloonTip(1000);
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (this.bExit == true) return;
            if (MessageBox.Show("Are you sure to terminate the program?", "SM_Gateway", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
                == DialogResult.Yes)
            {
                this.timer1.Stop();
                this.bExit = true;
                mSM_Comm_USB.Dispose();
                this.notifyIcon1.Visible = false;
                Application.Exit();
            }
      
        }

        void RefreshDeviceList()
        {
           
            this.DeviceCount = mSM_Comm_USB.DeviceCount;
            this.ShowBalloon();
        }

        void InitializeStats()
        {
            int i;
            string [] sTitle = new string[9]  {"index","Version","Serial","Model","Start time","Channel","linker", "link time","link Stats"};
            CommStatGrid.Cols = 9;
            CommStatGrid.Rows = 1;
            CommStatGrid.FixedCols = 1;
            CommStatGrid.FixedRows = 1;
            CommStatGrid.ColWidthMax = 1000;
            CommStatGrid.ColWidthMin = 40;
            CommStatGrid.AutoGenerateColumns = true;
            CommStatGrid.AutoResize = true;
       
            CommStatGrid.AutoSizeCols();
            CommStatGrid.AutoSizeRows();
            CommStatGrid.AutoSizeMode = C1.Win.C1FlexGrid.Classic.AutoSizeSettings.flexAutoSizeColWidth;
            for (i = 0; i < 9; i++)
            {
                if (i == 2)
                {
                    CommStatGrid.set_ColWidth(i, 100);
                }
                else if (i == 3)
                {
                    CommStatGrid.set_ColWidth(i, 80);
                }
                else if (i == 4 || i == 6 || i == 7)
                    CommStatGrid.set_ColWidth(i, 130);
                else if (i == 8)
                    CommStatGrid.set_ColWidth(i, CommStatGrid.Width - 760);//770
                else
                    CommStatGrid.set_ColWidth(i, 60);

                CommStatGrid.set_FixedAlignment(i, C1.Win.C1FlexGrid.Classic.AlignmentSettings.flexAlignCenterCenter);
                CommStatGrid.set_ColAlignment(i, C1.Win.C1FlexGrid.Classic.AlignmentSettings.flexAlignCenterCenter);
                CommStatGrid.set_TextMatrix(0, i, sTitle[i]);
            }
            RefreshCommStats();
        }

        void RefreshCommStats()
        {
            int i;
            int j;
            int count;
            string str;
         
            int key;
            string serial;

            
            count = mSM_Comm_USB.mDeviceListDict.Count;
            CommStatGrid.Redraw = C1.Win.C1FlexGrid.Classic.RedrawSettings.flexRDNone;
            CommStatGrid.Rows = count+1;
            str = "";

            for (i = 0; i < count; i++)
            {
                key = mSM_Comm_USB.mDeviceListDict.ElementAt(i).Key;
                serial = mSM_Comm_USB.mDeviceListDict.ElementAt(i).Value;
                if (mSM_Comm_USB._SP_USB_Interface_Dict[serial] == null) continue;
                for (j = 0; j < 9; j++)
                {
                    switch (j)
                    {
                        case 0:
                            str = string.Format("{0}", key + 1);
                            break;
                        case 1:
                            str = String.Format("{0}",mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.VerUSB);
                            break;
                        case 2:
                            str = serial;
                            break;
                        case 3:
                            str = SM_Converting.SM_GetDescription((enDeviceModel)(mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.Model & 0x3F));
                            break;
                        case 4:
                            str = String.Format("{0:yyyy/MM/dd hh:mm:ss}", mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDispStat.StartTime);
                            break;
                        case 5:
                            str = string.Format("{0}", mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDispStat.Channel+1);
                            break;
                        case 6:
                            str = SM_Converting.SM_GetDescription(mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDispStat.Linker);
                            break;
                        case 7:
                            str = String.Format("{0:yyyy/MM/dd hh:mm:ss}", mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDispStat.LinkTime);
                            break;
                        case 8:
                            if (mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.bSupportVer == true)
                                str = SM_Converting.SM_GetDescription(mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDispStat.LinkResult);
                            else str = "Invalid version";
                            break;
                    }
                    CommStatGrid.set_TextMatrix(i+1, j, str);

                    if(j > 0)
                    {
                        CommStatGrid.Row = i+1;
                        CommStatGrid.Col = j;
                        if (j == 1)
                        {
                            if (mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.bSupportVer == true)
                                CommStatGrid.CellForeColor = Color.Black;
                            else CommStatGrid.CellForeColor = Color.Red;
                        }
                        if (mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDeviceInfo.mInfo.bSupportVer == true)
                        {
                            if (mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDispStat.LinkResult == enResult.FLAG_NONE)
                            {
                                if (mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDispStat.Linker == enProgram.none)
                                    CommStatGrid.CellBackColor = Color.WhiteSmoke;
                                else
                                    CommStatGrid.CellBackColor = Color.Cyan;
                            }
                            else if (mSM_Comm_USB._SP_USB_Interface_Dict[serial].mDispStat.LinkResult == enResult.FLAG_OK)
                                CommStatGrid.CellBackColor = Color.White;
                            else
                                CommStatGrid.CellBackColor = Color.MediumVioletRed;
                        }
                        else CommStatGrid.CellBackColor = Color.Gray;
                    }
                }
            }
            CommStatGrid.Redraw = C1.Win.C1FlexGrid.Classic.RedrawSettings.flexRDDirect;
        }

        void mSM_Comm_USB_SM_DeviceChange_Remove(object sender, EventArgs e)
        {
            ChgDevInf mChgDevInf = (ChgDevInf)e;
            for (int i = 0; i < 8; i++)
            {
                if (mfrmBurn[i] != null)
                {
                    mfrmBurn[i].Dispose();
                    mfrmBurn[i] = null;
                }
            }
            RefreshDeviceList();
        }

        void mSM_Comm_USB_SM_DeviceChange_Add(object sender, EventArgs e)
        {
            ChgDevInf mChgDevInf = (ChgDevInf)e;
            RefreshDeviceList();
        }

        void notifyIcon1_DoubleClick(object sender, EventArgs e)
        {
            
            if (this.WindowState == FormWindowState.Minimized)
            {
                this.WindowState = FormWindowState.Normal;
                this.Visible = true;
                this.Activate();
            }
            else
            {
                this.Visible = false;
                this.WindowState = FormWindowState.Minimized;
            }
            
        }

        void FormMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (this.bExit == false)
            {
                e.Cancel = true;
                this.Visible = false;
                this.WindowState = FormWindowState.Minimized;
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            this.notifyIcon1.Icon = this.AniIcons[AniIdx];
            this.AniIdx++;
            if (this.AniIdx > 5)
            {
                this.AniIdx = 0;
            }
            this.DispTick++;
            if (this.DispTick > 10)
            {
                this.DispTick = 0;

                RefreshCommStats();
            }
        
        }

        private void FormMain_SizeChanged(object sender, EventArgs e)
        {
            
        }

        private void CommStatGrid_SizeChanged(object sender, EventArgs e)
        {
            int i = CommStatGrid.Width - 760;
            if (i < 200) i = 200;
            CommStatGrid.set_ColWidth(8, i);

        }

        private void changeFirmwareToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string strSerial = "";
            if (SelectedRow < 1) return;
            strSerial = CommStatGrid.get_TextMatrix(SelectedRow, 2);

            //frmGateBurn mfrmBurn = new frmGateBurn(SelectedRow - 1, strSerial);
            if (mfrmBurn[SelectedRow - 1] == null)
            {
                mfrmBurn[SelectedRow - 1] = new frmGateBurn(SelectedRow - 1, strSerial);
                mfrmBurn[SelectedRow - 1].Show();
            }
            else
            {
                if (mfrmBurn[SelectedRow - 1].Visible == false)
                {
                    mfrmBurn[SelectedRow - 1].Dispose();
                    mfrmBurn[SelectedRow - 1] = null;
                    mfrmBurn[SelectedRow - 1] = new frmGateBurn(SelectedRow - 1, strSerial);
                    mfrmBurn[SelectedRow - 1].Show();
                }
                else
                {
                    mfrmBurn[SelectedRow - 1].Focus();
                }
            }
            
        }

        private void CommStatGrid_RowValidating(object sender, C1.Win.C1FlexGrid.RowColEventArgs e)
        {
        }

        private void CommStatGrid_MouseClick(object sender, MouseEventArgs e)
        {
          
       }

        private void CommStatGrid_Click(object sender, EventArgs e)
        {
            
        }

        private void CommStatGrid_MouseEnterCell(object sender, RowColEventArgs e)
        {
      //      CommStatGrid.ContextMenuStrip = contextMenuStrip2;
       //     SelectedRow = e.Row;
        }

        private void CommStatGrid_MouseLeaveCell(object sender, RowColEventArgs e)
        {
        //    CommStatGrid.ContextMenuStrip = null;
         //   SelectedRow = -1;
        }

        private void CommStatGrid_MouseDown(object sender, MouseEventArgs e)
        {
            string strSerial;
            if (e.Button == System.Windows.Forms.MouseButtons.Right)
            {
                

                Point m = new Point(e.X, e.Y);
                var pt = CommStatGrid.PointToClient(m);
                HitTestInfo hit = CommStatGrid.HitTest(e.X, e.Y);
                if (hit.Row > 0 && hit.Row <= CommStatGrid.Rows)
                {
                    SelectedRow = hit.Row;
                    strSerial = CommStatGrid.get_TextMatrix(SelectedRow, 2);
                    if (FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[strSerial].mDeviceInfo.mInfo.bSupportVer == false)
                        upgradeDeviceToolStripMenuItem.Visible = true;
                    else
                        upgradeDeviceToolStripMenuItem.Visible = false;
                    CommStatGrid.ContextMenuStrip = contextMenuStrip2;
                }
                else
                {
                    CommStatGrid.ContextMenuStrip = null;
                    SelectedRow = -1;
                }
            }
        }

        private void upgradeDeviceToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string strSerial = "";
            if (SelectedRow < 1) return;
            strSerial = CommStatGrid.get_TextMatrix(SelectedRow, 2);

            FrmUpgrade mFrmUpgrade = new FrmUpgrade(SelectedRow - 1, strSerial);

            mFrmUpgrade.ShowDialog();
           
        }

    }
}
