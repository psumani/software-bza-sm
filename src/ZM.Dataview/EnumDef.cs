using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ZiveLab.ZM.Dataview
{
    public enum eConvStatus
    {
        IDLE,
        CONVERTING,
        SPLITTING,
        COMPLETE,
        OPENFAILED,
        UNSUPFILE,
        USERSTOP,
        FILECREATFAILED,
        WRITEFAILED,
        USERSTOPSAVEERR,
        USERSTOPSAVED,
        SAVEERR,
        SAVING,
        ERRCODE,
        CONVERTING_II,
        USERSTOP_II,
        USERSTOPSAVED_II,
        READING,
        NOBATCHDATA
    };

    public enum eGraphDivision
    {
        All,
        Cycle,
    }

    public enum eLineStyle
    {
        Dash,
        DashDot,
        DashDotDot,
        Dot,
        None,
        Solid
    }
    public enum ePointStyle
    {
        Cross,
        EmptyCircle,
        EmptyDiamond,
        EmptySquare,
        EmptyTriangleDown,
        EmptyTriangleLeft,
        EmptyTriangleRight,
        EmptyTriangleUp,
        None,
        Plus,
        SolidCircle,
        SolidDiamond,
        SolidSquare,
        SolidTriangleDown,
        SolidTriangleLeft,
        SolidTriangleRight,
        SolidTriangleUp
    }

    public enum eFormat
    {
        RawData,
        ReportData,
        RfdData,
        SmData,
        WdfData,
        ZSharpData,
        ZmfData,
        BiologicData
    }

    public enum eDataStringType
    {
        Number,
        Time,
        Exponent
    }
    public enum eDelimiter
    {
        Tab,
        Comma,
        Space
    }
    public enum eExcelFormat
    {
        Excel2003,
        Excel2007
    }
}
