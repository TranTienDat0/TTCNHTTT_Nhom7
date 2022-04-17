<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListProductByCategory.aspx.cs" Inherits="BTL_N07.ListProductByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyField="MaSanPham" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="687px">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
        <ItemTemplate>
                       
        <a href="Detail.aspx?MaSanPham =<%# Eval("MaSanPham") %>"> <asp:Image ID="hinhanh" runat="server" ImageUrl='<%#Eval("hinhanh") %>' Height="150px" Width="180px" /></a>
            <br /><br />
            <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>' />
            <br /><br />
            GiaGoc:
            <asp:Label ID="GiaGocLabel" runat="server" Text='<%# Eval("GiaGoc") %>' />
            <br />
            <a href='ShoppingCart.aspx?MaSanPham=<%# Eval("MaSanPham") %>&name=<%# Eval("TenSanPham")
                   %>&image=<%#Eval("hinhanh")
                   %>&price=<%# Eval("GiaGoc") %>&action=add' class="button">Mua hàng</a>
        </p>
        </ItemTemplate>
        
        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" 
        DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [MaSanPham] = @MaSanPham" 
        InsertCommand="INSERT INTO [SAN_PHAM] ([MaDanhMuc], [MaSanPham], [TenSanPham], [MauSac], [GiaGoc], [SoLuongCo], [hinhanh]) VALUES (@MaDanhMuc, @MaSanPham, @TenSanPham, @MauSac, @GiaGoc, @SoLuongCo, @hinhanh)"
        SelectCommand="SELECT * FROM [SAN_PHAM] where MaDanhMuc = @MaDanhMuc"
        UpdateCommand="UPDATE [SAN_PHAM] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [MauSac] = @MauSac, [GiaGoc] = @GiaGoc, [SoLuongCo] = @SoLuongCo, [hinhanh] = @hinhanh WHERE [MaSanPham] = @MaSanPham">
        <SelectParameters>
            <asp:QueryStringParameter Type="String" Name="MaDanhMuc" QueryStringField="MaDanhMuc"/>
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="MaSanPham" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaDanhMuc" Type="String" />
            <asp:Parameter Name="MaSanPham" Type="String" />
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="MauSac" Type="String" />
            <asp:Parameter Name="GiaGoc" Type="Int32" />
            <asp:Parameter Name="SoLuongCo" Type="Int32" />
            <asp:Parameter Name="hinhanh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaDanhMuc" Type="String" />
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="MauSac" Type="String" />
            <asp:Parameter Name="GiaGoc" Type="Int32" />
            <asp:Parameter Name="SoLuongCo" Type="Int32" />
            <asp:Parameter Name="hinhanh" Type="String" />
            <asp:Parameter Name="MaSanPham" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
