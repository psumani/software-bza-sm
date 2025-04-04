using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ZiveLab.ZM.Dataview
{
    public class StatusString
    {
        public int Value { get; set; }
        public double DValue { get; set; }
        public string Text { get; set; }
        public eConvStatus Status { get; set; }
        public int ErrorCode { get; set; }

        public StatusString(int value, string text)
        {
            Value = value;
            DValue = (double)value;
            Text = text;
            Status = eConvStatus.IDLE;
        }
        public StatusString(int value, eConvStatus status)
        {
            Value = value;
            DValue = (double)value;
            Text = string.Empty;
            Status = status;
            ErrorCode = 0;
        }
        public StatusString(int value, double dvalue, string text)
        {
            Value = value;
            DValue = dvalue;
            Text = text;
            Status = eConvStatus.IDLE;
        }
        public StatusString(int value, double dvalue, eConvStatus status)
        {
            Value = value;
            DValue = dvalue;
            Text = string.Empty;
            Status = status;
            ErrorCode = 0;
        }

        public void SetStatus(int p, double dp, eConvStatus status, int errcode = 0)
        {
            Value = p;
            DValue = dp;
            Status = status;
            ErrorCode = errcode;
        }       

        public string GetStatus()
        {
            string result = string.Empty;

            switch (Status)
            {
                case eConvStatus.IDLE:
                    result = Properties.Resources.IDLE;
                    break;
                case eConvStatus.CONVERTING:
                    result = string.Format("{0} ({1}% {2})", Properties.Resources.Converting_ddd, Value, Properties.Resources.done);
                    break;
                case eConvStatus.CONVERTING_II:
                    result = string.Format("{0} ({1:F1}% {2})", Properties.Resources.Converting_ddd, DValue, Properties.Resources.done);
                    break;
                case eConvStatus.READING:
                    result = string.Format("{0} ({1:F1}% {2})", Properties.Resources.Reading_ddd, DValue, Properties.Resources.done);
                    break;
                case eConvStatus.SPLITTING:
                    result = string.Format("{0} ({1}% {2})", Properties.Resources.Splitting_ddd, Value, Properties.Resources.done);
                    break;
                case eConvStatus.COMPLETE:
                    result = Properties.Resources.Complete;
                    break;
                case eConvStatus.OPENFAILED:
                    result = Properties.Resources.Failed_File_Open;
                    break;
                case eConvStatus.UNSUPFILE:
                    result = Properties.Resources.Unsupported_File_Format;
                    break;
                case eConvStatus.USERSTOP:
                    result = string.Format("{0} ({1}% {2})", Properties.Resources.User_Stop, Value, Properties.Resources.done);
                    break;
                case eConvStatus.USERSTOP_II:
                    result = string.Format("{0} ({1:F1}% {2})", Properties.Resources.User_Stop, DValue, Properties.Resources.done);
                    break;
                case eConvStatus.FILECREATFAILED:
                    result = Properties.Resources.File_creation_failed;
                    break;
                case eConvStatus.WRITEFAILED:
                    result = Properties.Resources.Write_failed;
                    break;
                case eConvStatus.USERSTOPSAVEERR:
                    result = string.Format("{0}/{1}", Properties.Resources.User_Stop, Properties.Resources.Save_Error);
                    break;
                case eConvStatus.USERSTOPSAVED:
                    result = string.Format("{0}/{1} ({2}% {3})", Properties.Resources.User_Stop, Properties.Resources.Saved, Value, Properties.Resources.done);
                    break;
                case eConvStatus.USERSTOPSAVED_II:
                    result = string.Format("{0}/{1} ({2:F1}% {3})", Properties.Resources.User_Stop, Properties.Resources.Saved, DValue, Properties.Resources.done);
                    break;
                case eConvStatus.SAVEERR:
                    result = Properties.Resources.Save_Error;
                    break;
                case eConvStatus.SAVING:
                    result = Properties.Resources.Saving_ddd;
                    break;
                case eConvStatus.ERRCODE:
                    result = string.Format(Properties.Resources.Error_Code_x, ErrorCode);
                    break;
                case eConvStatus.NOBATCHDATA:
                    result = string.Format(Properties.Resources.No_BatchData);
                    break;
            }

            return result;
        }
    }
}

