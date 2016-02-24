using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ScemeDescription : System.Web.UI.Page
{
    string BindQuery = "Select * FROM Scheme";
    Validator z=new Validator();

    void Bind()
    {
        DataSet ds = z.FillDataset(BindQuery);
        DataTable dt = new DataTable();

        dt.Columns.Add("Sl_No");
        dt.Columns.Add("Scheme");
        dt.Columns.Add("Amount");
        dt.Columns.Add("Duration");

        if (ds.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                dt.Rows.Add(i + 1, ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][2].ToString(), ds.Tables[0].Rows[i][3].ToString());
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
            Grid.Rows[0].Cells[0].ColumnSpan = columncount;
            Grid.Rows[0].Cells[0].Text = "No Scheme Available Now";
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
         }
        
    }

    protected void Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (Session["UserName"] == null)

        { Response.Redirect("Login.aspx?ADD=SchemeDisplay.aspx"); }

        else
        {

            string temp = Session["UserName"].ToString();

            Label lblName = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol2");
            Label lblDuration = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol4");

            string QueryTemp = "SELECT customer_id FROM CUSTOMER WHERE email_id='" + temp + "'";
            DataTable dtCst = z.FillDataTable(QueryTemp);

            string QueryId = "SELECT scheme_id FROM Scheme WHERE name='" + lblName.Text + "'";
            DataTable dtId = z.FillDataTable(QueryId);

            string Check = "SELECT customer_id FROM Scheme_Availed WHERE customer_id='" + dtCst.Rows[0][0].ToString() + "' AND scheme_id='" + dtId.Rows[0][0].ToString() + "'";
            DataTable dtCheck = z.FillDataTable(Check);

            if (dtCheck.Rows.Count != 0)
            {
                System.Web.HttpContext.Current.Response.Write("<script>alert('This Scheme Is Already Is Availed By You')</script>");
                return;
            }

            TextBox txtSId = new TextBox();
            txtSId.Text = dtId.Rows[0][0].ToString();

            TextBox txtCId = new TextBox();
            txtCId.Text = dtCst.Rows[0][0].ToString();

            TextBox txtStart = new TextBox();
            txtStart.Text = DateTime.Now.ToShortDateString();

            int x = int.Parse(lblDuration.Text);

            TextBox txtEnd = new TextBox();
            txtEnd.Text = DateTime.Now.AddMonths(x).ToShortDateString();

            string Query = "INSERT INTO Scheme_Availed(scheme_id,customer_id,start1,end1) VALUES(@Param1,@Param2,@Param3,@Param4)";
            int status = z.QueryExecute(Query, txtSId, txtCId, txtStart, txtEnd);


            if (status > 0)
            {
                System.Web.HttpContext.Current.Response.Write("<script>alert('Scheme Availed')</script>");
                Grid.EditIndex = -1;
                Bind();
            }
            else
            {
                Grid.EditIndex = -1;
                Bind();
            }
        }
    }
    }
