<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerForm.aspx.cs" Inherits="TestPage.Pages.CustomerForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
        <asp:RequiredFieldValidator id="vldUserName" runat="server" 
            ErrorMessage="You must enter a user name." 
            ControlToValidate="txtUserName" />
        
        <asp:RequiredFieldValidator id="vldPassword" runat="server" 
            ErrorMessage="You must enter a password."
            ControlToValidate="txtPassword" />

        <asp:CompareValidator id="vldRetype" runat="server"
            ErrorMessage="Your password does not match."
            ControlToCompare="txtPassword" ControlToValidate="txtRetype" />

        <asp:RequiredFieldValidator id="vldRetypeRequired" runat="server"
            ErrorMessage="You must confirm your password."
            ControlToValidate="txtRetype" />
        
        <asp:RegularExpressionValidator id="vldEmail" runat="server"
            ErrorMessage="This email is missing the @ symbol."
            ValidationExpression=".+@.+" ControlToValidate="txtEmail" />
        
        <asp:RangeValidator id="vldAge" runat="server"
            ErrorMessage="This age is not between 0 and 120." Type="Integer"
            MinimumValue="0" MaximumValue="120"
            ControlToValidate="txtAge" />
        
        <asp:CustomValidator id="vldCode" runat="server"
            ErrorMessage="Try a string that starts with 014."
            ValidateEmptyText="False"
            OnServerValidate="vldCode_ServerValidate"
            ControlToValidate="txtCode" />
        
        <asp:Button id="cmdSubmit" runat="server"
            OnClick="cmdSubmit_Click" Text="Submit">
        </asp:Button>

        <asp:Button id="cmdCancel" runat="server"
            CausesValidation="False" OnClick="cmdCancel_Click" Text="Cancel">
        </asp:Button>
    </form>
</body>
</html>
