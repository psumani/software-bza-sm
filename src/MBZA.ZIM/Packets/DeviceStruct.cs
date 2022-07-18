using System;
using System.Runtime.InteropServices;

namespace ZiveLab.ZM.ZIM.Packets
{
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_acadc_item
    {
        public int adcval;
        public double value;

        public st_zim_acadc_item(byte init)
        {
            adcval = 0x800000;
            value = 0.0;
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
            this = (st_zim_acadc_item)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_acadc_item));
            pinnedArr.Free();
        }

    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_adc_ac_data
    {
        public st_zim_acadc_item iac;
        public st_zim_acadc_item vac;

        public st_zim_adc_ac_data(byte init)
        {
            iac = new st_zim_acadc_item(0);
            vac = new st_zim_acadc_item(0);
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
            this = (st_zim_adc_ac_data)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_adc_ac_data));
            pinnedArr.Free();
        }

    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_adc_ac_cfg
    {
        public ushort iac_osr;
        public ushort iac_flt;
        public ushort vac_osr;
        public ushort vac_flt;
        public st_zim_adc_ac_cfg(byte init)
        {
            iac_osr = 0;
            iac_flt = 2;
            vac_osr = 0;
            vac_flt = 2;
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
            this = (st_zim_adc_ac_cfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_adc_ac_cfg));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_adc_ac
    {
        public st_zim_adc_ac_cfg cfg;
        public st_zim_adc_ac_data data;

        public st_zim_adc_ac(byte init)
        {
            cfg = new st_zim_adc_ac_cfg(0);
            data = new st_zim_adc_ac_data(0);
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
            this = (st_zim_adc_ac)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_adc_ac));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_adc_vdc
    {
        public int adcval;
        public double value;

        public st_zim_adc_vdc(byte init)
        {
            adcval = 0x800000;
            value = 0.0;
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
            this = (st_zim_adc_vdc)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_adc_vdc));
            pinnedArr.Free();
        }

        public double ToVoltage()
        {
            if (adcval == 0x800000) // not yet initialized
                return double.NaN;
            else
                return value;
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rtd_data
    {
        public double Rvalue;
        public double Tvalue;
        public ushort adcval;
        public ushort fault;

        public st_zim_rtd_data(byte init)
        {
            Rvalue = 1000.0;
            Tvalue = 0.0;
            adcval = 0x4000;
            fault = 1;
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
            this = (st_zim_rtd_data)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rtd_data));
            pinnedArr.Free();
        }

        public double ToTemperature() 
        {
            if (fault != 0 || adcval == 0x4000)  // not yet initialized or fault
                return double.NaN;
            else
                return Tvalue;
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rtd_cfg
    {
        // Configuration register
        // D0 : 50/60Hz filter 
        //      1 = 50Hz
        //      0 = 60Hz
        // D1 : Fault status Clear
        //      1 = clear(auto-clear)
        // D2, D3 : Fault detection cycle control
        //      0 = no action
        //      1 = fault detection with automatic delay
        //      2 = run fault detection with manual delay(cycle 1)
        //      3 = finish fault detettion with manual delay (cycle 2)
        //
        // D4 : 3-wire?
        //      1 = 3-wire RTD
        //      0 = 2 or 4-wire RTD
        // D5 : 1-shot?
        //      1 = 1-shot (auto-clear)
        // D6 : Conversion mode
        //      1 = auto
        //      0 = normally off
        // D7 : Vbias
        //      1 = on
        //      0 = off
        public ushort data; 
        public st_zim_rtd_cfg(byte init)
        {
            data = 0;
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
            this = (st_zim_rtd_cfg)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rtd_cfg));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_rtd
    {
        public st_zim_rtd_cfg config;
        public st_zim_rtd_data data;

        public st_zim_rtd(byte init)
        {
            config = new st_zim_rtd_cfg(0);
            config.data = 0xd0;
            data = new st_zim_rtd_data(0);
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
            this = (st_zim_rtd)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_rtd));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_dds
    {
        public ushort reset;
        public ushort Half;
        public ushort pwdn;
        public double frequency;
        public double Phase;

        public st_zim_dds(byte init)
        {
            reset = 0;
            pwdn = 0;
            Half = 0;
            frequency = 1000.0;
            Phase = 0.0;
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
            this = (st_zim_dds)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_dds));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_do
    {
        public ushort data;
        public st_zim_do(byte init)
        {
            data = DeviceConstants.DEVDO_VDC_RNG0;
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
            this = (st_zim_do)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_do));
            pinnedArr.Free();
        }
    }
    
    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_eisdev
    {
        public ushort config;
        public ushort points;
        public st_zim_eisdev(byte init)
        {
            config = 0x8000;
            points = 64;
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
            this = (st_zim_eisdev)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_eisdev));
            pinnedArr.Free();
        }
    }

    [Serializable]
    [StructLayout(LayoutKind.Sequential, Pack = 1)]
    public struct st_zim_device
    {
        public st_zim_dds dds_sig;
        public st_zim_dds dds_clk;
        public st_zim_adc_ac adc_ac;
        public st_zim_adc_vdc adc_vdc;
        public st_zim_rtd adc_rtd;
        public st_zim_do ctrl_do;
        public st_zim_eisdev eis;

        public st_zim_device(byte init)
        {
            dds_sig = new st_zim_dds(0);
            dds_clk = new st_zim_dds(0);
            adc_ac = new st_zim_adc_ac(0);
            adc_vdc = new st_zim_adc_vdc(0);
            adc_rtd = new st_zim_rtd(0);
            ctrl_do = new st_zim_do(0);
            eis = new st_zim_eisdev(0);
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
            this = (st_zim_device)Marshal.PtrToStructure(pinnedArr.AddrOfPinnedObject(), typeof(st_zim_device));
            pinnedArr.Free();
        }
    }
}
