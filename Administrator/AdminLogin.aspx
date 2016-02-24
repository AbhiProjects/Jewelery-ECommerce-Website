<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
<style>

html, body
{
    height: 100%;
}

body
{
    font: 12px 'Lucida Sans Unicode', 'Trebuchet MS', Arial, Helvetica;    
    margin: 0;
    background-color: #d9dee2;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebeef2), to(#d9dee2));
    background-image: -webkit-linear-gradient(top, #ebeef2, #d9dee2);
    background-image: -moz-linear-gradient(top, #ebeef2, #d9dee2);
    background-image: -ms-linear-gradient(top, #ebeef2, #d9dee2);
    background-image: -o-linear-gradient(top, #ebeef2, #d9dee2);
    background-image: linear-gradient(top, #ebeef2, #d9dee2);    
}

/*--------------------*/

#login
{
    background-color: #fff;
    background-image: linear-gradient(top, #fff, #eee);
    height: 260px;
    width: 410px;
    margin: -150px 0 0 -230px;
    padding: 30px;
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 0;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;  
    -webkit-box-shadow:
          0 0 2px rgba(0, 0, 0, 0.2),
          0 1px 1px rgba(0, 0, 0, .2),
          0 3px 0 #fff,
          0 4px 0 rgba(0, 0, 0, .2),
          0 6px 0 #fff,  
          0 7px 0 rgba(0, 0, 0, .2);
    -moz-box-shadow:
          0 0 2px rgba(0, 0, 0, 0.2),  
          1px 1px   0 rgba(0,   0,   0,   .1),
          3px 3px   0 rgba(255, 255, 255, 1),
          4px 4px   0 rgba(0,   0,   0,   .1),
          6px 6px   0 rgba(255, 255, 255, 1),  
          7px 7px   0 rgba(0,   0,   0,   .1);
    box-shadow:
          0 0 2px rgba(0, 0, 0, 0.2),  
          0 1px 1px rgba(0, 0, 0, .2),
          0 3px 0 #fff,
          0 4px 0 rgba(0, 0, 0, .2),
          0 6px 0 #fff,  
          0 7px 0 rgba(0, 0, 0, .2);
}

#login:before
{
    content: '';
    position: absolute;
    z-index: -1;
    border: 1px dashed #ccc;
    top: 5px;
    bottom: 5px;
    left: 5px;
    right: 5px;
    -moz-box-shadow: 0 0 0 1px #fff;
    -webkit-box-shadow: 0 0 0 1px #fff;
    box-shadow: 0 0 0 1px #fff;
}

/*--------------------*/

h1
{
    text-shadow: 0 1px 0 rgba(255, 255, 255, .7), 0px 2px 0 rgba(0, 0, 0, .5);
    text-transform: uppercase;
    text-align: center;
    color: #666;
    margin: 0 0 30px 0;
    letter-spacing: 4px;
    font: normal 26px/1 Verdana, Helvetica;
    position: relative;
}

h1:after, h1:before
{
    background-color: #777;
    content: "";
    height: 1px;
    position: absolute;
    top: 15px;
    width: 120px;   
}

h1:after
{ 
    background-image: -webkit-gradient(linear, left top, right top, from(#777), to(#fff));
    background-image: -webkit-linear-gradient(left, #777, #fff);
    background-image: -moz-linear-gradient(left, #777, #fff);
    background-image: -ms-linear-gradient(left, #777, #fff);
    background-image: -o-linear-gradient(left, #777, #fff);
    background-image: linear-gradient(left, #777, #fff);      
    right: 0;
}

h1:before
{
    background-image: -webkit-gradient(linear, right top, left top, from(#777), to(#fff));
    background-image: -webkit-linear-gradient(right, #777, #fff);
    background-image: -moz-linear-gradient(right, #777, #fff);
    background-image: -ms-linear-gradient(right, #777, #fff);
    background-image: -o-linear-gradient(right, #777, #fff);
    background-image: linear-gradient(right, #777, #fff);
    left: 0;
}

/*--------------------*/

fieldset
{
    border: 0;
    padding: 0;
    margin: 0;
}

/*--------------------*/

#inputs input
{
    background: #f1f1f1 url(http://www.red-team-design.com/wp-content/uploads/2011/09/login-sprite.png) no-repeat;
    padding: 15px 15px 15px 30px;
    margin: 0 0 10px 0;
    width: 353px; /* 353 + 2 + 45 = 400 */
    border: 1px solid #ccc;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    -moz-box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #fff;
    -webkit-box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #fff;
    box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #fff;
}

#username
{
    background-position: 5px -2px !important;
}

#password
{
    background-position: 5px -52px !important;
}

#inputs input:focus
{
    background-color: #fff;
    border-color: #e8c291;
    outline: none;
    -moz-box-shadow: 0 0 0 1px #e8c291 inset;
    -webkit-box-shadow: 0 0 0 1px #e8c291 inset;
    box-shadow: 0 0 0 1px #e8c291 inset;
}

/*--------------------*/
#actions
{
    margin: 25px 0 0 0;
}

#submit
{		
    background-color: #ffb94b;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#fddb6f), to(#ffb94b));
    background-image: -webkit-linear-gradient(top, #fddb6f, #ffb94b);
    background-image: -moz-linear-gradient(top, #fddb6f, #ffb94b);
    background-image: -ms-linear-gradient(top, #fddb6f, #ffb94b);
    background-image: -o-linear-gradient(top, #fddb6f, #ffb94b);
    background-image: linear-gradient(top, #fddb6f, #ffb94b);
    
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    
    text-shadow: 0 1px 0 rgba(255,255,255,0.5);
    
     -moz-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
     -webkit-box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
     box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.3) inset;    
    
    border-width: 1px;
    border-style: solid;
    border-color: #d69e31 #e3a037 #d5982d #e3a037;

    float: left;
    height: 35px;
    padding: 0;
    width: 120px;
    cursor: pointer;
    font: bold 15px Arial, Helvetica;
    color: #8f5a0a;
}

#submit:hover,#submit:focus
{		
    background-color: #fddb6f;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ffb94b), to(#fddb6f));
    background-image: -webkit-linear-gradient(top, #ffb94b, #fddb6f);
    background-image: -moz-linear-gradient(top, #ffb94b, #fddb6f);
    background-image: -ms-linear-gradient(top, #ffb94b, #fddb6f);
    background-image: -o-linear-gradient(top, #ffb94b, #fddb6f);
    background-image: linear-gradient(top, #ffb94b, #fddb6f);
}	

#submit:active
{		
    outline: none;
   
     -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
     -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;
     box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;		
}

#submit::-moz-focus-inner
{
  border: none;
}

#actions a
{
    color: #3151A2;    
    float: right;
    line-height: 35px;
    margin-left: 10px;
}

/*--------------------*/

#back
{
    display: block;
    text-align: center;
    position: relative;
    top: 60px;
    color: #999;
}


</style>

<style class="flashcontrol">object[type$="x-shockwave-flash"]:not([classid]),object[type$="futuresplash"]:not([classid]),embed[type$="x-shockwave-flash"],embed[type$="futuresplash"]{display:none !important}</style><script async="" src="./Create a nice login form using CSS3 and HTML5_files/adpacks-demo.js"></script><style type="text/css">				#adpacks-wrapper{font-family: Arial, Helvetica;width:280px;position:fixed;_position: absolute;bottom: 0;right: 5px;z-index: 9999;background: #eee;padding: 15px;box-shadow: 0 0 2px #444;border-radius: 5px 5px 0 0;}				body .adpacks{background:#fff;padding:15px;margin:15px 0 0;border:3px solid #eee;}				body .one .bsa_it_ad{background:transparent;border:none;font-family:inherit;padding:0;margin:0;}/				body .one .bsa_it_ad .bsa_it_i{display:block;padding:0;float:left;margin:0 10px 0 0;}				body .one .bsa_it_ad .bsa_it_i img{padding:0;border:none;}				body .one .bsa_it_ad .bsa_it_t{padding: 0 0 6px 0; font-size: 11px;}				body .one .bsa_it_p{display:none;}				body #bsap_aplink,body #bsap_aplink:hover{display:block;font-size:9px;margin: -20px 0 0 0;text-align:right;}				body .one .bsa_it_ad .bsa_it_d{font-size: 11px;}				body .one{overflow: hidden}				</style><script type="text/javascript" async="" src="./Create a nice login form using CSS3 and HTML5_files/bsa.js"></script>
</head>
<body>
    <form id="login" runat="server">
    <h1>Log In</h1>
    <fieldset id="inputs">
    <asp:TextBox id="username" type="text" Text="UserName" TextMode="SingleLine" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="requiredUserName" runat="server" 
            ControlToValidate="username" ErrorMessage="This Field Cannot Be Left Empty" 
            Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox id="password" type="text" Text="password" TextMode="Password" runat="server"></asp:TextBox>
        <%--        <input id="username" type="text" placeholder="Username" autofocus="" required="">   
        <input id="password" type="password" placeholder="Password" required=""--%>
        
        <br />
        <asp:RequiredFieldValidator ID="requiredPassword" runat="server" 
            ControlToValidate="password" ErrorMessage="This Field Cannot Be Left Empty" 
            Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblCheck" runat="server" Font-Bold="True" ForeColor="Red" 
            Text="InCorrect Login" Visible="False"></asp:Label>

    </fieldset>
    <fieldset id="actions">
    <asp:Button id="submit" value="Log in" Text="Log In"  runat="server" 
            onclick="submit_Click"/>
        <%--<input type="submit" id="submit" value="Log in">--%>
        
    </fieldset>
    
</form>
   
</body>
</html>
