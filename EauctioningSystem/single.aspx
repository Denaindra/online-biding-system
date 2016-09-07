<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="single.aspx.cs" Inherits="EauctioningSystem.single" %>

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
<script type="text/javascript" src="js/hover_pack.js"></script>
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
            </script>	
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
			     <li  style="font-size:30px";>
                     <asp:Literal ID="date" runat="server"></asp:Literal></li>
			      <%--<div class="clearfix"> </div>--%>
			</ul>
		    <div class="clearfix"> </div>
		</div>
	</div>
	<div class="h_menu4"><!-- start h_menu4 -->
		<div class="container">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
                	<li class="active"><a href="index.aspx" data-hover="Home">Home</a></li>
                    <li><a href="login.aspx" data-hover="Wish List">Sign In</a></li>
                    <li><a href="register.aspx" data-hover="Wish List">*New Customer</a></li>
					<li><a href="contact.aspx" data-hover="Contact Us">Contact Us</a></li>
                    <li><a href="about.aspx" data-hover="About Us">About Us</a></li>
				 </ul>
				 <script type="text/javascript" src="js/nav.js"></script>
	      </div><!-- end h_menu4 -->
     </div>
</div>
<div class="column_center">
  <div class="container">
    <div class="clearfix"> </div>
  </div>
</div>
<div class="main">
  <div class="content_top">
  	<div class="container">
	   <div class="col-md-3 sidebar_box">
		    <div class="delivery">
				<img src="images/delivery.jpg" class="img-responsive" alt=""/>
				<h3>Delivering</h3>
				<h4>World Wide</h4>
			</div>
			<div class="clients">
				<h3>Our Happy Clients</h3>
				<h4>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae.</h4>
			   <ul class="user">
			   	<i class="user_icon"></i>
			   	<li class="user_desc"><a href="#"><p>John Doe, Company Info</p></a></li>
			   	<div class="clearfix"> </div>
			   </ul>
			</div>
	   </div> 
	   <div class="col-md-9 single_right">
	   	<div class="single_top">
	       <div class="single_grid">
				<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="optionallink.aspx">
                                   <asp:Image ID="Image1" CssClass="etalage_thumb_image"  runat="server" />
								   <asp:Image ID="Image2" CssClass="etalage_source_image"  runat="server" />
                                </a>
							</li>
						</ul>
				</div> 
				  <div class="desc1 span_3_of_2">
				  	<h1><asp:Label ID="itenamelabel" runat="server" Text="Item Name"/></h1>
				       Availability:<span class="color">In stock</span>
			    <div class="price_single">
				  <h2 class="quick">Start Price:(Rs.)</h2>
				  <span class="color"><asp:Label ID="price" runat="server" Text="$120.00"/></span>
				</div>
                      <div class="price_single">
				  <h2 class="quick">Quentity:</h2>
				  <span class="color"><asp:Label ID="quentity" runat="server" Text="$120.00"/></span>
				</div>
                <div class="price_single">
				  <h2 class="quick">End Date:</h2>
				  <span class="actual"><asp:Label ID="Enddate" runat="server" Text="2001/12/3"/></span>
				</div>
                <div class="price_single">
				  <h2 class="quick">On going price...(Rs.)</h2>
				  <span class="actual"><asp:Label ID="onprice" runat="server" Text="230.00"/></span>
				</div>
			     <div class="wish-list">
                        Your BID: <asp:TextBox ID="newBID" runat="server" Width="73px" TextMode="Number"/>	
                     <asp:Label ID="erroinfo" runat="server" />
				 </div>
                      <asp:Button ID="bid" runat="server" Text="BID NOW" BackColor="Red" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="37px" Width="110px" OnClick="bid_Click1" />
                  </div>
		    <div class="clearfix"> </div>
				</div>
          	    <div class="clearfix"></div>
          </div>
          <div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Product Description</span></li>
							 
							  <div class="clear"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<div class="facts">
									  <ul class="tab_list">
									  	<li>
                                       <asp:Literal ID="productDiscri" Text="Not Available" runat="server"/>
									  	</li>
                                      </ul>           
							        </div>
							     </div>	
						  </div>
				    </div>
			  </div>
		<h3 class="single_head">Related Products</h3>	
	    <div class="related_products">
	     <div class="col-md-4 top_grid1-box1 top_grid2-box2"><a href="single.aspx">
	     	<div class="grid_1">
	     	  <div class="b-link-stroke b-animate-go  thickbox">
		        <img src="images/p12.jpg" class="img-responsive" alt=""/> </div>
	     	  <div class="grid_2">
	     	  	<p>There are many variations of passages</p>
	     	  	<ul class="grid_2-bottom">
	     	  		<li class="grid_2-left"><p>Rs.99<small>.33</small></p></li>
	     	  		<li class="grid_2-right"><%--<a href="single.aspx" title="Get It" class="btn btn-primary btn-normal btn-inline " target="_self">Get It</a>--%></li>
	     	  		<div class="clearfix"> </div>
	     	  	</ul>
	     	  </div>
	     	</div>
	     </a></div>
	    <div class="col-md-4 top_grid1-box1"><a href="single.aspx">
	     	<div class="grid_1">
	     	  <div class="b-link-stroke b-animate-go  thickbox">
		        <img src="images/p13.jpg" class="img-responsive" alt=""/> </div>
	     	  <div class="grid_2">
	     	  	<p>There are many variations of passages</p>
	     	  	<ul class="grid_2-bottom">
	     	  		<li class="grid_2-left"><p>Rs.99<small>.33</small></p></li>
	     	  		<li class="grid_2-right"><%--<a href="single.aspx" title="Get It" class="btn btn-primary btn-normal btn-inline " target="_self">Get It</a>--%></li>
	     	  		<div class="clearfix"> </div>
	     	  	</ul>
	     	  </div>
	     	</div>
	     </a></div>
	     <div class="col-md-4 top_grid1-box1"><a href="single.aspx">
	     	<div class="grid_1">
	     	  <div class="b-link-stroke b-animate-go  thickbox">
		        <img src="images/p14.jpg" class="img-responsive" alt=""/> </div>
	     	  <div class="grid_2">
	     	  	<p>There are many variations of passages</p>
	     	  	<ul class="grid_2-bottom">
	     	  		<li class="grid_2-left"><p>Rs.99<small>.33</small></p></li>
	     	  		<li class="grid_2-right"><%--<a href="single.aspx" title="Get It" class="btn btn-primary btn-normal btn-inline " target="_self">Get It</a>--%></li>
	     	  		<div class="clearfix"> </div>
	     	  	</ul>
	     	  </div>
	     	</div>
	     </a></div>
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