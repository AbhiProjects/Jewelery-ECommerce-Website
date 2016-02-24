using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ddd : System.Web.UI.Page
{
    FrontEnd f = new FrontEnd();
    Validator z = new Validator();
    
    protected void Page_Load(object sender, EventArgs e)
    {
               
        f.getHeader(ulHeader);
        f.getFooter(ulfooter);

        if (Session["UserName"] == null)

        { Response.Redirect("Login.aspx?ADD=ChangePassword.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                Result.Visible = false;
            }
        }
    }

    protected void registerNew_Click(object sender, EventArgs e)
    {
        Result.Visible = false;

        #region Data Validation

        if (!z.Required(name, Result, "The Old Password Field Cannot Be Empty"))
            return;

        if (!z.Required(email, Result, "The Re Confirm Password Field Cannot Be Empty"))
            return;

        if (!z.Required(tel, Result, "The New Password Field Cannot Be Empty"))
            return;

        #endregion

        name.Text = name.Text.Trim();
        tel.Text = tel.Text.Trim();
        email.Text = email.Text.Trim();

        string Query = "SELECT * FROM Login WHERE UserName='"+Session["UserName"]+"'";
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
            string Update = "UPDATE Login SET Password=@Param1 WHERE UserName=@Param2;";
            z.QueryExecute(Update, z.Salt(email.Text), Session["UserName"].ToString());

            Result.Visible = true;
            Result.Font.Bold = true;
            Result.ForeColor = System.Drawing.Color.Green;
            Result.Text = "Password Updated";

            tel.Text = "";
            name.Text = "";
            email.Text = "";

        }

    }
}