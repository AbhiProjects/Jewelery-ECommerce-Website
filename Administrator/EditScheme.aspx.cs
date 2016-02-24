using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Administrator_SchemeEdit : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select * FROM Scheme ORDER BY scheme_id";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditScheme.aspx"); }

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
        Label Id= (Label)Grid.Rows[e.RowIndex].FindControl("lblEditCol1");
        TextBox txtName = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol2");
        TextBox txtAmount = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol3");
        TextBox txtDuration = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol4");
        Label lblCheck = (Label)Grid.Rows[e.RowIndex].FindControl("lblCheck");
        Label lblDuplicate = (Label)Grid.Rows[e.RowIndex].FindControl("lblDuplicate");
        TextBox txtId = new TextBox();
        txtId.Text = Id.Text;

        txtName.Text = txtName.Text.Trim();
        txtAmount.Text = txtAmount.Text.Trim();
        txtDuration.Text = txtDuration.Text.Trim();

        if (txtName.Text.Equals(lblDuplicate.Text) == false)
        {
            string Duplicate = "SELECT name FROM Scheme";
            if (!z.DuplicateCheck(Duplicate, txtName, lblCheck, "This Scheme Name Already Exists"))
                return;
        }

        string UpdateQuery = "UPDATE Scheme SET name = @Param1,amount=@Param2,duration=@Param3 WHERE scheme_id =@Param4";
        int statusUpdate = z.QueryExecute(UpdateQuery, txtName, txtAmount, txtDuration, txtId);

        if (statusUpdate > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Scheme Updated"); 

            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = Id.Text + " Details Updated Successfully";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = Id.Text + " Update Failure";
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
        Label Id = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol1");
        TextBox txtId = new TextBox();
        txtId.Text = Id.Text;

        string DeleteQuery = "DELETE FROM Scheme WHERE scheme_id =@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery,txtId);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Scheme Deleted"); 

            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = Id.Text + " Details Deleted";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = Id.Text + " Delete Failure";
            Grid.EditIndex = -1;
            z.BindData(Grid, BindQuery);
        }
    }

}