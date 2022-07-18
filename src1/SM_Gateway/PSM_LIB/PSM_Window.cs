using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using C1.Win.C1Input;
using System.Runtime.InteropServices;
using System.Drawing;

namespace SMLib
{
        
    public class PromptDialog : Form
    {

        public PromptDialog()
        {

        }

        //test width = 300
        public int ShowComboDialog(string sdescription, string[] items, int defaultvalue, string caption, int formwidth)
        {
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Width = formwidth;
            this.Height = 144;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.Text = caption;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.AutoScaleMode = AutoScaleMode.Dpi;

            Label textLabel = new Label() { Left = 10, Top = 10, Width = formwidth - 20, Text = sdescription };
            textLabel.AutoSize = true;


            ComboBox combo = new ComboBox() { Left = 30, Top = 40, Width = formwidth - 40 };
            combo.DropDownStyle = ComboBoxStyle.DropDownList;
            combo.Items.AddRange(items);
            combo.SelectedIndex = defaultvalue;

            Button btcancel = new Button() { Text = "Cancel", Left = formwidth - 90, Top = 90, Width = 80 };
            btcancel.DialogResult = DialogResult.Cancel;

            Button btok = new Button() { Text = "Ok", Left = formwidth - 180, Top = 90, Width = 80 };
            btok.DialogResult = DialogResult.OK;

            this.AcceptButton = btok;
            this.CancelButton = btcancel;
            
            this.Controls.Add(textLabel);
            this.Controls.Add(combo);
            this.Controls.Add(btok);
            this.Controls.Add(btcancel);
            this.ShowDialog();
            if (this.DialogResult == DialogResult.OK)
            {
                return combo.SelectedIndex;
            }
            return defaultvalue;
        }

        //test width = 300
        public string ShowMaskedTextDialog(string sdescription, string mask, string defaultvalue, string caption, int formwidth)
        {
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Width = formwidth;
            this.Height = 144;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.Text = caption;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.AutoScaleMode = AutoScaleMode.Dpi;

            Label textLabel = new Label() { Left = 10, Top = 10, Width = formwidth - 20, Text = sdescription };
            textLabel.AutoSize = true;


            C1TextBox masktext = new C1TextBox() { Left = 30, Top = 40, Width = formwidth - 40 };
            masktext.EditMask = mask;
            masktext.CharacterCasing = CharacterCasing.Upper;
            masktext.Text = defaultvalue;

            Button btcancel = new Button() { Text = "Cancel", Left = formwidth - 90, Top = 90, Width = 80 };
            btcancel.DialogResult = DialogResult.Cancel;

            Button btok = new Button() { Text = "Ok", Left = formwidth - 180, Top = 90, Width = 80 };
            btok.DialogResult = DialogResult.OK;

            this.AcceptButton = btok;
            this.CancelButton = btcancel;

            this.Controls.Add(textLabel);
            this.Controls.Add(masktext);
            this.Controls.Add(btok);
            this.Controls.Add(btcancel);
            this.ShowDialog();
            if (this.DialogResult == DialogResult.OK)
            {
                return masktext.Text;
            }
            return defaultvalue;
        }

        public void this_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox box = (CheckBox)sender;
            if (box.Checked == true)
                box.BackColor = Color.Yellow;
            else box.BackColor = SystemColors.Control;
        }

        public byte ShowChannelDialog(string sdescription, byte nCount, byte defaultvalue, string caption, int itemwidth)
        {
            int i;
            int pos;
            int formwidth;
            byte temp;
            byte temp1;
            if (nCount == 0) return defaultvalue;

            formwidth = itemwidth * 8 + 5 * (8 - 1) + 60;
            if (formwidth < 300) formwidth = 300;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Width = formwidth;
            this.Height = 144;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.Text = caption;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.AutoScaleMode = AutoScaleMode.Dpi;

            
            Label textLabel = new Label() { Left = 10, Top = 10, Width = formwidth - 20, Text = sdescription };
            textLabel.AutoSize = true;

            CheckBox[] chkbox = new CheckBox[8];
            
            pos = 30;
            temp = 0x1;
            for(i=0; i<8; i++)
            {
                chkbox[i] = new CheckBox() { Left = pos, Top = 40, Width = itemwidth };
                chkbox[i].Appearance = Appearance.Button;
                chkbox[i].Text = string.Format("CH{0}", i + 1);
                chkbox[i].CheckAlign = ContentAlignment.MiddleCenter;
                chkbox[i].CheckedChanged += new EventHandler(this_CheckedChanged);
                chkbox[i].Enabled = true;
                if ((defaultvalue & temp) > 0)
                {
                    chkbox[i].Checked = true;
                    chkbox[i].Enabled = false;
                    chkbox[i].BackColor = Color.Yellow;
                }
                else
                {
                    chkbox[i].Checked = false;
                    chkbox[i].BackColor = SystemColors.Control;
                }

                if (nCount <= i) 
                {
                    chkbox[i].Checked = false;
                    chkbox[i].Enabled = false;
                }
                
                pos += itemwidth + 5;
                temp <<= 1;
            }

            Button btcancel = new Button() { Text = "Cancel", Left = formwidth - 90, Top = 90, Width = 80 };
            btcancel.DialogResult = DialogResult.Cancel;

            Button btok = new Button() { Text = "Ok", Left = formwidth - 180, Top = 90, Width = 80 };
            btok.DialogResult = DialogResult.OK;

           
            this.AcceptButton = btok;
            this.CancelButton = btcancel;

            this.Controls.Add(textLabel);
            for (i = 0; i < 8; i++)
            {
                this.Controls.Add(chkbox[i]);
            }
            this.Controls.Add(btok);
            this.Controls.Add(btcancel);

            this.ShowDialog();
            if (this.DialogResult == DialogResult.OK)
            {
                temp = 0x1;
                temp1 = 0;
                for (i = 0; i < nCount; i++)
                {
                    if (chkbox[i].Checked == true)
                    {
                        temp1 |= temp;
                    }
                    temp <<= 1;
                }
                return temp1;
            }
            return defaultvalue;
        }

        public string ShowPasswardDialog(string sdescription, string caption, int formwidth)
        {
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Width = formwidth;
            this.Height = 144;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.Text = caption;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.AutoScaleMode = AutoScaleMode.Dpi;

            Label textLabel = new Label() { Left = 10, Top = 10, Width = formwidth - 20, Text = sdescription };
            textLabel.AutoSize = true;


            C1TextBox text = new C1TextBox() { Left = 30, Top = 40, Width = formwidth - 40 };
            text.Text = "";
            text.PasswordChar = '*';

            Button btcancel = new Button() { Text = "Cancel", Left = formwidth - 90, Top = 90, Width = 80 };
            btcancel.DialogResult = DialogResult.Cancel;

            Button btok = new Button() { Text = "Ok", Left = formwidth - 180, Top = 90, Width = 80 };
            btok.DialogResult = DialogResult.OK;

            this.AcceptButton = btok;
            this.CancelButton = btcancel;

            this.Controls.Add(textLabel);
            this.Controls.Add(text);
            this.Controls.Add(btok);
            this.Controls.Add(btcancel);
            this.ShowDialog();
            if (this.DialogResult == DialogResult.OK)
            {
                return text.Text;
            }
            return "";
        }

        public void ShowMessageBox(string sdescription, string caption)
        {
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Width = 300;
            this.Height = 100;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.Text = caption;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.AutoScaleMode = AutoScaleMode.Dpi;

            Label textLabel = new Label() { Left = 10, Top = 10, Width = this.Width - 20, Height = 30, Text = sdescription };
            textLabel.AutoSize = false;

            this.Width = textLabel.Width + 20;

            Button btok = new Button() { Text = "Ok", Left = (this.Width / 2) - 40, Top = 45, Width = 80 };
            btok.DialogResult = DialogResult.OK;

            this.AcceptButton = btok;
            this.CancelButton = null;

            this.Controls.Add(textLabel);
            this.Controls.Add(btok);
            this.ShowDialog();
            
            return;
        }

        public bool ShowDeviceDescriptorDialog(ref string[] lable, ref string[] data, bool[] enable, string caption, int formwidth)
        {
            int cnt;
            int width;
            int top;
            int i;
            cnt = lable.Count();
            this.StartPosition = FormStartPosition.CenterScreen;
            this.Width = formwidth;
            this.Height = 30 + (cnt + 1) * 30;
            this.FormBorderStyle = FormBorderStyle.FixedToolWindow;
            this.Text = caption;
            this.StartPosition = FormStartPosition.CenterScreen;
            this.AutoScaleMode = AutoScaleMode.Dpi;
            
            width = (formwidth - 30) / 2;

            Label[] textLabel = new Label[cnt];
            C1TextBox[] text = new C1TextBox[cnt];
            for (i = 0; i < cnt; i++)
            {
                top = 10 + i * 30;
                textLabel[i] = new Label() { Left = 10, Top = top+2, Width = width, Text = lable[i] };
                text[i] = new C1TextBox() { Left = width + 10, Top = top, Width = width, Text = data[i] };
                text[i].Enabled = enable[i];
            }
          
            top = 10 + cnt * 30;
            Button btcancel = new Button() { Text = "Cancel", Left = formwidth - 90, Top = top, Width = 80 };
            btcancel.DialogResult = DialogResult.Cancel;

            Button btok = new Button() { Text = "Ok", Left = formwidth - 180, Top = top, Width = 80 };
            btok.DialogResult = DialogResult.OK;

            this.AcceptButton = btok;
            this.CancelButton = btcancel;
            for (i = 0; i < cnt; i++)
            {
                this.Controls.Add(textLabel[i]);
                this.Controls.Add(text[i]);
            }
            this.Controls.Add(btok);
            this.Controls.Add(btcancel);
            this.ShowDialog();
            if (this.DialogResult == DialogResult.OK)
            {
                for (i = 0; i < cnt; i++)
                {
                    data[i] = text[i].Text;
                }
                return true;
            }
            return false;
        }

        private void InitializeComponent()
        {
            this.SuspendLayout();
            // 
            // PromptDialog
            // 
            this.ClientSize = new System.Drawing.Size(116, 31);
            this.Name = "PromptDialog";
            this.ResumeLayout(false);

        }
    }

    public static class FormUtil
    {
        [DllImport("user32")]
        public static extern IntPtr GetSystemMenu(IntPtr hWnd, bool bRevert);

        [DllImport("user32")]
        public static extern bool EnableMenuItem(IntPtr hMenu, uint itemId, uint uEnable);

        public const int WM_NCDESTROY = 0x0082;
        public const int WM_CLOSE = 0x0010;
        public const int WM_SYSCOMMAND = 0x0112;
        public const int SC_CLOSE = 0xF060;

        [DllImport("user32.dll", SetLastError = true)]
        public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

        [DllImport("user32.dll", CharSet = System.Runtime.InteropServices.CharSet.Auto)]
        public static extern IntPtr SendMessage(IntPtr hWnd, UInt32 Msg, IntPtr wParam, IntPtr lParam);

        [DllImport("user32.dll")]
        public static extern int EndDialog(IntPtr hDlg, IntPtr nResult);

        public static void DisableCloseButton(Form form)
        {
            // The 1 parameter means to gray out. 0xF060 is SC_CLOSE.
            EnableMenuItem(GetSystemMenu(form.Handle, false), 0xF060, 1);
        }

        public static void EnableCloseButton(Form form) //(this Form form)
        {
            // The zero parameter means to enable. 0xF060 is SC_CLOSE.
            EnableMenuItem(GetSystemMenu(form.Handle, false), 0xF060, 0);
        }
    }
    /*
    public class msgBoxExt
    {
        #region events
        //event result (on closing or timeout)
        public static event EventHandler<MsgBoxResultEventArgs> msgBoxResultEvent;

        #endregion
        
        #region constants

        //constant for destroying the messagebox
        const int WM_NCDESTROY = 0x0082;
  
        #endregion

        #region p/Invoke

        // p/Invoke for destroying the messagebox

        // For Windows Mobile, replace user32.dll with coredll.dll
        
        [DllImport("user32.dll", SetLastError = true)]
        static extern IntPtr FindWindow(string lpClassName, string lpWindowName);
        
        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        static extern IntPtr SendMessage(IntPtr hWnd, UInt32 Msg, IntPtr wParam, IntPtr lParam);
        
        #endregion

        #region fields
        //current options
        private static MsgBoxExtOptions _currentOptions;
     
        //Thread for showing messagebox        
        private static Thread msgBoxThread;

        //timeout timer used for automaticly closing msgBox
        private static System.Windows.Forms.Timer timeoutTimer;

        #endregion

        #region methods

        //main public method for showing msgBox
        public static bool Show(MsgBoxExtOptions options)
        {
            //check whether there is a messagebox active
            if (_currentOptions != null) 
            {
                //check whether current active Msgbox is model
                if (_currentOptions.model) 
                {
                    return false; //do nothing
                }
                //else close the current msgBox
                closeMessageBox(_currentOptions.caption);
            }

            //save options in current options
            _currentOptions = options;

            //if timeout > 0  start timeout timer
            if (options.timeout > 0)
            {
                timeoutTimer = new System.Windows.Forms.Timer();
                timeoutTimer.Tick += new EventHandler(timeoutTimer_Tick);
                timeoutTimer.Interval = options.timeout;
                timeoutTimer.Enabled = true;
            }

            //start messagebox thread
            msgBoxThread = new Thread(new ThreadStart(startMsgBoxThread));
            msgBoxThread.IsBackground = true;
            msgBoxThread.Start();
            
            return true; //messagebox started

        }

        private static void startMsgBoxThread()
        {
            //standard Messagebox with results 
            DialogResult result = MessageBox.Show(_currentOptions.text, _currentOptions.caption, _currentOptions.buttons, _currentOptions.icon, _currentOptions.defaultButton);
           
            //dispose the tiemout timer
            disposeTimeoutTimer();
            
            //fire result event
            onMsgBoxResultEvent(_currentOptions.resultReference, result);
            
            //dispose current options
            _currentOptions = null;
            
        }

        private static void timeoutTimer_Tick(object sender, EventArgs e)
        {
            // close current messagebox
            closeMessageBox(_currentOptions.caption);

            //fire result event
            onMsgBoxResultEvent(_currentOptions.resultReference, DialogResult.None);

            //dispose current options
    
            _currentOptions = null;
        }
        //method dispose timeout timer 
        private static void disposeTimeoutTimer()
        {
            if (timeoutTimer != null)
            {
                timeoutTimer.Dispose();
            }
            timeoutTimer = null;
        }

        //method close messagebox
        public static void closeMessageBox(string title)
        {
            //disopose tiemout timer
            disposeTimeoutTimer();

            //kill window
            KillWindow(null, title);

            //kill dialog thread
            killDialogThread();

        }
        //method killwindow
        private static void KillWindow(string className, string title)
        {
            //find window handle
            IntPtr handle = FindWindow(className, title);
            
            //send destroy message
            SendMessage(handle, WM_NCDESTROY, (IntPtr)0, (IntPtr)0);
        }

        //method kill dialog thread
        private static void killDialogThread()
        {
            //check wether exists
            if (msgBoxThread != null)
            {
                //abort the thread
                msgBoxThread.Abort();
                msgBoxThread = null;
            }
        }

        //method fire  messagebox result event
        private static void onMsgBoxResultEvent
            (MsgBoxResultReferences resultReference, DialogResult resultButton)
        {
            MsgBoxResultEventArgs e = new MsgBoxResultEventArgs(resultReference, resultButton);
            EventHandler<MsgBoxResultEventArgs> handler = msgBoxResultEvent;
            if (handler != null)
            {
                handler(null, e);
            }
        }
        #endregion


    }

    
    //event arguments for MsgBoxResultReferences
    public class MsgBoxResultEventArgs : EventArgs
    {
        private MsgBoxResultReferences _resultReference;
        private DialogResult _resultButton;

        public MsgBoxResultEventArgs(MsgBoxResultReferences resultReference, DialogResult resultButton)
        {
            _resultReference = resultReference;
            _resultButton = resultButton;
        }

        public MsgBoxResultReferences resultReference
        { get { return _resultReference; } }
        public DialogResult resultButton
        { get { return _resultButton; } }

    }

    //msgBoxExt options class
    public class MsgBoxExtOptions
    {
        #region fields

        private string _text, _caption;
        private MsgBoxResultReferences _resultReference;
        private MessageBoxButtons _buttons;
        private MessageBoxIcon _icon;
        private MessageBoxDefaultButton _defaultButton;
        private int _timeout;
        private bool _model;
        
        #endregion

        #region constructors

        public MsgBoxExtOptions(string text, string caption, MsgBoxResultReferences resultReference)
        {
            setOptions(text, caption, resultReference, MessageBoxButtons.OK, MessageBoxIcon.Asterisk, MessageBoxDefaultButton.Button1, 0, false);

        }
        public MsgBoxExtOptions(string text, string caption, MsgBoxResultReferences resultReference, MessageBoxButtons buttons, MessageBoxIcon icon)
        {
            setOptions(text, caption, resultReference, buttons, icon, MessageBoxDefaultButton.Button1, 0, false);

        }

        public MsgBoxExtOptions(string text, string caption, MsgBoxResultReferences resultReference, MessageBoxButtons buttons, MessageBoxIcon icon, int timeout, bool model, MessageBoxDefaultButton defaultButton)
        {

            setOptions(text, caption, resultReference, buttons, icon, defaultButton, timeout, model);

        }
        public MsgBoxExtOptions(string text, string caption, MsgBoxResultReferences resultReference, MessageBoxButtons buttons, MessageBoxIcon icon, int timeout, bool model)
        {
            setOptions(text, caption, resultReference, buttons, icon, MessageBoxDefaultButton.Button1, timeout, model);

        }
        #endregion

        #region methods

        private void setOptions(string text, string caption, MsgBoxResultReferences msgBoxResultReferences, MessageBoxButtons messageBoxButtons, MessageBoxIcon messageBoxIcon, MessageBoxDefaultButton messageBoxDefaultButton, int timeout, bool model)
        {
            _resultReference = msgBoxResultReferences;
            _text = text;

            //this is important for finding the window
            if (caption == String.Empty)
                _caption = "empty_caption";
            else
                _caption = caption;

            _buttons = messageBoxButtons;
            _icon = messageBoxIcon;
            _defaultButton = messageBoxDefaultButton;
            _timeout = timeout;
            _model = model;

        }
        
        #endregion

        #region properties

        public MsgBoxResultReferences resultReference
        {
            set { _resultReference = value; }
            get { return _resultReference; }
        }
        public MessageBoxIcon icon
        {
            set { _icon = value; }
            get { return _icon; }
        }
        public string text
        {
            set { _text = value; }
            get { return _text; }
        }
        public string caption
        {
            set { _caption = value; }
            get { return _caption; }
        }

        public MessageBoxButtons buttons
        {
            set { _buttons = value; }
            get { return _buttons; }
        }
        public MessageBoxDefaultButton defaultButton
        {
            set { _defaultButton = value; }
            get { return _defaultButton; }
        }
        public int timeout
        {
            set { _timeout = value; }
            get { return _timeout; }
        }
        public bool model
        {
            set { _model = value; }
            get { return _model; }
        }
        #endregion
    }

    #endregion
  
    #region enums
    //enumerate MsgBoxResultReferences
    public enum MsgBoxResultReferences
    {
        EMPTY = 0, //nothing
        CLOSE_ON_YES = 0x0001,
    }
      #endregion
    */
}
