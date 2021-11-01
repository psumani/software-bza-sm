namespace ZiveLab.Device.ZIM.Win.Panels
{
    public enum GraphType
    {
        LinXLinY = 0,
        LinXLogY,
        LogXLinY,
        LogXLogY,
        LinXLinYLinY,
        LinXLinYLogY,
        LinXLogYLinY,
        LinXLogYLogY,
        LogXLinYLinY,
        LogXLinYLogY,
        LogXLogYLinY,
        LogXLogYLogY,
        LinXLinYLinXLinY,
        LinXLinYLinXLogY,
        LinXLinYLogXLinY,
        LinXLinYLogXLogY,
        LinXLogYLinXLinY,
        LinXLogYLinXLogY,
        LinXLogYLogXLinY,
        LinXLogYLogXLogY,
        LogXLinYLinXLinY,
        LogXLinYLinXLogY,
        LogXLinYLogXLinY,
        LogXLinYLogXLogY,
        LogXLogYLinXLinY,
        LogXLogYLinXLogY,
        LogXLogYLogXLinY,
        LogXLogYLogXLogY,
    }

    public enum PlotType
    {
        Line = 0,
        Scatter = 1,
        LineSymbol = 2,
    }

    public enum PointType
    {
        None = 0,
        Circle = 1,
        Square = 2,
        Diamond = 3,
        Triangle = 4,
        Cross = 5,
    }

    public enum AxisIndex
    {
        Axis1 = 0,
        Axis2 = 1,
    }
}
