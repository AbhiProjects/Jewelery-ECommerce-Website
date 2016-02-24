using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Invoice : System.Web.UI.Page
{
    string id;

    Validator z = new Validator();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] == null)
        { Response.Redirect("Login.aspx"); }
        else
        {

            id = Request.QueryString["ID"];

            string FeaturedQuery = "SELECT Name,Product_Id,Purity,Weight,MakingCharge,Price From FeaturedProducts WHERE Product_Id='"+id+"'";
            DataTable dtFeatured = new DataTable();
            dtFeatured = z.FillDataTable(FeaturedQuery);

            string taxquery = "SELECT tax_amount from Tax";
            DataTable tax = new DataTable();
            tax = z.FillDataTable(taxquery);

            LblProductName.Text = dtFeatured.Rows[0][0].ToString();
            LblProductCode.Text = dtFeatured.Rows[0][1].ToString();
            LblPurity.Text = dtFeatured.Rows[0][2].ToString() + " KT";
            LblWeight.Text = dtFeatured.Rows[0][3].ToString()+" Grams";
            LblMakingCharge.Text = " ₹ " + dtFeatured.Rows[0][4].ToString();

            double cal = Double.Parse(dtFeatured.Rows[0][5].ToString());
            
            LblSubTotal.Text = " ₹ " + cal.ToString("0.00");

            LblTax1.Text = " ₹ " + ((Double.Parse(tax.Rows[0][0].ToString()) * cal)/100).ToString("0.00");
            LblTax2.Text = " ₹ " + ((Double.Parse(tax.Rows[1][0].ToString()) * cal)/100).ToString("0.00");
            LblTax3.Text = " ₹ " + ((Double.Parse(tax.Rows[2][0].ToString()) * cal)/100).ToString("0.00");

            double taxtotal = ((Double.Parse(tax.Rows[0][0].ToString())) + (Double.Parse(tax.Rows[1][0].ToString())) + (Double.Parse(tax.Rows[2][0].ToString())));

            double grandtotal = cal + (cal * taxtotal);

            LblGrandTotal.Text = " ₹ " + grandtotal.ToString("0.00");

        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Logout.aspx");
    }
    protected void btnMyPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyPage.aspx");
    }
}