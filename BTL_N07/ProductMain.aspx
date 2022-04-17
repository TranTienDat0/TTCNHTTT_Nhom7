<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductMain.aspx.cs" Inherits="BTL_N07.ProductMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaDanhMuc" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="842px">
    <ItemTemplate>
        MaDanhMuc:
        <asp:Label ID="MaDanhMucLabel" runat="server" Text='<%# Eval("MaDanhMuc") %>' />
        <br />
        TenDanhMuc:
        <asp:Label ID="TenDanhMucLabel" runat="server" Text='<%# Eval("TenDanhMuc") %>' />
        <br />
        MaSanPham:
        <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSanPham") %>' />
        <br />
        <a href="Detail.aspx?MaSanPham =<%# Eval("MaSanPham") %>"> <asp:Image ID="hinhanh" runat="server" ImageUrl='<%#Eval("hinhanh") %>' Height="150px" Width="180px" /></a>
        <br />
        GiaGoc:
        <asp:Label ID="GiaGocLabel" runat="server" Text='<%# Eval("GiaGoc") %>' />
        <br />          
<br />
        
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" SelectCommand="SELECT * FROM [SanPham_DaiDien]"></asp:SqlDataSource>
</asp:Content>
