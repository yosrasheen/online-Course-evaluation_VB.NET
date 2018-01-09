<%@ Page Language="VB" MasterPageFile="~/MasterPageStu.master" AutoEventWireup="false" CodeFile="StudentFrm.aspx.vb" Inherits="StudentFrm" title="Student Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 720px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="center" bgcolor="#69bde1" colspan="5" dir="ltr" style="font-weight: bold;
                font-size: medium; color: white; font-family: Arial; height: 80px">
                Welcome to STUDENT Form<br />
                <br />
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
                    ForeColor="White" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
            </td>
            <td align="right" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
            </td>
            <td align="right" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <img src="images/Edit.jpg" /></td>
            <td align="center" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <img src="images/List.jpg" /></td>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <img src="images/Logoff.jpg" /></td>
        </tr>
        <tr>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="Medium" Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/EditStudent.aspx">Edit Profile</asp:HyperLink></td>
            <td align="center" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                &nbsp;<asp:HyperLink ID="lnkIns" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="Medium" Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/ListStuCourses.aspx">Lit of My Courses</asp:HyperLink></td>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="Medium" Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/Index.aspx">Log Out</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
            </td>
            <td align="center" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
            </td>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
            </td>
        </tr>
    </table>
</asp:Content>

