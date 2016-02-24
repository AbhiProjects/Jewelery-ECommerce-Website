using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Customer : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select customer_id,name,gender,location,phone,email_id,status FROM Customer ORDER BY customer_id";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditCustomer.aspx"); }

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
        Label Id = (Label)Grid.Rows[e.RowIndex].FindControl("lblEditCol1");
        TextBox txtName = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol2");
        DropDownList ddlGender = (DropDownList)Grid.Rows[e.RowIndex].FindControl("ddlEditCol3");
        Label lblCheckGender = (Label)Grid.Rows[e.RowIndex].FindControl("lblEditCol3");
        TextBox txtLocation = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol4");
        TextBox txtPhone = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol5");
        TextBox txtEmail = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol6");
        DropDownList ddlStatus = (DropDownList)Grid.Rows[e.RowIndex].FindControl("ddlEditCol7");
        Label lblCheckStatus = (Label)Grid.Rows[e.RowIndex].FindControl("lblEditCol7");

        TextBox txtId = new TextBox();
        txtId.Text = Id.Text;

        if (ddlGender.SelectedIndex == 0)
        {
            lblCheckGender.Visible = true;
            lblCheckGender.Text = "Please Select The Gender ";
            lblCheckGender.ForeColor = System.Drawing.Color.Red;
            lblCheckGender.Font.Bold = true;
            return;
        }
        else
            lblCheckGender.Visible = false;
        
        if (ddlStatus.SelectedIndex == 0)
        {
            lblCheckStatus.Visible = true;
            lblCheckStatus.Text = "Please Select The Status ";
            lblCheckStatus.ForeColor = System.Drawing.Color.Red;
            lblCheckStatus.Font.Bold = true;
            return;
        }
        else
            lblCheckStatus.Visible = false;

        TextBox txtGender = new TextBox();
        txtGender.Text = ddlGender.SelectedItem.Text.ToString();

        TextBox txtStatus = new TextBox();
        txtStatus.Text = ddlStatus.SelectedItem.Text.ToString();

        txtName.Text = txtName.Text.Trim();
        txtEmail.Text = txtEmail.Text.Trim();
        txtLocation.Text = txtLocation.Text.Trim();
        txtPhone.Text = txtPhone.Text.Trim();

        string UpdateQuery = "UPDATE Customer SET name = @Param1,gender=@Param2,location=@Param3,phone=@Param4,email_id=@Param5,status=@Param6 WHERE customer_id =@Param7";
        int statusUpdate = z.QueryExecute(UpdateQuery,txtName,txtGender,txtLocation,txtPhone,txtEmail,txtStatus,txtId);

        if (statusUpdate > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Customer Details Updated"); 

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

        Label lblEmail = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol6");
        TextBox txtEmail = new TextBox();
        txtEmail.Text = lblEmail.Text;

        TextBox txtStatus = new TextBox();
        txtStatus.Text = "INACTIVE";

        string DeleteQuery = "UPDATE Customer SET status=@Param1 WHERE customer_id=@Param2";
        int statusDelete = z.QueryExecute(DeleteQuery,txtStatus,txtId);

        string LoginQuery = "DELETE FROM Login WHERE UserName=@Param1";
        int statusCustomer = z.QueryExecute(LoginQuery, txtEmail);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Customer Deleted"); 

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