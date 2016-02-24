<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="EMI.aspx.cs" Inherits="Static_EMI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="utf-8" />
		<title>EMI Policy </title>
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
<div id="wrapper"> 			<h1 id="title"> EMI Policy</h1> 			<hr> 			<div id="primary"> 				<h3 id="1">EMI (Credit Card) Policies </h3>
				<ul class="section_menu">
					<li><a href="#1_1">EMI HDFC-( 6 MONTHS CREDIT CARD ONLY) </a></li>
					<li><a href="#1_2"> Conflict Of Terms </a></li>
					<li><a href="#1_3"> Governing Law </a></li>
					<li><a href="#1_4"> Disclaimer </a></li>
					
				</ul>
				<dl class="faq">
				  <dt id="1_1"> EMI HDFC-( 6 MONTHS CREDIT CARD ONLY)  </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>Customers Can Make Their Purchase Payment With Credit Cards. Easy And 
                            Convenient EMI Options Are Also Available For HDFC Credit Card Holders. (6 
                            Months EMI Facility Is Applicable Only For Purchases On Or Above Rs. 15,000).We 
                            Accept Visa And Master Credit Cards. EMI Is Applicable On The Purchase Of All 
                            Diamond Jewellery Categories Worth Rs. 15,000/- And Above. But Not On Gold Coin 
                            &amp; Bar, Solitaires, Gift Vouchers, Gift Cards. The EMI Will Be For 6 Months. The 
                            Amount Of EMI Will Be Calculated On The Purchase Value. It Will Be Divided 
                            Accordingly For 6 Months And It&#39;ll Be Deducted From Your Credit Cards Account 
                            You Use. &nbsp;<o:p></o:p></span></p>
</dd>
				  <dt id="1_2"> Conflict Of Terms </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>If There Is A Conflict Or Contradiction Between The Provisions Of These 
                            Website Terms And Conditions And Respective Brand S Relevant Terms And 
                            Conditions, Policies Or Notices In India, The Respective Brand S Terms And 
                            Conditions, Policies Or Notices In India Which Relate Specifically To A 
                            Particular Section Or Module Of The Website Shall Prevail.</span><o:p></o:p></p>
</dd>
				  <dt id="1_3"> Governing Law</dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>This Agreement Shall Be Deemed To Be Made Under, And In All Respects Shall 
                            Be Interpreted, Construed And Governed By And In Accordance With, The Courts Of 
                            Mumbai, The Law Of The State Of Maharashtra, India, Without Regard To Any 
                            Conflict Of Law Principles That Would Cause The Laws Of Any Other Jurisdiction 
                            To Apply.</span><o:p></o:p></p>
                        <p class="MsoNormal">
                            <span>Each Party Hereby Irrevocably Submits To The Jurisdiction Of The Courts Of 
                            Mumbai, State Of Maharashtra And Country Of India And Hereby Waive, And Agree 
                            Not To Assert, As A Defense In Any Such Action, Suit Or Proceeding For The 
                            Interpretation Or Enforcement Hereof, That It Is Not Subject Thereto Or That 
                            Such Action, Suit Or Proceeding May Not Be Brought Or Is Not Maintainable In 
                            Said Courts Or That The Venue Thereof May Not Be Appropriate Or That These Terms 
                            And Conditions Or Any Such Document May Not Be Enforced In Or By Such Courts, 
                            And The Parties Hereto Irrevocably Agree That All Claims With Respect To Such 
                            Action Or Proceeding Shall Be Heard And Determined In Mumbai High Court. The 
                            Parties Hereby Consent To And Grant Any Such Court Jurisdiction Over The Person 
                            Of Such Parties And Over The Such Subject Matter And Agree That Mailing Of 
                            Process Or Other Papers In Connection With Any Such Action Or Proceeding In Such 
                            Other Manner As May Be Permitted By Law Shall Be Valid And Sufficient Service 
                            Thereof.</span><o:p></o:p></p>
 </dd>
				  <dt id="1_4"> Disclaimer</dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>The Details Of The Products Or Product Specifications (For Instance 
                            Weight, Color, Handwork Details, Size, Etc.) Quoted With The Product Displays 
                            Are Only Fairly Approximate Values. While Every Endeavor Has Been Made To 
                            Accurately Reproduce Colors, There May Be Minor Variations In Color Of The 
                            Actual Product Because Of The Nature Of Product, Weather At The Time Of 
                            Differences In Display Output Due To Lighting And Digital Photography And Color 
                            Settings And Capabilities Of Monitors. A Customer Must Place An Order Keeping In 
                            Mind This Minor Variation In Color As Seen On A Computer Screen Against The 
                            Actual Color Of The Product Received. Max gifts Believes That All Online Buyers 
                            Are Aware That Colors Seen On A Monitor Will Be Slightly Different As Compared 
                            To The Actual Product Or Accessories Ordered. We Wish To Clarify And Ascertain 
                            That Every Customer Who Orders Any Jewelry From Maxjewellers.Com Is Aware Of 
                            This Genuine Problem.</span><o:p></o:p></p>
                    </dd>
				  
				</dl>
				
		</div>
    </div>
</asp:Content>

