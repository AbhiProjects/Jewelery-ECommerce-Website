using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Promotions : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select * FROM Promotions ORDER BY Id";
    
    protected void Page_Load(object sender, EventArgs e)
    {

if (Session["User"] == null)

{ Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/Promotions.aspx"); }

        else
        {
        if (!IsPostBack)
        {
            z.BindData(Grid, BindQuery);
        }
    }
}

    protected void Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        lblResult.Visible = false;
        Label Id = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol1");
        TextBox txtId = new TextBox();
        txtId.Text = Id.Text;

        string DeleteQuery = "DELETE FROM Promotions WHERE Code=@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtId);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Promotion Offer Deleted");
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

    protected void Grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lblResult.Visible = false;

        if (e.CommandName.Equals("Add"))
        {
            TextBox txtCode = (TextBox)Grid.FooterRow.FindControl("txtFottCol1");
            TextBox txtName = (TextBox)Grid.FooterRow.FindControl("txtFottCol2");
            TextBox txtOffer = (TextBox)Grid.FooterRow.FindControl("txtFottCol3");

            txtCode.Text = txtCode.Text.Trim();
            txtName.Text = txtName.Text.Trim();
            txtOffer.Text = txtOffer.Text.Trim();

            string Query = "INSERT INTO Promotions(Code,Name,Offer) Values(@Param1,@Param2,@Param3)";
            int Status = z.QueryExecute(Query, txtCode, txtName, txtOffer);

            if (Status > 0)
            {
                z.BindData(Grid, BindQuery);
                lblResult.Visible = true;
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = txtCode.Text + " Details Inserted Successfully";

                string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
                int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Promotion Offer Updated");
            }
            else
            {
                lblResult.Visible = true;
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = txtCode.Text + " Details Insertion Failure";
            }
        }
    }
}