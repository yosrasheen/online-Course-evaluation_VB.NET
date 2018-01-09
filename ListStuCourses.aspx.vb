Imports System.Data
Partial Class MyCourse
    Inherits System.Web.UI.Page
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblName.Text = "Welcome: " & Session("UN")
        txtNo.Text = Session("UID")
        txtName.Text = Session("UN")
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select StudentCourse.CourseCode 'Course Code', CourseName 'Course Name', Section, Year, Semester From StudentCourse,Course Where StudentCourse.CourseCode=Course.CourseCode and StudentID='" & Trim(txtNo.Text) & "'"
        Dr = Cmd.ExecuteReader
        If Dr.HasRows Then
            Grid.Visible = True
            lblErr.Visible = False
            Grid.DataSource = Dr
            Grid.DataBind()
        Else
            Grid.Visible = False
            lblErr.Visible = True
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Grid_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Grid.ItemCommand
        Session("SelCrsNo") = e.Item.Cells(1).Text
        Session("SelCrs") = e.Item.Cells(2).Text
        Session("SelSec") = e.Item.Cells(3).Text
        Session("SelYear") = e.Item.Cells(4).Text
        Session("SelSem") = e.Item.Cells(5).Text
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From Survey Where Year=" & Session("SelYear") & " and Semester='" & Session("SelSem") & "'"
        Dr = Cmd.ExecuteReader
        If Dr.Read Then
            If Dr(4) = "Close" Then
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This Survey is Closed');</script>")
            Else
                Response.Redirect("Survey.aspx")
            End If
        Else
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, NO Survey Avilable Now');</script>")
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Grid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Grid.SelectedIndexChanged

    End Sub
End Class
