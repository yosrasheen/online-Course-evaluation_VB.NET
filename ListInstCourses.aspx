<%@ Page Language="VB" MasterPageFile="~/MasterPageInst.master" AutoEventWireup="false" CodeFile="ListInstCourses.aspx.vb" Inherits="TeaCourses" title="List of Instructor Courses" %>
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
                List of Instructor Courses</td>
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
                Instructor ID:</td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
                Instructor Name:</td>
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
                color: red; font-family: Arial; height: 11px">
                <asp:TextBox ID="txtName" runat="server" BackColor="#E0E0E0" BorderStyle="Inset"
                    ReadOnly="True" Width="288px"></asp:TextBox></td>
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
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                color: white; font-family: Arial; background-color: #a7d3ec">
                List of Courses</td>
        </tr>
        <tr>
            <td align="center" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:DataGrid ID="Grid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    Style="z-index: 105; left: 112px; top: 272px" Width="700px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditItemStyle BackColor="#2461BF" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" Font-Names="arial" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:ButtonColumn CommandName="View" Text="View Result">
                            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Overline="False"
                                Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
                        </asp:ButtonColumn>
                    </Columns>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="arial" Font-Size="Small"
                        ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataGrid><asp:Label ID="lblErr" runat="server" Font-Names="Arial" Font-Size="Small"
                    ForeColor="Red" Text="No Courses Assigned" Width="216px"></asp:Label><br />
            </td>
        </tr>
    </table>
</asp:Content>

