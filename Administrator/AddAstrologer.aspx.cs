using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_AddAstrologer : System.Web.UI.Page
{
    Validator z = new Validator();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddAstrologer.aspx"); }

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
        txtName.Text = txtName.Text.Trim();
        txtLocation.Text = txtLocation.Text.Trim();
        txtDays.Text = txtDays.Text.Trim();
        txtTime.Text = txtTime.Text.Trim();
          
        string Duplicate = "SELECT Name FROM Astrologer";
          if (!z.DuplicateCheck(Duplicate, txtName, lblCheckName, "This Astrologer's Name Already Exists"))
              return;

        string Query = "INSERT INTO Astrologer(Name,Location,Days,Time,Phone,Fees) VALUES(@Param1,@Param2,@Param3,@Param4,@Param5,@Param6);";
        int statusRate = z.QueryExecute(Query, txtName, txtLocation, txtDays, txtTime, txtMobile, txtFees);

        if (statusRate > 0)
        {
            //btnSave.Text = "Database Updated";
            btnSave.Enabled = false;
            txtDays.Enabled = false;
            txtFees.Enabled = false;
            txtLocation.Enabled = false;
            txtMobile.Enabled = false;
            txtName.Enabled = false;
            txtTime.Enabled = false;

            lblDisplay.Text = "Database Updated & Astrologer Details Has Been Added";
            lblDisplay.Visible = true;
            lblDisplay.ForeColor = System.Drawing.Color.Green;
            lblDisplay.Font.Bold = true;

            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Astrologer Details Inserted");

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