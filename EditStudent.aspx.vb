Imports System.Data
Partial Class EditStudent
    Inherits System.Web.UI.Page
    Public i As Integer
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader
    Public Sub FillData()
        txtNo.Text = Session("UID")
        txtName.Text = Session("UN")
        txtEmail.Text = Session("Email")
        txtPW1.Text = ""
        txtPW2.Text = ""
        txtOldPW.Text = ""
    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtName.Text = "" Or txtNo.Text = "" Or txtOldPW.Text = "" Or txtPW1.Text = "" Or txtEmail.Text = "" Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, You Must Fill all Reuired Fields');</script>")
            Exit Sub
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

        If Trim(txtOldPW.Text) <> Session("PW") Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, Error at Current Password');</script>")
            Exit Sub
        End If
        If Len(txtPW1.Text) <= 5 Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, Password must be at least 6 characters');</script>")
            Exit Sub
        End If
        If Trim(txtPW1.Text) <> Trim(txtPW2.Text) Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, Retype the Correct Password');</script>")
            Exit Sub
        End If

        SqlCon.Close()
        SqlCon.Open()
        Cmd.CommandText() = "Update [User] Set Password='" & Trim(txtPW1.Text) & "', UserEmail='" & Trim(txtEmail.Text) & "' Where UserID='" & Trim(txtNo.Text) & "'"
        Cmd.ExecuteNonQuery()
        SqlCon.Close()
        Session("PW") = Trim(txtPW1.Text)
        Session("Email") = Trim(txtEmail.Text)
        Session("Msg") = "Stu"
        Response.Redirect("MsgFrm.aspx")
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Call FillData()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblName.Text = "Welcome: " & Session("UN")
    End Sub
End Class
