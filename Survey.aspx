<%@ Page Language="VB" MasterPageFile="~/MasterPageStu.master" AutoEventWireup="false" CodeFile="Survey.aspx.vb" Inherits="Survey" title="Survey Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
<!--

function Table1_onclick() {

}

// -->
</script>

    <table style="width: 1000px">
        <tr>
            <td align="left" style="width: 1000px">
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
                    ForeColor="#69BDE1" Text="Label"></asp:Label></td>
        </tr>
    </table>
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #607d9f thin inset; border-top: #607d9f thin inset; z-index: 101;
        left: 191px; border-left: #607d9f thin inset; border-bottom: #607d9f thin inset;
        top: 235px; height: 1px" language="javascript" onclick="return Table1_onclick()" width="800">
        <tr>
            <td align="left" colspan="4" dir="ltr" style="font-weight: bold; font-size: small;
                color: black; font-family: Arial; height: 5px; background-color: lightsteelblue">
                Course Information</td>
        </tr>
        <tr style="color: #000000">
            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 985px;
                color: black; font-family: Arial">
                Course Name:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 544px;
                font-family: Arial">
                <asp:TextBox ID="txtCrs" runat="server" BackColor="#E0E0E0" BorderStyle="Inset" ReadOnly="True"
                    Width="264px"></asp:TextBox></td>
            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 333px;
                font-family: Arial">
                Year/Semester:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
                <asp:TextBox ID="txtYear" runat="server" BackColor="#E0E0E0" BorderStyle="Inset"
                    ReadOnly="True" Width="48px"></asp:TextBox>
                <asp:TextBox ID="txtSem" runat="server" BackColor="#E0E0E0" BorderStyle="Inset" ReadOnly="True"
                    Width="88px"></asp:TextBox></td>
        </tr>
        <tr style="color: #000000">
            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 985px;
                color: black; font-family: Arial">
                Instructor Name:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 544px;
                font-family: Arial">
                <asp:TextBox ID="txtIns" runat="server" BackColor="#E0E0E0" BorderStyle="Inset"
                    ReadOnly="True" Width="264px"></asp:TextBox></td>
            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 333px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server"  Width="800px" ForeColor="Black">
    </asp:Panel><asp:Panel ID="Panel2" runat="server"  Width="800px" ForeColor="Black">
    </asp:Panel>
    &nbsp;&nbsp;<br />
                <asp:Button ID="btnClear" runat="server" BackColor="#A4B1C8" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="CLEAR" Width="88px" /><asp:Button ID="btnSave" runat="server" BackColor="#A4B1C8" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="SAVE" Width="88px" /><asp:Button ID="btnSub" runat="server" BackColor="#A4B1C8" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="SUBMIT" Width="88px" />
</asp:Content>

