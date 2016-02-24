using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Default : System.Web.UI.Page
{
    Validator z = new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddShowRooms.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                lblCheckName.Visible = false;
                lblDisplay.Visible = false;
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        txtShowName.Text = txtShowName.Text.Trim();
        txtShowLocation.Text = txtShowLocation.Text.Trim();
        
        string Duplicate = "SELECT Name FROM ShowRooms";
        if (!z.DuplicateCheck(Duplicate, txtShowName, lblCheckName, "This ShowRoom's Name Already Exists"))
           return;

        string Query = "INSERT INTO ShowRooms(Name,Location,Phone) VALUES(@Param1,@Param2,@Param3);";
        int statusRate = z.QueryExecute(Query,txtShowName,txtShowLocation,txtShowMobile);

        if (statusRate > 0)
        {
            //btnSave.Text = "Database Updated";
            btnSave.Enabled = false;
            txtShowName.Enabled = false;
            txtShowLocation.Enabled = false;
            txtShowMobile.Enabled = false;

            lblDisplay.Text = "ShowRoom Details Has Been Added & Database Updated";
            lblDisplay.Visible = true;
            lblDisplay.ForeColor = System.Drawing.Color.Green;
            lblDisplay.Font.Bold = true;

            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "ShowRoom Details Inserted");

        }
        else
        {
            lblDisplay.Text = "Database Error";
            lblDisplay.ForeColor = System.Drawing.Color.Red;
            lblDisplay.Font.Bold = true;
            lblDisplay.Visible = true;

        }

    }
}