Imports System.Data
Partial Class StuCrs
    Inherits System.Web.UI.Page
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        txtYear.Text = Year(Now.ToShortDateString)
        cmbSem.SelectedIndex = 0
        txtSection.Text = ""
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From Course"
        Dr = Cmd.ExecuteReader
        cmbCrs.Items.Clear()
        cmbCrs.Items.Add("")
        Do While Dr.Read
            cmbCrs.Items.Add(Dr(0))
        Loop
        SqlCon.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtNo.Text = Session("sNo")
        txtName.Text = Session("sName")
    End Sub

    Protected Sub cmbCrs_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmbCrs.SelectedIndexChanged
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From Course Where CourseCode='" & Trim(cmbCrs.SelectedItem.Text) & "'"
        Dr = Cmd.ExecuteReader
        If Dr.Read Then txtCrs.Text = Dr(1)
        SqlCon.Close()
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If cmbCrs.SelectedIndex = 0 Or txtSection.Text = "" Or txtNo.Text = "" Or cmbSem.SelectedIndex = 0 Or txtYear.Text = "" Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, You Must Fill all Reuired Fields');</script>")
            Exit Sub
        End If

        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From StudentCourse Where StudentID='" & Trim(txtNo.Text) & "' And CourseCode='" & Trim(cmbCrs.SelectedItem.Text) & "' And Year=" & Trim(txtYear.Text) & " And Semester='" & cmbSem.SelectedItem.Text & "'"
        Dr = Cmd.ExecuteReader
        If Dr.Read Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This Course is Already Assigned to this Student');</script>")
            SqlCon.Close()
        Else
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Insert Into StudentCourse Values('" & Trim(cmbCrs.SelectedItem.Text) & "','" & Trim(txtNo.Text) & "','" & Trim(txtSection.Text) & "'," & Trim(txtYear.Text) & ",'" & Trim(cmbSem.Text) & "')"
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            txtCrs.Text = ""
            txtSection.Text = ""
            cmbCrs.SelectedIndex = 0
            cmbSem.SelectedIndex = 0
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('The Data has been Successfully Added');</script>")
            SqlCon.Close()
        End If
        SqlCon.Close()
    End Sub
End Class