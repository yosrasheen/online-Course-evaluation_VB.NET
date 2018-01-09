<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="AddQues.aspx.vb" Inherits="AddQues" title="Add Question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 664px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="left" bgcolor="#69bde1" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: medium; color: black; font-family: Arial; height: 43px">
                Add New Question</td>
        </tr>
        <tr>
            <td align="left" bgcolor="gainsboro" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: small; color: white; font-family: Arial; height: 5px; background-color: #a7d3ec">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: small; color: white; font-family: Arial; height: 5px;">
                </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: small; color: white; font-family: Arial; height: 5px; background-color: #a7d3ec">
                Options Question:</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 137px;
                font-family: Arial; color: black;">
                Question Type:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:RadioButton ID="optOpt" runat="server" ForeColor="Blue" Text="Options" AutoPostBack="True" GroupName="a" />&nbsp;<asp:RadioButton
                    ID="optTxt" runat="server" ForeColor="Blue" Text="Text" AutoPostBack="True" GroupName="a" /></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 137px;
                font-family: Arial; color: black;">
                Question No:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:TextBox ID="txtNo" runat="server" BackColor="#E0E0E0" ReadOnly="True" Width="72px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 137px;
                font-family: Arial; color: black;">
                Question Category:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial;">
                <asp:DropDownList ID="cmbCat" runat="server" Width="256px">
                    <asp:ListItem>(None)</asp:ListItem>
                    <asp:ListItem>Course Evaluation</asp:ListItem>
                    <asp:ListItem>Instructor Evaluation</asp:ListItem>
                    <asp:ListItem>General</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 137px;
                font-family: Arial; color: black;">
                Question Text:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:TextBox ID="txtQues" runat="server" Width="504px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 137px;
                font-family: Arial">
            </td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:Panel ID="pnlOpt" runat="server" Width="400px">
                    <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 408px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 99px;
                font-family: Arial; color: black;">
                Option 1:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:TextBox ID="txtOpt1" runat="server" Width="264px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 99px;
                font-family: Arial; color: black;">
                Option 2:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:TextBox ID="txtOpt2" runat="server" Width="264px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 99px;
                font-family: Arial; color: black;">
                Option 3:</td>
            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:TextBox ID="txtOpt3" runat="server" Width="264px"></asp:TextBox></td>
        </tr>
                        <tr>
                            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 99px;
                                font-family: Arial; color: black;">
                                Option 4:</td>
                            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                                font-family: Arial">
                                <asp:TextBox ID="txtOpt4" runat="server" Width="264px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 99px;
                                font-family: Arial; color: black;">
                                Option 5:</td>
                            <td align="left" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                                font-family: Arial">
                                <asp:TextBox ID="txtOpt5" runat="server" Width="264px"></asp:TextBox></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                color: blue; font-family: Arial">
                </td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:Button ID="btnSave" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="SAVE" Width="88px" /></td>
        </tr>
    </table>
</asp:Content>

