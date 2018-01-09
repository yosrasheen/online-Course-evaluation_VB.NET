<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="ManageCrs.aspx.vb" Inherits="ManageCrs" title="Courses Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" cellpadding="1" cellspacing="1" style="border-right: #69bde1 thin ridge;
        border-top: #69bde1 thin ridge; z-index: 101; left: 120px; border-left: #69bde1 thin ridge;
        width: 456px; border-bottom: #69bde1 thin ridge; top: 232px; height: 8px">
        <tr>
            <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 119px;
                color: black; font-family: Arial; height: 28px">
                Course Name:</td>
            <td align="left" dir="ltr" style="width: 190px; height: 28px">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td align="center" dir="rtl" style="font-weight: bold; height: 28px">
                <asp:LinkButton ID="lnkSearch" runat="server" Font-Names="Arial" Font-Size="Small"
                    ForeColor="#607D9F">Search</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="center" colspan="3" dir="rtl" style="font-weight: bold; height: 28px">
                <asp:LinkButton ID="lnkAdd" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small">Press Here to Add New Course</asp:LinkButton></td>
        </tr>
    </table>
    <asp:Label ID="lblErr" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
        ForeColor="Red" Text="NO Data Exists" Width="128px"></asp:Label><br />
    <asp:DataGrid ID="Grid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Style="z-index: 105; left: 112px; top: 272px" Width="700px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditItemStyle BackColor="#2461BF" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#EFF3FB" Font-Names="arial" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
        <Columns>
            <asp:ButtonColumn CommandName="Select" Text="View">
                <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Overline="False"
                    Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
            </asp:ButtonColumn>
            <asp:ButtonColumn CommandName="Delete" Text="Delete">
                <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Overline="False"
                    Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Red" />
            </asp:ButtonColumn>
        </Columns>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="arial" Font-Size="Small"
            ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:DataGrid>
</asp:Content>

