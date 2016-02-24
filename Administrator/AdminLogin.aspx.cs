using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    Validator z = new Validator();

    string Query = "SELECT * FROM AdminLogin";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblCheck.Visible = false;
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        lblCheck.Visible = false;

        DataTable dt=z.FillDataTable(Query);

        if ((username.Text.Equals("ADMIN") == true) && (password.Text.Equals(z.Salt(dt.Rows[0][1].ToString())) == true))
        {
                Session["User"] = "ADMIN";
                string Add = Request.QueryString["ADD"];
            if(Add==null)
                Response.Redirect("~/Administrator/Dashboard.aspx");
            else
                Response.Redirect(Add);
            
        }
        else
        {
            lblCheck.Visible = true;
            username.Text = "UserName";
            password.Text = "";
        }
    }
}