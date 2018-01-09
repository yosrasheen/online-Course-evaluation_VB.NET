<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MsgFrm.aspx.vb" Inherits="Ms" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Message</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="clr"></div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar" align=center style="width: 960px" >
        <div class="article">
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderStyle="Groove" BorderWidth="2px"
                Direction="LeftToRight" Font-Bold="True" Font-Names="Arial" ForeColor="Black"
                Height="136px" HorizontalAlign="Center" Style="z-index: 100; left: 244px; top: 195px"
                Width="736px" Font-Size="Small">
                <br />
                Welcome: &nbsp;<asp:Label ID="lblName" runat="server" ForeColor="Blue" Text="Label"
                    Width="272px"></asp:Label><br />
                <br />
                Your account has been successfully updated<br />
                <br />
                <asp:HyperLink ID="lnk" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="#0000C0">Press Here to Back</asp:HyperLink><br />
            </asp:Panel>
            &nbsp;</div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
      </div>
      <div class="col c2">
      </div>
      <div class="col c3">
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">© Copyright MyWebSite</p>
    </div>
  </div>
</div>
    </form>
</body>
</html>
