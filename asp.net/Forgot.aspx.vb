Imports System.Data.SqlClient

Public Class forgot
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TextBox1.TextChanged
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        Dim ad As New SqlDataAdapter("select * from register where email='" & TextBox1.Text & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            Label1.Visible = True
            Label1.Text = ds.Tables(0).Rows(0).Item("securityque").ToString()
            TextBox2.Visible = True
        Else
            MsgBox("Invalid email")
        End If
        con.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        con.Open()
        Dim ad As New SqlDataAdapter("select * from register where email='" & TextBox1.Text & "' and securityans='" & TextBox2.Text & "'", con)
        Dim ds As New DataSet
        ad.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            Panel1.Visible = True
        Else
            MsgBox("Invalid Hint")
        End If
        con.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=LENOVO\SQLEXPRESS;Initial Catalog=Meet;User ID=sa;Password=12345"
        Dim cmd As New SqlCommand("update register set password='" & TextBox3.Text & "' where email='" & TextBox1.Text & "'", con)
        cmd.ExecuteNonQuery()

        If cmd.ExecuteNonQuery > 0 Then
            Response.Redirect("login1.aspx")
        Else
            MsgBox("Invalid email")
        End If
        con.Close()
    End Sub

End Class