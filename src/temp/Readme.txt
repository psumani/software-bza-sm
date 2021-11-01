        금번의 SIF 보드의 경우 정확한 이유를 알 수 없지만 Firmware가 동작하지 않아서 아래에 설명된
        USB를 통한 Firmware 변경을 통해 정상화 했습니다.

        이런 상황이 그간 처음 발생하였는데, 자주 발생하지 않는 문제이지만 추후 발생 가능성이 있다고'
        생각되어 민테크에서도 복원할 수 있도록 지원할까 합니다.  	

	1. 첨부된 LanSetLib.dll 파일을 참조로 등록하세요.
        

        2. 첨부된 SIFBoot.bin 파일을 실행파일의 폴더 하위 Boot 폴더를 만들고 그곳에 위치 합니다.
           물론, 아래 코드와 맞게 해서 경로를 바꿀수도 있습니다.    

	3. SIF 보드와 PC를 USB케이블로 연결하여 해당 USB serial 포트를 통해 Firmware를 바꿀 수 있습니다.
           * 주의할 점은 MAC 어드레스는 바꾸지 않는것을 권장합니다.


	using LanSetLib;


	private void LnklblBurnSifToUsb_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (Properties.Settings.Default.FilePathSIF.Length < 3)
            {
                Properties.Settings.Default.FilePathSIF = Application.StartupPath + "\\SIF4ZIM.1.3.8.0.bin";
                Properties.Settings.Default.Save();
            }

            LanSetLib.LanSetForm mfrm;
            mfrm = new LanSetForm(Application.StartupPath + "\\boot\\SIFBoot.bin", Properties.Settings.Default.FilePathSIF);
            try
            {
                mfrm.ShowDialog();
                Properties.Settings.Default.FilePathSIF = mfrm.FirmwareFile;
                Properties.Settings.Default.Save();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }