<%@ Page Language="VB" MasterPageFile="~/MasterPageInst.master" AutoEventWireup="false" CodeFile="EditInstructor.aspx.vb" Inherits="EditInstructor" title="Edit Instructor Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1000px">
        <tr>
            <td align="left" style="width: 1000px">
    <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
        ForeColor="#69BDE1" Text="Label"></asp:Label></td>
        </tr>
    </table>
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 636px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="left" bgcolor="#69bde1" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: medium; color: black; font-family: Arial; height: 43px">
                Edit Instructor Profile</td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                color: white; font-family: Arial; height: 5px; background-color: #a7d3ec">
                Personal Information</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: black; font-family: Arial">
                Instructor Name:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
                Email Address:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: red; font-family: Arial; height: 11px">
                <asp:TextBox ID="txtName" runat="server" BackColor="#E0E0E0" BorderStyle="Inset"
                    ReadOnly="True" Width="211px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                color: red; font-family: Arial; height: 11px">
                <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Inset" Width="211px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                color: red; font-family: Arial; height: 11px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email Error" Font-Bold="True" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                font-family: Arial; height: 18px">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial; height: 18px">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="left" bgcolor="gainsboro" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: small; color: white; font-family: Arial; height: 5px; background-color: #a7d3ec">
                Login Information</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: black; font-family: Arial">
                Instructor ID:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial; color: black;">
                Current Password:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: red; font-family: Arial; height: 11px">
                <asp:TextBox ID="txtNo" runat="server" BackColor="#E0E0E0" BorderStyle="Inset"
                    ReadOnly="True" Width="168px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
                <asp:TextBox ID="txtOldPW" runat="server" BorderStyle="Inset" MaxLength="15" TextMode="Password"
                    Width="211px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: black; font-family: Arial">
                New
                Password:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: black; font-family: Arial">
                Confirm Password:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: red; font-family: Arial">
                <asp:TextBox ID="txtPW1" runat="server" BorderStyle="Inset" MaxLength="15" TextMode="Password"
                    Width="211px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                color: red; font-family: Arial">
                <asp:TextBox ID="txtPW2" runat="server" BorderStyle="Inset" DESIGNTIMEDRAGDROP="21"
                    MaxLength="15" TextMode="Password" Width="211px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                color: red; font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                font-family: Arial;">
            </td>
            <td align="right" dir="ltr" style="font-weight: normal; font-size: x-small; width: 851px;
                color: red; font-family: Arial;">
            </td>
            <td align="right" dir="ltr" style="font-weight: normal; font-size: x-small; width: 1817px;
                color: red; font-family: Arial;">
                <asp:Button ID="btnSave" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="SAVE" Width="88px" /></td>
        </tr>
    </table>
</asp:Content>

