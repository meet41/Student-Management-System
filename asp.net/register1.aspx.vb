Imports System.Data.SqlClient
Public Class register1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        Dim cmd As New SqlCommand("Insert into register Values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox4.Text & "','" & DropDownList1.Text & "','" & TextBox5.Text & "')", con)
        cmd.ExecuteNonQuery()
        Dim sql As String = "select * from register"
        Dim rs As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = rs.ExecuteReader
        Response.Write("<table border=1>")
        Response.Write("<tr><td>Name</td><td>email</td><td>password</td><td>securityque</td><td>Securityans</td></tr>")
        While rd.Read()
            Response.Write("<tr><td>" & rd("name") & "</td><td>" & rd("email") & "</td><td>" & rd("password") & "</td><td>" & rd("securityque") & "</td><td>" & rd("securityans") & "</td></tr>")
        End While
        Response.Write("</table>")
        con.Close()
        Response.Redirect("login1.aspx")
    End Sub
End Class