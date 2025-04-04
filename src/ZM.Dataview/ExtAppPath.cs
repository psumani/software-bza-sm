using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ZiveLab.ZM.Dataview
{
    public class ExtAppProc
    {
        private const string IVMAN_SUBKEY = @"Zive Lab\IVMAN";
        private const string IVMAN_OPTION_SUBKEY = @"Zive Lab\IVMAN Option";
        private const string ZMAN_SUBKEY = @"Zive Lab\ZMAN";
        private const string DATAMANAGER_SUBKEY = @"WonATech\DataManager";

        private const string INSTALL_DIR = "InstallDir";

        private string _ivman = string.Empty;
        private string _ivmanda = string.Empty;
        private string _ivmanex = string.Empty;
        private string _ivmanpa = string.Empty;
        private string _ivmanpf = string.Empty;
        private string _ivmanta = string.Empty;

        private string _zman = string.Empty;

        private string _dataManager = string.Empty;
        private string _dcgraph3d = string.Empty;
        private string _eisgraph3d = string.Empty;
        private string _peakDetector = string.Empty;

        public string IVMan { get { return _ivman; } }
        public string IVManDA { get { return _ivmanda; } }
        public string IVManEX { get { return _ivmanex; } }
        public string IVManPA { get { return _ivmanpa; } }
        public string IVManPF { get { return _ivmanpf; } }
        public string IVManTA { get { return _ivmanta; } }
        public string ZMan { get { return _zman; } }
        public string DataManager { get { return _dataManager; } }
        public string DCGraph3D { get { return _dcgraph3d; } }
        public string EisGraph3D { get { return _eisgraph3d; } }
        public string PeakDetector { get { return _peakDetector; } }        

        public ExtAppProc()
        {
            string instdir = string.Empty;
            string appfile = string.Empty;

            instdir = GetInstallDirectory(IVMAN_SUBKEY);

            if (Directory.Exists(instdir))
            {
                appfile = Path.Combine(instdir, "IVMAN.exe");

                if(File.Exists(appfile))
                {
                    _ivman = appfile;
                }
            }

            ///////////////////////////////////////////////////////
            instdir = GetInstallDirectory(IVMAN_OPTION_SUBKEY);

            if (Directory.Exists(instdir))
            {
                appfile = Path.Combine(instdir, "IVMAN DA", "Differential Analysis.exe");

                if (File.Exists(appfile))
                {
                    _ivmanda = appfile;
                }

                appfile = Path.Combine(instdir, "IVMAN EX", "IVMAN Extractor.exe");

                if (File.Exists(appfile))
                {
                    _ivmanex = appfile;
                }

                appfile = Path.Combine(instdir, "IVMAN PA", "IVMAN Photovoltaic-Cell Analysis.exe");

                if (File.Exists(appfile))
                {
                    _ivmanpa = appfile;
                }

                appfile = Path.Combine(instdir, "IVMAN PF", "IVMAN Peak Find Module.exe");

                if (File.Exists(appfile))
                {
                    _ivmanpf = appfile;
                }

                appfile = Path.Combine(instdir, "IVMAN TA", "IVMAN Tafel Analysis.exe");

                if (File.Exists(appfile))
                {
                    _ivmanta = appfile;
                }
            }
            /////////////////////////////////////////////////////////////////////////

            instdir = GetInstallDirectory(ZMAN_SUBKEY);

            if (Directory.Exists(instdir))
            {
                appfile = Path.Combine(instdir, "ZMAN.exe");

                if (File.Exists(appfile))
                {
                    _zman = appfile;
                }
            }

            ///////////////////////////////////////////////////////
            instdir = GetInstallDirectory(ZMAN_SUBKEY);

            if (Directory.Exists(instdir))
            {
                appfile = Path.Combine(instdir, "ZMAN.exe");

                if (File.Exists(appfile))
                {
                    _zman = appfile;
                }
            }


            ///////////////////////////////////////////////////////
            instdir = GetInstallDirectory(DATAMANAGER_SUBKEY);

            if (Directory.Exists(instdir))
            {
                appfile = Path.Combine(instdir, "Data Manager.exe");

                if (File.Exists(appfile))
                {
                    _dataManager = appfile;
                }

                appfile = Path.Combine(instdir, "DCGraph3D.exe");

                if (File.Exists(appfile))
                {
                    _dcgraph3d = appfile;
                }

                appfile = Path.Combine(instdir, "EisGraph3D.exe");

                if (File.Exists(appfile))
                {
                    _eisgraph3d = appfile;
                }
                                
                appfile = Path.Combine(instdir, Environment.Is64BitOperatingSystem ? "Analysis(x64)" : "Analysis(x86)", "PeakDetector.exe");

                if (File.Exists(appfile))
                {
                    _peakDetector = appfile;
                }
            }

            //reg = Registry.LocalMachine;

            //reg = reg.OpenSubKey(@"Software\Wow6432Node\WonATech\DataManager", false);

            //if (reg != null)
            //{
            //    string instdir = (string)reg.GetValue("InstallDir");

            //    _dataManager = Path.Combine(instdir, "Data Manager.exe");
            //    _dcgraph3d = Path.Combine(instdir, "DCGraph3D.exe");
            //    _eisgraph3d = Path.Combine(instdir, "EisGraph3D.exe");
            //    _peakDetector = Path.Combine(instdir, "Analysis(x64)", "PeakDetector.exe");
            //}
            //else
            //{
            //    reg = Registry.LocalMachine;

            //    reg = reg.OpenSubKey(@"Software\WonATech\DataManager", false);

            //    if (reg != null)
            //    {
            //        string instdir = (string)reg.GetValue("InstallDir");

            //        _dataManager = Path.Combine(instdir, "Data Manager.exe");
            //        _dcgraph3d = Path.Combine(instdir, "DCGraph3D.exe");
            //        _eisgraph3d = Path.Combine(instdir, "EisGraph3D.exe");
            //        _peakDetector = Path.Combine(instdir, "Analysis(x86)", "PeakDetector.exe");
            //    }
            //    else
            //    {
            //        _dataManager = string.Empty;
            //        _dcgraph3d = string.Empty;
            //        _eisgraph3d = string.Empty;
            //        _peakDetector = string.Empty;
            //    }
            //}
        }

        private static string GetInstallDirectory(string subkey)
        {
            string result = string.Empty;

            RegistryKey reg = Registry.LocalMachine;
            RegistryKey reg32SubKey = reg.OpenSubKey(@"Software\"+ subkey);

            if(reg32SubKey != null)
            {
                //MessageBox.Show("reg32 not null");

                result = (string)reg32SubKey.GetValue(INSTALL_DIR, string.Empty);

                //MessageBox.Show($"{result}");
            }
            else
            {
                //MessageBox.Show("reg32 null");

                RegistryKey reg64SubKey = reg.OpenSubKey(@"Software\Wow6432Node\" + subkey);

                if(reg64SubKey != null)
                {
                    result = (string)reg64SubKey.GetValue(INSTALL_DIR, string.Empty);
                }
            }

            return result;
        }

        private static  bool ExecuteExternalProgram(string programPath, string arguments)
        {
            try
            {
                Process process = new Process();
                process.StartInfo.FileName = programPath;
                process.StartInfo.Arguments = arguments;
                //process.StartInfo.UseShellExecute = false; // 프로세스가 셸을 사용하지 않도록 설정
                //process.StartInfo.RedirectStandardOutput = true; // 표준 출력을 가져오도록 설정
                //process.StartInfo.CreateNoWindow = true; // 창을 생성하지 않도록 설정

                process.Start(); // 외부 프로그램 실행

                // 외부 프로그램이 끝날 때까지 대기
                //process.WaitForExit();

                // 외부 프로그램의 종료 코드를 확인
                //int exitCode = process.ExitCode;

                // 외부 프로그램의 표준 출력 가져오기 (옵션)
                //string output = process.StandardOutput.ReadToEnd();

                // 성공적으로 외부 프로그램을 실행했고 종료 코드가 0이면 true 반환
                return true;
            }
            catch (Exception ex)
            {
                // 오류 처리
                Console.WriteLine("오류 발생: " + ex.Message);
                return false;
            }
        }

        public static bool RunIVMan(string datafile)
        {
            bool result = false;

            string app = Path.Combine(GetInstallDirectory(IVMAN_SUBKEY), "IVMAN.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, datafile);

            return result;
        }

        public static bool RunIVManDA(string datafile)
        {
            bool result = false;

            string app = Path.Combine(GetInstallDirectory(IVMAN_OPTION_SUBKEY), "IVMAN DA", "Differential Analysis.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, datafile);

            return result;
        }

        public static bool RunIVManPA(string datafile)
        {
            bool result = false;

            string app = Path.Combine(GetInstallDirectory(IVMAN_OPTION_SUBKEY), "IVMAN PA", "IVMAN Photovoltaic-Cell Analysis.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, datafile);

            return result;
        }

        public static bool RunIVManTA(string datafile)
        {
            bool result = false;

            string app = Path.Combine(GetInstallDirectory(IVMAN_OPTION_SUBKEY), "IVMAN TA", "IVMAN Tafel Analysis.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, datafile);

            return result;
        }

        public static bool RunIVManPF(string datafile)
        {
            bool result = false;

            string app = Path.Combine(GetInstallDirectory(IVMAN_OPTION_SUBKEY), "IVMAN PF", "IVMAN Peak Find Module.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, datafile);

            return result;
        }

        public static bool RunIVManEX(string datafile)
        {
            bool result = false;

            string app = Path.Combine(GetInstallDirectory(IVMAN_OPTION_SUBKEY), "IVMAN EX", "IVMAN Extractor.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, datafile);

            return result;
        }

        public static bool RunZMan(string datafile)
        {
            bool result = false;

            string app = Path.Combine(GetInstallDirectory(ZMAN_SUBKEY), "ZMAN.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, datafile);

            return result;
        }

        public static bool RunDataManager(string arguments)
        {
            bool result = false;

            string app = Path.Combine(GetInstallDirectory(DATAMANAGER_SUBKEY), "Data Manager.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, arguments);

            return result;
        }

        public static bool RunPeakDector(string datafile)
        {
            bool result = false;

            string selfolder = Environment.Is64BitOperatingSystem ? "Analysis(x64)" : "Analysis(x64)";

            string app = Path.Combine(GetInstallDirectory(DATAMANAGER_SUBKEY), selfolder, "PeakDetector.exe");

            if (File.Exists(app))
                result = ExecuteExternalProgram(app, datafile);

            return result;
        }
    }
}
