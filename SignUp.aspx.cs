using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    Validator z = new Validator();

    #region Alphabet With Dot

    public Boolean AlphabetDot(TextBox txt, Label lbl)
    {
        string s = txt.Text.ToString();
        for (int i = 0; i < s.Length; i++)
        {
            if ((int)s[i] >= 65 && (int)s[i] <= 90)
            {
                lbl.Visible = false;
            }
            else if ((int)s[i] >= 97 && (int)s[i] <= 122)
            {
                lbl.Visible = false;
            }
            else if ((int)s[i] == 46)
            {
                lbl.Visible = false;
            }
            else if ((int)s[i] == 45)
            {
                lbl.Visible = false;
            }
            else
            {
                lbl.Text = "This Field Can Contain Only Alphabets";
                lbl.Visible = true;
                lbl.Font.Bold = true;
                lbl.ForeColor = System.Drawing.Color.Red;
                txt.Focus();
                return false;
            }

        }
        return true;
    }

    #endregion
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            #region Initial Capcha

            Random r = new Random();
            string Query = "SELECT Capcha from Capcha";
            DataSet dsCapcha = z.FillDataset(Query);
            int n = r.Next(0, dsCapcha.Tables[0].Rows.Count);
            lblDisplayCaptcha.Text = (dsCapcha.Tables[0].Rows[n].ItemArray[0]).ToString();

            #endregion

            #region Controls

            lblDisplay.Visible = false;
            lblCheckEmail.Visible = false;
            lblCheckGender.Visible = false;
            lblCheckLocation.Visible = false;
            lblCheckName.Visible = false;
            lblCheckPhone.Visible = false;
            lblRetypeCaptchaValid.Visible = false;

            btnSubmit.Text = "Submit";
            btnSubmit.Enabled = true;
            btnCheckEmail.Text = "Check Availiability";
            btnCheckEmail.Enabled = true;
            btnChangeCaptcha.Enabled = true;

            txtEmailId.Enabled = true;
            txtLocation.Enabled = true;
            txtName.Enabled = true;
            txtPhone.Enabled = true;
            #endregion
        }
    }
    protected void btnCheckEmail_Click(object sender, EventArgs e)
    {
        RegularExpressionValidator.Validate();
        if (Page.IsValid)
        {
            {
                string Query = "SELECT email_id FROM Customer Where email_id='" + txtEmailId.Text.ToString() + "'";
                DataSet ds = z.FillDataset(Query);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblCheckEmail.Visible = true;
                    lblCheckEmail.ForeColor = System.Drawing.Color.Red;
                    lblCheckEmail.Font.Bold = true;
                    lblCheckEmail.Text = "This E Mail Id Already Exists";
                }
                else
                {
                    lblCheckEmail.Visible = true;
                    lblCheckEmail.ForeColor = System.Drawing.Color.Green;
                    lblCheckEmail.Font.Bold = true;
                    lblCheckEmail.Text = "This E Mail Id Is Availiable";

                }
            }
        }
    }
    protected void btnChangeCaptcha_Click(object sender, EventArgs e)
    {
        Random r = new Random();
        string Query = "SELECT Capcha from Capcha";
        DataSet dsCapcha = z.FillDataset(Query);
        int n = r.Next(0, dsCapcha.Tables[0].Rows.Count);
        lblDisplayCaptcha.Text = (dsCapcha.Tables[0].Rows[n].ItemArray[0]).ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        #region Controls

        lblDisplay.Visible = false;
        lblCheckEmail.Visible = false;
        lblCheckGender.Visible = false;
        lblCheckLocation.Visible = false;
        lblCheckName.Visible = false;
        lblCheckPhone.Visible = false;
        lblRetypeCaptchaValid.Visible = false;

        #endregion

        #region Validation

        if (!z.Required(txtName, lblCheckName))
            return;
        if (!AlphabetDot(txtName, lblCheckName))
            return;
        if (!z.Required(txtEmailId, lblCheckEmail))
            return;

        #region Email Id Click Event

        string Querys = "SELECT email_id FROM Customer Where email_id='" + txtEmailId.Text.ToString() + "'";
        DataSet dss = z.FillDataset(Querys);
        if (dss.Tables[0].Rows.Count > 0)
        {
            lblCheckEmail.Visible = true;
            lblCheckEmail.ForeColor = System.Drawing.Color.Red;
            lblCheckEmail.Font.Bold = true;
            lblCheckEmail.Text = "This E Mail Id Already Exists";
        }
        else
        {
            lblCheckEmail.Visible = true;
            lblCheckEmail.ForeColor = System.Drawing.Color.Green;
            lblCheckEmail.Font.Bold = true;
            lblCheckEmail.Text = "This E Mail Id Is Availiable";

        }

        #endregion

        if (ddlGender.SelectedIndex == 0)
        {
            lblCheckGender.Visible = true;
            lblCheckGender.Text = "Please Select The Gender ";
            lblCheckGender.ForeColor = System.Drawing.Color.Red;
            lblCheckGender.Font.Bold = true;
            ddlGender.Focus();
            return;
        }
        else
            lblCheckGender.Visible = false;

        if (!z.Required(txtLocation, lblCheckLocation))
            return;
        if (!z.Required(txtPhone, lblCheckPhone))
            return;
        if (!z.Numeric(txtPhone, lblCheckPhone))
            return;

        #region Phone Number Should Be Of 10 Characters

        txtPhone.Text = txtPhone.Text.Trim();

        if (txtPhone.Text.Length < 10 || txtPhone.Text.Length > 10)
        {
            lblCheckPhone.Visible = true;
            lblCheckPhone.Text = "Please Enter The Valid Phone Number";
            lblCheckPhone.ForeColor = System.Drawing.Color.Red;
            lblCheckPhone.Font.Bold = true;
            txtPhone.Focus();
            return;
        }
        else
            lblCheckPhone.Visible = false;

        #endregion

        #region ReType Captcha Empty Validation

        if (txtRetypeCaptcha.Text == "")
        {
            Random r = new Random();
            string Query = "SELECT Capcha from Capcha";
            DataSet ds = z.FillDataset(Query);
            int n = r.Next(0, ds.Tables[0].Rows.Count);
            lblRetypeCaptchaValid.Visible = true;
            lblRetypeCaptchaValid.Text = "This Field Cannot Be Empty";
            lblRetypeCaptchaValid.ForeColor = System.Drawing.Color.Red;
            lblDisplayCaptcha.Text = (ds.Tables[0].Rows[n].ItemArray[0]).ToString();
            txtRetypeCaptcha.Text = "";
            return;
        }
        else
            lblRetypeCaptchaValid.Visible = false;

        #endregion

        #region Captcha Validation

        if (txtRetypeCaptcha.Text.ToString().Equals(lblDisplayCaptcha.Text.ToString()))
        {
            lblRetypeCaptchaValid.Visible = false;
        }
        else
        {
            Random r = new Random();
            string Query = "SELECT Capcha from Capcha";
            DataSet dsCapcha = z.FillDataset(Query);
            int n = r.Next(0, dsCapcha.Tables[0].Rows.Count);
            lblRetypeCaptchaValid.Visible = true;
            lblRetypeCaptchaValid.Text = "Captcha Incorrectly Typed";
            lblRetypeCaptchaValid.ForeColor = System.Drawing.Color.Red;
            lblDisplayCaptcha.Text = (dsCapcha.Tables[0].Rows[n].ItemArray[0]).ToString();
            txtRetypeCaptcha.Text = "";
            return;
        }

        #endregion

        #endregion

        #region Database Update

        txtName.Text = txtName.Text.Trim();
        txtLocation.Text = txtLocation.Text.Trim();

        TextBox txtId = new TextBox();
        int LastRow;
        string Queryss = "SELECT customer_id FROM Customer ORDER BY customer_id";
        DataSet dsq = z.FillDataset(Queryss);

        if (dsq.Tables[0].Rows.Count > 0)
        {
            string Row = dsq.Tables[0].Rows[dsq.Tables[0].Rows.Count - 1][0].ToString();
            Row = Row.Remove(0, 4);
            LastRow = Convert.ToInt32(Row) + 1;
        }
        else
        {
            LastRow = 1;
        }
        txtId.Text = "CST " + LastRow;

        TextBox txtGender = new TextBox();
        txtGender.Text = ddlGender.SelectedItem.Text.ToString();

        TextBox txtStatus = new TextBox();
        txtStatus.Text = "ACTIVE";

        string InsertData = "INSERT INTO Customer VALUES(@Param1,@Param2,@Param3,@Param4,@Param5,@Param6,@Param7);";
        int statusData = z.QueryExecute(InsertData, txtName, txtPhone, txtLocation, txtEmailId, txtGender, txtId, txtStatus);

        if (statusData > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Customer Added");
            btnSubmit.Text = "Registered";
            btnSubmit.Enabled = false;
            btnCheckEmail.Text = "Availiable";
            btnCheckEmail.Enabled = false;
            btnChangeCaptcha.Enabled = false;

            ddlGender.Enabled = false;
            txtEmailId.Enabled = false;
            txtLocation.Enabled = false;
            txtName.Enabled = false;
            txtPhone.Enabled = false;

            #region Password E Mail

            string password = txtId.Text.ToString() + txtEmailId.Text.ToString();
            string subject = "New Password";
            string body = "This Is An AutoGenerated Password";
            z.Send(txtEmailId.Text.ToString(), password, subject, body);

            #endregion

            #region Login Details With Salted Password

            TextBox txtPassword = new TextBox();
            txtPassword.Text = z.Salt(password);

            string InsertPassword = "INSERT INTO Login VALUES(@Param1,@Param2);";
            z.QueryExecute(InsertPassword, txtEmailId, txtPassword);

            #endregion

            lblDisplay.Text = "An AutoGenerated Password Has Been Send At Your E Mail Address";
            lblDisplay.Visible = true;
        }
        else
        {
            lblDisplay.Text = "Database Error";
            lblDisplay.Visible = true;
            lblDisplay.ForeColor = System.Drawing.Color.Red;
            return;
        }

        #endregion
    }
}