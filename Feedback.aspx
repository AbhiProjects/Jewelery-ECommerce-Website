<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>FeedBack Page</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/stylesFeedback.css" />
   <link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
<div class="header_warpper" id=ulHeader runat="server">


</div>
<form runat="server">

          <div class="box">

            <h1>FeedBack Form :</h1>

            <label>

               <span>Name</span>
               <asp:TextBox class="input_text" name="name" id="name" runat="server"></asp:TextBox>

               <%--<input type="text" class="input_text" name="name" id="name"/>--%>

            </label>

             <label>

               <span>Email</span>
               <asp:TextBox class="input_text" name="email" id="email" Text="UserName@DomainName" runat="server"></asp:TextBox>

              <%-- <input type="text" class="input_text" name="email" id="email"/>--%>

            </label>

             <label>

                <span>Subject</span>
                <asp:TextBox class="input_text" name="subject" id="subject" runat="server"></asp:TextBox>

                <%--<input type="text" class="input_text" name="subject" id="subject"/>--%>

            </label>

            <label>

                <span>Message</span>

                <asp:TextBox class="input_text" name="feedback" id="feedback" runat="server" TextMode="MultiLine" ></asp:TextBox>

                <%--<textarea class="message" name="feedback" id="feedback"></textarea>--%>

                <asp:Button class="button" Text="Submit" id="Submit" runat="server" 
                  value="Submit Form" onclick="Submit_Click" />

                <%--<input type="button" class="button" value="Submit Form" />--%>

            </label>

            
            <asp:Label ID="Result" runat="server" Visible=false></asp:Label>

              <asp:RegularExpressionValidator ID="regularName" 

runat="server" 
                  ControlToValidate="name" ErrorMessage="Name Field 

Can Contain Alphabets Only" 
                  Font-Bold="True" ForeColor="Red" 

ValidationExpression="[a-zA-Z ]+"></asp:RegularExpressionValidator>
              <asp:RegularExpressionValidator ID="regularEmail" 

runat="server" 
                  ControlToValidate="email" ErrorMessage="Please Enter 

A Proper Email Id" 
                  Font-Bold="True" ForeColor="Red" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              <asp:RegularExpressionValidator ID="regularSubject" 

runat="server" 
                  ControlToValidate="subject" 
                  ErrorMessage="Subject Field Can Contain Alphabets 

Only" Font-Bold="True" 
                  ForeColor="Red" ValidationExpression="[a-zA-Z 

]+"></asp:RegularExpressionValidator>
            

         </div>

    </form>
    <br />
    <br />
     <br />
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
