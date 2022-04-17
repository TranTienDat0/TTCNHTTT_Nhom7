<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DangKyThanhCong.aspx.cs" Inherits="BTL_N07.DangKyThanhCong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <p>
        Bạn đã đăng ký thành công!</p>
    <p>
        Xin vui lòng đăng nhập
        <asp:LinkButton ID="LinkButton32" runat="server" PostBackUrl="~/dangnhap.aspx">Tại đây</asp:LinkButton>
        !</p>
</asp:Content>
