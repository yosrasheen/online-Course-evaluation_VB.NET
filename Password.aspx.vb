Imports System.Data
Partial Class Password
    Inherits System.Web.UI.Page
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtEmail.Text = "" Or txtNo.Text = "" Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, You must enter your ID and Email');</script>")
            Exit Sub
        End If
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From [User] Where UserID='" & Trim(txtNo.Text) & "' and UserEmail='" & Trim(txtEmail.Text) & "'"
        Dr = Cmd.ExecuteReader
        If Not Dr.Read Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, Error at ID or Email');</script>")
            SqlCon.Close()
            Exit Sub
        End If
        SqlCon.Close()

        'Dim objEmail As New MailMessage
        'objEmail.To = "OCEAdim@yahoo.com"
        'objEmail.From = txtEmail.Text
        'objEmail.Priority = MailPriority.High
        'SmtpMail.SmtpServer = "arabswell"
        'objEmail.BodyFormat = MailFormat.Html
        'objEmail.Subject = "Resend Password"
        'objEmail.Body = "Please Resend My Password for ID " & txtNo.Text
        'SmtpMail.Send(objEmail)
        ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Thank you, we will send the password to your email');</script>")
    End Sub
End Class
