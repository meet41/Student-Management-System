<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddStudent.aspx.vb" Inherits="asp.net.Addstudent" %>

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
            background-color: sandybrown;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><center>
            <strong><h2><span class="auto-style1"><em>Tapi Diploma Engineering College</em></span><em><br class="auto-style1" />
                </em>
            <span class="auto-style1"><em>Student Management System</em></span></h2><hr />
            </strong>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/home.aspx">HomePage</asp:LinkButton>&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login1.aspx">Logout</asp:LinkButton>
            <br />
            <br />
            Enrollment no.:-<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            First Name:-<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Middle Name:-<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            Last Name:-<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            Student Mobile Number:-<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            Parents Mobile Number:-<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            Address:-<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <br />
            Semester:-<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Semester</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
