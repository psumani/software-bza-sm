using System.ComponentModel;

namespace ZiveLab.ZM.ZIM
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
    }

    public enum eZimType
    {
        [Description("UNKNOWN")]
        UNKNOWN,
        [Description("ZIM1000")]
        BZA1000A,
        [Description("BZA1000")]
        BZA1000,
        [Description("BZA500 ")]
        BZA500,
        [Description("BZA100")]
        BZA100,
        [Description("BZA60")]
        BZA60,
    }

    public enum eZimBoardType
    {
        [Description("UNKNOWN")]
        UNKNOWN,
        [Description("ZIM-MB-A")]
        BZA1000A,
        [Description("ZIM-MB-E")]
        BZA1000,
        [Description("ZIM-MB-E")]
        BZA500,
        [Description("ZIM-MB-D")]
        BZA100,
        [Description("ZIM-MB-D")]
        BZA60,
    }

    public enum eZimSnID
    {
        [Description("IM?")]
        UNKNOWN,
        [Description("IM2")]
        BZA1000A,
        [Description("IM3")]
        BZA1000,
        [Description("IM4")]
        BZA500,
        [Description("IM5")]
        BZA100,
        [Description("IM6")]
        BZA60,
    }

    public enum enTestState
    {
        [Description("Ready.")]
        Ready,
        [Description("Running.")]
        Running,
        [Description("Calibration.")]
        Calibration,
        [Description("Finished.")]
        Finished,
        [Description("Stopped.")]
        Stopped,
        [Description("Ready(No calibration).")]
        nc_Ready = 0x20,
        [Description("Running(No calibration).")]
        nc_Running,
        [Description("Calibration(No calibration).")]
        nc_Calibration,
        [Description("Finished(No calibration).")]
        nc_Finished,
        [Description("Stopped(No calibration).")]
        nc_Stopped,
    }

    public enum enStatError
    {
        [Description("None...")]
        NoError,
        [Description("Low voltage...")]
        CellLow,
        [Description("Not ready...")]
        NotReady,
        [Description("Not found channel...")]
        NoZim,
        [Description("Communition error...")]
        ErrCommZim,
        [Description("Failed control...")]
        ContFail,
        [Description("Failed reset channel...")]
        ErrRstZim,
        [Description("Heat sink is very hot...")]
        OverT,
        [Description("Unstable AC voltage...")]
        VacStable,
        [Description("Error technique...")]
        ErrTech,
        [Description("Normal stopped...")]
        AutoStop,
        [Description("Manual stopped...")]
        ManualStop,
        [Description("Failed FFT...")]
        ErrFFT,
        [Description("Error memory...")]
        ErrMemory,
        [Description("Error result file...")]
        ResFileError,
    }
    

    public enum enEisState
    {
        [Description("")]
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
        [Description("Ended")]
        end,
        [Description("Waiting")]
        wait,
        [Description("Delay after load on")]
        mondelay,
        [Description("Vdc/Temp.Monitor")]
        monsample,
    }
    public enum enTechType
    {
        [Description("Galvanostatic EIS")]
        TECH_EIS = 0,
        [Description("Galvanostatic HFR ")]
        TECH_HFR,
        [Description("Rs Pseudo Rp")]
        TECH_PRR,
        [Description("Vdc/Temp monitor")]
        TECH_MON,
        [Description("Quick galvanostatic EIS")]
        TECH_QIS,
    }

    public enum enVoltageRange
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("1000V")]
        V0 = 0,
        [Description(" 100V")]
        V1 = 1,
    }

    public enum enVoltageRange_BZA100
    {
        [Description("Auto")]
        NotAssigned = -1,
        [Description("100V")]
        V0 = 0,
        [Description(" 10V")]
        V1 = 1,
    }
    
    public enum enCurrentRange_HC
    {
        [Description(" 20 A")]
        I20A = 0,
        [Description("  4 A")]
        I4A,
        [Description("  2 A")]
        I2A,
        [Description("400mA")]
        I400mA,
        [Description("200mA")]
        I200mA,
        [Description(" 40mA")]
        I40mA,
        [Description(" 20mA")]
        I20mA,
        [Description("  4mA")]
        I4mA,
    }

    public enum enCurrentRange_HZ
    {
        [Description(" 20mA")]
        I20mA = 0,
        [Description("  4mA")]
        I4mA,
        [Description("  2mA")]
        I2mA,
        [Description("400uA")]
        I400uA,
        [Description("200uA")]
        I200uA,
        [Description(" 40uA")]
        I40uA,
        [Description(" 20uA")]
        I20uA,
        [Description("  4uA")]
        I4uA,
    }

    public enum enCurrentRange
    {
        [Description("  2 A")]
        I2A = 0,
        [Description("400mA")]
        I400mA,
        [Description("200mA")]
        I200mA,
        [Description(" 40mA")]
        I40mA,
        [Description(" 20mA")]
        I20mA,
        [Description("  4mA")]
        I4mA,
        [Description("  2mA")]
        I2mA,
        [Description("400uA")]
        I400uA,
    }

    public enum enCurrentControl
    {
        [Description("  1 A")]
        I2A = 0,
        [Description("200mA")]
        I400mA,
        [Description("100mA")]
        I200mA,
        [Description(" 20mA")]
        I40mA,
        [Description(" 10mA")]
        I20mA,
        [Description("  2mA")]
        I4mA,
        [Description("  1mA")]
        I2mA,
        [Description("200uA")]
        I400uA,
    }

    public enum enDescRangeI
    {
        [Description("2A")]
        I2A = 0,
        [Description("400mA")]
        I400mA,
        [Description("200mA")]
        I200mA,
        [Description("40mA")]
        I40mA,
        [Description("20mA")]
        I20mA,
        [Description("4mA")]
        I4mA,
        [Description("2mA")]
        I2mA,
        [Description("400uA")]
        I400uA,
    }

    public enum enDescRangeI_HC
    {
        [Description("Auto")]
        Auto = 0,
        [Description("20A")]
        I20A,
        [Description("4A")]
        I4A,
        [Description("2A")]
        I2A,
        [Description("400mA")]
        I400mA,
        [Description("200mA")]
        I200mA,
        [Description("40mA")]
        I40mA,
        [Description("20mA")]
        I20mA,
        [Description("4mA")]
        I4mA,
    }

    public enum enDescRangeI_HZ
    {
        [Description("Auto")]
        Auto = 0,
        [Description("20mA")]
        I20mA,
        [Description("4mA")]
        I4mA,
        [Description("2mA")]
        I2mA,
        [Description("400uA")]
        I400uA,
        [Description("200uA")]
        I200uA,
        [Description("40uA")]
        I40uA,
        [Description("20uA")]
        I20uA,
        [Description("4uA")]
        I4uA,
    }
}
