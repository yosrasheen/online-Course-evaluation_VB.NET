<%@ Page Language="VB" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="ManageSurvey.aspx.vb" Inherits="ManageSurvey" title="Manage Survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" dir="ltr"
        style="border-right: #69bde1 thin ridge; border-top: #69bde1 thin ridge; z-index: 101;
        left: 191px; border-left: #69bde1 thin ridge; width: 636px; border-bottom: #69bde1 thin ridge;
        top: 235px; height: 1px" language="javascript" onclick="return Table2_onclick()">
        <tr>
            <td align="left" bgcolor="#69bde1" colspan="3" dir="ltr" style="font-weight: bold;
                font-size: medium; color: black; font-family: Arial; height: 43px">
                Manage
                Survey Questions</td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                color: white; font-family: Arial; height: 5px; background-color: #a7d3ec">
                Survey Information</td>
        </tr>
        <tr>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 447px;
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
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 447px;
                color: black; font-family: Arial">
                Year:
                <asp:TextBox ID="txtYear" runat="server" Width="64px"></asp:TextBox></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 851px;
                font-family: Arial">
                Semester:
                <asp:DropDownList ID="cmbSem" runat="server" Width="104px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Summer</asp:ListItem>
                    <asp:ListItem>Winter</asp:ListItem>
                </asp:DropDownList></td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial">
                &nbsp;<asp:Button ID="btnView" runat="server" Font-Bold="True" Font-Names="Arial"
                    Font-Size="X-Small" Text="View Survey" Width="104px" />&nbsp;<asp:Button ID="btnViewAll"
                        runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Small" Text="View All Survey"
                        Width="104px" />
                <asp:ListBox ID="ListBox1" runat="server" Visible="False"></asp:ListBox></td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold; font-size: x-small;
                font-family: Arial; height: 18px; color: red;">
                Note: You can add new survey by enter new year or select new semester, then press
                on (Add New Questions) button</td>
        </tr>
        <tr>
            <td align="center" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial; height: 16px">
                &nbsp;<asp:DataGrid ID="Grid1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    Style="z-index: 105; left: 112px; top: 272px" Width="500px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditItemStyle BackColor="#2461BF" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" Font-Names="arial" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:ButtonColumn CommandName="Del" Text="Delete">
                            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" ForeColor="Red" />
                        </asp:ButtonColumn>
                        <asp:ButtonColumn CommandName="View" Text="Questions">
                            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Overline="False"
                                Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
                        </asp:ButtonColumn>
                        <asp:ButtonColumn CommandName="Close" Text="Close">
                            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" ForeColor="Red" />
                        </asp:ButtonColumn>
                    </Columns>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="arial" Font-Size="Small"
                        ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataGrid>
                <asp:Label ID="lblErr1" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Red"
                    Text="No Survey Added" Width="176px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial; height: 18px">
            </td>
            <td align="left" dir="ltr" style="font-weight: bold; font-size: small; width: 1817px;
                font-family: Arial; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial; height: 18px">
                <asp:Panel ID="pnlEdit" runat="server" Width="800px">
                    <table style="border-right: red thin solid; border-top: red thin solid; border-left: red thin solid;
                        border-bottom: red thin solid" width="800">
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold; color: red">
                                Edit Question Number
                                <asp:TextBox ID="txtNo" runat="server" BackColor="#E0E0E0" ReadOnly="True" Width="40px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; color: black">
                                Question Text:</td>
                            <td align="left">
                                <asp:TextBox ID="txtQues" runat="server" TextMode="MultiLine" Width="640px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; color: black">
                            </td>
                            <td>
                                <asp:Button ID="btnSave" runat="server" Text="Save" Width="88px" />&nbsp;<asp:Button
                                    ID="btnBack" runat="server" Text="Cancel" Width="88px" /></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial; height: 10px">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                color: white; font-family: Arial; background-color: #a7d3ec">
                List of Questions</td>
        </tr>
        <tr>
            <td align="center" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:DataGrid ID="Grid2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    Style="z-index: 105; left: 112px; top: 272px" Width="1000px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditItemStyle BackColor="#2461BF" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#EFF3FB" Font-Names="arial" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:ButtonColumn CommandName="Del" Text="Delete">
                            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" ForeColor="Red" />
                        </asp:ButtonColumn>
                        <asp:ButtonColumn CommandName="Edit" Text="Edit">
                            <ItemStyle Font-Bold="True" Font-Italic="False" Font-Names="arial" Font-Overline="False"
                                Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
                        </asp:ButtonColumn>
                    </Columns>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="arial" Font-Size="Small"
                        ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataGrid><asp:Label ID="lblErr2" runat="server" Font-Names="Arial" Font-Size="Small"
                    ForeColor="Red" Text="No Questions Added" Width="176px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="right" colspan="3" dir="ltr" style="font-weight: bold; font-size: small;
                font-family: Arial">
                <asp:Button ID="btnAdd" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Small"
                    Height="32px" Text="ADD NEW QUESTION" Width="168px" /></td>
        </tr>
    </table>
</asp:Content>

