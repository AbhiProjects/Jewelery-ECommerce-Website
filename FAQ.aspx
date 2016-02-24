<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="Static_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="utf-8" />
		<title>FAQ’s </title>
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
<div id="wrapper"> 			<h1 id="title"> FAQ ‘s</h1> 			<hr> 			<div id="primary"> 				<h3 id="1">General Questions </h3>
				<ul class="section_menu">
					<li><a href="#1_1"> Who Can Buy From Max Jewellers ?</a></li>
					<li><a href="#1_2">How Do I Best View Your Site ? </a></li>
					<li><a href="#1_3">How Do I Contact You Regarding My Order ? </a></li>
					<li><a href="#1_4">How Long Does It Take For My Order To Reach? </a></li>
					<li><a href="#1_5">How Do I Know That My Gift Has Been Shipped? </a></li>
					<li><a href="#1_6">Are My Personal Details Secure?</a></li>
					<li><a href="#1_7">How Safe Is Online Transactions On Your Web Site?</a></li>
				</ul>
				<dl class="faq">
				  <dt id="1_1">Who Can Buy From Max Jewellers?</dt>
				    <dd>To Be Able To Shop At Max Jewellers, You Should Be Above 18 Years Of Age And Legally Allowed, By The Laws Governing Your Land, To Shop In India. Currently, We Deliver To Select Cities In India.</dd>
				  <dt id="1_2">How Do I Best View Your Site?</dt>
				    <dd>Our Site Is Compatible For All Windows And Mac Operating Systems And Can Be Viewed Using The Latest Stable Versions Of Any Of The Following Browsers.
• Internet Explorer 7.0 & Above
• Mozilla Firefox 15.0 & Above
• Google Chrome 21.0 & Above
• Safari 5.0 & Above
</dd>
				  <dt id="1_3">How Do I Contact You Regarding My Order?</dt>
				    <dd>You Can Check The Status Of Your Order On Our Website By Checking The Track Order Or Alternatively, You Can Contact Us By Mailing Us At Ecomsupport@Titan.Co.In. We Will Respond To Your Query Within Two Business Days. You Can Also Call Us On Our All Day Toll-Free Helpdesk Number 1800 108 1100 Between 10 AM And 7 PM IST.</dd>
				  <dt id="1_4">How Long Does It Take For My Order To Reach?</dt>
				    <dd>The Time Taken For Delivery Of Each Order Varies And Will Be Indicated At The Time Of Placing The Order. We Make Our Best Efforts To Deliver Each Item In Your Order Within 5-7 Business/ Working Days Of Your Placing The Order. Please Refer To Our Shipping Policy For More Details.</dd>
				  <dt id="1_5">How Do I Know That My Gift Has Been Shipped?</dt>
				    <dd>You Will Receive A Notification SMS And Email As Soon As Your Gift Is Shipped. Also, You Can Track A Gift Exactly Like You Track A Normal Order By Checking The Order Status Under The Track Order. You Can Include A Personalized Message With Your Gift While Placing The Order.</dd>
				  <dt id="1_6">Are My Personal Details Secure?</dt>
				    <dd>We Understand That Privacy Is Important To You, And We Ensure Your Personal Details Are Absolutely Secure On Max Jewellers. We Will Never Release Your Personal Details To Any Outside Company For Mailing Or Marketing Purposes.Â Payments On The Website Are Processed By A Third Party, Which Adheres To The Privacy Policy That Is Described Here. We Have A Non-Disclosure Agreement With This Third Party, And They Are Certified By All The Major Card Issuers To Hold Details Securely. For More Details Refer To Our Privacy Policy.</dd>
				  <dt id="1_7">How Safe Is Online Transactions On Your Web Site?</dt>
				    <dd>We At Max Jewellers  Are Concerned About The Safety And Security Of Our Customers. Accordingly, We Have Put A Number Of Technological Protections In Place To Ensure That Our Transaction Process Is Extremely Safe And That Our Customer's Information Is Secure. For Enhanced Security Maxjewellers.Com   Does Not Accept Any Financial Information On Its Servers. All Such Information Entered By You Is Directly Received Through Our Payment Gateway And Are Then Transmitted To Your Banks Servers. All This Is Done Through Industry Standard Encryption Protocol Known As Secure Socket Layer (SSL). Majority Of Online Transactions Are Completed Without Incident. However, Please Keep In Mind That Customer Protection Is A Two-Way Street. When Buying On Any Online Venue, Caution Must Always Be Practised. Following Are Some Guidelines That You Should Follow To Ensure Safe And Secure Online Shopping Experience.</dd>
				</dl>
				<h3 id="2">Question On Payments</h3>
				<ul class="section_menu">
					<li><a href="#2_1">What Are The Available Payment Options?</a></li>
					<li><a href="#2_2">How Does The Online Payment System Work? </a></li>
					<li><a href="#2_3">Is My Credit Card Secure When I Use It On Your Web Site? </a></li>
					<li><a href="#2_4">What Are The Reasons My Credit Card Might Be Refused? </a></li>
					<li><a href="#2_5">How Do You Make A Refund?</a></li>
					<li><a href="#2_6">Which Debit / Credit Cards Do You Accept And What Are the supported banks under internet banking option?</a></li>
					<li><a href="#2_7">What Is The Guarantee For Your Products?</a></li>
				</ul>
				<dl class="faq">
				  <dt id="2_1">What Are The Available Payment Options?</dt>
				    <dd>You Can Make Your Payment Using Credit Cards, Debit Cards Or Net Banking. International Credit Cards Are Also Accepted. Please Refer To The Payment Options Page For A Complete List Of Accepted Payment Methods. Please Note That Payments On Maxjewellers.Com Will Be Accepted Only In INR. In Case Of International Credit Cards, The Transaction Amount Will Be Converted To INR Before The Payment Is Accepted. Currency Conversion Charges May Apply Based On Your Credit Card Policy.</dd>
				  <dt id="2_2">How Does The Online Payment System Work?</dt>
				    <dd>The Debit / Credit Card Information You Enter On The Payment Gateway Page Will Be Directly Authorized By Your Bank Or Debit / Credit Card Company. Once We Receive Their Authorization, Your Order Will Be Finalized. You Will Know Right Away If Your Credit Card Was Accepted.</dd>
				  <dt id="2_3">Is My Credit Card Secure When I Use It On Your Web Site?</dt>
				    <dd>We At Max Jewellers Are Concerned About The Safety And Security Of Our Customers. Accordingly, We Have Put A Number Of Technological Protections In Place To Ensure That Our Transaction Process Is Extremely Safe And That Our Customer's Information Is Secure. For Enhanced Security Maxjewellers.Com Does Not Accept Any Financial Information On Its Servers. All Such Information Entered By You Is Directly Received Through Our Payment Gateway And Are Then Transmitted To Your Banks Servers. All This Is Done Through Industry Standard Encryption Protocol Known As Secure Socket Layer (SSL). Majority Of Online Transactions Are Completed Without Incident. However, Please Keep In Mind That Customer Protection Is A Two-Way Street. When Buying On Any Online Venue, Caution Must Always Be Practiced.</dd>
				  <dt id="2_4">What Are The Reasons My Credit Card Might Be Refused?</dt>
				    <dd>Debit And Credit Card Companies Refuse Authorization Of Debit / Credit Cards For A Specific Number Of Reasons, Including:
• The Debit/Credit Card Number Entered Is Not A Valid Number (Often The Result Of A Typo)
• The Debit/Credit Card Does Not Have Enough Credit Balance Left To Pay For The Order
• The Billing Address Entered In The Order Form Does Not Exactly Match The Address In Your Debit/Credit Card Statement (Also Sometimes The Result Of A Typographical Error)
• The Expiration Date Of The Debit/Credit Card Is Not Entered Correctly (Also Sometimes The Result Of A Typographical Error)
Please Contact Your Debit/ Credit Card Issuing Bank For Any Clarifications.</dd>
				  <dt id="2_5">How Do You Make A Refund?</dt>
				    <dd>When You Opt For A Refund Of Your Payment Or If For Any Reason Other Reason You Are Eligible For A Refund, We Refund The Amount In The Manner In Which You Have Made The Payment Or Vide A Secured Crossed Cheque.</dd>
				  <dt id="2_6">Which Debit / Credit Cards Do You Accept And What Are The Supported Banks Under Internet Banking Option?</dt>
				    <dd>We Accept All Major Credit And Debit Cards Including International Credit Cards; We Accept Net Banking Facility Provided By All Major Indian Banks. For A Complete List Of Payment Options Please Refer Payment Options.</dd>
				  <dt id="2_7">What Is The Guarantee For Your Products?</dt>
				    <dd>All Our Products Come With A Certificate Of Authenticity Backed By The Hallmark Guarantee. All Other Products From Us Come With Guarantee Cards Which Is Product Specific.</dd>
				</dl>
				<h3 id="3">Questions On Shipping </h3>
				<ul class="section_menu">
					<li><a href="#3_1">What Happens If I Am Not At Home, When You Deliver?</a></li>
					<li><a href="#3_2">I Am The Recipient Of The Product(s) Ordered But I Am Out Of Town. Will The Delivery Of The Product(s) Be Made To My Family Members?</a></li>
					<li><a href="#3_3">How Soon Will An Order Be Delivered?</a></li>
					<li><a href="#3_4">What Should I Do If The Product I Ordered Has Reached Me In A Damaged/Defective Condition?</a></li>
					<li><a href="#3_5">Who Will Pay Charges For The Return Shipment?</a></li>
					<li><a href="#3_6">Can I Place An Order For Delivery To Multiple Addresses/ Locations?</a></li>
					<li><a href="#3_7">How Do I Identify Myself When Accepting A Delivery?</a></li>
				</ul>
				<dl class="faq">
				  <dt id="3_1">What Happens If I Am Not At Home, When You Deliver?</dt>
				    <dd>Our Courier Partners Will Leave A Message And Attempt To Deliver Again At A Later Time. We Urge You To Plan And Coordinate The Purchase Such That The Recipient Is Available To Accept The Shipment At The Provided Delivery Address.</dd>
				  <dt id="3_2">I Am The Recipient Of The Product(s) Ordered But I Am Out Of Town. Will The Delivery Of The Product(s) Be Made To My Family Members?</dt>
				    <dd>In Order To Ensure That Orders Do Not Go Missing In Transit, We Direct Our Delivery Partners To Deliver Only To The Person In Whose Name The Order Is Shipped. We Urge You To Plan And Coordinate The Purchase Such That The Recipient Is Available To Accept The Shipment At The Provided Delivery Address.</dd>
				  <dt id="3_3">How Soon Will An Order Be Delivered?</dt>
				    <dd>The Time Taken For Delivery Of Each Order May Vary And Will Be Indicated At The Time Of Placing The Order. We Make Our Best Efforts To Deliver Each Item In Your Order Within 5-7 Business / Working Days Of Your Placing The Order. Please Refer To Our Shipping Policy For More Details.</dd>
				  <dt id="3_4">What Should I Do If The Product I Ordered Has Reached Me In A Damaged/Defective Condition?</dt>
				    <dd>In The Unlikely Event That Any Merchandise You Have Ordered From Us Is Not Received In Good Condition, Is Damaged Or Defective, Or If The Merchandise Delivered Is Different From What You Had Ordered, You May Return The Merchandise Unused, And In The Same Condition As You Received It, In Its Original Packaging Along With Original Tags, For A Refund. Please Call Us On Our Toll-Free Helpdesk Number 1800-108-1100 For International Customers: +91 40 66870400 (Between IST 10:00hrs To 19:00hrs).</dd>
				  <dt id="3_5">Who Will Pay Charges For The Return Shipment?</dt>
				    <dd>If You Are Not Satisfied With Your Purchase For Any Reason, And Wish To Return The Item As Per Our Returns & Exchange Policy Through Courier Pickup Arranged By Us, You Do Not Have To Pay Any Courier Charges For The Return Shipment.</dd>
				  <dt id="3_6">Can I Place An Order For Delivery To Multiple Addresses / Locations?</dt>
				    <dd>No, Currently We Do Not Have This Facility. You Can Get Different Products Delivered To Place Multiple Addresses / Locations By Placing Multiple Orders.</dd>
				  <dt id="3_7">How Do I Identify Myself When Accepting A Delivery?</dt>
				    <dd>The Recipient Of The Product/S Needs To Keep A Photo Copy Of Any Of The Following Approved Photo Id Proofs Handy For Receiving The Delivery.
• Pan Card
• Driving License
• Passport
• Voters Card
• Postal Identification Card (Aadhar)
To Ensure That Your Order Arrives Safely, The Courier Will Require A Signature From The Recipient On Delivery.
</dd>
				</dl> 			</div>
    </div>
</asp:Content>

