using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace BTL_N07
{
    public partial class dangnhap : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-03GSLC3\SQLEXPRESS;Initial Catalog=bakery;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtTenDN.Text == "")
            {
                Label1.Text = "Tên đăng nhập không được để trống!";
            }
            else { Label1.Text = ""; }
            if (txtMatKhau.Text == "")
            {
                Label2.Text = "Bạn chưa nhập mật khẩu.";
            }
            else { Label2.Text = ""; }

            Connect(txtTenDN.Text, txtMatKhau.Text);
            if (login == true)
            {
                Response.Redirect("ProductMain.aspx");
            }
            else
            {
                lblthongbao.Text = "Thông tin đăng nhập không chính xác!";
                Response.Redirect("ProductMain.aspx");
            }

        }
        private Boolean login = false;
        private void Connect(string user, string pass)
        {
            User obj = new User();
            con.Open();
            string sqlQuery = "select tendangnhap,matkhau from dbo.TAIKHOAN_KHACHHANG where tendangnhap=@tendangnhap and matkhau=@matkhau";
            SqlCommand cmd = new SqlCommand(sqlQuery, con);
            cmd.Parameters.AddWithValue("tendangnhap", user);
            cmd.Parameters.AddWithValue("matkhau", pass);
            try
            {
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    login = true;
                    while (dr.Read())
                    {
                        obj.tendangnhap = dr[0].ToString();
                        obj.matkhau = dr[1].ToString();
                        Session["User"] = obj;
                    }
                }
                else
                {
                    login = false;
                }
                con.Close();
            }
            catch (Exception)
            {
                lblthongbao.Text = "Thông tin đăng nhập không chính xác!";
            }
        }

        protected void txtTenDN_TextChanged(object sender, EventArgs e)
        {

        }
    }
}