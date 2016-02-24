using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    FrontEnd f = new FrontEnd();
    Validator z = new Validator();
    protected void Page_Load(object sender, EventArgs e)
    {
        f.getHeader(ulHeader);
        f.getFooter(ulfooter);
        if (!IsPostBack)
        {
            lblCheck.Visible = false;
        }
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        string Query = "SELECT * FROM Login WHERE UserName='" + username.Text + "'";
        DataTable dt = z.FillDataTable(Query);
        if (dt.Rows.Count > 0)
        {
            string salt = z.Salt(password.Text);
            if (salt.Equals(dt.Rows[0][1].ToString()) == true)
            {
                Session["UserName"] = dt.Rows[0][0].ToString();
                string Add = Request.QueryString["ADD"];
                if (Add == null)
                    Response.Redirect("MyPage.aspx");
                else
                    Response.Redirect(Add);
                
            }
            else
            {
                lblCheck.Visible = true;
                lblCheck.Text = "Please Enter Correct UserName And Password";
                lblCheck.Font.Bold = true;
                lblCheck.ForeColor = System.Drawing.Color.Red;
                password.Text = "";
                username.Text = "Username@max.com";
                return;
            }
        }
        else
        {
            lblCheck.Visible = true;
            lblCheck.Text = "Please Enter Correct UserName And Password";
            lblCheck.Font.Bold = true;
            lblCheck.ForeColor = System.Drawing.Color.Red;
            password.Text = "";
            username.Text = "Username@max.com";
            return;
        }
    }
}