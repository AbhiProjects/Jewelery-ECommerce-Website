using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            Result.Visible = false;
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Result.Visible = false;

        #region Data Validation

        if (!z.Required(name, Result, "The Name Field Cannot Be Empty"))
            return;

        if (!z.Required(email, Result, "The E Mail Field Cannot Be Empty"))
            return;

        if (!z.Required(subject, Result, "The Subject Field Cannot Be Empty"))
            return;

        if (!z.Required(feedback, Result, "The FeedBack Field Cannot Be Empty"))
            return;

#endregion

        name.Text = name.Text.Trim();
        email.Text = email.Text.Trim();
        subject.Text = subject.Text.Trim();
        feedback.Text = feedback.Text.Trim();

        TextBox txtTime = new TextBox();
        txtTime.Text = System.DateTime.Now.ToShortDateString();

        string Query = "INSERT INTO Feedback(Date,Name,Email,Subject,Description) VALUES(@Param1,@Param2,@Param3,@Param4,@Param5);";
        int statusRate = z.QueryExecute(Query, txtTime, name, email, subject, feedback);

        if (statusRate > 0)
        {
            Result.Text = "FeedBack Successfully Sent";
            Result.ForeColor = System.Drawing.Color.Green;
            Result.Font.Bold = true;
            Result.Visible = true;

            name.Text = "";
            email.Text = "";
            subject.Text = "";
            feedback.Text = "";

            Submit.Visible = false;
            name.Enabled = false;
            email.Enabled = false;
            subject.Enabled = false;
            feedback.Enabled = false;
        }
        else
        {
            Result.Text = "Error In Sending The FeedBack";
            Result.ForeColor = System.Drawing.Color.Red;
            Result.Font.Bold = true;
            Result.Visible = true;
        }

    }
}