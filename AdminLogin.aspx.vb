Imports System.Data
Partial Class AdminLogin
    Inherits System.Web.UI.Page
    Public i As Integer
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader
    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText = "Select * From Admin Where UserID='" & Trim(txtUser.Text) & "' and Password='" & Trim(txtPW.Text) & "'"
        Dr = Cmd.ExecuteReader()
        If Not Dr.Read Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, Error at Your User ID or Password');</script>")
            SqlCon.Close()
            Exit Sub
        End If
        Session("UID") = Dr(0)
        Session("UT") = "Admin"
        SqlCon.Close()
        Response.Redirect("AdminFrm.aspx")
    End Sub
End Class
