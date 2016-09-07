<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdADDItem.aspx.cs" Inherits="EauctioningSystem.AdADDItem" %>

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
                     <li  style="font-size:30px";>WellCome to ADMIN PANEL</li>
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
      <div class="register">
     
		  	  <form id="login" runat="server"> 
				 <div class="register-top-grid">
					<h3>ITEM INFORMATION</h3>
					 <div>
						<span>Categery<label>*</label></span>
                         <asp:DropDownList ID="Categery" runat="server" Height="38px" Width="523px">
                            <asp:ListItem Text="Men" ></asp:ListItem>
                            <asp:ListItem Text="Women"></asp:ListItem>
                         </asp:DropDownList>
						
                         <asp:RequiredFieldValidator ID="RequiredField1" runat="server" ErrorMessage="Required **" ControlToValidate="Categery"/>
					 </div>
					 <div>
						<span>Item Name<label>*</label></span>
						<asp:TextBox ID="ItemName"  runat="server" />
                       <asp:RequiredFieldValidator ID="RequiredField2" runat="server" ErrorMessage="Required **" ControlToValidate="ItemName"/>
					 </div>
					 <div>
						 <span>Start Price<label>*</label></span>
						 <asp:TextBox ID="StartPrice"  runat="server" />    
                         <asp:DropDownList ID="quntity" runat="server" Height="38px" Width="523px">
                            <asp:ListItem Text="1" ></asp:ListItem>
                            <asp:ListItem Text="2"></asp:ListItem>
                             <asp:ListItem Text="3" ></asp:ListItem>
                            <asp:ListItem Text="4"></asp:ListItem>
                             <asp:ListItem Text="5" ></asp:ListItem>
                            <asp:ListItem Text="6"></asp:ListItem>
                             <asp:ListItem Text="7" ></asp:ListItem>
                            <asp:ListItem Text="8"></asp:ListItem>
                         </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="RequiredField3" runat="server" ErrorMessage="Required **" ControlToValidate="StartPrice"/>
					 </div>
                      <div>
						 <span>End Date<label>*</label></span>
						 <asp:TextBox ID="EndDate"  runat="server" TextMode="Date" Width="528px" />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required **" ControlToValidate="EndDate"/>
					 </div>
                     <div>
						 <span>Sample Image<label>*</label></span>
                         <asp:FileUpload ID="FileUpload1"  runat="server" BackColor="White"  />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required **" ControlToValidate="FileUpload1"/>
					 </div>
                     	 <div>
						 <span>PRODUCT DESCRIPTION<label>*</label></span>
						 <asp:TextBox ID="productDiscription"  runat="server" TextMode="MultiLine" Width="527px" Height="100px" />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required **" ControlToValidate="productDiscription"/>
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
					   </a>
					 </div>
                    <asp:Label ID="errro" runat="server" Text=""></asp:Label>
                       <div class="register-but">
					   <asp:Button ID="addbtn" runat="server" Text="ADD TO STOCK" BackColor="Red" BorderColor="Red" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" OnClick="addbtn_Click" Width="145px" />
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