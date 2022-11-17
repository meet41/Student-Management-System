<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="practical24.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div id="d1">
       <center> <asp:Label ID="Label1" runat="server" Text="Register"></asp:Label></center>
    <form id="form1" runat="server">
        <div>
            Username:<br /><asp:TextBox ID="TextBox1" class="textbox" runat="server"></asp:TextBox>
            Email:<br /><asp:TextBox ID="TextBox3" class="textbox" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <p>
           Password:<br /><asp:TextBox ID="TextBox2" class="textbox" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <asp:Button ID="btn" runat="server" Text="Register" />
    </form>
        </div>
</body>
</html>
