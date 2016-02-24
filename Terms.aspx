<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="Terms.aspx.cs" Inherits="Static_Terms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="utf-8" />
		<title>Terms and Conditions</title> 
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
<div id="wrapper"> 			<h1 id="title">TERMS AND CONDITIONS</h1> 			<hr> 			<div id="primary"> 				
				<ul class="section_menu">
					<li><a href="#1_1"> Prices </a></li>
					<li><a href="#1_1"> Guarantee </a></li>
					<li><a href="#1_1"> Payments </a></li>

				

</ul>
				<dl class="faq">
				  <dt id="1_1">Prices </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>Prices Are Quoted Including Indian Value Added Tax, Currently 13.5%. For 
                            Orders Being Shipped To Addresses Outside The European Union, Please E-Mail Us 
                            To Have These VAT Charges Automatically Deducted At Checkout. Non-EU Customers 
                            May Have To Pay Local Taxes Within Their Own Countries When The Parcel Arrives. 
                            Please Contact Your Own Postal Service Or Customs Office For Further Information 
                            On Local Customs Charges And Policies.</span><o:p></o:p></p>
                                 </dd>
				  				    
				  <dt id="1_2">Guarantee </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>We Try Our Best To Ensure That Our Customers Are Delighted With Every 
                            Purchase. Therefore Each Piece Of Max Jewellery Comes With A 30-Day Guarantee. 
                            If For Any Reason You Are Unhappy With Your Purchase, You Can Return It To Us, 
                            In Its Original Condition, Within 30 Days. Unfortunately, Due To Health &amp; Safety 
                            Regulations We Are Not Able To Exchange Earrings.</span><o:p></o:p></p>
                                 </dd>
                                  <dt id="1_3">Payments </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>Our On-Line Credit Card Transactions Are Processed Through The 
                            Highly-Respected Secure Payment Service Paypal. Alternatively, You May Fax Or 
                            Phone Us With Your Credit Card Details On +44 01259 751873 Or Mail Your Cheque 
                            Or Postal Order To: Max Jewellery, Orders, Tillicoultry, Clackmannanshire, FK13 
                            6EA, Hong Kong.</span><o:p></o:p></p>
                                 </dd>
				





</dl>
				
				
		</div>
    </div>
</asp:Content>

