using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace Quanlyanh
{
    public partial class frmThemthanhvien : Form
    {
        string cnstr;
        SqlConnection cn;
        public frmThemthanhvien()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void frmThemthanhvien_Load(object sender, EventArgs e)
        {
            cnstr = ConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
            cn = new SqlConnection(cnstr);

        }
        private void Connect()
        {
            try
            {
                if (cn != null && cn.State == ConnectionState.Closed)
                {
                    cn.Open();
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }
        private void Disconnnect()
        {
            if (cn != null && cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }



        private void btnThemthutuc_Click(object sender, EventArgs e)
        {
            Connect();
            try
            {
                SqlCommand cmd = new SqlCommand("uspThemthanhvien", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("Mathanhvien", txtMathanhvien.Text)); //  tên các biến mình khai báo 
                cmd.Parameters.Add(new SqlParameter("Ho", txtHo.Text));                    // @Ho, @Ten...
                cmd.Parameters.Add(new SqlParameter("Ten", txtTen.Text));
                cmd.Parameters.Add(new SqlParameter("SDT", txtSDT.Text));
                cmd.Parameters.Add(new SqlParameter("Diachi", txtDiachi.Text));
                cmd.Parameters.Add(new SqlParameter("Email", txtEmail.Text));
                cmd.ExecuteNonQuery();
                MessageBox.Show(" Thành viên mới đã được thêm !");

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
            finally
            {
                Disconnnect();
            }

        }
//        private void btnThem_Click(object sender, EventArgs e)
//        {
//            Connect();
//            string sql = @"INSERT INTO Thanhvien values ('NA004',N'Nguyễn',N'Quang Sơn','1545454545',N'nguyenkiem',N'son@gmail.com')";

//            string sql = @"INSERT INTO Thanhvien (Mathanhvien,Ho,Ten,SDT,Diachi,Email)
//                        VALUES (N'" + txtMathanhvien.Text + "', N'" + txtHo.Text + "', N'" + txtTen.Text + "', " + txtSDT.Text + ",N'" + txtDiachi.Text + "',N'" + txtEmail.Text + "')";



//            try
//            {
//                SqlCommand cmd = new SqlCommand(sql, cn);
//                cmd.CommandType = CommandType.Text;
//                cmd.ExecuteNonQuery();
//                MessageBox.Show(" Thành viên mới đã được thêm !");
//            }
//            catch (SqlException ex)
//            {
//                MessageBox.Show(ex.Message);
//            }
//            finally
//            {
//                Disconnnect();
//            }


//        }

       
    }
}
