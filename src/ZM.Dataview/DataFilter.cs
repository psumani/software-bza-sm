using System;
using System.Collections.Generic;

namespace ZiveLab.ZM.Dataview
{
    public class DataFilter
    {
        #region 프로퍼티
        public bool TimeEnable { get; set; }
        public string TimeType { get; set; }
        public TimeSpan StartTime { get; set; }
        public TimeSpan EndTime { get; set; }
        public bool CycNoEnable { get; set; }
        public string CycNoString { get; set; }
        public bool StepNoEnable { get; set; }
        public string StepNoString { get; set; }        
        #endregion

        #region 생성자
        public DataFilter()
        {
            TimeEnable = false;
            TimeType = "Test time";
            StartTime = new TimeSpan(0);
            EndTime = new TimeSpan(0);

            CycNoEnable = false;
            CycNoString = "";

            StepNoEnable = false;
            StepNoString = "";
        } 
        #endregion

        #region 메소드
        public List<uint> GetCycNoList()
        {
            return CoStringFilter.GetFilterIndexList(CycNoString);
        }
        public List<uint> GetStepNoList()
        {
            return CoStringFilter.GetFilterIndexList(StepNoString);
        }
        #endregion
    }
}
