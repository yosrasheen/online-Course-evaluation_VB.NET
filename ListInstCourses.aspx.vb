Imports System.Data
Partial Class TeaCourses
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
        Cmd.CommandText() = "Select InstructorCourse.CourseCode 'Course Code', CourseName 'Course Name', Section, Year, Semester From InstructorCourse,Course Where InstructorCourse.CourseCode=Course.CourseCode and InstructorID='" & Trim(txtNo.Text) & "'"
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
        Session("CrsCode") = e.Item.Cells(1).Text
        Session("CrsYear") = e.Item.Cells(4).Text
        Session("CrsSem") = e.Item.Cells(5).Text
        Session("CrsInst") = Session("UID")
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From SurveyResult Where InstructorID='" & Session("UID") & "' and CourseCode='" & Session("CrsCode") & "' and Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "'"
        Dr = Cmd.ExecuteReader
        If Not Dr.Read Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This course not evaluated until now');</script>")
        Else
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Select * From Survey Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "'"
            Dr = Cmd.ExecuteReader
            If Dr.Read Then
                If Dr(4) = "Open" Then
                    ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This Survey Still Open for Students');</script>")
                Else
                    Response.Redirect("Reports.aspx")
                End If
            End If
            SqlCon.Close()
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Grid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Grid.SelectedIndexChanged

    End Sub
End Class
