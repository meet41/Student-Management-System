Imports System.Data.SqlClient
Public Class update
    Inherits System.Web.UI.Page
    Dim con1 As New SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        Dim str As String = "select * from student"
        Dim sql As New SqlCommand(str, con)
        Dim rd As SqlDataReader = sql.ExecuteReader
        Label1.Text = Request.Cookies("name").Value
        While rd.Read()
            ' Label1.Text = "Welcome, " + rd("name")
        End While
        con.Close()
    End Sub
    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        Response.Redirect("login1.aspx")
    End Sub
End Class