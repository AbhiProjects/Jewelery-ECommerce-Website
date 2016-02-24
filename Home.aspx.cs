using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    Validator z = new Validator();
    FrontEnd f = new FrontEnd();

    protected void Page_Load(object sender, EventArgs e)
    {

        SideBar();
        f.getHeader(ulHeader);
        f.getBanner(ulBanner);
        f.getFooter(ulfooter);

        NewArrivalDataBind();
        z.BindDataList("SELECT TOP 3 Location_Dot,Name,Price,Product_Id FROM BestSeller ORDER BY Id DESC", dtlBestSeller);
        z.BindDataList("SELECT TOP 12 Location_Dot,Name,Price,Product_Id FROM FeaturedProducts ORDER BY Id DESC", dtlFeaturedProducts);
        z.BindDataList("SELECT TOP 4 Location_Dot FROM Brand ORDER BY Id DESC", dtlBrand);
        
    }

    void NewArrivalDataBind()
    {

        string AllQuery = "SELECT Product_SubCategory.category_id,Product_Attribute.product_subcategory_id,Product_Attribute.product_id,Product_Attribute.product_attribute_name,Rate.price,Product_Attribute.weight_gm,Product_Attribute.making_charge,Product_Attribute.discount,Product_Images.location_dot FROM Rate,Product_SubCategory,Product_Attribute,Product_Images WHERE (Product_Attribute.product_subcategory_id= Product_SubCategory.product_subcategory_id AND Rate.category_id=Product_SubCategory.category_id AND Product_Attribute.product_id IN(SELECT TOP 3 product_id FROM Product_Images ORDER BY product_id DESC) AND Product_Attribute.product_id=Product_Images.product_id)";
        DataTable dtAll = new DataTable();
        dtAll = z.FillDataTable(AllQuery);

        DataTable dt = new DataTable();

        dt.Columns.Add("Name");
        dt.Columns.Add("Amount");
        dt.Columns.Add("location_dot");
        dt.Columns.Add("Pro_Id");

        if (dtAll.Rows.Count > 0)
        {

            for (int i = 0; i < 3; i++)
            {
                double cal = (Double.Parse(dtAll.Rows[i][4].ToString()) * Double.Parse(dtAll.Rows[i][5].ToString())) + Double.Parse(dtAll.Rows[i][6].ToString()) - ((Double.Parse(dtAll.Rows[i][7].ToString()) * Double.Parse(dtAll.Rows[i][6].ToString())) / 100);

                dt.Rows.Add(dtAll.Rows[i][3].ToString(), cal.ToString("0.00"), dtAll.Rows[i][8].ToString(),dtAll.Rows[i][2].ToString());
            }

            dtlNewArrival.DataSource = dt;
            dtlNewArrival.DataBind();
        }
    }

    void SideBar()
    {
        ulSideBar.InnerHtml="";
        ulSideBar.InnerHtml+="<aside class='topsidebar'><div class='msg_list' style='height:auto; overflow:hidden'>";
	    ulSideBar.InnerHtml+="<div style='height:auto; overflow:hidden; '>";
        ulSideBar.InnerHtml+="<p class='msg_head' onclick='show_div(1)'>SHOP ONLINE +</p>";
        ulSideBar.InnerHtml+="<div class='msg_body' id='msg_body1'>";
        ulSideBar.InnerHtml+="<div id='block-menu-menu-shop-online' class='block block-menu'>";
        ulSideBar.InnerHtml+="<div class='content'>";
        ulSideBar.InnerHtml+="<ul class='menu'><li class='leaf first last'><a href='ProGalleryDisplay.aspx' title='Online Product Gallery'>Online Product Gallery</a></li>";
        ulSideBar.InnerHtml+="</ul>  </div>";
        ulSideBar.InnerHtml+="</div>";
        ulSideBar.InnerHtml+="</div>";
        ulSideBar.InnerHtml+="<p class='msg_head' onclick='show_div(2)'>OUR PRODUCT +</p>";
        ulSideBar.InnerHtml+="<div class='msg_body' id='msg_body2'>";
        ulSideBar.InnerHtml+="<div id='block-menu-menu-our-product' class='block block-menu'>";
        ulSideBar.InnerHtml+="<div class='content'>";
        ulSideBar.InnerHtml+="<ul class='menu'>";

        DataTable dtCategory = new DataTable();
        dtCategory = z.FillDataTable("SELECT TOP 4 category_name,category_id FROM Rate ORDER BY category_id DESC");
        for (int i = 0; i < dtCategory.Rows.Count; i++)
        {
            if(i==0)
                ulSideBar.InnerHtml += "<li class='leaf first'><a href='CategoryDisplay.aspx?ID="+dtCategory.Rows[i][1].ToString()+"' title='" + dtCategory.Rows[i][0].ToString() + "'>" + dtCategory.Rows[i][0].ToString() + "</a></li>";
            else
                ulSideBar.InnerHtml += "<li class='leaf'><a href='CategoryDisplay.aspx?ID=" + dtCategory.Rows[i][1].ToString() + "' title='" + dtCategory.Rows[i][0].ToString() + "'>" + dtCategory.Rows[i][0].ToString() + "</a></li>";
        }
  
        ulSideBar.InnerHtml+="</ul>  </div>";
        ulSideBar.InnerHtml+="</div>";
        ulSideBar.InnerHtml+="</div>";
        ulSideBar.InnerHtml+="<p class='msg_head' style='height:auto; overflow:hidden' onclick='show_div(4)'>GUIDANCE +</p>";
        ulSideBar.InnerHtml += "<div class='msg_body' style='height:auto; overflow:hidden' id='msg_body4'>";
        ulSideBar.InnerHtml+="<div id='block-menu-menu-guidance' class='block block-menu'>";
        ulSideBar.InnerHtml+="<div class='content'>";
        ulSideBar.InnerHtml+="<ul class='menu'>";
        ulSideBar.InnerHtml += "<li class='leaf first'><a href='AstrologerDisplay.aspx' title='Astrology'>Astrologer</a></li>";
        ulSideBar.InnerHtml += "<li class='leaf'><a href='ShowRoomsDisplay.aspx' title='ShowRooms'>ShowRooms</a></li>";
        ulSideBar.InnerHtml += "<li class='leaf'><a href='Care.aspx' title='Jewellery Care'>Jewellery Care</a></li>";
        ulSideBar.InnerHtml += "<li class='leaf'><a href='WhyUs.aspx' title='Why Shop With Us'>Why Shop With Us</a></li>";
        ulSideBar.InnerHtml+="</ul>  </div>";
        ulSideBar.InnerHtml+="</div>";
        ulSideBar.InnerHtml+="</div>";
        ulSideBar.InnerHtml += "<p class='msg_head' style='height:auto; overflow:hidden'>SCHEME +</p>";
        ulSideBar.InnerHtml += "<div class='msg_body' style='height:auto; overflow:hidden'>";
        ulSideBar.InnerHtml+="<div id='block-menu-menu-swarna-zozona-schme' class='block block-menu'>";
        ulSideBar.InnerHtml+="<div class='content'>";
        ulSideBar.InnerHtml+="<ul class='menu'>";

        DataTable dtScheme = new DataTable();
        dtScheme = z.FillDataTable("SELECT name,scheme_id FROM Scheme");
        for (int i = 0; i < dtScheme.Rows.Count; i++)
        {
            if (i == 0 || i == (dtScheme.Rows.Count-1))
                ulSideBar.InnerHtml += "<li class='leaf first last'><a href='SchemeDisplay.aspx?ID=" + dtScheme.Rows[i][1].ToString() + "' title='" + dtScheme.Rows[i][0].ToString() + "'>" + dtScheme.Rows[i][0].ToString() + "</a></li>";
            else
                ulSideBar.InnerHtml += "<li class='leaf'><a href='SchemeDisplay.aspx?ID=" + dtScheme.Rows[i][1].ToString() + "' title='" + dtScheme.Rows[i][0].ToString() + "'>" + dtScheme.Rows[i][0].ToString() + "</a></li>";
        }
        
        ulSideBar.InnerHtml+="</ul>  </div>";
        ulSideBar.InnerHtml+="</div>";
        ulSideBar.InnerHtml+="</div>";
        ulSideBar.InnerHtml += "</div>";
        ulSideBar.InnerHtml += "</aside>";
        ulSideBar.InnerHtml+= "<aside class='bottomsidebar'><a href='#' ><img src='./Images/Static/celebraty_speak_img.jpg' border=0></a></aside>";
    }
        
    }


