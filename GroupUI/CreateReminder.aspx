<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateReminder.aspx.cs" Inherits="ReminderUI.ReminderUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 149px;
        }
        .auto-style2 {
            width: 384px;
        }
        .auto-style3 {
            font-size: larger;
            text-decoration: underline;
            text-align: center;
            color: #6699FF;
        }
        .auto-style4 {
            width: 100%;
            margin-left: 0px;
        }
        .auto-style5 {
            width: 225px;
            height: 225px;
        }
        .auto-style6 {
            width: 384px;
            text-align: left;
        }
        .auto-style7 {
            width: 149px;
            height: 30px;
        }
        .auto-style8 {
            width: 384px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            width: 149px;
            height: 25px;
        }
        .auto-style11 {
            width: 384px;
            height: 25px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            width: 149px;
            height: 52px;
        }
        .auto-style14 {
            width: 384px;
            height: 52px;
        }
        .auto-style15 {
            height: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style1">
                    <img class="auto-style5" src="Images/images.png" /></td>
                <td class="auto-style2">
                    <dl class="auto-style3">
                        <strong>Set Reminder</strong></dl>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtName" runat="server" Width="362px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblErrorName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Description:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDescription" runat="server" Height="97px" OnTextChanged="TextBox1_TextChanged" Width="365px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblErrorDescription" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Select Date:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="241px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblErrorDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Select Time:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtTime" runat="server" TextMode="Time" Width="242px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Label ID="lblErrorTime" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Set Reminder" />
                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                </td>
                <td class="auto-style9"></td>
            </tr>
        </table>
    </form>
</body>
</html>
