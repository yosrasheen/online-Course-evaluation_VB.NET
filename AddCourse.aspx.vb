Imports System.Data
Partial Class Coorse
    Inherits System.Web.UI.Page
    Public i As Integer
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtName.Text = "" Or txtNo.Text = "" Or cmbLevel.SelectedIndex = 0 Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, You Must Fill all Reuired Fields');</script>")
            Exit Sub
        End If
        For i = 1 To Len(Trim(txtName.Text))
            If Mid(txtName.Text, i, 1) = "." Or Mid(txtName.Text, i, 1) = "+" Or Mid(txtName.Text, i, 1) = "-" Or Mid(txtName.Text, i, 1) = "!" Or Mid(txtName.Text, i, 1) = "@" Or Mid(txtName.Text, i, 1) = "#" Or Mid(txtName.Text, i, 1) = "$" Or Mid(txtName.Text, i, 1) = "%" Or Mid(txtName.Text, i, 1) = "^" Or Mid(txtName.Text, i, 1) = "&" Or Mid(txtName.Text, i, 1) = "*" Or Mid(txtName.Text, i, 1) = "(" Or Mid(txtName.Text, i, 1) = ")" Or Mid(txtName.Text, i, 1) = "=" Or Mid(txtName.Text, i, 1) = "<" Or Mid(txtName.Text, i, 1) = ">" Then
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, Invalid Course Name');</script>")
                Exit Sub
            End If
        Next

        If Session("CMD1") = 1 Then
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Select * From Course Where CourseCode='" & Trim(txtNo.Text) & "'"
            Dr = Cmd.ExecuteReader
            If Dr.Read Then
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This Code is Already Exist');</script>")
                SqlCon.Close()
            Else
                SqlCon.Close()
                SqlCon.Open()
                Cmd.CommandText() = "Insert Into Course Values('" & Trim(txtNo.Text) & "','" & Trim(txtName.Text) & "','" & Trim(cmbLevel.SelectedItem.Text) & "')"
                Cmd.ExecuteNonQuery()
                SqlCon.Close()
                Call NewData()
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('The Course has been Successfully Added');</script>")
            End If
            SqlCon.Close()
        End If

        If Session("CMD1") = 2 Then
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Update Course Set CourseName='" & Trim(txtName.Text) & "', CourseLevel='" & Trim(cmbLevel.SelectedItem.Text) & "' Where CourseCode='" & Trim(txtNo.Text) & "'"
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            Call NewData()
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('The Course has been Successfully Updated');</script>")
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Call NewData()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Sub NewData()
        If Session("CMD1") = 1 Then
            txtNo.Enabled = True
            txtNo.Enabled = True
            txtName.Text = ""
            txtNo.Text = ""
            cmbLevel.SelectedIndex = 0
        End If
        If Session("CMD1") = 2 Then
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Select * From Course Where CourseCode='" & Session("CrsNo") & "'"
            Dr = Cmd.ExecuteReader
            If Dr.Read Then
                txtNo.Enabled = False
                txtNo.Text = Dr(0)
                txtName.Text = Dr(1)
                cmbLevel.SelectedValue = Dr(2)
            End If
            SqlCon.Close()
        End If
    End Sub
End Class
