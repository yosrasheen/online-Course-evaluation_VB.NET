
Partial Class InstructorFrm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblName.Text = "Welcome: " & Session("UN")
    End Sub
End Class
