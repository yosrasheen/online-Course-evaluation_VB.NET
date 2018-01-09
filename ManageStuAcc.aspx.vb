Imports System.Data
Partial Class ManageStuAcc
    Inherits System.Web.UI.Page
    Public Con = System.Configuration.ConfigurationSettings.AppSettings("StrCon")
    Public SqlCon As New System.Data.SqlClient.SqlConnection(Con)
    Public Cmd As New SqlClient.SqlCommand
    Public Dr As SqlClient.SqlDataReader

    Sub FillGrid()
        SqlCon.Close()
        Cmd.Connection = SqlCon
        SqlCon.Open()
        Cmd.CommandText() = "Select UserID 'Student ID',UserName 'Student Name' From [User] Where UserType='Student' and AccStatus='Active'"
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
        If e.CommandName = "Select" Then
            Session("StuID") = e.Item.Cells(2).Text
            Session("CMD2") = 2
            Response.Redirect("Student.aspx")
        End If

        If e.CommandName = "Delete" Then
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Update [User] Set AccStatus='Not Active' Where UserID='" & e.Item.Cells(2).Text & "'"
            Cmd.ExecuteNonQuery()
            SqlCon.Close()
            Call FillGrid()
        End If
    End Sub

    Protected Sub Grid_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Grid.SelectedIndexChanged

    End Sub

    Protected Sub lnkSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkSearch.Click
        If txtName.Text = "" Then
            Call FillGrid()
        Else
            SqlCon.Close()
            Cmd.Connection = SqlCon
            SqlCon.Open()
            Cmd.CommandText() = "Select UserID 'Student ID',UserName 'Student Name' From [User] Where UserType='Student' And AccStatus='Active' And UserName Like('%" & Trim(txtName.Text) & "%')"
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
        End If
        SqlCon.Close()
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        Call FillGrid()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub lnkAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkAdd.Click
        Session("CMD2") = 1
        Response.Redirect("Student.aspx")
    End Sub
End Class
