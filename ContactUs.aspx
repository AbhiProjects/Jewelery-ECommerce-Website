<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Static_Contact_as" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="utf-8" />
		<title>Contact Us </title>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="wrapper"> 			<h1 id="title"> Contact Us</h1> 			<hr> 			<div id="primary"> 				<h3 id="1">Our Locations </h3>
				<ul class="section_menu">
					<li><a href="#1_1">Registered Office </a></li>
					<li><a href="#1_2">Corporate  Office </a></li>
					
				</ul>
				<dl class="faq">
				  <dt id="1_1"> Registered Office</dt>
				    <dd> <p>MaxIndustries Limited</p>
<p> 3, Sipcot Industrial Complex, Hosur – 635126</p>
       <p>Telephone : +91-(0)4344-664199</p>
       <p>Email :corpcomm@max.co.in</p></dd>
				  <dt id="1_2">Corporate Office </dt>
				    <dd>
<p>Max Industries Limited,</p>
<p>Tower A, Golden Enclave, Airport Road,</p>
<p>Bangalore – 560017</p>
<p>Karnataka, India</p>
<p>Telephone : +91-(0)80-6660 9000</p>
 </dd>
				  
				</dl>
				<h3 id="2">International Office </h3>
				<dl class="faq">
				    <dd> <p>Max Industries Limited</p>
<p>Unit No.11 & 12, 20/F, Metro Loft No. 38</p>
<p>Kwai Hei Street, Hong Kong </p></dd>
				  
				</dl>
    </div>
    </div>
</asp:Content>

