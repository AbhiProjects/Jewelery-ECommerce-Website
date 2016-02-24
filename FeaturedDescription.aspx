<%@ Page Title="" Language="C#" MasterPageFile="~/DescriptionMaster.master" AutoEventWireup="true" CodeFile="FeaturedDescription.aspx.cs" Inherits="Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--<meta charset="utf-8" />
<title>Max Jewelley</title>--%>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/drescription.css" type="text/css"/>

<link rel="stylesheet" href="themes/max/generated/all0c59.css" type="text/css">
<script src="themes/max/generated/all0c59.js" type="text/javascript"></script>




<script type="text/javascript">
    $.noConflict();
    jQuery(document).ready(function ($) {
        // Code that uses jQuery's $ can follow here.
    });
    // Code that uses other library's $ can follow here.
</script>
<style type="text/css">
.XXXX {
	-moz-box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	-webkit-box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	box-shadow:inset 0px 1px 0px 0px #bbdaf7;
	background-color:#79bbff;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #84bbf3;
	display:inline-block;
	color:#ffffff;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #528ecc;
}.XXXX:hover {
	background-color:#378de5;
}.XXXX:active {
	position:relative;
	top:1px;
}

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container2_warpper"><div id="warpper"><div class="productdrescriptioncontent"><div class="productdrescriptionmaincontent">
        <div class="pdup">
        <div id="designContent">
			<div id="details-wrapper">
				<div id="details-top-wrapper">
        
        <div id="details-top">
	<div id="details-top-inner">
		<div id="details-top-sub-inner">
			<div id="details-top-sub-sub-inner" class="container_24">
				<div id="details-top-left" class="grid_12">
					<div id="slider-main">
		<div id="wrap" style="top: 0px; z-index: 9999; position: relative;" runat="server">
			<div id="ulImageZoom" runat="server">
   <%-- <img id="img1" src="Products/db3.jpg" height='400' width='420' data-zoom-image="Products/db3.jpg"/>--%>
    </div>
		</div>
        <!--slider-main end-->
	</div>

                
   </div>

                <div id="details-top-right" class="grid_12">
  			     	<div id="details-top-right-inner">
	                    <div id="ulDescHeader" runat="server">
	                       <%-- <div class="product-attribute">
                            <span class="buttons_bottom_block" id='add_to_cart'> <asp:Button  id="btnSubmit" type='submit' class='exclusive form-submit' text='Place An Order' name='Submit' runat="server" onclick="btnSubmit_Click" Visible="true" />   
                            <span class="txt-call-now"> or <span>Call 080-6768 4939</span></span>
                            </span>
                            <span class="Delivery"> (Expected delivery date: <span class="date" id="expected_delievery_date">6-7 Business Days</span>)
                            </span>
                            </div>
                            </form>--%>
	
	                    </div> 
                         <div class="product-attribute">
                            <span class="buttons_bottom_block" id='add_to_cart'> <asp:Button  id="btnSubmit" type='submit' class='XXXX' text='Place An Order' name='Submit' runat="server" onclick="btnSubmit_Click" Visible="true" />   
                            <span class="txt-call-now"> or <span>Call 080-6768 4939</span></span>
                            </span>
                            <span class="Delivery"> (Expected delivery date: <span class="date" id="expected_delievery_date">6-7 Business Days</span>)
                            </span>
                            </div>
                            

                        </div>
	            </div> 
                </div> 
                </div> 
                </div> 
                </div> 
                </div> 
                </div> 
                </div> 
                </div>

                <div class="pddown">
                <div class="pddownleft" id="ulDescDownLeft" runat="server">
                
                </div> 
	            <div id="ulDescDownRight" class="pddownright" id="ulDescDownRight" >
                <div class="youmaylikealsotext"><h2>You May Like Also &raquo;</h2></div>

                <asp:DataList runat="server" RepeatColumns="3" RepeatDirection="Horizontal" ID="dtlFirstRow" CellPadding=2 CellSpacing=2>
  <ItemTemplate>
        
        <article class="product_fifth first">
        
        <a href="FeaturedDescription.aspx?ID=<%#Eval("Product_Id")%>"><img src="<%#Eval("Location_Dot")%>" alt="" height=140 width=140></a>
            <h1>&nbsp;&nbsp;&nbsp;<%#Eval("Name")%></h1>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;₹ <%#Eval("Price")%></p>
            
        </article>
        &nbsp;&nbsp;&nbsp;
  </ItemTemplate>
  
  </asp:DataList>

                </div>

                        

                </div>
	
		
		
	
	
    
    
    </div>
    </div>
    </div> 
    </div> 
    <div class="clear"></div>
    
</asp:Content>
