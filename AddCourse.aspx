<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="AddCourse.aspx.vb" Inherits="Coorse" title="Add Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 636px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="left" bgcolor="#69bde1" colspan="2" dir="ltr" style="font-weight: bold;
                font-size: medium; color: black; font-family: Arial; height: 43px">
                Courses Information</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1203px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1203px;
                color: black; font-family: Arial">
                Course Code:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                color: red; font-family: Arial">
                <asp:TextBox ID="txtNo" runat="server" BorderStyle="Inset" Width="120px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1203px;
                color: black; font-family: Arial">
                Course Name:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                color: red; font-family: Arial">
                <asp:TextBox ID="txtName" runat="server" BorderStyle="Inset" Width="384px"></asp:TextBox></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1203px;
                color: black; font-family: Arial">
                Course Level:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                color: red; font-family: Arial">
                <asp:DropDownList ID="cmbLevel" runat="server" Width="72px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1203px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1203px;
                font-family: Arial; height: 18px">
            </td>
            <td align="right" dir="ltr" style="font-weight: normal; font-size: x-small; width: 1817px;
                color: red; font-family: Arial; height: 18px">
                </td>
        </tr>
        <tr>
            <td align="right" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:Button ID="btnSave" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="SAVE" Width="80px" /></td>
        </tr>
    </table>
</asp:Content>

