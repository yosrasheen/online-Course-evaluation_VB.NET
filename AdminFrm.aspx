<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="AdminFrm.aspx.vb" Inherits="AdminFrm" title="Admin Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 720px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="center" bgcolor="#69bde1" colspan="5" dir="ltr" style="font-weight: bold;
                font-size: medium; color: white; font-family: Arial; height: 43px">
                Welcome to ADMIN Form</td>
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
                <img src="images/Dean.jpg" /></td>
            <td align="center" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <img src="images/Inst.jpg" /></td>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <img src="images/Stu.jpg" /></td>
        </tr>
        <tr>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="Medium" Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/ManageDeanAcc.aspx">Manage Deanship Account</asp:HyperLink></td>
            <td align="center" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                &nbsp;<asp:HyperLink ID="lnkIns" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="Medium" Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/ManageInstAcc.aspx">Manage Instructors Accounts</asp:HyperLink></td>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="Medium" Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/ManageStuAcc.aspx">Manage Students Accounts</asp:HyperLink></td>
        </tr>
        <tr>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial; height: 20px">
            </td>
            <td align="center" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial; height: 20px">
            </td>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial; height: 20px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <img src="images/Course.jpg" /></td>
            <td align="center" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <img src="images/Survey.jpg" /></td>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <img src="images/Report.jpg" /></td>
        </tr>
        <tr>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <asp:HyperLink ID="lnkCrs" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
                    Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/ManageCrs.aspx">Manage Courses Data</asp:HyperLink></td>
            <td align="center" colspan="3" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="Medium" Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/ManageSurvey.aspx">Manage Survey</asp:HyperLink></td>
            <td align="center" colspan="1" dir="ltr" style="font-weight: normal; font-size: x-small;
                color: red; font-family: Arial">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="Medium" Font-Underline="False" ForeColor="DeepSkyBlue" NavigateUrl="~/ViewReports.aspx">Generate Reports</asp:HyperLink></td>
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

