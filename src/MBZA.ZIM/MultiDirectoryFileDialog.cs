using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ZiveLab.ZM.ZIM
{
    public class MultiDirectoryFileDialog
    {
        public string[] Directories;
        public string DefaultDirectory;
        public bool Multiselect;
        public string Filter { get; set; } = "All files (*.*)|*.*";
        public string Title { get; set; } = "Open file";
        public string DefaultExt;
        public int FilterIndex;
        public string FileName;
        public MultiDirectoryFileDialog()
        {
            Directories = new string[10];
            for(int i=0; i<10; i++)
            {
                Directories[i] = "";
            }
            DefaultExt = "";
            DefaultDirectory = "";
            FileName = "";
            FilterIndex = 0;
            Multiselect = false;
        }

        // 원하는 경로를 이름과 함께 외부에서 추가/변경할 수 있는 메서드
        public bool AddDirectory(int index, string path)
        {
            if (index >= 10) return false;

            Directories[index] = path;
            return true;
        }

        // 메인 실행 메서드: 사용자가 선택한 파일 경로를 반환
        public DialogResult ShowDialog()
        {
            string selectedInitialDirectory = Directories[0];

            // [Step 1] 10개 디렉토리를 고를 수 있는 간이 선택 창 띄우기
            using (Form selectionForm = new Form())
            {
                selectionForm.Text = "Select initial directory";
                selectionForm.Size = new System.Drawing.Size(350, 180);
                selectionForm.FormBorderStyle = FormBorderStyle.FixedDialog;
                selectionForm.StartPosition = FormStartPosition.CenterParent;
                selectionForm.MaximizeBox = false;
                selectionForm.MinimizeBox = false;

                Label label = new Label() { Text = "Select the initial location where you want to find the file :", Left = 20, Top = 15, Width = 300 };
                ComboBox comboBox = new ComboBox() { Left = 20, Top = 40, Width = 290, DropDownStyle = ComboBoxStyle.DropDownList };
                Button btnOk = new Button() { Text = "Ok", Left = 130, Top = 90, Width = 90, DialogResult = DialogResult.OK };
                Button btnCancel = new Button() { Text = "Cancel", Left = 230, Top = 90, Width = 90, DialogResult = DialogResult.Cancel };

                comboBox.Items.Clear();
                for(int i=0; i<10; i++)
                {
                    if(Directory.Exists(Directories[i])) comboBox.Items.Add(Directories[i]);
                }
    
                selectionForm.Controls.AddRange(new Control[] { label, comboBox, btnOk, btnCancel });
                selectionForm.AcceptButton = btnOk;

                if (selectionForm.ShowDialog() == DialogResult.OK)
                {
                    selectedInitialDirectory = comboBox.SelectedValue.ToString();
                }
                else
                {
                    return DialogResult.Cancel; // 사용자가 취소를 누르면 파일 창을 열지 않고 종료
                }
            }

            // 안전장치: 선택한 폴더가 없으면 내 문서로 대체
            if (!Directory.Exists(selectedInitialDirectory))
            {
                selectedInitialDirectory = DefaultDirectory;
            }
            if (!Directory.Exists(selectedInitialDirectory))
            {
                selectedInitialDirectory = "";
            }
                // [Step 2] 선택된 디렉토리로 진짜 OpenFileDialog 열기
                using (OpenFileDialog ofd = new OpenFileDialog())
            {
                ofd.Title = this.Title;
                ofd.Filter = this.Filter;
                ofd.Multiselect = Multiselect;
                ofd.InitialDirectory = selectedInitialDirectory;
                ofd.RestoreDirectory = true; // 유저가 선택한 경로가 고정되도록 설정
                ofd.DefaultExt = DefaultExt;
                ofd.FilterIndex = FilterIndex;
                ofd.FileName = FileName;
                if (ofd.ShowDialog() == DialogResult.OK)
                {
                    FileName = ofd.FileName;
                    return DialogResult.OK; // 최종 선택된 파일 패스 반환
                }
            }

            return DialogResult.Cancel;
        }
    }
}
