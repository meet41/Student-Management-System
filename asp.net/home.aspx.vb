Imports System.Data.SqlClient
Public Class homepage
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
        While rd.Read()
            Label1.Text = "Welcome, " + rd("name")
            Response.Cookies("name").Value = Label1.Text
        End While
        con.Close()
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        Response.Redirect("login1.aspx")
    End Sub
End Class