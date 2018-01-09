Imports System.Data
Partial Class Survey
    Inherits System.Web.UI.Page
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblName.Text = "Welcome: " & Session("UN")

        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From InstructorCourse Where Section='" & Session("SelSec") & "' and Year=" & Session("SelYear") & " and Semester='" & Session("SelSem") & "'"
        Dr = Cmd.ExecuteReader
        If Dr.Read Then Session("InstNo") = Dr(1)
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Select * From [User] Where UserType='Instructor' and UserID='" & Session("InstNo") & "'"
        Dr = Cmd.ExecuteReader
        If Dr.Read Then txtIns.Text = Dr(1)
        SqlCon.Close()

        txtYear.Text = Session("SelYear")
        txtSem.Text = Session("SelSem")
        txtCrs.Text = Session("SelCrs")

        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From Survey Where Year=" & Val(txtYear.Text) & " and Semester='" & txtSem.Text & "'"
        Dr = Cmd.ExecuteReader
        If Dr.Read Then Session("servNo") = Dr(0)
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Select * From SurveyQues Where QuestionCategory='Course Evaluation' and SurveyNo=" & Session("servNo")
        Dr = Cmd.ExecuteReader

        Dim table1 As New Table
        Dim i As Integer = 1

        table1.BorderColor = Drawing.Color.Black
        table1.BorderWidth = 1

        If Dr.HasRows Then
            Dim trow0 As New TableRow
            Dim tcell0 As New TableCell
            Dim lbl0 As New Label

            lbl0.Text = "Course Evaluation Questions:"
            tcell0.Controls.Add(lbl0)
            tcell0.ColumnSpan = 5
            tcell0.Height = 5
            trow0.Cells.Add(tcell0)
            table1.Rows.Add(trow0)
            trow0.BackColor = Drawing.Color.LightSteelBlue
            trow0.HorizontalAlign = HorizontalAlign.Left
            trow0.ForeColor = Drawing.Color.Black
            trow0.Font.Bold = True

            Do While Dr.Read
                If Dr(2) <> "Text" Then
                    Dim Opt1 As New RadioButton
                    Dim Opt2 As New RadioButton
                    Dim Opt3 As New RadioButton
                    Dim Opt4 As New RadioButton
                    Dim Opt5 As New RadioButton
                    Dim lbl1 As New Label
                    Dim lbl2 As New Label
                    Dim trow As New TableRow
                    Dim trow1 As New TableRow
                    Dim trow2 As New TableRow
                    Dim tcell1 As New TableCell
                    Dim tcell2 As New TableCell
                    Dim tcell3 As New TableCell
                    Dim tcell4 As New TableCell
                    Dim tcell5 As New TableCell
                    Dim tcell6 As New TableCell
                    Dim tcell7 As New TableCell

                    lbl1.Text = Dr(3)
                    tcell6.Controls.Add(lbl1)
                    tcell6.ColumnSpan = 5
                    tcell6.Font.Bold = True
                    tcell6.ForeColor = Drawing.Color.Blue
                    trow1.Cells.Add(tcell6)
                    table1.Rows.Add(trow1)
                    trow1.HorizontalAlign = HorizontalAlign.Left

                    Opt1.ID = "opt_" & Dr(1) & "_" & 1
                    Opt1.Text = Dr(4) & Space(5)
                    Opt1.GroupName = "1" & i
                    tcell1.Controls.Add(Opt1)
                    trow.Cells.Add(tcell1)
                    trow.HorizontalAlign = HorizontalAlign.Left

                    Opt2.ID = "opt_" & Dr(1) & "_" & 2
                    Opt2.Text = Dr(5) & Space(5)
                    Opt2.GroupName = "1" & i
                    tcell2.Controls.Add(Opt2)
                    trow.Cells.Add(tcell2)

                    Opt3.ID = "opt_" & Dr(1) & "_" & 3
                    Opt3.Text = Dr(6) & Space(5)
                    Opt3.GroupName = "1" & i
                    tcell3.Controls.Add(Opt3)
                    trow.Cells.Add(tcell3)

                    Opt4.ID = "opt_" & Dr(1) & "_" & 4
                    Opt4.Text = Dr(7) & Space(5)
                    Opt4.GroupName = "1" & i
                    tcell4.Controls.Add(Opt4)
                    trow.Cells.Add(tcell4)


                    Opt5.ID = "opt_" & Dr(1) & "_" & 5
                    Opt5.Text = Dr(8)
                    Opt5.GroupName = "1" & i
                    tcell5.Controls.Add(Opt5)
                    trow.Cells.Add(tcell5)

                    table1.Rows.Add(trow)

                    lbl2.Text = ""
                    tcell7.Controls.Add(lbl2)
                    tcell7.ColumnSpan = 5
                    tcell7.Height = 5
                    trow2.Cells.Add(tcell7)
                    table1.Rows.Add(trow2)
                    i = i + 1
                End If
            Loop
        End If
        Panel1.Controls.Add(table1)
        table1.Width = 800
        table1.HorizontalAlign = HorizontalAlign.Left
        SqlCon.Close()



        SqlCon.Open()
        Cmd.CommandText() = "Select * From SurveyQues Where QuestionCategory='Instructor Evaluation' and SurveyNo=" & Session("servNo")
        Dr = Cmd.ExecuteReader

        Dim table2 As New Table
        i = 1
        table2.BorderColor = Drawing.Color.Black
        table2.BorderWidth = 1

        If Dr.HasRows Then
            Dim lbl0 As New Label
            Dim trow0 As New TableRow
            Dim tcell0 As New TableCell

            lbl0.Text = "Instructor Evaluation Questions:"
            tcell0.Controls.Add(lbl0)
            tcell0.ColumnSpan = 5
            tcell0.Height = 5
            trow0.Cells.Add(tcell0)
            table2.Rows.Add(trow0)
            trow0.BackColor = Drawing.Color.LightSteelBlue
            trow0.HorizontalAlign = HorizontalAlign.Left
            trow0.ForeColor = Drawing.Color.Black
            trow0.Font.Bold = True

            Do While Dr.Read
                If Dr(2) <> "Text" Then
                    Dim Opt1 As New RadioButton
                    Dim Opt2 As New RadioButton
                    Dim Opt3 As New RadioButton
                    Dim Opt4 As New RadioButton
                    Dim Opt5 As New RadioButton
                    Dim lbl1 As New Label
                    Dim lbl2 As New Label
                    Dim trow As New TableRow
                    Dim trow1 As New TableRow
                    Dim trow2 As New TableRow
                    Dim tcell1 As New TableCell
                    Dim tcell2 As New TableCell
                    Dim tcell3 As New TableCell
                    Dim tcell4 As New TableCell
                    Dim tcell5 As New TableCell
                    Dim tcell6 As New TableCell
                    Dim tcell7 As New TableCell

                    lbl1.Text = Dr(3)
                    tcell6.Controls.Add(lbl1)
                    tcell6.ColumnSpan = 5
                    tcell6.Font.Bold = True
                    tcell6.ForeColor = Drawing.Color.Blue
                    trow1.Cells.Add(tcell6)
                    table2.Rows.Add(trow1)
                    trow1.HorizontalAlign = HorizontalAlign.Left

                    Opt1.ID = "opt_" & Dr(1) & "_" & 1
                    Opt1.Text = Dr(4) & Space(5)
                    Opt1.GroupName = "2" & i
                    tcell1.Controls.Add(Opt1)
                    trow.Cells.Add(tcell1)
                    trow.HorizontalAlign = HorizontalAlign.Left

                    Opt2.ID = "opt_" & Dr(1) & "_" & 2
                    Opt2.Text = Dr(5) & Space(5)
                    Opt2.GroupName = "2" & i
                    tcell2.Controls.Add(Opt2)
                    trow.Cells.Add(tcell2)

                    Opt3.ID = "opt_" & Dr(1) & "_" & 3
                    Opt3.Text = Dr(6) & Space(5)
                    Opt3.GroupName = "2" & i
                    tcell3.Controls.Add(Opt3)
                    trow.Cells.Add(tcell3)

                    Opt4.ID = "opt_" & Dr(1) & "_" & 4
                    Opt4.Text = Dr(7) & Space(5)
                    Opt4.GroupName = "2" & i
                    tcell4.Controls.Add(Opt4)
                    trow.Cells.Add(tcell4)


                    Opt5.ID = "opt_" & Dr(1) & "_" & 5
                    Opt5.Text = Dr(8)
                    Opt5.GroupName = "2" & i
                    tcell5.Controls.Add(Opt5)
                    trow.Cells.Add(tcell5)

                    table2.Rows.Add(trow)

                    tcell7.Controls.Add(lbl2)
                    tcell7.ColumnSpan = 5
                    tcell7.Height = 5
                    trow2.Cells.Add(tcell7)
                    table2.Rows.Add(trow2)
                    i = i + 1
                End If
            Loop
        End If
        Panel1.Controls.Add(table2)
        table2.Width = 800
        table2.HorizontalAlign = HorizontalAlign.Left
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Select * From SurveyQues Where QuestionCategory='General' and SurveyNo=" & Session("servNo")
        Dr = Cmd.ExecuteReader

        Dim table3 As New Table
        i = 1
        table3.BorderColor = Drawing.Color.Black
        table3.BorderWidth = 1

        If Dr.HasRows Then
            Dim trow0 As New TableRow
            Dim tcell0 As New TableCell
            Dim lbl0 As New Label

            lbl0.Text = "General Questions:"
            tcell0.Controls.Add(lbl0)
            tcell0.ColumnSpan = 5
            tcell0.Height = 5
            trow0.Cells.Add(tcell0)
            table3.Rows.Add(trow0)
            trow0.BackColor = Drawing.Color.LightSteelBlue
            trow0.HorizontalAlign = HorizontalAlign.Left
            trow0.ForeColor = Drawing.Color.Black
            trow0.Font.Bold = True

            Do While Dr.Read
                If Dr(2) <> "Text" Then
                    Dim Opt1 As New RadioButton
                    Dim Opt2 As New RadioButton
                    Dim Opt3 As New RadioButton
                    Dim Opt4 As New RadioButton
                    Dim Opt5 As New RadioButton
                    Dim lbl1 As New Label
                    Dim lbl2 As New Label
                    Dim trow As New TableRow
                    Dim trow1 As New TableRow
                    Dim trow2 As New TableRow
                    Dim tcell1 As New TableCell
                    Dim tcell2 As New TableCell
                    Dim tcell3 As New TableCell
                    Dim tcell4 As New TableCell
                    Dim tcell5 As New TableCell
                    Dim tcell6 As New TableCell
                    Dim tcell7 As New TableCell

                    lbl1.Text = Dr(3)
                    tcell6.Controls.Add(lbl1)
                    tcell6.ColumnSpan = 5
                    tcell6.Font.Bold = True
                    tcell6.ForeColor = Drawing.Color.Blue
                    trow1.Cells.Add(tcell6)
                    table3.Rows.Add(trow1)
                    trow1.HorizontalAlign = HorizontalAlign.Left

                    Opt1.ID = "opt_" & Dr(1) & "_" & 1
                    Opt1.Text = Dr(4) & Space(5)
                    Opt1.GroupName = "3" & i
                    tcell1.Controls.Add(Opt1)
                    trow.Cells.Add(tcell1)
                    trow.HorizontalAlign = HorizontalAlign.Left

                    Opt2.ID = "opt_" & Dr(1) & "_" & 2
                    Opt2.Text = Dr(5) & Space(5)
                    Opt2.GroupName = "3" & i
                    tcell2.Controls.Add(Opt2)
                    trow.Cells.Add(tcell2)

                    Opt3.ID = "opt_" & Dr(1) & "_" & 3
                    Opt3.Text = Dr(6) & Space(5)
                    Opt3.GroupName = "3" & i
                    tcell3.Controls.Add(Opt3)
                    trow.Cells.Add(tcell3)

                    Opt4.ID = "opt_" & Dr(1) & "_" & 4
                    Opt4.Text = Dr(7) & Space(5)
                    Opt4.GroupName = "3" & i
                    tcell4.Controls.Add(Opt4)
                    trow.Cells.Add(tcell4)


                    Opt5.ID = "opt_" & Dr(1) & "_" & 5
                    Opt5.Text = Dr(8)
                    Opt5.GroupName = "3" & i
                    tcell5.Controls.Add(Opt5)
                    trow.Cells.Add(tcell5)

                    table3.Rows.Add(trow)

                    lbl2.Text = ""
                    tcell7.Controls.Add(lbl2)
                    tcell7.ColumnSpan = 5
                    tcell7.Height = 5
                    trow2.Cells.Add(tcell7)
                    table3.Rows.Add(trow2)
                    i = i + 1
                End If
            Loop
        End If
        Panel1.Controls.Add(table3)
        table3.Width = 800
        table3.HorizontalAlign = HorizontalAlign.Left
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Select * From SurveyResult Where StuID='" & Session("UID") & "' and CourseCode='" & Session("SelCrsNo") & "' and InstructorID='" & Session("InstNo") & "' and Year=" & Session("SelYear") & " and  Semester='" & Session("SelSem") & "'"
        Dr = Cmd.ExecuteReader
        If Dr.Read Then
            Session("fNo") = Dr(1)
            If Dr(3) = "Not Complete" Then
                btnClear.Enabled = True
                btnSave.Enabled = True
                btnSub.Enabled = True
                Call FillData()
            Else
                btnClear.Enabled = False
                btnSave.Enabled = False
                btnSub.Enabled = False
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Warning, You are sent this survey before, so you cant send it again');</script>")
                Call FillData()
            End If
        Else
            Session("fNo") = ""
            btnClear.Enabled = True
            btnSave.Enabled = True
            btnSub.Enabled = True
        End If
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        SqlCon.Close()
        SqlCon.Open()
        Cmd.CommandText() = "Delete From SurveyResult Where StuID='" & Session("UID") & "' and CourseCode='" & Session("SelCrsNo") & "' and InstructorID='" & Session("InstNo") & "' and Year=" & Session("SelYear") & " and  Semester='" & Session("SelSem") & "'"
        Dr = Cmd.ExecuteReader
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Insert Into SurveyResult Values('" & Session("UID") & "','" & Session("UID") & "-" & Session("SelCrsNo") & "','" & Session("SelCrsNo") & "','Not Complete','" & Session("InstNo") & "'," & Session("SelYear") & ",'" & Session("SelSem") & "')"
        Cmd.ExecuteNonQuery()
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Delete From SurveyAnswers Where FormNo='" & Session("fNo") & "'"
        Dr = Cmd.ExecuteReader
        SqlCon.Close()

        For Each Ctrl As Control In Page.Controls
            CheckControl(Ctrl)
        Next
    End Sub
    Protected Sub CheckControl(ByVal CheckBox As Control)
        If TypeOf CheckBox Is RadioButton Then
            'If CType(CheckBox, RadioButton).Checked Then
            '    ListBox1.Items.Add(CType(CheckBox, RadioButton).Text)
            'End If
        Else
            For Each Cbox As Control In CheckBox.Controls
                If TypeOf Cbox Is RadioButton Then
                    If CType(Cbox, RadioButton).Checked Then
                        If Len(CType(Cbox, RadioButton).ID) = 7 Then Session("qNo") = Mid(CType(Cbox, RadioButton).ID, 5, 1)
                        If Len(CType(Cbox, RadioButton).ID) = 8 Then Session("qNo") = Mid(CType(Cbox, RadioButton).ID, 5, 2)
                        SqlCon.Close()
                        SqlCon.Open()
                        Cmd.CommandText() = "Insert Into SurveyAnswers Values('" & Session("UID") & "-" & Session("SelCrsNo") & "'," & Session("qNo") & ",'" & Session("UID") & "','" & Trim(CType(Cbox, RadioButton).Text) & "')"
                        Cmd.ExecuteNonQuery()
                        SqlCon.Close()
                    End If
                Else
                    If Cbox.HasControls Then
                        CheckControl(Cbox)
                    End If
                End If
            Next
        End If
    End Sub

    Sub FillData()
        SqlCon.Close()
        SqlCon.Open()
        Cmd.CommandText() = "Select * From SurveyAnswers Where StudentID='" & Session("UID") & "' and FormNo='" & Session("fNo") & "'"
        Dr = Cmd.ExecuteReader
        Do While Dr.Read
            Select Case Trim(Dr(3))
                Case "Strongly Agree"
                    For Each Ctrl As Control In Page.Controls
                        CheckControl1(Ctrl)
                    Next
                Case "Agree"
                    For Each Ctrl As Control In Page.Controls
                        CheckControl1(Ctrl)
                    Next
                Case "Neutral"
                    For Each Ctrl As Control In Page.Controls
                        CheckControl1(Ctrl)
                    Next
                Case "Disagree"
                    For Each Ctrl As Control In Page.Controls
                        CheckControl1(Ctrl)
                    Next
                Case "Strongly Disagree"
                    For Each Ctrl As Control In Page.Controls
                        CheckControl1(Ctrl)
                    Next
            End Select
        Loop
        SqlCon.Close()
    End Sub
    Protected Sub CheckControl1(ByVal CheckBox As Control)
        For Each Cbox As Control In CheckBox.Controls
            If TypeOf Cbox Is RadioButton Then
                If Mid(CType(Cbox, RadioButton).ID, 5, 1) = Dr(1) Then
                    CType(Cbox, RadioButton).Checked = True
                End If
            Else
                If Cbox.HasControls Then
                    CheckControl1(Cbox)
                End If
            End If
        Next
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        For Each Ctrl As Control In Page.Controls
            CheckControl2(Ctrl)
        Next
    End Sub

    Protected Sub CheckControl2(ByVal CheckBox As Control)
        For Each Cbox As Control In CheckBox.Controls
            If TypeOf Cbox Is RadioButton Then
                CType(Cbox, RadioButton).Checked = False
            Else
                If Cbox.HasControls Then
                    CheckControl1(Cbox)
                End If
            End If
        Next
    End Sub

    Protected Sub btnSub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSub.Click
        SqlCon.Close()
        SqlCon.Open()
        Cmd.CommandText() = "Delete From SurveyResult Where StuID='" & Session("UID") & "' and CourseCode='" & Session("SelCrsNo") & "' and InstructorID='" & Session("InstNo") & "' and Year=" & Session("SelYear") & " and  Semester='" & Session("SelSem") & "'"
        Dr = Cmd.ExecuteReader
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Insert Into SurveyResult Values('" & Session("UID") & "','" & Session("UID") & "-" & Session("SelCrsNo") & "','" & Session("SelCrsNo") & "','" & Now.ToShortDateString & "','" & Session("InstNo") & "'," & Session("SelYear") & ",'" & Session("SelSem") & "')"
        Cmd.ExecuteNonQuery()
        SqlCon.Close()

        SqlCon.Open()
        Cmd.CommandText() = "Delete From SurveyAnswers Where StudentID='" & Session("UID") & "' and FormNo='" & Session("fNo") & "'"
        Dr = Cmd.ExecuteReader
        SqlCon.Close()

        For Each Ctrl As Control In Page.Controls
            CheckControl(Ctrl)
        Next
        Response.Redirect("ListStuCourses.aspx")
    End Sub
End Class
