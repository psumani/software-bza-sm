using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using SMLib;

namespace SM_Enum
{


    #region ** Map command
    public enum enTarget 
    {
        USB,
        FPGA,
        DSP,
        DSP_SW,
        Server
    }

    public enum enUsbComand 
    {
        PageWriteEeprom, 
        WriteEeprom,
        ReadEeprom
    }

    public enum enFpgaComand
    {
        FPGA_RESET,
        FPGA_ERASE,
        FPGA_STOP,
        FPGA_CONTINUE,
        FPGA_READ,
        FPGA_ISERASED
    }

    public enum enDspComand
    {
        DEV_WRITE = 0,
        DEV_READ = 1,
        DEV_WRSTOP = 2,
        DEV_CHCHECK = 3,
        DEV_FLASHEN = 4,
        DEV_FLASHWR = 5,
        DEV_FLASHRD = 6,
        DEV_FLASHDIS = 7,
        DEV_DSPRST = 8,
        FLASHERASE = 9,
        FLASHISERASED = 10,
        FLASHSECERASE = 11,
        USBFIFORST = 13,
        CASTTRANS = 14,
        TRIG = 15,
        COMREAD = 16,
        COMWRITE = 17
    }

    public enum enServerComand
    {
        RefreshDeviceType,
        RefreshDeviceModel,
        RefreshDeviceLicense,
        RefreshDeviceUsbFirmware,
        RefreshDeviceFpgaFirmware,
        RefreshDeviceDspFirmware,
        RefreshDeviceChannelInfo,
        RefreshSystemInformation,
        RefreshSystemConfiguration,
        RefreshSystemRange,
        RefreshBoosterRange,
        RefreshMuxRange,
        SetDeviceDescription,
        SetChannelExist,
        BurningUSB,
        WriteEEPROMinUSB,
        InitSystemConfigAndRange,
        InitSystemConfig,
        InitSystemRange,
        RefreshDeviceInformation

    }

    public enum enServerBurnUsbSub
    {
        resetUsbChip,
        checkusbrom,
        programUsbRam,
        programUsbRom,
    }

    public enum enFlag 
    {
        FLAG_NONE,
        FLAG_WRITE,
        FLAG_REQUEST,
        FLAG_WRITE_LONG,
        
    }

    public enum enProgram
    {
        [SM_Description("None.")]
        none = 0,
        [SM_Description("SM6.")]
        SM = 1,
        [SM_Description("SM_Toolkit.")]
        SM_Toolkit = 2,
        [SM_Description("SM_Calibration.")]
        SM_Calibration = 3,
        [SM_Description("SM_Upload6.")]
        SM_Upload = 4,
        [SM_Description("SM_Linker.")]
        SM_Linker = 5,
        [SM_Description("Other.")]
        Other = 6,
    }

    public enum enResult 
    {
        [SM_Description("None.")]
        FLAG_NONE = 0,
        [SM_Description("Write.")]
        FLAG_WRITE = 1,
        [SM_Description("Request.")]
        FLAG_REQUEST = 2,
        [SM_Description("Ok.")]
        FLAG_OK = 3,
        [SM_Description("Fail.")]
        FLAG_FAIL = 4,
        [SM_Description("Busy.")]
        FLAG_BUSY = 5,
        [SM_Description("Out of memory.")]
        FLAG_OUTMEM = 6,
        [SM_Description("Channel is running.")]
        FLAG_RUNNING = 7,
        [SM_Description("Check-sum failed.")]
        FLAG_ERRCHKSUM = 8,
        [SM_Description("Write packet is failed.")]
        STAT_CMD_ERRWR = 20,
        [SM_Description("Read packet is failed.")]
        STAT_CMD_ERRRD = 21,
        [SM_Description("Time out.")]
        STAT_CMD_TMOUT = 22,
        [SM_Description("Bad command.")]
        STAT_CMD_BAD = 23,
        [SM_Description("Not supported.")]
        STAT_CMD_NOSUPPORT = 24
    }

    public enum enProc
    {
        none,
        Start,
        Proc,
        Finish
    }

    public enum enBOOL
    {
        FALSE,
        TRUE
    }

    #endregion //** Map command

    #region ** Commnunication main command

    public enum enCommMemorySize
    {
        MemoryAll = 4096,
        MemoryData = 4080
    }

    public enum enCommCmdMain
    {
        None,
        Flow,
        System,
        ManualTest,
        Status,
        Sequence,
        Data,
        TestData
    }

    public enum enCommCmdSystem
    {
        None,
        Information,
        Configuration,
        Range,
        Calibration,
        License,
        WriteRomSystemAll,
        WriteRomRange,
        WriteRomAll,
        ReadRomSystemAll,
        ReadRomRange,
        ReadRomAll,
        InitializeRom,
        BoosterInformation,
        BoosterWriteEeprom,
        BoosterReadEeprom,
        BoosterInitializeEeprom,
        MuxInformation,
		MuxWriteEeprom,
        MuxReadEeprom
    }

    public enum enCommCmdManualTest
    {
        None,
        Initialize,
        CapacityFeedback,
        CapacityInCurrentIE,
        OnOffIR,
        DigitalOut,
        OnOffCell,
        OnOffExternal,
        ModeControl,		// USHORT 0-GST, 1-PST,2-ZRA
        RangeSignalOutGain,
        RangeCurrent,
        RangeVoltage,
        RangeCurrentInGain,
        RangeVoltageInGain,
        FilterCurrentIn,
        FilterVoltageIn,
        OffsetCurrentIn,
        OffsetVoltageIn,
        OnOffCompensationIR,
        OnOffZRA,
        OnOffDummyVoltage,
        OnOffDummyCell,
        DacSignalValue = 51,
        DacBiasValue,
        DacAuxilaryout,
        DacCalibrationAuxilary = 55,
        DacCalibrationVoltage,
        DacCalibrationCurrent,
        DacOffsetVoltage,
        DacOffsetCurrent,
        FrequencyAmplitude = 81,
        FrequencyControl,
        ModeCalibration = 101,
        ModeCalibrationMain,
        ModeCalibrationAuxilaryIn,
        OnOffCalibrationCurrent,
        OnOffCalibrationVoltage,
        OnOffCalibrationExternalOut,
        OnOffCalibrationExternalIn,
        OnOffCalibrationAuxilaryOut,
        OnOffCalibrationAuxilaryIn
    }

    public enum enCommCmdStatus
    {
        None,
        General,
        Devices,
        Calibration
    }

    public enum enCommCmdSequence
    {
        None,
        ProjectHeader,
        ProjectTask,
        BatchHeader,
        BatchList,
        CalibrationAC,
        CalibrationDC
    }

    public enum enCommCmdData
    {
        None,
        TestDataCount,
        TestData,
        AC_SampleCount,
        AC_Data,
        AC_FilteringSampleCount,
        AC_Filtering,
        AC_FFT,
        AC_Realtime,
        AC_Calibration,
        DC_Calibration,
        IR_SampleCount,
        IR
    }

    #endregion //** Commnunication main command

    #region ** define device information

    public enum enDeviceLicense
    {
        Basic = 0x0,
        Eis = 0x1,
        Battery = 0x2,
        Corrosion = 0x4,
        ElectroChemistry = 0x8,
        Fra = 0x10,
        NoUse1 = 0x20,
        NoUse2 = 0x40,
        NoUse3 = 0x80,
        NoUse4 = 0x100,
        NoUse5 = 0x200
    }

    public enum enDeviceModel
    {
        SP1 = 0x0, // inactive
        MP1 = 0x1, // inactive
        SP2 = 0x2,
        MP2 = 0x3,
        SP5 = 0x4,
        MP5 = 0x5,
        BP2 = 0x6,
        BP5 = 0x7,
        PP1 = 0x8, //Porable version
        SP1E = 0x20,
        Unknown = 0x3F
    }

    #endregion //** define device information

    #region ** define usb information

    public enum enUsbPacketInformation
    {
        HeaderLength = 0x04,
        DataLength = 0x38,							// 60 Byte
        PacketLength = 0x40,							// 64 Byte
        ExtensionHeaderLength = 9,
        ExtensionPacketLength = 512,
        ExtensionDataLength = (ExtensionPacketLength - ExtensionHeaderLength)
    }

    public enum enUsbBaseAdderssEeprom
     {
        FirmwareArea = 0x0,
        DescriptionArea = 0x3000,
        InformationArea = 0x3400,
        UserArea = 0x3800,
    }

    public enum enUsbOffsetUserArea
    {
        License = 0,
        ChannelCount = 37,
        DefineChannel0 = 38,
        DefineChannel1 = 39,
        DefineChannel2 = 40,
        DefineChannel3 = 41,
        DefineChannel4 = 42,
        DefineChannel5 = 43,
        DefineChannel6 = 44,
        DefineChannel7 = 45
    }

    public enum enUsbOffsetInfoArea
    {
        model = 0x0220
    }

    public enum enUsbRomItemLength
    {
        Information = 0x020,
        Serial = 12,
        LicenseSerial = 35
    }

    

    #endregion //** define usb information

    #region ** define test information

    public enum enStatFlow
    {
        Ready,
        Running,
        Pause,
        Calibration,
        PauseCalibration,
        CalibrationEIS
    }

    #endregion //** define test information
}
