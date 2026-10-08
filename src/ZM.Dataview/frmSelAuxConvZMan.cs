using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZiveLab.ZM.ZIM;

namespace ZiveLab.ZM.Dataview
{
    public partial class frmSelAuxConvZMan : Form
    {
        DataHeaderValues dhv;
        public DataViewSet dvs;
        public List<bool> lstaux;
        public CheckBox[] ChkAuxCh;
        public frmSelAuxConvZMan(DataViewSet tDataViewSet, DataHeaderValues tDataHeaderValue)
        {
            InitializeComponent();
            dhv = tDataHeaderValue;
            dvs = tDataViewSet;
            lstaux = dvs._dataConvSet.ConvAuxList;
            ChkAuxCh = new CheckBox[] { chkaux1, chkaux2, chkaux3, chkaux4, chkaux5, chkaux6, chkaux7, chkaux8, chkaux9, chkaux10, chkaux11, chkaux12 };
            InitialControl();
        }

        private void frmSelAuxConvZMan_Load(object sender, EventArgs e)
        {

        }

        private void InitialControl()
        {
            int c;
            for(int i=0; i< MBZA_Constant.MAX_AUX_BOARD; i++)
            {
                for (int j = 0; j < MBZA_Constant.MAX_AUX_CHANNEL; j++)
                {
                    c = i * MBZA_Constant.MAX_AUX_CHANNEL + j;
                    ChkAuxCh[c].Checked = dvs._dataConvSet.ConvAuxList[c];
                    ChkAuxCh[c].Enabled = dhv._CheckAuxBoard[i];
                }    
            }
            
        }

        private void btOK_Click(object sender, EventArgs e)
        {
            int c;
            for (int i = 0; i < MBZA_Constant.MAX_AUX_BOARD; i++)
            {
                for (int j = 0; j < MBZA_Constant.MAX_AUX_CHANNEL; j++)
                {
                    c = i * MBZA_Constant.MAX_AUX_CHANNEL + j;
                    dvs._dataConvSet.ConvAuxList[c] = ChkAuxCh[c].Checked;
                    lstaux[c] = ChkAuxCh[c].Checked & ChkAuxCh[c].Enabled;
                }
            }
        }
    }
}
