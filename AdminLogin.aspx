<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminLogin.aspx.vb" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Admin Log In</title>
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
            <div class="clr"></div>
    <div align="center">
        <table id="Table11" align="center" border="0" cellpadding="0"
            cellspacing="0" dir="ltr" style="width: 392px; height: 72px; border-right: #75c4e2 thin ridge; border-top: #75c4e2 thin ridge; border-left: #75c4e2 thin ridge; border-bottom: #75c4e2 thin ridge;">
            <tr>
                <td align="center" dir="ltr" style="width: 81px; height: 25px">
                </td>
                <td align="center" dir="ltr" style="width: 169px; height: 25px">
                </td>
                <td align="center" dir="ltr" style="width: 329px; height: 25px">
                </td>
                <td align="center" dir="ltr" style="width: 139px; height: 25px">
                </td>
            </tr>
            <tr>
                <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 81px;
                    color: #69bde1; font-family: Arial">
                </td>
                <td align="center" dir="ltr" style="font-weight: bold; font-size: medium; width: 169px;
                    color: #69bde1; font-family: Arial">
                    User ID:</td>
                <td align="left" dir="ltr" style="width: 329px">
                    <asp:TextBox ID="txtUser" runat="server" Width="128px"></asp:TextBox></td>
                <td align="left" dir="ltr" style="width: 139px">
                </td>
            </tr>
            <tr>
                <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 81px;
                    color: #69bde1; font-family: Arial; height: 10px">
                </td>
                <td align="center" dir="ltr" style="font-weight: bold; font-size: medium; width: 169px;
                    color: #69bde1; font-family: Arial; height: 10px">
                </td>
                <td align="left" dir="ltr" style="width: 329px; height: 10px">
                </td>
                <td align="left" dir="ltr" style="width: 139px; height: 10px">
                </td>
            </tr>
            <tr>
                <td align="center" dir="ltr" style="font-weight: bold; font-size: small; width: 81px;
                    color: #69bde1; font-family: Arial">
                </td>
                <td align="center" dir="ltr" style="font-weight: bold; font-size: medium; width: 169px;
                    color: #69bde1; font-family: Arial">
                    Password:</td>
                <td align="left" dir="ltr" style="width: 329px; height: 24px">
                    <asp:TextBox ID="txtPW" runat="server" TextMode="Password" Width="128px"></asp:TextBox></td>
                <td align="left" dir="ltr" style="width: 139px; height: 24px">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; width: 81px; height: 10px">
                </td>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; width: 169px; height: 10px">
                </td>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; height: 10px; width: 329px;">
                </td>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; height: 10px">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; width: 81px; height: 10px">
                </td>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; width: 169px; height: 10px">
                </td>
                <td align="right" colspan="1" dir="ltr" style="font-weight: bold; height: 10px; width: 329px;">
                    <asp:Button ID="btnLogin" runat="server" BackColor="#69BDE1" Font-Bold="True" Font-Size="Medium"
                        ForeColor="White" Text="Login" Width="88px" /></td>
                <td align="right" colspan="1" dir="ltr" style="font-weight: bold; height: 10px">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; width: 81px; height: 20px">
                </td>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; width: 169px; height: 20px">
                </td>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; height: 20px; width: 329px;">
                </td>
                <td align="center" colspan="1" dir="ltr" style="font-weight: bold; height: 20px">
                </td>
            </tr>
        </table>
    
    </div>
        </div>
          <br />
          <br />
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
