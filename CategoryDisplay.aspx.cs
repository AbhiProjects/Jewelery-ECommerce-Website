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
    string Id;

    protected void Page_Load(object sender, EventArgs e)
    {
        Id = Request.QueryString["ID"];

        if (Id == null)
        { Response.Redirect("Home.aspx"); }

        else
  
        ImageBind();
    }

    void ImageBind()
    {
       
        string PriceQuery = "SELECT price FROM Rate WHERE category_id='"+Id +"'";
        DataTable dtPrice = new DataTable();
        dtPrice = z.FillDataTable(PriceQuery);

        string AttQuery = "SELECT weight_gm,making_charge,discount,product_attribute_name,product_id FROM Product_Attribute WHERE product_id IN(SELECT product_id FROM Product_Attribute WHERE product_subcategory_id IN(SELECT product_subcategory_id FROM Product_SubCategory WHERE category_id='" + Id + "'))";
        DataTable dtAtt = new DataTable();
        dtAtt = z.FillDataTable(AttQuery);

        string ImageQuery = "SELECT location_dot FROM Product_Images WHERE product_id IN(SELECT product_id FROM Product_Attribute WHERE product_subcategory_id IN(SELECT product_subcategory_id FROM Product_SubCategory WHERE category_id='" + Id + "'))";
        DataTable dtImage = new DataTable();
        dtImage = z.FillDataTable(ImageQuery);

        if (dtPrice.Rows.Count > 0 && dtAtt.Rows.Count > 0 && dtImage.Rows.Count > 0)
        {

            DataTable dt = new DataTable();

            dt.Columns.Add("Name");
            dt.Columns.Add("Amount");
            dt.Columns.Add("location_dot");
            dt.Columns.Add("Pro_Id");

            for (int i = 0; i < dtAtt.Rows.Count; i++)
            {
                double cal = (Double.Parse(dtPrice.Rows[0][0].ToString()) * Double.Parse(dtAtt.Rows[i][0].ToString())) + Double.Parse(dtAtt.Rows[i][1].ToString()) - ((Double.Parse(dtAtt.Rows[i][2].ToString()) * Double.Parse(dtAtt.Rows[i][1].ToString())) / 100);

                dt.Rows.Add(dtAtt.Rows[i][3].ToString(), cal.ToString("0.00"), dtImage.Rows[i][0].ToString(), dtAtt.Rows[i][4].ToString());
            }

            dtlFirstRow.DataSource = dt;
            dtlFirstRow.DataBind();
        }
    }
}