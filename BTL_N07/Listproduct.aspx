<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Listproduct.aspx.cs" Inherits="BTL_N07.Listproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource1" RepeatColumns="5" Width="1035px" style="margin-top: 0px" CellPadding="4" ForeColor="#333333" Height="357px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
    <ItemTemplate>
     
        <a href="Detail.aspx?MaSanPham =<%# Eval("MaSanPham") %>"> <asp:Image ID="hinhanh" runat="server" ImageUrl='<%#Eval("hinhanh") %>' Height="150px" Width="180px" /></a>
        <br /><br />
          <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>' />
        <br />
         Giá gốc:
        <asp:Label ID="GiaGocLabel" runat="server" Text='<%# Eval("GiaGoc") %>' />
        <br /><br />
        <p>      
        <a href='ShoppingCart.aspx?MaSanPham=<%# Eval("MaSanPham") %>&name=<%# Eval("TenSanPham")
                   %>&image=<%#Eval("hinhanh")
                   %>&price=<%# Eval("GiaGoc") %>&action=add' class="button">Mua hàng</a>
        </p>
    </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>"
    DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [MaSanPham] = @MaSanPham"
    InsertCommand="INSERT INTO [SAN_PHAM] ([MaDanhMuc], [MaSanPham], [TenSanPham], [MauSac], [GiaGoc], [SoLuongCo], [hinhanh]) VALUES (@MaDanhMuc, @MaSanPham, @TenSanPham, @MauSac, @GiaGoc, @SoLuongCo, @hinhanh)" 
    SelectCommand="SELECT * FROM [SAN_PHAM]"
    UpdateCommand="UPDATE [SAN_PHAM] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [MauSac] = @MauSac, [GiaGoc] = @GiaGoc, [SoLuongCo] = @SoLuongCo, [hinhanh] = @hinhanh WHERE [MaSanPham] = @MaSanPham">
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
