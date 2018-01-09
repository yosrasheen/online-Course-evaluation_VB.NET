Imports System.Data
Partial Class ManageSurvey
    Inherits System.Web.UI.Page
    Public i As Integer
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        If txtYear.Text = "" Or cmbSem.SelectedIndex = 0 Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('You must enter Year and Semester');</script>")
            Exit Sub
        Else
            Session("SerYear") = txtYear.Text
            Session("SerSem") = cmbSem.SelectedItem.Text
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Select * From Survey Where Year=" & Trim(txtYear.Text) & " And Semester='" & cmbSem.SelectedItem.Text & "'"
            Dr = Cmd.ExecuteReader
            If Dr.Read Then
                Session("SerNo") = Dr(0)
            Else
                SqlCon.Close()
                SqlCon.Open()
                Cmd.CommandText() = "Select Max(SurveyNo) From Survey"
                If IsDBNull(Cmd.ExecuteScalar) Then Session("SerNo") = 1 Else Session("SerNo") = Val(Cmd.ExecuteScalar) + 1
                SqlCon.Close()
                SqlCon.Open()
                Cmd.CommandText() = "Insert Into Survey Values(" & Session("SerNo") & ",'" & Now.ToShortDateString & "'," & Trim(txtYear.Text) & ",'" & Trim(cmbSem.SelectedItem.Text) & "','Open')"
                Cmd.ExecuteNonQuery()
                SqlCon.Close()
            End If
            SqlCon.Close()
            Response.Redirect("AddQues.aspx")
            End If
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Grid2.Visible = False
        lblErr1.Visible = False
        lblErr2.Visible = False
        txtYear.Text = ""
        cmbSem.SelectedIndex = 0
        pnlEdit.Visible = False
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub btnView_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnView.Click
        If txtYear.Text = "" Or cmbSem.SelectedIndex = 0 Then
            ClientScript.RegisterStartupScript(GetType(String), "", "<script>alert('You must enter Year and Semester');</script>")
            Exit Sub
        End If
        Call FillGrid1()
        Grid2.Visible = False
        lblErr2.Visible = False
    End Sub

    Protected Sub btnViewAll_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnViewAll.Click
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select * From Survey"
        Dr = Cmd.ExecuteReader
        If Dr.HasRows Then
            Grid1.Visible = True
            lblErr1.Visible = False
            Grid1.DataSource = Dr
            Grid1.DataBind()
        Else
            Grid1.Visible = False
            lblErr1.Visible = True
            Grid2.Visible = False
            lblErr2.Visible = False
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Grid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Grid1.ItemCommand
        If e.CommandName = "View" Then
            Session("Ser") = e.Item.Cells(3).Text
            Call FillGrid2()
        End If
        If e.CommandName = "Close" Then
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Update Survey Set Status='Close' Where SurveyNo=" & e.Item.Cells(3).Text
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            Call FillGrid1()
            Grid2.Visible = False
            lblErr2.Visible = False
        End If
        If e.CommandName = "Del" Then
            'Response.Write("<script>window.confirm('Erro');</script>")
            'if Response.Write("<script>window.confirm('Erro');</script>"="Yes" then
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Delete From SurveyQues Where SurveyNo=" & e.Item.Cells(3).Text
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Delete From Survey Where SurveyNo=" & e.Item.Cells(3).Text
            Cmd.ExecuteNonQuery()
            SqlCon.Close()

            SqlCon.Open()
            Cmd.CommandText() = "Select * From SurveyResult Where Year=" & e.Item.Cells(5).Text & " and Semester='" & e.Item.Cells(6).Text & "'"
            Dr = Cmd.ExecuteReader
            ListBox1.Items.Clear()
            Do While Dr.Read
                ListBox1.Items.Add(Dr(1))
            Loop
            SqlCon.Close()

            For i = 0 To ListBox1.Items.Count - 1
                SqlCon.Close()
                SqlCon.Open()
                Cmd.CommandText() = "Delete From SurveyAnswers Where FormNo='" & ListBox1.Items(i).Text & "'"
                Cmd.ExecuteNonQuery()
                SqlCon.Close()
            Next
            SqlCon.Close()
            SqlCon.Open()
            Cmd.CommandText() = "Delete From SurveyResult Where Year=" & e.Item.Cells(5).Text & " and Semester='" & e.Item.Cells(6).Text & "'"
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            Call FillGrid1()
            Grid2.Visible = False
            lblErr2.Visible = False
        End If
    End Sub

    Protected Sub Grid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Grid1.SelectedIndexChanged

    End Sub

    Sub FillGrid1()
        pnlEdit.Visible = False
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        If txtYear.Text = "" Or cmbSem.SelectedIndex = 0 Then
            Cmd.CommandText() = "Select * From Survey"
        Else
            Cmd.CommandText() = "Select * From Survey Where Year=" & Trim(txtYear.Text) & " And Semester='" & cmbSem.SelectedItem.Text & "'"
        End If
        Dr = Cmd.ExecuteReader
        If Dr.HasRows Then
            Grid1.Visible = True
            lblErr1.Visible = False
            Grid1.DataSource = Dr
            Grid1.DataBind()
        Else
            Grid1.Visible = False
            lblErr1.Visible = True
            Grid2.Visible = False
            lblErr2.Visible = False
        End If
        SqlCon.Close()
    End Sub

    Sub FillGrid2()
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select QuesNo 'QNo', QuestionTitle 'Question Title', Option1, Option2, Option3, Option4, Option5 From SurveyQues Where SurveyNo=" & Session("Ser")
        Dr = Cmd.ExecuteReader
        If Dr.HasRows Then
            Grid2.Visible = True
            lblErr2.Visible = False
            Grid2.DataSource = Dr
            Grid2.DataBind()
        Else
            Grid2.Visible = False
            lblErr2.Visible = True
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Grid2_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Grid2.ItemCommand
        If e.CommandName = "Del" Then
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Delete From SurveyQues Where SurveyNo=" & Session("Ser") & " And QuesNo=" & e.Item.Cells(3).Text
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            Call FillGrid2()
        End If
        If e.CommandName = "Edit" Then
            pnlEdit.Visible = True
            txtNo.Text = e.Item.Cells(3).Text
            txtQues.Text = e.Item.Cells(4).Text
        End If
    End Sub

    Protected Sub Grid2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Grid2.SelectedIndexChanged

    End Sub

    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        pnlEdit.Visible = False
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Update SurveyQues Set QuestionTitle='" & Trim(txtQues.Text) & "' Where SurveyNo=" & Session("Ser") & " And QuesNo=" & txtNo.Text
        Cmd.ExecuteNonQuery()
        SqlCon.Close()
        pnlEdit.Visible = False
        Call FillGrid2()
    End Sub
End Class
