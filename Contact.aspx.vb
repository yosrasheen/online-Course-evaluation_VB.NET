
Partial Class Contact
    Inherits System.Web.UI.Page

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtName.Text = "" Or txtEmail.Text = "" Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, You must enter your name and email address');</script>")
        End If
        'Dim objEmail As New MailMessage
        'objEmail.To = "OCEAdim@yahoo.com"
        'objEmail.From = txtname.text
        'objEmail.Priority = MailPriority.High
        'SmtpMail.SmtpServer = "arabswell"
        'objEmail.BodyFormat = MailFormat.Html
        'objEmail.Subject = "Message From OCE Site"
        'objEmail.Body = txtMess.text
        'SmtpMail.Send(objEmail)
        ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Thank you for your contacts, your message sent successfully');</script>")
    End Sub
End Class
