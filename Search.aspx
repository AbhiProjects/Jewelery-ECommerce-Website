<%@ Page Title="" Language="C#" MasterPageFile="~/ProductMaster.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

          <div class="productitemcontent">
          
<div class="productitemmaincontent">
<section class="productintro">
<br />

&nbsp;&nbsp;&nbsp;<asp:Label ID="lblError" runat="server" Visible="false" Text="No Products Found " ForeColor="Black" Font-Size="XX-Large" Font-Bold="True"></asp:Label>

<asp:Label ID="lblProducts" runat="server" Visible="False" Text="Our Products" ForeColor="Black" Font-Size="X-Large" Font-Bold="True" Font-Names="Bookman Old Style"></asp:Label>

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

  &nbsp;&nbsp;&nbsp;<asp:Label ID="lblFeatured" runat="server" Visible="False" Text="Featured Products" ForeColor="Black" Font-Size="X-Large" Font-Bold="True" Font-Names="Bookman Old Style"></asp:Label>

  <asp:DataList runat="server" RepeatColumns="4" RepeatDirection="Horizontal" ID="dtlSecondRow" CellPadding="3" CellSpacing="3">
  <ItemTemplate>
        
        <article class="product_fifth">
        
        <a href="FeaturedDescription.aspx?ID=<%#Eval("Product_Id")%>"><img src="<%#Eval("Location_Dot")%>" alt="" height=140 width=140></a>
            <h1><%#Eval("Name")%></h1>
            <p>₹ <%#Eval("Price")%></p>
            <footer><img style="border:none" src="Images/Static/pro_shoppingcart.png" border="0"></footer>
        </article>
        &nbsp;&nbsp;&nbsp;
  </ItemTemplate>
  
  </asp:DataList>

  
          </section>
<section class="productintro">



          </section>        
            </div>
            
            
            
            </div>
          
<div class="clear">

</div>
<div id="ulSpaces" runat="server">

</div>
</asp:Content>

