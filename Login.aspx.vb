Imports System.Data
Partial Class _Default
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
        Cmd.CommandText = "Select * From [User] Where UserID='" & Trim(txtUser.Text) & "' and Password='" & Trim(txtPW.Text) & "' And AccStatus='Active'"
        Dr = Cmd.ExecuteReader()
        If Not Dr.Read Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, Error at Your User ID or Password');</script>")
            SqlCon.Close()
            Exit Sub
        End If
        Session("UID") = Dr(0)
        Session("UN") = Dr(1)
        Session("UT") = Dr(2)
        Session("PW") = Dr(3)
        Session("Email") = Dr(4)
        SqlCon.Close()
        If Session("UT") = "Instructor" Then Response.Redirect("InstructorFrm.aspx")
        If Session("UT") = "Student" Then Response.Redirect("StudentFrm.aspx")
        If Session("UT") = "Deanship" Then Response.Redirect("DeanshipFrm.aspx")
    End Sub

    Protected Sub lnkPassword_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkPassword.Click
        Response.Write("<script>window.open('Password.aspx','popup','width=500,height=230,top='+((screen.height-500)/2)+',left='+((screen.width-500)/2)+', menubar=no,resizable=no');</script>")
    End Sub
End Class
