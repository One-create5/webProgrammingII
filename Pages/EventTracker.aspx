<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventTracker.aspx.cs" Inherits="TestPage.Pages.EventTracker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Tracker</title>
</head>
<body>
    <form runat="server">
        <div>
            <h1>Controls being monitored for chanve events: </h1>
            <asp:TextBox ID="txt" runat="server" AutoPostBack="true" OnTextChanged="CtrlChanged"/>
            <br /> <br />

            <asp:CheckBox  ID="chk" runat="server" AutoPostBack="true" OnCheckedChanged="CtrlChanged"/>
            <br /> <br />

            <asp:RadioButton ID="opt1" runat="server" GroupName="Sample" AutoPostBack="True" OnCheckedChanged="CtrlChanged" />

            <asp:RadioButton ID="opt2" runat="server" GroupName="Sample" AutoPostBack="True" OnCheckedChanged="CtrlChanged" />

            <h1>List of events:</h1>

            <asp:ListBox ID="lstEvents" runat="server" Width="355px" Height="150px" /> <br />

            <br /> <br /> <br />
           
        </div>
    </form>
</body>
</html>
