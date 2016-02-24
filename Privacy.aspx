<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="Privacy.aspx.cs" Inherits="Static_Privacy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

		<meta charset="utf-8" />
		Privacy and Disclaimer Policy </title> 
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
<div id="wrapper"> 			<h1 id="title">Privacy and Disclaimer Policy</h1> 			<hr> 			<div id="primary"> 				<h3 id="1">Privacy Policy</h3>
				<dl class="faq">
				    <dd> 
                        <p class="MsoNormal">
                            <span style="font-size:10.5pt;line-height:107%;font-family:
&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#000305">As With Most Sites, We Collect General 
                            Information On Visits To Our Pages. This Information Is Used Only For 
                            Statistical Purposes. None Of This Information Is Linked Back To You As An 
                            Individual.</span><o:p></o:p></p>
                        <p class="MsoNormal">
                            <span style="font-size:10.5pt;line-height:107%;font-family:
&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#000305">We Will Only Collect Personally Identifiable 
                            Information To The Extent Deemed Reasonably Necessary To Serve Our Legitimate 
                            Business Purposes. Max Will Take Every Reasonable Precaution To Ensure That All 
                            Of Your Personal Information Remains Confidential. Your E-Mail Address And Other 
                            Information Will Not Be Sold To Or Shared With Any Outside Group.</span><o:p></o:p></p>
                        <p class="MsoNormal">
                            <span style="font-size:10.5pt;line-height:107%;font-family:
&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#000305">If You Have Any Questions Or Concerns, Please 
                            Feel Free To Contact Max Jewellers By Calling 905-881-5229.<o:p></o:p></span></p>
                    </dd>
				  				    
				  
				</dl>
				<h3 id="2">Disclaimer Policy</h3>
				<dl class="faq">
				    <dd> 
                        <p class="MsoNormal">
                            <span style="font-size:10.5pt;line-height:107%;font-family:
&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#000305">By Using This Web Site And/Or Posting 
                            Material, You Agree To Indemnify Max Jewellers, Its Officers, Directors, 
                            Employees, Agents, Licensors, Distributors And Affiliates For Any And All 
                            Claims, Damages, Losses And Causes Of Action. The Materials On This Site Are 
                            Transmitted And Distributed To The Best And Most Comprehensive Of Our Ability 
                            And Without Express Or Implied Warranties Of Any Kind, Including, But Not 
                            Limited To, Warranties Of Title, Implied Warranties Of Merchantability, Or 
                            Fitness For A Particular Purpose. Max Jewellers Makes No Warranty As To The 
                            Quality, Accuracy, Completeness And Validity Of Any Material On This Web Site 
                            And Does Not Warrant That The Functions Contained On The Web Site Will Be 
                            Uninterrupted Or Error-Free, Or That Defects Will Be Corrected. Where Applicable 
                            Law Does Not Allow The Exclusion Of Implied Warranties, The Foregoing Exclusions 
                            May Not Apply To You.<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span style="font-size:10.5pt;line-height:107%;font-family:
&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#000305">The Material Provided On This Web Site Is For 
                            Entertainment And Promotional Purposes Only. Neither Max Jewellers Nor Its 
                            Officers, Directors, Employees, Agent, Licensors, Distributors And Affiliates 
                            Are Responsible Or Liable For Any Loss Damage (Including, But Not Limited To, 
                            Actual, Consequential, Or Punitive), Liability, Claim, Or Other Injury Or Cause 
                            Related To Or Resulting From Any Information Posted On The Max Jewellers 
                            Website.<o:p></o:p></span></p>
</dd>
				  
				</dl>
				
		</div>
    </div>
</asp:Content>

