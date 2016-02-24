using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class Administrator_EditFeaturedProducts : System.Web.UI.Page
{
    Validator z = new Validator();

    string BindFeaturedProducts = "Select Location,Name,Price FROM FeaturedProducts ORDER BY Id";

    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditFeaturedProducts.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                z.BindData(GridFeaturedProducts, BindFeaturedProducts);

            }
        }
    }


    protected void GridFeaturedProducts_RowEditing(object sender, GridViewEditEventArgs e)
    {
        lblResult.Visible = false;
        GridFeaturedProducts.EditIndex = e.NewEditIndex;
        z.BindData(GridFeaturedProducts, BindFeaturedProducts);
    }

    protected void GridFeaturedProducts_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        lblResult.Visible = false;
        GridFeaturedProducts.EditIndex = -1;
        z.BindData(GridFeaturedProducts, BindFeaturedProducts);
    }

    protected void GridFeaturedProducts_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        lblResult.Visible = false;
        Image img = (Image)GridFeaturedProducts.Rows[e.RowIndex].FindControl("imgEditCol41");

        TextBox txtName = (TextBox)GridFeaturedProducts.Rows[e.RowIndex].FindControl("txtEditCol42");
        TextBox txtPrice = (TextBox)GridFeaturedProducts.Rows[e.RowIndex].FindControl("txtEditCol43");
        Label lblCheck = (Label)GridFeaturedProducts.Rows[e.RowIndex].FindControl("lblCheck");
        Label lblDuplicate = (Label)GridFeaturedProducts.Rows[e.RowIndex].FindControl("lblDuplicate");

        TextBox txtLocation = new TextBox();
        txtLocation.Text = img.ImageUrl.ToString();

        txtName.Text = txtName.Text.Trim();

        if (txtName.Text.Equals(lblDuplicate.Text) == false)
        {
            string Duplicate = "SELECT Name FROM FeaturedProducts";
            if (!z.DuplicateCheck(Duplicate, txtName, lblCheck, "This Image Name Already Exists"))
                return;
        }

        string UpdateQuery = "UPDATE FeaturedProducts SET Name=@Param1,Price=@Param2 WHERE Location=@Param3";
        int statusUpdate = z.QueryExecute(UpdateQuery, txtName, txtPrice, txtLocation);

        if (statusUpdate > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Featured Products Updated");
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = txtName.Text + " Details Updated Successfully";
            GridFeaturedProducts.EditIndex = -1;
            z.BindData(GridFeaturedProducts, BindFeaturedProducts);

        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = txtName.Text + " Update Failure";
            GridFeaturedProducts.EditIndex = -1;
            z.BindData(GridFeaturedProducts, BindFeaturedProducts);

        }
    }



    protected void GridFeaturedProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        lblResult.Visible = false;
        Image img = (Image)GridFeaturedProducts.Rows[e.RowIndex].FindControl("imgItemCol41");
        Label lblName = (Label)GridFeaturedProducts.Rows[e.RowIndex].FindControl("lblItemCol42");
        TextBox txtImage = new TextBox();
        txtImage.Text = img.ImageUrl.ToString();

        string DeleteQuery = "DELETE FROM FeaturedProducts WHERE Location =@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtImage);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Featured Products Deleted");

            string location = "~/Images/FeaturedProducts";
            string locationLarge = "~/Images/FeaturedProducts/Large";
            int size = location.Length + 1;
            string filename = txtImage.Text.Remove(0, size);
            z.FolderImageDelete(location, filename);
            z.FolderImageDelete(locationLarge, filename);
            
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text =lblName.Text +" Details Deleted";

            GridFeaturedProducts.EditIndex = -1;
            z.BindData(GridFeaturedProducts, BindFeaturedProducts);

        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text =lblName.Text + " Delete Failure";
            GridFeaturedProducts.EditIndex = -1;
            z.BindData(GridFeaturedProducts, BindFeaturedProducts);
        }
    }


}