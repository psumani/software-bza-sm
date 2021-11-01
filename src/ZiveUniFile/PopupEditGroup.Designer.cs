namespace ZiveUniFile
{
    partial class PopupEditGroup
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtkey = new System.Windows.Forms.TextBox();
            this.txtcaption = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cbogrptype = new System.Windows.Forms.ComboBox();
            this.btadd = new System.Windows.Forms.Button();
            this.btcancel = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.txtitems = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtdatasize = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtgroupsize = new System.Windows.Forms.TextBox();
            this.listItem = new System.Windows.Forms.ListView();
            this.btadditem = new System.Windows.Forms.Button();
            this.btdelitem = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.txtselitem = new System.Windows.Forms.TextBox();
            this.btedititem = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "key(Index)";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(11, 42);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(48, 12);
            this.label3.TabIndex = 2;
            this.label3.Text = "Caption";
            // 
            // txtkey
            // 
            this.txtkey.Location = new System.Drawing.Point(83, 11);
            this.txtkey.Name = "txtkey";
            this.txtkey.ReadOnly = true;
            this.txtkey.Size = new System.Drawing.Size(53, 21);
            this.txtkey.TabIndex = 3;
            // 
            // txtcaption
            // 
            this.txtcaption.Location = new System.Drawing.Point(83, 37);
            this.txtcaption.Name = "txtcaption";
            this.txtcaption.Size = new System.Drawing.Size(386, 21);
            this.txtcaption.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(142, 15);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(72, 12);
            this.label2.TabIndex = 5;
            this.label2.Text = "Group Type";
            // 
            // cbogrptype
            // 
            this.cbogrptype.FormattingEnabled = true;
            this.cbogrptype.Location = new System.Drawing.Point(220, 12);
            this.cbogrptype.Name = "cbogrptype";
            this.cbogrptype.Size = new System.Drawing.Size(101, 20);
            this.cbogrptype.TabIndex = 6;
            // 
            // btadd
            // 
            this.btadd.Location = new System.Drawing.Point(477, 434);
            this.btadd.Name = "btadd";
            this.btadd.Size = new System.Drawing.Size(83, 30);
            this.btadd.TabIndex = 7;
            this.btadd.Text = "Apply";
            this.btadd.UseVisualStyleBackColor = true;
            this.btadd.Click += new System.EventHandler(this.btadd_Click);
            // 
            // btcancel
            // 
            this.btcancel.Location = new System.Drawing.Point(477, 489);
            this.btcancel.Name = "btcancel";
            this.btcancel.Size = new System.Drawing.Size(83, 30);
            this.btcancel.TabIndex = 8;
            this.btcancel.Text = "Cancel";
            this.btcancel.UseVisualStyleBackColor = true;
            this.btcancel.Click += new System.EventHandler(this.btcancel_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 68);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 12);
            this.label4.TabIndex = 9;
            this.label4.Text = "Item Count";
            // 
            // txtitems
            // 
            this.txtitems.Location = new System.Drawing.Point(83, 63);
            this.txtitems.Name = "txtitems";
            this.txtitems.ReadOnly = true;
            this.txtitems.Size = new System.Drawing.Size(53, 21);
            this.txtitems.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(142, 68);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(59, 12);
            this.label5.TabIndex = 11;
            this.label5.Text = "Data Size";
            // 
            // txtdatasize
            // 
            this.txtdatasize.Location = new System.Drawing.Point(207, 63);
            this.txtdatasize.Name = "txtdatasize";
            this.txtdatasize.ReadOnly = true;
            this.txtdatasize.Size = new System.Drawing.Size(68, 21);
            this.txtdatasize.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(327, 15);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(68, 12);
            this.label6.TabIndex = 13;
            this.label6.Text = "Group Size";
            // 
            // txtgroupsize
            // 
            this.txtgroupsize.Location = new System.Drawing.Point(401, 11);
            this.txtgroupsize.Name = "txtgroupsize";
            this.txtgroupsize.ReadOnly = true;
            this.txtgroupsize.Size = new System.Drawing.Size(68, 21);
            this.txtgroupsize.TabIndex = 14;
            // 
            // listItem
            // 
            this.listItem.FullRowSelect = true;
            this.listItem.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable;
            this.listItem.Location = new System.Drawing.Point(12, 90);
            this.listItem.MultiSelect = false;
            this.listItem.Name = "listItem";
            this.listItem.Size = new System.Drawing.Size(457, 429);
            this.listItem.TabIndex = 15;
            this.listItem.UseCompatibleStateImageBehavior = false;
            this.listItem.SelectedIndexChanged += new System.EventHandler(this.listItem_SelectedIndexChanged);
            // 
            // btadditem
            // 
            this.btadditem.Location = new System.Drawing.Point(480, 266);
            this.btadditem.Name = "btadditem";
            this.btadditem.Size = new System.Drawing.Size(83, 30);
            this.btadditem.TabIndex = 16;
            this.btadditem.Text = "Add Item";
            this.btadditem.UseVisualStyleBackColor = true;
            this.btadditem.Click += new System.EventHandler(this.btadditem_Click);
            // 
            // btdelitem
            // 
            this.btdelitem.ForeColor = System.Drawing.Color.Red;
            this.btdelitem.Location = new System.Drawing.Point(480, 178);
            this.btdelitem.Name = "btdelitem";
            this.btdelitem.Size = new System.Drawing.Size(83, 30);
            this.btdelitem.TabIndex = 17;
            this.btdelitem.Text = "Delete Item";
            this.btdelitem.UseVisualStyleBackColor = true;
            this.btdelitem.Click += new System.EventHandler(this.btdelitem_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(478, 90);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(82, 12);
            this.label7.TabIndex = 18;
            this.label7.Text = "Selected Item";
            // 
            // txtselitem
            // 
            this.txtselitem.Location = new System.Drawing.Point(480, 105);
            this.txtselitem.Name = "txtselitem";
            this.txtselitem.ReadOnly = true;
            this.txtselitem.Size = new System.Drawing.Size(80, 21);
            this.txtselitem.TabIndex = 19;
            // 
            // btedititem
            // 
            this.btedititem.Location = new System.Drawing.Point(480, 132);
            this.btedititem.Name = "btedititem";
            this.btedititem.Size = new System.Drawing.Size(83, 30);
            this.btedititem.TabIndex = 20;
            this.btedititem.Text = "Edit Item";
            this.btedititem.UseVisualStyleBackColor = true;
            this.btedititem.Click += new System.EventHandler(this.btedititem_Click);
            // 
            // PopupEditGroup
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(570, 529);
            this.Controls.Add(this.btedititem);
            this.Controls.Add(this.txtselitem);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btdelitem);
            this.Controls.Add(this.btadditem);
            this.Controls.Add(this.listItem);
            this.Controls.Add(this.txtgroupsize);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtdatasize);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtitems);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btcancel);
            this.Controls.Add(this.btadd);
            this.Controls.Add(this.cbogrptype);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtcaption);
            this.Controls.Add(this.txtkey);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "PopupEditGroup";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Edit Group";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtkey;
        private System.Windows.Forms.TextBox txtcaption;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbogrptype;
        private System.Windows.Forms.Button btadd;
        private System.Windows.Forms.Button btcancel;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtitems;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtdatasize;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtgroupsize;
        private System.Windows.Forms.ListView listItem;
        private System.Windows.Forms.Button btadditem;
        private System.Windows.Forms.Button btdelitem;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtselitem;
        private System.Windows.Forms.Button btedititem;
    }
}