Imports System.Data
Partial Class Student
    Inherits System.Web.UI.Page
    Public i As Integer
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader
    Public Sub NewData()
        lblErrName.Visible = False
        lblErrMail.Visible = False
        lblErrPW1.Visible = False
        lblErrPW2.Visible = False
        If Session("CMD2") = 1 Then
            btnCrs.Visible = False
            txtName.Text = ""
            txtNo.Text = ""
            txtEmail.Text = ""
            txtPW1.Text = ""
            txtPW2.Text = ""
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Select Count(UserID) From [User]"
            If IsDBNull(Cmd.ExecuteScalar) Then txtNo.Text = Year(Now.ToShortDateString) & "001" Else txtNo.Text = Year(Now.ToShortDateString) & "00" & Val(Cmd.ExecuteScalar) + 1
            SqlCon.Close()
        End If
        If Session("CMD2") = 2 Then
            btnCrs.Visible = True
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Select * From [User] Where UserID='" & Session("StuID") & "'"
            Dr = Cmd.ExecuteReader
            If Dr.Read Then
                txtNo.Text = Dr(0)
                txtName.Text = Dr(1)
                txtEmail.Text = Dr(4)
            End If
            SqlCon.Close()
            Call FillGrid1()
        End If
    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Session("Err") = 0
        lblErrName.Visible = False
        lblErrMail.Visible = False
        lblErrPW1.Visible = False
        lblErrPW2.Visible = False
        For i = 1 To Len(Trim(txtName.Text))
            If (Asc(Mid(txtName.Text, i, 1)) >= 48 And Asc(Mid(txtName.Text, i, 1)) <= 57 Or Asc(Mid(txtName.Text, i, 1)) = 8) Then
                lblErrName.Visible = True
                Session("Err") = 1
            End If
        Next
        For i = 1 To Len(Trim(txtName.Text))
            If Mid(txtName.Text, i, 1) = "." Or Mid(txtName.Text, i, 1) = "+" Or Mid(txtName.Text, i, 1) = "-" Or Mid(txtName.Text, i, 1) = "!" Or Mid(txtName.Text, i, 1) = "@" Or Mid(txtName.Text, i, 1) = "#" Or Mid(txtName.Text, i, 1) = "$" Or Mid(txtName.Text, i, 1) = "%" Or Mid(txtName.Text, i, 1) = "^" Or Mid(txtName.Text, i, 1) = "&" Or Mid(txtName.Text, i, 1) = "*" Or Mid(txtName.Text, i, 1) = "(" Or Mid(txtName.Text, i, 1) = ")" Or Mid(txtName.Text, i, 1) = "=" Or Mid(txtName.Text, i, 1) = "<" Or Mid(txtName.Text, i, 1) = ">" Then
                lblErrName.Visible = True
                Session("Err") = 1
            End If
        Next
        If Len(Trim(txtName.Text)) < 3 Then
            lblErrName.Visible = True
            Session("Err") = 1
        End If
        If Len(txtEmail.Text) = 0 Then
            lblErrMail.Visible = True
            Session("Err") = 1
        End If

        If Session("CMD2") = 1 Then
            If Len(txtPW1.Text) <= 5 Then
                lblErrPW1.Visible = True
                Session("Err") = 1
            End If
            If Trim(txtPW1.Text) <> Trim(txtPW2.Text) Then
                lblErrPW2.Visible = True
                Session("Err") = 1
            End If
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Select * From [User] Where UserEmail='" & Trim(txtEmail.Text) & "'"
            Dr = Cmd.ExecuteReader
            If Dr.Read Then
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This Email is Already Exist');</script>")
                SqlCon.Close()
                Exit Sub
            End If

            If Session("Err") = 1 Then Exit Sub

            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Select * From [User] Where UserID='" & Trim(txtNo.Text) & "'"
            Dr = Cmd.ExecuteReader
            If Dr.Read Then
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This ID is Already Exist');</script>")
                SqlCon.Close()
            Else
                SqlCon.Close()
                SqlCon.Open()
                Cmd.CommandText() = "Insert Into [User] Values('" & Trim(txtNo.Text) & "','" & Trim(txtName.Text) & "','Student','" & Trim(txtPW1.Text) & "','" & Trim(txtEmail.Text) & "','Active')"
                Cmd.ExecuteNonQuery()
                SqlCon.Close()
                Call NewData()
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('The Student Account has been Successfully Added');</script>")
            End If
            SqlCon.Close()
        End If

        If Session("CMD2") = 2 Then
            If Trim(txtPW1.Text) <> "" Then
                If Len(txtPW1.Text) <= 5 Then
                    lblErrPW1.Visible = True
                    Session("Err") = 1
                End If
                If Trim(txtPW1.Text) <> Trim(txtPW2.Text) Then
                    lblErrPW2.Visible = True
                    Session("Err") = 1
                End If
            End If
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Select * From [User] Where UserEmail='" & Trim(txtEmail.Text) & "' And UserID<>'" & Trim(txtNo.Text) & "'"
            Dr = Cmd.ExecuteReader
            If Dr.Read Then
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This Email is Already Exist');</script>")
                SqlCon.Close()
                Exit Sub
            End If
            SqlCon.Close()
            If Session("Err") = 1 Then Exit Sub
            SqlCon.Open()
            If Trim(txtPW1.Text) <> "" Then Cmd.CommandText() = "Update [User] Set UserName='" & Trim(txtName.Text) & "', Password='" & Trim(txtPW1.Text) & "', UserEmail='" & Trim(txtEmail.Text) & "' Where UserID='" & Trim(txtNo.Text) & "'"
            If Trim(txtPW1.Text) = "" Then Cmd.CommandText() = "Update [User] Set UserName='" & Trim(txtName.Text) & "', UserEmail='" & Trim(txtEmail.Text) & "' Where UserID='" & Trim(txtNo.Text) & "'"
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('The Student Account has been Successfully Updated');</script>")
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Call NewData()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCrs_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCrs.Click
        Session("sNo") = txtNo.Text
        Session("sName") = txtName.Text
        Response.Redirect("StuCrs.aspx")
    End Sub

    Protected Sub Grid_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Grid.ItemCommand
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Delete From StudentCourse Where StudentID='" & Trim(txtNo.Text) & "' And CourseCode='" & e.Item.Cells(1).Text & "' And Section='" & e.Item.Cells(3).Text & "' And Year=" & Session("Year") & " And Semester='" & Session("Sem") & "'"
        Cmd.ExecuteNonQuery()
        SqlCon.Close()
        Call FillGrid()
        Call FillGrid1()
    End Sub

    Protected Sub Grid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Grid.SelectedIndexChanged

    End Sub
    Sub FillGrid()
        SqlCon.Close()
        SqlCon.Open()
        Cmd.CommandText() = "Select StudentCourse.CourseCode 'Course Code', CourseName 'Course Name', Section From StudentCourse,Course Where StudentCourse.CourseCode=Course.CourseCode and StudentID='" & Trim(txtNo.Text) & "' And Year=" & Session("Year") & " And Semester='" & Session("Sem") & "'"
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
    Sub FillGrid1()
        SqlCon.Close()
        SqlCon.Open()
        Cmd.CommandText() = "Select Year, Semester From StudentCourse Where StudentID='" & Trim(txtNo.Text) & "' Group By Year, Semester"
        Dr = Cmd.ExecuteReader
        If Dr.HasRows Then
            Grid1.Visible = True
            lblErr.Visible = False
            Grid1.DataSource = Dr
            Grid1.DataBind()
        Else
            Grid1.Visible = False
            lblErr.Visible = True
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Grid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Grid1.ItemCommand
        Session("Year") = e.Item.Cells(1).Text
        Session("Sem") = e.Item.Cells(2).Text
        Call FillGrid()
    End Sub
End Class
