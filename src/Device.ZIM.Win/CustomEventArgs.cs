using System;

namespace ZiveLab.Device.ZIM.Win
{
    public class IntEventArgs : EventArgs
    {
        public int Value;
        public IntEventArgs(int value)
        {
            Value = value;
        }
    }

    public class ParametersEventArgs : EventArgs
    {
        public ZParameters Parameters;

        public ParametersEventArgs(ZParameters parameters)
        {
            Parameters = parameters;
        }
    }

    public class IRangeEventArgs : EventArgs
    {
        public CurrentRange IRange;
        public IRangeEventArgs(CurrentRange irange)
        {
            IRange = irange;
        }
    }
}
