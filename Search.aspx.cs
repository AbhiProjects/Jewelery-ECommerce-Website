using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Product : System.Web.UI.Page
{
    Validator z = new Validator();
    string Search;

    protected void Page_Load(object sender, EventArgs e)
    {
         Search = Request.QueryString["SEARCH"];
         Search = Search.ToUpper();
         
        if (Search.Equals("SEARCH") == true)
        { Response.Redirect("Home.aspx"); }

        else if(Search.Equals("")==true)
            { Response.Redirect("Home.aspx"); }
        else
        
            ImageBind();
    }

    void ImageBind()
    {
        
        string ProQuery = "SELECT Product_SubCategory.category_id,Product_Attribute.product_subcategory_id,Product_Attribute.product_id,Product_Attribute.product_attribute_name,Rate.price,Product_Attribute.weight_gm,Product_Attribute.making_charge,Product_Attribute.discount,Product_Images.location_dot FROM Rate,Product_SubCategory,Product_Attribute,Product_Images WHERE (Product_Attribute.product_subcategory_id= Product_SubCategory.product_subcategory_id AND Rate.category_id=Product_SubCategory.category_id AND Product_Attribute.product_attribute_name LIKE '" + Search + "%' AND Product_Attribute.product_id=Product_Images.product_id)";
        DataTable dtAll = new DataTable();
        dtAll = z.FillDataTable(ProQuery);

        string FeaturedQuery = "SELECT Name,Price,Location_Dot,Product_Id FROM FeaturedProducts WHERE Name LIKE '" + Search + "%'";
        DataTable dtFeatured = new DataTable();
        dtFeatured = z.FillDataTable(FeaturedQuery);
        
        DataTable dt = new DataTable();

        dt.Columns.Add("Name");
        dt.Columns.Add("Amount");
        dt.Columns.Add("location_dot");
        dt.Columns.Add("Pro_Id");

        if (dtAll.Rows.Count > 0)
        {

            for (int i = 0; i < dtAll.Rows.Count; i++)
            {
                double cal = (Double.Parse(dtAll.Rows[i][4].ToString()) * Double.Parse(dtAll.Rows[i][5].ToString())) + Double.Parse(dtAll.Rows[i][6].ToString()) - ((Double.Parse(dtAll.Rows[i][7].ToString()) * Double.Parse(dtAll.Rows[i][6].ToString())) / 100);

                dt.Rows.Add(dtAll.Rows[i][3].ToString(), cal.ToString("0.00"), dtAll.Rows[i][8].ToString(), dtAll.Rows[i][2].ToString());
            }
        }

        if (dt.Rows.Count > 0 || dtFeatured.Rows.Count > 0)
        {
            if (dt.Rows.Count > 0)
                lblProducts.Visible = true;
            if (dtFeatured.Rows.Count > 0)
                lblFeatured.Visible = true;
            
            dtlFirstRow.DataSource = dt;
            dtlFirstRow.DataBind();

            dtlSecondRow.DataSource = dtFeatured;
            dtlSecondRow.DataBind();

        }

        else
        {
            lblError.Visible = true;

            ulSpaces.InnerHtml = "";
            ulSpaces.InnerHtml += "<br /><br /><br /><br /><br /><br /><br />";
        }

    }



}