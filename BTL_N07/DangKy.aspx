<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="BTL_N07.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NoiDung" runat="server">
     <h1>Đăng ký tài khoản</h1>
    <p>Nếu bạn đã đăng ký tài khoản, vui lòng đăng nhập
        <asp:LinkButton ID="LinkButton32" runat="server" PostBackUrl="~/dangnhap.aspx">Tại đây</asp:LinkButton>
        !</p>
    <p>&nbsp;</p>
    <h3>Thông tin cá nhân</h3>
    <hr />
    
    <br />
    <table class="auto-style1">
        <tr>
            
            <td style="text-align: right; width: 36px" rowspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 177px">Họ Tên:</td>
            <td style="width: 142px">
                <asp:TextBox ID="txtten" runat="server" Height="25px" Width="570px" style="margin-right: 0px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblten" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 177px">Địa chỉ E-mail:</td>
            <td style="width: 142px">
                <asp:TextBox ID="txtemail" runat="server" Height="25px" Width="570px" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                
                <asp:Label ID="lblemail" runat="server" ForeColor="Red"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 177px">Điện thoại:</td>
            <td style="width: 142px">
                <asp:TextBox ID="txtdienthoai" runat="server" Height="25px" Width="570px" TextMode="Phone"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbldt" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 177px">Địa chỉ:</td>
            <td style="width: 142px">
                <asp:TextBox ID="txtdiachi" runat="server" Height="25px" Width="570px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbldc" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        
        </table>
    <br />
    <h3>Tài khoản</h3>
    <hr />

<table class="auto-style1">
    <tr>
        <td style="text-align: right; width: 177px">Tên đăng nhập:</td>
        <td style="text-align: right; width: 22px" rowspan="3">&nbsp;</td>
        <td>
            <asp:TextBox ID="txtdangnhap" runat="server" Height="25px" Width="570px"></asp:TextBox>
        </td>
        <td>

            <asp:Label ID="lbltdn" runat="server" ForeColor="Red"></asp:Label>

        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 186px">Mật khẩu:</td>
        <td>
            <asp:TextBox ID="txtmatkhau" runat="server" Height="25px" TextMode="Password" Width="570px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="lblmk" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>

        </td>
        <td style="text-align: right">
            <asp:Button ID="Button2" runat="server" Height="30px" Text="Đăng ký" OnClick="Button2_Click" />
        </td>
        
    </tr>

</table>
   
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
   
    <asp:Label ID="lblthongbao" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" SelectCommand="SELECT [tendangnhap], [matkhau] FROM [TAIKHOAN_kHACHHANG] WHERE (([tendangnhap] = @tendangnhap) AND ([matkhau] = @matkhau))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtdangnhap" Name="tendangnhap" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtmatkhau" Name="matkhau" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
