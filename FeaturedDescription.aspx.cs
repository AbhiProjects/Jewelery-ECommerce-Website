using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Description : System.Web.UI.Page
{
    Validator z = new Validator();

    string ID;

    protected void Page_Load(object sender, EventArgs e)
    {
        ID = Request.QueryString["ID"];
        if (ID == null)
        {
            Response.Redirect("Home.aspx");

        }

        getDescHeader();
        getDescDownLeft();
        getDescDownRight();
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


        for (int i = 0; i < 3; i++)
        {
            int n = r.Next(0, dt.Rows.Count - 1);
            dtBind.Rows.Add(dt.Rows[n][0].ToString(), dt.Rows[n][1].ToString(), dt.Rows[n][2].ToString(), dt.Rows[n][3].ToString());
        }

        dtlFirstRow.DataSource = dtBind;
        dtlFirstRow.DataBind();
    }

    void getDescHeader()
    {
        ID = Request.QueryString["ID"];
        ulDescHeader.InnerHtml = "";
        DataSet dset = new DataSet();
        string Query = "SELECT * FROM FeaturedProducts WHERE Product_Id='" + ID + "'";
        dset = z.FillDataset(Query);

        string AllQuery = "SELECT * FROM FeaturedProducts WHERE Product_Id='" + ID + "'"; ;
        DataTable dtAll = new DataTable();
        dtAll = z.FillDataTable(AllQuery);

       


        ulDescHeader.InnerHtml += "<h1 class='title'>" + dset.Tables[0].Rows[0]["Name"] + "</h1>";
        ulDescHeader.InnerHtml += "<font name='Calibri' size=10><h2 class='product-code'>" + dset.Tables[0].Rows[0]["Description"] + "</h2></font>";
        ulDescHeader.InnerHtml += "<div id='short_desc' class='sub-title'>" + dset.Tables[0].Rows[0]["Purity"] + "KT" + "</div>";
        ulDescHeader.InnerHtml += "<div class='content'>";
        ulDescHeader.InnerHtml += "<div class='price-wrapper with-customise'>";
        ulDescHeader.InnerHtml += "<span class='floatr desc-customise-wrapper'>";
        ulDescHeader.InnerHtml += "<span id='customizationSupportedText' class='floatr' style='display: none'> <a href='#'>Customise this product</a></span>";
        ulDescHeader.InnerHtml += "</span>";
        ulDescHeader.InnerHtml += "<span class='price'> <span class='our_price_display'> <span class='WebRupee'>₹ </span> <span id='our_price_display'>" + dset.Tables[0].Rows[0]["Price"].ToString() + "</span>";
        ulDescHeader.InnerHtml += "</span>";
        ulDescHeader.InnerHtml += "</span>";

        ulDescHeader.InnerHtml += "</div>";
        ulDescHeader.InnerHtml += "</div>";
        ulDescHeader.InnerHtml += "<div class='description' id='longDescriptionInRightPane' style='display:none'>" + dset.Tables[0].Rows[0]["Description"] + "</div>";
        ulDescHeader.InnerHtml += "<p class='hidden' id='customizationidField'>";
        ulDescHeader.InnerHtml += "<input type='hidden' id='customizationid' name='customizationid' value='223404' />";
        ulDescHeader.InnerHtml += "</p>";
        

    }


    void getDescDownLeft()
    {
        ID = Request.QueryString["ID"];
        ulDescDownLeft.InnerHtml = "";
        DataSet dset = new DataSet();
        string Query = "SELECT * FROM FeaturedProducts WHERE Product_Id='" + ID + "'";
        dset = z.FillDataset(Query);


        ulDescDownLeft.InnerHtml += "<table width='100%' border='0' cellspacing='0' cellpadding='0' style='padding:10px 10px 10px'>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='products'>Product Details<br><br></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Product Code<span class='p_float'>" + dset.Tables[0].Rows[0]["Product_Id"] + "</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Product Name<span class='p_float'>" + dset.Tables[0].Rows[0]["Name"] + "</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Purity <span class='p_float'>" + dset.Tables[0].Rows[0]["Purity"] + "KT</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Weight <span class='p_float'>" + dset.Tables[0].Rows[0]["Weight"] + "GM.</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>";
        ulDescDownLeft.InnerHtml += "Making Charge <span class='p_float'>" + dset.Tables[0].Rows[0]["MakingCharge"] + "</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";
        ulDescDownLeft.InnerHtml += "<tr>";
        ulDescDownLeft.InnerHtml += "<td class='p_details'>Discount <span class='p_float'>" + dset.Tables[0].Rows[0]["Discount"] + "</span></td>";
        ulDescDownLeft.InnerHtml += "</tr>";

        ulDescDownLeft.InnerHtml += "</table>";
        ulDescDownLeft.InnerHtml += "<table width='100%' border='0' cellspacing='0' cellpadding='0' style='padding:10px 10px 10px 10px'>";
        ulDescDownLeft.InnerHtml += "</table>";
        ulDescDownLeft.InnerHtml += "<table width='100%' border='0' cellspacing='0' cellpadding='0' style='padding:10px 10px 10px 10px'>";
        ulDescDownLeft.InnerHtml += "</table>";

    }

    void getDescImage()
    {
        ID = Request.QueryString["ID"];
        
        string AllQuery = "SELECT * FROM FeaturedProducts WHERE Product_Id='" + ID + "'"; ;
        DataTable dtAll = new DataTable();
        dtAll = z.FillDataTable(AllQuery);

        DataTable dt = new DataTable();

        dt.Columns.Add("Name");
        dt.Columns.Add("Amount");
        dt.Columns.Add("location_dot");
        dt.Columns.Add("Pro_Id");

        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ID = Request.QueryString["ID"];
        string temp;

        if (Session["UserName"] == null)
        {
            temp = "Login.aspx?ADD=FeaturedDescription.aspx?ID=" + ID;
            Response.Redirect(temp);
        }

        else
        {
            temp = "FeaturedInvoice.aspx?ID=" + ID;
            Response.Redirect(temp);

        }
    }

    void getZoomImage()
    {
        ID = Request.QueryString["ID"];

        string AllQuery = "SELECT Location_Dot FROM FeaturedProducts WHERE Product_Id='" + ID + "'";
        DataTable dtAll = new DataTable();
        dtAll = z.FillDataTable(AllQuery);

        string temp = dtAll.Rows[0][0].ToString().Remove(0, 26);
        string img = "./Images/FeaturedProducts/" + temp;
        string imgzoom = "./Images/FeaturedProducts/Large/" + temp;
        ulImageZoom.InnerHtml = "";
        ulImageZoom.InnerHtml = "<img id='img1' src='" + img + "'" + "height='400' width='420' data-zoom-image='" + imgzoom + "'/>";
    }

    
}