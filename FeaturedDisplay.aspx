<%@ Page Title="" Language="C#" MasterPageFile="~/ProductMaster.master" AutoEventWireup="true" CodeFile="FeaturedDisplay.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

          <div class="productitemcontent">
          
<div class="productitemmaincontent">
<section class="productintro">


<asp:DataList runat="server" RepeatColumns="4" RepeatDirection="Horizontal" ID="dtlFeaturedProducts" CellPadding=5 CellSpacing=3>
  <ItemTemplate>
        <article class="product_fifth first">
        <a href="FeaturedDescription.aspx?ID=<%#Eval("Product_Id")%>"><img src="<%#Eval("Location_Dot")%>" alt="" height=140 width=140></a>
            <h1><%#Eval("Name")%></h1>
            <p> ₹ <%#Eval("Price")%></p>
        <footer><img style="border:none" src="Images/Static/pro_shoppingcart.png" border="0"></footer>
            </article>
  </ItemTemplate>
  
  </asp:DataList>

  <asp:DataList runat="server" RepeatColumns="4" RepeatDirection="Horizontal" ID="dtlBestSeller" CellPadding=5 CellSpacing=3>
  <ItemTemplate>
        <article class="product_fifth first">
        <a href="BestSellerDescription.aspx?ID=<%#Eval("Product_Id")%>"><img src="<%#Eval("Location_Dot")%>" alt="" height=140 width=140></a>
            <h1><%#Eval("Name")%></h1>
            <p> ₹ <%#Eval("Price")%></p>
        <footer><img style="border:none" src="Images/Static/pro_shoppingcart.png" border="0"></footer>
            </article>
  </ItemTemplate>
  
  </asp:DataList>

          </section>
<section class="productintro">



          </section>        
            </div></div>
          
<div class="clear"></div>

</asp:Content>

