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
    public partial class frmDanhsachthanhvien : Form
    {
        string cnstr;
        SqlConnection cn;
        DataTable dt;
        public frmDanhsachthanhvien()
        {
            InitializeComponent();
        }

      
        private void frmDanhsachthanhvien_Load(object sender, EventArgs e)
        {
            cnstr = ConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
            cn = new SqlConnection(cnstr);
            dgvDsthanhvien.DataSource = Getusers();
        }
        
        private DataTable Getusers()
        {
            try
            {
            string sql = @"SELECT * FROM Thanhvien";
            
                //DataTable dt = new DataTable ();
            dt = new DataTable();
                  
                SqlDataAdapter da = new SqlDataAdapter(sql,cn);
                da.Fill(dt);
                return dt;
            }
            catch (Exception  )
            {
               

                throw;
            }
            finally
            {
                cn.Close();

            }
           
            
        }
    }
}
