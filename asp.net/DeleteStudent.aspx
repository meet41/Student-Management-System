<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DeleteStudent.aspx.vb" Inherits="asp.net.DeleteStudent" %>

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
            background-color: coral;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <strong><h2><span class="auto-style1"><em>Tapi Diploma Engineering College</em></span><em><br class="auto-style1" /></em>
            <span class="auto-style1"><em>Student Management System</em></span></h2>
            </strong>&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/home.aspx">Home Page</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server">Logout</asp:LinkButton>
                <br />
                Enter Enrollment No.:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Delete" />
            </center>
        </div>
    </form>
</body>
</html>
