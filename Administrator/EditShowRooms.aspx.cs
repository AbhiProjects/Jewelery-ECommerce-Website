using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_EditShowRooms : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select Name,Location,Phone FROM ShowRooms ORDER BY Id";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditShowRooms.aspx"); }

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
        lblResult.Visible = false;
        Grid.EditIndex = e.NewEditIndex;
        z.BindData(Grid, BindQuery);
    }
    protected void Grid_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        lblResult.Visible = false;
        Label lblName = (Label)Grid.Rows[e.RowIndex].FindControl("lblEditCol1");
        TextBox txtLocation = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol2");
        TextBox txtPhone = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol3");
      
        TextBox txtName = new TextBox();
        txtName.Text = lblName.Text;

        txtLocation.Text = txtLocation.Text.Trim();

        string UpdateQuery = "UPDATE ShowRooms SET Location=@Param1,Phone=@Param2 WHERE Name =@Param3";
        int statusUpdate = z.QueryExecute(UpdateQuery, txtLocation,txtPhone,txtName);

        if (statusUpdate > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "ShowRoom Details Updated");
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = lblName.Text + " Details Updated Successfully";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = lblName.Text + " Update Failure";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
    }

    protected void Grid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        lblResult.Visible = false;
        Grid.EditIndex = -1;
        z.BindData(Grid, BindQuery);
    }
    protected void Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        lblResult.Visible = false;
        Label lblName = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol1");
        TextBox txtName = new TextBox();
        txtName.Text = lblName.Text;

        string DeleteQuery = "DELETE FROM ShowRooms WHERE Name =@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtName);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "ShowRoom Details Deleted");
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = lblName.Text + " Details Deleted";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = lblName.Text + " Delete Failure";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
    }


}
