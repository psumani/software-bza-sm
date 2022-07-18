using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.ComponentModel;
using SMLib;
using System.IO;
using System.Threading;
using SM_Enum;
using System.Runtime.InteropServices;

namespace SM_Gateway
{
    public class BurnEventArgs : EventArgs
    {
        public int Max;
        public int ProgressValue;
        public int ProgressPerTotal;
        public int ProgressPerValue;
        public string strTask;
        public string strDescription;
        public int ListIndex;
        public ProgressBarStyle style;

        public BurnEventArgs(int max, int position, string sTask, int Index)
        {
            this.Max = max;
            ListIndex = Index;
            this.ProgressValue = position;
            ProgressPerTotal = 100;
            if (this.ProgressValue == 0 || this.Max == 0) ProgressPerValue = 0;
            else ProgressPerValue = (this.ProgressValue * 100) / this.Max;
            this.style = ProgressBarStyle.Continuous;
            this.strTask = sTask;
            this.strDescription = string.Format("{0} [{1} / {2} ] ", this.strTask, this.ProgressValue, this.Max);
        }

        public void SetStyle(ProgressBarStyle instyle)
        {
            this.style = instyle;
        }

        public void SetSatus(int max, int position, string sTask)
        {
            this.Max = max;
            this.ProgressValue = position;
            this.ProgressPerTotal = 100;
            if (this.ProgressValue == 0 || this.Max == 0) ProgressPerValue = 0;
            else ProgressPerValue = (this.ProgressValue * 100) / this.Max;

            this.strTask = sTask;
            this.strDescription = string.Format("{0} [{1} / {2} ] ", this.strTask, this.ProgressValue, this.Max);
        }

        public void SetSatus(int position, string sTask)
        {

            this.ProgressValue = position;
            if (this.ProgressValue == 0 || this.Max == 0) ProgressPerValue = 0;
            else ProgressPerValue = (this.ProgressValue * 100) / this.Max;

            this.strTask = sTask;
            this.strDescription = string.Format("{0} [{1} / {2} ] ", this.strTask, this.ProgressValue, this.Max);
        }

        public void SetSatus(int position)
        {
            this.ProgressValue = position;
            if (this.ProgressValue == 0 || this.Max == 0) ProgressPerValue = 0;
            else ProgressPerValue = (this.ProgressValue * 100) / this.Max;
            this.strDescription = string.Format("{0} [{1} / {2} ] ", this.strTask, this.ProgressValue, this.Max);
        }

        public void SetSatus(string sTask)
        {
            this.strTask = sTask;
            this.strDescription = string.Format("{0} [{1} / {2} ] ", this.strTask, this.ProgressValue, this.Max);
        }


        public string Description { get { return strDescription; } }
        public int MaxPercentValue { get { return ProgressPerTotal; } }
        public int PosPercentValue { get { return ProgressPerValue; } }
        public int MaxValue { get { return Max; } }
        public int LstIndex { get { return ListIndex; } }
        public int PosValue { get { return ProgressValue; } }
        public ProgressBarStyle Style { get { return style; } }
    }

    public class SM_BurnUSB
    {
        public List<string> ListVendAX;
        public int Devindex;
        public int Lstindex;
        string sSerial;
        public BackgroundWorker Worker;
        BurnEventArgs mArgs;
        public SM_BurnUSB(int devidx, string serial, BackgroundWorker worker, int index)
        {
            this.Devindex = devidx;
            this.sSerial = serial;
            Worker = worker;
            ListVendAX = new List<string>();
            Lstindex = index;
            mArgs = new BurnEventArgs(100, 0, "", Lstindex);
        }

        public int LoadListVendAX()
        {
            ListVendAX.Clear();
            mArgs.SetSatus(295, 0, "USB>Load to list of VendAX program.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            ListVendAX.Add(":0A0DD10000010202030304040505FB");
            ListVendAX.Add(":1005E500E4F52CF52BF52AF529C203C200C202C297");
            ListVendAX.Add(":1005F50001120DF37E097FB88E0A8F0B75120975EE");
            ListVendAX.Add(":1006050013CA7508097509D47510097511F475149F");
            ListVendAX.Add(":100615000A751514EE54E07003020733752D007545");
            ListVendAX.Add(":100625002E808E2F8F30C3743E9FFF740A9ECF2479");
            ListVendAX.Add(":1006350002CF3400FEE48F288E27F526F525F52414");
            ListVendAX.Add(":10064500F523F522F521AF28AE27AD26AC25AB2441");
            ListVendAX.Add(":10065500AA23A922A821C31208EE502AE52E252493");
            ListVendAX.Add(":10066500F582E52D3523F58374CDF0E4FAF9F8E547");
            ListVendAX.Add(":10067500242401F524EA3523F523E93522F522E87A");
            ListVendAX.Add(":100685003521F52180C0E4F524F523F522F521AFC8");
            ListVendAX.Add(":1006950028AE27AD26AC25AB24AA23A922A821C3C1");
            ListVendAX.Add(":1006A5001208EE5037E5302524F582E52F3523F580");
            ListVendAX.Add(":1006B50083E0FFE52E2524F582E52D3523F583EF2F");
            ListVendAX.Add(":1006C500F0E4FAF9F8E5242401F524EA3523F523C5");
            ListVendAX.Add(":1006D500E93522F522E83521F52180B3852D0A85F6");
            ListVendAX.Add(":1006E5002E0B74B82480FF740934FFFEC3E5139FF5");
            ListVendAX.Add(":1006F500F513E5129EF512C3E50D9FF50DE50C9E6C");
            ListVendAX.Add(":10070500F50CC3E50F9FF50FE50E9EF50EC3E50944");
            ListVendAX.Add(":100715009FF509E5089EF508C3E5119FF511E5105C");
            ListVendAX.Add(":100725009EF510C3E5159FF515E5149EF514D2E861");
            ListVendAX.Add(":1007350043D82090E668E04409F090E65CE0443D4B");
            ListVendAX.Add(":10074500F0D2AF90E680E054F7F0538EF875B1FF24");
            ListVendAX.Add(":1007550075B60175B101C20330010512034BC20123");
            ListVendAX.Add(":10076500300329120DFD5024C203120CE12000169E");
            ListVendAX.Add(":1007750090E682E030E704E020E1EF90E682E030A9");
            ListVendAX.Add(":10078500E604E020E0E4120C89120DFF1208FF8058");
            ListVendAX.Add(":01079500C79C");
            ListVendAX.Add(":010796002240");
            ListVendAX.Add(":10034B0090E6B9E070030204271470030204D02472");
            ListVendAX.Add(":10035B00FE700302056524FB700302042114700375");
            ListVendAX.Add(":10036B0002041B14700302040F14700302041524FF");
            ListVendAX.Add(":10037B000560030205D1120E0140030205DD90E674");
            ListVendAX.Add(":10038B00BBE024FE602C14604724FD601614603122");
            ListVendAX.Add(":10039B0024067066E50A90E6B3F0E50B90E6B4F040");
            ListVendAX.Add(":1003AB000205DDE51290E6B3F0E51390E6B4F0023A");
            ListVendAX.Add(":1003BB0005DDE50C90E6B3F0E50D90E6B4F0020533");
            ListVendAX.Add(":1003CB00DDE50E90E6B3F0E50F90E6B4F00205DD47");
            ListVendAX.Add(":1003DB0090E6BAE0FF120CB5AA06A9077B01EA4921");
            ListVendAX.Add(":1003EB004B600DEE90E6B3F0EF90E6B4F00205DD56");
            ListVendAX.Add(":1003FB0090E6A0E04401F00205DD90E6A0E04401A8");
            ListVendAX.Add(":10040B00F00205DD120DB30205DD120DE30205DD71");
            ListVendAX.Add(":10041B00120DDB0205DD120DA10205DD120E0340EC");
            ListVendAX.Add(":10042B00030205DD90E6B8E0247F602B14603C24CA");
            ListVendAX.Add(":10043B000260030204C6A200E433FF25E0FFA20220");
            ListVendAX.Add(":10044B00E4334F90E740F0E4A3F090E68AF090E6B7");
            ListVendAX.Add(":10045B008B7402F00205DDE490E740F0A3F090E628");
            ListVendAX.Add(":10046B008AF090E68B7402F00205DD90E6BCE05456");
            ListVendAX.Add(":10047B007EFF7E00E0D3948040067C007D018004EB");
            ListVendAX.Add(":10048B007C007D00EC4EFEED4F24D1F582740D3EC9");
            ListVendAX.Add(":10049B00F583E493FF3395E0FEEF24A1FFEE34E602");
            ListVendAX.Add(":1004AB008F82F583E0540190E740F0E4A3F090E6EF");
            ListVendAX.Add(":1004BB008AF090E68B7402F00205DD90E6A0E04432");
            ListVendAX.Add(":1004CB0001F00205DD120E0540030205DD90E6B8D2");
            ListVendAX.Add(":1004DB00E024FE601D240260030205DD90E6BAE015");
            ListVendAX.Add(":1004EB00B40105C2000205DD90E6A0E04401F00274");
            ListVendAX.Add(":1004FB0005DD90E6BAE0705990E6BCE0547EFF7ED5");
            ListVendAX.Add(":10050B0000E0D3948040067C007D0180047C007D5C");
            ListVendAX.Add(":10051B0000EC4EFEED4F24D1F582740D3EF583E4D5");
            ListVendAX.Add(":10052B0093FF3395E0FEEF24A1FFEE34E68F82F5C7");
            ListVendAX.Add(":10053B0083E054FEF090E6BCE05480FF1313135499");
            ListVendAX.Add(":10054B001FFFE0540F2F90E683F0E04420F00205EC");
            ListVendAX.Add(":10055B00DD90E6A0E04401F08078120E0750739016");
            ListVendAX.Add(":10056B00E6B8E024FE60202402706790E6BAE0B49F");
            ListVendAX.Add(":10057B000104D200805C90E6BAE06402605490E61D");
            ListVendAX.Add(":10058B00A0E04401F0804B90E6BCE0547EFF7E007F");
            ListVendAX.Add(":10059B00E0D3948040067C007D0180047C007D00CC");
            ListVendAX.Add(":1005AB00EC4EFEED4F24D1F582740D3EF583E493B2");
            ListVendAX.Add(":1005BB00FF3395E0FEEF24A1FFEE34E68F82F58347");
            ListVendAX.Add(":1005CB00E04401F0800C120080500790E6A0E0445C");
            ListVendAX.Add(":0905DB0001F090E6A0E04480F07C");
            ListVendAX.Add(":0105E40022F4");
            ListVendAX.Add(":03003300020DF9C2");
            ListVendAX.Add(":040DF90053D8EF32AA");
            ListVendAX.Add(":060DF300D200120DEB22FC");
            ListVendAX.Add(":0108FF0022D6");
            ListVendAX.Add(":020DFD00D322FF");
            ListVendAX.Add(":020DFF00D322FD");
            ListVendAX.Add(":020E0100D322FA");
            ListVendAX.Add(":080DDB0090E6BAE0F51ED322F8");
            ListVendAX.Add(":100DA10090E740E51EF0E490E68AF090E68B04F0CF");
            ListVendAX.Add(":020DB100D3224B");
            ListVendAX.Add(":080DE30090E6BAE0F51CD322F2");
            ListVendAX.Add(":100DB30090E740E51CF0E490E68AF090E68B04F0BF");
            ListVendAX.Add(":020DC300D32239");
            ListVendAX.Add(":020E0300D322F8");
            ListVendAX.Add(":020E0500D322F6");
            ListVendAX.Add(":020E0700D322F4");
            ListVendAX.Add(":1000800090E678E05410FFC4540F4450F51D13E47B");
            ListVendAX.Add(":1000900033F51F90E6B9E0245EB40B004003020381");
            ListVendAX.Add(":1000A000499000AF75F003A4C58325F0C5837302A2");
            ListVendAX.Add(":1000B00001A90201A90201240200D00200EA020102");
            ListVendAX.Add(":1000C0000A0201530201A302012D0201400201793B");
            ListVendAX.Add(":1000D00090E740E51FF0E490E68AF090E68B04F0AC");
            ListVendAX.Add(":1000E00090E6A0E04480F002034990E600E0FFC4FF");
            ListVendAX.Add(":1000F000540F90E740F0E490E68AF090E68B04F02D");
            ListVendAX.Add(":1001000090E6A0E04480F002034990E740740FF0CD");
            ListVendAX.Add(":10011000E490E68AF090E68B04F090E6A0E044805C");
            ListVendAX.Add(":10012000F002034990E6BAE0F51D02034990E67A31");
            ListVendAX.Add(":10013000E054FEF0E490E68AF090E68BF00203498A");
            ListVendAX.Add(":1001400090E67AE04401F0E490E68AF090E68BF0E5");
            ListVendAX.Add(":1001500002034990E7407407F0E490E68AF090E6E5");
            ListVendAX.Add(":100160008B04F090E6A0E04480F07FE87E03120A62");
            ListVendAX.Add(":10017000D5D204120C5A02034990E6B5E054FEF0C1");
            ListVendAX.Add(":1001800090E6BFE090E68AF090E6BEE090E68BF065");
            ListVendAX.Add(":1001900090E6BBE090E6B3F090E6BAE090E6B4F00B");
            ListVendAX.Add(":1001A000020349751F01431D0190E6BAE075310055");
            ListVendAX.Add(":1001B000F532A3E0FEE4EE423190E6BEE075330096");
            ListVendAX.Add(":1001C000F534A3E0FEE4EE423390E6B8E064C060AC");
            ListVendAX.Add(":1001D00003020299E5344533700302034990E6A017");
            ListVendAX.Add(":1001E000E020E1F9C3E5349440E5339400500885FC");
            ListVendAX.Add(":1001F0003335853436800675350075364090E6B95E");
            ListVendAX.Add(":10020000E0B4A335E4F537F538C3E5389536E5377E");
            ListVendAX.Add(":1002100095355060E5322538F582E5313537F5837F");
            ListVendAX.Add(":10022000E0FF74402538F582E434E7F583EFF0050C");
            ListVendAX.Add(":1002300038E5387002053780D0E4F537F538C3E586");
            ListVendAX.Add(":10024000389536E5379535501874402538F582E4F1");
            ListVendAX.Add(":1002500034E7F58374CDF00538E538700205378052");
            ListVendAX.Add(":10026000DDAD367AE779407EE77F40AB07AF32AE4F");
            ListVendAX.Add(":1002700031120A40E490E68AF090E68BE536F025EC");
            ListVendAX.Add(":1002800032F532E5353531F531C3E5349536F5349F");
            ListVendAX.Add(":10029000E5339535F5330201D490E6B8E06440606B");
            ListVendAX.Add(":1002A0000302034975B1FF75B60175B1FE00000088");
            ListVendAX.Add(":1002B000000000000000000000E534453370030238");
            ListVendAX.Add(":1002C0000346E490E68AF090E68BF090E6A0E0200A");
            ListVendAX.Add(":1002D000E1F990E68BE0753500F53690E6B9E0B4CB");
            ListVendAX.Add(":1002E000A335E4F537F538C3E5389536E537953568");
            ListVendAX.Add(":1002F000503874402538F582E434E7F583E0FFE5B3");
            ListVendAX.Add(":10030000322538F582E5313537F583EFF00538E5EC");
            ListVendAX.Add(":10031000387002053780D0AD367AE779407EE77FC6");
            ListVendAX.Add(":1003200040AB07AF32AE31120BBFE5362532F532A6");
            ListVendAX.Add(":10033000E5353531F531C3E5349536F534E533959A");
            ListVendAX.Add(":0A03400035F5330202B975B101C3AF");
            ListVendAX.Add(":01034A002290");
            ListVendAX.Add(":100D0600C0E0C083C08290E6B5E04401F0D2015352");
            ListVendAX.Add(":0F0D160091EF90E65D7401F0D082D083D0E0328F");
            ListVendAX.Add(":100D7500C0E0C083C0825391EF90E65D7404F0D06B");
            ListVendAX.Add(":060D850082D083D0E032B1");
            ListVendAX.Add(":100D8B00C0E0C083C0825391EF90E65D7402F0D057");
            ListVendAX.Add(":060D9B0082D083D0E0329B");
            ListVendAX.Add(":100B1B00C0E0C083C08290E680E030E70E85080C11");
            ListVendAX.Add(":100B2B0085090D85100E85110F800C85100C851114");
            ListVendAX.Add(":100B3B000D85080E85090F5391EF90E65D7410F04B");
            ListVendAX.Add(":070B4B00D082D083D0E0321C");
            ListVendAX.Add(":100D5D00C0E0C083C082D2035391EF90E65D74086A");
            ListVendAX.Add(":080D6D00F0D082D083D0E03207");
            ListVendAX.Add(":100B5200C0E0C083C08290E680E030E70E85080CDA");
            ListVendAX.Add(":100B620085090D85100E85110F800C85100C8511DD");
            ListVendAX.Add(":100B72000D85080E85090F5391EF90E65D7420F004");
            ListVendAX.Add(":070B8200D082D083D0E032E5");
            ListVendAX.Add(":010E090032B6");
            ListVendAX.Add(":010E0A0032B5");
            ListVendAX.Add(":010E0B0032B4");
            ListVendAX.Add(":010E0C0032B3");
            ListVendAX.Add(":010E0D0032B2");
            ListVendAX.Add(":010E0E0032B1");
            ListVendAX.Add(":010E0F0032B0");
            ListVendAX.Add(":010E100032AF");
            ListVendAX.Add(":010E110032AE");
            ListVendAX.Add(":010E120032AD");
            ListVendAX.Add(":010E130032AC");
            ListVendAX.Add(":010E140032AB");
            ListVendAX.Add(":010E150032AA");
            ListVendAX.Add(":010E160032A9");
            ListVendAX.Add(":010E170032A8");
            ListVendAX.Add(":010E180032A7");
            ListVendAX.Add(":010E190032A6");
            ListVendAX.Add(":010E1A0032A5");
            ListVendAX.Add(":010E1B0032A4");
            ListVendAX.Add(":010E1C0032A3");
            ListVendAX.Add(":010E1D0032A2");
            ListVendAX.Add(":010E1E0032A1");
            ListVendAX.Add(":010E1F0032A0");
            ListVendAX.Add(":010E2000329F");
            ListVendAX.Add(":010E2100329E");
            ListVendAX.Add(":010E2200329D");
            ListVendAX.Add(":010E2300329C");
            ListVendAX.Add(":010E2400329B");
            ListVendAX.Add(":010E2500329A");
            ListVendAX.Add(":010E26003299");
            ListVendAX.Add(":010E27003298");
            ListVendAX.Add(":010E28003297");
            ListVendAX.Add(":010E29003296");
            ListVendAX.Add(":010E2A003295");
            ListVendAX.Add(":010E2B003294");
            ListVendAX.Add(":010E2C003293");
            ListVendAX.Add(":060A8B00AB07AA06AC0552");
            ListVendAX.Add(":100A9100E4FDE51F6010EA7E000DEE2400F582E41E");
            ListVendAX.Add(":100AA1003410F583EAF0EBAE050D74002EF582E407");
            ListVendAX.Add(":100AB1003410F583EBF0AF050D74002FF582E434AB");
            ListVendAX.Add(":100AC10010F583ECF07A107B00AF1D120D41AF1DC4");
            ListVendAX.Add(":030AD100120B897C");
            ListVendAX.Add(":010AD40022FF");
            ListVendAX.Add(":0A0BBF008E398F3A8D3B8A3C8B3D46");
            ListVendAX.Add(":100BC900E4F53EE53EC3953B5020053AE53AAE399A");
            ListVendAX.Add(":100BD9007002053914FFE53D253EF582E4353CF503");
            ListVendAX.Add(":0A0BE90083E0FD120A8B053E80D95F");
            ListVendAX.Add(":010BF30022DF");
            ListVendAX.Add(":0A0A40008E398F3A8D3B8A3C8B3DC6");
            ListVendAX.Add(":100A4A00E4FDF53EE51F6012E539FF7E000DEE2458");
            ListVendAX.Add(":100A5A0000F582E43410F583EFF0E53AAE050D7443");
            ListVendAX.Add(":100A6A00002EF582E43410F583E53AF07A107B0023");
            ListVendAX.Add(":100A7A00AF1D120D41AB3DAA3CAD3BAF1D120D257A");
            ListVendAX.Add(":010A8A002249");
            ListVendAX.Add(":1009B8001201000200000040470502100000010279");
            ListVendAX.Add(":1009C80000010A06000200000040010009022000A0");
            ListVendAX.Add(":1009D800010100A0320904000002FF000000070521");
            ListVendAX.Add(":1009E8000202000200070586020002000902200038");
            ListVendAX.Add(":1009F800010100A0320904000002FF000000070501");
            ListVendAX.Add(":100A080001024000000705810240000004030904B8");
            ListVendAX.Add(":100A180010034300790070007200650073007300D2");
            ListVendAX.Add(":100A2800160345005A002D005500530042002000CF");
            ListVendAX.Add(":080A38004600580032000000E6");
            ListVendAX.Add(":100C890090E682E030E004E020E60B90E682E03076");
            ListVendAX.Add(":100C9900E119E030E71590E680E04401F07F147E29");
            ListVendAX.Add(":0C0CA90000120AD590E680E054FEF02214");
            ListVendAX.Add(":100CE10090E682E044C0F090E681F0438701000085");
            ListVendAX.Add(":040CF10000000022DD");
            ListVendAX.Add(":100C5A0030040990E680E0440AF0800790E680E0DC");
            ListVendAX.Add(":100C6A004408F07FDC7E05120AD590E65D74FFF039");
            ListVendAX.Add(":0F0C7A0090E65FF05391EF90E680E054F7F022A0");
            ListVendAX.Add(":100AD5008E398F3A90E600E054187012E53A2401F9");
            ListVendAX.Add(":100AE500FFE43539C313F539EF13F53A801590E670");
            ListVendAX.Add(":100AF50000E05418FFBF100BE53A25E0F53AE5395B");
            ListVendAX.Add(":100B050033F539E53A153AAE39700215394E6005B7");
            ListVendAX.Add(":060B1500120CF580EE2237");
            ListVendAX.Add(":080DEB00E4F51BD2E9D2AF22AE");
            ListVendAX.Add(":100B890090E678E020E6F9C2E990E678E04480F062");
            ListVendAX.Add(":100B9900EF25E090E679F090E678E030E0F990E62C");
            ListVendAX.Add(":100BA90078E04440F090E678E020E6F990E678E0D5");
            ListVendAX.Add(":060BB90030E1D6D2E92272");
            ListVendAX.Add(":100C2800A90790E678E020E6F9E51B702390E678BE");
            ListVendAX.Add(":100C3800E04480F0E925E090E679F08D16AF03A94D");
            ListVendAX.Add(":100C4800077517018A188919E4F51A751B01D3224B");
            ListVendAX.Add(":020C5800C322B5");
            ListVendAX.Add(":100BF400A90790E678E020E6F9E51B702590E678F1");
            ListVendAX.Add(":100C0400E04480F0E925E0440190E679F08D16AFE8");
            ListVendAX.Add(":100C140003A9077517018A188919E4F51A751B03C6");
            ListVendAX.Add(":040C2400D322C322F2");
            ListVendAX.Add(":03004B0002079712");
            ListVendAX.Add(":10079700C0E0C083C082C085C084C086758600C0A3");
            ListVendAX.Add(":1007A700D075D000C000C001C002C003C006C0079A");
            ListVendAX.Add(":1007B70090E678E030E206751B0602088190E6783D");
            ListVendAX.Add(":1007C700E020E10CE51B64026006751B0702088147");
            ListVendAX.Add(":1007D700E51B24FE605F14603624FE700302087276");
            ListVendAX.Add(":1007E70024FC700302087E24086003020881AB170B");
            ListVendAX.Add(":1007F700AA18A919AF1A051A8F8275830012089FC4");
            ListVendAX.Add(":1008070090E679F0E51A65167070751B05806B9098");
            ListVendAX.Add(":10081700E679E0AB17AA18A919AE1A8E827583007C");
            ListVendAX.Add(":100827001208CC751B02E5166401704E90E678E05D");
            ListVendAX.Add(":100837004420F08045E51624FEB51A0790E678E0D7");
            ListVendAX.Add(":100847004420F0E51614B51A0A90E678E04440F023");
            ListVendAX.Add(":10085700751B0090E679E0AB17AA18A919AE1A8E96");
            ListVendAX.Add(":10086700827583001208CC051A800F90E678E04461");
            ListVendAX.Add(":1008770040F0751B008003751B005391DFD007D034");
            ListVendAX.Add(":1008870006D003D002D001D000D0D0D086D084D0FB");
            ListVendAX.Add(":0808970085D082D083D0E0324D");
            ListVendAX.Add(":020CB500A9078D");
            ListVendAX.Add(":100CB700AE14AF158F828E83A3E064037017AD0166");
            ListVendAX.Add(":100CC70019ED7001228F828E83E07C002FFDEC3EB0");
            ListVendAX.Add(":090CD700FEAF0580DF7E007F0006");
            ListVendAX.Add(":010CE00022F1");
            ListVendAX.Add(":100D2500120BF4E51B24FA600E146006240770F319");
            ListVendAX.Add(":0C0D3500D322E4F51BD322E4F51BD322EB");
            ListVendAX.Add(":100D4100120C28E51B24FA600E146006240770F3C8");
            ListVendAX.Add(":0C0D5100D322E4F51BD322E4F51BD322CF");
            ListVendAX.Add(":100CF5007400F58690FDA57C05A3E582458370F912");
            ListVendAX.Add(":010D050022CB");
            ListVendAX.Add(":03004300020900AF");
            ListVendAX.Add(":030053000209009F");
            ListVendAX.Add(":10090000020D0600020D8B00020D7500020D5D0048");
            ListVendAX.Add(":10091000020B1B00020B5200020E0900020E0A001D");
            ListVendAX.Add(":10092000020E0B00020E0C00020E0D00020E0E0055");
            ListVendAX.Add(":10093000020E0F00020E1000020E1100020E120035");
            ListVendAX.Add(":10094000020E1300020E0A00020E1400020E150021");
            ListVendAX.Add(":10095000020E1600020E1700020E1800020E1900F9");
            ListVendAX.Add(":10096000020E1A00020E0A00020E0A00020E0A000F");
            ListVendAX.Add(":10097000020E1B00020E1C00020E1D00020E1E00C5");
            ListVendAX.Add(":10098000020E1F00020E2000020E2100020E2200A5");
            ListVendAX.Add(":10099000020E2300020E2400020E2500020E260085");
            ListVendAX.Add(":1009A000020E2700020E2800020E2900020E2A0065");
            ListVendAX.Add(":0809B000020E2B00020E2C00C8");
            ListVendAX.Add(":03000000020DC529");
            ListVendAX.Add(":0C0DC500787FE4F6D8FD75813E0205E55C");
            ListVendAX.Add(":10089F00BB010CE58229F582E5833AF583E022500E");
            ListVendAX.Add(":1008AF0006E92582F8E622BBFE06E92582F8E22258");
            ListVendAX.Add(":0D08BF00E58229F582E5833AF583E4932272");
            ListVendAX.Add(":1008CC00F8BB010DE58229F582E5833AF583E8F062");
            ListVendAX.Add(":1008DC00225006E92582C8F622BBFE05E92582C80E");
            ListVendAX.Add(":0208EC00F222F6");
            ListVendAX.Add(":1008EE00EB9FF5F0EA9E42F0E99D42F0E89C45F060");
            ListVendAX.Add(":0108FE0022D7");
            ListVendAX.Add(":00000001FF");

            mArgs.SetSatus(295);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            return ListVendAX.Count();
        }

        public bool BurningROM(string Filename)
        {
            FileStream fs;
            int i;
            int fileLength;
            int addr;
            int len;
            int TransSize;
            byte[] buf = new byte[512];
 
            var p = FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial];

            mArgs.SetSatus(100, 0, "USB>To burning ROM of USB Chip.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            try
            {
                fs = new FileStream(Filename, FileMode.Open, FileAccess.Read);
            }
            catch (IOException e)
            {
                mArgs.SetSatus(e.ToString());
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            fileLength = (int)fs.Length;
            len = (int)fileLength;
            mArgs.SetSatus(len, 0, "USB>To burning ROM of USB Chip.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);


            fs.Seek(0, SeekOrigin.Begin);
            addr = 0;

            while (len > 0)
            {
                TransSize = 448;
                for (i = 0; i < buf.Count(); i++) buf[i] = 0xcd;
                if (len <= TransSize) TransSize = len;
                fs.Read(buf, 0, TransSize);
                if (p.ProgramROMFX2(buf, TransSize, (ushort)addr) == false)
                {
                    fs.Dispose();
                    mArgs.SetSatus(fileLength, addr, "USB>Failed to programing USB Firmware  at ROM.");
                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                    return false;
                }
                addr += TransSize;
                len -= TransSize;
                mArgs.SetSatus(addr);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }
            mArgs.SetSatus(fileLength);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            

            byte[] data = new byte[(int)enUsbRomItemLength.Information];
            Array.Clear(data, 0, data.Count());
            BitConverter.GetBytes((UInt64)fs.Length).CopyTo(data, 0);
            BitConverter.GetBytes(
                SM_Converting.DateTimeToCTime(File.GetCreationTime(Filename))).CopyTo(
                data, Marshal.SizeOf((UInt64)fs.Length));

            fs.Dispose();

            if (p.WriteEEPROM((int)enUsbBaseAdderssEeprom.InformationArea, (int)enUsbRomItemLength.Information, ref data)
                == false)
            {
                mArgs.SetSatus(fileLength, addr, "USB>Failed to write USB Firmware information at ROM.");
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }
            mArgs.SetSatus(fileLength, addr, "USB>Succeed to programing USB Firmware  at ROM.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            
            return true;
        }

        public bool BurningROMVandAX(string Filename)
        {
            FileStream fs;
            int i;
            int fileLength;
            int addr;
            int len;
            int TransSize;
            byte[] buf = new byte[1024];
 
            var p = FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial];
            mArgs.SetSatus(100, 0, "USB>To burning ROM of USB Chip.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            try
            {
                fs = new FileStream(Filename, FileMode.Open, FileAccess.Read);
            }
            catch (IOException e)
            {
                mArgs.SetSatus(string.Format("USB>{1}",e.ToString()));
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            fileLength = (int)fs.Length;
            len = (int)fileLength;
            mArgs.SetSatus(fileLength, 0, "USB>To burning ROM of USB Chip.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
        
            if (p.CheckUsbPROM() == false)
            {
                mArgs.SetSatus(fileLength, 0, "USB>Failed to checking the EEPROM in USB chip.");
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            fs.Seek(0, SeekOrigin.Begin);
            addr = 0;
            while (len > 0)
            {
                TransSize = 1024;
                for (i = 0; i < buf.Count(); i++) buf[i] = 0xcd;
                if (len <= TransSize) TransSize = len;

                fs.Read(buf, 0, TransSize);
                if (p.UploadROMFX2(buf, TransSize, (ushort)addr) == false)
                {
                    fs.Dispose();
                    mArgs.SetSatus(fileLength, addr, "USB>Failed to programing USB Firmware  at ROM.");
                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                    return false;
                }
                addr += TransSize;
                len -= TransSize;
                mArgs.SetSatus(addr);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }


            

            byte[] data = new byte[(int)enUsbRomItemLength.Information];

            BitConverter.GetBytes((UInt64)fs.Length).CopyTo(data, 0);
            BitConverter.GetBytes(
                SM_Converting.DateTimeToCTime(File.GetCreationTime(Filename))).CopyTo(
                data, Marshal.SizeOf((UInt64)fs.Length));

            fs.Dispose();

            if (p.WriteEEPROM((int)enUsbBaseAdderssEeprom.InformationArea, (int)enUsbRomItemLength.Information, ref data)
                == false)
            {
                mArgs.SetSatus(fileLength, addr, "USB>Failed to write USB Firmware information at ROM.");
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }

            mArgs.SetSatus(fileLength, addr, "USB>Succeed to programing USB Firmware  at ROM.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            return true;
        }

        // Delete non-data records
        public bool BurningRAM()
        {
            string str;
            string str1;
            string stroffset;
            string strdata;
            string item;
            byte tmpbyte;

            ushort offset;
            ushort nxtoffset;
            ushort offset1;

            int idx;
            int prog;
            int xferLen;
            int len;
            int tmplen;
            int bytes;
            int RamSize = 0x2000;
            long lastAddr;

            byte[] pstr;
            byte[] pxfer;
            byte[] buf;


            mArgs.SetSatus(100, 0, "USB>To burning RAM of USB Chip.");

            var p = FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial];
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            byte[] data = new byte[1];
            data[0] = 0x1;
            if (p.ResetFX2(data) == false)
            {
                mArgs.SetSatus("USB>Failed to programing USB Firmware  at RAM.");
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            pstr = new byte[2];
            pxfer = new byte[4];
            buf = new byte[0x1000];


            if (ListVendAX.Count() < 1)
            {
                LoadListVendAX();
            }

            mArgs.SetSatus(this.ListVendAX.Count, 0, "USB> To delete non-data records of VendAX program list.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            prog = 0;
            for (idx = this.ListVendAX.Count - 1; idx >= 0; idx--)
            {
                item = this.ListVendAX[idx];
                if (item.Length > 0)
                {
                    str = item.Substring(7, 2);   // Get the Record Type into v
                    pstr = Encoding.UTF8.GetBytes(str);
                    if (SM_Converting.Hex2Bin(ref pstr) > 0)
                    {
                        ListVendAX[idx] = "";
                    }
                }
                prog++;
                mArgs.SetSatus(prog);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                Thread.Sleep(1);
            }
            mArgs.SetSatus(this.ListVendAX.Count);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            mArgs.SetSatus(this.ListVendAX.Count, 0, "USB>To build strings of VendAX program list.");
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            prog = 0;
            for (idx = 0; idx < this.ListVendAX.Count; idx++)
            {
                // Build string that just contains the offset followed by the data bytes
                item = this.ListVendAX[idx];
                xferLen = item.IndexOf("\\");
                if (xferLen > 0)
                {
                    str = item.Substring(0, xferLen - 1);
                }
                else str = item;
                if (str.Count() > 0)
                {
                    // Get the offset
                    stroffset = str.Substring(3, 4);

                    // Get the string of data chars
                    str1 = str.Substring(1, 2);
                    //                 pstr = new byte[str.Count()];
                    pstr = Encoding.UTF8.GetBytes(str1);

                    xferLen = SM_Converting.Hex2Bin(ref pstr) * 2;
                    str = item.Substring(9, xferLen);

                    // Replace the string in the list
                    ListVendAX[idx] = stroffset + str;
                }
                mArgs.SetSatus(idx);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                Thread.Sleep(1);
            }
            mArgs.SetSatus(this.ListVendAX.Count);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);


            idx = 0;
            offset = 0;
            offset1 = 0;
            xferLen = 0;
            strdata = "";
            nxtoffset = 0;
            mArgs.SetSatus(this.ListVendAX.Count, 0, "USB>To burning RAM of USB Chip." );
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            prog = 0;
            for (idx = 0; idx < this.ListVendAX.Count; idx++)
            {
                item = this.ListVendAX[idx];
                if (item.Count() > 0)
                {
                    str = item.Substring(0, 4);
                    pstr = new byte[str.Count()];
                    pxfer = new byte[2];

                    pstr = Encoding.UTF8.GetBytes(str);
                    pxfer = BitConverter.GetBytes(offset);
                    SM_Converting.Hex2Bin(ref pstr, ref pxfer, 2);
                    tmpbyte = pxfer[0]; pxfer[0] = pxfer[1]; pxfer[1] = tmpbyte;  // Swap the bytes
                    offset = BitConverter.ToUInt16(pxfer, 0);
                    len = item.Count();
                    bytes = (len - 4) / 2;
                    lastAddr = offset + bytes;
                    if ((offset < RamSize) && (lastAddr > RamSize))
                    {
                        bytes = RamSize - offset;
                    }

                    if (offset < RamSize)
                    {
                        xferLen += bytes;
                        if ((offset == nxtoffset) && (xferLen < 0x1000))
                        {
                            strdata += item.Substring(4, (bytes * 2));
                        }
                        else
                        {
                            tmplen = strdata.Count() / 2;
                            if (tmplen > 0)
                            {
                                Array.Clear(buf, 0, buf.Count());
                                Hex2Bytes(strdata, ref buf);
           
                                if (p.UploadRAMFX2(buf, tmplen, (ushort)offset1) == false)
                                {
                                    data[0] = 0x0;
                                    p.ResetFX2(data);
                                    mArgs.SetSatus(this.ListVendAX.Count, nxtoffset, "USB>Failed to programing USB Firmware  at RAM.");
                                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                                    p.ResetFX2(data);
                                    return false;
                                }
                            }
                            offset1 = offset;  // The destination address
                            strdata = item.Substring(4, (bytes * 2));
                            xferLen = bytes;
                        }
                        nxtoffset = (ushort)(offset + bytes);
                    }
                }
                prog++;
                mArgs.SetSatus(prog);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                Thread.Sleep(1);
            }

            tmplen = strdata.Count() / 2;
            if (tmplen > 0)
            {
                pstr = new byte[strdata.Count()];
                pstr = Encoding.UTF8.GetBytes(strdata);
                SM_Converting.Hex2Bin(ref pstr, ref buf, tmplen);
                if (p.UploadRAMFX2(buf, tmplen, (ushort)offset1) == false)
                {
                    mArgs.SetSatus(this.ListVendAX.Count, nxtoffset, "USB>Failed to programing USB Firmware  at RAM.");
                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                    data[0] = 0x0;
                    p.ResetFX2(data);
                    return false;
                }
            }
            data[0] = 0x0;
            p.ResetFX2(data);
            mArgs.SetSatus(this.ListVendAX.Count);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            return true;
        }

        public int Hex2Bytes(string byteChars, ref byte[] buf)
        {
            // Remove non-hex chars
            string tmpStr;
            string str;
            int bytes;
            int i;
            byte[] pstr;

            pstr = new byte[2];

            tmpStr = byteChars.ToUpper();
            tmpStr.Trim();
            bytes = tmpStr.Count() / 2;

            // Stuff the output buffer with the byte values
            if (bytes > 0)
            {
                for (i = 0; i < bytes; i++)
                {
                    str = tmpStr.Substring(i * 2, 2);
                    pstr = Encoding.UTF8.GetBytes(str);
                    buf[i] = SM_Converting.Hex2Bin(ref pstr);
                }
            }

            return bytes;
        }
    }

    public class SM_BurnFPGA
    {
        public const int MAX_FCFG_DLEN = 256;
        public int Devindex;
        public int Lstindex;
        public string sSerial;
        BurnEventArgs mArgs;
        public BackgroundWorker Worker;

        public SM_BurnFPGA(int devidx, string serial, BackgroundWorker worker, int index)
        {
            this.Devindex = devidx;
            this.sSerial = serial;
            Lstindex = index;
            Worker = worker;
            mArgs = new BurnEventArgs(20, 0, "", Lstindex);
        }

        public bool ClearROM(int nCh)
        {
            
            string str;
            byte[] data;
            var p = FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial];

            str = string.Format("FPGA{0}>To erease ROM of FPGA Chip. ", nCh + 1);
            mArgs.SetSatus(20, 0, str);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            data = new byte[1];
            data[0] = 0;

            if (p.MyUsbProcess(nCh, (byte)enTarget.FPGA, (byte)enFpgaComand.FPGA_ERASE, 0, enFlag.FLAG_WRITE, 0, 0, ref data) == false)
            {
                mArgs.SetSatus(string.Format("FPGA{0}>Failed erease ROM of FPGA Chip.", nCh + 1));
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            for (int i = 0; i < 20; i++)
            {
                Thread.Sleep(1000);
                if (p.MyUsbProcess(nCh, (byte)enTarget.FPGA, (byte)enFpgaComand.FPGA_ISERASED, 0, enFlag.FLAG_REQUEST, 0, 1, ref data) == false)
                {
                    mArgs.SetSatus(i, string.Format("FPGA{0}>Failed erease ROM of FPGA Chip.", nCh + 1));
                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                    return false;
                }
                if (data[0] == 0)
                {
                    break;
                }
                mArgs.SetSatus(i);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            }
            return true;
        }

        public bool BurningROM(int nCh, string Filename)
        {
            FileStream fs;
            string str;
            int fileLength;
            int len;
            int TransSize;
            int size;
            byte[] buf;

            var p = FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial];
     
            str = string.Format("To burning ROM of FPGA Chip(Channel-{0}).", nCh + 1);
            mArgs.SetSatus(100, 0, str);

            if (ClearROM(nCh) == false)
            {
                return false;
            }

            try
            {
                fs = new FileStream(Filename, FileMode.Open, FileAccess.Read);
            }
            catch (IOException e)
            {
                mArgs.SetSatus(string.Format("FPGA{0}>{1}", nCh + 1, e.ToString()));
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            fileLength = (int)fs.Length;
            len = (int)fileLength;

            str = string.Format("FPGA{0}>To burning ROM of FPGA Chip.", nCh + 1);
            mArgs.SetSatus(len, 0, str);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            fs.Seek(0, SeekOrigin.Begin);
            TransSize = 0;
            buf = new byte[MAX_FCFG_DLEN + 1];
            while (TransSize < len)
            {
                size = fs.Read(buf, 0, MAX_FCFG_DLEN);
                if (p.MyUsbProcess(nCh, (byte)enTarget.FPGA, (byte)enFpgaComand.FPGA_CONTINUE, 0, enFlag.FLAG_WRITE, size, 0, ref buf) == false)
                {
                    fs.Dispose();
                    str = string.Format("FPGA{0}>Failed to programing FPGA Firmware  at ROM.", nCh + 1);
                    mArgs.SetSatus(TransSize, str);
                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                    return false;
                }
                TransSize += size;
                mArgs.SetSatus(TransSize);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }
            

            if (p.MyUsbProcess(nCh, (byte)enTarget.FPGA, (byte)enFpgaComand.FPGA_STOP, 0, enFlag.FLAG_WRITE, 0, 0, ref buf) == false)
            {

                str = string.Format("FPGA{0}>Failed to stop programing FPGA Firmware  at ROM.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }

            

            byte[] data = new byte[(int)enUsbRomItemLength.Information];
            Array.Clear(data, 0, data.Count());
            BitConverter.GetBytes((UInt64)fs.Length).CopyTo(data, 0);
            BitConverter.GetBytes(
                SM_Converting.DateTimeToCTime(File.GetCreationTime(Filename))).CopyTo(
                data, Marshal.SizeOf((UInt64)fs.Length));

            fs.Dispose();

            uint address = (uint)enUsbBaseAdderssEeprom.InformationArea;
            address += (uint)((int)enUsbRomItemLength.Information * (nCh + 1));
            if (p.WriteEEPROM((int)address, (int)enUsbRomItemLength.Information, ref data)
                == false)
            {
                str = string.Format("FPGA{0}>Failed to write FPGA Firmware  at ROM.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }
            if (p.MyUsbProcess(nCh, (byte)enTarget.FPGA, (byte)enFpgaComand.FPGA_RESET, 0, enFlag.FLAG_WRITE, 0, 0, ref data) == false)
            {
                str = string.Format("FPGA{0}>Failed to reset FPGA.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }
            if (p.MyUsbProcess(nCh, (byte)enTarget.FPGA, (byte)enFpgaComand.FPGA_RESET, 0, enFlag.FLAG_WRITE, 0, 0, ref data) == false)
            {
                str = string.Format("FPGA{0}>Failed to reset FPGA.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }
            str = string.Format("FPGA{0}>Succeed to programing FPGA Firmware  at ROM.", nCh + 1);
            mArgs.SetSatus(str);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            return true;
        }
    }

    public class SM_BurnDSP
    {
        public int Devindex;
        public int Lstindex;
        public string sSerial;
        public BackgroundWorker Worker;
        public int[] gSecAddr;
        public const int DSP_FLASH_MAXDLEN = 4096;
        BurnEventArgs mArgs;

        public SM_BurnDSP(int devidx, string serial, BackgroundWorker worker, int index)
        {
            this.Devindex = devidx;
            this.sSerial = serial;
            Worker = worker;
            Lstindex = index;
            gSecAddr = new int[11] { 0x00000, 0x02000, 0x03000, 0x04000, 0x08000, 0x10000, 0x18000, 0x20000, 0x28000, 0x30000, 0x38000 };
            mArgs = new BurnEventArgs(11, 0, "", Lstindex);
        }

        public bool ClearROM(int nCh)
        {
            int i;
            string str;
            byte[] data;

            
            data = new byte[1];

            var p = FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial];
            str = string.Format("DSP{0}>To erease flash ROM of DSP Chip.", nCh + 1);
            mArgs.SetSatus(11, 0, str);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            if(p.MyDSPProcess(nCh,enFlag.FLAG_WRITE, enCommCmdMain.ManualTest,(ushort)enCommCmdManualTest.OnOffExternal,0,0,0,ref data) == false)
            {
                str = string.Format("DSP{0}>Failed to control external mode.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }
            if (p.MyUsbProcess(nCh,(byte)enTarget.DSP,(byte)enDspComand.DEV_FLASHEN,0,enFlag.FLAG_WRITE,0,0,ref data) == false)
            {
                str = string.Format("DSP{0}>Failed to setting enable flash ROM of DSP Chip.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            for (i = 0; i < 11; i++)
            {
                if (p.MyUsbProcess(nCh,(byte)enTarget.DSP,(byte)enDspComand.FLASHSECERASE,gSecAddr[i],enFlag.FLAG_WRITE,0,0,ref data) == false)
                {
                    p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHDIS, 0, enFlag.FLAG_WRITE, 0, 0, ref data);
                    str = string.Format("DSP{0}>Failed to erease flash ROM of DSP Chip.", nCh + 1);
                    mArgs.SetSatus(i,str);
                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                    return false;
                }
                data[0] = 0x0;
                int nStTime = Environment.TickCount;
                while (true)
                {
                    if ((Environment.TickCount - nStTime) > 2000)
                    {
                        p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHDIS, 0, enFlag.FLAG_WRITE, 0, 0, ref data);
                        str = string.Format("DSP{0}>Failed to erease flash ROM of DSP Chip.", nCh + 1);
                        mArgs.SetSatus(i, str);
                        if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                        return false;
                    }
                    if (p.MyUsbProcess(nCh,(byte)enTarget.DSP,(byte)enDspComand.FLASHISERASED,gSecAddr[i],enFlag.FLAG_REQUEST,0,1,ref data) == false)
                    {
                        p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHDIS, 0, enFlag.FLAG_WRITE, 0, 0, ref data);
                        str = string.Format("DSP{0}>Failed to erease flash ROM of DSP Chip.", nCh + 1);
                        mArgs.SetSatus(i, str);
                        if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                        return false;
                    }

                    if (data[0] == 0x55) break;
                }
                mArgs.SetSatus(i);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                Thread.Sleep(1);
            }
            mArgs.SetSatus(11);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            /*
                        if (p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHDIS, 0, enFlag.FLAG_WRITE, 0, 0, ref data) == false)
                        {
                            str = string.Format("DSP{0}>Failed to setting disable flash ROM of DSP Chip.", nCh + 1);
                            ShowMessageBox(str, "Burning");
                            return false;
                        }*/
            return true;
        }

        public bool BurningROM(int nCh, string Filename)
        {
            FileStream fs;
            int i;
            int j;
            string str;
            int m_nAddr;
            int len;
            long m_uLen;
            long m_Len;
            long m_uTr;
            long uBc;
            byte[] cBuff = new byte[DSP_FLASH_MAXDLEN];
            byte[] data = new byte[DSP_FLASH_MAXDLEN * 2];

            str = string.Format("DSP{0}>To burning flash ROM of DSP Chip.", nCh + 1);

            mArgs.SetSatus((int)0, 0, str);

            var p = FormMain.mSM_Comm_USB._SP_USB_Interface_Dict[sSerial];
            try
            {
                fs = new FileStream(Filename, FileMode.Open, FileAccess.Read);
            }
            catch (IOException e)
            {
                mArgs.SetSatus(e.ToString());
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            if (this.ClearROM(nCh) == false)
            {
                if (p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHDIS, 0, enFlag.FLAG_WRITE, 0, 0, ref data) == false)
                {
                    str = string.Format("DSP{0}>Failed to setting disable flash ROM of DSP Chip.", nCh + 1);
                    mArgs.SetSatus(str);
                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                    return false;
                }
                return false;
            }

            if (p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHEN, 0, enFlag.FLAG_WRITE, 0, 0, ref data) == false)
            {
                str = string.Format("DSP{0}>Failed to setting enable flash ROM of DSP Chip.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            m_uLen = fs.Length;
            m_Len = (int)fs.Length;
            len = (int)fs.Length;

            str = string.Format("DSP{0}>To burning flash ROM of DSP Chip.", nCh + 1);
            mArgs.SetSatus((int)m_Len, 0, str);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
     
            fs.Seek(0, SeekOrigin.Begin);

            m_nAddr = 0;
            m_uTr = 0;
            while (m_uLen > 0)
            {
                if (m_uLen < DSP_FLASH_MAXDLEN)
                    uBc = m_uLen;
                else
                    uBc = DSP_FLASH_MAXDLEN;

                fs.Read(cBuff, 0, (int)uBc);

                j = 0;
                for (i = 0; i < uBc; i++)
                {
                    data[j] = cBuff[i];
                    j++;
                    data[j] = 0x0;
                    j++;
                }
                if (p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHWR, m_nAddr, enFlag.FLAG_WRITE_LONG, (int)(uBc * 2), 0, ref data) == false)
                {
                    str = string.Format("DSP{0}>Failed to programming flash ROM of DSP Chip.", nCh + 1);
                    mArgs.SetSatus((int)m_nAddr, 0, str);
                    p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHDIS, 0, enFlag.FLAG_WRITE, 0, 0, ref data);
                    if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                    return false;
                }


                m_nAddr += (int)uBc;
                m_uLen -= uBc;
                m_uTr += uBc;

                mArgs.SetSatus(m_nAddr);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }
            if (p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_FLASHDIS, 0, enFlag.FLAG_WRITE, 0, 0, ref data) == false)
            {
                str = string.Format("DSP{0}>Failed to setting disable flash ROM of DSP Chip.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
                return false;
            }

            

            byte[] data1 = new byte[(int)enUsbRomItemLength.Information];
            Array.Clear(data1, 0, data1.Count());

            BitConverter.GetBytes(fs.Length).CopyTo(data1, 0);
            BitConverter.GetBytes(
                SM_Converting.DateTimeToCTime(File.GetCreationTime(Filename))).CopyTo(
                data1, Marshal.SizeOf(fs.Length));
            fs.Dispose();

            
            uint address = (uint)enUsbBaseAdderssEeprom.InformationArea;
            address += (uint)((int)enUsbRomItemLength.Information * (nCh + 9));
            if (p.WriteEEPROM((int)address, (int)enUsbRomItemLength.Information, ref data1)
                == false)
            {
                str = string.Format("DSP{0}>Failed to write DSP Firmware information at ROM.", nCh + 1);
                mArgs.SetSatus(str);
                if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);
            }
            p.MyUsbProcess(nCh, (byte)enTarget.DSP, (byte)enDspComand.DEV_DSPRST, 0, enFlag.FLAG_WRITE, 0, 0, ref data);


            str = string.Format("DSP{0}>Succeed to programing DSP Firmware  at flash ROM.", nCh + 1);
            mArgs.SetSatus(str);
            if (Worker != null) Worker.ReportProgress(mArgs.PosPercentValue, mArgs);

            return true;
        }
    }
}
