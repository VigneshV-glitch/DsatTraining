<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="DSAT_Training.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    tr{
        width: 50%;
    }
    td{
        width: 50%;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Label runat="server" ID="lblDashBoard" Text="Employee Details" Font-Bold="True" Font-Size="XX-Large" ForeColor="#507CD1"></asp:Label>
                        </td>
                    </tr>
                   <tr>
                       <td align="right">
                           <asp:Label runat="server" ID="lblFirstname" Text="Firstname :" Font-Bold="True" Font-Size="Large" ForeColor="#666666"></asp:Label>
                       </td>
                       <td >
                           <asp:TextBox runat="server" ID="txtFirstname" Height="20px" Width="250px"></asp:TextBox>
                           <asp:Button runat="server" ID="btnSearch" Text="Search" BackColor="#507CD1" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="25px" Width="150px" OnClick="btnSearch_Click"/>
                       </td>
                   </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblLastname" Text="Lastname :" Font-Bold="True" Font-Size="Large" ForeColor="#666666"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtLastname" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblEmail" Text="Email :" Font-Bold="True" Font-Size="Large" ForeColor="#666666"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtEmail" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblPhonenumber" Text="Phone Number :" Font-Bold="True" Font-Size="Large" ForeColor="#666666"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPhonenumber" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label runat="server" ID="lblPassword" Text="Password :" Font-Bold="True" Font-Size="Large" ForeColor="#666666"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPassword" Height="20px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button runat="server" ID="btnInsert" Text="Insert" BackColor="#507CD1" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="25px" Width="150px" OnClick="btnInsert_Click" />
                            <asp:Button runat="server" ID="btnUpdate" Text="Update" BackColor="#507CD1" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="25px" Width="150px" OnClick="btnUpdate_Click" />
                            <asp:Button runat="server" ID="btnDelete" Text="Delete" BackColor="#507CD1" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="25px" Width="150px" OnClick="btnDelete_Click" />
                        </td>
                    </tr>
                </table>
                <asp:GridView runat="server" ID="Gridview1" Width="1034px" CellPadding="4" ForeColor="#333333" GridLines="None" align="center">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
