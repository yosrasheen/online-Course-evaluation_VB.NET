<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" title="Contact us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 636px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="left" bgcolor="#69bde1" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: medium; color: black; font-family: Arial; height: 43px">
                Send us Email</td>
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
                Name:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                color: red; font-family: Arial; height: 11px">
                <asp:TextBox ID="txtName" runat="server" BorderStyle="Inset" Width="472px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                color: red; font-family: Arial; height: 11px">
            </td>
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
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: black; font-family: Arial">
                Email Address:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: black; font-family: Arial">
                Web Site:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: red; font-family: Arial">
                <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Inset" Width="232px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                color: red; font-family: Arial">
                <asp:TextBox ID="txtWeb" runat="server" BorderStyle="Inset" Width="232px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                color: red; font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                font-family: Arial">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email Error" Font-Bold="True" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtWeb"
                    ErrorMessage="Web Site Error" Font-Bold="True" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: black; font-family: Arial">
                Your Message:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:TextBox ID="txtMess" runat="server" BorderStyle="Inset" Height="80px" TextMode="MultiLine"
                    Width="472px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                font-family: Arial; height: 18px">
            </td>
            <td align="right" dir="ltr" style="font-weight: normal; font-size: x-small; width: 851px;
                color: red; font-family: Arial; height: 18px">
            </td>
            <td align="right" dir="ltr" style="font-weight: normal; font-size: x-small; width: 1817px;
                color: red; font-family: Arial; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                font-family: Arial; height: 18px">
            </td>
            <td align="right" dir="ltr" style="font-weight: normal; font-size: x-small; width: 851px;
                color: red; font-family: Arial; height: 18px">
            </td>
            <td align="right" dir="ltr" style="font-weight: normal; font-size: x-small; width: 1817px;
                color: red; font-family: Arial; height: 18px">
                <asp:Button ID="btnSave" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="SUBMIT" Width="88px" /></td>
        </tr>
    </table>
</asp:Content>

