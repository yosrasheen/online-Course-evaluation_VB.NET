<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="ViewReports.aspx.vb" Inherits="ViewReports" title="View Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 640px">
        <tr>
            <td style="font-weight: bold; width: 69px; color: black">
                Year:</td>
            <td align="left">
                <asp:DropDownList ID="cmbYear" runat="server" Width="72px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Summer</asp:ListItem>
                    <asp:ListItem>Winter</asp:ListItem>
                </asp:DropDownList></td>
            <td style="font-weight: bold; color: black">
                Semester:</td>
            <td align="left">
                <asp:DropDownList ID="cmbSem" runat="server" Width="136px">
                    <asp:ListItem>(All)</asp:ListItem>
                    <asp:ListItem>Summer</asp:ListItem>
                    <asp:ListItem>Winter</asp:ListItem>
                </asp:DropDownList></td>
            <td align="left">
                <asp:Button ID="btnView" runat="server" Text="View Courses" /></td>
        </tr>
    </table>
    <br />
    <asp:DataGrid ID="Grid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Style="z-index: 105; left: 112px; top: 272px" Width="900px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditItemStyle BackColor="#2461BF" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#EFF3FB" Font-Names="arial" Font-Size="Small" HorizontalAlign="Center"
            VerticalAlign="Middle" />
        <Columns>
            <asp:ButtonColumn CommandName="View" Text="View Report">
                <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Overline="False"
                    Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
            </asp:ButtonColumn>
        </Columns>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="arial" Font-Size="Small"
            ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:DataGrid>
    <asp:Label ID="lblErr" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small"
        ForeColor="Red" Text="No Courses Avilable" Width="216px"></asp:Label>
</asp:Content>

