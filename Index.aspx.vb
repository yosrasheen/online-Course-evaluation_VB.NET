
Partial Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("UID") = ""
        Session("UN") = ""
        Session("UT") = ""
        Session("PW") = ""
        Session("Email") = ""
    End Sub
End Class
