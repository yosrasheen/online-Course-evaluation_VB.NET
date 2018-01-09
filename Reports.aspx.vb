Imports System.Data
Partial Class Reports
    Inherits System.Web.UI.Page
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader
    Public i As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UT") = "Instructor" Then lnkBack.NavigateUrl = "ListInstCourses.aspx"
        If Session("UT") = "Admin" Then lnkBack.NavigateUrl = "ViewReports.aspx"
        If Session("UT") = "Deanship" Then lnkBack.NavigateUrl = "ReportDean.aspx"

        CR.HasDrillUpButton = False
        CR.HasPageNavigationButtons = False
        CR.HasSearchButton = False
        CR.HasToggleGroupTreeButton = True
        CR.HasViewList = False
        CR.HasGotoPageButton = False
        CR.HasCrystalLogo = False

        'Session("CrsCode") = e.Item.Cells(1).Text
        'Session("CrsYear") = e.Item.Cells(4).Text
        'Session("CrsSem") = e.Item.Cells(5).Text
        'Session("CrsInst") = e.Item.Cells(6).Text

        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From Survey Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "'"
        Dr = Cmd.ExecuteReader
        If Dr.Read Then Session("CrsSur") = Dr(0)
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Select Count(DISTINCT(QuesNo)) From SurveyAnswers Where FormNo IN (Select FormNo From SurveyResult Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "' and CourseCode='" & Session("CrsCode") & "' and InstructorID='" & Session("CrsInst") & "')"
        If IsDBNull(Cmd.ExecuteScalar) Then Session("cQ") = 0 Else Session("cQ") = Val(Cmd.ExecuteScalar)
        SqlCon.Close()
        SqlCon.Open()
        Cmd.CommandText() = "Select Count(QuesNo) From SurveyAnswers Where FormNo IN (Select FormNo From SurveyResult Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "' and CourseCode='" & Session("CrsCode") & "' and InstructorID='" & Session("CrsInst") & "')"
        If IsDBNull(Cmd.ExecuteScalar) Then Session("AllQ") = 0 Else Session("AllQ") = Val(Cmd.ExecuteScalar)
        SqlCon.Close()
        SqlCon.Open()
        Cmd.CommandText() = "Delete From TEMP"
        Cmd.ExecuteNonQuery()
        SqlCon.Close()
        For i = 1 To Session("cQ")
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Select Count(Answer) From SurveyAnswers Where Answer='Strongly Agree' and QuesNo=" & i & " and FormNo IN (Select FormNo From SurveyResult Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "' and CourseCode='" & Session("CrsCode") & "' and InstructorID='" & Session("CrsInst") & "')"
            If IsDBNull(Cmd.ExecuteScalar) Then Session("Opt1") = 0 Else Session("Opt1") = Val(Cmd.ExecuteScalar) / Val(Session("AllQ"))
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Select Count(Answer) From SurveyAnswers Where Answer='Agree' and QuesNo=" & i & " and FormNo IN (Select FormNo From SurveyResult Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "' and CourseCode='" & Session("CrsCode") & "' and InstructorID='" & Session("CrsInst") & "')"
            If IsDBNull(Cmd.ExecuteScalar) Then Session("Opt2") = 0 Else Session("Opt2") = Val(Cmd.ExecuteScalar) / Val(Session("AllQ"))
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Select Count(Answer) From SurveyAnswers Where Answer='Neutral' and QuesNo=" & i & " and FormNo IN (Select FormNo From SurveyResult Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "' and CourseCode='" & Session("CrsCode") & "' and InstructorID='" & Session("CrsInst") & "')"
            If IsDBNull(Cmd.ExecuteScalar) Then Session("Opt3") = 0 Else Session("Opt3") = Val(Cmd.ExecuteScalar) / Val(Session("AllQ"))
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Select Count(Answer) From SurveyAnswers Where Answer='Disagree' and QuesNo=" & i & " and FormNo IN (Select FormNo From SurveyResult Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "' and CourseCode='" & Session("CrsCode") & "' and InstructorID='" & Session("CrsInst") & "')"
            If IsDBNull(Cmd.ExecuteScalar) Then Session("Opt4") = 0 Else Session("Opt4") = Val(Cmd.ExecuteScalar) / Val(Session("AllQ"))
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Select Count(Answer) From SurveyAnswers Where Answer='Strongly Disagree' and QuesNo=" & i & " and FormNo IN (Select FormNo From SurveyResult Where Year=" & Session("CrsYear") & " and Semester='" & Session("CrsSem") & "' and CourseCode='" & Session("CrsCode") & "' and InstructorID='" & Session("CrsInst") & "')"
            If IsDBNull(Cmd.ExecuteScalar) Then Session("Opt5") = 0 Else Session("Opt5") = Val(Cmd.ExecuteScalar) / Val(Session("AllQ"))
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Insert Into TEMP Values(" & i & "," & Session("Opt1") * 100 & "," & Session("Opt2") * 100 & "," & Session("Opt3") * 100 & "," & Session("Opt4") * 100 & "," & Session("Opt5") * 100 & ")"
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
        Next
        CR.ReportSource = "CrystalReport.rpt"
    End Sub
End Class
