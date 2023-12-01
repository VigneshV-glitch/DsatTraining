<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp Page.aspx.cs" Inherits="DSAT_Training.SignUp_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div align="center">
                <table>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Label runat="server" ID="lblSignup" Text="Sign Up" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC00FF"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblFirstname" Text="Firstname :" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtFirstname" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblLastname" Text="Lastname :" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtLastname" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblEmail" Text="Email :" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF"></asp:Label> 
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtEmail" Height="25px" Width="200px" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblPhoneNumber" Text="Phone Number :" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPhoneNumber" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblPassword" Text="Password :" Font-Bold="True" Font-Size="Large" ForeColor="#CC00FF"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPassword" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button runat="server" ID="btnSignUp" Text="SignUp" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="250px" OnClick="btnSignUp_Click" Height="35px" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
