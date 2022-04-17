<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BTL_N07.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="118px" Width="397px" AutoGenerateRows="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="MaDanhMuc" HeaderText="MaDanhMuc" SortExpression="MaDanhMuc" />
            <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" ReadOnly="True" SortExpression="MaSanPham" />
            <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
            <asp:BoundField DataField="MauSac" HeaderText="MauSac" SortExpression="MauSac" />
            <asp:BoundField DataField="GiaGoc" HeaderText="GiaGoc" SortExpression="GiaGoc" />
            <asp:BoundField DataField="SoLuongCo" HeaderText="SoLuongCo" SortExpression="SoLuongCo" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="hinhanh" runat="server" ImageUrl='<%# Eval("hinhanh") %>' Height="150px" Width="150px" />
                </ItemTemplate>
            </asp:TemplateField>
          
        </Fields>
    </asp:DetailsView>   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" 
        SelectCommand="SELECT * FROM [SAN_PHAM] where [MaSanPham]=@MaSanPham">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSanPham" Type="String" QueryStringField="MaSanPham" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
