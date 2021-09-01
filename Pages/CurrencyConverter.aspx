<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrencyConverter.aspx.cs" Inherits="TestPage.Pages.CurrencyConverter" %>

<!DOCTYPE html>
<html>
<head>
    <title> Currency Converter</title>
</head>
 <body>

     <form runat="server">
         <div>
             Convert: &nbsp;
             <input type = "text" id="US" runat="server" />

             &nbsp; U.S. dollars to &nbsp;

             <select id="Currency" runat="server"></select>

             <br /> <br />

             <input type = "submit" value = "OK" id="Convert" runat="server" onserverclick="Convert_ServerClick"/>

             <input type="submit" value="Show Graph" id="ShowGraph" runat="server" onserverclick="ShowGraph_ServerClick" />

             <br /> <br />

             <img src="" alt="Currency Graph" id="Graph" runat="server" />
             
             <br /> <br />

             <p style="font-weight: bold" id="Result" runat="server"></p> 

         </div>
    </form>

 </body>
</html>