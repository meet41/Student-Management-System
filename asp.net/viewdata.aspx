<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="viewdata.aspx.vb" Inherits="asp.net.viewdata" %>

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
            background-color:orange;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><center>
            <strong><h2><span class="auto-style1"><em>Tapi Diploma Engineering College</em></span><em><br class="auto-style1" />
                </em>
            <span class="auto-style1"><em>Student Management System</em></span></h2>
            </strong>
            <p>&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
            <p>&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/home.aspx">Home_Page</asp:LinkButton>&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login1.aspx">Logout</asp:LinkButton>
            <br />
            </p>
            </center>
        </div>
        <center>
            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
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
            </asp:GridView>--%>
            <br />
                <br />
            <br />
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MeetConnectionString %>" SelectCommand="SELECT * FROM [student]">
            </asp:SqlDataSource>--%>
            </center> 
    </form>
</body>
</html>
