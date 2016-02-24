<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Static_About_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<meta charset="utf-8" />
		title>About US</title> 
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
	<div id="wrapper">
    <title>About Us</title>
			<h1 id="title">About Us</h1>
			<hr>
			<div id="primary">
				<h3 id="1">Contents</h3>
				<ul class="section_menu">
					<li><a href="#1_1">About The Company</a></li>
					<li><a href="#1_2">Bespoke</a></li>
					<li><a href="#1_3">About The Designer.</a></li>
	</br></br>								  <dt id="1_1"><b>About The Company</b></dt>
				    <dd>
                        <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;line-height:
normal">
                            <span>We Are A Young Innovative Company Dedicated To Original Design And 
                            Creativity. We Design And Manufacture Our Own Range Of Contemporary Jewelry 
                            Which Can Be Purchased From Exclusive Stockiest And Private Events. Our 
                            &#39;Designer&#39; Collection Features Handmade Jewelry Using Fine Gemstones, Fresh 
                            Water Pearls And Precious Metals. We Work Closely With Talented Craftsmen To 
                            Bring Our Designs To Life. Please Click On Designer Collection To View This 
                            Range. Our &#39;Global&#39; Collection Features Pieces Sourced From The Around The 
                            Globe. We Often Input Into The Design Of These Pieces, Others Are Handpicked 
                            From Artisans Around The World And Reflect Our Belief In Originality And High 
                            Quality Craftsmanship. Please Click On Global Collection To View This Range. Our 
                            &#39;Collaborations&#39; Include Working With A Range Of Designers, Stylists And 
                            Photographers On Various Projects. Please Click On Collaborations To View Our 
                            Work. </span>
                        </p>
			</br></br>	  <dt id="1_2"><b>Bespoke</b></dt>
				    <dd>
                        <p class="MsoNormal">
                            <span>In Addition To Our Collections, We Undertake Bespoke Design To Create 
                            Unique Designer Jewelry To Suit Your Style And Individuality. These Include 
                            Jewelry For Weddings (Bridal And Bridesmaids Jewelry), Engagement And Eternity 
                            Rings, And One-Off Pieces For Other Special Occasions. </span>
                        </p>
                        </br>			  
                        
                        <dt id="1_3"><b>About The Designer</b></dt>
				    <dd>
                <p class="MsoNormal">
                        Max Cartan, The Founder And Creative Director Of Max Jewelry Launched His 
                            Jewelry Line In 2007 And Has Since Attracted A Loyal Following With Many Repeat 
                            Customers Who Enjoy His Fashion Forward, Stylish Pieces. Max’s Designs Are 
                            Strongly Influenced By His Background In Sculpture As Well As His Travels 
                            Throughout Asia, Europe, Latin America And The Middle East. His Designs Blend 
                            Contemporary Urban Chic Inspired By His Time Living In Some Of The World’s 
                            Hippest Cities Including London, Moscow And Hong Kong, With More Exotic Flavors 
                            From The Middle East Where His Origins Lie. The Inspiration Comes From The 
                            Worlds Of Art, Architecture, History And Fashion. Max Studied Jewelry Design In 
                            Thailand And Currently Operates Out Of Hong Kong, London And The United Arab 
                            Emirates. Through His Time Living In Asia, His Travels And Unrivalled Contacts, 
                            Max Manages To Apply Her Unique Background To Sourcing And Designing Unique 
                            Contemporary Jewelry</span></li>
				  	</p>
                    		</div>
			
</asp:Content>

