<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DailyView.aspx.cs" Inherits="GroupUI.DailyView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 1107px;
            height: 674px;
            text-align: center;
        }
        .auto-style2 {
            color: #663300;
        }
        .auto-style3 {
            width: 840px;
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 1071px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('Image/Capture1.JPG')">
            <br />
            <asp:Label ID="lblTimeBudger" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Size="XX-Large" Text="Time Budger"></asp:Label>
            <br />
        <div class="auto-style5">

            <asp:Label ID="lblTime" runat="server" Text="Time"></asp:Label>

            <br />
            <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="btnHome" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Home" Width="118px" OnClick="btnDailView_Click" />
            <br />
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;
            <asp:Button ID="btnLoad" runat="server" Text="Load" Width="141px" OnClick="btnLoad_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;If no results show, there are no tasks or reminders.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="btnTasks" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Tasks" Width="119px" OnClick="btnTasks_Click" />
            <br />
            <br />
            <br />
            <asp:Button ID="btnReminder" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Reminder" Width="119px" OnClick="btnReminder_Click" />

        </div>
            <br />
             <br />
             <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
             <br />
             <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
             <br />
             <br />
        <div class="auto-style3">
            <asp:Button ID="btnSignOut" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Text="Sign Out" Width="119px" BackColor="Transparent" OnClick="btnSignOut_Click" />

            <div class="auto-style4">
                <asp:Label ID="lblHome" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Home"></asp:Label>
            </div>

        </div>
             <br />
             <br />
        </div>
    </form>
</body>
</html>
