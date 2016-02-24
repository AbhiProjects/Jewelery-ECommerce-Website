<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ddd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
<style>
html, body, h1, form, fieldset, input {
 margin: 0;
 padding: 0;
 border: none;
 }

body { font-family: Helvetica, Arial, sans-serif; font-size: 12px; }

#registration {
    color: #fff;
    background: #2d2d2d;
    background: -webkit-gradient(
        linear,
        left bottom,
        left top,
        color-stop(0, rgb(60,60,60)),
        color-stop(0.74, rgb(43,43,43)),
        color-stop(1, rgb(60,60,60))
        );
     background: -moz-linear-gradient(
        center bottom,
        rgb(60,60,60) 0%,
        rgb(43,43,43) 74%,
        rgb(60,60,60) 100%
        );
     -moz-border-radius: 10px;
     -webkit-border-radius: 10px;
     border-radius: 10px;
     margin: 10px;
     width: 430px;
     height:400px;
     position :relative;
     left: 433px;
     
     }

 #registration a {
      color: #8c910b;
      text-shadow: 0px -1px 0px #000;
      }

#registration fieldset {
      padding: 20px;
      }
      
      input.text {
     -webkit-border-radius: 15px;
     -moz-border-radius: 15px;
     border-radius: 15px;
     border:solid 1px #444;
     font-size: 14px;
     width: 90%;
     padding: 7px 8px 7px 8px;
     background: #ddd;
     background: -moz-linear-gradient(
          center bottom,
          rgb(225,225,225) 0%,
          rgb(215,215,215) 54%,
          rgb(173,173,173) 100%
     );
     background: -webkit-gradient(
          linear,
          left bottom,
          left top,
          color-stop(0, rgb(225,225,225)),
          color-stop(0.54, rgb(215,215,215)),
          color-stop(1, rgb(173,173,173))
      );
      color:#333;
      text-shadow:0px 1px 0px #FFF;
      -moz-box-shadow: 0px 1px 0px #777;
      -webkit-box-shadow: 0px 1px 0px #777;
      box-shadow: 0px 1px 0px #777;
 }
 
 input#email {
   background-position: 4px 5px;
   background-position: 4px 5px, 0px 0px;
 }
input#password {
   background-position: 4px -20px;
   background-position: 4px -20px, 0px 0px;
 }
input#name {
   background-position: 4px -46px;
   background-position: 4px -46px, 0px 0px;
 }
input#tel {
   background-position: 4px -76px;
   background-position: 4px -76px, 0px 0px;
 }
 
 #registration h2 {
color: #fff;
text-shadow: 0px -1px 0px #000;
text-align: center;
padding: 18px;
margin: 0px;
font-weight: normal;
      font-size: 24px;
      font-family: Lucida Grande, Helvetica, Arial, sans-serif;
border-bottom: solid #181818 1px;
-moz-box-shadow: 0px 1px 0px #3a3a3a;
-webkit-box-shadow: 0px 1px 0px #3a3a3a;
box-shadow: 0px 1px 0px #3a3a3a;
      }
</style>

<style type="text/css">
.Hello {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) );
	background:-moz-linear-gradient( center top, #ededed 5%, #dfdfdf 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf');
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	color:#0a0a0a;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #ffffff;
}.Hello:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed) );
	background:-moz-linear-gradient( center top, #dfdfdf 5%, #ededed 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed');
	background-color:#dfdfdf;
}.Hello:active {
	position:relative;
	top:1px;
}

</style>

<link rel="stylesheet" href="css/style.css" type="text/css" />

</head>
<body>

<div class="header_warpper" id=ulHeader runat="server">


</div>

<br />
   <div id="registration">
 <h2>Change Password</h2>

 <form id="RegisterUserForm" action="" method="post" runat="server">
 <fieldset>
 <p>
 <label for="name">Old Password</label>
 <asp:TextBox id="name" name="name" type="text" class="text" TextMode="Password" runat="server"></asp:TextBox>
 <%--<input id="name" name="name" type="text" class="text" value="" />--%>
 </p>

 <p>
 <label for="tel">New Password</label>
 <asp:TextBox id="tel" name="tel" type="tel" class="text" TextMode="Password" runat="server"></asp:TextBox>
<%-- <input id="tel" name="tel" type="tel" class="text" value="" />--%>
 </p>

 <p>
 <label for="email">Re Confirm Password</label>
 <asp:TextBox id="email" name="email" type="email" class="text" TextMode="Password" runat="server"></asp:TextBox>
 <%--<input id="email" name="email" type="email" class="text" value="" />--%>
 </p>

 <p>
 <asp:Button id="registerNew" type="submit" Text="Submit" runat="server" 
         onclick="registerNew_Click" class="Hello" />
<%-- <button id="registerNew" type="submit">Change Password</button>--%>
 </p>
     <p>
     <asp:Label ID="Result" runat="server" Visible=false></asp:Label>
     <asp:CompareValidator ID="comparePassword" runat="server" 
        ControlToCompare="tel" ControlToValidate="email" 
        ErrorMessage="Passwords Do Not Match" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
    <asp:CompareValidator ID="compareNew" runat="server" ControlToCompare="name" 
        ControlToValidate="tel" ErrorMessage="Old And New Password Cannot Be Same" 
        Font-Bold="True" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
         </p>
 </fieldset>

 </form>

 </div>
 <br />


    <div style=" background-image:url(Images/Static/body.gif); border-bottom:2px solid #244962"></div>
<div class="footer_warpper"><div id="warpper"><div id="footer">
    <!-- ################################################################################################ -->
    <div class="pad" id="ulfooter" runat="server">
      <!-- ################################################################################################ -->

    </div>
    <!-- ################################################################################################ -->
  </div></div></div>
</body>
</html>
