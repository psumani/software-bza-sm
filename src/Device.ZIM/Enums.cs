using System.ComponentModel;

namespace ZiveLab.Device.ZIM
{
    public enum eOldFpgaSnID
    {
        [Description("XX0")]
        UNKNOWN,
        [Description("IM1")]
        ZIM,
        [Description("IM2")]
        SBZA1000,
        [Description("IM3")]
        SBZA100,
        [Description("IM4")]
        SBZA100HZ,
        [Description("IM5")]
        MBZA1000,
        [Description("IM6")]
        MBZA100,
        [Description("IM7")]
        MBZA100HZ,
        [Description("IM8")]
        ZBCS,
    }

    public enum eOldFpgaType
    {
        [Description("Unknown")]
        UNKNOWN,
        [Description("ZIM")]
        ZIM,
        [Description("SBZA1000")]
        SBZA1000,
        [Description("SBZA100")]
        SBZA100,
        [Description("SBZA100HZ")]
        SBZA100HZ,
        [Description("MBZA1000")]
        MBZA1000,
        [Description("MBZA100")]
        MBZA100,
        [Description("MBZA100HZ")]
        MBZA100HZ,
        [Description("ZBCS")]
        ZBCS,
    }

    public enum eSockStatus
    {
        [Description("START")]
        START,
        [Description("OPEN")]
        OPEN,
        [Description("LISTEN")]
        LISTEN,
        [Description("ESTABLISHED")]
        ESTABLISHED,
    }

    public enum eDeviceType
    {
        [Description("WBCS")]
        WBCS,
        [Description("SMART")]
        SMART,
        [Description("ZIM")]
        ZIM,
        [Description("SBZA")]
        SBZA,
        [Description("MBZA")]
        MBZA,
        [Description("ZBCS")]
        ZBCS,
        [Description("CXM")]
        CXM,
        [Description("Unknown")]
        UNKNOWN = 0xFF,
    }

    public enum eZimType
    {
        [Description("UNKNOWN")]
        UNKNOWN,
        [Description("ZIM1000")]
        BZA1000A,
        [Description("BZA1000")]
        BZA1000,
        [Description("BZA500")]
        BZA500,
        [Description("BZA100")]
        BZA100,
        [Description("BZA60")]
        BZA60,
        [Description("BZA60HZ")]
        BZA60HZ,
    }

    public enum eZimSnID
    {
        [Description("IM2")]
        UNKNOWN,
        [Description("IM3")]
        BZA1000A,
        [Description("IM4")]
        BZA1000,
        [Description("IM5")]
        BZA500,
        [Description("IM6")]
        BZA100,
        [Description("IM7")]
        BZA60,
        [Description("IM8")]
        BZA60HZ,
    }

    public enum State
    {
        [Description("N/A")]
        NotAssigned,
        [Description("Ready")]
        Idle,
        [Description("Measuring impedance")]
        Running,
        [Description("Measurement termination")]
        Finished,
        [Description("Manually stopped")]
        Stopped,
        [Description("Measuring noise level...")]
        RunningNoiseLevel,
        [Description("Heat sink is very hot...")]
        DetectedOverTemperatue,
        [Description("Something wrong, check cables...")]
        DetectedFaild,
        [Description("Unstable AC voltage...")]
        DetectedNotYetReady,
        [Description("ZIM not found...")]
        DetecteNoZIM,
        [Description("Ready(Not yet calibrated)")]
        DetecteNotYetCalibrated,
        [Description("Ready(Communication error with ZIM)")]
        DetecteErrorCommZIM,
        [Description("Ready(Failed current control)")]
        DetecteFailedControl,
        [Description("Refresh Vac status")]
        RefreshVac,
        [Description("Initial delay")]
        InitDelay = 99,
    }

    public enum EisState
    {
        [Description("none")]
        none,
        [Description("Starting")]
        begin,
        [Description("LOAD on")]
        loadon,
        [Description("DC on")]
        dcon,
        [Description("Post delay")]
        ondelay,
        [Description("Initialize variable of EIS")]
        eisinit,
        [Description("Ready")]
        rdy,
        [Description("Measuring data")]
        ing,
        [Description("Processing FFT")]
        fft,
        [Description("Stopping")]
        stop,
        [Description("LOAD off")]
        loadoff,
        [Description("Finished")]
        fin,
        [Description("Normal stopped ")]
        lastauto,
        [Description("Manual stopped")]
        lastmanual,
        [Description("Error(FAIL) stopped")]
        lasterrfail,
        [Description("Error(OVER T) stopped")]
        lasterrovert,
        [Description("Error(UNSTABLE VAC) stopped")]
        lasterrnotready,
        [Description("Error(COMM) stopped")]
        lasterrcommzim,
        [Description("Error(RESET) stopped")]
        lasterrresetzim,
    }

    public enum VoltageRange
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("1000V")]
        V0 = 0,
        [Description("100V")]
        V1 = 1,
    }
    public enum VoltageRange_BZA500
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("500V")]
        V0 = 0,
        [Description("50V")]
        V1 = 1,
    }
    public enum VoltageRange_BZA100
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("100V")]
        V0 = 0,
        [Description("10V")]
        V1 = 1,
    }

    public enum VoltageRange_BZA60
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("60V")]
        V0 = 0,
        [Description("6V")]
        V1 = 1,
    }

    public enum CurrentRange_BZA60HZ
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("200m A")]
        I200mA = 0,
        [Description("40 mA")]
        I40mA = 1,
        [Description("20 mA")]
        I20mA = 2,
        [Description("4 mA")]
        I4mA = 3,
        [Description("2 mA")]
        I2mA = 4,
        [Description("400 uA")]
        I400uA = 5,
        [Description("200 uA")]
        I200uA = 6,
        [Description("40 uA")]
        I40uA = 7,
    }

    public enum CurrentRange
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("2 A")]
        I2A = 0,
        [Description("400 mA")]
        I400mA = 1,
        [Description("200 mA")]
        I200mA = 2,
        [Description("40 mA")]
        I40mA = 3,
        [Description("20 mA")]
        I20mA = 4,
        [Description("4 mA")]
        I4mA = 5,
        [Description("2 mA")]
        I2mA = 6,
        [Description("400 uA")]
        I400uA = 7,
    }
}
