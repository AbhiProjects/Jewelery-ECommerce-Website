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

            string AllQuery = "SELECT Product_SubCategory.category_id,Product_Attribute.product_subcategory_id,Product_Attribute.product_id,Product_Attribute.product_attribute_name,Rate.price,Product_Attribute.weight_gm,Product_Attribute.making_charge,Product_Attribute.discount,Product_Attribute.purity_carret FROM Rate,Product_SubCategory,Product_Attribute WHERE (Product_Attribute.product_subcategory_id= Product_SubCategory.product_subcategory_id AND Rate.category_id=Product_SubCategory.category_id AND Product_Attribute.product_id='" + id + "')";
            DataTable dtAll = new DataTable();
            dtAll = z.FillDataTable(AllQuery);

            double cal = (Double.Parse(dtAll.Rows[0][4].ToString()) * Double.Parse(dtAll.Rows[0][5].ToString())) + Double.Parse(dtAll.Rows[0][6].ToString()) - ((Double.Parse(dtAll.Rows[0][7].ToString()) * Double.Parse(dtAll.Rows[0][6].ToString())) / 100);


            string catname = "SELECT category_name,price FROM Rate WHERE category_id='" + dtAll.Rows[0][0].ToString() + "'";
            DataTable dtcatname = new DataTable();
            dtcatname = z.FillDataTable(catname);

            string taxquery = "SELECT tax_amount from Tax";
            DataTable tax = new DataTable();
            tax = z.FillDataTable(taxquery);

            LblProductName.Text = dtAll.Rows[0][3].ToString();
            LblProductCode.Text = dtAll.Rows[0][2].ToString();
            LblCategory.Text = dtcatname.Rows[0][0].ToString();
            LblRate.Text = " ₹ "+dtcatname.Rows[0][1].ToString()+" Per Gram";
            LblPurity.Text = dtAll.Rows[0][8].ToString() + " KT";
            LblWeight.Text = dtAll.Rows[0][5].ToString()+" Grams";
            LblMakingCharge.Text = " ₹ " + dtAll.Rows[0][6].ToString();

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