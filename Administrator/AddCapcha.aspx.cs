using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_AddCapcha : System.Web.UI.Page
{
    Validator z = new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddCapcha.aspx"); }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        txtCapcha.Text = txtCapcha.Text.Trim();

        string Duplicate = "SELECT Capcha FROM Capcha";
        if (!z.DuplicateCheck(Duplicate, txtCapcha, lblDisplay, "This Capcha Already Exists"))
            return;

        string InsertCapcha = "INSERT INTO Capcha VALUES(@Param1);";
        int statusCapcha = z.QueryExecute(InsertCapcha,txtCapcha);

        if (statusCapcha > 0)
        {
            //btnSave.Text = "Capcha Has Been Added";
            btnSave.Enabled = false;
            txtCapcha.Enabled = false;
            lblDisplay.Text = "Capcha Has Been Added & Database Updated";
            lblDisplay.Visible = true;
            lblDisplay.ForeColor = System.Drawing.Color.Green;

            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Capcha Inserted"); 
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