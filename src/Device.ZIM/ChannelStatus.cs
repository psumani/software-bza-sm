using MathNet.Numerics;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Numerics;
using System.Text;
using ZiveLab.Device.ZIM.Packets;
using ZiveLab.Device.ZIM.Utilities;

namespace ZiveLab.Device.ZIM
{
    public class ChannelStatus : INotifyPropertyChanged
    {
        #region Public Properties

        DeviceInfo about = new DeviceInfo();
        public DeviceInfo About
        {
            get { return about; }
            set
            {
                if (about != value)
                {
                    about = value;
                    OnPropertyChanged("About");
                }
            }
        }

        int calibMode = 0;
        public int CalibMode
        {
            get { return calibMode; }
            set
            {
                if (calibMode != value)
                {
                    calibMode = value;
                    OnPropertyChanged("CalibrationMode");
                }
            }
        }

        public bool IsValid { get { return State != State.NotAssigned; } }

        State state = State.NotAssigned;
        public State State
        {
            get { return state; }
            set
            {
                if (state != value)
                {
                    state = value;
                    OnPropertyChanged("State");
                }
            }
        }
        
        public bool IsValideStat { get { return eisstate != EisState.none; } }

        EisState eisstate = EisState.none;
        public EisState Eisstate
        {
            get { return eisstate; }
            set
            {
                if (eisstate != value)
                {
                    eisstate = value;
                    OnPropertyChanged("EisState");
                }
            }
        }

        VoltageRange voltageRange = VoltageRange.NotAssigned;
        public VoltageRange VoltageRange
        {
            get { return voltageRange; }
            set
            {
                if (voltageRange != value)
                {
                    voltageRange = value;
                    OnPropertyChanged("VoltageRange");
                }
            }
        }


        CurrentRange currentRange = CurrentRange.NotAssigned;
        public CurrentRange CurrentRange
        {
            get { return currentRange; }
            set
            {
                if (currentRange != value)
                {
                    currentRange = value;
                    OnPropertyChanged("CurrentRange");
                }
            }
        }

        double auxVoltage = double.NaN;
        public double AuxVoltage // [V]
        {
            get { return auxVoltage; }
            set
            {
                if (auxVoltage != value)
                {
                    auxVoltage = value;
                    OnPropertyChanged("AuxVoltage");
                }
            }
        }

        double auxTemperature = double.NaN;
        public double AuxTemperature // [°C]
        {
            get { return auxTemperature; }
            set
            {
                if (auxTemperature != value)
                {
                    auxTemperature = value;
                    OnPropertyChanged("AuxTemperature");
                }
            }
        }

        int steps;
        public int Steps // total steps
        {
            get { return steps; }
            set
            {
                if (steps != value)
                {
                    steps = value;
                    OnPropertyChanged("Steps");
                }
            }
        }

        TimeSpan elapsedTime;
        public TimeSpan ElapsedTime
        {
            get { return elapsedTime; }
            set
            {
                if (elapsedTime != value)
                {
                    elapsedTime = value;
                    OnPropertyChanged("ElapsedTime");
                }
            }
        }

        int currentStep;
        public int CurrentStep // current step
        {
            get { return currentStep; }
            set
            {
                if (currentStep != value)
                {
                    currentStep = value;
                    OnPropertyChanged("CurrentStep");
                }
            }
        }

        double stepFrequency;
        public double StepFrequency // frequency of current step
        {
            get { return stepFrequency; }
            set
            {
                if (stepFrequency != value)
                {
                    stepFrequency = value;
                    OnPropertyChanged("StepFrequency");
                }
            }
        }

        StepSamples stepSamples;
        public StepSamples StepSamples // real time voltage/current samples, max 64 points
        {
            get { return stepSamples; }
            set
            {
                if (stepSamples != value)
                {
                    stepSamples = value;
                    OnPropertyChanged("StepSamples");
                }
            }
        }

        double lastFrequency;
        public double LastFrequency // last frequency measured 
        {
            get { return lastFrequency; }
            set
            {
                if (lastFrequency != value)
                {
                    lastFrequency = value;
                    OnPropertyChanged("LastFrequency");
                }
            }
        }

        Complex lastImpedance;
        public Complex LastImpedance // last impedance measured
        {
            get { return lastImpedance; }
            set
            {
                if (lastImpedance != value)
                {
                    lastImpedance = value;
                    OnPropertyChanged("LastImpedance");
                }
            }
        }

        NoiseLevel noiseLevel = new NoiseLevel();
        public NoiseLevel NoiseLevel
        {
            get { return noiseLevel; }
            set
            {
                if (noiseLevel != value)
                {
                    noiseLevel = value;
                    OnPropertyChanged("NoiseLevel");
                }
            }
        }

        DateTime started;
        public DateTime Started
        {
            get { return started; }
            set
            {
                if (started != value)
                {
                    started = value;
                    OnPropertyChanged("Started");
                }
            }
        }

        ObservableCollection<ZItem> zData = new ObservableCollection<ZItem>(); 
        public ObservableCollection<ZItem> ZData // to notify dependents when its contents are changed
        {
            get { return zData; }
        }

        BindingList<DisplayZItem> bindingZData;
        public BindingList<DisplayZItem> BindingZData
        {
            get { return bindingZData; }
        }

        public bool IsValidParameters
        {
            get
            {
                return ZParameters != null
                    && ZParameters.Frequencies != null
                    && ZParameters.Frequencies.Count > 0;
            }
        }

        ZParameters zParameters;
        public ZParameters ZParameters
        {
            get { return zParameters; }
            set
            {
                if (zParameters != value)
                {
                    zParameters = value;
                    OnPropertyChanged("ZParameters");
                }
            }
        }

        #endregion Public Properties

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string PropertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
            }
        }

        #endregion INotifyPropertyChanged Members

        public eDeviceType mType;

        public ChannelStatus()
        {
            mType = eDeviceType.ZIM;
            eisstate = EisState.none;
            State = State.NotAssigned;
            VoltageRange = VoltageRange.NotAssigned;
            CurrentRange = CurrentRange.NotAssigned;
            AuxVoltage = double.NaN;
            AuxTemperature = double.NaN;

            Steps = 0;
            ElapsedTime = new TimeSpan(0);
            CurrentStep = 0;
            StepFrequency = double.NaN;
            LastFrequency = double.NaN;
            LastImpedance = new Complex();

            ZData.CollectionChanged += delegate
            {
                bindingZData = GetBindingZData();
                OnPropertyChanged("ZData");                
            };
        }

        #region Public Methods

        /// <summary>
        /// Set device information
        /// </summary>
        public void SetProperty(stEthernetCfg mConnStat, stSystemConfig mSysCfg, st_zim_rnginf ranges)
        {
            About = new DeviceInfo(mConnStat, mSysCfg, ranges);
        }

        /// <summary>
        /// Set Status and measurement related
        /// </summary>
        public void SetProperty(st_zim_eis_status packet)
        {
            // Set EisState
            eisstate = (EisState)packet.status;

            // Set State
            switch (packet.teststatus)
            {
                case (DeviceConstants.EIS_TESTSTATUS_RUN):
                    if (packet.status <= DeviceConstants.EIS_STATUS_ONDELAY)
                    {
                        State = State.InitDelay;
                    }
                    else
                    {
                        State = State.Running;
                    }
                    break;

                case (DeviceConstants.EIS_TESTSTATUS_FIN):
                    State = State.Finished;
                    break;

                case (DeviceConstants.EIS_TESTSTATUS_STOP):
                    State = State.Stopped;
                    break;

                case (DeviceConstants.EIS_TESTSTATUS_NCRUN):
                    State = State.RunningNoiseLevel;
                    break;
                case (DeviceConstants.EIS_TESTSTATUS_OVERT):
                    State = State.DetectedOverTemperatue;
                    break;
                case (DeviceConstants.EIS_TESTSTATUS_FAIL):
                    State = State.DetectedFaild;
                    break;
                case (DeviceConstants.EIS_TESTSTATUS_NOTRDY):
                    State = State.DetectedNotYetReady;
                    break;
                case (DeviceConstants.EIS_TESTSTATUS_NOZIM):
                    State = State.DetecteNoZIM;
                    break;
                case (DeviceConstants.EIS_TESTSTATUS_REFRESHVAC):
                    State = State.RefreshVac;
                    break;
                case (DeviceConstants.EIS_TESTSTATUS_NOTCALIB):
                    State = State.DetecteNotYetCalibrated;
                    break;
                case (DeviceConstants.EIS_TESTSTATUS_ERRCOMMZIM):
                    State = State.DetecteErrorCommZIM;
                    break;
                case (DeviceConstants.EIS_TESTSTATUS_CONTFAIL):
                    State = State.DetecteFailedControl;
                    break;
                default:
                case (DeviceConstants.EIS_TESTSTATUS_NONE):
                    State = State.Idle;
                    break;
            }

            // Set voltage range
            VoltageRange = (VoltageRange)packet.vdc_rngno;

            // Set current range
            CurrentRange = (CurrentRange)packet.iac_rngno;

            // Set step
            Steps = packet.freqcount;
            CurrentStep = packet.freqindex;
            StepFrequency = packet.freq;
            ElapsedTime = TimeSpan.FromMilliseconds(packet.runTimeStamp);

            var lastStep = -1;
            if (State == State.Running || State == State.InitDelay || State == State.Stopped)
            {
                lastStep = CurrentStep - 1;
            }
            else if (State == State.Finished)
            {
                lastStep = CurrentStep;
            }
            if (ZData != null && lastStep < ZData.Count && lastStep > 0)
            {
                LastFrequency = ZData[lastStep].Frequency;
                LastImpedance = ZData[lastStep].Impedance;
            }
            else
            {
                LastFrequency = double.NaN;
                LastImpedance = new Complex();
            }

            if (State != State.Idle)
            {
                StepSamples = new StepSamples(packet.Real_val);                
            }
            else
            {
                StepSamples = null;
            }

            // Set noise level
            NoiseLevel.NoiseIRange = (CurrentRange)(packet.RmsInfo.IRange);
            NoiseLevel.NoiseVoltage = (NoiseLevel.NoiseIRange != CurrentRange.NotAssigned)
                ? packet.RmsInfo.Vrms
                : double.NaN;
            NoiseLevel.NoiseCurrent = (NoiseLevel.NoiseIRange != CurrentRange.NotAssigned)
                ? packet.RmsInfo.Irms
                : double.NaN;
            
            // Set Started
            Started = new DateTime(packet.rtc.tick * TimeSpan.TicksPerMillisecond); // note that rtc.tick is milliseconds not nanoseconds
        }

        /// <summary>
        /// Set AuxVoltage or battery voltage.
        /// </summary>
        public void SetProperty(st_zim_adc_vdc packet)
        {
            if (packet.adcval == 0x800000) // not yet initialized
                AuxVoltage = double.NaN;
            else
                AuxVoltage = packet.value;
        }

        /// <summary>
        /// Set AuxTemperature measured.
        /// </summary>
        public void SetProperty(st_zim_rtd_data packet)
        {
            if (packet.fault != 0 || packet.adcval == 0x4000)  // not yet initialized or fault
                AuxTemperature = double.NaN;
            else
                AuxTemperature = packet.Tvalue;
        }

        /// <summary>
        /// Set ZData measured.
        /// </summary>
        public void SetProperty(st_zim_eis_item[] packet)
        {
            ZData.Clear();

            foreach (var item in packet)
            {
                if (item.info.freq > 0)
                {
                    var data = new ZItem(item);
                    ZData.Add(data);
                }
                else
                {
                    break;
                }
            }
        }

        public void SetProperty(st_zim_eis_item packet, int index)
        {
            if (ZData == null || index < 0 || index >= ZData.Count)
                return;

            //if (State == State.Running || State == State.InitDelay || State == State.Finished || State == State.Stopped)
                ZData[index] = new ZItem(packet);
        }

        /// <summary>
        /// Set ZData with raw samples.
        /// </summary>
        public void SetProperty(st_zim_eis_item[] packet, st_zim_eis_raw[] subPacket)
        {
            ZData.Clear();// = new ObservableCollection<ZItem>();

            for (int i = 0; i < packet.Length; i++)
            {
                if (packet[i].info.freq > 0)
                {
                    var data = new ZItem(packet[i], subPacket[i].raw_val);
                    ZData.Add(data);
                }
                else
                {
                    break;
                }
            }
        }

        /// <summary>
        /// Set parameters to test EIS.
        /// </summary>
        public void SetProperty(st_zim_eis_cond packet)
        {
            ZParameters = new ZParameters(packet);
        }

        #endregion Public Methods

        #region Private Methods

        private BindingList<DisplayZItem> GetBindingZData()
        {
            if (ZData == null) return null;
            if (ZData.Count < 1) return new BindingList<DisplayZItem>();

            var list = new BindingList<DisplayZItem>();
            for (int i = 0; i < ZData.Count; i++)
            {
                var item = ZData[i].ToDisplayZItem(i + 1);
                list.Add(item);
            }

            return list;
        }

        #endregion Private Methods
    }

    public class DeviceInfo : INotifyPropertyChanged
    {
        #region Public Properties

        string hostName;
        public string HostName
        {
            get { return hostName; }
            set
            {
                if (hostName != value)
                {
                    hostName = value;
                    OnPropertyChanged("HostName");
                }
            }
        }

        string model;
        public string Model
        {
            get { return model; }
            set
            {
                if (model != value)
                {
                    model = value;
                    OnPropertyChanged("Model");
                }
            }
        }

        string configureIP;
        public string ConfigureIP
        {
            get { return configureIP; }
            set
            {
                if (configureIP != value)
                {
                    configureIP = value;
                    OnPropertyChanged("ConfigureIP");
                }
            }
        }

        PhysicalAddress physicalAddress;
        public PhysicalAddress PhysicalAddress
        {
            get { return physicalAddress; }
            set
            {
                if (physicalAddress != value)
                {
                    physicalAddress = value;
                    OnPropertyChanged("PhysicalAddress");
                }
            }
        }

        IPAddress iPAddress;
        public IPAddress IPAddress
        {
            get { return iPAddress; }
            set
            {
                if (iPAddress != value)
                {
                    iPAddress = value;
                    OnPropertyChanged("IPAddress");
                }
            }
        }

        IPAddress router;
        public IPAddress Router // Gateway
        {
            get { return router; }
            set
            {
                if (router != value)
                {
                    router = value;
                    OnPropertyChanged("Router");
                }
            }
        }

        IPAddress subnetMask;
        public IPAddress SubnetMask
        {
            get { return subnetMask; }
            set
            {
                if (subnetMask != value)
                {
                    subnetMask = value;
                    OnPropertyChanged("SubnetMask");
                }
            }
        }

        int port;
        public int Port
        {
            get { return port; }
            set
            {
                if (port != value)
                {
                    port = value;
                    OnPropertyChanged("Port");
                }
            }
        }

        string serialNumber;
        public string SifSerialNumber
        {
            get { return serialNumber; }
            set
            {
                if (serialNumber != value)
                {
                    serialNumber = value;
                    OnPropertyChanged("SerialNumber");
                }
            }
        }

        string sifBoardVersion;
        public string SifBoardVersion
        {
            get { return sifBoardVersion; }
            set
            {
                if (sifBoardVersion != value)
                {
                    sifBoardVersion = value;
                    OnPropertyChanged("SifBoardVersion");
                }
            }
        }

        string sifFirmwareVersion;
        public string SifFirmwareVersion
        {
            get { return sifFirmwareVersion; }
            set
            {
                if (sifFirmwareVersion != value)
                {
                    sifFirmwareVersion = value;
                    OnPropertyChanged("SifFirmwareVersion");
                }
            }
        }

        string zimSerialNumber;
        public string ZimSerialNumber
        {
            get { return zimSerialNumber; }
            set
            {
                if (zimSerialNumber != value)
                {
                    zimSerialNumber = value;
                    OnPropertyChanged("ZimSerialNumber");
                }
            }
        }

        string zimBoardVersion;
        public string ZimBoardVersion // TODO
        {
            get { return zimBoardVersion; }
            set
            {
                if (zimBoardVersion != value)
                {
                    zimBoardVersion = value;
                    OnPropertyChanged("ZimBoardVersion");
                }
            }
        }

        string zimFirmwareVersion;
        public string ZimFirmwareVersion
        {
            get { return zimFirmwareVersion; }
            set
            {
                if (zimFirmwareVersion != value)
                {
                    zimFirmwareVersion = value;
                    OnPropertyChanged("ZimFirmwareVersion");
                }
            }
        }

        

        #endregion Public Properties

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string PropertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
        }

        #endregion INotifyPropertyChanged Members

        public DeviceInfo()
        { }

        public DeviceInfo(stEthernetCfg mConnStat, stSystemConfig mSysCfg, st_zim_rnginf ranges)
        {
            PhysicalAddress = new PhysicalAddress(mConnStat.Mac);
            IPAddress = new IPAddress(mConnStat.IpAddress);
            Router = new IPAddress(mConnStat.Gateway);
            SubnetMask = new IPAddress(mConnStat.SubnetMask);
            Port = mConnStat.Port;
            HostName = Encoding.Default.GetString(mConnStat.hostname);
            ConfigureIP = (mConnStat.dhcp == 1) ? "Using DHCP" : "Manually";
            Model = "Zive ZIM-SIF";
            SifSerialNumber = Encoding.Default.GetString(mSysCfg.mSIFCfg.Serial);

            var sifBDver = new byte[4] {
                mSysCfg.mSIFCfg.BoardVersion.Major,
                mSysCfg.mSIFCfg.BoardVersion.Minor,
                mSysCfg.mSIFCfg.BoardVersion.Revision,
                mSysCfg.mSIFCfg.BoardVersion.Build };
            SifBoardVersion = (new IPAddress(sifBDver)).ToString(); // IPv4 dotted-quad

            var sifFWver = new byte[4] {
                mSysCfg.mSIFCfg.FirmwareVersion.Major,
                mSysCfg.mSIFCfg.FirmwareVersion.Minor,
                mSysCfg.mSIFCfg.FirmwareVersion.Revision,
                mSysCfg.mSIFCfg.FirmwareVersion.Build };
            SifFirmwareVersion = (new IPAddress(sifFWver)).ToString(); // IPv4 dotted-quad

            ZimSerialNumber = mSysCfg.mZimCfg.GetSerialNumber();
            ZimFirmwareVersion = mSysCfg.mZimCfg.GetFirmwareVer();
            ZimBoardVersion = mSysCfg.mZimCfg.GetBoardVer();
        }

        public List<KeyValuePair<string, string>> ToKeyValuePairs()
        {
            var list = new List<KeyValuePair<string, string>>();

            list.Add(new KeyValuePair<string, string>("Host Name", this.HostName));
            list.Add(new KeyValuePair<string, string>("Model", this.Model));

            list.Add(new KeyValuePair<string, string>("Configure IP", this.ConfigureIP));
            list.Add(new KeyValuePair<string, string>("IP Address", this.IPAddress.ToString()));
            list.Add(new KeyValuePair<string, string>("Subnet Mask", this.SubnetMask.ToString()));
            list.Add(new KeyValuePair<string, string>("Router", this.Router.ToString()));
            list.Add(new KeyValuePair<string, string>("Port", this.Port.ToString()));

            var mac = string.Join(":", this.PhysicalAddress.GetAddressBytes().Select(b => b.ToString("X2")));
            list.Add(new KeyValuePair<string, string>("Mac Address", mac));

            list.Add(new KeyValuePair<string, string>("SIF S/N", this.SifSerialNumber));
            list.Add(new KeyValuePair<string, string>("SIF Board", this.SifBoardVersion));
            list.Add(new KeyValuePair<string, string>("SIF Firmware", this.SifFirmwareVersion));
            list.Add(new KeyValuePair<string, string>("ZIM S/N", this.ZimSerialNumber));
            list.Add(new KeyValuePair<string, string>("ZIM Board", this.ZimBoardVersion));
            list.Add(new KeyValuePair<string, string>("ZIM Firmware", this.ZimFirmwareVersion));

            return list;
        }
    }

    public class ZItem : INotifyPropertyChanged
    {
        #region Public Properties

        double time;
        public double Time
        {
            get { return time; }
            set
            {
                if (time != value)
                {
                    time = value;
                    OnPropertyChanged("Time");
                }
            }
        }

        double frequency;
        public double Frequency
        {
            get { return frequency; }
            set
            {
                if (frequency != value)
                {
                    frequency = value;
                    OnPropertyChanged("Frequency");
                }
            }
        }

        Complex impedance;
        public Complex Impedance
        {
            get { return impedance; }
            set
            {
                if (impedance != value)
                {
                    impedance = value;
                    OnPropertyChanged("Impedance");
                }
            }
        }

        double auxVoltage;
        public double AuxVoltage // Battery voltage
        {
            get { return auxVoltage; }
            set
            {
                if (auxVoltage != value)
                {
                    auxVoltage = value;
                    OnPropertyChanged("Voltage");
                }
            }
        }

        double auxTemperature;
        public double AuxTemperature
        {
            get { return auxTemperature; }
            set
            {
                if (auxTemperature != value)
                {
                    auxTemperature = value;
                    OnPropertyChanged("Temperature");
                }
            }
        }

        CurrentRange currentRange;
        public CurrentRange CurrentRange
        {
            get { return currentRange; }
            set
            {
                if (currentRange != value)
                {
                    currentRange = value;
                    OnPropertyChanged("IRangeIdx");
                }
            }
        }

        int cycle;
        public int Cycle
        {
            get { return cycle; }
            set
            {
                if (cycle != value)
                {
                    cycle = value;
                    OnPropertyChanged("Cycle");
                }
            }
        }

        double samplingRate;
        public double SamplingRate
        {
            get { return samplingRate; }
            set
            {
                if (samplingRate != value)
                {
                    samplingRate = value;
                    OnPropertyChanged("SamplingRate");
                }
            }
        }

        ObservableCollection<double> voltageSamples = new ObservableCollection<double>();
        public ObservableCollection<double> VoltageSamples
        {
            get { return voltageSamples; }
        }

        ObservableCollection<double> currentSamples = new ObservableCollection<double>();
        public ObservableCollection<double> CurrentSamples
        {
            get { return currentSamples; }
        }

        #endregion Public Properties

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string PropertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
        }

        #endregion INotifyPropertyChanged Members

        #region Life and Death

        public ZItem()
        {
            VoltageSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("VoltageSamples");
            };
            CurrentSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("CurrentSamples");
            };
        }

        public ZItem(st_zim_eis_item packet)
        {
            VoltageSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("VoltageSamples");
            };
            CurrentSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("CurrentSamples");
            };

            Initialize(packet);
        }

        public ZItem(st_zim_eis_item packet, st_zim_eis_raw_data rawData)
        {
            VoltageSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("VoltageSamples");
            };
            CurrentSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("CurrentSamples");
            };

            Initialize(packet);
            SetRawData(rawData);
        }

        #endregion Life and Death

        #region Public Methods

        public void SetRawData(st_zim_eis_raw_data packet)
        {
            VoltageSamples.Clear();
            CurrentSamples.Clear();

            foreach (var item in packet.item)
            {
                VoltageSamples.Add(item.vac);
                CurrentSamples.Add(item.iac);
            }

            SamplingRate = Frequency * (double)VoltageSamples.Count / Cycle;
        }

        public DisplayZItem ToDisplayZItem(int idx = -1)
        {
            var item = new DisplayZItem()
            {
                Index = idx,
                Time = Time,
                Freq = Frequency,
                Zreal = Impedance.Real,
                Zimag = Impedance.Imaginary,
                Zmod = Impedance.Magnitude,
                Zphase = Impedance.Phase * 180.0 / Constants.Pi,
                Idc = -0.5 * GetCurrentRangeValue(CurrentRange),
                Vdc = AuxVoltage,
                Temp = AuxTemperature,
                IRange = GetCurrentRangeValue(CurrentRange),
            };

            return item;
        }

        #endregion Public Methods

        #region Private Methods

        private void Initialize(st_zim_eis_item packet)
        {
            Time = packet.info.msEnd * 0.001; // in [seconds]
            Frequency = packet.info.freq;
            if (Frequency == 0)
            {
                Frequency = double.NaN;
            }
            Impedance = new Complex(packet.zdata.real, packet.zdata.img);
            if (Impedance.Magnitude == 0)
            {
                Impedance = new Complex(double.NaN, double.NaN);
            }
            AuxVoltage = packet.info.vdc.end;
            AuxTemperature = packet.info.rtd.end;
            CurrentRange = (CurrentRange)packet.info.iacrng;

            Cycle = packet.info.cycle;
        }

        private double GetCurrentRangeValue(CurrentRange iRange)
        {
            switch (iRange)
            {
                default:
                case CurrentRange.I2A:
                    return 2.0;
                case CurrentRange.I400mA:
                    return 0.4;
                case CurrentRange.I200mA:
                    return 0.2;
                case CurrentRange.I40mA:
                    return 0.04;
                case CurrentRange.I20mA:
                    return 0.02;
                case CurrentRange.I4mA:
                    return 0.004;
                case CurrentRange.I2mA:
                    return 0.002;
                case CurrentRange.I400uA:
                    return 0.0004;
            }
        }

        #endregion Private Methods

    }

    public class DisplayZItem : INotifyPropertyChanged
    {
        [DisplayName("Pt")]
        public double Index { get { return index; } set { index = value; OnPropertyChanged("Index"); } }
        double index;

        [DisplayName("Time (s)")]
        [DisplayFormat(DataFormatString = "{0:#0.000}")]
        public double Time { get { return time; } set { time = value; OnPropertyChanged("Time"); } }
        double time;

        [DisplayName("Freq (Hz)")]
        [DisplayFormat(DataFormatString = "{0:G6}")]
        public double Freq { get { return frequency; } set { frequency = value; OnPropertyChanged("Frequency"); } }
        double frequency;

        [DisplayName("Zreal (ohm)")]
        [DisplayFormat(DataFormatString = "{0:G6}")]
        public double Zreal { get { return zreal; } set { zreal = value; OnPropertyChanged("Zreal"); } }
        double zreal;

        [DisplayName("Zimag (ohm)")]
        [DisplayFormat(DataFormatString = "{0:G6}")]
        public double Zimag { get { return zimag; } set { zimag = value; OnPropertyChanged("Zimag"); } }
        double zimag;

        [DisplayName("Zmod (ohm)")]
        [DisplayFormat(DataFormatString = "{0:G6}")]
        public double Zmod { get { return zmod; } set { zmod = value; OnPropertyChanged("Zmod"); } }
        double zmod;

        [DisplayName("Zphase (°)")]
        [DisplayFormat(DataFormatString = "{0:#0.000}")]
        public double Zphase { get { return zphase; } set { zphase = value; OnPropertyChanged("Zphase"); } }
        double zphase;

        [DisplayName("Idc (V)")]
        [DisplayFormat(DataFormatString = "{0}")]
        public double Idc { get { return idc; } set { idc = value; OnPropertyChanged("Idc"); } }
        double idc;

        [DisplayName("Vdc (V)")]
        [DisplayFormat(DataFormatString = "{0:#0.00}")]
        public double Vdc { get { return vdc; } set { vdc = value; OnPropertyChanged("Vdc"); } }
        double vdc;

        [DisplayName("Temp (°C)")]
        [DisplayFormat(DataFormatString = "{0:#0.00}")]
        public double Temp { get { return temperature; } set { temperature = value; OnPropertyChanged("Temperature"); } }
        double temperature;

        [DisplayName("IRange (A)")]
        [DisplayFormat(DataFormatString = "{0}")]
        public double IRange { get { return iRange; } set { iRange = value; OnPropertyChanged("IRange"); } }
        double iRange;

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string PropertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
        }

        #endregion INotifyPropertyChanged Members

        public DisplayZItem()
        { }
    }

    public class ZParameters : INotifyPropertyChanged
    {
        #region Public Properties

        double initialFrequency;
        public double InitialFrequency
        {
            get { return initialFrequency; }
            set
            {
                if (initialFrequency != value)
                {
                    initialFrequency = value;
                    OnPropertyChanged("InitialFrequency");
                }
            }
        }

        double finalFrequency;
        public double FinalFrequency
        {
            get { return finalFrequency; }
            set
            {
                if (finalFrequency != value)
                {
                    finalFrequency = value;
                    OnPropertyChanged("FinalFrequency");
                }
            }
        }

        int density;
        public int Density
        {
            get { return density; }
            set
            {
                if (density != value)
                {
                    density = value;
                    OnPropertyChanged("Density");
                }
            }
        }

        int iteration;
        public int Iteration
        {
            get { return iteration; }
            set
            {
                if (iteration != value)
                {
                    iteration = value;
                    OnPropertyChanged("Iteration");
                }
            }
        }

        int cycle;
        public int Cycle
        {
            get { return cycle; }
            set
            {
                if (cycle != value)
                {
                    cycle = value;
                    OnPropertyChanged("Cycle");
                }
            }
        }

        CurrentRange iRange;
        public CurrentRange IRange
        {
            get { return iRange; }
            set
            {
                if (iRange != value)
                {
                    iRange = value;
                    OnPropertyChanged("IRange");
                }
            }
        }

        double maxInitialDelay;
        public double MaxInitialDelay
        {
            get { return maxInitialDelay; }
            set
            {
                if (maxInitialDelay != value)
                {
                    maxInitialDelay = value;
                    OnPropertyChanged("MaxInitialDelay");
                }
            }
        }

        int skipCycle;
        
        public int SkipCycle
        {
            get { return skipCycle; }
            set
            {
                if (skipCycle != value)
                {
                    skipCycle = value;
                    OnPropertyChanged("SkipCycle");
                }
            }
        }

        double FinalCalibFreq;
        public double Finalcalibfreq
        {
            get { return FinalCalibFreq; }
            set
            {
                if (FinalCalibFreq != value)
                {
                    FinalCalibFreq = value;
                    OnPropertyChanged("FinalCalibFreq");
                }
            }
        }

        double zexpected;
        public double Zexpected
        {
            get { return zexpected; }
            set
            {
                if (zexpected != value)
                {
                    zexpected = value;
                    OnPropertyChanged("Zexpected");
                }
            }
        }

        ObservableCollection<double> frequencies = new ObservableCollection<double>();
        public ObservableCollection<double> Frequencies
        {
            get { return frequencies; }
            set
            {
                if (frequencies != value)
                {
                    frequencies = value;
                    OnPropertyChanged("Frequencies");
                }
            }
        }

        #endregion Public Properties

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string PropertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
        }

        #endregion INotifyPropertyChanged Members

        public ZParameters()
        {
            InitialFrequency = 1000.0;
            FinalFrequency = 1.0;
            Finalcalibfreq = 0.05;
            Density = 10;
            Iteration = 1;
            Cycle = 0; // Auto
            IRange = CurrentRange.I200mA;
            MaxInitialDelay = 12.0;
            SkipCycle = 1;
            Zexpected = 0.001;

            Frequencies.Clear();
            Frequencies.CollectionChanged += delegate
            {
                OnPropertyChanged("Frequencies");
            };
        }

        public ZParameters(st_zim_eis_cond packet)
        {
            if (packet.count == 0) return;

            InitialFrequency = packet.initFreq;
            FinalFrequency = packet.finalFreq; 
            Density = (int)packet.density;
            Iteration = (int)packet.iteration;

            Frequencies.Clear();
            Frequencies.CollectionChanged += delegate
            {
                OnPropertyChanged("Frequencies");
            };

            if (packet.item != null && packet.item.Length > 0)
            {
                foreach (var item in packet.item)
                {
                    Frequencies.Add(item.freq);
                }
                 
                Cycle = packet.item[0].cycle;
            }

            IRange = (CurrentRange)(packet.iacrng - 1); // Note iacrng = 0: Auto, 1: 2A, 2: 400mA, ....
            MaxInitialDelay = packet.ondelay;
            SkipCycle = (int)packet.skipcycle;
            Zexpected = packet.expected_Z;
        }

        public st_zim_eis_cond ToReportingPacket(int type)
        {
            InitialFrequency = 10.0;

            FinalFrequency = 0.1;

            Density = 1;
            Iteration = 1;
            MaxInitialDelay = 12;
            SkipCycle = 1;

            if (type == 1)
            {
                IRange = CurrentRange.I200mA;
            }
            else if (type == 2)
            {
                IRange = CurrentRange.I20mA;
            }
            else if (type == 3)
            {
                IRange = CurrentRange.I2mA;
            }
            else
            {
                IRange = CurrentRange.I2A;
            }

            var freq = BuildCalibFrequencies(InitialFrequency, FinalFrequency, Density, Iteration);

            Frequencies.Clear();
            for (int i = 0; i < Iteration; i++)
            {
                for (int j = 0; j < freq.Count; j++)
                    Frequencies.Add(freq[j]);
            }
            if (Frequencies.Count > DeviceConstants.MAX_EIS_FREQ_CNT)
            {
                frequencies = new ObservableCollection<double>(Frequencies.Take(DeviceConstants.MAX_EIS_FREQ_CNT));
            }

            var cond = new st_zim_eis_cond(0);
            cond.initFreq = InitialFrequency;
            cond.finalFreq = FinalFrequency;
            cond.density = (ushort)Density;
            cond.iteration = (ushort)Iteration;
            cond.iacrng = (ushort)((int)IRange + 1);
            cond.ondelay = MaxInitialDelay;
            cond.skipcycle = SkipCycle;
            cond.count = (ushort)Frequencies.Count;
            cond.item = new st_zim_eis_cond_item[DeviceConstants.MAX_EIS_FREQ_CNT];

            for (int i = 0; i < Frequencies.Count; i++)
            {
                cond.item[i].initialize();
                cond.item[i].freq = Frequencies[i];
                cond.item[i].cycle = (ushort)Cycle;
            }
            for (int i = Frequencies.Count; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                cond.item[i].initialize();
            }

            return cond;
        }

        public st_zim_eis_cond ToCalibGainPacket(int type)
        {
            InitialFrequency = 10.0;

            FinalFrequency = 1.0;

            Density = 30;
            Iteration = 1;
            MaxInitialDelay = 12;
            SkipCycle = 1;

            if (type == 1) 
            {
                IRange = CurrentRange.I200mA;
            }
            else if (type == 2)
            {
                IRange = CurrentRange.I20mA;
            }
            else if (type == 3) 
            {
                IRange = CurrentRange.I2mA;
            }
            else 
            {
                IRange = CurrentRange.I2A;
            }

            var freq = BuildCalibFrequencies(InitialFrequency, FinalFrequency, Density, Iteration);

            Frequencies.Clear();
            for (int i = 0; i < Iteration; i++)
            {
                for (int j = 0; j < freq.Count; j++)
                    Frequencies.Add(freq[j]);
            }
            if (Frequencies.Count > DeviceConstants.MAX_EIS_FREQ_CNT)
            {
                frequencies = new ObservableCollection<double>(Frequencies.Take(DeviceConstants.MAX_EIS_FREQ_CNT));
            }

            var cond = new st_zim_eis_cond(0);
            cond.initFreq = InitialFrequency;
            cond.finalFreq = FinalFrequency;
            cond.density = (ushort)Density;
            cond.iteration = (ushort)Iteration;
            cond.iacrng = (ushort)((int)IRange + 1);
            cond.ondelay = MaxInitialDelay;
            cond.skipcycle = SkipCycle;
            cond.count = (ushort)Frequencies.Count;
            cond.item = new st_zim_eis_cond_item[DeviceConstants.MAX_EIS_FREQ_CNT];

            for (int i = 0; i < Frequencies.Count; i++)
            {
                cond.item[i].initialize();
                cond.item[i].freq = Frequencies[i];
                cond.item[i].cycle = (ushort)Cycle;
            }
            for (int i = Frequencies.Count; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                cond.item[i].initialize();
            }

            return cond;
        }

        public st_zim_eis_cond ToCalibPacket(int type)
        {
            InitialFrequency = 3900.0;

            FinalFrequency = FinalCalibFreq;  
            
            Density =  10;
            Iteration = 1;
            MaxInitialDelay = 12;
            SkipCycle = 1;
            if (type == 1) // 10m
            {
                IRange = CurrentRange.I400mA;
            }
            else if (type == 2) // 100m
            {
                IRange = CurrentRange.I200mA;
            }
            else if (type == 3) // 100m
            {
                IRange = CurrentRange.I40mA;
            }
            else if (type == 4) // 1000m
            {
                IRange = CurrentRange.I20mA;
            }
            else if (type == 5) // 1000m
            {
                IRange =CurrentRange.I4mA;
            }
            else if (type == 6) // 10000m
            {
                IRange = CurrentRange.I2mA;
            }
            else if (type == 7) // 10000m
            {
                IRange = CurrentRange.I400uA;
            }
            else //10m
            {
                IRange = CurrentRange.I2A;
            }

            var freq = BuildCalibFrequencies(InitialFrequency, FinalFrequency, Density, Iteration);

            Frequencies.Clear();
            for (int i = 0; i < Iteration; i++)
            {
                for (int j = 0; j < freq.Count; j++)
                    Frequencies.Add(freq[j]);
            }
            if (Frequencies.Count > DeviceConstants.MAX_EIS_FREQ_CNT)
            {
                frequencies = new ObservableCollection<double>(Frequencies.Take(DeviceConstants.MAX_EIS_FREQ_CNT));
            }

            var cond = new st_zim_eis_cond(0);
            cond.initFreq = InitialFrequency;
            cond.finalFreq = FinalFrequency;
            cond.density = (ushort)Density;
            cond.iteration = (ushort)Iteration;
            cond.iacrng = (ushort)((int)IRange + 1);
            cond.ondelay = MaxInitialDelay;
            cond.skipcycle = SkipCycle;
            cond.count = (ushort)Frequencies.Count;
            cond.item = new st_zim_eis_cond_item[DeviceConstants.MAX_EIS_FREQ_CNT];

            for (int i = 0; i < Frequencies.Count; i++)
            {
                cond.item[i].initialize();
                cond.item[i].freq = Frequencies[i];
                cond.item[i].cycle = (ushort)Cycle;
            }
            for (int i = Frequencies.Count; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                cond.item[i].initialize();
            }

            return cond;
        }

        public st_zim_eis_cond ToReportPacket()
        {
            var freq = BuildFrequencies(InitialFrequency, FinalFrequency, Density, Iteration);

            Frequencies.Clear();
            Frequencies.Add(4000.0);
            Frequencies.Add(1000.0);
            Frequencies.Add(100.0);
            Frequencies.Add(10.0);
            Frequencies.Add(1.0);
            Frequencies.Add(0.1);

            var cond = new st_zim_eis_cond(0);
            cond.initFreq = 1000.0; // 4000.0;
            cond.finalFreq = 0.1;
            cond.density = (ushort)1;
            cond.iteration = (ushort)1;
            cond.iacrng = (ushort)((int)IRange + 1);
            cond.ondelay = MaxInitialDelay;
            cond.skipcycle = SkipCycle;
            cond.count = (ushort)Frequencies.Count;
            cond.item = new st_zim_eis_cond_item[DeviceConstants.MAX_EIS_FREQ_CNT];

            for (int i = 0; i < Frequencies.Count; i++)
            {
                cond.item[i].initialize();
                cond.item[i].freq = Frequencies[i];
                cond.item[i].cycle = (ushort)Cycle;
            }
            for (int i = Frequencies.Count; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                cond.item[i].initialize();
            }

            return cond;
        }

        public st_zim_eis_cond ToPacket()
        {
            var freq = BuildFrequencies(InitialFrequency, FinalFrequency, Density, Iteration);

            Frequencies.Clear();
            for (int j = 0; j < freq.Count; j++)
                Frequencies.Add(freq[j]);
            if (Frequencies.Count > DeviceConstants.MAX_EIS_FREQ_CNT)
            {
                frequencies = new ObservableCollection<double>(Frequencies.Take(DeviceConstants.MAX_EIS_FREQ_CNT));
            }

            var cond = new st_zim_eis_cond(0);
            cond.initFreq = InitialFrequency;
            cond.finalFreq = FinalFrequency;
            cond.density = (ushort)Density;
            cond.iteration = (ushort)Iteration;
            cond.iacrng = (ushort)((int)IRange + 1);
            cond.ondelay = MaxInitialDelay;
            cond.skipcycle = SkipCycle;            
            cond.count = (ushort)Frequencies.Count;
            cond.item = new st_zim_eis_cond_item[DeviceConstants.MAX_EIS_FREQ_CNT];
            
            for (int i = 0; i < Frequencies.Count; i++)
            {
                cond.item[i].initialize();
                cond.item[i].freq = Frequencies[i];
                cond.item[i].cycle = (ushort)Cycle;
            }
            for (int i = Frequencies.Count; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                cond.item[i].initialize();
            }

            return cond;
        }

        public List<double> BuildCalibFrequencies(double initialFrequency, double finalFrequency, int density, int Iteration)
        {
            int i;
            int point = 0;
            int iiteration = Math.Max(Iteration, 1);
            int idensity = Math.Max(density, 1);
            double logIncrement = 1.0 / idensity;
            double dfreq;

            int aPoints;
            int maxPoints;

            if (initialFrequency == finalFrequency)
            {
                aPoints = 1;
                logIncrement = 0;
            }
            else
            {
                aPoints = GetNumberOfFrequncies(initialFrequency, finalFrequency, idensity);
                if (initialFrequency > finalFrequency)
                {
                    logIncrement = logIncrement * -1.0;
                }
            }

            if (aPoints > DeviceConstants.MAX_EIS_FREQ_CNT)
            {
                aPoints = DeviceConstants.MAX_EIS_FREQ_CNT;
            }

            maxPoints = aPoints * iteration;

            if (maxPoints > DeviceConstants.MAX_EIS_FREQ_CNT)
            {
                maxPoints = DeviceConstants.MAX_EIS_FREQ_CNT;
            }


            point = 0;
            List<double> frequencies = new List<double>();
            while (point < maxPoints)
            {
                i = 0;
                while (i < aPoints)
                {
                    dfreq = Math.Pow(10.0, Math.Log10(InitialFrequency) + i * logIncrement);

                    if (dfreq < DeviceConstants.MIN_EIS_FREQUENCY)
                        dfreq = DeviceConstants.MIN_EIS_FREQUENCY;
                    if (dfreq > DeviceConstants.MAX_EIS_FREQUENCY)
                        dfreq = DeviceConstants.MAX_EIS_FREQUENCY;
                    if (dfreq < 50.0 || dfreq > 130.0 || (70 < dfreq && dfreq < 110))
                    {
                        dfreq = dfreq.RoundToSignificantDigits(6);
                        frequencies.Add(dfreq);
                    }
                    point++;
                    i++;
                }
            }
            return frequencies;
        }

        public List<double> BuildFrequencies(double initialFrequency, double finalFrequency, int density, int Iteration)
        {
            int i;
            int point = 0;
            int iiteration = Math.Max(Iteration, 1);
            int idensity = Math.Max(density, 0);
            double logIncrement = 1.0 / idensity;
            double dfreq;

            int aPoints;
            int maxPoints;

            List<double> frequencies = new List<double>();

            if (initialFrequency < DeviceConstants.MIN_EIS_FREQUENCY)
                initialFrequency = DeviceConstants.MIN_EIS_FREQUENCY;
            if (initialFrequency > DeviceConstants.MAX_EIS_FREQUENCY)
                initialFrequency = DeviceConstants.MAX_EIS_FREQUENCY;

            if (finalFrequency < DeviceConstants.MIN_EIS_FREQUENCY)
                finalFrequency = DeviceConstants.MIN_EIS_FREQUENCY;
            if (finalFrequency > DeviceConstants.MAX_EIS_FREQUENCY)
                finalFrequency = DeviceConstants.MAX_EIS_FREQUENCY;

            if (initialFrequency == finalFrequency)
            {
                aPoints = 1;
                logIncrement = 0;
                
            }
            else
            {
                if (idensity == 0)
                {
                    aPoints = 2;
                    logIncrement = finalFrequency - initialFrequency;
                }
                else
                {
                    aPoints = GetNumberOfFrequncies(initialFrequency, finalFrequency, idensity);
                    if (initialFrequency > finalFrequency)
                    {
                        logIncrement = logIncrement * -1.0;
                    }
                }
            }

            if (aPoints > DeviceConstants.MAX_EIS_FREQ_CNT)
            {
                aPoints = DeviceConstants.MAX_EIS_FREQ_CNT;
            }

            maxPoints = aPoints * iteration;

            if (maxPoints > DeviceConstants.MAX_EIS_FREQ_CNT)
            {
                maxPoints = DeviceConstants.MAX_EIS_FREQ_CNT;
            }


            point = 0;
            
            while (point < maxPoints)
            {
                i = 0;
                while (i < aPoints)
                {
                    if (idensity == 0) dfreq = InitialFrequency + i * logIncrement;
                    else dfreq = Math.Pow(10.0, Math.Log10(InitialFrequency) + i * logIncrement);

                    if (dfreq < DeviceConstants.MIN_EIS_FREQUENCY)
                        dfreq = DeviceConstants.MIN_EIS_FREQUENCY;
                    if (dfreq > DeviceConstants.MAX_EIS_FREQUENCY)
                        dfreq = DeviceConstants.MAX_EIS_FREQUENCY;

                    dfreq = dfreq.RoundToSignificantDigits(6);

                    frequencies.Add(dfreq);

                    point++;
                    i++;
                }
            }
            
            return frequencies;
        }

        private int GetNumberOfFrequncies(double finalFrequency, double initialFrequency, int density)
        {
            bool isInitLog = Math.Abs(Math.Log10(initialFrequency)) == (double)((int)Math.Abs(Math.Log10(initialFrequency)));
            bool isFinalLog = Math.Abs(Math.Log10(finalFrequency)) == (double)((int)Math.Abs(Math.Log10(finalFrequency)));

            int Factor = (isInitLog && isFinalLog) ? 1 : 0;

            double x = 0.5 + Math.Abs(Math.Log10(finalFrequency) - Math.Log10(initialFrequency)) * density;

            return Factor + (int)Math.Round(x, 0);
        }
    }

    public class StepSamples : INotifyPropertyChanged
    {
        #region Public Properties

        ObservableCollection<double> voltageSamples = new ObservableCollection<double>();
        public ObservableCollection<double> VoltageSamples
        {
            get { return voltageSamples; }
        }

        ObservableCollection<double> currentSamples = new ObservableCollection<double>();
        public ObservableCollection<double> CurrentSamples
        {
            get { return currentSamples; }
        }

        #endregion Public Properties

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string PropertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
        }

        #endregion INotifyPropertyChanged Members


        public StepSamples()
        {
            VoltageSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("VoltageSamples");
            };
            CurrentSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("CurrentSamples");
            };
        }

        public StepSamples(st_zim_eis_raw_val[] packets)
        {
            VoltageSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("VoltageSamples");
            };
            CurrentSamples.CollectionChanged += delegate
            {
                OnPropertyChanged("CurrentSamples");
            };

            VoltageSamples.Clear();
            CurrentSamples.Clear();

            for (int i = 0; i < packets.Length; i++)
            {
                VoltageSamples.Add(packets[i].vac);
                CurrentSamples.Add(packets[i].iac);
            } 
        }
    }

    public class NoiseLevel : INotifyPropertyChanged
    {
        #region Public Properties

        public bool IsValid
        {
            get
            {
                return NoiseIRange != CurrentRange.NotAssigned
                    && NoiseVoltage != 0.0
                    && NoiseCurrent != 0.0;
            }
        }

        CurrentRange noiseIRange = CurrentRange.NotAssigned;
        public CurrentRange NoiseIRange
        {
            get { return noiseIRange; }
            set
            {
                if (noiseIRange != value)
                {
                    noiseIRange = value;
                    OnPropertyChanged("NoiseIRange");
                }
            }
        }

        double noiseVoltage = double.NaN;
        public double NoiseVoltage // [Vrms]
        {
            get { return noiseVoltage; }
            set
            {
                if (noiseVoltage != value)
                {
                    noiseVoltage = value;
                    OnPropertyChanged("NoiseVoltage");
                }
            }
        }

        double noiseCurrent = double.NaN;
        public double NoiseCurrent // [Arms]
        {
            get { return noiseCurrent; }
            set
            {
                if (noiseCurrent != value)
                {
                    noiseCurrent = value;
                    OnPropertyChanged("NoiseCurrent");
                }
            }
        }

        #endregion Public Properties

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string PropertyName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(PropertyName));
        }

        #endregion INotifyPropertyChanged Members

        public NoiseLevel()
        { }

        public NoiseLevel(CurrentRange noiseIRange, double noiseVoltage, double noiseCurrent)
        {
            NoiseIRange = noiseIRange;
            NoiseVoltage = noiseVoltage;
            NoiseCurrent = noiseCurrent;
        }
    }
}
