<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="Care.aspx.cs" Inherits="Static_Care0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<meta charset="utf-8" />
		<title>Jewellery Care</title> 
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

		<div id="wrapper"> 			<h1 id="title">Jewellery Care</h1> 			<hr> 			<div id="primary"> 				<h3 id="1">&nbsp;What 
            To Do To Protect Your Jewels</h3>
				<ul class="section_menu">
					<li><a href="#1_1"> First Point </a></li>
					<li><a href="#1_1"> Second Point</a></li>
					<li><a href="#1_1"> Third Point </a></li>

				

</ul>
				<dl class="faq">
				  <dt id="1_1">First Point </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>It Is Natural For All Metals To Oxidize Or Tarnish With Exposure To Air 
                            And Other Chemicals (I.E. Perfume, Hairspray Etc). To Ensure That Jewelry Stays 
                            Bright For Longer Please Keep It In An Air Tight Container Or Bag.</span><o:p></o:p></p>
                        <p>&nbsp;</p>
                                 </dd>
				  				    
				  <dt id="1_2">Second Point </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>If Your Jewelry Has Tarnished, You Can Restore Its Natural Shine By 
                            Polishing With A Polishing Cloth. DO NOT Use Solvents, Harsh Chemicals Or 
                            Sonicators. I Would Recommend Connoisseurs Polishing Cloths For Silver Or Gold.</span><o:p></o:p></p>
                        <p>&nbsp;</p>
                                 </dd>
                                  <dt id="1_3">Third Point </dt>
				    <dd> 
                        <p class="MsoNormal">
                            <span>I Would Also Recommend Putting Your Jewelry On Last When Getting Ready. 
                            Direct Exposure To Hair-Styling Products And Perfume Will Often Damage The Metal 
                            And Gemstones.</span><o:p></o:p></p>
                        <p>&nbsp;</p>
                                 </dd>
				





</dl>
				
				
		</div>
        </div>
</asp:Content>

