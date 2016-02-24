using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Administrator_Dashboard : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select Date,Name,Email,Subject,Description FROM Feedback";

    void bind()
    {
        DataSet ds = z.FillDataset(BindQuery);
        DataTable dt = new DataTable();

        dt.Columns.Add("Sl_No");
        dt.Columns.Add("Date");
        dt.Columns.Add("Name");
        dt.Columns.Add("Email");
        dt.Columns.Add("Subject");
        dt.Columns.Add("Description");
        
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                dt.Rows.Add(i + 1, ds.Tables[0].Rows[i][0].ToString(), ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][2].ToString(), ds.Tables[0].Rows[i][3].ToString(), ds.Tables[0].Rows[i][4].ToString());
            }

            Grid.DataSource = dt;
            Grid.DataBind();
        }

        else
        {
            dt.Rows.Add(dt.NewRow());
            Grid.DataSource = dt;
            Grid.DataBind();
            int columncount = Grid.Rows[0].Cells.Count;
            Grid.Rows[0].Cells.Clear();
            Grid.Rows[0].Cells.Add(new TableCell());
            Grid.Rows[0].Cells[0].ColumnSpan = columncount+1;
            Grid.Rows[0].Cells[0].Text = "No Records Found";
        }


    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        { Response.Redirect("~/Administrator/AdminLogin.aspx"); }

        else
        {

        if (!IsPostBack)
        {
            bind();
        }
    }
    }

    #region FeedBack

    protected void Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lblDescription = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol6");
        TextBox txtDescription = new TextBox();
        txtDescription.Text = lblDescription.Text;

        string DeleteQuery = "DELETE FROM Feedback WHERE Description=@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtDescription);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "FeedBack Deleted");

            Grid.EditIndex = -1;
            bind();

        }
        else
        {
            Grid.EditIndex = -1;
            bind();
        }
    }

    #endregion

}