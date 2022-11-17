<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Forgot.aspx.vb" Inherits="asp.net.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        body
        {
            background-color:palevioletred;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><center>
            <strong><h2><span class="auto-style1"><em>Tapi Diploma Engineering College</em></span><em><br class="auto-style1" />
                </em>
            <span class="auto-style1"><em>Student Management System</em></span></h2></strong><hr />
                Email: <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" BackColor="Yellow" Visible="False">
        Reset Password:<br /> Enter new password:<asp:TextBox ID="TextBox3" 
            runat="server" TextMode="Password"></asp:TextBox>
        <br />
        Enter Confirm password:<asp:TextBox ID="TextBox4" runat="server" 
            TextMode="Password"></asp:TextBox>
        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox3" ControlToValidate="TextBox4">Enter matching password!</asp:CompareValidator>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Submit" />
    </asp:Panel>
            </center>
        </div>
    </form>
</body>
</html>
