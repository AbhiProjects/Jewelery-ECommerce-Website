using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;

public partial class Administrator_EditCat : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select * FROM Rate ORDER BY category_id";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditCat.aspx"); }

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
        TextBox txtName = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol2");
        TextBox txtPrice = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol3");
        Label lblCheck = (Label)Grid.Rows[e.RowIndex].FindControl("lblCheck");
        Label lblDuplicate = (Label)Grid.Rows[e.RowIndex].FindControl("lblDuplicate");
        TextBox txtId = new TextBox();
        txtId.Text = Id.Text;

        txtName.Text = txtName.Text.Trim();

        if (txtName.Text.Equals(lblDuplicate.Text) == false)
        {
            string Duplicate = "SELECT category_name FROM Rate";
            if (!z.DuplicateCheck(Duplicate, txtName, lblCheck, "This Category Name Already Exists"))
                return;
        }

        string UpdateQuery = "UPDATE Rate SET category_name=@Param1,price=@Param2 WHERE category_id =@Param3";
        int statusUpdate = z.QueryExecute(UpdateQuery, txtName,txtPrice,txtId);

        if (statusUpdate > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Product Category Updated"); 

            lblResult.ForeColor = Color.Green;
            lblResult.Text = Id.Text + " Details Updated Successfully";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
        else
        {
            lblResult.ForeColor = Color.Red;
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
        TextBox txtId = new TextBox();
        txtId.Text = Id.Text;

        string QueryCat = "SELECT product_subcategory_id FROM Product_SubCategory WHERE  category_id ='" + txtId.Text + "';";
        DataSet dsCat = z.FillDataset(QueryCat);
        int RowCountCat = dsCat.Tables[0].Rows.Count;

        string QuerySub = "SELECT product_id FROM Product_Attribute WHERE product_subcategory_id IN(" + "SELECT product_subcategory_id FROM Product_SubCategory WHERE  category_id ='" + txtId.Text + "');";
        DataSet dsSubCat = z.FillDataset(QuerySub);
        int RowCountSubCat = dsSubCat.Tables[0].Rows.Count;

        for (int i = 0; i < RowCountCat; i++)
        {
            TextBox txtDelete = new TextBox();
            txtDelete.Text = dsCat.Tables[0].Rows[i][0].ToString();

            string DeleteQueryLoop = "DELETE FROM Product_Attribute WHERE product_subcategory_id=@Param1";
            z.QueryExecute(DeleteQueryLoop, txtDelete);

        }

        for (int i = 0; i < RowCountSubCat; i++)
        {
            TextBox txtDelete = new TextBox();
            txtDelete.Text = dsSubCat.Tables[0].Rows[i][0].ToString();

            string DeleteQueryLoop = "DELETE FROM Product_Images WHERE product_id=@Param1";
            z.QueryExecute(DeleteQueryLoop, txtDelete);

            DeleteQueryLoop = "DELETE FROM Product_Category WHERE product_id=@Param1";
            z.QueryExecute(DeleteQueryLoop, txtDelete);

        }

        for (int i = 0; i < RowCountCat; i++)
        {
            TextBox txtDelete = new TextBox();
            txtDelete.Text = dsCat.Tables[0].Rows[i][0].ToString();

           string DeleteQueryLoop = "DELETE FROM Product_SubCategory WHERE product_subcategory_id =@Param1 AND category_id=@Param2";
            z.QueryExecute(DeleteQueryLoop,txtDelete,txtId);
        }

        string DeleteQuery = "DELETE FROM Rate WHERE category_id =@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtId);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Product Category Deleted"); 

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