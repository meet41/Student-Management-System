<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register1.aspx.vb" Inherits="asp.net.register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body
        {
            background-color:lightskyblue;
        }
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><center>
              <strong><h2><span class="auto-style1"><em>Tapi Diploma Engineering College</em></span><em><br class="auto-style1" />
                  </em>
            <span class="auto-style1"><em>Student Management System</em></span></h2></strong><hr />
                <asp:Panel ID="Panel1" runat="server" Height="322px" Width="400px" BorderColor="#000099" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Red">
                    Sign Up<br />
                    <br />
                    Name:
                    <asp:TextBox ID="TextBox1" runat="server" class="textbox"></asp:TextBox>
                    <br />
                    Email:
                    <asp:TextBox ID="TextBox2" runat="server" class="textbox" TextMode="Email"></asp:TextBox>
                    
                    <br />
                    password:
                    <asp:TextBox ID="TextBox4" runat="server" class="textbox" TextMode="Password"></asp:TextBox>
        <br/>
                    <br/>
                    Security questio:<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>What is your birthdate?</asp:ListItem>
            <asp:ListItem>What is your favourite food?</asp:ListItem>
            <asp:ListItem>What is your hobby?</asp:ListItem>
            <asp:ListItem>What is your nickname?</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br/>
        Security answer:
        <asp:TextBox ID="TextBox5" class="textbox" runat="server"/>
        <br />
        <br/>
        <asp:Button ID="Button1" runat="server" Text="Register" />
                &nbsp;</asp:Panel>
        </div>
        </center>
    </form>
</body>
</html>

