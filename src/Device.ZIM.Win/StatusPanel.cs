using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Win.Controls;
using ZiveLab.Device.ZIM.Win.Panels;

namespace ZiveLab.Device.ZIM.Win
{
    public partial class StatusPanel : UserControl
    {
        #region Public Properties

        private bool loaded = false;

        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        [EditorBrowsable(EditorBrowsableState.Never)]
        [Bindable(false)]
        [Browsable(false)]
        public ChannelStatus Status
        {
            get { return status; }
            set
            {
                status = value;
                UpdateUI();
            }
        }

        public bool EnableReportMenu
        {
            get { return menuReporting.Visible; }
            set
            {
                menuReporting.Visible = value;
            }
        }
        private ChannelStatus status = new ChannelStatus();

        private int index = 0;
        public int Index
        {
            get { return index; }
            set
            {
                index = value;
                panelCooker.Index = index;
                panelSamples.Index = index;
            }
        }
        public ZParameters Cooker_ZParameters
        {
            get { return panelCooker.Get_Init_ZPara(); }
            set
            {
                
            }
        }

        

        public MenuItem menuCalWith1ohm;
        public MenuItem menuCalGainWith2A;
        public MenuItem menuCalGainWith200mA;
        public MenuItem menuCalGainWith20mA;
        public MenuItem menuCalGainWith2mA;

        public MenuItem menuReportWith2A;
        public MenuItem menuReportWith200mA;
        public MenuItem menuReportWith20mA;
        public MenuItem menuReportWith2mA;

        #endregion Public Properties

        #region Custom Events
        public MenuItem menuConnecting;

        public event EventHandler MenuConnectingClicked;
        protected virtual void OnMenuConnectingClicked(EventArgs e)
        {
            var handler = MenuConnectingClicked;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler StartExperimentClicked;
        protected virtual void OnStartExperimentClicked(EventArgs e)
        {
            var handler = StartExperimentClicked;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler StopExperimentClicked;
        protected virtual void OnStopExperimentClicked(EventArgs e)
        {
            var handler = StopExperimentClicked;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler MeasureNoiseLevelClicked;
        protected virtual void OnMeasureNoiseLevelClicked(EventArgs e)
        {
            var handler = MeasureNoiseLevelClicked;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler RefreshVacClicked;
        protected virtual void OnRefreshVacClicked(EventArgs e)
        {
            var handler = RefreshVacClicked;
            if (handler != null)
                handler(this, e);
        }

        
        public event EventHandler IndexChanged;
        protected virtual void OnIndexChanged(EventArgs e)
        {
            var handler = IndexChanged;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalWith1ohmMenuSelected;
        protected virtual void OnCalWith1ohmMenuSelected(EventArgs e)
        {
            var handler = CalWith1ohmMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalGainWith2AMenuSelected;
        protected virtual void OnCalGainWith2AMenuSelected(EventArgs e)
        {
            var handler = CalGainWith2AMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalGainWith200mAMenuSelected;
        protected virtual void OnCalGainWith200mAMenuSelected(EventArgs e)
        {
            var handler = CalGainWith200mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalGainWith20mAMenuSelected;
        protected virtual void OnCalGainWith20mAMenuSelected(EventArgs e)
        {
            var handler = CalGainWith20mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalGainWith2mAMenuSelected;
        protected virtual void OnCalGainWith2mAMenuSelected(EventArgs e)
        {
            var handler = CalGainWith2mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler ReportWith2AMenuSelected;
        protected virtual void OnReportWith2AMenuSelected(EventArgs e)
        {
            var handler = ReportWith2AMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler ReportWith200mAMenuSelected;
        protected virtual void OnReportWith200mAMenuSelected(EventArgs e)
        {
            var handler = ReportWith200mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler ReportWith20mAMenuSelected;
        protected virtual void OnReportWith20mAMenuSelected(EventArgs e)
        {
            var handler = ReportWith20mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler ReportWith2mAMenuSelected;
        protected virtual void OnReportWith2mAMenuSelected(EventArgs e)
        {
            var handler = ReportWith2mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalInitAt1ohmMenuSelected;
        protected virtual void OnCalInitAt1ohmMenuSelected(EventArgs e)
        {
            var handler = CalInitAt1ohmMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalGainInitAt2AMenuSelected;
        protected virtual void OnCalGainInitAt2AMenuSelected(EventArgs e)
        {
            var handler = CalGainInitAt2AMenuSelected;
            if (handler != null)
                handler(this, e);
        }


        public event EventHandler CalGainInitAt200mAMenuSelected;
        protected virtual void OnCalGainInitAt200mAMenuSelected(EventArgs e)
        {
            var handler = CalGainInitAt200mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalGainInitAt20mAMenuSelected;
        protected virtual void OnCalGainInitAt20mAMenuSelected(EventArgs e)
        {
            var handler = CalGainInitAt20mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalGainInitAt2mAMenuSelected;
        protected virtual void OnCalGainInitAt2mAMenuSelected(EventArgs e)
        {
            var handler = CalGainInitAt2mAMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler CalInitAtAllMenuSelected;
        protected virtual void OnCalInitAtAllMenuSelected(EventArgs e)
        {
            var handler = CalInitAtAllMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler ReadSamplesMenuSelected;
        protected virtual void OnReadSamplesMenuSelected(EventArgs e)
        {
            var handler = ReadSamplesMenuSelected;
            if (handler != null)
                handler(this, e);
        }

       
        public event EventHandler SaveAllMenuSelected;
        protected virtual void OnSaveAllMenuSelected(EventArgs e)
        {
            var handler = SaveAllMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler SaveSamplesMenuSelected;
        protected virtual void OnSaveSamplesMenuSelected(EventArgs e)
        {
            var handler = SaveSamplesMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        public event EventHandler SaveRptMenuSelected;
        protected virtual void OnSaveRptMenuSelected(EventArgs e)
        {
            var handler = SaveRptMenuSelected;
            if (handler != null)
                handler(this, e);
        }

        #endregion Custom Events

        #region Life and Death

        public StatusPanel()
        {
            InitializeComponent();

            DoubleBuffered = true;
        }

        private void StatusPanel_Load(object sender, EventArgs e)
        {
            panelAux.Visible = true;
            panelCookerHeader.Visible = true;
            panelCooker.Visible = true;
            panelSamplesHeader.Visible = false;
            panelStepSamples.Visible = false;
            panelSamples.Visible = false;
            panelSamples.SamplesMode = panelSamplesHeader.SamplesMode;
            panelNoiseLevelHeader.Visible = false;
            panelNoiseLevel.Visible = false;

            var cm = new ContextMenu();

            menuConnecting = new MenuItem("Connect channel");
            menuConnecting.Click += delegate
            {
                OnMenuConnectingClicked(null);
            };
            cm.MenuItems.Add(menuConnecting);

            cm.MenuItems.Add("-");

            menuAbout = new MenuItem("About");
            menuAbout.Click += delegate
            {
                var panelControl = new PanelAbout() { Pairs = Status.About.ToKeyValuePairs() };
                panelControl.BorderStyle = BorderStyle.FixedSingle;
                var popupPanel = new PopupPanel(panelControl);
                popupPanel.ShowingAnimation = PopupAnimations.Slide | PopupAnimations.TopToBottom;
                popupPanel.HidingAnimation = PopupAnimations.Slide | PopupAnimations.BottomToTop;
                popupPanel.AutoSize = true;
                popupPanel.Show(cbMenu);
            };

            cm.MenuItems.Add(menuAbout);

            cm.MenuItems.Add("-");

            menuOpenWebPage = new MenuItem("External Web Function");
            menuOpenWebPage.Click += delegate
            {
                //MessageBox.Show("Reserved");
                try
                {
                    System.Diagnostics.Process.Start(string.Format("http://{0}", Status.About.IPAddress.ToString()));
                }
                catch { }
            };
            cm.MenuItems.Add(menuOpenWebPage);

            cm.MenuItems.Add("-");



            
            var menuCalib = new MenuItem("Calibration");

            menuCalWith1ohm = new MenuItem("Calib parameter with 1Ω."); // 20mA
            menuCalWith1ohm.Click += delegate
            {
                OnCalWith1ohmMenuSelected(null);
            };
            menuCalib.MenuItems.Add(menuCalWith1ohm);
           
            menuCalGainWith2A = new MenuItem("2A gain setting with 10mΩ."); // 2A
            menuCalGainWith2A.Click += delegate
            {
                OnCalGainWith2AMenuSelected(null);
            };
            menuCalib.MenuItems.Add(menuCalGainWith2A);

            menuCalGainWith200mA = new MenuItem("200mA gain setting with 100mΩ."); // 2A
            menuCalGainWith200mA.Click += delegate
            {
                OnCalGainWith200mAMenuSelected(null);
            };
            menuCalib.MenuItems.Add(menuCalGainWith200mA);

            menuCalGainWith20mA = new MenuItem("20mA gain setting with 1Ω."); // 2A
            menuCalGainWith20mA.Click += delegate
            {
                OnCalGainWith20mAMenuSelected(null);
            };
            menuCalib.MenuItems.Add(menuCalGainWith20mA);

            menuCalGainWith2mA = new MenuItem("2mA gain setting with 10Ω."); // 2A
            menuCalGainWith2mA.Click += delegate
            {
                OnCalGainWith2mAMenuSelected(null);
            };
            menuCalib.MenuItems.Add(menuCalGainWith2mA);

            var menuCalInit = new MenuItem("Initialize the calibration key.");

            menuCalInitAt1ohm = new MenuItem("Calib parameter with 1Ω."); 
            menuCalInitAt1ohm.Click += delegate
            {
                OnCalInitAt1ohmMenuSelected(null);
            };
            menuCalInit.MenuItems.Add(menuCalInitAt1ohm);

            menuCalGainInitAt2A = new MenuItem("2A gain setting with 10mΩ."); 
            menuCalGainInitAt2A.Click += delegate
            {
                OnCalGainInitAt2AMenuSelected(null);
            };
            menuCalInit.MenuItems.Add(menuCalGainInitAt2A);

            menuCalGainInitAt200mA = new MenuItem("200mA gain setting with 10mΩ."); 
            menuCalGainInitAt200mA.Click += delegate
            {
                OnCalGainInitAt200mAMenuSelected(null);
            };
            menuCalInit.MenuItems.Add(menuCalGainInitAt200mA);

            menuCalGainInitAt20mA = new MenuItem("20mA gain setting with 1Ω.");
            menuCalGainInitAt20mA.Click += delegate
            {
                OnCalGainInitAt20mAMenuSelected(null);
            };
            menuCalInit.MenuItems.Add(menuCalGainInitAt20mA);


            menuCalGainInitAt2mA = new MenuItem("2mA gain setting with 1Ω.");
            menuCalGainInitAt2mA.Click += delegate
            {
                OnCalGainInitAt2mAMenuSelected(null);
            };
            menuCalInit.MenuItems.Add(menuCalGainInitAt2mA);

            menuCalInit.MenuItems.Add("-");

            menuCalInitAtAll = new MenuItem("At all.");
            menuCalInitAtAll.Click += delegate
            {
                OnCalInitAtAllMenuSelected(null);
            };
            menuCalInit.MenuItems.Add(menuCalInitAtAll);

            menuCalib.MenuItems.Add(menuCalInit);

            cm.MenuItems.Add(menuCalib);


            menuReporting = new MenuItem("Reporting");

            menuReportWith2A = new MenuItem("2A range  with 10mΩ."); // 2A
            menuReportWith2A.Click += delegate
            {
                OnReportWith2AMenuSelected(null);
            };
            menuReporting.MenuItems.Add(menuReportWith2A);

            menuReportWith200mA = new MenuItem("200mA range with 100mΩ."); // 2A
            menuReportWith200mA.Click += delegate
            {
                OnReportWith200mAMenuSelected(null);
            };
            menuReporting.MenuItems.Add(menuReportWith200mA);

            menuReportWith20mA = new MenuItem("20mA range with 1Ω."); // 2A
            menuReportWith20mA.Click += delegate
            {
                OnReportWith20mAMenuSelected(null);
            };
            menuReporting.MenuItems.Add(menuReportWith20mA);

            menuReportWith2mA = new MenuItem("2mA range with 10Ω."); // 2A
            menuReportWith2mA.Click += delegate
            {
                OnReportWith2mAMenuSelected(null);
            };
            menuReporting.MenuItems.Add(menuReportWith2mA);

            menuReporting.MenuItems.Add("-");

            menuSaveRpt = new MenuItem("Save Report data");
            menuSaveRpt.Click += delegate
            {
                var args = new IntEventArgs(Index);
                OnSaveRptMenuSelected(args);
            };

            menuReporting.MenuItems.Add(menuSaveRpt);

            cm.MenuItems.Add(menuReporting);

            cm.MenuItems.Add("-");

            menuReadSamples = new MenuItem("Read Samples");
            menuReadSamples.Click += delegate
            {
                OnReadSamplesMenuSelected(null);
            };
            cm.MenuItems.Add(menuReadSamples);

            cm.MenuItems.Add("-");

            menuSaveAll = new MenuItem("Save Data...");
            menuSaveAll.Click += delegate
            {
                OnSaveAllMenuSelected(null);
            };
            cm.MenuItems.Add(menuSaveAll);

            menuSaveSamples = new MenuItem("Save Samples...");
            menuSaveSamples.Click += delegate
            {
                var args = new IntEventArgs(Index);
                OnSaveSamplesMenuSelected(args);
            };

            
            cm.MenuItems.Add(menuSaveSamples);

            
            cm.MenuItems.Add("-");

            var menuView = new MenuItem("View");

            menuViewSamples = new MenuItem("Samples");
            menuViewSamples.Click += delegate
            {
                menuViewSamples.Checked = !menuViewSamples.Checked;
                panelSamplesHeader.Visible = menuViewSamples.Checked;
            };
            menuView.MenuItems.Add(menuViewSamples);

            menuViewNoiseLevl = new MenuItem("Noise Level");
            menuViewNoiseLevl.Click += delegate
            {
                menuViewNoiseLevl.Checked = !menuViewNoiseLevl.Checked;
                panelNoiseLevelHeader.Visible = menuViewNoiseLevl.Checked;
            };
            menuView.MenuItems.Add(menuViewNoiseLevl); 
            cm.MenuItems.Add(menuView);

            cm.Popup += delegate
            {
                menuCalWith1ohm.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Finished
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);
                menuCalGainWith2A.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);
                menuCalGainWith200mA.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);
                menuCalGainWith20mA.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);
                menuCalGainWith2mA.Enabled = (Status.State == State.Idle
                                           || Status.State == State.Finished
                                           || Status.State == State.Stopped
                                           || Status.State == State.DetecteErrorCommZIM
                                           || Status.State == State.DetecteFailedControl
                                           || Status.State == State.DetecteNotYetCalibrated);

                menuCalInitAt1ohm.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);

                menuCalGainInitAt2A.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);

                menuCalGainInitAt200mA.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);

                menuCalGainInitAt20mA.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);

                menuCalGainInitAt2mA.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);

                menuCalInitAtAll.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);

                menuReadSamples.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated);

                menuSaveAll.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated)
                    && Status.ZData != null
                    && Status.ZData.Count > 0;

                menuSaveSamples.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated)
                    && Status.ZData != null
                    && Status.ZData.Count > 0
                    && Index < Status.ZData.Count;

                menuSaveRpt.Enabled = (Status.State == State.Idle
                                            || Status.State == State.Stopped
                                            || Status.State == State.DetecteErrorCommZIM
                                            || Status.State == State.DetecteFailedControl
                                            || Status.State == State.DetecteNotYetCalibrated)
                    && Status.ZData != null
                    && Status.ZData.Count > 0;

                menuViewSamples.Enabled = (Status != null
                    && Status.ZData != null && Status.ZData.Count > 0
                    && Status.ZData[Index].VoltageSamples != null
                    && Status.ZData[Index].VoltageSamples.Count > 0);

                if (!menuViewSamples.Enabled)
                    menuViewSamples.Text = "Samples - Do Read All Again to enable it.";
                else
                    menuViewSamples.Text = "Samples";

                menuViewSamples.Checked = panelSamplesHeader.Visible;
                
                menuViewNoiseLevl.Checked = panelNoiseLevelHeader.Visible;
            };

            cbMenu.ContextMenu = cm;

            cbMenu.MouseClick += (s, args) =>
            {
                var control = s as CheckBox;
                control.Checked = false;

                if (args.Button == MouseButtons.Left)
                {
                    control.ContextMenu.Show(control, new Point(args.X, args.Y)); // PointToScreen(new Point(e.X, e.Y)));
                }
            };
            
            loaded = true;
        }

        #endregion Life and Death

        #region Private Methods

        private MenuItem menuAbout;
        private MenuItem menuOpenWebPage;
     
        private MenuItem menuCalInitAt1ohm;
        private MenuItem menuCalGainInitAt2A;
        private MenuItem menuCalGainInitAt200mA;
        private MenuItem menuCalGainInitAt20mA;
        private MenuItem menuCalGainInitAt2mA;

        private MenuItem menuReporting;
        private MenuItem menuCalInitAtAll;

        private MenuItem menuReadSamples;
        private MenuItem menuSaveAll;
        private MenuItem menuSaveSamples;
        private MenuItem menuSaveRpt;
        private MenuItem menuViewSamples;
        private MenuItem menuViewNoiseLevl;

        private void UpdateUI()
        {
            if (!loaded) return;

            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();

            panelAux.Status = Status;
            panelCookerHeader.Status = Status;
            panelCooker.Status = Status;
            panelNoiseLevelHeader.Status = Status;
            panelNoiseLevel.Status = Status;

            if (Status == null || Status.State == State.NotAssigned)
            {
                menuReadSamples.Enabled = false;
                menuSaveAll.Enabled = false;
                menuSaveSamples.Enabled = false;
                menuSaveRpt.Enabled = false;
                return;
            }

            if (Status.State == State.Running || Status.State == State.InitDelay || Status.State == State.Finished || Status.State == State.Stopped)
            {
                // panelStepSamples
                panelStepSamples.Visible = true;
                panelStepSamples.Samples = Status.StepSamples;

                // panelSamples
                panelSamplesHeader.Visible = false;

                // panelNoiseLevel
                panelNoiseLevelHeader.Visible = false;
            }
            else if (Status.State == State.RunningNoiseLevel)
            {
                // panelStepSamples
                panelStepSamples.Visible = false;
                panelStepSamples.Samples = null;
            }
            else
            {
                // panelStepSamples
                panelStepSamples.Visible = false;
                panelStepSamples.Samples = null;

                panelSamples.ZData = Status.ZData;
            }
            
            stopwatch.Stop();
            Debug.WriteLine("Time elapsed for updating UI in StatusPanel: {0}", stopwatch.Elapsed);
        }

        #endregion Private Methods

        #region Event - PanelCookerHeader

        private void panelCookerHeader_EnabledChanged(object sender, EventArgs e)
        {
            var panel = sender as PanelCookerHeader;
            if (!panel.Enabled)
            {
                panelCooker.Visible = false;
            }
        }

        private void panelCookerHeader_CollapsePanel(object sender, EventArgs e)
        {
            panelCooker.Visible = false;
        }

        private void panelCookerHeader_ExpandPanel(object sender, EventArgs e)
        {
            panelCooker.Visible = true;
        }

        #endregion Event - PanelCookerHeader

        #region event - PanelCooker

        private void panelCooker_StartExperimentClicked(object sender, EventArgs e)
        {
            OnStartExperimentClicked(e);
        }

        private void panelCooker_StopExperimentClicked(object sender, EventArgs e)
        {
            OnStopExperimentClicked(e);
        }

        private void panelCooker_RefreshVacClicked(object sender, EventArgs e)
        {
            OnRefreshVacClicked(e);
        }

        private void panelCooker_IndexChanged(object sender, EventArgs e)
        {
            var idx = e as IntEventArgs;
           
            panelSamples.Index = idx.Value;

            OnIndexChanged(e);
        }

        #endregion event - PanelCooker

        #region Event - PanelSamplesHeader

        private void panelSamplesHeader_EnabledChanged(object sender, EventArgs e)
        {
            var panel = sender as PanelSamplesHeader;

            if (!panel.Enabled)
            {
                panelStepSamples.Visible = false;
                panelSamples.Visible = false;
            }
        }

        private void panelSamplesHeader_VisibleChanged(object sender, EventArgs e)
        {
            var panel = sender as PanelSamplesHeader;

            if (!panel.Visible)
            {
                panelStepSamples.Visible = false;
                panelSamples.Visible = false;
            }
        }

        private void panelSamplesHeader_ExpandPanel(object sender, EventArgs e)
        {
            var panel = sender as PanelSamplesHeader;

            panelSamples.Visible = true;
        }

        private void panelSamplesHeader_CollapsePanel(object sender, EventArgs e)
        {
            panelStepSamples.Visible = false;
            panelSamples.Visible = false;
        }

        private void panelSamplesHeader_SamplesModeChanged(object sender, EventArgs e)
        {
            SamplesModeEventArgs args = e as SamplesModeEventArgs;
            panelSamples.SamplesMode = args.Value;
        }

        #endregion Event - PanelSamplesHeader

        #region Event - PanelNoiseLevelHeader

        private void panelNoiseLevelHeader_EnabledChanged(object sender, EventArgs e)
        {
            var panel = sender as PanelNoiseLevelHeader;

            if (!panel.Enabled)
            {
                panelNoiseLevel.Visible = false;
            }
        }

        private void panelNoiseLevelHeader_VisibleChanged(object sender, EventArgs e)
        {
            var panel = sender as PanelNoiseLevelHeader;

            if (!panel.Visible)
            {
                panelNoiseLevel.Visible = false;
            }
        }

        private void panelNoiseLevelHeader_ExpandPanel(object sender, EventArgs e)
        {
            var panel = sender as PanelNoiseLevelHeader;

            panelNoiseLevel.Visible = true;
        }

        private void panelNoiseLevelHeader_CollapsePanel(object sender, EventArgs e)
        {
            panelNoiseLevel.Visible = false;
        }

        private void panelNoiseLevel_MeasureNoiseLevelClicked(object sender, EventArgs e)
        {
            OnMeasureNoiseLevelClicked(e);
        }


        #endregion Event - PanelNoiseLevelHeader

        private void panelCooker_ReadSamplesClicked(object sender, EventArgs e)
        {
            OnReadSamplesMenuSelected(e);
        }
    }
}
