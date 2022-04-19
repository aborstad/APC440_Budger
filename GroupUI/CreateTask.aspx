<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTask.aspx.cs" Inherits="Group_Project_UI.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style8 {
            height: 183px;
            text-align: center;
            width: 295px;
        }
        .auto-style9 {
            height: 183px;
        }
        .auto-style22 {
            height: 183px;
            width: 181px;
            text-align: center;
        }
        .auto-style37 {
            height: 60px;
            text-align: center;
            width: 295px;
        }
        .auto-style39 {
            height: 60px;
            width: 181px;
        }
        .auto-style40 {
            height: 60px;
        }
        .auto-style41 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style43 {
            height: 50px;
            width: 181px;
        }
        .auto-style44 {
            height: 50px;
            text-align: center;
            width: 295px;
        }
        .auto-style45 {
            height: 50px;
        }
        .auto-style46 {
            font-size: xx-large;
        }
        .auto-style48 {
            height: 183px;
            width: 199px;
        }
        .auto-style51 {
            height: 60px;
            width: 199px;
        }
        .auto-style52 {
            height: 50px;
            width: 199px;
        }
        .auto-style55 {
            height: 54px;
            width: 199px;
            text-align: left;
        }
        .auto-style61 {
            height: 88px;
            width: 181px;
            text-align: center;
        }
        .auto-style62 {
            height: 88px;
            width: 295px;
        }
        .auto-style63 {
            height: 88px;
            width: 199px;
        }
        .auto-style64 {
            height: 88px;
        }
        .auto-style69 {
            height: 54px;
            width: 181px;
            text-align: center;
        }
        .auto-style70 {
            height: 54px;
            width: 295px;
        }
        .auto-style71 {
            height: 54px;
        }
        .auto-style74 {
            height: 54px;
            width: 199px;
        }
        .auto-style75 {
            height: 51px;
            width: 181px;
            text-align: center;
        }
        .auto-style76 {
            height: 51px;
            width: 295px;
        }
        .auto-style77 {
            height: 51px;
            width: 199px;
        }
        .auto-style78 {
            height: 51px;
        }
        .auto-style79 {
            height: 58px;
            width: 181px;
        }
        .auto-style80 {
            height: 58px;
            text-align: center;
            width: 295px;
        }
        .auto-style81 {
            height: 58px;
            width: 199px;
        }
        .auto-style82 {
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style41">
            <tr>
                <td class="auto-style22">
                    <asp:Image ID="Image1" runat="server" Height="104px" ImageUrl="~/Clipboard.png" Width="132px" />
                </td>
                <td class="auto-style8">
                    <asp:Label ID="lblEvent" runat="server" CssClass="auto-style46" Text="Add Task"></asp:Label>
                </td>
                <td class="auto-style48"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style69">
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style70">
                    <asp:TextBox ID="txtName" runat="server" Width="249px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:Label ID="lblErrorName" runat="server"></asp:Label>
                </td>
                <td class="auto-style71"></td>
            </tr>
            <tr>
                <td class="auto-style61">
                    <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style62">
                    <asp:TextBox ID="txtDescription" runat="server" Width="246px" Height="63px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style63">
                    <asp:Label ID="lblErrorDescription" runat="server"></asp:Label>
                </td>
                <td class="auto-style64"></td>
            </tr>
            <tr>
                <td class="auto-style69">
                    <asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
                </td>
                <td class="auto-style70">
                    <asp:TextBox ID="txtDate" runat="server" Width="246px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style74">
                    <asp:Label ID="lblErrorDate" runat="server"></asp:Label>
                </td>
                <td class="auto-style71"></td>
            </tr>
            <tr>
                <td class="auto-style75">
                    <asp:Label ID="lblTime" runat="server" Text="Time:"></asp:Label>
                </td>
                <td class="auto-style76">
                    <asp:TextBox ID="txtTime" runat="server" Width="246px" Height="18px" TextMode="Time"></asp:TextBox>
                </td>
                <td class="auto-style77">
                    <asp:Label ID="lblErrorTime" runat="server"></asp:Label>
                </td>
                <td class="auto-style78"></td>
            </tr>
            <tr>
                <td class="auto-style79">
                </td>
                <td class="auto-style80">
                    <asp:Button ID="btnAdd" runat="server" OnClick="Button1_Click" Text="Add" />
                &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                </td>
                <td class="auto-style81">
                    <asp:Label ID="lblErrorQuery" runat="server"></asp:Label>
                </td>
                <td class="auto-style82"></td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style37">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Tasks]"></asp:SqlDataSource>
                </td>
                <td class="auto-style51"></td>
                <td class="auto-style40"></td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style44">
                    &nbsp;</td>
                <td class="auto-style52"></td>
                <td class="auto-style45"></td>
            </tr>
        </table>
    </form>
</body>
</html>
