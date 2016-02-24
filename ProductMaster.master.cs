using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class FrontMaster : System.Web.UI.MasterPage
{
    Validator z = new Validator();
    FrontEnd f = new FrontEnd();

    protected void Page_Load(object sender, EventArgs e)
    {
        f.getHeader(ulHeader);
        f.getFooter(ulfooter);
        getSidebar();
        
    }

    void getSidebar()
    {
        DataSet dset = new DataSet();
        dset = z.FillDataset("SELECT * FROM Rate");
        ulSidebar.InnerHtml = "";
        if (dset.Tables[0].Rows.Count > 0)
        {
            ulSidebar.InnerHtml += "<div style='text-transform:uppercase; font-size:14px'>Search Criteria</div>";
            ulSidebar.InnerHtml += "<aside class='item_topsidebar'><div class='msg_list' style='height:auto; overflow:hidden'>";
            ulSidebar.InnerHtml += "<div style='height:auto; overflow:hidden; '>";
            for (int i = 0; i < dset.Tables[0].Rows.Count; i++)
            {

                ulSidebar.InnerHtml += "<p class='msg_head' onclick='show_div(1)'>" + dset.Tables[0].Rows[i]["category_name"] + "</p>";

                ulSidebar.InnerHtml += "<div class='msg_body' id='msg_body1'>";
                ulSidebar.InnerHtml += "<div id='block-menu-menu-shop-online' class='block block-menu'>";
                ulSidebar.InnerHtml += "<div class='content'>";
                ulSidebar.InnerHtml += "<ul class='menu'>";

                string Query = "SELECT product_subcategory_name,product_subcategory_id FROM Product_SubCategory WHERE category_id='" + dset.Tables[0].Rows[i]["category_id"].ToString() + "';";
                DataSet dset1 = new DataSet();
                dset1 = z.FillDataset(Query);

                if (i == 0 || i == dset.Tables[0].Rows.Count)
                    for (int j = 0; j < dset1.Tables[0].Rows.Count; j++)

                        ulSidebar.InnerHtml += "<li class='leaf first last'><a href='SubCategoryDisplay.aspx?ID=" + dset1.Tables[0].Rows[j]["product_subcategory_id"] + "'>" + dset1.Tables[0].Rows[j]["product_subcategory_name"] + "</a></li>";


                else
                    for (int j = 0; j < dset1.Tables[0].Rows.Count; j++)
                        ulSidebar.InnerHtml += "<li class='leaf'><a href='SubCategoryDisplay.aspx?ID=" + dset1.Tables[0].Rows[j]["product_subcategory_id"] + "'>" + dset1.Tables[0].Rows[j]["product_subcategory_name"] + "</a></li>";

                ulSidebar.InnerHtml += "</ul>";
                ulSidebar.InnerHtml += "</div>";
                ulSidebar.InnerHtml += "</div>";
                ulSidebar.InnerHtml += "</div>";
            }
        }
        ulSidebar.InnerHtml += "</div></aside>";

    }
    

        }
    

