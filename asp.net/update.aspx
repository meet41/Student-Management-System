<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="update.aspx.vb" Inherits="asp.net.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body
        {
            background-color:lightblue;
        }
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <strong><h2><span class="auto-style1"><em>Tapi Diploma Engineering College</em></span><em><br class="auto-style1" />
                    </em>
            <span class="auto-style1"><em>Student Management System</em></span></h2></strong><hr />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/home.aspx">HomePage</asp:LinkButton>&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login1.aspx">Logout</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True">
                <Columns>
                    <asp:BoundField DataField="Enroll" HeaderText="Enroll" SortExpression="Enroll" />
                    <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                    <asp:BoundField DataField="Mname" HeaderText="Mname" SortExpression="Mname" />
                    <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                    <asp:BoundField DataField="SMno" HeaderText="SMno" SortExpression="SMno" />
                    <asp:BoundField DataField="PMno" HeaderText="PMno" SortExpression="PMno" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                </Columns>
            </asp:GridView>
            <br />
                <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MeetConnectionString %>" SelectCommand="SELECT student.* FROM student" UpdateCommand="UPDATE student SET Fname = @Fname, Mname = @Mname, Lname = @Lname, SMno = @SMno, PMno = @PMno, Address = @Address, Sem = @Sem WHERE (Enroll = @Enroll)">
                <UpdateParameters>
                    <asp:parameter name="Fname" />
                    <asp:parameter name="Mname" />
                    <asp:parameter name="Lname" />
                    <asp:Parameter Name="SMno" />
                    <asp:Parameter Name="PMno" />
                    <asp:Parameter Name="Address" />
                    <asp:Parameter Name="Sem" />
                    <asp:Parameter Name="Enroll" />
                </UpdateParameters>
            </asp:SqlDataSource>
                <br />
            </center>
        </div>
    </form>
</body>
</html>