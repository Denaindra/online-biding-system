<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMain.aspx.cs" Inherits="EauctioningSystem.AddminMAin" %>


<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>E - Auctioning System For Golden Flash Plc .</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashionpress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 252px;
        }
        .auto-style4 {
            width: 252px;
            height: 22px;
        }
        .auto-style5 {
            width: 235px;
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            width: 235px;
        }
        .auto-style8 {
            width: 206px;
        }
        .auto-style9 {
            width: 206px;
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="header">
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.aspx"><img src="images/logo.png" alt=""/></a>
			</div>
			<ul class="shopping_grid">
			     <li  style="font-size:30px";>
                     <asp:Literal ID="date" runat="server"></asp:Literal></li>
			      <div class="clearfix"> </div>
			</ul>
		    <div class="clearfix"> </div>
		</div>
	</div>
	<div class="h_menu4"><!-- start h_menu4 -->
		<div class="container">
				<a class="toggleMenu" href="#">Menu</a>
			     	<ul class="nav">
                	<li class="active"><a href="AdminMain.aspx" data-hover="Home">Admin Main</a></li>
				 </ul>
				 <script type="text/javascript" src="js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>

<div class="about">
  <div class="container">
	  <table class="auto-style1">
          <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style7">
                  <asp:ImageButton ID="adduser" runat="server" Height="100px" Width="100px" ImageUrl="~/images/icons/user.png" OnClick="add" />
              </td>
              <td class="auto-style8">
                  <asp:ImageButton ID="removeuser" runat="server" Height="100px" Width="100px" ImageUrl="~/images/icons/user (1).png" OnClick="remove" />
              </td>
              <td>
                  <asp:ImageButton ID="manageitems" runat="server" Height="83px" ImageUrl="~/images/icons/settings.png" Width="97px" OnClick="settings" />
              </td>
          </tr>
          <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style7">
                  <asp:ImageButton ID="adminadditem" runat="server" Height="100px" Width="100px" ImageUrl="~/images/icons/file.png" OnClick="additem" />
              </td>
              <td class="auto-style8">
                  <asp:ImageButton ID="adminlogin" runat="server" Height="100px" Width="100px" ImageUrl="~/images/icons/login.png" OnClick="login" />
              </td>
              <td>
                  <asp:ImageButton ID="vieitemdetails" runat="server" Height="92px" ImageUrl="~/images/icons/view.png" Width="97px" OnClick="view" />
              </td>
          </tr>
          <tr>
              <td class="auto-style4"></td>
              <td class="auto-style5"></td>
              <td class="auto-style9"></td>
              <td class="auto-style6"></td>
          </tr>
          <tr>
              <td class="auto-style2">&nbsp;</td>
              <td class="auto-style7">&nbsp;</td>
              <td class="auto-style8">&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
      </table>
	
	</div>
</div>
<div class="footer_bg">
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 f_grid1">
			<h3>About</h3>
			<a href="#"><img src="images/logo.png" alt=""/></a>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
		</div>
		<div class="col-md-3 f_grid1 f_grid2">
			<h3>Follow Us</h3>
			<ul class="social">
				<li><a href=""> <i class="fb"> </i><p class="m_3">Facebook</p><div class="clearfix"> </div></a></li>
			    <li><a href=""><i class="tw"> </i><p class="m_3">Twittter</p><div class="clearfix"> </div></a></li>
				<li><a href=""><i class="google"> </i><p class="m_3">Google</p><div class="clearfix"> </div></a></li>
				<li><a href=""><i class="instagram"> </i><p class="m_3">Instagram</p><div class="clearfix"> </div></a></li>
			</ul>
		</div>
		<div class="col-md-6 f_grid3">
			<h3>Contact Info</h3>
			<ul class="list">
				<li><p>Phone : 1.800.254.5487</p></li>
				<li><p>Fax : 1.800.254.2548</p></li>
				<li><p>Email : <a href="mailto:info(at)fashionpress.com"> info(at)fashionpress.com</a></p></li>
			</ul>
			<ul class="list1">
				<li><p>Aliquam augue a bibendum ipsum diam, semper porttitor libero elit egestas gravida, ut quam, nunc taciti</p></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li class="active"><a href="login.aspx">Privacy Policy</a></li> .
					<li><a href="checkout.aspx">Terms of Service</a></li> .
					<li><a href="checkout.aspx">Creative Rights Policy</a></li> .
					<li><a href="login.aspx">Contact Us</a></li> .
					<li><a href="register.aspx">Support & FAQ</a></li>
				</ul>
			</div>
			<div class="copy">
			    <p>&copy;  2016 Final Year Project by <a href="http://google.com" target="_blank">Ovin Wanigasekara</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
</div>
    </form>
</body>
</html>		

