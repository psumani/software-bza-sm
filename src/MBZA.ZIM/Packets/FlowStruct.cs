using System;
using System.Runtime.InteropServices;
using System.Text;

namespace ZiveLab.ZM.ZIM.Packets
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
    public struct st_zim_zPacket
    {
        public double freq;
        public double real;
        public double img;
        public double mag;
        public double phase;
        public st_zim_zPacket(byte init)
        {
            freq = 0.0;
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
            this = (st_zim_zPacket)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_zPacket));
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
            finalFreq = 0.1;
            density = 10;
            iteration = 1;
            count = 0;
            iacrng = 0; 
            ondelay = 12.0;
            skipcycle = 0.0;
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
    public struct st_zim_eis_status
    {
        public ushort status;
        public int rescount;
        public int freqcount;      
        public int freqindex;      
        public double freq;
        public ushort cycle;
        public ushort SkipCycle;
        public ushort cycpoint;
        public ushort totaldatacnt;
        public ushort WorkDatacnt;
        public ushort LoadDatacnt;
        public st_zim_eis_zdata zdata;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_EIS_RT_RAW_POINT)]
        public st_zim_eis_raw_val[] Real_val; // real time samples of the running frequency
      
        public st_zim_eis_status(byte init)
        {
            status = DeviceConstants.EIS_STATUS_NONE;
            rescount = 0;
            freqcount = 0;
            freqindex = 0;
            freq = 1000.0;
            cycle = 0;
            SkipCycle = 0;
            cycpoint = 0;
            totaldatacnt = DeviceConstants.MAX_EIS_RAWADC_POINT;
            WorkDatacnt = 0;
            LoadDatacnt = 0;
            zdata = new st_zim_eis_zdata(0);
             Real_val = new st_zim_eis_raw_val[DeviceConstants.MAX_EIS_RAWVAL_POINT];
            for (int i = 0; i < DeviceConstants.MAX_EIS_RAWVAL_POINT; i++)
            {
                Real_val[i] = new st_zim_eis_raw_val(0);
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
            this = (st_zim_eis_status)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eis_status));
            pinnedArr.Free();
        }
    }


    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_Info
    {
        public double MaxP;
        public double MaxI;
        public double MaxV;
        public double Capa;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.BATIDSIZE)]
        public byte[] batid;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.USERSIZE)]
        public byte[] creator;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public double[] nouse;
        public stTech_Info(int init)
        {
            int i;
            Capa = 1.0;
            MaxP = 20.0;
            MaxI = 20.0;
            MaxV = 20.0;
            batid = new byte[DeviceConstants.BATIDSIZE];
            creator = new byte[DeviceConstants.USERSIZE];

            for (i = 0; i < DeviceConstants.BATIDSIZE; i++)
            {
                batid[i] = 0x0;
            }

            for (i = 0; i < DeviceConstants.USERSIZE; i++)
            {
                creator[i] = 0x0;
            }
            nouse = new double[2];
            for (i = 0; i < 2; i++)
            {
                nouse[i] = 0.0;
            }
        }

        public void initialize()
        {
            int i;
            Capa = 1.0;

            for (i = 0; i < DeviceConstants.BATIDSIZE; i++)
            {
                batid[i] = 0x0;
            }

            for (i = 0; i < DeviceConstants.USERSIZE; i++)
            {
                creator[i] = 0x0;
            }

            for (i = 0; i < 2; i++)
            {
                nouse[i] = 0.0;
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
            this = (stTech_Info)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_Info));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_EIS
    {
        public double initfreq;
        public double finalfreq;
        public double bias;
        public ushort density;
        public int iteration;
        public ushort skipcycle;
        public ushort cycle;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public double[] nouse;
        public stTech_EIS(int init)
        {
            initfreq = 4000.0;
            finalfreq = 0.1;
            density = 10;
            iteration = 1;
            bias = 0.0;
            skipcycle = 0;
            cycle = 0;
            nouse = new double[3];
            for (int i = 0; i < 3; i++)
            {
                nouse[i] = 0.0;
            }
        }
        public void initialize()
        {
            initfreq = 4000.0;
            finalfreq = 0.1;
            density = 10;
            iteration = 1;
            bias = 0.0;
            skipcycle = 0;
            cycle = 0;
            for (int i = 0; i < 3; i++)
            {
                nouse[i] = 0.0;
            }
        }

        int GetNumberOfFrequncies(double initialFrequency, double finalFrequency, int density)
        {
            bool isInitLog = Math.Abs(Math.Log10(initialFrequency)) == (double)((int)Math.Abs(Math.Log10(initialFrequency)));
            bool isFinalLog = Math.Abs(Math.Log10(finalFrequency)) == (double)((int)Math.Abs(Math.Log10(finalFrequency)));

            int Factor = (isInitLog && isFinalLog) ? 1 : 0;

            //double x = 0.5 + fabs(log10(finalFrequency) - log10(initialFrequency)) * density;
            double x = Math.Abs(Math.Log10(finalFrequency) - Math.Log10(initialFrequency)) * density;

            return Factor + (int)Math.Ceiling(x); //mRounding(x,0);
        }

        public int GetFreqCount()
        {
            int iret = 0;
            int tdensity = Math.Max((int)density, 0);
            int titeration = Math.Max(iteration, 1);

            double tinitfreq = Math.Max(initfreq, DeviceConstants.MIN_EIS_FREQUENCY);
            double tfinalfreq = Math.Max(finalfreq, DeviceConstants.MIN_EIS_FREQUENCY);


            tinitfreq = Math.Min(tinitfreq, DeviceConstants.MAX_EIS_FREQUENCY);
            tfinalfreq = Math.Min(tfinalfreq, DeviceConstants.MAX_EIS_FREQUENCY);

            if (tinitfreq == tfinalfreq)
            {
                iret = 1;
            }
            else
            {
                if (tdensity == 0)
                {
                    iret = 2;
                }
                else
                {
                    iret = GetNumberOfFrequncies(tinitfreq, tfinalfreq, tdensity);
                }
            }
            iret *= iteration;
            return iret;
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
            this = (stTech_EIS)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_EIS));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_HFR
    {
        public double freq;
        public double bias;
        public double interval;
        public double totaltime;
        public ushort celloffwait;
        public ushort skipcycle;
        public ushort cycle;
        public int inouse;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public double[] nouse;

        public stTech_HFR(int init)
        {
            freq = 1000.0;
            bias = 0.0;
            interval = 60;
            totaltime = 3600;
            celloffwait = 0;

            skipcycle = 0;
            cycle = 2;
            inouse = 0;

            nouse = new double[2];
            for (int i = 0; i < 2; i++)
            {
                nouse[i] = 0.0;
            }
        }

        public void initialize()
        {
            freq = 1000.0;
            bias = 0.0;
            interval = 60;
            totaltime = 3600;
            celloffwait = 0;

            skipcycle = 0;
            cycle = 2;
            inouse = 0;

            for (int i = 0; i < 2; i++)
            {
                nouse[i] = 0.0;
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
            this = (stTech_HFR)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_HFR));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_PRR
    {
        public double rsfreq;
        public double rdfreq;
        public double rdendfreq;
        public double bias;
        public double interval;
        public double totaltime;
        public ushort celloffwait;

        public ushort skipcycle;
        public ushort cycle;
        public int    inouse;

        public stTech_PRR(int init)
        {
            rsfreq = 1000.0;
            rdfreq = 10.0;
            rdendfreq = 0.0;
            bias = 0.0;
            interval = 60;
            totaltime = 3600;
            celloffwait = 0;
            skipcycle = 0;
            cycle = 2;
            inouse = 0;
        }

        public void initialize()
        {
            rsfreq = 1000.0;
            rdfreq = 10.0;
            rdendfreq = 0.0;
            bias = 0.0;
            interval = 60;
            totaltime = 3600;
            celloffwait = 0;
            skipcycle = 0;
            cycle = 2;
            inouse = 0;
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
            this = (stTech_PRR)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_PRR));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_MON
    {
        public ushort nouse0;
        public double sampletime;
        public double totaltime;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 5)]
        public double[] nouse1;

        public stTech_MON(int init)
        {
            nouse0 = 0;
            sampletime = 1.0;
            totaltime = 60.0;
           
            nouse1 = new double[5];
            for (int i = 0; i < 5; i++)
            {
                nouse1[i] = 0.0;
            }
        }

        public void initialize()
        {
            nouse0 = 0;
            sampletime = 1.0;
            totaltime = 60.0;
          
            for (int i = 0; i < 5; i++)
            {
                nouse1[i] = 0.0;
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
            this = (stTech_MON)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_MON));
            pinnedArr.Free();
        }
    }
    
    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech_QIS
    {
        public double initfreq;
        public double finalfreq;
        public double bias;
        public ushort density;
        public int iteration;
        public ushort skipcycle;
        public ushort cycle;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public double[] nouse;
        public stTech_QIS(int init)
        {
            initfreq = 4000.0;
            finalfreq = 1.0;
            density = 4;
            iteration = 1;
            bias = 0.0;
            skipcycle = 0;
            cycle = 2;
            nouse = new double[3];
            for (int i = 0; i < 3; i++)
            {
                nouse[i] = 0.0;
            }
        }
        public void initialize()
        {
            initfreq = 4000.0;
            finalfreq = 1.0;
            density = 4;
            iteration = 1;
            bias = 0.0;
            skipcycle = 0;
            cycle = 2;
            for (int i = 0; i < 3; i++)
            {
                nouse[i] = 0.0;
            }
        }

        int GetNumberOfFrequncies(double initialFrequency, double finalFrequency, int density)
        {
            bool isInitLog = Math.Abs(Math.Log10(initialFrequency)) == (double)((int)Math.Abs(Math.Log10(initialFrequency)));
            bool isFinalLog = Math.Abs(Math.Log10(finalFrequency)) == (double)((int)Math.Abs(Math.Log10(finalFrequency)));

            int Factor = (isInitLog && isFinalLog) ? 1 : 0;

            //double x = 0.5 + fabs(log10(finalFrequency) - log10(initialFrequency)) * density;
            double x = Math.Abs(Math.Log10(finalFrequency) - Math.Log10(initialFrequency)) * density;

            return Factor + (int)Math.Ceiling(x); //mRounding(x,0);
        }

        public int GetFreqCount()
        {
            int iret = 0;
            int tdensity = Math.Max((int)density, 0);
            int titeration = Math.Max(iteration, 1);

            double tinitfreq = Math.Max(initfreq, DeviceConstants.MIN_EIS_FREQUENCY);
            double tfinalfreq = Math.Max(finalfreq, DeviceConstants.MIN_EIS_FREQUENCY);


            tinitfreq = Math.Min(tinitfreq, DeviceConstants.MAX_EIS_FREQUENCY);
            tfinalfreq = Math.Min(tfinalfreq, DeviceConstants.MAX_EIS_FREQUENCY);

            if (tinitfreq == tfinalfreq)
            {
                iret = 1;
            }
            else
            {
                if (tdensity == 0)
                {
                    iret = 2;
                }
                else
                {
                    iret = GetNumberOfFrequncies(tinitfreq, tfinalfreq, tdensity);
                }
            }
            iret *= iteration;
            return iret;
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
            this = (stTech_QIS)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_QIS));
            pinnedArr.Free();
        }
    }

    public struct stTech_DCH
    {
        public double sampletime;
        public double totaltime;
        public double CutoffV;
        public ushort nouse0;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 4)]
        public double[] nouse1;

        public stTech_DCH(int init)
        {
            sampletime = 1.0;
            totaltime = 10800.0;
            CutoffV = 0.0;
            nouse0 = 0;
            nouse1 = new double[4];
            for (int i = 0; i < 4; i++)
            {
                nouse1[i] = 0.0;
            }
        }

        public void initialize()
        {
            sampletime = 1.0;
            totaltime = 10800.0;
            CutoffV = 0.0;
            nouse0 = 0;
            for (int i = 0; i < 4; i++)
            {
                nouse1[i] = 0.0;
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
            this = (stTech_DCH)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_DCH));
            pinnedArr.Free();
        }
    }

    /*
    [StructLayout(LayoutKind.Explicit, Pack = 1), Serializable]
    public struct stTechType
    {
        [FieldOffset(0)]
        stTech_EIS eis;
        [FieldOffset(0)]
        stTech_HFR hfr;
        [FieldOffset(0)]
        stTech_PRR prr;
        public stTechType(int init)
        {
            hfr = new stTech_HFR(0);
            prr = new stTech_PRR(0);
            eis = new stTech_EIS(0);
        }

        public void initialize(int type)
        {
            if (type == 1) hfr.initialize();
            else if (type == 2) hfr.initialize();
            else eis.initialize();
        }

        public stTech_EIS GetEIS()
        {
            return eis;
        }

        public void SetEIS(stTech_EIS val)
        {
            eis = val;
        }

        public stTech_PRR GetPRR()
        {
            return prr;
        }

        public void SetPRR(stTech_PRR val)
        {
            prr = val;
        }

        public stTech_HFR GetHFR()
        {
            return hfr;
        }

        public void SetHFR(stTech_HFR val)
        {
            hfr = val;
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
        public void ToWritePtr(int type, byte[] Arr)
        {
            GCHandle pinnedArr = GCHandle.Alloc(Arr, GCHandleType.Pinned);
            if (type == 1) this.hfr = (stTech_HFR)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_HFR));
            else if (type == 2) this.prr = (stTech_PRR)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_PRR));
            else this.eis = (stTech_EIS)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech_EIS));
            pinnedArr.Free();
        }
    }
    */

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stTech
    {
        public ushort CheckVal;
        public stVersion version;
        public ushort type;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 58)] //Max size of technique
        public byte[] tech;
        public double ondelay;
        public ushort ondelaystable;
        public ushort irange;
        public ushort vrange;
        public stTech_Info info;
        public ushort usNoUse;
        public int    iNoUse;
        public double NoUse;
        public stTech(enTechType techtype = enTechType.TECH_EIS)
        {
            CheckVal = DeviceConstants.CHECKSCHVAL;
            version = new stVersion(0);
            version.Major = DeviceConstants.SCH_MAJOR;
            version.Minor = DeviceConstants.SCH_MINOR;
            version.Revision = DeviceConstants.SCH_REVISION;
            version.Build = DeviceConstants.SCH_BUILD;

            type = (ushort)techtype;
            ondelay = 5.0;
            ondelaystable = 1;
            irange = 2;
            vrange = 0;
            tech = new byte[58];

            Array.Clear(tech, 0, 58);

            info = new stTech_Info(0);
            usNoUse = 0;
            iNoUse = 0;
            NoUse = 0.0;
        }

        public void initialize(enTechType techtype)
        {
            type = (ushort)techtype;
            if(techtype == enTechType.TECH_MON)
            {
                ondelay = 2.0;
                ondelaystable = 0;
            }
            else if(techtype == enTechType.TECH_QIS)
            {
                ondelay = 2.0;
                ondelaystable = 0;
            }
            else if (techtype == enTechType.TECH_DCH)
            {
                ondelay = 2.0;
                ondelaystable = 0;
            }
            else
            {
                ondelay = 5.0;
                ondelaystable = 1;
            }
            
            irange = 2;
            vrange = 0;
            Array.Clear(tech, 0, 58);
            info.initialize();
            usNoUse = 0;
            iNoUse = 0;
            NoUse = 0.0;
        }

        public void GetEIS(ref stTech_EIS techeis)
        {
            if (tech == null) return;
            techeis.ToWritePtr(tech);
        }

        public void SetEIS(stTech_EIS val)
        {
            tech = val.ToByteArray();
        }

        public void GetPRR(ref stTech_PRR techprr)
        {
            techprr.ToWritePtr(tech);
        }

        public void SetPRR(stTech_PRR val)
        {
            tech = val.ToByteArray();
        }

        public void GetHFR(ref stTech_HFR techhfr)
        {
            techhfr.ToWritePtr(tech);
        }

        public void SetHFR(stTech_HFR val)
        {
            tech = val.ToByteArray();
        }

        public void GetMON(ref stTech_MON techmon)
        {
            techmon.ToWritePtr(tech);
        }


        public void SetMON(stTech_MON val)
        {
            tech = val.ToByteArray();
        }
        
        public void GetQIS(ref stTech_QIS techqeis)
        {
            techqeis.ToWritePtr(tech);

        }
        public void SetQIS(stTech_QIS val)
        {
            tech = val.ToByteArray();
        }

        public void GetDCH(ref stTech_DCH techdch)
        {
            techdch.ToWritePtr(tech);
        }


        public void SetDCH(stTech_DCH val)
        {
            tech = val.ToByteArray();
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
            this = (stTech)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stTech));
            pinnedArr.Free();
        }
    }



    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_id
    {
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 3)]
        public byte[] signature; // BZA 
        public byte version;		//
        public st_zim_id(byte init)
        {
            signature = new byte[3];
            signature[0] = 0;
            signature[1] = 0;
            signature[2] = 0;
            version = 0;
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
            this = (st_zim_id)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_id));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct stChStatusInf
{
        public ushort bCheck;
        public ushort bSelected;

        public ushort ZimType;

        public ushort TestStatus;
        public ushort LastError;
        public ushort ErrorStatus;
        

        public ushort Iac_rngno;
        public ushort Iac_in_rngno;
        public ushort Vdc_rngno;


        public uint RunTimeStamp;
        public int CycleNo;
        public uint CycleTimeStamp;
        public int NextCycleNo;
        public int TaskNo;
        public uint TaskTimeStamp;
        public int NextTaskNo;

        public st_rtc rtc;
        public double Veoc;
        public double Vdc;
        public double Idc;

        public double Temperature;
        public ushort RealSkip;
        public ushort LoadOn;
        public ushort BiasOn;

        public st_zim_eis_status eis_status;

        public double DispFreq;
        public double DispMag;
        public double DispPhase;
        
        
        public double nouse1;
        public stChStatusInf(byte init)
        {
            bCheck = 0;
            bSelected = 0;
            ZimType = 0;

            TestStatus = DeviceConstants.TESTSTATUS_READY;
            LastError = DeviceConstants.DEF_LAST_ERROR_NONE;
            ErrorStatus = DeviceConstants.DEF_LAST_ERROR_NONE;
            Iac_rngno = 0;
            Iac_in_rngno = 0;
            Vdc_rngno = 0;

            RunTimeStamp = 0;
            CycleNo = 0;
            CycleTimeStamp = 0;
            NextCycleNo = 0;
            TaskNo = 0;
            TaskTimeStamp = 0;
            NextTaskNo = 0;
            rtc = new st_rtc(0);
            Veoc = 0.0;
            Vdc = 0.0;
            Idc = 0.0;
            Temperature = 0.0;

            RealSkip = 0;
            LoadOn = 0;
            BiasOn = 0;
            eis_status = new st_zim_eis_status(0);

            DispFreq = 0.0;
            DispMag = 0.0;
            DispPhase = 0.0;
           
            nouse1 = 0.0;
        }

        public int GetSize()
        {
            return Marshal.SizeOf(this);
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
            this = (stChStatusInf)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stChStatusInf));
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

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stResHeaderInfo
    {
        public stVersion version;

        public st_rtc rtc_begin;
        public st_rtc rtc_end;

        public int Ch;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 12)]
        public byte[] Serial;
        public int sifch;

        public ushort Error;

        public double Capa;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.BATIDSIZE)]
        public byte[] batid;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.USERSIZE)]
        public byte[] user;
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MEMOSIZE)]
        public byte[] memo;

        [MarshalAs(UnmanagedType.ByValArray, SizeConst = DeviceConstants.MAX_PATH)]
        public byte[] techfile;

        public stResHeaderInfo(int init)
        {
            version = new stVersion(0);
            version.Major = DeviceConstants.RES_MAJOR;
            version.Minor = DeviceConstants.RES_MINOR;
            version.Revision = DeviceConstants.RES_REVISION;
            version.Build = DeviceConstants.RES_BUILD;

            rtc_begin = new st_rtc(0);
            rtc_end = new st_rtc(0);
            Error = 0;
            Ch = -1;
            Serial = new byte[12];
            for(int i=0; i<12; i++)
            {
                Serial[i] = 0x0;
            }
            sifch = -1;

            Capa = 1.0;
            batid = new byte[DeviceConstants.BATIDSIZE];
            Array.Clear(batid, 0, DeviceConstants.BATIDSIZE);

            user = new byte[DeviceConstants.USERSIZE];
            Array.Clear(user, 0, DeviceConstants.USERSIZE);

            memo = new byte[DeviceConstants.MEMOSIZE];
            Array.Clear(memo, 0, DeviceConstants.MEMOSIZE);

            techfile = new byte[DeviceConstants.MAX_PATH];
            Array.Clear(techfile, 0, DeviceConstants.MAX_PATH);
        }

        public void SetTechFile(string name)
        {
            SetTechFile(Encoding.UTF8.GetBytes(name));
        }

        public void SetTechFile(byte[] name)
        {
            int len = name.Length;

            Array.Clear(techfile, 0, DeviceConstants.MAX_PATH);

            if (len > (DeviceConstants.MAX_PATH - 1))
            {
                len = DeviceConstants.MAX_PATH - 1;
            }
            Array.Copy(name, techfile, len);
        }

        public string GetTechFile()
        {
            return Encoding.UTF8.GetString(techfile).Trim('\0');
        }
        
        public void SetBattId(byte[] id)
        {
            int len = id.Length;

            Array.Clear(batid, 0, DeviceConstants.BATIDSIZE);

            if (len > (DeviceConstants.BATIDSIZE - 1))
            {
                len = DeviceConstants.BATIDSIZE - 1;
            }
            Array.Copy(id, batid, len);
        }

        public void SetUser(byte[] name)
        {
            int len = name.Length;

            Array.Clear(user, 0, DeviceConstants.USERSIZE);

            if (len > (DeviceConstants.USERSIZE - 1))
            {
                len = DeviceConstants.USERSIZE - 1;
            }
            Array.Copy(name, user, len);
        }

        public void SetMemo(byte[] desc)
        {
            int len = desc.Length;

            Array.Clear(memo, 0, DeviceConstants.MEMOSIZE);

            if (len > (DeviceConstants.MEMOSIZE - 1))
            {
                len = DeviceConstants.MEMOSIZE - 1;
            }
            Array.Copy(desc, memo, len);
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
            this = (stResHeaderInfo)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stResHeaderInfo));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stResHeader
    {
        public stResHeaderInfo mInfo;
        public stSIFCfg inf_sif;
        public stZimCfg inf_sifch;
        public stTech tech;

        public stResHeader(int init)
        {
            mInfo = new stResHeaderInfo(0);

            inf_sif = new stSIFCfg(0);
            inf_sifch = new stZimCfg(0);

            tech = new stTech(0);
        }

        public void SetTechFile(string name)
        {
            mInfo.SetTechFile(name);
        }

        public void SetTechFile(byte[] name)
        {
            mInfo.SetTechFile(name);
        }

        public string GetTechFile()
        {
            return mInfo.GetTechFile();
        }

        public void SetBattId(byte[] id)
        {
            mInfo.SetBattId(id);
        }

        public void SetUser(byte[] name)
        {
            mInfo.SetUser(name);
        }

        public void SetMemo(byte[] desc)
        {
            mInfo.SetMemo(desc);
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
            this = (stResHeader)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stResHeader));
            pinnedArr.Free();
        }
    }

    [StructLayout(LayoutKind.Sequential, Pack = 1), Serializable]
    public struct stDefTestData
    {
        public ushort mType;
        public double TestTime;
        public int nCycle;
        public double CycleTime;
        public int nTaskNo;
        public double TaskTime;
        public double fFreq;
        public double real;
        public double img;
        public double Veoc;
        public double Vdc;
        public double Idc;
        public double Temperature;
        public double iacrng;
        public double vdcrng;

        public stDefTestData(int init)
        {
            mType = 0;
            TestTime = 0.0;
            nCycle = 0;
            CycleTime = 0.0;
            nTaskNo = 0;
            TaskTime = 0.0;

            iacrng = 0;
            vdcrng = 0;
            Veoc = 0.0;
            Vdc = 0.0;
            Idc = 0.0;
            Temperature = 0.0;

            fFreq = 0.0;
            real = 0.0;
            img = 0.0;
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
            this = (stDefTestData)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(stDefTestData));
            pinnedArr.Free();
        }
    }
}
