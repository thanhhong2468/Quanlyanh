namespace Quanlyanh
{
    partial class frmDanhsachthanhvien
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
            this.dgvDsthanhvien = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDsthanhvien)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(125, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(309, 31);
            this.label1.TabIndex = 0;
            this.label1.Text = "Danh sách Thành Viên";
            // 
            // dgvDsthanhvien
            // 
            this.dgvDsthanhvien.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            this.dgvDsthanhvien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDsthanhvien.Location = new System.Drawing.Point(12, 148);
            this.dgvDsthanhvien.Name = "dgvDsthanhvien";
            this.dgvDsthanhvien.Size = new System.Drawing.Size(560, 241);
            this.dgvDsthanhvien.TabIndex = 1;
            // 
            // frmDanhsachthanhvien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(584, 436);
            this.Controls.Add(this.dgvDsthanhvien);
            this.Controls.Add(this.label1);
            this.Name = "frmDanhsachthanhvien";
            this.Text = "frmDanhsachthanhvien";
            this.Load += new System.EventHandler(this.frmDanhsachthanhvien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDsthanhvien)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvDsthanhvien;
    }
}