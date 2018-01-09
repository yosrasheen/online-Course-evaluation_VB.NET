<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="Student.aspx.vb" Inherits="Student" title="Student Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 636px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px">
        <tr>
            <td align="left" bgcolor="#69bde1" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: medium; color: black; font-family: Arial; height: 43px">
                Manage Student Account</td>
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
                Student Name:</td>
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
                <asp:TextBox ID="txtName" runat="server" BorderStyle="Inset" Width="211px"></asp:TextBox></td>
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
                <asp:Label ID="lblErrName" runat="server" Font-Bold="True" ForeColor="Red" Text="Student Name Error"
                    Visible="False"></asp:Label></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial; height: 18px">
                <asp:Label ID="lblErrMail" runat="server" Font-Bold="True" ForeColor="Red" Text="Email Error"
                    Visible="False"></asp:Label></td>
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
                Student ID:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
            </td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px;
                color: red; font-family: Arial; height: 11px">
                <asp:TextBox ID="txtNo" runat="server" BorderStyle="Inset" Width="211px" BackColor="#E0E0E0" ReadOnly="True"></asp:TextBox></td>
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
                font-family: Arial; height: 18px">
                <asp:Label ID="lblErrPW1" runat="server" Font-Bold="True" ForeColor="Red" Text="Password Error"
                    Visible="False"></asp:Label></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 879px; font-family: Arial; height: 18px">
                <asp:Label ID="lblErrPW2" runat="server" Font-Bold="True" ForeColor="Red" Text="Confirm Password Error"
                    Visible="False"></asp:Label></td>
            <td align="right" dir="ltr" style="font-weight: normal; font-size: x-small; width: 1817px;
                color: red; font-family: Arial; height: 18px">
                </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial; color: white; height: 5px; background-color: #a7d3ec;">
                List of Courses</td>
        </tr>
        <tr>
            <td align="center" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:DataGrid ID="Grid1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    Style="z-index: 105; left: 112px; top: 272px" Width="700px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditItemStyle BackColor="#2461BF" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" Font-Names="arial" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:ButtonColumn CommandName="View" Text="View Courses">
                            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Overline="False"
                                Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
                        </asp:ButtonColumn>
                    </Columns>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="arial" Font-Size="Small"
                        ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataGrid><asp:DataGrid ID="Grid" runat="server" CellPadding="4" ForeColor="#333333"
                    GridLines="None" Style="z-index: 105; left: 112px; top: 272px" Width="700px">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#FFFBD6" Font-Names="arial" Font-Size="Small" ForeColor="#333333"
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:ButtonColumn CommandName="Delete" Text="Delete">
                            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Overline="False"
                                Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Red" />
                        </asp:ButtonColumn>
                    </Columns>
                    <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Names="arial" Font-Size="Small"
                        ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataGrid><asp:Label ID="lblErr" runat="server" Font-Names="Arial" Font-Size="Small"
                    ForeColor="Red" Text="No Courses Assigned" Width="216px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial; height: 37px">
                <asp:Button ID="btnCrs" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="ADD NEW COURSE" Width="144px" />
                <asp:Button ID="btnSave" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="SAVE" Width="80px" /></td>
        </tr>
    </table>
</asp:Content>

