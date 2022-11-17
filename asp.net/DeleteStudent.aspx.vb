Imports System.Data.SqlClient

Public Class DeleteStudent
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        Label1.Text = Request.Cookies("name").Value
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        Dim cmd As New SqlCommand("delete from student where Enroll='" & TextBox1.Text & "'", con)
        cmd.ExecuteNonQuery()
        Response.Write("Student Data Deleted<br>")
        con.Close()

    End Sub

    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        Session.Abandon()
        Response.Redirect("login1.aspx")
    End Sub
End Class