using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Administrator_ChangePassword : System.Web.UI.Page
{
    Validator z = new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/ChangePassword.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                Result.Visible = false;
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Result.Visible = false;
        name.Text = name.Text.Trim();
        password.Text = password.Text.Trim();
        email.Text = email.Text.Trim();

        if (!z.Required(name, Result))
            return;

        if (!z.Required(email, Result))
            return;

        if (!z.Required(password, Result))
            return;
        
        string Query="SELECT * FROM AdminLogin";
        DataTable dt = z.FillDataTable(Query);

        if (name.Text.Equals(z.Salt(dt.Rows[0][1].ToString())) == false)
        {
            Result.Visible = true;
            Result.Font.Bold = true;
            Result.ForeColor = System.Drawing.Color.Red;
            Result.Text = "Password MisMatch";
            return;
        }

        compareNew.Validate();
        comparePassword.Validate();

        if (Page.IsValid)
        {
            string Update = "UPDATE AdminLogin SET Password=@Param1 WHERE UserName=@Param2;";
            z.QueryExecute(Update,z.Salt(password.Text),"ADMIN");

            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Password Updated Successfully");

            Result.Visible = true;
            Result.Font.Bold = true;
            Result.ForeColor = System.Drawing.Color.Green;
            Result.Text = "Password Updated";

            name.Enabled = false;
            email.Enabled = false;
            password.Enabled = false;
            btnSubmit.Visible = false;
   
        }
    }
}