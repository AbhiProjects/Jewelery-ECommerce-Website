using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ScemeDescription : System.Web.UI.Page
{
    string BindQuery = "Select * FROM ShowRooms";
    Validator z=new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        DataSet ds = z.FillDataset(BindQuery);
        DataTable dt = new DataTable();

        dt.Columns.Add("Sl_No");
        dt.Columns.Add("Name");
        dt.Columns.Add("Location");
        dt.Columns.Add("Phone");
        
            if (ds.Tables[0].Rows.Count > 0)
            {
            for (int i = 0; i <ds.Tables[0].Rows.Count; i++)
            {
                dt.Rows.Add(i+1,ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][2].ToString(),ds.Tables[0].Rows[i][3].ToString());
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
            Grid.Rows[0].Cells[0].Text = "We Will Be Opening Our ShowRooms Soon";
        }

    }
        
    }
    }
