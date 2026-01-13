using System;
using System.Text;
using System.Runtime.InteropServices;
using ZiveLab.ZM;
using ZiveLab.ZM.ZIM.Utilities;
using ZiveLab.ZM.ZIM.Interface;
using System.ComponentModel;
using System.Net;
using System.Drawing;
using System.Collections.Generic;

namespace ZiveLab.ZM.ZIM.Packets
{
    public class ColorGenerator
    {
        public static List<Color> GetDistinctColors(int count)
        {
            var colors = new List<Color>();

            // 황금비 (Golden Ratio Conjugate)
            // 색상환에서 이 값만큼 이동하면 겹치지 않고 가장 균일하게 분포됨
            double goldenRatioConjugate = 0.618033988749895;
            double currentHue = new Random().NextDouble(); // 랜덤 시작점 (또는 고정값 0.5 등 사용 가능)

            for (int i = 0; i < count; i++)
            {
                currentHue += goldenRatioConjugate;
                currentHue %= 1.0; // 0.0 ~ 1.0 사이로 정규화

                // 채도(Saturation)와 명도(Value)를 고정하거나
                // 인덱스에 따라 약간씩 변주를 주어 가독성을 높임
                double saturation = 0.7;
                double value = 0.90;

                // 짝수/홀수 번째에 따라 명도를 다르게 주면 인접 색상 구분이 더 쉬워짐 (선택 사항)
                if (i % 2 == 0) value = 0.85;
                else value = 0.60;

                colors.Add(HsvToRgb(currentHue * 360, saturation, value));
            }

            return colors;
        }

        // HSV를 System.Drawing.Color로 변환하는 헬퍼 함수
        private static Color HsvToRgb(double h, double s, double v)
        {
            int hi = Convert.ToInt32(Math.Floor(h / 60)) % 6;
            double f = h / 60 - Math.Floor(h / 60);

            v = v * 255;
            int vInt = Convert.ToInt32(v);
            int p = Convert.ToInt32(v * (1 - s));
            int q = Convert.ToInt32(v * (1 - f * s));
            int t = Convert.ToInt32(v * (1 - (1 - f) * s));

            switch (hi)
            {
                case 0: return Color.FromArgb(255, vInt, t, p);
                case 1: return Color.FromArgb(255, q, vInt, p);
                case 2: return Color.FromArgb(255, p, vInt, t);
                case 3: return Color.FromArgb(255, p, q, vInt);
                case 4: return Color.FromArgb(255, t, p, vInt);
                default: return Color.FromArgb(255, vInt, p, q);
            }
        }
    }
    public class st_graph_vars_plot
    {
        public bool LineVisible;
        public bool PointVisible;
        public st_graph_vars_plot()
        {
            LineVisible = true;
            PointVisible = true;
        }
    }

    public class st_graph_vars_ni
    {
        public bool ShowLegend;
        public bool ShowGrid;
        public Color BackColor;
        public Color GridColor;
        public st_graph_vars_plot[] mPlot;
        public Color[] PlotColor;
        public bool[] show;
        public st_graph_vars_ni()
        {
            ShowLegend = false;
            ShowGrid = true;
            BackColor = Color.White;
            GridColor = Color.LightGray;
            show = new bool[2];
            for (int i = 0; i < 2; i++)
                show[i] = true;

            List<Color> LstColor = ColorGenerator.GetDistinctColors(MBZA_Constant.MAX_AUXTYPE_CHANNELS);

            PlotColor = new Color[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                PlotColor[i] = LstColor[i];
            }

            mPlot = new st_graph_vars_plot[MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2; i++)
            {
                mPlot[i] = new st_graph_vars_plot();
            }

        }

        public void LoadGefaultPlotColor()
        {
            List<Color> LstColor = ColorGenerator.GetDistinctColors(MBZA_Constant.MAX_AUXTYPE_CHANNELS);
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                PlotColor[i] = LstColor[i];
            }
        }
        public void LoadGefaultPlotColor(int nPlot)
        {
            List<Color> LstColor = ColorGenerator.GetDistinctColors(MBZA_Constant.MAX_AUXTYPE_CHANNELS);
            PlotColor[nPlot] = LstColor[nPlot];
        }

        public void SetPlotColor(int nPlot, Color nColor)
        {
            PlotColor[nPlot] = nColor;
        }

        public void SetValue(bool value)
        {
            for (int i = 0; i < 2; i++)
                show[i] = value;
        }

        public void SetValue(int nPlot, bool value)
        {
            show[nPlot] = value;
        }
    }

    public class st_graph_vars_bode
    {
        public bool ShowLegend;
        public bool ShowGrid1;
        public bool ShowGrid2;
        public Color BackColor;
        public Color GridColor;
        public st_graph_vars_plot[] mPlot;
        public Color[] PlotColor;
        public bool[] show;
        public st_graph_vars_bode()
        {
            BackColor = Color.White;
            GridColor = Color.LightGray;
            ShowLegend = false;
            ShowGrid1 = true;
            ShowGrid2 = true;
            show = new bool[4];
            for (int i = 0; i < 4; i++)
                show[i] = true;


            List<Color> LstColor = ColorGenerator.GetDistinctColors(MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2);

            PlotColor = new Color[MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2; i++)
            {
                PlotColor[i] = LstColor[i];
            }

            mPlot = new st_graph_vars_plot[MBZA_Constant.MAX_AUXTYPE_CHANNELS * 4];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS * 4; i++)
            {
                mPlot[i] = new st_graph_vars_plot();
            }
        }

        public void LoadGefaultPlotColor()
        {
            List<Color> LstColor = ColorGenerator.GetDistinctColors(MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2);
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2; i++)
            {
                PlotColor[i] = LstColor[i];
            }
        }
        public void LoadGefaultPlotColor(int nPlot)
        {
            List<Color> LstColor = ColorGenerator.GetDistinctColors(MBZA_Constant.MAX_AUXTYPE_CHANNELS * 2);
            PlotColor[nPlot] = LstColor[nPlot];
        }

        public void SetValue(bool value)
        {
            for (int i = 0; i < 4; i++)
                show[i] = value;
        }

        public void SetValue(int nPlot, bool value)
        {
            show[nPlot] = value;
        }
    }

    public class st_graph_vars_item
    {
        public bool bExist;
        public bool showni;
        public bool showbode;
        public int nAuxCh;
        public st_zim_Eis_Cal_info mInfo;
        public st_zim_dummy mDummy;
        public double gain1;
        public double gain2;
        public st_graph_vars_ni ni;
        public st_graph_vars_bode bode;
        public st_graph_vars_item()
        {
            bExist = false;
            showni = true;
            ni = new st_graph_vars_ni();
            showbode = true;
            bode = new st_graph_vars_bode();
            nAuxCh = -1;
            mInfo = new st_zim_Eis_Cal_info();
            mDummy = new st_zim_dummy(0.0);
            gain1 = 1.0;
            gain2 = 1.0;
        }
        public void SetValue(bool value)
        {
            showni = value;
            ni.SetValue(value);
            showbode = value;
            bode.SetValue(value);
        }

        public void SetNiValue(bool value)
        {
            showni = value;
            ni.SetValue(value);
        }

        public void SetNiValue(int nplot, bool value)
        {
            ni.SetValue(nplot, value);
        }

        public void SetBodeValue(bool value)
        {
            showbode = value;
            bode.SetValue(value);
        }

        public void SetBodeValue(int nplot, bool value)
        {
            bode.SetValue(nplot, value);
        }
    }


    public class st_graph_vars
    {
        public bool bAux;
        public int nAuxChCount;
        public int tRng;
        public int CRng;
        public int OtherRng;
        public st_graph_vars_item[] showitems;
        public st_graph_vars_ni ni;
        public st_graph_vars_bode bode;
        public st_graph_vars()
        {
            bAux = false;
            nAuxChCount = 0;
            CRng = 0;
            OtherRng = 1;
            showitems = new st_graph_vars_item[MBZA_Constant.MAX_AUXTYPE_CHANNELS];
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                showitems[i] = new st_graph_vars_item();
            }
            ni = new st_graph_vars_ni();
            bode = new st_graph_vars_bode();
        }
        public void SetValue(bool value)
        {
            for (int i = 0; i < MBZA_Constant.MAX_AUXTYPE_CHANNELS; i++)
            {
                showitems[i].SetValue(value);
            }
        }

        public void SetValue(int nitem, bool value)
        {
            showitems[nitem].SetValue(value);
        }

        public void SetNiValue(int nitem, bool value)
        {
            showitems[nitem].SetNiValue(value);
        }

        public void SetBodeValue(int nitem, bool value)
        {
            showitems[nitem].SetBodeValue(value);
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stVersion
    {
        public byte Major;
        public byte Minor;
        public byte Revision;
        public byte Build;

        public stVersion(byte init)
        {
            Major = 0;
            Minor = 0;
            Revision = 0;
            Build = 0;
        }

        public void initialize()
        {
            Major = DeviceConstants.SCH_MAJOR;
            Minor = DeviceConstants.SCH_MINOR;
            Revision = DeviceConstants.SCH_REVISION;
            Build = DeviceConstants.SCH_BUILD;
        }

        public bool checkversion()
        {
            if (Major == 0 && Minor == 0 && Revision == 0 && Build == 0) return false;
            return true;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stVersion)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stVersion));
            pinnedArr.Free();
        }
    }
    

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stSIFCfg
    {
        public byte Type;
        public stVersion BoardVersion;
        public stVersion FirmwareVersion;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 12)]
        public byte[] Serial;
        public stSIFCfg(byte init)
        {
            Type = (byte)eDeviceType.WBCS;
            BoardVersion = new stVersion(0);
            FirmwareVersion = new stVersion(0);
            Serial = new byte[12];
            Serial[0] = (byte)'I';
            Serial[1] = (byte)'F';
            Serial[2] = 0x0;
            Serial[3] = 0x0;
            Serial[4] = 0x0;
            Serial[5] = 0x0;
            Serial[6] = 0x0;
            Serial[7] = 0x0;
            Serial[8] = 0x0;
            Serial[9] = 0x0;
            Serial[10] = 0x0;
            Serial[11] = 0x0;
        }

        public eProductType GetProductType()
        {
            eProductType iret = eProductType.UNKNOWN;
            string str1 = Encoding.Default.GetString(Serial).Trim('\0');
            if (str1.Length != 12) return iret;

            string str = str1.Substring(3, 1);


            if (str == "A") iret = eProductType.BZA60;
            else if (str == "B") iret = eProductType.BZA100;
            else if (str == "C") iret = eProductType.BZA500;
            else if (str == "D") iret = eProductType.BZA1000;
            return iret;
        }

        public string GetModelName()
        {
            string sret;

            sret = GetProductTypeString();
            if ((eDeviceType)Type == eDeviceType.MBZA) sret += "M";
            else if((eDeviceType)Type == eDeviceType.MCBZA) sret += "MC";
            return sret;
        }

        public string GetModelDesc()
        {
            string sret;
            eProductType prodType = GetProductType();
            if (prodType == eProductType.BZA60) sret = "Maximum 60V";
            else if (prodType == eProductType.BZA100) sret = "Maximum 100V";
            else if (prodType == eProductType.BZA500) sret = "Maximum 500V";
            else sret = "Maximum 1000V";
            if ((eDeviceType)Type == eDeviceType.MBZA) sret += "/ Multi channel.";
            else if ((eDeviceType)Type == eDeviceType.MCBZA) sret += "Multi auxiliary channel.";
            else sret += "Single Channel.";
            return sret;
        }

        public string GetTypeString()
        {
            return Extensions.GetEnumDescription((eDeviceType)Type);
        }

        public string GetProductTypeString()
        {
            return Extensions.GetEnumDescription((eProductType)GetProductType());
        }


        public eDeviceType GetDeviceType()
        {
            return (eDeviceType)Type;
        }

        public string GetFirmwareVer()
        {
            return string.Format("{0}.{1}.{2}.{3}", FirmwareVersion.Major, FirmwareVersion.Minor, FirmwareVersion.Revision, FirmwareVersion.Build);
        }

        public int GetFirmwareVerNum()
        {
            string str = string.Format("{0}{1}{2}{3}", FirmwareVersion.Major, FirmwareVersion.Minor, FirmwareVersion.Revision, FirmwareVersion.Build);
            return Convert.ToInt32(str);
        }

        public bool SetFirmwareVer(string str)
        {
            string stmp;
            int tmp;
            if (str.Length == 7)
            {
                stmp = str.Replace(".", "");
            }
            else
            {
                stmp = str;
            }

            if (str.Length == 4)
            {
                tmp = Convert.ToUInt16(stmp);

                FirmwareVersion.Major = (byte)(tmp / 1000);
                if (FirmwareVersion.Major > 0) tmp = tmp % (FirmwareVersion.Major * 1000);
                FirmwareVersion.Minor = (byte)(tmp / 100);
                if (FirmwareVersion.Minor > 0) tmp = tmp % (FirmwareVersion.Minor * 100);
                FirmwareVersion.Revision = (byte)(tmp / 10);
                if (FirmwareVersion.Revision > 0) tmp = tmp % (FirmwareVersion.Revision * 10);
                FirmwareVersion.Build = (byte)tmp;
            }
            else
            {
                return false;
            }
            return true;
        }
        public string GetBoardVer()
        {
            return string.Format("{0}.{1}.{2}.{3}", BoardVersion.Major, BoardVersion.Minor, BoardVersion.Revision, BoardVersion.Build);
        }
        public bool SetBoardVer(string str)
        {
            string stmp;
            int tmp;
            if (str.Length == 7)
            {
                stmp = str.Replace(".", "");
            }
            else
            {
                stmp = str;
            }

            if (str.Length == 4)
            {
                tmp = Convert.ToUInt16(stmp);
               
                BoardVersion.Major = (byte)(tmp/1000);
                if(BoardVersion.Major > 0) tmp = tmp % (BoardVersion.Major * 1000);
                BoardVersion.Minor = (byte)(tmp / 100);
                if (BoardVersion.Minor > 0) tmp = tmp % (BoardVersion.Minor * 100);
                BoardVersion.Revision = (byte)(tmp / 10);
                if (BoardVersion.Revision > 0) tmp = tmp % (BoardVersion.Revision * 10);
                BoardVersion.Build = (byte)tmp;
            }
            else
            {
                return false;
            }
            return true;
        }

        public string GetSerialNumber()
        {
            return Encoding.Default.GetString(Serial);
        }

        
        public void SetSerialNumber(string str)
        {
            Serial = Encoding.Default.GetBytes(str.ToCharArray());
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stSIFCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stSIFCfg));
            pinnedArr.Free();
        }
    }
    
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stFindSIFCfg
    {
        public byte Type;
        public stVersion BoardVersion;
        public stVersion FirmwareVersion;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 12)]
        public byte[] Serial;
        public byte SockStat;
        public stFindSIFCfg(byte init)
        {
            Type = (byte)eDeviceType.WBCS;
            BoardVersion = new stVersion(0);
            FirmwareVersion = new stVersion(0);
            SockStat = 0;
            Serial = new byte[12];
            Serial[0] = (byte)'I';
            Serial[1] = (byte)'F';
            Serial[2] = 0x0;
            Serial[3] = 0x0;
            Serial[4] = 0x0;
            Serial[5] = 0x0;
            Serial[6] = 0x0;
            Serial[7] = 0x0;
            Serial[8] = 0x0;
            Serial[9] = 0x0;
            Serial[10] = 0x0;
            Serial[11] = 0x0;
        }

        public string GetBoardTypeString()
        {
            return ((eDeviceType)Type).GetDescription();
        }

        public string GetFirmwareVer()
        {
            return string.Format("{0}.{1}.{2}.{3}", FirmwareVersion.Major, FirmwareVersion.Minor, FirmwareVersion.Revision, FirmwareVersion.Build);
        }
        public bool SetFirmwareVer(string str)
        {
            string stmp;
            int tmp;
            if (str.Length == 7)
            {
                stmp = str.Replace(".", "");
            }
            else
            {
                stmp = str;
            }

            if (str.Length == 4)
            {
                tmp = Convert.ToUInt16(stmp);

                FirmwareVersion.Major = (byte)(tmp / 1000);
                if (FirmwareVersion.Major > 0) tmp = tmp % (FirmwareVersion.Major * 1000);
                FirmwareVersion.Minor = (byte)(tmp / 100);
                if (FirmwareVersion.Minor > 0) tmp = tmp % (FirmwareVersion.Minor * 100);
                FirmwareVersion.Revision = (byte)(tmp / 10);
                if (FirmwareVersion.Revision > 0) tmp = tmp % (FirmwareVersion.Revision * 10);
                FirmwareVersion.Build = (byte)tmp;
            }
            else
            {
                return false;
            }
            return true;
        }
        public string GetBoardVer()
        {
            return string.Format("{0}.{1}.{2}.{3}", BoardVersion.Major, BoardVersion.Minor, BoardVersion.Revision, BoardVersion.Build);
        }
        public bool SetBoardVer(string str)
        {
            string stmp;
            int tmp;
            if (str.Length == 7)
            {
                stmp = str.Replace(".", "");
            }
            else
            {
                stmp = str;
            }

            if (str.Length == 4)
            {
                tmp = Convert.ToUInt16(stmp);

                BoardVersion.Major = (byte)(tmp / 1000);
                if (BoardVersion.Major > 0) tmp = tmp % (BoardVersion.Major * 1000);
                BoardVersion.Minor = (byte)(tmp / 100);
                if (BoardVersion.Minor > 0) tmp = tmp % (BoardVersion.Minor * 100);
                BoardVersion.Revision = (byte)(tmp / 10);
                if (BoardVersion.Revision > 0) tmp = tmp % (BoardVersion.Revision * 10);
                BoardVersion.Build = (byte)tmp;
            }
            else
            {
                return false;
            }
            return true;
        }
        public string GetSerialNumber()
        {
            return Encoding.Default.GetString(Serial);
        }

        public void SetSerialNumber(string str)
        {
            byte[] tmp = Encoding.Default.GetBytes(str.ToCharArray());
            int i, j;

            j = 0;
            Serial[j] = (byte)'I';
            j++;
            Serial[j] = (byte)'F';
            j++;
            for (i = 1; i < 20; i += 2)
            {
                Serial[j] = tmp[i];
                j++;
            }
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stFindSIFCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stFindSIFCfg));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stZimInfo
    {
        public ushort ZimBDVersion;
        public ushort ZimFWVersion;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public byte[] cModel;
        public uint nSerial;
        public stZimInfo(eZimType type)
        {

            ZimBDVersion = 0;
            ZimFWVersion = 0;

            cModel = new byte[2];
            cModel[0] = (byte)(0x30 + type);
            cModel[1] = (byte)'x';

            nSerial = 0;
        }

        public void Initialize(eZimType type)
        {
            ZimBDVersion = 0;
            ZimFWVersion = 0;

            cModel[0] = (byte)(0x30+ type);
            cModel[1] = (byte)'x';

            nSerial = 0;
        }
        public string UintToByteString(uint nVal)
        {
            int i;
            byte tmp;

            byte[] mChar = new byte[5];
            Array.Clear(mChar, 0, 5);
            for (i = 0; i < 5; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[4 - i] = (byte)(0x30 + tmp);
            }
            /*
            byte[] mChar = new byte[8];
            Array.Clear(mChar, 0, 8);

            for (i = 0; i < 8; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[7 - i] = (byte)(0x30 + tmp);
            }
            */
            
            return Encoding.Default.GetString(mChar).Trim('\0');
        }

        public string UshortToByteString(ushort nVal)
        {
            char[] mChar = new char[5];
            Array.Clear(mChar, 0, 5);
            mChar = string.Format("{0:0000}", nVal).ToCharArray();
            return string.Format("{0}.{1}.{2}.{3}", mChar[0], mChar[1], mChar[2], mChar[3]);
        }

        public string GetSerialNumber()
        {
            int i = cModel[0] - 0x30;
            string str;
            if (i < 0) i = 0;
            else if (i > 5) i = 5;

            str = string.Format("{0}{1}000{2}", Extensions.GetEnumDescription((eZimSnID)i), (char)cModel[1], UintToByteString(nSerial));
            return str;
        }

        public string GetBoardVer()
        {
            return UshortToByteString(ZimBDVersion);
        }
        public string GetZimTypeString()
        {
            eZimType mtype = (eZimType)(cModel[0] - 0x30);

            return Extensions.GetEnumDescription(mtype);
        }
        public string GetBoardTypeString()
        {
            eZimBoardType mtype = (eZimBoardType)(cModel[0] - 0x30);

            return Extensions.GetEnumDescription(mtype);
        }

        public eZimType GetZimType()
        {
            return (eZimType)(cModel[0] - 0x30);
        }

        public eZimBoardType GetBoardType()
        {
            return (eZimBoardType)(cModel[0] - 0x30);
        }

        public string GetFirmwareVer()
        {
            return UshortToByteString(ZimFWVersion);
        }
        public bool SetFirmwareVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                ZimFWVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetBoardVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                ZimBDVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetSerialNumber(byte type, string str)
        {
            string sTmp;
            int index = 0;

            uint tmp;
            int i;
            sTmp = str.Replace(" ", "");

            if (sTmp.Length != 9 && sTmp.Length != 12) return false;
            if (sTmp.Length == 12) index = 3;

            char[] mChar = sTmp.ToCharArray();

            cModel[0] = (byte)(type + 0x30);
            cModel[1] = (byte)(mChar[index] & 0xFF);
            index++;

            tmp = 0;

            for (i = 0; i < 8; i++)
            {
                tmp += (uint)((mChar[index] & 0xFF) - 0x30) << ((7 - i) * 4);
                index++;
            }
            nSerial = tmp;
            return true;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stZimInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stZimInfo));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stZimCfg_1
    {
        public stZimInfo info;
        public st_zim_rnginf ranges;
        public stZimCfg_1(eZimType type)
        {
            info = new stZimInfo(type);
            ranges = new st_zim_rnginf(type);
        }

        public void Initilize(eZimType type)
        {
            info.Initialize(type);
            ranges.Initialize(type);
        }

        public string UintToByteString(uint nVal)
        {
            int i;
            byte tmp;
            byte[] mChar = new byte[5];
            Array.Clear(mChar, 0, 5);

            for (i = 0; i < 5; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[4 - i] = (byte)(0x30 + tmp);
            }

            /*
            byte[] mChar = new byte[8];
            Array.Clear(mChar, 0, 8);

            for (i = 0; i < 8; i++)
            {
                tmp = (byte)((nVal >> (i*4)) & (uint)0xf);
                mChar[7-i] = (byte)(0x30 + tmp);
            }
            */
            return Encoding.Default.GetString(mChar).Trim('\0');
        }

        public string UshortToByteString(ushort nVal)
        {
            char[] mChar = new char[5];
            Array.Clear(mChar, 0, 5);
            mChar = string.Format("{0:0000}", nVal).ToCharArray();
            return string.Format("{0}.{1}.{2}.{3}", mChar[0], mChar[1], mChar[2], mChar[3]);
        }



        public string GetSerialNumber()
        {
            int i = info.cModel[0] - 0x30;
            string str;

            str = string.Format("{0}{1}000{2}", Extensions.GetEnumDescription((eZimSnID)i), (char)info.cModel[1], UintToByteString(info.nSerial));
            return str;
        }

        public string GetBoardVer()
        {
            return UshortToByteString(info.ZimBDVersion);
        }

        public string GetBoardTypeString()
        {
            eZimBoardType mtype = (eZimBoardType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public string GetZimTypeString()
        {
            eZimType mtype = (eZimType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public eZimBoardType GetBoardType()
        {
            eZimBoardType mtype;
            if (info.cModel[0] == 0x0) mtype = eZimBoardType.UNKNOWN;
            else mtype = (eZimBoardType)(info.cModel[0] - 0x30);
            return mtype;
        }

        public eZimType GetZIMType()
        {
            eZimType mtype;
            if (info.cModel[0] == 0x0) mtype = eZimType.UNKNOWN;
            else mtype = (eZimType)(info.cModel[0] - 0x30);
            return mtype;
        }


        public string GetFirmwareVer()
        {
            return UshortToByteString(info.ZimFWVersion);
        }

        public bool SetFirmwareVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                info.ZimFWVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetBoardVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                info.ZimBDVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetSerialNumber(byte type, string str)
        {
            string sTmp;
            int index = 0;

            uint tmp;
            int i;
            sTmp = str.Replace(" ", "");

            if (sTmp.Length != 5 && sTmp.Length != 12) return false;
            if (sTmp.Length == 12) index = 7;



            char[] mChar = sTmp.ToCharArray();

            info.cModel[0] = (byte)(type + 0x30);
            info.cModel[1] = 0x30;

            tmp = 0;

            for (i = 0; i < 5; i++)
            {
                tmp += (uint)((mChar[index] & 0xFF) - 0x30) << ((4 - i) * 4);
                index++;
            }
            info.nSerial = tmp;
            return true;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stZimCfg_1)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stZimCfg_1));
            pinnedArr.Free();
        }
    }


    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stZimCfg
    {
        public stZimInfo info;
        public st_zim_rnginf ranges;

        public stZimCfg(eZimType type)
        {
            info = new stZimInfo(type);
            ranges = new st_zim_rnginf(type);
        }

        public void Initilize(eZimType type)
        {
            info.Initialize(type);
            ranges = new st_zim_rnginf(type);
        }

        public void Initialize(int auxch, eZimType type)
        {
            ranges.Initialize(type);
        }

        public string UintToByteString(uint nVal)
        {
            int i;
            byte tmp;
            byte[] mChar = new byte[5];
            Array.Clear(mChar, 0, 5);

            for (i = 0; i < 5; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[4 - i] = (byte)(0x30 + tmp);
            }

            /*
            byte[] mChar = new byte[8];
            Array.Clear(mChar, 0, 8);

            for (i = 0; i < 8; i++)
            {
                tmp = (byte)((nVal >> (i*4)) & (uint)0xf);
                mChar[7-i] = (byte)(0x30 + tmp);
            }
            */
            return Encoding.Default.GetString(mChar).Trim('\0'); 
        }

        public string UshortToByteString(ushort nVal)
        {
            char [] mChar = new char[5];
            Array.Clear(mChar, 0, 5);
            mChar = string.Format("{0:0000}", nVal).ToCharArray();
            return string.Format("{0}.{1}.{2}.{3}", mChar[0], mChar[1], mChar[2], mChar[3]);
        }
             


        public string GetSerialNumber()
        {
            int i = info.cModel[0] - 0x30;
            string str;

            str = string.Format("{0}{1}000{2}", Extensions.GetEnumDescription((eZimSnID)i), (char)info.cModel[1], UintToByteString(info.nSerial));
            return str;
        }

        public string GetBoardVer()
        {
            return UshortToByteString(info.ZimBDVersion);
        }

        public string GetBoardTypeString()
        {
            eZimBoardType mtype;
            if (info.cModel[0] == 0x0) mtype = eZimBoardType.UNKNOWN;
            else mtype = (eZimBoardType)(info.cModel[0]-0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public string GetZimTypeString()
        {
            eZimType mtype;
            if (info.cModel[0] == 0x0) mtype = eZimType.UNKNOWN;
            else mtype = (eZimType)(info.cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public eZimBoardType GetBoardType()
        {
            if (info.cModel[0] == 0x0) return eZimBoardType.UNKNOWN;
            return (eZimBoardType)(info.cModel[0] - 0x30);
        }
        
        public eZimType GetZIMType()
        {
            if (info.cModel[0] == 0x0) return eZimType.UNKNOWN;
            return (eZimType)(info.cModel[0] - 0x30);
        }
        

        public string GetFirmwareVer()
        {
            return UshortToByteString(info.ZimFWVersion);
        }

        public bool SetFirmwareVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                info.ZimFWVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetBoardVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                info.ZimBDVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetSerialNumber(byte type, string str)
        {
            string sTmp;
            int index = 0;
            
            uint tmp;
            int i;
            sTmp = str.Replace(" ", "");

            if (sTmp.Length != 5 && sTmp.Length != 12) return false;
            if (sTmp.Length == 12) index = 7;



            char[] mChar = sTmp.ToCharArray();

            info.cModel[0] = (byte)(type + 0x30);
            info.cModel[1] = 0x30;

            tmp = 0;

            for (i = 0; i < 5; i++)
            {
                tmp += (uint)((mChar[index] & 0xFF) - 0x30) << ((4-i) * 4);
                index++;
            }
            info.nSerial = tmp;
            return true;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stZimCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stZimCfg));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stUserEthernetCfg
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] Gateway;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] SubnetMask;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] IpAddress;
        public int Port;
        public byte dhcp;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 20)]
        public byte[] hostname;
        public stUserEthernetCfg(byte init)
        {
            Gateway = new byte[4];
            SubnetMask = new byte[4];
            IpAddress = new byte[4];
            dhcp = 0;
            hostname = new byte[20];

            Gateway[0] = 169;
            Gateway[1] = 254;
            Gateway[2] = 17;
            Gateway[3] = 1;

            SubnetMask[0] = 255;
            SubnetMask[1] = 255;
            SubnetMask[2] = 0;
            SubnetMask[3] = 0;

            IpAddress[0] = 169;
            IpAddress[1] = 254;
            IpAddress[2] = 17;
            IpAddress[3] = 2;

            Port = 2000;
            byte[] barr = Encoding.Default.GetBytes("ZIM-0000");
            Array.Clear(hostname, 0, 20);
            Array.Copy(barr, 0,hostname, 0, barr.Length);
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stUserEthernetCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stUserEthernetCfg));
            pinnedArr.Free();
        }
    }

    public enum enDhcpMode
    {
        False,
        True,
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stEthernetCfg
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 6)]
        public byte[] Mac;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] Gateway;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] SubnetMask;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] IpAddress;
        public int Port;


        public byte dhcp;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 20)]
        public byte[] hostname;
        public stEthernetCfg(byte init)
        {
            Mac = new byte[6];
            Gateway = new byte[4];
            SubnetMask = new byte[4];
            IpAddress = new byte[4];
            dhcp = 1;
            Mac[0] = 0x00;
            Mac[1] = 0x00;
            Mac[2] = 0x00;
            Mac[3] = 0x00;
            Mac[4] = 0x00;
            Mac[5] = 0x00;

            Gateway[0] = 169;
            Gateway[1] = 254;
            Gateway[2] = 17;
            Gateway[3] = 1;

            SubnetMask[0] = 255;
            SubnetMask[1] = 255;
            SubnetMask[2] = 0;
            SubnetMask[3] = 0;

            IpAddress[0] = 169;
            IpAddress[1] = 254;
            IpAddress[2] = 17;
            IpAddress[3] = 2;

            Port = 2000;
            hostname = new byte[20];
            byte[] barr = Encoding.Default.GetBytes("Z00000");
            Array.Clear(hostname, 0, 20);
            Array.Copy(barr, 0, hostname, 0, barr.Length);
        }
        
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public string GetIPAddress()
        {
            return string.Format("{0}.{1}.{2}.{3}", IpAddress[0], IpAddress[1], IpAddress[2], IpAddress[3]);
        }

        public string GetSubnetmask()
        {
            return string.Format("{0}.{1}.{2}.{3}", SubnetMask[0], SubnetMask[1], SubnetMask[2], SubnetMask[3]);
        }

        public string GetGateway()
        {
            return string.Format("{0}.{1}.{2}.{3}", Gateway[0], Gateway[1], Gateway[2], Gateway[3]);
        }
        public string GetHostname()
        {
            return Encoding.UTF8.GetString(hostname).Trim('\0');
        }

        public bool SetIPAddress(string sAddress)
        {
            try
            {
                IPAddress address = IPAddress.Parse(sAddress);
                IpAddress = address.GetAddressBytes();
                return true;
            }
            catch
            {

            }

            return false;
        }

        public bool SetSubnetmask(string sAddress)
        {
            try
            {
                IPAddress address = IPAddress.Parse(sAddress);
                SubnetMask = address.GetAddressBytes();
                return true;
            }
            catch
            {

            }
            
            return false;
        }

        public bool SetGateway(string sAddress)
        {
            try
            {
                IPAddress address = IPAddress.Parse(sAddress);
                Gateway = address.GetAddressBytes();
                return true;
            }
            catch
            {

            }

            return false;
        }

        public byte[] AddressParse(string sAddress)
        {
            try
            {
                IPAddress address = IPAddress.Parse(sAddress);
                return address.GetAddressBytes();
            }
            catch
            {
                
            }

            return null;
        }

        public void SetHostname(string shost)
        {
            int len = 20;
            byte[] barr = Encoding.UTF8.GetBytes(shost);
            Array.Clear(hostname, 0, 20);
            if (len > barr.Length) len = barr.Length;
            Array.Copy(barr, 0, hostname, 0, len);
        }

        public byte[] ToNoMacByteArray()
        {
            byte[] arr = ToByteArray();
            int Size = Marshal.SizeOf(this);
            byte[] NoMaxarr = new byte[Size-6];
            Array.Copy(arr, 6, NoMaxarr, 0, Size - 6);
            return NoMaxarr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stEthernetCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stEthernetCfg));
            pinnedArr.Free();
        }

        #region ** Properties
        [ReadOnlyAttribute(true)]
        [DisplayName("MAC Address"), DescriptionAttribute("View MAC address of device.")]
        public string PropMacaddr
        {
            get { return BitConverter.ToString(Mac); }
        }
        [ReadOnlyAttribute(false)]
        [DisplayName("DHCP"), DescriptionAttribute("Edit DHCP status of device.")]
        public enDhcpMode PropDhcp
        {
            get { return (enDhcpMode)dhcp; }
            set { dhcp = (byte)value;  }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("IP Address"), DescriptionAttribute("Edit IP address of device.")]
        public string PropIp
        {
            get { return GetIPAddress(); }
            set { SetIPAddress(value);   }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("Subnetmask"), DescriptionAttribute("Edit subnetmask of device.")]
        public string Propsubnetmask
        {
            get { return GetSubnetmask(); }
            set { SetSubnetmask(value);   }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("Gateway"), DescriptionAttribute("Edit gateway of device.")]
        public string Propgateway
        {
            get { return GetGateway(); }
            set { SetGateway(value);   }
        }
        [ReadOnlyAttribute(true)]
        [DisplayName("Port"), DescriptionAttribute("Edit port number of device.")]
        public int Propport
        {
            get { return Port; }
            //set { Port = value; }
        }

        [ReadOnlyAttribute(false)]
        [DisplayName("Hostname"), DescriptionAttribute("Edit hostname of device.")]
        public string Prophostname
        {
            get { return GetHostname(); }
            set { SetHostname(value);   }
        }
        #endregion //#region ** Properties
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stSetEthernetCfg
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] Gateway;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] SubnetMask;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public byte[] IpAddress;
        public int Port;

        public stSetEthernetCfg(byte init)
        {
            Port = 0;
            Gateway = new byte[4];
            SubnetMask = new byte[4];
            IpAddress = new byte[4];
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stSetEthernetCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stSetEthernetCfg));
            pinnedArr.Free();
        }
    }
    
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stConnCfg
    {
        public byte ID;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 12)]
        public byte[] Serial;
        public stEthernetCfg mEthernetCfg;

        public stConnCfg(byte init)
        {
            ID = 0;
            Serial = new byte[12];

            ID = 0x00;
            Serial[0] = 0x0;
            Serial[1] = 0x0;
            Serial[2] = 0x0;
            Serial[3] = 0x0;
            Serial[4] = 0x0;
            Serial[5] = 0x0;
            Serial[6] = 0x0;
            Serial[7] = 0x0;
            Serial[8] = 0x0;
            Serial[9] = 0x0;
            Serial[10] = 0x0;
            Serial[11] = 0x0;

            mEthernetCfg = new stEthernetCfg(0);
        }

        public string GetSerialNumber()
        {
            return Encoding.Default.GetString(Serial).Trim('\0');
        }

        public eProductType GetProductType()
        {
            eProductType iret = eProductType.UNKNOWN;
            string str1 = Encoding.Default.GetString(Serial).Trim('\0');
            if (str1.Length != 12) return iret;

            string str = str1.Substring(3, 1);
         
            
            if (str == "A") iret = eProductType.BZA60;
            else if (str == "B") iret = eProductType.BZA100;
            else if (str == "C") iret = eProductType.BZA500;
            else if (str == "D") iret = eProductType.BZA1000;
            return iret;
        }

        public void SetSerialNumber(string str)
        {
            Serial = Encoding.Default.GetBytes(str.ToCharArray());
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stConnCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stConnCfg));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stOldSIFCfg
    {
        public byte Type;
        public stVersion BoardVersion;
        public stVersion FirmwareVersion;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 12)]
        public byte[] Serial;
        public stOldSIFCfg(byte init)
        {
            Type = (byte)eDeviceType.ZIM;
            BoardVersion = new stVersion(0);
            FirmwareVersion = new stVersion(0);

            Serial = new byte[12];
            Serial[0] = (byte)'I';
            Serial[1] = (byte)'F';
            Serial[2] = 0x0;
            Serial[3] = 0x0;
            Serial[4] = 0x0;
            Serial[5] = 0x0;
            Serial[6] = 0x0;
            Serial[7] = 0x0;
            Serial[8] = 0x0;
            Serial[9] = 0x0;
            Serial[10] = 0x0;
            Serial[11] = 0x0;
        }

        public string GetFirmwareVer()
        {
            return string.Format("{0}.{1}.{2}.{3}", FirmwareVersion.Major, FirmwareVersion.Minor, FirmwareVersion.Revision, FirmwareVersion.Build);
        }
        public bool SetFirmwareVer(string str)
        {
            string stmp;
            int tmp;
            if (str.Length == 7)
            {
                stmp = str.Replace(".", "");
            }
            else
            {
                stmp = str;
            }

            if (str.Length == 4)
            {
                tmp = Convert.ToUInt16(stmp);

                FirmwareVersion.Major = (byte)(tmp / 1000);
                if (FirmwareVersion.Major > 0) tmp = tmp % (FirmwareVersion.Major * 1000);
                FirmwareVersion.Minor = (byte)(tmp / 100);
                if (FirmwareVersion.Minor > 0) tmp = tmp % (FirmwareVersion.Minor * 100);
                FirmwareVersion.Revision = (byte)(tmp / 10);
                if (FirmwareVersion.Revision > 0) tmp = tmp % (FirmwareVersion.Revision * 10);
                FirmwareVersion.Build = (byte)tmp;
            }
            else
            {
                return false;
            }
            return true;
        }
        public string GetBoardVer()
        {
            return string.Format("{0}.{1}.{2}.{3}", BoardVersion.Major, BoardVersion.Minor, BoardVersion.Revision, BoardVersion.Build);
        }
        public bool SetBoardVer(string str)
        {
            string stmp;
            int tmp;
            if (str.Length == 7)
            {
                stmp = str.Replace(".", "");
            }
            else
            {
                stmp = str;
            }

            if (str.Length == 4)
            {
                tmp = Convert.ToUInt16(stmp);

                BoardVersion.Major = (byte)(tmp / 1000);
                if (BoardVersion.Major > 0) tmp = tmp % (BoardVersion.Major * 1000);
                BoardVersion.Minor = (byte)(tmp / 100);
                if (BoardVersion.Minor > 0) tmp = tmp % (BoardVersion.Minor * 100);
                BoardVersion.Revision = (byte)(tmp / 10);
                if (BoardVersion.Revision > 0) tmp = tmp % (BoardVersion.Revision * 10);
                BoardVersion.Build = (byte)tmp;
            }
            else
            {
                return false;
            }
            return true;
        }
        public string GetSerialNumber()
        {
            return Encoding.Default.GetString(Serial);
        }

        public void SetSerialNumber(string str)
        {
            byte[] tmp = Encoding.Default.GetBytes(str.ToCharArray());
            int i, j;

            j = 0;
            Serial[j] = (byte)'I';
            j++;
            Serial[j] = (byte)'F';
            j++;
            for (i = 1; i < 20; i += 2)
            {
                Serial[j] = tmp[i];
                j++;
            }
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stOldSIFCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stOldSIFCfg));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stOldZimCfg
    {
        public ushort ZimBDVersion;
        public ushort ZimFWVersion;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public byte[] cModel;
        public uint nSerial;

        public stOldZimCfg(byte init)
        {
            ZimBDVersion = 0;
            ZimFWVersion = 0;

            cModel = new byte[2];
            cModel[0] = 0x30;
            cModel[1] = 0x30;

            nSerial = 0;
        }

        public string UintToByteString(uint nVal)
        {
            int i;
            byte tmp;
            byte[] mChar = new byte[8];
            Array.Clear(mChar, 0, 8);

            for (i = 0; i < 8; i++)
            {
                tmp = (byte)((nVal >> (i * 4)) & (uint)0xf);
                mChar[7 - i] = (byte)(0x30 + tmp);
            }
            return Encoding.Default.GetString(mChar).Trim('\0'); 
        }

        public string UshortToByteString(ushort nVal)
        {
            char[] mChar = new char[5];
            Array.Clear(mChar, 0, 5);
            mChar = string.Format("{0:0000}", nVal).ToCharArray();
            return string.Format("{0}.{1}.{2}.{3}", mChar[0], mChar[1], mChar[2], mChar[3]);
        }



        public string GetSerialNumber()
        {
            int i = cModel[0] - 0x30;
            string str;
            if (i < 0) i = 0;
            else if (i > 5) i = 5;

            str = string.Format("{0}{1}{2}", Extensions.GetEnumDescription((eOldFpgaSnID)i), (char)cModel[1], UintToByteString(nSerial));
            return str;
        }

        public string GetBoardVer()
        {
            return UshortToByteString(ZimBDVersion);
        }

        public string GetBoardType()
        {
            eOldFpgaType mtype = (eOldFpgaType)(cModel[0] - 0x30);
            return Extensions.GetEnumDescription(mtype);
        }

        public string GetFirmwareVer()
        {
            return UshortToByteString(ZimFWVersion);
        }
        public bool SetFirmwareVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                ZimFWVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetBoardVer(string str)
        {
            string sTmp;
            if (str.Length == 7)
            {
                sTmp = str.Replace(".", "");
            }
            else
            {
                sTmp = str;
            }

            if (sTmp.Length == 4)
            {
                ZimBDVersion = Convert.ToUInt16(sTmp);
            }
            else
            {
                return false;
            }
            return true;
        }

        public bool SetSerialNumber(byte type, string str)
        {
            string sTmp;
            int index = 0;

            uint tmp;
            int i;
            sTmp = str.Replace(" ", "");

            if (sTmp.Length != 9 && sTmp.Length != 12) return false;
            if (sTmp.Length == 12) index = 3;

            char[] mChar = sTmp.ToCharArray();

            cModel[0] = (byte)(type + 0x30);
            cModel[1] = (byte)(mChar[index] & 0xFF);
            index++;

            tmp = 0;

            for (i = 0; i < 8; i++)
            {
                tmp += (uint)((mChar[index] & 0xFF) - 0x30) << ((7 - i) * 4);
                index++;
            }
            nSerial = tmp;
            return true;
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stOldZimCfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stOldZimCfg));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stOldSystemConfig
    {
        public byte ID;
        public stOldSIFCfg mSIFCfg;
        public stOldZimCfg mZimCfg;
        public uint BaseTick;
        public uint DaqTick;


        public stOldSystemConfig(byte init)
        {
            ID = 0xC2;
            BaseTick = 1;
            DaqTick = 200;

            mSIFCfg = new stOldSIFCfg(0);
            mZimCfg = new stOldZimCfg(0);
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stOldSystemConfig)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stOldSystemConfig));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stSystemConfig_1
    {
        public byte ID;
        public stSIFCfg mSIFCfg;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] EnaZIM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] EnaROM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] ChkZIM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public stZimCfg_1[] mZimCfg;
        public uint BaseTick;
        public uint DaqTick;


        public stSystemConfig_1(byte init)
        {
            ID = DeviceConstants.ID_ZIMCONFIG_1;

            BaseTick = 1;
            DaqTick = 200;

            mSIFCfg = new stSIFCfg(0);
            EnaZIM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            ChkZIM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            EnaROM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            mZimCfg = new stZimCfg_1[MBZA_Constant.MAX_DEV_CHANNEL];

            for (int i = 0; i < MBZA_Constant.MAX_DEV_CHANNEL; i++)
            {
                EnaZIM[i] = 0;
                EnaROM[i] = 0;
                ChkZIM[i] = 0;
                mZimCfg[i] = new stZimCfg_1(0);
            }
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }
        public bool CompareInfo(byte[] ChkArr)
        {
            byte[] Arr = ToByteArray();
            if (ChkArr.Length != Arr.Length)
            {
                return false;
            }
            int Size = Marshal.SizeOf(this);
            for (int i = 0; i < Size; i++)
            {
                if (Arr[i] != ChkArr[i])
                {
                    return false;
                }
            }
            return true;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stSystemConfig_1)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stSystemConfig_1));
            pinnedArr.Free();
        }
    }


    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stSystemConfig
    {
        public byte ID;
        public stSIFCfg mSIFCfg;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] EnaZIM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] EnaROM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public byte[] ChkZIM;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = MBZA_Constant.MAX_DEV_CHANNEL)]
        public stZimCfg[] mZimCfg;
        public uint BaseTick;
        public uint DaqTick;
        public stSystemConfig(byte init)
        {
            ID = DeviceConstants.ID_ZIMCONFIG;
            
            BaseTick = 1;
            DaqTick = 200;

            mSIFCfg = new stSIFCfg(0);
            EnaZIM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            ChkZIM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            EnaROM = new byte[MBZA_Constant.MAX_DEV_CHANNEL];
            mZimCfg = new stZimCfg[MBZA_Constant.MAX_DEV_CHANNEL];

            for (int i=0; i< MBZA_Constant.MAX_DEV_CHANNEL; i++)
            {
                EnaZIM[i] = 0;
                EnaROM[i] = 0;
                ChkZIM[i] = 0;
                mZimCfg[i] = new stZimCfg(0);
            }
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }
        public bool CompareInfo(byte[] ChkArr)
        {
            byte[] Arr = ToByteArray();
            if (ChkArr.Length != Arr.Length)
            {
                return false;
            }
            int Size = Marshal.SizeOf(this);
            for (int i = 0; i < Size; i++)
            {
                if (Arr[i] != ChkArr[i])
                {
                    return false;
                }
            }
            return true;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stSystemConfig)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stSystemConfig));
            pinnedArr.Free();
        }
    }
    
    public class defWebSiteInfomation
    {
        public const int WEBSITE_ID = 0x25;

        public const int NAND_MAIN_SIZE = 2048;
        public const int HEAD_BLOCK_BASE = 128;
        public const int LIMIT_BLOCK_BASE = 129;
        public const int FILE_BLOCK_BASE = 130;
        public const int PAGE_PER_BLOCK = 64;
        public const int PAGE_SIZE = 2048;

        public const int MAX_FILE_COUNT = 100;
        public const int MAX_FILE_NAME = 200;
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stWebMaxMinInfo
    {
        public double MaxVal;
        public double MinVal;
        public stWebMaxMinInfo(double inMaxVal, double inMinVal)
        {
            MaxVal = inMaxVal;
            MinVal = inMinVal;
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stWebMaxMinInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stWebMaxMinInfo));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stWebSiteLimitInfo
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 22)]
        public byte [] Alias;
        public double zrehigh;
        public double zmodhigh;
        public double zimaghigh;
        public double templimit;
        public double zphlimit;
        public double prslimit;
        public double prplimit;
        public double sohlimit;
        public double eoclimit;
        public double soceoc;
        public double gsocrp;
        public double osocrp;
        public double gsoceoc;
        public double osoceoc;
        public double rseol;
        public double rsnew;
        public stWebMaxMinInfo socrp;
        public stWebMaxMinInfo rp;
        public stWebMaxMinInfo socvoc;
        public stWebMaxMinInfo voc;
        public double vlimit;

        public stWebSiteLimitInfo(int index)
        {
            string str = string.Format("NewLimit{0}", index);
            Alias = new byte[100];
            Array.Clear(Alias, 0, 100);
            Alias = Encoding.ASCII.GetBytes(str);

            zrehigh = 0.1;
            zmodhigh = 0.005;
            zimaghigh = -0.001;
            templimit = 26;
            zphlimit = double.NaN;
            prslimit = 0.09;
            prplimit = 0.04;
            sohlimit = 50;
            eoclimit = 15;
            soceoc = 15;
            gsocrp = 11.308;
            osocrp = -225.31;
            gsoceoc = 25;
            osoceoc = -317;
            rseol = 0.13;
            rsnew = 0.06;

            socrp = new stWebMaxMinInfo(82.8, 20);
            rp = new stWebMaxMinInfo(0.0367, 0.046);
            socvoc = new stWebMaxMinInfo(90, 60);
            voc = new stWebMaxMinInfo(16.28, 15.08);

            vlimit = 12.0;

        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stWebSiteLimitInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stWebSiteLimitInfo));
            pinnedArr.Free();
        }
    }


    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stWebSiteFATHeader
    {
        public byte ID;
        public int FileCount;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = defWebSiteInfomation.MAX_FILE_NAME)]
        public byte[] existroot;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = defWebSiteInfomation.MAX_FILE_COUNT)]
        public stWebSiteFileHeader[] sFileHeaders;

        public stWebSiteFATHeader(byte id, int filecount)
        {
            ID = id;
            FileCount = filecount;
            existroot = new byte[defWebSiteInfomation.MAX_FILE_NAME];
            Array.Clear(existroot, 0, defWebSiteInfomation.MAX_FILE_NAME);
            sFileHeaders = new stWebSiteFileHeader[defWebSiteInfomation.MAX_FILE_COUNT];
            for (int i = 0; i < defWebSiteInfomation.MAX_FILE_COUNT; i++)
                sFileHeaders[i] = new stWebSiteFileHeader(string.Empty);
        }

        public void Initialize(byte id, int filecount)
        {
            ID = id;
            FileCount = filecount;
            Array.Clear(existroot, 0, defWebSiteInfomation.MAX_FILE_NAME);
            for (int i = 0; i < defWebSiteInfomation.MAX_FILE_COUNT; i++)
            {
                sFileHeaders[i] = new stWebSiteFileHeader(string.Empty);
            }
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stWebSiteFATHeader)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stWebSiteFATHeader));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stWebSiteFileHeader
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = defWebSiteInfomation.MAX_FILE_NAME)]
        public byte[] Name;
        public int Size;
        public int StartPageNum;

        public stWebSiteFileHeader(string name)
        {
            Name = new byte[defWebSiteInfomation.MAX_FILE_NAME];

            Array.Clear(Name, 0, defWebSiteInfomation.MAX_FILE_NAME);
            Size = 0;
            StartPageNum = -1;
        }

        public void Initialize()
        {
            Array.Clear(Name, 0, defWebSiteInfomation.MAX_FILE_NAME);
            Size = 0;
            StartPageNum = -1;
        }
        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stWebSiteFileHeader)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stWebSiteFileHeader));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stScanBzaInf
    {
        public byte bConnected;
        public string sMac;
        public byte bBza;
        public byte bError;
        public byte bBusy;
        public stFindSIFCfg mFindSifCfg;
        public stDevInf mDevInf;
       
        public stScanBzaInf(byte init)
        {
            sMac = "";
            bBza = 0;
            bBusy = 0;
            bError = 0;
            bConnected = 0;
            mFindSifCfg = new stFindSIFCfg(0);
            mDevInf = new stDevInf(0);
        }

        public byte[] ToByteArray()
        {
            int Size = Marshal.SizeOf(this);
            byte[] arr;
            arr = new byte[Size];
            IntPtr Ptr = Marshal.AllocHGlobal(Size);
            Marshal.StructureToPtr(this, Ptr, false);
            Marshal.Copy(Ptr, arr, 0, Size);
            Marshal.FreeHGlobal(Ptr);
            return arr;
        }

        public void ToWritePtr(byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            this = (stScanBzaInf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stScanBzaInf));
            pinnedArr.Free();
        }
    }
    public struct stButtonElements
    {
        public int bd;
        public int ch;
        public bool isOn;
        public bool isGraphReady;
        public st_zim_eis_raw_data rawdata;
        public stButtonElements(byte init)
        {
            bd = 0;
            ch = 0;
            isOn = false;
            isGraphReady = false;
            rawdata = new st_zim_eis_raw_data(0);
        }
    }

}
