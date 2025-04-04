using System.IO;
using System.Windows.Forms;

namespace ZiveLab.ZM.Dataview 
{
    public class CoPath
    {   
        static public string GetCurrentDirectory()
        {
            return Application.StartupPath;
        }

        static public string GetExcutableFile()
        {
            return Path.GetFileNameWithoutExtension(Application.ExecutablePath);
        }

        static public string GetFilterString(string[] extarr)
        {
            string result = string.Empty;

            for(int i = 0; i < extarr.Length; i++)
            {
                result += "*" + extarr[i];

                if (i < extarr.Length - 1)
                    result += ";";
            }

            return result;
        }
    }
}
