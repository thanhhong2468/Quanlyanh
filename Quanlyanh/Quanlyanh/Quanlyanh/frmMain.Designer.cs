namespace Quanlyanh
{
    partial class frmMain
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.tsmThemthanhvien = new System.Windows.Forms.ToolStripMenuItem();
            this.thôngTinToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.btnThuvienanh = new System.Windows.Forms.Button();
            this.btnDSthanhvien = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmThemthanhvien,
            this.thôngTinToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(746, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // tsmThemthanhvien
            // 
            this.tsmThemthanhvien.Name = "tsmThemthanhvien";
            this.tsmThemthanhvien.Size = new System.Drawing.Size(109, 20);
            this.tsmThemthanhvien.Text = "Thêm thành viên";
            this.tsmThemthanhvien.Click += new System.EventHandler(this.tsmThemthanhvien_Click);
            // 
            // thôngTinToolStripMenuItem
            // 
            this.thôngTinToolStripMenuItem.Name = "thôngTinToolStripMenuItem";
            this.thôngTinToolStripMenuItem.Size = new System.Drawing.Size(71, 20);
            this.thôngTinToolStripMenuItem.Text = "Thông tin";
            // 
            // btnThuvienanh
            // 
            this.btnThuvienanh.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnThuvienanh.Location = new System.Drawing.Point(575, 143);
            this.btnThuvienanh.Name = "btnThuvienanh";
            this.btnThuvienanh.Size = new System.Drawing.Size(115, 55);
            this.btnThuvienanh.TabIndex = 3;
            this.btnThuvienanh.Text = "Thư viện ảnh";
            this.btnThuvienanh.UseVisualStyleBackColor = false;
            // 
            // btnDSthanhvien
            // 
            this.btnDSthanhvien.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnDSthanhvien.Location = new System.Drawing.Point(575, 236);
            this.btnDSthanhvien.Name = "btnDSthanhvien";
            this.btnDSthanhvien.Size = new System.Drawing.Size(115, 54);
            this.btnDSthanhvien.TabIndex = 1;
            this.btnDSthanhvien.Text = "Danh Sách Thành Viên";
            this.btnDSthanhvien.UseVisualStyleBackColor = false;
            this.btnDSthanhvien.Click += new System.EventHandler(this.btnDSthanhvien_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.pictureBox1.Image = global::Quanlyanh.Properties.Resources.Sunset;
            this.pictureBox1.Location = new System.Drawing.Point(0, 27);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(742, 391);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 2;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(746, 443);
            this.Controls.Add(this.btnThuvienanh);
            this.Controls.Add(this.btnDSthanhvien);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmMain";
            this.Text = "frnMain";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem tsmThemthanhvien;
        private System.Windows.Forms.ToolStripMenuItem thôngTinToolStripMenuItem;
        private System.Windows.Forms.Button btnThuvienanh;
        private System.Windows.Forms.Button btnDSthanhvien;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}

