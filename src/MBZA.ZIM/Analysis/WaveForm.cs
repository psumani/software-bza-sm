using MathNet.Numerics;
using MathNet.Numerics.IntegralTransforms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using ZiveLab.Primer;

namespace ZiveLab.Device.ZIM.Win.Analysis
{
    public class WaveForm
    {
        private bool isVoltageSamples;

        public double TimeInterval { get; private set; }
        public double SamplingRate { get; private set; }

        public double Frequency { get; private set; }
        public int Cycles { get; private set; } // must be power of 2
        public int PointsInCycle { get; private set; } // must be power of 2

        public double[] Times { get; private set; }        
        public double[] Samples { get; private set; } // must be 2^n data
        public double[] BaseSignal { get; private set; }
        public double[] ErrorSignal { get; private set; }
        public double ErrorRMS { get; private set; }
        
        public double[] Frequencies { get; private set; }        
        public Complex[] FFT { get; private set; } // rms
        public double[] Magnitude { get; private set; }
        public double[] Phase { get; private set; } // radian
        public double[] PhaseInDegree { get; private set; } // degree
        public double[] Power { get; private set; }
        public double[] PowerIndB { get; private set; } // dB

        public Complex Component { get; private set; }
                
        public WaveForm() // remove this after validation!
        {
            int length = 256;
            TimeInterval = 1.0 / length;
            SamplingRate = 1.0 / TimeInterval;
            Frequency = 1.0;
            double amplitude = 1.0;
            Samples = Generate.Sinusoidal(length, SamplingRate, Frequency, amplitude);
            double dc = 1.0;
            for (int i = 0; i < Samples.Length; i++)
            {
                Samples[i] += dc;
            }

            PointsInCycle = (int)(1.0 / (TimeInterval * Frequency));
            Cycles = (int)(Samples.Length / PointsInCycle);

            GenerateTimesAndFrequencies();
            FourierTransform();
            ErrorAnalysis();

            // Magnitude[0] = dc = 1.0
            // Magnitude[Cycles] = amplitude / sqrt(2) = 0.707

            // Power[0] = dc^2 = 1.0
            // Power[Cycles] = (amplitude / sqrt(2))^2 = 0.5

            // PowerInDB[0] = 0 dB
            // PowerInDB[Cycles] = -3.01
        }

        public WaveForm(ZItem data, bool usingVoltageSamples)
        {
            isVoltageSamples = usingVoltageSamples;

            Samples = (usingVoltageSamples)
                ? data.VoltageSamples.ToArray()
                : data.CurrentSamples.ToArray();

            SamplingRate = data.SamplingRate;
            TimeInterval = 1.0 / SamplingRate;
            Frequency = data.Frequency;
            
            PointsInCycle = (int)(1.0 / (TimeInterval * Frequency));
            Cycles =  (int)(Samples.Length / PointsInCycle);

            GenerateTimesAndFrequencies();
            FourierTransform();
            ErrorAnalysis();
        }

        public WaveForm(double[] samples, double dt, double frequency)
        {
            Samples = samples;
            TimeInterval = dt;
            SamplingRate = 1.0 / TimeInterval;
            Frequency = frequency;

            PointsInCycle = (int)(1.0 / (TimeInterval * Frequency));
            Cycles = (int)(Samples.Length / PointsInCycle);

            GenerateTimesAndFrequencies();
            FourierTransform();
            ErrorAnalysis();
        }

        public WaveForm(double[] samples, double dt, int pointsInCycle)
        {
            Samples = samples;
            TimeInterval = dt;
            SamplingRate = 1.0 / TimeInterval;

            PointsInCycle = pointsInCycle;
            Cycles = (int)(Samples.Length / PointsInCycle);
            Frequency = 1.0 / (PointsInCycle * TimeInterval);

            GenerateTimesAndFrequencies();
            FourierTransform();
            ErrorAnalysis();
        }

        public WaveForm(double[] samples, int pointsInCycle)
        {
            Samples = samples;
            TimeInterval = 1.0;
            SamplingRate = 1.0 / TimeInterval;

            PointsInCycle = pointsInCycle;
            Cycles = (int)(Samples.Length / PointsInCycle);
            Frequency = 1.0 / (PointsInCycle * TimeInterval);

            GenerateTimesAndFrequencies();
            FourierTransform();
            ErrorAnalysis();
        }

        private void GenerateTimesAndFrequencies()
        {
            Times = new double[Samples.Length];
            for (int i = 0; i < Samples.Length; i++)
            {
                Times[i] = TimeInterval * i;
            }

            int N = Samples.Length / 2;

            Frequencies = new double[N];
            for (int i = 0; i < N; i++)
            {
                Frequencies[i] = SamplingRate / Samples.Length * i;
            }
        }

        private void FourierTransform()
        {
            Complex[] spectrum = new Complex[Samples.Length];
            for (int i = 0; i<Samples.Length; i++)
            {
                spectrum[i] = new Complex(Samples[i], 0);
            }

            Fourier.Forward(spectrum, FourierOptions.Matlab);

            // Scaling spectrum to convert into Magnitude, Phase and Power spectra

            int N = spectrum.Length / 2;
            double factor = Math.Sqrt(2.0) / spectrum.Length;

            FFT = new Complex[N];

            Magnitude = new double[N];
            Phase = new double[N];
            PhaseInDegree = new double[N];

            Power = new double[N];
            PowerIndB = new double[N];

            FFT[0] = spectrum[0] / spectrum.Length;
            Magnitude[0] = FFT[0].Real;
            Phase[0] = 0.0;
            PhaseInDegree[0] = Phase[0] * 180.0 / Constants.Pi;
            Power[0] = FFT[0].Magnitude * FFT[0].Magnitude;

            for (int i = 1; i < N; i++)
            {
                FFT[i] = spectrum[i] * factor;

                Magnitude[i] = FFT[i].Magnitude;
                Phase[i] = FFT[i].Phase;
                PhaseInDegree[i] = Phase[i] * 180.0 / Constants.Pi;

                Power[i] = FFT[i].Magnitude * FFT[i].Magnitude;
            }

            double maxPower = FFT[Cycles].Magnitude * FFT[Cycles].Magnitude; // set power of desired frequency as 0dB
            PowerIndB = Power.Select(v => 10.0 * Math.Log10(v / maxPower)).ToArray();

            var Z1 = Magnitude[Cycles] * Math.Cos(Phase[Cycles]);
            var Z2 = Magnitude[Cycles] * Math.Sin(Phase[Cycles]);
            Component = new Complex(Z1, Z2);
        }

        private void ErrorAnalysis()
        {
            BaseSignal = new double[Samples.Length];
            ErrorSignal = new double[Samples.Length];

            // Note that AC components of Magnitude, i.e. i > 0, are RMS values.
            for (int i = 0; i < Samples.Length; i++)
            {
                BaseSignal[i] = Magnitude[0] 
                    + Constants.Sqrt2 * Magnitude[Cycles] * Math.Cos(Constants.Pi2 * Frequency * Times[i] + Phase[Cycles]);
                ErrorSignal[i] = Samples[i] - BaseSignal[i];
            }

            var meanError = ErrorSignal.Average();
            var sum = 0.0;
            for (int i = 0; i < ErrorSignal.Length; i++)
            {
                sum += (ErrorSignal[i] - meanError) * (ErrorSignal[i] - meanError);
            }
            ErrorRMS = Math.Sqrt(sum / ErrorSignal.Length);
        }

        public List<KeyValuePair<string, string>> ToKeyValuePairs()
        {
            NumericFormatter NF = new NumericFormatter();
            var list = new List<KeyValuePair<string, string>>();

            if (isVoltageSamples)
            {
                list.Add(new KeyValuePair<string, string>("[Voltage Samples]", ""));
            }
            else
            {
                list.Add(new KeyValuePair<string, string>("[Current Samples]", ""));
            }

            list.Add(new KeyValuePair<string, string>("Sampling Rate", string.Format(NF, "{0:%.3pHz}", this.SamplingRate)));
            list.Add(new KeyValuePair<string, string>("Samples", this.Samples.Length.ToString()));
            list.Add(new KeyValuePair<string, string>("Cycles", this.Cycles.ToString()));
            list.Add(new KeyValuePair<string, string>("Points in cycle", this.PointsInCycle.ToString()));

            list.Add(new KeyValuePair<string, string>("Frequency", string.Format(NF, "{0:%.3pHz}", this.Frequency)));
            if (isVoltageSamples)
            {
                list.Add(new KeyValuePair<string, string>("Offset", string.Format(NF, "{0:%.3pV}", this.Magnitude[0])));
                list.Add(new KeyValuePair<string, string>("Peak", string.Format(NF, "{0:%.3pV}", this.Magnitude[Cycles] * Constants.Sqrt2)));
                list.Add(new KeyValuePair<string, string>("Magnitude", string.Format(NF, "{0:%.3pVrms}", this.Magnitude[Cycles])));
            }
            else
            {
                list.Add(new KeyValuePair<string, string>("Offset", string.Format(NF, "{0:%.3pA}", this.Magnitude[0])));
                list.Add(new KeyValuePair<string, string>("Peak", string.Format(NF, "{0:%.3pA}", this.Magnitude[Cycles] * Constants.Sqrt2)));
                list.Add(new KeyValuePair<string, string>("Magnitude", string.Format(NF, "{0:%.3pArms}", this.Magnitude[Cycles])));
            }
            list.Add(new KeyValuePair<string, string>("Phase", string.Format(NF, "{0:%.3f°}", this.PhaseInDegree[Cycles])));
            if (isVoltageSamples)
            {
                list.Add(new KeyValuePair<string, string>("Error", string.Format(NF, "{0:%.3pVrms}", this.ErrorRMS)));
            }
            else
            {
                list.Add(new KeyValuePair<string, string>("Error", string.Format(NF, "{0:%.3pArms}", this.ErrorRMS)));
            }

            return list;
        }
    }
}
