<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Password.aspx.vb" Inherits="Password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Forget Password</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
            style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
            left: 191px; border-left: #69bde1 thin ridge; border-bottom: #69bde1 thin ridge;
            top: 235px; height: 1px" width="480">
            <tr>
                <td align="left" bgcolor="#69bde1" colspan="3" dir="ltr" style="font-weight: bold;
                    font-size: medium; color: black; font-family: Arial; height: 43px">
                    Please enter your ID and email to resend your password</td>
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
                    color: black; font-family: Arial; height: 18px">
                    ID:</td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                    font-family: Arial; height: 18px">
                </td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                    font-family: Arial; height: 18px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                    color: black; font-family: Arial; height: 18px">
                    <asp:TextBox ID="txtNo" runat="server" Width="211px"></asp:TextBox></td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                    font-family: Arial; height: 18px">
                </td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                    font-family: Arial; height: 18px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                    color: black; font-family: Arial; height: 18px">
                </td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                    font-family: Arial; height: 18px">
                </td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                    font-family: Arial; height: 18px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                    color: black; font-family: Arial; height: 18px">
                    Email Address:</td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                    font-family: Arial; height: 18px">
                </td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                    font-family: Arial; height: 18px">
                </td>
            </tr>
            <tr>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                    color: red; font-family: Arial; height: 11px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="211px"></asp:TextBox></td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                    color: red; font-family: Arial; height: 11px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Email Error" Font-Bold="True" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                    color: red; font-family: Arial; height: 11px">
                </td>
            </tr>
            <tr>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                    color: red; font-family: Arial; height: 11px">
                </td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                    font-family: Arial">
                </td>
                <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                    font-family: Arial">
                </td>
            </tr>
            <tr>
                <td align="right" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                    font-family: Arial">
                    <asp:Button ID="btnSave" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Small"
                        Height="32px" Text="SEND" Width="80px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
