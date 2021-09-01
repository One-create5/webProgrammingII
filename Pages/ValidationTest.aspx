<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationTest.aspx.cs" Inherits="TestPage.Pages.ValidationTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Summary</title>
</head>
<body>
    <form  runat="server" >
    A number (1 to 10):
    <asp:TextBox ID="txtValidated" runat="server" />

    <asp:RangeValidator  ID="RangeValidator" runat="server" ErrorMessage="This Number Is Not In The Range" 
        ControlToValidate="txtValidated" MaximumValue="10" MinimumValue="1" ForeColor="Red" Font-Bold="true"
        Type="Integer">
        <img src="../Images/error.png" alt="Error sign" width="15" height="15" />
    </asp:RangeValidator>
    <br /> <br />

    Not Validated:
    <asp:TextBox ID="txtNotValidated" runat="server" />
    <br />
    <br />
    <asp:Button ID="cmdOK" Text="OK" runat="server" OnClick="cmdOK_Click" />
    <br />
    <br />
    <asp:Label ID="lblMessage" EnableViewState="false" runat="server" />
        <asp:ValidationSummary runat="server" ID="Errors" ForeColor="Red" />

        </form>
</body>
</html>
