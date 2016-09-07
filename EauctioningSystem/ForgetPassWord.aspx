<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassWord.aspx.cs" Inherits="EauctioningSystem.ForgetPassWord" %>

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
</head>
<body>
<div class="header">
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.aspx"><img src="images/logo.png" alt=""/></a>
			</div>
         
			<ul class="shopping_grid">
			     <li  style="font-size:30px";>
                     <asp:Literal ID="obj" runat="server"></asp:Literal></li>
			   <%--   <a href="login.aspx"><li>Sign In</li></a>
			      <a href="#"><li><span class="m_1">Shopping Bag</span>&nbsp;&nbsp;(0) &nbsp;<img src="images/bag.png" alt=""/></li></a>--%>
			      <div class="clearfix"> </div>
			</ul>
		    <div class="clearfix"> </div>
		</div>
	</div>
	<div class="h_menu4"><!-- start h_menu4 -->
		<div class="container">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
                	<li class="active"><a href="index.aspx" data-hover="Home">Home</a></li>
                    <li><a href="login.aspx" data-hover="Wish List"><asp:Literal ID="logincon" Text="Sign In" runat="server"></asp:Literal></a></li>
                    <li><a href="register.aspx" data-hover="Wish List">*New Customer</a></li>
					<li><a href="contact.aspx" data-hover="Contact Us">Contact Us</a></li>
                    <li><a href="about.aspx" data-hover="About Us">About Us</a></li>
				 </ul>
				 <script type="text/javascript" src="js/nav.js"></script>
	      </div>
     </div>
</div>

<div class="about">
  <div class="container">
         <div class="register">
			   <div class="col-md-6 login-right">
			  	<h3>Change Password</h3>
				<form id="login" runat="server" >
				  <div>
					<span>USER NAME<label>*</label></span><asp:RequiredFieldValidator ID="Validator1" runat="server" ControlToValidate="username" ErrorMessage="Require**"/>
					<asp:TextBox ID="username" runat="server"/>
				  </div>
				  <div>
					<span>New Password<label>*</label></span><asp:RequiredFieldValidator ID="Validator2" runat="server" ControlToValidate="Password" ErrorMessage="Require**"/>
				   <asp:TextBox ID="Password" TextMode="Password"  runat="server" BackColor="#CCFFFF" BorderColor="#66FFFF" BorderStyle="None" Height="37px" Width="516px"/>
				  </div>
                  <div>
					<span>Re-Password<label>*</label></span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RePassword" ErrorMessage="Require**"/>
				   <asp:TextBox ID="RePassword" TextMode="Password"  runat="server" BackColor="#CCFFFF" BorderColor="#6600FF" BorderStyle="None" Height="32px" Width="516px"/>
				  </div>
			      <asp:Button ID="changePAssword" runat="server" Text="Update" OnClick="update_Click" />
			    </form>
			   </div>	
			   <div class="clearfix"> </div>
		</div>
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
</body>
</html>		

