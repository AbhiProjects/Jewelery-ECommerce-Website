using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Description1 : System.Web.UI.Page
{
    Validator z = new Validator();

    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["ID"];
        
        if (id == null)
        {
            Response.Redirect("Home.aspx");

        }

        getDescDownRight();
        getDescHeader();
        getDescDownLeft();
        getDescImage();
        getZoomImage();
        
    }

    void getDescDownRight()
    {
        string Query = "SELECT Location_Dot,Product_Id,Name,Price FROM FeaturedProducts";
        DataTable dt = new DataTable();
        dt = z.FillDataTable(Query);
        
        DataTable dtBind = new DataTable();
        Random r = new Random();

        dtBind.Columns.Add("Location_Dot");
        dtBind.Columns.Add("Product_Id");
        dtBind.Columns.Add("Name");
        dtBind.Columns.Add("Price");
        
 
            for (int i = 0; i <3; i++)
            {
                int n = r.Next(0, dt.Rows.Count - 1);
                dtBind.Rows.Add(dt.Rows[n][0].ToString(),dt.Rows[n][1].ToString(),dt.Rows[n][2].ToString(),dt.Rows[n][3].ToString());
            }

        dtlFirstRow.DataSource = dtBind;
        dtlFirstRow.DataBind();
    }

    void getDescHeader()
    {
        id = Request.QueryString["ID"];
        ulDescHeader.InnerHtml = "";
        
        DataSet dset = new DataSet();
        string Query = "SELECT * FROM Product_Attribute WHERE product_id='" + id + "'";
        dset = z.FillDataset(Query);

        string AllQuery = "SELECT Product_SubCategory.category_id,Product_Attribute.product_subcategory_id,Product_Attribute.product_id,Product_Attribute.product_attribute_name,Rate.price,Product_Attribute.weight_gm,Product_Attribute.making_charge,Product_Attribute.discount,Product_Attribute.purity_carret FROM Rate,Product_SubCategory,Product_Attribute WHERE (Product_Attribute.product_subcategory_id= Product_SubCategory.product_subcategory_id AND Rate.category_id=Product_SubCategory.category_id AND Product_Attribute.product_id='" + id + "')";
        DataTable dtAll = new DataTable();
        dtAll = z.FillDataTable(AllQuery);

        double cal = (Double.Parse(dtAll.Rows[0][4].ToString()) * Double.Parse(dtAll.Rows[0][5].ToString())) + Double.Parse(dtAll.Rows[0][6].ToString()) - ((Double.Parse(dtAll.Rows[0][7].ToString()) * Double.Parse(dtAll.Rows[0][6].ToString())) / 100);

       
        ulDescHeader.InnerHtml += "<h1 class='title'>" + dset.Tables[0].Rows[0]["product_attribute_name"] + "</h1>";
        ulDescHeader.InnerHtml += "<font name='Calibri' size=10><h2 class='product-code'>" + dset.Tables[0].Rows[0]["description"] + "</h2></font>";
        ulDescHeader.InnerHtml += "<div id='short_desc' class='sub-title'>" + "Purity: "+dset.Tables[0].Rows[0]["purity_carret"] + "KT" + "</div>";
        ulDescHeader.InnerHtml += "<div class='content'>";
        ulDescHeader.InnerHtml += "<div class='price-wrapper with-customise'>";
        ulDescHeader.InnerHtml += "<span class='floatr desc-customise-wrapper'>";
        ulDescHeader.InnerHtml += "<span id='customizationSupportedText' class='floatr' style='display: none'> <a href='#'>Customise this product</a></span>";
        ulDescHeader.InnerHtml += "</span>";
        ulDescHeader.InnerHtml += "<span class='price'> <span class='our_price_display'> <span class='WebRupee'>₹ </span> <span id='our_price_display'>"+cal.ToString("0.00")+"</span>";
        ulDescHeader.InnerHtml += "</span>";
        ulDescHeader.InnerHtml += "</span>";

        ulDescHeader.InnerHtml += "</div>";
        ulDescHeader.InnerHtml += "</div>";
        ulDescHeader.InnerHtml += "<div class='description' id='longDescriptionInRightPane' style='display:none' class='sub-title'>" + dset.Tables[0].Rows[0]["description"] + "</div>";
        ulDescHeader.InnerHtml += "<p class='hidden' id='customizationidField'>";
        ulDescHeader.InnerHtml += "<input type='hidden' id='customizationid' name='customizationid' value='223404' />";
        ulDescHeader.InnerHtml += "</p>";

        
    }


    void getDescDownLeft()
    {
        id = Request.QueryString["ID"];
        ulDescDownLeft.InnerHtml = "";
        DataSet dset = new DataSet();
        string Query = "SELECT * FROM Product_Attribute WHERE product_id='" + id + "'";
        dset = z.FillDataset(Query);

        
        ulDescDownLeft.InnerHtml += "<table width='100%' border='0' cellspacing='0' cellpadding='0' style='padding:10px 10px 10px'>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='products'>Product Details<br><br></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Product Code<span class='p_float'>" + dset.Tables[0].Rows[0]["product_id"] + "</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Product Name<span class='p_float'>" + dset.Tables[0].Rows[0]["product_attribute_name"] + "</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Purity <span class='p_float'>" + dset.Tables[0].Rows[0]["purity_carret"] + "KT</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Weight <span class='p_float'>" + dset.Tables[0].Rows[0]["weight_gm"] + "GM.</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>";
        ulDescDownLeft.InnerHtml += "Making Charge <span class='p_float'>" + dset.Tables[0].Rows[0]["making_charge"] + "</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Discount <span class='p_float'>" + dset.Tables[0].Rows[0]["discount"] + "</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";

        ulDescDownLeft.InnerHtml += "</table>";
        ulDescDownLeft.InnerHtml += "<table width='100%' border='0' cellspacing='0' cellpadding='0' style='padding:10px 10px 10px 10px'>";
        ulDescDownLeft.InnerHtml += "</table>";
        ulDescDownLeft.InnerHtml +="<table width='100%' border='0' cellspacing='0' cellpadding='0' style='padding:10px 10px 10px 10px'>";
        ulDescDownLeft.InnerHtml +="</table>";
        
    }

    void getDescImage()
    {
        id = Request.QueryString["ID"];
        
         string AllQuery = "SELECT Product_SubCategory.category_id,Product_Attribute.product_subcategory_id,Product_Attribute.product_id,Product_Attribute.product_attribute_name,Rate.price,Product_Attribute.weight_gm,Product_Attribute.making_charge,Product_Attribute.discount,Product_Images.location_dot FROM Rate,Product_SubCategory,Product_Attribute,Product_Images WHERE (Product_Attribute.product_subcategory_id= Product_SubCategory.product_subcategory_id AND Rate.category_id=Product_SubCategory.category_id AND Product_Attribute.product_id ='"+id+"' AND Product_Attribute.product_id=Product_Images.product_id)";
        DataTable dtAll = new DataTable();
        dtAll = z.FillDataTable(AllQuery);

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

       
    }


    void getZoomImage()
    {
      id = Request.QueryString["ID"];
        
         string AllQuery = "SELECT Product_SubCategory.category_id,Product_Attribute.product_subcategory_id,Product_Attribute.product_id,Product_Attribute.product_attribute_name,Rate.price,Product_Attribute.weight_gm,Product_Attribute.making_charge,Product_Attribute.discount,Product_Images.location_dot FROM Rate,Product_SubCategory,Product_Attribute,Product_Images WHERE (Product_Attribute.product_subcategory_id= Product_SubCategory.product_subcategory_id AND Rate.category_id=Product_SubCategory.category_id AND Product_Attribute.product_id ='"+id+"' AND Product_Attribute.product_id=Product_Images.product_id)";
        DataTable dtAll = new DataTable();
        dtAll = z.FillDataTable(AllQuery);

        string temp=dtAll.Rows[0][8].ToString().Remove(0,11);
        string img="./Products/"+temp;
        string imgzoom="./Products/Large/"+temp;
        ulImageZoom.InnerHtml = "";
        ulImageZoom.InnerHtml ="<img id='img1' src='"+img+"'"+"height='400' width='420' data-zoom-image='"+imgzoom+"'/>";
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        id = Request.QueryString["ID"];
        string temp;

        if (Session["UserName"] == null)
        {
            temp = "Login.aspx?ADD=Description.aspx?ID=" + id;
            Response.Redirect(temp); 
        }

        else
        {
            temp = "Invoice.aspx?ID=" + id;
            Response.Redirect(temp);
        }

    }

   


}