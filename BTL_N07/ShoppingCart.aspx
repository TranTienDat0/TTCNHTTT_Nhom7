<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="BTL_N07.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <style>
 table {
 border-collapse: collapse;
 }
 th {
 font-size: smaller;
 }
 td, th {
 padding: 3px 5px;
 border: 1px solid #808080;
 }
 </style>
 <%
 Response.Write("<input type='hidden' name='action' value='update' />\n"); 
 decimal total = 0;
 List<BTL_N07.CartItem> li = (List<BTL_N07.CartItem>)Session["Cart"];
 if (li != null)
 {
 Response.Write("<table>");
 Response.Write("<tr><th>Mã sp</th><th>Tên sản phẩm</th>");
 Response.Write("<th>Hình ảnh</th><th>Giá tiền</th>");
 Response.Write("<th>Số lượng</th><th>Thành tiền</th>");
 Response.Write("<th>Xóa</th></tr>\n");
 foreach (var item in li)
 {
 Response.Write("<tr>");
 Response.Write("<td align='center'>" + item.product.MaSanPham);
 Response.Write("<input type='hidden' name='MaSanPham' value='" + item.product.MaSanPham + "' />"); 
 Response.Write("</td>");
 Response.Write("<td>" + item.product.TenSanPham + "</td>\n");
 Response.Write("<td align='center'><img src='" + item.product.hinhanh + "' width='100'/></td>\n");
 Response.Write("<td align='center'>" + item.product.GiaGoc + "</td>\n");
 Response.Write("<td align='center'>");
 Response.Write("<input type='text' name='qq' size='5' value='" + 
item.quantity + "' />\n");
 Response.Write("</td>");
 Response.Write("<td align='center'>" + (item.quantity * 
item.product.GiaGoc).ToString("N0") + "</td>\n");
 Response.Write("<td align='center'><a href='ShoppingCart.aspx?action=del&MaSanPham="
+ item.product.MaSanPham + "'>Xóa</a></td>\n");
 Response.Write("</tr>\n\n");
 total += item.quantity * item.product.GiaGoc;
 }
 Response.Write("</table>");
 Response.Write("<p>Tổng tiền các sản phẩm là:<b> " + total.ToString("N0") + " VNĐ</b></p>");
          Response.Write("<p><a href='Listproduct.aspx'>Tiếp tục mua hàng </a></p>\n");
 Response.Write("<input type='submit' value='Update' name='sb' />"); 
 Response.Write("<p><a href='ShoppingCart.aspx?action=delall'>Xóa tất cả</a></p>\n");
 Response.Write("<p><a href='#'>Đặt hàng</a></p>\n");
 }
 else
 {
 Response.Write("<i>Chưa có sản phẩm nào.</i>");
         Response.Write("<p><a href='Listproduct.aspx'>Tiếp tục mua hàng</a></p>\n");
 }
 %>
</asp:Content>
