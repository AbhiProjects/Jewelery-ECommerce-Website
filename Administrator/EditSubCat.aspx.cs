using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;

public partial class Administrator_EditSubCat : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select * FROM Product_SubCategory ORDER BY product_subcategory_id";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditSubCat.aspx"); }

        else
        {

            if (!IsPostBack)
            {
                z.BindData(Grid, BindQuery);
            }
        }
    }

    protected void Grid_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Grid.EditIndex = e.NewEditIndex;
        z.BindData(Grid, BindQuery);
    }
    protected void Grid_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label Id = (Label)Grid.Rows[e.RowIndex].FindControl("lblEditCol1");
        Label ProductID = (Label)Grid.Rows[e.RowIndex].FindControl("lblEditCol2");
        TextBox txtProductSubCatName = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol3");
        Label lblCheck = (Label)Grid.Rows[e.RowIndex].FindControl("lblCheck");
        Label lblDuplicate = (Label)Grid.Rows[e.RowIndex].FindControl("lblDuplicate");
        TextBox txtId = new TextBox();
        TextBox txtProdId = new TextBox();

        txtId.Text = Id.Text;
        txtProdId.Text = ProductID.Text;

        txtProductSubCatName.Text = txtProductSubCatName.Text.Trim();

        string UpdateQuery = "UPDATE Product_SubCategory SET product_subcategory_name = @Param1 WHERE product_subcategory_id =@Param2 AND category_id=@Param3";
        int statusUpdate = z.QueryExecute(UpdateQuery, txtProductSubCatName, txtId, txtProdId);

        if (statusUpdate > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Product Subcategory Updated"); 

            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = Id.Text + " Details Updated Successfully";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
        else
        {
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = Id.Text + " Update Failure";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
    }

    protected void Grid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Grid.EditIndex = -1;
        z.BindData(Grid, BindQuery);
    }
    protected void Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label Id = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol1");
        Label Cat_ID = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol2");
        TextBox txtId = new TextBox();
        TextBox txtCatId = new TextBox();
        txtId.Text = Id.Text;
        txtCatId.Text = Cat_ID.Text;

        string Query = "SELECT product_id FROM Product_Attribute WHERE  product_subcategory_id ='" + txtId.Text + "';"; 
        DataSet ds = z.FillDataset(Query);
        int RowCount = ds.Tables[0].Rows.Count;

        string DeleteQuery = "DELETE FROM Product_Attribute WHERE product_subcategory_id=@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtId);

        for (int i = 0; i < RowCount; i++)
        {
            TextBox txtDelete = new TextBox();
            txtDelete.Text = ds.Tables[0].Rows[i][0].ToString();

            string DeleteQueryLoop = "DELETE FROM Product_Images WHERE product_id=@Param1";
            z.QueryExecute(DeleteQueryLoop, txtDelete);

            DeleteQueryLoop = "DELETE FROM Product_Category WHERE product_id=@Param1";
            z.QueryExecute(DeleteQueryLoop, txtDelete);

        }

        DeleteQuery = "DELETE FROM Product_SubCategory WHERE product_subcategory_id =@Param1 AND category_id=@Param2";
        statusDelete = z.QueryExecute(DeleteQuery, txtId, txtCatId);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Product Subcategory Deleted"); 

            lblResult.ForeColor = Color.Green;
            lblResult.Text = Id.Text + " Details Deleted";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
        else
        {
            lblResult.ForeColor = Color.Red;
            lblResult.Text = Id.Text + " Delete Failure";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
    }
}