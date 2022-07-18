using System;
using System.Threading;
using System.Windows.Forms;

namespace ZiveLab.ZM.FactorySetting
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
            Mutex m_hMutex1;

            m_hMutex = new Mutex(true, "ZM.FActorySetting-Mutex", out flagMutex);
            if (flagMutex == false)
            {
                MessageBox.Show("ZM.FActorySetting program is running.", "ZM", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }


            m_hMutex1 = new Mutex(true, "ZM-Mutex", out flagMutex);
            if (flagMutex == false)
            {
                MessageBox.Show("ZM program is running.", "ZM", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }

            if (m_hMutex1 != null)
            {
                m_hMutex1.ReleaseMutex();
                m_hMutex1.Dispose();
            }

            

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Main());
            m_hMutex.ReleaseMutex();
        }
    }
}
