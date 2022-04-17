using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_N07
{
    public partial class DangKy : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-03GSLC3\SQLEXPRESS;Initial Catalog=bakery;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            lblthongbao.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            lblthongbao.Text = "";
            con.Open();
            try
            {
                if (txtdangnhap.Text == "")
                {
                    lbltdn.Text = "Không được để trống tên đăng nhập!";
                }
                else { lbltdn.Text = ""; }
                if (txtdiachi.Text == "")
                {
                    lbldc.Text = "Không được để trống địa chỉ!";
                }
                else { lbldc.Text = ""; }
                if (txtdienthoai.Text == "")
                {
                    lbldt.Text = "Không được để trống số điện thoại!";
                }
                else { lbldt.Text = ""; }
                if (txtten.Text == "")
                {
                    lblten.Text = "Bạn cần nhập họ tên!";
                }
                else { lblten.Text = ""; }
                if (txtemail.Text == "")
                {
                    lblemail.Text = "Không được để trống địa chỉ Email!";
                }
                else { lblemail.Text = ""; }
                if (txtmatkhau.Text == "")
                {
                    lblmk.Text = "Bạn cần nhập mật khẩu!";
                }
                else { lblmk.Text = ""; }

                DataView checkTenDN = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                int num = checkTenDN.Count;

                if (num > 0)
                {
                    lblthongbao.Text = "Tên đăng nhập đã tồn tại";                 
                }
                else
                {

                    string sqlInsertTaikhoan = "Insert intto db.TAIKHOAN_KHACHHANG values (@tendangnhap,@matkhau,@hoten,@Email,@SDT,@DiaChi)";
                    SqlCommand cmd = new SqlCommand(sqlInsertTaikhoan, con);
                    cmd.Parameters.AddWithValue("hoten", txtten.Text);
                    cmd.Parameters.AddWithValue("Email", txtemail.Text);
                    cmd.Parameters.AddWithValue("DiaChi", txtdiachi.Text);
                    cmd.Parameters.AddWithValue("SDT", txtdienthoai.Text);
                    cmd.Parameters.AddWithValue("tendangnhap", txtdangnhap.Text);
                    cmd.Parameters.AddWithValue("matkhau", txtmatkhau.Text);                
                    
                    SqlDataReader dr = cmd.ExecuteReader();                 
                    lblthongbao.Text = "Đăng ký thành công ";
                    con.Close();
                    Response.Redirect("DangKyThanhCong.aspx");
               }
            }
            catch (Exception)
            {
                lblthongbao.Text = "Đăng ký không thành công ";
                Response.Redirect("DangKyThanhCong.aspx");
            }
        }

    }
}