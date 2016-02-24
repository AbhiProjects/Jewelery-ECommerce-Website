using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public class FrontEnd
{
    Validator z = new Validator();

    public FrontEnd()
	{

    }

    #region Header

    public void getHeader(System.Web.UI.HtmlControls.HtmlGenericControl ulHeader)
    {

        ulHeader.InnerHtml = "";

        ulHeader.InnerHtml += "<div id='warpper'>";
        ulHeader.InnerHtml += "<div class='headerup'>";
        ulHeader.InnerHtml += "<div class='headerupleft'>";
        ulHeader.InnerHtml += "<img src='Images/Static/headerup_left_bg.jpg'>";
        ulHeader.InnerHtml += "</div>";
        ulHeader.InnerHtml += "<div class='headerupmiddle'>";
        ulHeader.InnerHtml += "<div class='headerupmiddleinner'>";

        ulHeader.InnerHtml += "<section class='headerlinkintro'>";
        ulHeader.InnerHtml += "<article class='headerlink_fifth first'>";
        ulHeader.InnerHtml += "<img src='Images/Static/home_logo.gif'>";
        ulHeader.InnerHtml += "<h5><a href='Home.aspx'>Home</a></h5>";
        ulHeader.InnerHtml += "</article>";

        ulHeader.InnerHtml += "<img src='Images/Static/devider_img.gif' width=1 height=33>";
        ulHeader.InnerHtml += "<article class='headerlink_fifth' style='width:58px'>";
        ulHeader.InnerHtml += "<img  src='Images/Static/wishlist_logo.gif'>";
        ulHeader.InnerHtml += "<h5><a href='Feedback.aspx'>FeedBack</a></h5>";
        ulHeader.InnerHtml += "</article>";

        ulHeader.InnerHtml += "&nbsp;&nbsp;&nbsp;";

        ulHeader.InnerHtml += "<img src='Images/Static/devider_img.gif' width=1 height=33>";
        ulHeader.InnerHtml += "<article class='headerlink_fifth'>";
        ulHeader.InnerHtml += "<img src='Images/Static/login_logo.gif'>";
        ulHeader.InnerHtml += "<h5><a href='Login.aspx'>Login</a></h5>";
        ulHeader.InnerHtml += "</article>";

        ulHeader.InnerHtml += "<img src='Images/Static/devider_img.gif' width=1 height=33>";
        ulHeader.InnerHtml += "<article class='headerlink_fifth'>";
        ulHeader.InnerHtml += "<img src='Images/Static/signup_logo.gif'>";
        ulHeader.InnerHtml += "<h5><a href='SignUp.aspx'>SignUp</a></h5>";
        ulHeader.InnerHtml += "</article>";

        ulHeader.InnerHtml += "<img src='Images/Static/devider_img.gif' width=1 height=33>";
        ulHeader.InnerHtml += "<article class='headerlink_fifth'>";
        ulHeader.InnerHtml += "<img src='Images/Static/mypage_logo.jpg'>";
        ulHeader.InnerHtml += "<h5><a href='MyPage.aspx'>MyPage</a></h5>";
        ulHeader.InnerHtml += "</article>";

        ulHeader.InnerHtml += "&nbsp;&nbsp;";

        ulHeader.InnerHtml += "<img src='Images/Static/devider_img.gif' width=1 height=33>";
        ulHeader.InnerHtml += "<article class='headerlink_fifth'>";
        ulHeader.InnerHtml += "<img src='Images/Static/promotion_logo.png'>";
        ulHeader.InnerHtml += "<h5><a href='PromotionDisplay.aspx'>Offer</a></h5>";
        ulHeader.InnerHtml += "</article>";

        ulHeader.InnerHtml += "<img src='Images/Static/devider_img.gif' width=1 height=33>";
        ulHeader.InnerHtml += "<article class='headerlink_fifth'>";
        ulHeader.InnerHtml += "<img src='Images/Static/logout_logo.png'>";
        ulHeader.InnerHtml += "<h5><a href='Logout.aspx'>LogOut</a></h5>";
        ulHeader.InnerHtml += "</article>";

        ulHeader.InnerHtml += "</section>";
        ulHeader.InnerHtml += "</div>";
        ulHeader.InnerHtml += "</div>";

        ulHeader.InnerHtml += "<div class='headerupright'>";
        ulHeader.InnerHtml += "<img src='Images/Static/headerup_right_bg.jpg'>";
        ulHeader.InnerHtml += "</div>";
        ulHeader.InnerHtml += "</div>";

        ulHeader.InnerHtml += "<div class='headermiddle'>";
        ulHeader.InnerHtml += "<div class='headermiddleleft'>";
        ulHeader.InnerHtml += "<img src='Images/Static/logo.jpg'>";
        ulHeader.InnerHtml += "</div>";
        ulHeader.InnerHtml += "<div class='headermiddleright'>";
        ulHeader.InnerHtml += "<div class='headermiddlerightsearchbox'>";

        ulHeader.InnerHtml +="<script type='text/javascript'>";
        ulHeader.InnerHtml +="function Searching()"; 
        ulHeader.InnerHtml +="{";
        ulHeader.InnerHtml +="var e;";
        ulHeader.InnerHtml +="e = document.getElementById('SearchBox').value;";
        ulHeader.InnerHtml +="var f = 'Search.aspx?SEARCH=' + e;";
        ulHeader.InnerHtml +="window.open(f,'_self',false);";
        ulHeader.InnerHtml +="}";
        ulHeader.InnerHtml += "</script>";

        ulHeader.InnerHtml += "<table width=245 border=0 cellspacing=0 cellpadding=0>";
        ulHeader.InnerHtml += "<tr>";

        ulHeader.InnerHtml += "<td valign='middle'>";
        ulHeader.InnerHtml += "<input style='width:210px; height:30px; background-color:#212121; border:1px solid #000; border-radius:5px; color:#999; text-transform:uppercase; font:normal 12px Arial;' name='' value='Search' type='text' id='SearchBox'>";
        ulHeader.InnerHtml += "</td>";

        ulHeader.InnerHtml += "<td style='padding-top:6px' width=35 align='right' valign='middle'>";
        ulHeader.InnerHtml += "<img src='Images/Static/zoom_img.jpg' width=28 height=30 onClick='Searching()'>";
        ulHeader.InnerHtml += "</td>";

        ulHeader.InnerHtml += "</tr>";
        ulHeader.InnerHtml += "</table>";

        ulHeader.InnerHtml += "</div></div></div>";

        ulHeader.InnerHtml += "<div class='headerbottom' align='center'>";
        ulHeader.InnerHtml += "<img src='Images/Static/design.jpg' width=51 height=21>";
        ulHeader.InnerHtml += "</div>";

        ulHeader.InnerHtml += "<div class='headernav'>";
        ulHeader.InnerHtml += "<div class='headernavli'>";
        ulHeader.InnerHtml += "Wedding &rsaquo;&rsaquo;        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='SubCategoryDisplay.aspx?ID=SUB 2&SUB=SUB 3'>Rings</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='SubCategoryDisplay.aspx?ID=SUB 1&SUB=SUB 4'>         Necklaces</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='SubCategoryDisplay.aspx?ID=SUB 5'>Pendant</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='FeaturedDisplay.aspx'>Earrings</a>";
        ulHeader.InnerHtml += "</div>";
        ulHeader.InnerHtml += "</div>";
        ulHeader.InnerHtml += "</div>";

    }

    #endregion

    #region Banner

    public void getBanner(System.Web.UI.HtmlControls.HtmlGenericControl ulBanner)
    {
        DataSet dset = new DataSet();
        ulBanner.InnerHtml = string.Empty;
        dset = z.FillDataset("SELECT Location_Dot FROM Banner");
        if (dset.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dset.Tables[0].Rows.Count; i++)
            {
                if (i >= 2)
                {
                    ulBanner.InnerHtml += "<li><img src='" + dset.Tables[0].Rows[i][0].ToString() + "' alt='Jewellery : jQuery Random Image Rotator'  id='wows" + (2) + "'/></li>";
                }
                else if (i == 0)
                {
                    ulBanner.InnerHtml += "<li><img src='" + dset.Tables[0].Rows[i][0].ToString() + "' alt='Mercedes Benz : jQuery Banner Rotator'  id='wows" + (i) + "'/></li>";
                }
                else
                {
                    ulBanner.InnerHtml += "<li><img src='" + dset.Tables[0].Rows[i][0].ToString() + "' alt='Zenvo ST1 - Danish super car : jQuery Rotator'  id='wows" + (i) + "'/></li>";
                }
            }
        }
    }

    #endregion

    #region Footer

    public void getFooter(System.Web.UI.HtmlControls.HtmlGenericControl ulfooter)
    {
        DataSet dset = new DataSet();
        dset = z.FillDataset("SELECT * FROM Rate");
        ulfooter.InnerHtml = "";
        if (dset.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < dset.Tables[0].Rows.Count; i++)
            {
                if (i == 0)
                    ulfooter.InnerHtml += "<section class='one_quarter first'>";
                else
                    ulfooter.InnerHtml += "<section class='one_quarter'>";

                ulfooter.InnerHtml += "<h2 class='title'>" + dset.Tables[0].Rows[i]["category_name"] + "</h2>";
                ulfooter.InnerHtml += "<nav>";
                ulfooter.InnerHtml += "<ul>";
                string Query = "SELECT product_subcategory_name,product_subcategory_id FROM Product_SubCategory WHERE category_id='" + dset.Tables[0].Rows[i]["category_id"].ToString() + "';";
                DataSet dset1 = new DataSet();
                dset1 = z.FillDataset(Query);
                for (int j = 0; j < dset1.Tables[0].Rows.Count; j++)
                {
                    if (j == dset1.Tables[0].Rows.Count - 1)
                        ulfooter.InnerHtml += "<li class='last'><a href='SubCategoryDisplay.aspx?ID=" + dset1.Tables[0].Rows[j]["product_subcategory_id"] + "'>" + dset1.Tables[0].Rows[j]["product_subcategory_name"] + "</a></li>";
                    else
                        ulfooter.InnerHtml += "<li><a href='SubCategoryDisplay.aspx?ID=" + dset1.Tables[0].Rows[j]["product_subcategory_id"] + "'>" + dset1.Tables[0].Rows[j]["product_subcategory_name"] + "</a></li>";
                }
                ulfooter.InnerHtml += "</ul>";
                ulfooter.InnerHtml += "</nav>";
                ulfooter.InnerHtml += "</section>";
            }
        }


        ulfooter.InnerHtml += "<section class='one_quarter'>";
        ulfooter.InnerHtml += "<h2 class='title'>MISCELLANEOUS</h2>";
        ulfooter.InnerHtml += "<nav>";
        ulfooter.InnerHtml += "<ul>";
        ulfooter.InnerHtml += "<li><a href='SchemeDisplay.aspx'>Scheme</a></li>";
        ulfooter.InnerHtml += "<li><a href='AstrologerDisplay.aspx'>Astrologer</a></li>";
        ulfooter.InnerHtml += "<li><a href='ShowRoomsDisplay.aspx'>ShowRooms</a></li>";
        ulfooter.InnerHtml += "</ul>";
        ulfooter.InnerHtml += "</nav>";
        ulfooter.InnerHtml += "</section>";

        ulfooter.InnerHtml += "<section class='one_quarter'>";
        ulfooter.InnerHtml += "<h2 class='title'>USEFUL INFORMATION</h2>";
        ulfooter.InnerHtml += "<nav>";
        ulfooter.InnerHtml += "<ul>";
        ulfooter.InnerHtml += "<li><a href='AboutUs.aspx'>About Us</a></li>";
        ulfooter.InnerHtml += "<li><a href='ContactUs.aspx'>Contact Us</a></li>";
        ulfooter.InnerHtml += "<li><a href='FAQ.aspx'>FAQ</a></li>";
        ulfooter.InnerHtml += "</ul>";
        ulfooter.InnerHtml += "</nav>";
        ulfooter.InnerHtml += "</section>";



        ulfooter.InnerHtml += "<section class='one_quarter'>";
        ulfooter.InnerHtml += "<h2 class='title'>POLICIES</h2>";
        ulfooter.InnerHtml += "<nav>";
        ulfooter.InnerHtml += "<ul>";
        ulfooter.InnerHtml += "<li><a href='Terms.aspx'>Terms And Conditions</a></li>";
        ulfooter.InnerHtml += "<li><a href='Privacy.aspx'>Privacy Policy</a></li>";
        ulfooter.InnerHtml += "<li><a href='EMI.aspx'>EMI (Credit Card) Policies</a></li>";
        ulfooter.InnerHtml += "</ul>";
        ulfooter.InnerHtml += "</nav>";
        ulfooter.InnerHtml += "</section>";
    }

    #endregion

    

}