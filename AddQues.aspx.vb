Imports System.Data
Partial Class AddQues
    Inherits System.Web.UI.Page
    Public i As Integer
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader
    Protected Sub optOpt_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles optOpt.CheckedChanged
        pnlOpt.Visible = True
        txtOpt1.Text = "Strongly Agree"
        txtOpt2.Text = "Agree"
        txtOpt3.Text = "Neutral"
        txtOpt4.Text = "Disagree"
        txtOpt5.Text = "Strongly Disagree"
    End Sub

    Protected Sub optTxt_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles optTxt.CheckedChanged
        pnlOpt.Visible = False
        txtOpt1.Text = ""
        txtOpt2.Text = ""
        txtOpt3.Text = ""
        txtOpt4.Text = ""
        txtOpt5.Text = ""
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Call NewData()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If optTxt.Checked = True Then
            Session("QType") = "Text"
            If txtNo.Text = "" Or txtQues.Text = "" Then
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, You Must Fill all Reuired Fields');</script>")
                Exit Sub
            End If
        End If
        If optOpt.Checked = True Then
            Session("QType") = "Option"
            If txtNo.Text = "" Or txtQues.Text = "" Or txtOpt1.Text = "" Or txtOpt2.Text = "" Then
                ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, You Must Fill all Reuired Fields');</script>")
                Exit Sub
            End If
        End If

        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From SurveyQues Where QuesNo=" & Trim(txtNo.Text) & " And SurveyNo=" & Session("SerNo")
        Dr = Cmd.ExecuteReader
        If Dr.Read Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('Sorry, This Number is Already Exist');</script>")
            SqlCon.Close()
        Else
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Insert Into SurveyQues Values(" & Session("SerNo") & "," & Trim(txtNo.Text) & ",'" & Trim(Session("QType")) & "','" & Trim(txtQues.Text) & "','" & Trim(txtOpt1.Text) & "','" & Trim(txtOpt2.Text) & "','" & Trim(txtOpt3.Text) & "','" & Trim(txtOpt4.Text) & "','" & Trim(txtOpt5.Text) & "','" & Trim(cmbCat.SelectedItem.Text) & "')"
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            Call NewData()
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('The Qusetion Added Successfully');</script>")
        End If
        SqlCon.Close()
    End Sub

    Sub NewData()
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select Max(QuesNo) From SurveyQues Where SurveyNo=" & Session("SerNo")
        If IsDBNull(Cmd.ExecuteScalar) Then txtNo.Text = 1 Else txtNo.Text = Val(Cmd.ExecuteScalar) + 1
        SqlCon.Close()
        optOpt.Checked = True
        optTxt.Checked = False
        txtOpt1.Text = "Strongly Agree"
        txtOpt2.Text = "Agree"
        txtOpt3.Text = "Neutral"
        txtOpt4.Text = "Disagree"
        txtOpt5.Text = "Strongly Disagree"
        txtQues.Text = ""
        cmbCat.SelectedIndex = 0
        pnlOpt.Visible = True
    End Sub
End Class
