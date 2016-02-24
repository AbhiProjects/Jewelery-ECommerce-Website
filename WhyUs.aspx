<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="WhyUs.aspx.cs" Inherits="Static_Why_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="utf-8" />
		<title>Why Shop With Us </title> 
		<link rel="stylesheet" href="style.css" /> 
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script src="js/jquery.scrollTo-1.4.2-min.js"></script>
		<script src="js/jquery.localscroll-1.2.7-min.js"></script>
		<!-- Resources Used 
		--> 
		<script>
		    $(document).ready(function () {

		        var sidebar = $('#sidebar_content');
		        var top = sidebar.offset().top - parseFloat(sidebar.css('marginTop'));

		        $(window).scroll(function (event) {
		            var ypos = $(this).scrollTop();
		            if (ypos >= top) {
		                sidebar.addClass('fixed');
		            }
		            else {
		                sidebar.removeClass('fixed');
		            }
		        });

		        $.localScroll();

		    });
			
		</script>
    <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="wrapper"> 			<h1 id="title">Why Shop With Us</h1> 			<hr> 			<div id="primary"> 				<h3 id="1">Why Us</h3>
				<ul class="section_menu">
					<li><a href="#1_1">Exceptional Value And Great Prices </a></li>
					<li><a href="#1_2"> Excellent And Knowledgeable Staff </a></li>
					<li><a href="#1_3"> Great Reputation</a></li>
					<li><a href="#1_4"> Custom Made Jewellery </a></li>
					
				</ul>
				<dl class="faq">
				  <dt id="1_1"> Exceptional Value And Great Prices </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>Max Offers The Most Competitive Pricing Day In And Day Out. Our Prices Do 
                            Not Go Up And Down For The Sake Of &quot;Sales&quot;. No Matter When You Shop At Max’s, 
                            You Can Be Assured Of Receiving The Very Best Value For Your Money.</span><o:p></o:p></p>
</dd>
				  <dt id="1_2"> Excellent And Knowledgeable Staff </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>All Of Our Sales People Have Years Of Experience In The Jewelry Business 
                            And Extensive Training. Moreover, Ralpy And Sherry Max Are Bridal Jewelry 
                            Experts.</span></p>
</dd>
				  <dt id="1_3"> Great Reputation</dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>We’ve Been Serving Customers In The Jewelry Business For Over 10 Years. 
                            Max Is A Family-Owned And Operated Business That Was Built With The Philosophy 
                            To Minimize The Impact On The Earth. We Do This By Recycling Gold, Silver And 
                            Platinum. The Watches We Sell Never Require A Battery Change, They Are Powered 
                            By Light. We Recycle All Watch Batteries That We Replace. The Tradition Of 
                            Quality And Excellence That Max’s Was Founded On Is As Vibrant And Apparent 
                            Today.</span><o:p></o:p></p>
 </dd>
				  <dt id="1_4"> Custom Made Jewellery</dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>We Stock All Different Types Of Jewelry, Even Antique Jewelry And Estate 
                            Jewelry. If You Don’t Find It In Our Store, We Can Almost Always Make It For You 
                            Or Help You Find What Your Looking For. Our Custom Jewelers In Castro Valley Are 
                            Masters, Highly Skilled At Crafting Custom Jewelry For Our Customers, And Max’s 
                            Has One Of The Best Jewelry Designers In Castro Valley.</span><o:p></o:p></p>
                    </dd>
				  
				</dl>
				
		</div>
    </div>
</asp:Content>

