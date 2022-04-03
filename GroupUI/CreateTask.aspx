<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateTask.aspx.cs" Inherits="Group_Project_UI.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            height: 81px;
        }
        .auto-style7 {
            height: 81px;
            text-align: center;
            width: 295px;
        }
        .auto-style8 {
            height: 71px;
            text-align: center;
            width: 295px;
        }
        .auto-style9 {
            height: 71px;
        }
        .auto-style15 {
            height: 81px;
            width: 401px;
        }
        .auto-style16 {
            height: 71px;
            width: 401px;
        }
        .auto-style21 {
            height: 81px;
            width: 80px;
        }
        .auto-style22 {
            height: 71px;
            width: 80px;
        }
        .auto-style29 {
            height: 70px;
            width: 295px;
        }
        .auto-style30 {
            height: 70px;
            width: 401px;
        }
        .auto-style31 {
            height: 70px;
            width: 80px;
        }
        .auto-style32 {
            height: 70px;
        }
        .auto-style33 {
            height: 109px;
            width: 401px;
        }
        .auto-style34 {
            height: 109px;
            width: 80px;
        }
        .auto-style35 {
            height: 109px;
            width: 295px;
        }
        .auto-style36 {
            height: 109px;
        }
        .auto-style37 {
            height: 60px;
            text-align: center;
            width: 295px;
        }
        .auto-style38 {
            height: 60px;
            width: 401px;
        }
        .auto-style39 {
            height: 60px;
            width: 80px;
        }
        .auto-style40 {
            height: 60px;
        }
        .auto-style41 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style42 {
            height: 50px;
            width: 401px;
        }
        .auto-style43 {
            height: 50px;
            width: 80px;
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
        .auto-style47 {
            height: 81px;
            width: 199px;
        }
        .auto-style48 {
            height: 71px;
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
        .auto-style53 {
            height: 70px;
            width: 199px;
        }
        .auto-style54 {
            height: 109px;
            width: 199px;
        }
        .auto-style55 {
            height: 70px;
            width: 199px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style41">
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style21"></td>
                <td class="auto-style7">
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style46" Text="Time Budger"></asp:Label>
                </td>
                <td class="auto-style47"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style22"></td>
                <td class="auto-style8">
                    <asp:Label ID="lblEvent" runat="server" CssClass="auto-style46" Text="Add Task"></asp:Label>
                </td>
                <td class="auto-style48"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style31">
                    <asp:Label ID="lblDate" runat="server" Text="Date: "></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtDate" runat="server" Width="249px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:Label ID="lblErrorDate" runat="server"></asp:Label>
                </td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style31">
                    <asp:Label ID="lblStart" runat="server" Text="Start Time:"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtStartTime" runat="server" Width="246px"></asp:TextBox>
                </td>
                <td class="auto-style53">
                    <asp:Label ID="lblErrorStartTime" runat="server"></asp:Label>
                </td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style31">
                    <asp:Label ID="lblEnd" runat="server" Text="End Time:"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtEndTime" runat="server" Width="246px"></asp:TextBox>
                </td>
                <td class="auto-style53">
                    <asp:Label ID="lblErrorEndTime" runat="server"></asp:Label>
                </td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style34">
                    <asp:Label ID="lblNotes" runat="server" Text="Notes:"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:TextBox ID="txtNotes" runat="server" Width="246px" Height="58px"></asp:TextBox>
                </td>
                <td class="auto-style54"></td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style31">
                    <asp:Label ID="lblPeople" runat="server" Text="People"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="txtPeople" runat="server" Width="246px"></asp:TextBox>
                </td>
                <td class="auto-style53"></td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style39"></td>
                <td class="auto-style37">
                    <asp:Button ID="btnAdd" runat="server" OnClick="Button1_Click" Text="Add" />
                </td>
                <td class="auto-style51"></td>
                <td class="auto-style40"></td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style43"></td>
                <td class="auto-style44">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                </td>
                <td class="auto-style52"></td>
                <td class="auto-style45"></td>
            </tr>
        </table>
    </form>
</body>
</html>
