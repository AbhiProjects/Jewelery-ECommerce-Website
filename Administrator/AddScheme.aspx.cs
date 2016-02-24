using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Administrator_SchemeAdd : System.Web.UI.Page
{
    Validator z = new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddScheme.aspx"); }

        else
        {
                if (!IsPostBack)
                {
                    string Query;

                    int LastRow;
                    lblCheckSchemeName.Visible = false;

                    Query = "SELECT scheme_id FROM Scheme";
                    DataSet ds = z.FillDataset(Query);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        string Row = ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1][0].ToString();
                        Row = Row.Remove(0, 4);
                        LastRow = Convert.ToInt32(Row) + 1;
                    }
                    else
                    {
                        LastRow = 1;
                    }
                    
                    txtSchemeId.Text = "SCH " + LastRow;
                }
    }
        }
    
    protected void btnSave_Click(object sender, EventArgs e)
    {
        lblCheckSchemeName.Visible = false;
        txtSchemeName.Text = txtSchemeName.Text.Trim();

        string Duplicate = "SELECT name FROM Scheme";
        if (!z.DuplicateCheck(Duplicate, txtSchemeName, lblCheckSchemeName, "This Scheme Name Already Exists"))
            return;
        
        string InsertScheme = "INSERT INTO Scheme VALUES(@Param1,@Param2,@Param3,@Param4);";
        int statusScheme = z.QueryExecute(InsertScheme, txtSchemeId, txtSchemeName, txtAmount, txtTenure);

        if (statusScheme > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Scheme Inserted"); 

            //btnSave.Text = "Scheme Has Been Added";
            btnSave.Enabled = false;
            txtSchemeName.Enabled = false;
            txtAmount.Enabled = false;
            txtTenure.Enabled = false;
            lblDisplay.Text = "Scheme Has Been Added & Database Updated";
            lblDisplay.Visible = true;
        }
        else
        {
            lblDisplay.Text = "Database Error";
            lblDisplay.Visible = true;
            lblDisplay.ForeColor = System.Drawing.Color.Red;
            return;
        }
    }
    
}