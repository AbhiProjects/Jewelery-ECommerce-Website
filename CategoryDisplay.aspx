<%@ Page Title="" Language="C#" MasterPageFile="~/ProductMaster.master" AutoEventWireup="true" CodeFile="CategoryDisplay.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

          <div class="productitemcontent">
          
<div class="productitemmaincontent">
<section class="productintro">


<asp:DataList runat="server" RepeatColumns="4" RepeatDirection="Horizontal" ID="dtlFirstRow" CellPadding="3" CellSpacing="3">
  <ItemTemplate>
        
        <article class="product_fifth first">
        
        <a href="Description.aspx?ID=<%#Eval("Pro_Id")%>"><img src="<%#Eval("location_dot")%>" alt="" height=140 width=140></a>
            <h1><%#Eval("Name")%></h1>
            <p>₹ <%#Eval("Amount")%></p>
            <footer><img style="border:none" src="Images/Static/pro_shoppingcart.png" border="0"></footer>
        </article>
        &nbsp;&nbsp;&nbsp;
  </ItemTemplate>
  
  </asp:DataList>
          </section>
<section class="productintro">

          </section>        
            </div></div>
          
<div class="clear"></div>

</asp:Content>

