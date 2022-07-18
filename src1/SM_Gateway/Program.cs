using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System.Threading;
using System.Resources;
using System.Globalization;
using System.IO.MemoryMappedFiles;

namespace SM_Gateway
{
    static class Program
    {
        
        /// <summary>
        /// 해당 응용 프로그램의 주 진입점입니다.
        /// </summary>
        [STAThread]
        static void Main()
        {

            bool flagMutex;
            Mutex m_hMutex;

            m_hMutex = new Mutex(true, "WEISUpload-Mutex", out flagMutex);
            if (flagMutex == false)
            {
                MessageBox.Show("SM_Upload program is running.", "SM_Gateway", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }
            if (m_hMutex != null)
            {
                m_hMutex.ReleaseMutex();
                m_hMutex.Dispose();
            }

            m_hMutex = new Mutex(true, "WEIS-Mutex", out flagMutex);
            if (flagMutex == false)
            {
                MessageBox.Show("The previous version of the SM program is running.", "SM_Gateway", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }

            if (m_hMutex != null)
            {
                m_hMutex.ReleaseMutex();
                m_hMutex.Dispose();
            }

            m_hMutex = new Mutex(true, "WEISUpload6-Mutex", out flagMutex);
            if (flagMutex == false)
            {
                MessageBox.Show("SM_Upload program is running.", "SM_Gateway", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }
            if (m_hMutex != null)
            {
                m_hMutex.ReleaseMutex();
                m_hMutex.Dispose();
            }

            m_hMutex = new Mutex(true, "WEIS6-Mutex", out flagMutex);
            if (flagMutex == false)
            {
                MessageBox.Show("The SM program is running.", "SM_Gateway", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }

            if (m_hMutex != null)
            {
                m_hMutex.ReleaseMutex();
                m_hMutex.Dispose();
            }

            m_hMutex = new Mutex(true, "SM_Toolkit", out flagMutex);
            if (flagMutex == false)
            {
                MessageBox.Show("The SM_Toolkit program is running.", "SM_Gateway", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }

            if (m_hMutex != null)
            {
                m_hMutex.ReleaseMutex();
                m_hMutex.Dispose();
            }


            m_hMutex = new Mutex(true, "UpgradeSM_5To6", out flagMutex);
            if (flagMutex == false)
            {
                MessageBox.Show("The UpgradeSM_5To6 program is running.", "SM_Gateway", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }

            if (m_hMutex != null)
            {
                m_hMutex.ReleaseMutex();
                m_hMutex.Dispose();
            }

            m_hMutex = new Mutex(true, "SM_Gateway", out flagMutex);

            if (flagMutex == true)
            {
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);
                Application.Run(new FormMain());
                m_hMutex.ReleaseMutex();
                m_hMutex.Dispose();
            }
            else
            {
                MessageBox.Show("SM_Gateway already started!", "SM_Gateway", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }
        }
    }
}
