using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Administrator_Log : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select Top 50 Date_Time,Description FROM Log_Desc ORDER BY Sl_No DESC";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/Log.aspx"); }

        else
        {
            if (!IsPostBack)
            {

                DataSet ds = z.FillDataset(BindQuery);
                DataTable dt = new DataTable();

                dt.Columns.Add("Sl_No");
                dt.Columns.Add("Date_Time");
                dt.Columns.Add("Description");

                if (ds.Tables[0].Rows.Count > 0)
                {

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        dt.Rows.Add(i + 1, ds.Tables[0].Rows[i][0].ToString(), ds.Tables[0].Rows[i][1].ToString());
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
                    Grid.Rows[0].Cells[0].ColumnSpan = columncount + 1;
                    Grid.Rows[0].Cells[0].Text = "No Records Found";
                }

            }
        }
    } 
    }

    
        