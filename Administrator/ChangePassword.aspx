<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Administrator_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
body{
font-family:"Lucida Grande", "Lucida Sans Unicode", Verdana, Arial, Helvetica, sans-serif;
font-size:12px;
}
p, h1, form, button{border:0; margin:0; padding:0;}
.spacer{clear:both; height:1px;}
/* ----------- My Form ----------- */
.myform{
margin:0 auto;
width:400px;
padding:14px;
}

/* ----------- stylized ----------- */
#stylized{
border:solid 2px #b7ddf2;
background:#ebf4fb;
}
#stylized h1 {
font-size:14px;
font-weight:bold;
margin-bottom:8px;
}
#stylized p{
font-size:11px;
color:#666666;
margin-bottom:20px;
border-bottom:solid 1px #b7ddf2;
padding-bottom:10px;
}
#stylized label{
display:block;
font-weight:bold;
text-align:right;
width:140px;
float:left;
}
#stylized .small{
color:#666666;
display:block;
font-size:11px;
font-weight:normal;
text-align:right;
width:140px;
}
#stylized input{
float:left;
font-size:12px;
padding:4px 2px;
border:solid 1px #aacfe4;
width:200px;
margin:2px 0 20px 10px;
}
#stylized button{
clear:both;
margin-left:150px;
width:125px;
height:31px;
background:#666666 url(img/button.png) no-repeat;
text-align:center;
line-height:31px;
color:#FFFFFF;
font-size:11px;
font-weight:bold;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
<br />
<br />
<br />
<div id="stylized" class="myform">

<h1>Change Password</h1>
<p>Change Your Password Every 45 Days</p>

<label>Old Password
<span class="small">Enter Your Old Password</span>
</label>
<asp:TextBox name="name" id="name" runat="server" TextMode="Password"></asp:TextBox>
    <%--<input type="text" name="name" id="name" />--%>

<label>New Password
<span class="small">Enter Your New Password</span>
</label>
<asp:TextBox name="email" id="email" TextMode="Password" runat="server"></asp:TextBox>
    <%--<input type="text" name="email" id="email" />--%>

<label>Confirm Password
<span class="small">Re Enter Your Password</span>
</label>
<asp:TextBox name="password" id="password" TextMode="Password" runat="server"></asp:TextBox>
    <%--<input type="text" name="password" id="password" />--%>

<asp:Button type="submit" Text="Submit" runat="server" ID="btnSubmit" 
        onclick="btnSubmit_Click"  />
       
    <%--<button type="submit">Change</button>--%>
    <asp:Label ID="Result" runat="server" Visible=false></asp:Label>
&nbsp;<asp:CompareValidator ID="comparePassword" runat="server" 
        ControlToCompare="email" ControlToValidate="password" 
        ErrorMessage="Passwords Do Not Match" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
    <asp:CompareValidator ID="compareNew" runat="server" ControlToCompare="name" 
        ControlToValidate="email" ErrorMessage="Old And New Password Cannot Be Same" 
        Font-Bold="True" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
<div class="spacer">


</div>

</div>
</asp:Content>

