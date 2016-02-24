<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
<title>Max Jewellery</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="Images/Banner/style.css" />
<link type="text/css" rel="stylesheet" media="all" href="sites/all/themes/max/stylesfbad.css" />
<script type="text/javascript" src="/sites/all/modules/colorbox/styles/default/colorbox_default_stylefbad.js?z"></script>
<script type="text/javascript" src="Images/Banner/jquery.minfbad.js?z"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".msg_body").hide();
        $(".msg_head").click(function () {
            $(this).next(".msg_body").slideToggle(600);
            $(".msg_body").hide();
        });
    });
</script>
<script type="text/javascript">

    jQuery.extend(Drupal.settings, { "basePath": "/", "colorbox": { "transition": "elastic", "speed": 350, "opacity": "0.85", "slideshow": false, "slideshowAuto": false, "slideshowSpeed": 2500, "slideshowStart": "", "slideshowStop": "", "current": "{current} of {total}", "previous": "« Prev", "next": "Next »", "close": "Close", "overlayClose": true, "maxWidth": "100%", "maxHeight": "100%" }, "cron": { "basePath": "/poormanscron", "runNext": 1372087483 }, "thickbox": { "close": "Close", "next": "Next \x3e", "prev": "\x3c Prev", "esc_key": "or Esc Key", "next_close": "Next / Close on last", "image_count": "Image !current of !total"} });
</script>
</head>

<body>
<form id="f1" runat="server">

<div class="header_warpper" id=ulHeader runat="server">


</div>


<div class="banner_warpper"><div id="warpper">
<div class="banner">
<!-- Start WOWSlider.com BODY section -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul runat="server" id="ulBanner">
</ul></div>
<div class="ws_bullets"><div>
</div></div>
</div>
	<script type="text/javascript" src="Images/Banner/wowslider.js"></script>
	<script type="text/javascript" src="Images/Banner/script.js"></script>
	<!-- End WOWSlider.com BODY section -->
</div>
</div></div>
<div id="warpper"><div class="container1_warpper"><div class="container1">
  <div class="container1design"><img src="Images/Static/design_up.jpg"></div> <div id="homepage">

  <asp:DataList runat="server" RepeatColumns="4" RepeatDirection="Horizontal" ID="dtlBrand">
  <ItemTemplate>
        <article class="con1one_fifth"><img src="<%#Eval("Location_Dot")%>" alt="">
            </article>
  </ItemTemplate>
  
  </asp:DataList>
    
  </div><div class="container1design"><img src="Images/Static/design_down.jpg" border="0"></div></div><div class="newarrival_bestseller"><div class="newarrival"><h2 class="h2">New Arrivals</h2>
  <section class="intro">
  <asp:DataList runat="server" RepeatColumns="4" RepeatDirection="Horizontal" ID="dtlNewArrival">
  <ItemTemplate>
        <article class="newbest_fifth"><a href="Description.aspx?ID=<%#Eval("Pro_Id")%>"><img src="<%#Eval("location_dot")%>" alt="" height=140 width=140></a>
        <font color="white"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Name")%></h2>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ₹ <%#Eval("Amount")%></p></font>
            </article>
  </ItemTemplate>
  
  </asp:DataList>

            </section>
            </div>
            <div class="bestseller"><h2 class="h2">Best Sellers</h2>
  <section class="intro">
  <asp:DataList runat="server" RepeatColumns="4" RepeatDirection="Horizontal" ID="dtlBestSeller">
  <ItemTemplate>
        <article class="newbest_fifth"><a href="BestSellerDescription.aspx?ID=<%#Eval("Product_Id")%>"><img src="<%#Eval("Location_Dot")%>" alt="" height=140 width=140></a>
        <font color="white"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Name")%></h2>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ₹ <%#Eval("Price")%></p></font>
            </article>
  </ItemTemplate>
  
  </asp:DataList>

            </section></div></div>
</div></div>
<div class="container2_warpper">
<div id="warpper"><div class="productcontent"><img style="padding:10px 0 0 15px" src="Images/Static/featuredproducts_img.jpg"><div class="productmaincontent">
<section class="productintro">
<asp:DataList runat="server" RepeatColumns="4" RepeatDirection="Horizontal" ID="dtlFeaturedProducts" CellPadding=5 CellSpacing=3>
  <ItemTemplate>
        <article class="product_fifth first">
        <a href="FeaturedDescription.aspx?ID=<%#Eval("Product_Id")%>"><img src="<%#Eval("Location_Dot")%>" alt="" height=140 width=140></a>
            <h1><%#Eval("Name")%></h1>
            <p> ₹ <%#Eval("Price")%></p>
        <footer><img style="border:none" src="Images/Static/pro_shoppingcart.png" border="0"></footer>
            </article>
  </ItemTemplate>
  
  </asp:DataList>

          </section>        
            </div></div>
          <div  class="sidebar" runat="server" id=ulSideBar>

          
          </div>
      <div class="footerupimg"><img src="Images/Static/footerup_img.jpg" border="0"></div>
          
          </div></div>
<!--<div style="position:relative; width:100%; border-bottom:2px solid #244962; padding-top:10px"></div>-->

<div class="clear" style=" background-image:url(Images/Static/body.gif); border-bottom:2px solid #244962"></div>
<div class="footer_warpper"><div id="warpper"><div id="footer">
    <!-- ################################################################################################ -->
    <div class="pad" id="ulfooter" runat="server">
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
  </div></div></div>
  </form>
</body>
</html>
