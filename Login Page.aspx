<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="DSAT_Training.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <table align="center">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label runat="server" ID="lblLogin" Text="LogIn" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC00FF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblUsername" Text="Username :" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtusername" Width="200px" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblPassword" Text="Password :" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtpassword" Width="200px" Height="25px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="150px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
