using System;

namespace ZiveLab.ZM.ZIM.Utilities
{
    public static class RTD
    {
        // Standard
        private static double[] ptxIPTS68 = new double[3]
        {
            +3.90802e-03,
            -5.80195e-07,
            -4.27350e-12
        };
        private static double[] ptxITS90 = new double[3]
        {
            +3.9083E-03,
            -5.7750E-07,
            -4.1830E-12
        };

        // Polynomial coefficients
        // from https://github.com/ulikoehler/UliEngineering/blob/master/UliEngineering/Physics/RTD.py
        private static double[] pt1000Correction = new double[6]
        {
            1.51892983e-15,
            -2.85842067e-12,
            -5.34227299e-09,
            1.80282972e-05,
            -1.61875985e-02,
            4.84112370e+00
        };
        private static double[] pt100Correction = new double[6]
        {
            1.51892983e-10,
            -2.85842067e-08,
            -5.34227299e-06,
            1.80282972e-03,
            -1.61875985e-01,
            4.84112370e+00
        };

        /// <summary>
        /// Returns the temperature from the resistance of RTD
        /// </summary>
        /// <param name="r">The resistance of RTD.</param>
        /// <param name="r0">The resistance of RTD at 0 °C.</param>
        /// <param name="standard">Callendar-Van Dusen coefficients, use ptxIPTS68 or ptxITS90.</param>
        /// <param name="poly">The Polynomial coefficients.</param>
        /// <returns></returns>
        public static double ResistanceToTemperature(this double r, double r0 = 1000.0, double[] standard = null, double[] poly = null)
        {
            if (standard == null)
                standard = ptxITS90;

            if (poly == null)
                poly = Math.Abs(r0 - 1000) < 1e-3
                    ? pt1000Correction
                    : pt100Correction;

            double A = standard[0];
            double B = standard[1];

            double t = ((-r0 * A + Math.Sqrt(r0 * r0 * A * A - 4 * r0 * B * (r0 - r))) / (2.0 * r0 * B));

            if (r < r0)
                t += Polynomial(poly, r);

            return t;
        }

        private static double Polynomial(double[] coef, double x)
        {
            double y = 0;
            double xn = 0;
            for (int i = 0; i < coef.Length; i++)
            {
                y += coef[i] * xn;
                xn *= x;
            }

            return y;
        }
    }
}
