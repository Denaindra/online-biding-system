<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayItem.aspx.cs" Inherits="EauctioningSystem.PayItem" %>


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
                     <asp:Literal ID="date" runat="server"></asp:Literal></li>
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
					<li><a href="index.aspx" data-hover="Home">Home</a></li>
				 </ul>
				 <script type="text/javascript" src="js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>
<div class="about">
  <div class="container">
      <div class="register">
     
		  	  <form id="login" runat="server"> 
				 <div class="register-top-grid">
					<h3>CREDITE INFORMATION</h3>
					 <div>
						<span>Card Number<label>*</label></span>
						<asp:TextBox ID="CardNumber"  runat="server" />
                         <asp:RequiredFieldValidator ID="RequiredField1" runat="server" ErrorMessage="Required **" ControlToValidate="CardNumber"/>
					 </div>
					 <div>
						<span>CVV<label>*</label></span>
						<asp:TextBox ID="cvv"  runat="server" />
                       <asp:RequiredFieldValidator ID="RequiredField2" runat="server" ErrorMessage="Required **" ControlToValidate="cvv"/>
					 </div>
					 <div>
						 <span>cARD OWNER<label>*</label></span>
						 <asp:TextBox ID="Email_address"  runat="server" />
                      <asp:RequiredFieldValidator ID="RequiredField3" runat="server" ErrorMessage="Required **" ControlToValidate="Email_address"/>
					 </div>
                      <div>
						 <span>Expiration<label>*</label></span>
						 <asp:TextBox ID="username"  runat="server" />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required **" ControlToValidate="username"/>
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">

					   </a>
					 </div>
                       <div class="register-but">
                           <asp:Literal ID="logerr" runat="server" />
					   <asp:Button ID="Creatbtn" runat="server" Text="Create Account" BackColor="Red" BorderColor="Red" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" OnClick="Creatbtn_Click" Width="145px" />
                           
                           <div class="clearfix"> </div>
				   </div>
                   </form>
				
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