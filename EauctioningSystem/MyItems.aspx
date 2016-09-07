<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyItems.aspx.cs" Inherits="EauctioningSystem.MyItems" %>

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
    <form id="login" runat="server" >
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
                    <li class="active"><a href="login.aspx" data-hover="Sign In">Sign In</a></li>
                    <li><a href="register.aspx" data-hover="Wish List">*New Customer</a></li>
					<li><a href="contact.aspx" data-hover="Contact Us">Contact Us</a></li>
                    <li><a href="about.aspx" data-hover="About Us">About Us</a></li>
				 </ul>
				 <script type="text/javascript" src="js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>

<div class="about">
  <div class="container">
         <div class="register">
			   <div class="col-md-6 login-left">
			  	
			  <div style="height:60px">	
                   <h3>Redy to Buy</h3></br>	
              <asp:DataList ID="bededitems" runat="server" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="3">
              <ItemTemplate>
              <asp:Literal Text="ItemID       :" runat="server"/><asp:Label ID="ItemID" runat="server" Font-Bold="true" Text='<%# Eval("ItemID") %>' /><br />
              <asp:Literal Text="Categery     :" runat="server"/><asp:Label ID="Categery" runat="server" Font-Bold="true" Text='<%# Eval("Categery") %>' /><br />
              <asp:Literal Text="ItemName     :" runat="server"/><asp:Label ID="ItemName" runat="server" Font-Bold="true" Text='<%# Eval("ItemName") %>' /><br />
              <asp:Literal Text="Start parice :" runat="server"/><asp:Label ID="StartPrice" runat="server" Font-Bold="true" Text='<%# Eval("StartPrice") %>' /><br />
              <asp:Literal Text="Bidedprice   :" runat="server"/><asp:Label ID="Bidedprice" runat="server" Font-Bold="true" Text='<%# Eval("Bidedprice") %>' /><br />
              <asp:Literal Text="EndDate      :" runat="server"/><asp:Label ID="EndDate" runat="server" Font-Bold="true" Text='<%# Eval("EndDate") %>' /><br />
              <asp:Literal Text="UserType     :" runat="server"/><asp:Label ID="UserType" runat="server" Font-Bold="true" Text='<%# Eval("customer") %>'/><br /> 
              <asp:LinkButton ID="getItemID" OnClick="getItemID_Click" CommandArgument='<%# Eval("ItemID") %>'  runat="server" ><br />
              <div class="btn btn-primary btn-normal btn-inline " target="_self" title="Get It">Pay now</div>
              </asp:LinkButton>
              </ItemTemplate>
              </asp:DataList> 
			  </div>
               <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
             	<h3>My BID HISTORY</h3><br/>	
                <asp:GridView ID="biditems" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                              <AlternatingRowStyle BackColor="White" />
                              <FooterStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                              <SortedAscendingCellStyle BackColor="#FDF5AC" />
                              <SortedAscendingHeaderStyle BackColor="#4D0000" />
                              <SortedDescendingCellStyle BackColor="#FCF6C0" />
                              <SortedDescendingHeaderStyle BackColor="#820000" />
              </asp:GridView>
         
                         <br /><br />
                <h3>MY payments</h3><br/>	
                <asp:GridView ID="Payments" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                              <AlternatingRowStyle BackColor="White" />
                              <FooterStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                              <SortedAscendingCellStyle BackColor="#FDF5AC" />
                              <SortedAscendingHeaderStyle BackColor="#4D0000" />
                              <SortedDescendingCellStyle BackColor="#FCF6C0" />
                              <SortedDescendingHeaderStyle BackColor="#820000" />
              </asp:GridView>
          

              </div>
			  <div class="col-md-6 login-right">
			  </div>	
			  <div class="clearfix"> </div>
		</div>
      <br /><br />

<%--      <asp:GridView ID="GridView1" runat="server"></asp:GridView>--%>

	</div>
</div>

        <br /><br /><br /><br /><br /><br /><br /><br /><br />
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