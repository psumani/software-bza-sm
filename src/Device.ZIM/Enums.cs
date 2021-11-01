using System.ComponentModel;

namespace ZiveLab.Device.ZIM
{

    public enum eDeviceType
    {
        [Description("WBCS")]
        WBCS,
        [Description("SMART")]
        SMART,
        [Description("ZIM")]
        ZIM,
        [Description("BZA1000")]
        BZA1000,
        [Description("BZA100")]
        BZA100,
        [Description("ZBCS")]
        ZBCS,
    }

    public enum eFpgaSnID
    {
        [Description("XX0")]
        UNKNOWN,
        [Description("IM1")]
        ZIM,
        [Description("IM2")]
        BZA1000,
        [Description("IM3")]
        BZA100,
        [Description("IM4")]
        ZBCS,
    }

    public enum eFpgaType
    {
        [Description("Unknown")]
        UNKNOWN,
        [Description("ZIM")]
        ZIM,
        [Description("BZA1000")]
        BZA1000,
        [Description("BZA100")]
        BZA100,
        [Description("ZBCS")]
        ZBCS,
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

    public enum VoltageRange_BZA100
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("100V")]
        V0 = 0,
        [Description("10V")]
        V1 = 1,
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
