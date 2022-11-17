<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login1.aspx.vb" Inherits="asp.net.Login1" %>

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
            background-color: yellow;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><center>
            <strong><h2><span class="auto-style1"><em>Tapi Diploma Engineering College</em></span><em><br class="auto-style1" />
                </em>
            <span class="auto-style1"><em>Student Management System</em></span></h2></strong><hr />
            <asp:Panel ID="Panel1" runat="server" Height="222px" style="text-align: center" Width="410px" BorderColor="#0066FF" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Red">
                Login Form<br />
                <br />
                Enter Email :
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                Enter Password :
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password?</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server">Register Here</asp:LinkButton>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Login" />
            </asp:Panel>
            </center>
        </div>
    </form>
</body>
</html>
