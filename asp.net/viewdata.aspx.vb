Imports System.Data.SqlClient
Public Class viewdata
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        Dim sql As String = "select * from student"
        Dim rs As New SqlCommand(sql, con)
        Dim rd As SqlDataReader = rs.ExecuteReader
        Response.Write("<table border=1>")
        Response.Write("<tr><td>Enroll</td><td>First Name</td><td>Middle Name</td><td>Last Name</td><td>Student number</td><td>Parents number</td><td>Address</td><td>Sem</td></tr>")
        While rd.Read()
            Response.Write("<tr><td>" & rd("Enroll") & "</td><td>" & rd("Fname") & "</td><td>" & rd("Mname") & "</td><td>" & rd("Lname") & "</td><td>" & rd("SMno") & "</td><td>" & rd("PMno") & "</td><td>" & rd("Address") & "</td><td>" & rd("Sem") & "</td></tr>")
        End While
        Response.Write("</table>")
        'Label1.Text = Request.Cookies("name").Value
        con.Close()
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        Response.Redirect("login1.aspx")
    End Sub
End Class