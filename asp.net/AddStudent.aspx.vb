Imports System.Data.SqlClient
Public Class Addstudent
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        Dim str As String = "select * from register"
        'Response.Write("connect<br>")
        Dim sql As New SqlCommand(str, con)
        Dim rd As SqlDataReader = sql.ExecuteReader
        'Response.Write("Reading<br>")
        Label2.Text = Request.Cookies("name").Value
        While rd.Read()
            'Label2.Text = "Welcome, " + rd("name")
        End While
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        ' Dim cm As New SqlCommand("create table student(Enroll varchar(MAX),Sname varchar(MAX))", con)
        'cm.ExecuteNonQuery()
        Response.Write("Connect table<br>")
        Dim cmd As New SqlCommand("insert into student values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & DropDownList1.SelectedValue & "')", con)
        'Response.Write("insert1<br>")
        cmd.ExecuteNonQuery()

        Label1.Visible = True
        Label1.Text = "Add successfully"
        Dim sql As String = "select * from student"
        Dim rs As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = rs.ExecuteReader
        Response.Write("<table border=1>")
        Response.Write("<tr><td>Enroll</td><td>First Name</td><td>Middle Name</td><td>Last Name</td><td>Student number</td><td>Parents number</td><td>Address</td><td>Sem</td></tr>")
        While rd.Read()
            Response.Write("<tr><td>" & rd("Enroll") & "</td><td>" & rd("Fname") & "</td><td>" & rd("Mname") & "</td><td>" & rd("Lname") & "</td><td>" & rd("SMno") & "</td><td>" & rd("PMno") & "</td><td>" & rd("Address") & "</td><td>" & rd("Sem") & "</td></tr>")
        End While
        Response.Write("</table>")
        con.Close()
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        Response.Redirect("login1.aspx")
    End Sub

    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click

    End Sub
End Class