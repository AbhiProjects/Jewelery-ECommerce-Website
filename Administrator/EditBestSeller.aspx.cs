using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Administrator_EditBestSeller : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindBestSeller = "Select Location,Name,Price FROM BestSeller ORDER BY Id";

    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditBestSeller.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                z.BindData(GridBestSeller, BindBestSeller);

            }
        }

    }

    protected void GridBestSeller_RowEditing(object sender, GridViewEditEventArgs e)
    {
        lblResult.Visible = false;
        GridBestSeller.EditIndex = e.NewEditIndex;
        z.BindData(GridBestSeller, BindBestSeller);
    }

    protected void GridBestSeller_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        lblResult.Visible = false;
        GridBestSeller.EditIndex = -1;
        z.BindData(GridBestSeller, BindBestSeller);
    }

    protected void GridBestSeller_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        lblResult.Visible = false;
        Image img = (Image)GridBestSeller.Rows[e.RowIndex].FindControl("imgEditCol21");
        TextBox txtName = (TextBox)GridBestSeller.Rows[e.RowIndex].FindControl("txtEditCol22");
        TextBox txtPrice = (TextBox)GridBestSeller.Rows[e.RowIndex].FindControl("txtEditCol23");
        Label lblCheck = (Label)GridBestSeller.Rows[e.RowIndex].FindControl("lblCheck");
        Label lblDuplicate = (Label)GridBestSeller.Rows[e.RowIndex].FindControl("lblDuplicate");

        TextBox txtLocation = new TextBox();
        txtLocation.Text = img.ImageUrl.ToString();

        txtName.Text = txtName.Text.Trim();

        if (txtName.Text.Equals(lblDuplicate.Text) == false)
        {
            string Duplicate = "SELECT Name FROM BestSeller";
            if (!z.DuplicateCheck(Duplicate, txtName, lblCheck, "This Image Name Already Exists"))
                return;
        }

        string UpdateQuery = "UPDATE BestSeller SET Name=@Param1,Price=@Param2 WHERE Location=@Param3";
        int statusUpdate = z.QueryExecute(UpdateQuery, txtName, txtPrice, txtLocation);

        if (statusUpdate > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Best Seller Updated");

            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = txtName.Text + " Details Updated Successfully";
            GridBestSeller.EditIndex = -1;
            z.BindData(GridBestSeller, BindBestSeller);

        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = txtName.Text + " Update Failure";
            GridBestSeller.EditIndex = -1;
            z.BindData(GridBestSeller, BindBestSeller);
        }
    }

    protected void GridBestSeller_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        lblResult.Visible = false;
        Image img = (Image)GridBestSeller.Rows[e.RowIndex].FindControl("imgItemCol21");
        Label lblName = (Label)GridBestSeller.Rows[e.RowIndex].FindControl("lblItemCol22");
        TextBox txtImage = new TextBox();
        txtImage.Text = img.ImageUrl.ToString();

        string DeleteQuery = "DELETE FROM BestSeller WHERE Location =@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtImage);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Best Seller Deleted");

            string location = "~/Images/BestSeller";
            string locationLarge = "~/Images/BestSeller/Large";
            int size = location.Length + 1;
            string filename = txtImage.Text.Remove(0, size);
            z.FolderImageDelete(location, filename);
            z.FolderImageDelete(locationLarge, filename);

            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = lblName.Text + " Details Deleted";
            
            GridBestSeller.EditIndex = -1;
            z.BindData(GridBestSeller, BindBestSeller);
        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = lblName.Text + " Delete Failure";
            GridBestSeller.EditIndex = -1;
            z.BindData(GridBestSeller, BindBestSeller);
        }
    }


}