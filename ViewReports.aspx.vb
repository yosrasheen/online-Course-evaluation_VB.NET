Imports System.Data
Partial Class ViewReports
    Inherits System.Web.UI.Page
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader
    Public SQL As String

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From Survey"
        Dr = Cmd.ExecuteReader
        cmbYear.Items.Clear()
        cmbYear.Items.Add("(All)")
        Do While Dr.Read
            cmbYear.Items.Add(Dr(2))
        Loop
        SqlCon.Close()
        lblErr.Visible = False
        Grid.Visible = False
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnView_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnView.Click
        SQL = ""
        If cmbYear.SelectedIndex > 0 Then SQL = SQL & " and Year=" & cmbYear.SelectedItem.Text
        If cmbSem.SelectedIndex > 0 Then SQL = SQL & " and Semester='" & cmbSem.SelectedItem.Text & "'"
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select SurveyResult.CourseCode 'Course Code', CourseName 'Course Name', Year, Semester, InstructorID 'Instructor ID', UserName 'Instructor Name' From SurveyResult,Course,[User] Where SurveyResult.InstructorID=[User].UserID and SurveyResult.CourseCode=Course.CourseCode " & SQL
        Dr = Cmd.ExecuteReader
        If Dr.HasRows Then
            lblErr.Visible = False
            Grid.Visible = True
            Grid.DataSource = Dr
            Grid.DataBind()
        Else
            lblErr.Visible = True
            Grid.Visible = False
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Grid_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Grid.ItemCommand
        Session("CrsCode") = e.Item.Cells(1).Text
        Session("CrsYear") = e.Item.Cells(3).Text
        Session("CrsSem") = e.Item.Cells(4).Text
        Session("CrsInst") = e.Item.Cells(5).Text
        Response.Redirect("Reports.aspx")
    End Sub

    Protected Sub Grid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Grid.SelectedIndexChanged

    End Sub
End Class
