<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="InstCrs.aspx.vb" Inherits="TeaCrs" title="Instructor Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 636px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="left" bgcolor="#69bde1" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: medium; color: black; font-family: Arial; height: 43px">
                Assign Courses for Instructor</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                font-family: Arial">
            </td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
            </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                color: black; font-family: Arial">
                Instructor ID:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                Instructor Name:</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                color: red; font-family: Arial; height: 11px">
                <asp:TextBox ID="txtNo" runat="server" BorderStyle="Inset" Width="144px" BackColor="#E0E0E0" ReadOnly="True"></asp:TextBox></td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                color: #ff0000; font-family: Arial; height: 11px">
                <asp:TextBox ID="txtName" runat="server" BorderStyle="Inset" MaxLength="10" Width="288px" BackColor="#E0E0E0" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr style="color: #ff0000">
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                color: black; font-family: Arial">
            </td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
            </td>
        </tr>
        <tr style="color: #ff0000">
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                color: black; font-family: Arial">
                Course Code:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial; color: black;">
                Course Name:</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                color: red; font-family: Arial">
                <asp:DropDownList ID="cmbCrs" runat="server" Width="144px" AutoPostBack="True">
                </asp:DropDownList></td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:TextBox ID="txtCrs" runat="server" BackColor="#E0E0E0" BorderStyle="Inset"
                    ReadOnly="True" Width="288px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                color: red; font-family: Arial">
            </td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                font-family: Arial; height: 18px; color: black;">
                Year:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                font-family: Arial; height: 18px; color: black;">
                Semester:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                font-family: Arial; height: 18px; color: black;">
                Section:</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                font-family: Arial; height: 18px">
                <asp:TextBox ID="txtYear" runat="server" BackColor="#E0E0E0" ReadOnly="True" Width="56px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: normal; font-size: x-small; width: 851px;
                color: red; font-family: Arial; height: 18px">
                <asp:DropDownList ID="cmbSem" runat="server" Width="104px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Summer</asp:ListItem>
                    <asp:ListItem>Winter</asp:ListItem>
                </asp:DropDownList></td>
            <td align="left" dir="ltr" style="font-weight: normal; font-size: x-small; width: 1817px;
                color: red; font-family: Arial; height: 18px">
                <asp:TextBox ID="txtSection" runat="server" Width="72px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 2103px;
                font-family: Arial; height: 29px">
            </td>
            <td align="left" dir="ltr" style="font-weight: normal; font-size: x-small; width: 851px;
                color: red; font-family: Arial; height: 29px">
            </td>
            <td align="left" dir="ltr" style="font-weight: normal; font-size: x-small; width: 1817px;
                color: red; font-family: Arial; height: 29px">
            </td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:Button ID="btnSave" runat="server"
                        BackColor="#69BDE1" Font-Bold="True" Font-Size="Small" Height="32px" Text="SAVE"
                        Width="80px" /></td>
        </tr>
    </table>
</asp:Content>

