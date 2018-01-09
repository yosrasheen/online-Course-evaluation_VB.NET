
Partial Class Ms
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblName.Text = Session("UN")
        If Session("Msg") = "Ins" Then lnk.NavigateUrl = "InstructorFrm.aspx"
        If Session("Msg") = "Stu" Then lnk.NavigateUrl = "StudentFrm.aspx"
        If Session("Msg") = "Dean" Then lnk.NavigateUrl = "DeanshipFrm.aspx"
    End Sub
End Class
