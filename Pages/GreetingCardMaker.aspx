<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GreetingCardMaker.aspx.cs" Inherits="TestPage.Pages.GreetingCardMaker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Greeting Card Maker</title>
</head>
<body>
    <form runat="server">
        <div style="width: 700px; background-color: lightblue; margin: 0 auto;">
            <div style="background-color: lightyellow; border: 4px solid black; width: 250px; float:left; padding: 10px; margin: 0 auto;">
                Choose a background color:<br />
                <asp:dropdownlist ID="ddlBackColor" runat="server" AutoPostBack="True" onselectedindexchanged="ControlChanged"></asp:dropdownlist><br /> <br />
                Choose a foreground (text) color:<br />
                <asp:dropdownlist ID="ddlForeColor" runat="server"  AutoPostBack="True" onselectedindexchanged="ControlChanged"></asp:dropdownlist><br /> <br />
                Choose a font name:<br />
                <asp:dropdownlist ID="ddlFontName" runat="server" AutoPostBack="True" onselectedindexchanged="ControlChanged"></asp:dropdownlist><br /> <br />
                Specify&nbsp;a font size:<br />
                <asp:textbox ID="txtFontSize" runat="server" AutoPostBack="True" ontextchanged="ControlChanged"></asp:textbox><br /> <br />
                Choose a border style:<br />
                <asp:radiobuttonlist ID="rblBorder" runat="server"  Font-Size="X-Small" AutoPostBack="True" RepeatColumns="2" onselectedindexchanged="ControlChanged">

                </asp:radiobuttonlist><br /><br />
                <asp:checkbox ID="chkPicture" runat="server" Text="Add the Default Picture" AutoPostBack="True" oncheckedchanged="ControlChanged">

                </asp:checkbox><br /><br /> Enter the greeting text below:<br />
                <asp:textbox ID="txtGreeting" runat="server" TextMode="MultiLine" AutoPostBack="True" ontextchanged="ControlChanged"></asp:textbox><br /> <br />
                <asp:button ID="cmdUpdate" runat="server"  Text="Update" onclick="cmdUpdate_Click"></asp:button>

            </div>
            <asp:panel ID="pnlCard" CssClass="fltlt" runat="server" Height="570px" Width="300px" HorizontalAlign="Center">
                <br /><br />
                <asp:Label ID="lblGreeting" runat="server" Height="150px" Width="250px"></asp:Label>
                <br /><br /><br />
                <asp:Image ID="imgDefault" runat="server" Height="160px" Width="212px" Visible="False"></asp:Image>

            </asp:panel>

        </div>
        <br style="clear:both" /> 
    </form>
</body>
</html>
