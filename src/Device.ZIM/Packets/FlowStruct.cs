using System;
using System.Runtime.InteropServices;

namespace ZiveLab.Device.ZIM.Packets
{
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_rtc
    {
        public long tick; // in milliseconds not nanoseconds
        public st_rtc(byte init)
        {
            tick = 0;
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
            this = (st_rtc)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_rtc));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_aux_val
    {
        public double begin;
        public double end;
        public st_zim_eis_aux_val(byte init)
        {
            begin = 0.0;
            end = 0.0;
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
            this = (st_zim_eis_aux_val)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_aux_val));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_info
    {
        public uint msBegin;
        public uint msEnd;
        public ushort iacrng;
        public ushort vdcrng;
        public double freq;
        public ushort cycpoint;
        public ushort cycle;
        public ushort TotalPoint;
        public ushort Ns;
        public st_zim_eis_aux_val vdc;
        public st_zim_eis_aux_val rtd;
        public st_zim_eis_info(byte init)
        {
            msBegin = 0;
            msEnd = 0;
            iacrng = 0;
            vdcrng = 0;
            freq = 0.0;
            cycpoint = DeviceConstants.DEFAULT_EIS_CYC_POINT;
            cycle = DeviceConstants.DEFAULT_EIS_CYCLES;
            Ns = DeviceConstants.MAX_EIS_RAWVAL_POINT;
            TotalPoint = DeviceConstants.MAX_EIS_RAWADC_POINT;

            vdc = new st_zim_eis_aux_val(0);
            rtd = new st_zim_eis_aux_val(0);
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
            this = (st_zim_eis_info)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_info));
            pinnedArr.Free();
        }
    }
    
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_zdata
    {
        public double real;
        public double img;
        public double mag;
        public double phase;
        public st_zim_eis_zdata(byte init)
        {
            real = 0x0;
            img = 0x0;
            mag = 0.0;
            phase = 0.0;
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
            this = (st_zim_eis_zdata)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_zdata));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_item
    {
        public st_zim_eis_info info;
        public st_zim_eis_zdata zdata;
        public st_zim_eis_item(byte init)
        {
            info = new st_zim_eis_info(0);
            zdata = new st_zim_eis_zdata(0);
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
            this = (st_zim_eis_item)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_item));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_cond_item
    {
        public ushort cycle;
        public double freq;
        public st_zim_eis_cond_item(byte init)
        {
            cycle = 0;
            freq = 0.0;
        }

        public void initialize()
        {
            cycle = 0;
            freq = 0.0;
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
            this = (st_zim_eis_cond_item)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_cond_item));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_cond // TODO: initFreq, finalFreq, density, iteration 추가
    {
        public double initFreq;
        public double midFreq;        // not used
        public double finalFreq;
        public ushort density;
        public ushort iteration;

        public ushort count; // number of frequencies to test.
        public ushort iacrng; // 0: Auto, 1: 2A..., <- Note "Auto" is reserved.
        public double ondelay; // maximum initial delay time in seconds.
        public double skipcycle; // number of cycles to be skipped in each frequency
        public double expected_Z; // reserved
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_EIS_FREQ_CNT)]
        public st_zim_eis_cond_item[] item;
        public double nouse1;
        public double nouse2;
        public st_zim_eis_cond(byte init)
        {
            initFreq = 1000.0;
            midFreq = 0.0;
            finalFreq = 1.0;
            density = 10;
            iteration = 1;
            count = 0;
            iacrng = 0; 
            ondelay = 12.0;
            skipcycle = 1.0;
            expected_Z = 1.0;
            item = new st_zim_eis_cond_item[DeviceConstants.MAX_EIS_FREQ_CNT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                item[i] = new st_zim_eis_cond_item(0);
            }
            nouse1 = 0.0;
            nouse2 = 0.0;
        }

        public void initialize()
        {
            count = 0;
            iacrng = 0;
            expected_Z = 1.0;

            for (int i = 0; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                item[i].initialize();
            }
        }

        public void initialize(ushort irng)
        {
            int i;
            count = 0;
            iacrng = irng;
            expected_Z = 1.0;

            for (i = 0; i < DeviceConstants.MAX_EIS_FREQ_CNT; i++)
            {
                item[i].initialize();
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
            this = (st_zim_eis_cond)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_cond));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_raw_adc
    {
        public int iac;
        public int vac;

        public st_zim_eis_raw_adc(byte init)
        {
            iac = 0;
            vac = 0;
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
            this = (st_zim_eis_raw_adc)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_raw_adc));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_raw_val
    {
        public double iac;
        public double vac;

        public st_zim_eis_raw_val(byte init)
        {
            iac = 0.0;
            vac = 0.0;
        }

        public void Init()
        {
            iac = 0.0;
            vac = 0.0;
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
            this = (st_zim_eis_raw_val)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_raw_val));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_raw_ADCdata
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_EIS_RAWADC_POINT)]
        public st_zim_eis_raw_adc[] item;

        public st_zim_eis_raw_ADCdata(byte init)
        {
            item = new st_zim_eis_raw_adc[DeviceConstants.MAX_EIS_RAWADC_POINT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_RAWADC_POINT; i++)
            {
                item[i] = new st_zim_eis_raw_adc(0);
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
            this = (st_zim_eis_raw_ADCdata)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_raw_ADCdata));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_raw_data
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_EIS_RAWVAL_POINT)]
        public st_zim_eis_raw_val[] item;

        public st_zim_eis_raw_data(byte init)
        {
            item = new st_zim_eis_raw_val[DeviceConstants.MAX_EIS_RAWVAL_POINT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_RAWVAL_POINT; i++)
            {
                item[i] = new st_zim_eis_raw_val(0);
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
            this = (st_zim_eis_raw_data)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_raw_data));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_fft_data
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_EIS_FFT_POINT)]
        public st_zim_eis_raw_val[] item;
        public st_zim_eis_fft_data(byte init)
        {
            item = new st_zim_eis_raw_val[DeviceConstants.MAX_EIS_FFT_POINT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_FFT_POINT; i++)
            {
                item[i] = new st_zim_eis_raw_val(0);
            }
        }

        public void Initialize()
        {
            for (int i = 0; i < DeviceConstants.MAX_EIS_FFT_POINT; i++)
            {
                item[i].Init();
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
            this = (st_zim_eis_fft_data)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_fft_data));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_raw
    {
        public st_zim_eis_info info;
        public st_zim_eis_zdata zdata_iac;
        public st_zim_eis_zdata zdata_vac;

        public st_zim_eis_raw_ADCdata raw_adc;
        public st_zim_eis_raw_data raw_val;
        public st_zim_eis_fft_data raw_fft;

        public st_zim_eis_raw(byte init)
        {
            info = new st_zim_eis_info(0);
            zdata_iac = new st_zim_eis_zdata(0);
            zdata_vac = new st_zim_eis_zdata(0);
            raw_adc = new st_zim_eis_raw_ADCdata(0);
            raw_val = new st_zim_eis_raw_data(0);
            raw_fft = new st_zim_eis_fft_data(0);
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
            this = (st_zim_eis_raw)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_raw));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_rawvalue
    {
        public st_zim_eis_raw_data raw_val;

        public st_zim_eis_rawvalue(byte init)
        {
            raw_val = new st_zim_eis_raw_data(0);
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
            this = (st_zim_eis_rawvalue)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_rawvalue));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_rms_Inf
    {
        public int IRange;
        public double Irms;
        public double Vrms;

        public st_zim_eis_rms_Inf(byte init)
        {
            IRange = -1;
            Irms = 0;
            Vrms = 0;
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
            this = (st_zim_eis_rms_Inf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_rms_Inf));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rmsraw
    {
        public st_zim_eis_rms_Inf info;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_EIS_RAWADC_POINT)]
        public st_zim_eis_raw_adc[] raw_adc;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_EIS_RAWVAL_POINT)]
        public st_zim_eis_raw_val[] raw_val;

        public st_zim_rmsraw(byte init)
        {
            info = new st_zim_eis_rms_Inf(0);
            raw_adc = new st_zim_eis_raw_adc[DeviceConstants.MAX_EIS_RAWVAL_POINT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_RAWVAL_POINT; i++)
            {
                raw_adc[i] = new st_zim_eis_raw_adc(0);
            }
            raw_val = new st_zim_eis_raw_val[DeviceConstants.MAX_EIS_RAWVAL_POINT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_RAWVAL_POINT; i++)
            {
                raw_val[i] = new st_zim_eis_raw_val(0);
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
            this = (st_zim_rmsraw)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rmsraw));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eis_status
    {
        public ushort teststatus; // get state of device
        public ushort status; // get detail state in running
        public ushort iac_rngno; // 0: 2A, 1: 400mA, 2: 200mA, ...
        public ushort iac_in_rngno; // Not used
        public ushort vdc_rngno; // 0: 1000V, 1: 100V
        public ushort freqcount; // Number of frequencies to test
        public ushort freqindex; // index of running frequency
        public double freq; // running frequency
        public ushort totaldatacnt;
        public ushort WorkDatacnt; // Not used
        public ushort LoadDatacnt; // Not used
        public uint runTimeStamp; // elapsed time from started TimeStamp(rtc) in milliseconds
        public uint runidxTimeStamp; // Not used
        public uint FinTimeStamp; // Not used
        public st_rtc rtc; // 64bit long started DateTime Ticks in milliseconds
        public st_zim_eis_rms_Inf RmsInfo; // info of noise level measurement
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_EIS_RT_RAW_POINT)]
        public st_zim_eis_raw_val[] Real_val; // real time samples of the running frequency
        public double Veoc;
        public double nouse1;
        public double nouse2;
        public st_zim_eis_status(byte init)
        {
            teststatus = DeviceConstants.EIS_TESTSTATUS_NONE; 
            status = DeviceConstants.EIS_STATUS_NONE;
            iac_rngno = 0;
            iac_in_rngno = 0;
            vdc_rngno = 0;
            freqcount = 0;
            freqindex = 0;
            freq = 1000.0;
            totaldatacnt = DeviceConstants.MAX_EIS_RAWADC_POINT;
            WorkDatacnt = 0;
            LoadDatacnt = 0;
            runTimeStamp = 0;
            runidxTimeStamp = 0;
            FinTimeStamp = 0;
            rtc = new st_rtc(0); 
            RmsInfo = new st_zim_eis_rms_Inf(0);
            Real_val = new st_zim_eis_raw_val[DeviceConstants.MAX_EIS_RAWVAL_POINT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_RAWVAL_POINT; i++)
            {
                Real_val[i] = new st_zim_eis_raw_val(0);
            }
            Veoc = 0.0;
            nouse1 = 0.0;
            nouse2 = 0.0;
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
            this = (st_zim_eis_status)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_status));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_TestCmd
    {
        public ushort testmode;
        public st_TestCmd(ushort mode)
        {
            testmode = mode;
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
            this = (st_TestCmd)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_TestCmd));
            pinnedArr.Free();
        }
    }
}
