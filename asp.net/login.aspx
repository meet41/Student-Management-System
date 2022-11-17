<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="practical24.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div id="d1">
       <center> <asp:Label ID="Label1" runat="server" Text="Login "></asp:Label></center>
    <form id="form1" runat="server">
        <div>
            Password:<br /><asp:TextBox ID="TextBox1" class="textbox" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <p>
            Confirm password:<br /><asp:TextBox ID="TextBox2" class="textbox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="***Password is not same"></asp:CompareValidator>
        </p>
        <asp:Button ID="btn" runat="server" Text="Login" />
    </form>
        </div>
</body>
</html>
