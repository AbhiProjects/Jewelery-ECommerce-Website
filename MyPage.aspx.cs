using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MyPage : System.Web.UI.Page
{
    Validator z = new Validator(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)

        { Response.Redirect("Login.aspx?ADD=MyPage.aspx"); }

        else
        {
            if (!IsPostBack)
            {


                lblResult.Visible = false;

                string Query = "SELECT * FROM Customer WHERE email_id='" + Session["UserName"].ToString() + "'";
                DataTable dt = z.FillDataTable(Query);

                txtName.Text = dt.Rows[0][0].ToString();
                txtPhone.Text = dt.Rows[0][1].ToString();
                txtLocation.Text = dt.Rows[0][2].ToString();
                lblEmail.Text = dt.Rows[0][3].ToString();

                if (dt.Rows[0][4].ToString().Equals("Male") == true)

                    ddlGender.SelectedIndex = 1;

                else if (dt.Rows[0][4].ToString().Equals("Female") == true)

                    ddlGender.SelectedIndex = 2;

                else
                    ddlGender.SelectedIndex = 3;

                lblCustomer.Text = dt.Rows[0][5].ToString();
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (ddlGender.SelectedIndex == 0)
        {
            lblResult.Visible = true;
            lblResult.Font.Bold = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = "Please Select A Gender";
            return;
        }
        
        txtName.Text = txtName.Text.Trim();
        txtLocation.Text = txtLocation.Text.Trim();
        
        TextBox txtGender = new TextBox();
        txtGender.Text = ddlGender.SelectedItem.ToString();

        TextBox txtId = new TextBox();
        txtId.Text = lblCustomer.Text;

        string UpdateQuery = "UPDATE  Customer SET name=@Param1,phone=@Param2,location=@Param3,gender=@Param4 WHERE customer_id=@Param5";
        int statusUpdate = z.QueryExecute(UpdateQuery,txtName,txtPhone,txtLocation,txtGender,txtId);

        if (statusUpdate > 0)
        {
            
            btnUpdate.Enabled = false;
            txtName.Enabled = false;
            txtLocation.Enabled = false;
            txtPhone.Enabled = false;
            ddlGender.Enabled = false;
            

            lblResult.Text = "The Profile Has Been Updated";
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Font.Bold = true;

        }
       else
        {
            lblResult.Text = "Database Error";
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Font.Bold = true;
            lblResult.Visible = true;

        }
    }
    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
}