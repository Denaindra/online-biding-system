<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EauctioningSystem.index" %>

<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>E - Auctioning System For Golden Flash Plc .</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashionpress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>
<script type="text/javascript" src="js/hover_pack.js"></script>
</head>
<body>
    <form runat="server">
<div class="header">
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.aspx"><img src="images/logo.png" alt=""/></a>
			</div>
			<ul class="shopping_grid">
			     <li  style="font-size:30px";><asp:Literal ID="time" runat="server"/></li>
			      <%--<div class="clearfix"> </div>--%>
			</ul>
		    <div class="clearfix"> </div>
		</div>
	</div>
	<div class="h_menu4">
		<div class="container">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
                	<li class="active"><a href="index.aspx" data-hover="Home">Home</a></li>
                    <li><a href="login.aspx" data-hover="Wish List"><asp:Literal ID="logincon" Text="Sign In" runat="server"></asp:Literal></a></li>
                    <li><a href="register.aspx" data-hover="Wish List">*New Customer</a></li>
                    <li><a href="MyItems.aspx" data-hover="Wish List">MY Items</a></li>
					<li><a href="contact.aspx" data-hover="Contact Us">Contact Us</a></li>
                    <li><a href="about.aspx" data-hover="About Us">About Us</a></li>
				 </ul>
				 <script type="text/javascript" src="js/nav.js"></script>
	      </div>
     </div>
</div>
<div class="slider">
	  <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li><img src="images/banner1.jpg" class="img-responsive" alt=""/>
	        <div class="banner_desc">
				<h1>We Provide Worlds top fashion for less fashionpress.</h1>
				<h2>FashionPress the name of the of hi class fashion Web FreePsd.</h2>
			</div>
	        </li>
	        <li><img src="images/banner2.jpg" class="img-responsive" alt=""/>
	         <div class="banner_desc">
				<h1>Duis autem vel eum iriure dolor in hendrerit.</h1>
				<h2>Claritas est etiam processus dynamicus, qui sequitur .</h2>
			 </div>
	        </li>
	        <li><img src="images/banner3.jpg" class="img-responsive" alt=""/>
	          <div class="banner_desc">
				<h1>Ut wisi enim ad minim veniam, quis nostrud.</h1>
				<h2>Mirum est notare quam littera gothica, quam nunc putamus.</h2>
			  </div>
	        </li>
	      </ul>
	  </div>
</div>

<div class="column_center">
  <div class="container">
	<div class="search">
	</div>
    <div class="clearfix"> </div>
  </div>
</div>
<div class="main">
  <div class="content_top">
  	<div class="container">
	   <div class="col-md-3 sidebar_box">
	   	 <div class="sidebar">
			<div class="menu_box">
		    <h3 class="menu_head">Products Menu</h3>
			  <ul class="menu">
				<asp:LinkButton ID="MenLink" OnClick="MenLink_Click" runat="server" ><img class="arrow-img" src="images/f_menu.png" alt=""/>Men</asp:LinkButton><br/><br/>
				<asp:LinkButton ID="WomenLink" OnClick="WomenLink_Click" runat="server"><img class="arrow-img" src="images/f_menu.png" alt=""/>Women</asp:LinkButton><br/><br/>
				<a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>Fashion 2015</a><br/><br/>
				<a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>Kids</a><br/><br/>
				<a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>Jeans</a><br/><br/>
				<a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>Tshirt</a><br/><br/>
				<a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>Top Fashion</a><br/><br/> 
				<a href="#"><img class="arrow-img" src="images/f_menu.png" alt=""/>Summer Collection</a><br/><br/> 
				<asp:LinkButton ID="currentbudding" OnClick="currentbudding_Click" runat="server" ><img class="arrow-img" src="images/f_menu.png" alt=""/>Currently Biding...</asp:LinkButton><br/><br/>
             </ul>
		   </div>
       </div>
			<div class="twitter">
			   <h3>Latest From Twitter</h3>
			   <ul class="twt1">
			   	  <i class="twt"> </i>
			   	  <li class="twt1_desc"><span class="m_1">@Contrary</span> to popular belief, Lorem Ipsum is<span class="m_1"> not simply</span></li>
			   	  <div class="clearfix"> </div>
			   </ul>
			   <ul class="twt1">
			   	  <i class="twt"> </i>
			   	  <li class="twt1_desc"><span class="m_1">There are many</span> variations of passages of Lorem Ipsum available, but the majority <span class="m_1">have suffered</span></li>
			   	  <div class="clearfix"> </div>
			   </ul>
			   <ul class="twt1">
			   	  <i class="twt"> </i>
			   	  <li class="twt1_desc"><span class="m_1">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has <span class="m_1">been the industry's standard dummy text ever</span></li>
			   	  <div class="clearfix"> </div>
			   </ul>
			</div>
		
	   </div> 
	   <div class="col-md-9 content_right">
	   	<div class="top_grid1">
	     <div class="col-md-4 box_2">
	     	<div class="grid_1">
		        <img src="images/p1.jpg" class="img-responsive" alt=""/>
	     	
	     	</div>
	     </div>
	     <div class="col-md-8 box_1">
	       <div class="grid_1">
		        <img src="images/p2.jpg" class="img-responsive" alt=""/>
	     	</div>
            
	     </div>
               <div class="clearfix"> </div>
        <h4 class="head"><span class="m_2"><asp:Label ID="Label1" runat="server" Text="POPULAR WOMEN'S " /></span><asp:Label ID="Label2" runat="server" Text="PRODUCTS" /></h4>
	    </div> 
	    <div class="top_grid2">
            <asp:DataList ID="womenlist" runat="server" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="3">
                <ItemTemplate>
                    <div id="g" style="height:490px ; width:270px;">
                    <img src="<%#Eval("ImagePath") %>" height="260" width="250" />
                    <p><asp:Label ID="Lanugae" runat="server" Font-Bold="true" Text='<%# Eval("ItemName") %>' /></p>
                   <asp:Literal ID="Literal3" Text="ItemI D:" runat="server"/><asp:Literal ID="Literal4" Text='<%# Eval("ItemID") %>' runat="server"/><br />
                        <asp:Literal ID="contiti" Text="Number of Quentity:" runat="server"/><asp:Literal ID="Literal1" Text='<%# Eval("Quentity") %>' runat="server"/><br />
                        <asp:Literal ID="ENDdate" Text="Item Close date:" runat="server"/><asp:Literal ID="Literal6" Text='<%# Eval("EndDate") %>' runat="server"/>
                        <asp:Literal ID="Literal2" Text="________________________________________" runat="server"/>
                       <asp:LinkButton ID="getItemID" OnClick="getItemID_Click" CommandArgument='<%# Eval("ItemID") %>'  runat="server" >
                       <div class="btn btn-primary btn-normal btn-inline " target="_self" title="Get It">Bid It...<asp:Label ID="Label6" runat="server" Font-Bold="true" Text='<%# Eval("Available") %>' /></div>
                       </asp:LinkButton>
                    </div>
                </ItemTemplate>
           </asp:DataList>
	     <div class="clearfix"> </div>
	    </div> 
       <h4 class="head"><span class="m_2"><asp:Label ID="Label3" runat="server" Text="POPULAR MEN'S " /></span><asp:Label ID="Label4" runat="server" Text="PRODUCTS NOW" /></h4>
	    <div class="top_grid2">   
            <asp:DataList ID="mensList" runat="server" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="3">
                <ItemTemplate>
                       <div id="g" style="height:490px ; width:270px;">
                       <img src="<%#Eval("ImagePath") %>" height="260" width="250" />
                       <p><asp:Label ID="Label5" runat="server" Font-Bold="true" Text='<%# Eval("ItemName") %>' /></p>
                      <asp:Literal ID="Literal3" Text="ItemI D:" runat="server"/><asp:Literal ID="Literal4" Text='<%# Eval("ItemID") %>' runat="server"/><br/>
                       <asp:Literal ID="contiti" Text="Number of Quentity:" runat="server"/><asp:Literal ID="Literal1" Text='<%# Eval("Quentity") %>' runat="server"/><br />
                      <asp:Literal ID="ENDdate" Text="Item Close date:" runat="server"/><asp:Literal ID="Literal6" Text='<%# Eval("EndDate") %>' runat="server"/>
                           <asp:Literal ID="Literal2" Text="________________________________________" runat="server"/>
                       <asp:LinkButton ID="getItemID2" OnClick="getItemID2_Click" CommandArgument='<%# Eval("ItemID") %>'  runat="server" >
                       <div class="btn btn-primary btn-normal btn-inline " target="_self" title="Get It">Bid It... <asp:Label ID="Label6" runat="server" Font-Bold="true" Text='<%# Eval("Available") %>' /></div>
                       </asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:DataList>
	     <div class="clearfix"> </div>
	    </div> 
	    </div> 
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
					<li><a href="wwww.google.com">Terms of Service</a></li> .
					<li><a href="contact.aspx">Contact Us</a></li> .
                    <li><a href="ForgetPassWord.aspx">Update PassWord</a></li> .
					<li><a href="RemoveUser.aspx">Remove Account</a></li>
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