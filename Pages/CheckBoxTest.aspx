<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxTest.aspx.cs" Inherits="TestPage.Pages.CheckBoxTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Box Test</title>
</head>
<body>
    <form runat="server">
        <div>
            Choose your favorite promgramming lanuages: <br /> <br />
            <asp:CheckBoxList ID="chklst" runat="server"></asp:CheckBoxList> <br /> <br />
            <asp:Button ID="cmdOK" Text="OK" runat="server" OnClick="cmdOK_Click" /> <br /> <br />
            <asp:Label ID="lblResult" runat="server" />
        </div>
    </form>
</body>
</html>
