using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Administrator_AddCat : System.Web.UI.Page
{
    Validator z = new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddCat.aspx"); }

        else
        {
        if (!IsPostBack)
        {
            string Query;

            #region Controls
                
                    lblCheckName.Visible = false;
                    lblCheckRate.Visible = false;
                    lblDisplay.Visible = false;
                    btnSave.Enabled = true;
                    txtCatName.Enabled = true;
                    txtRate.Enabled = true;
                    btnSave.Text = "Save";

            #endregion

            int LastRow;
            Query = "SELECT category_id FROM Rate ORDER BY category_id";
            DataSet ds = z.FillDataset(Query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string Row = ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1][0].ToString();
                Row = Row.Remove(0, 5);
                LastRow = Convert.ToInt32(Row) + 1;
            }
            else
            {
                LastRow = 1;
            }
            txtCatId.Text = "CTGRY " + LastRow;
        }

    }
    }


    protected void btnSave_Click(object sender, EventArgs e)
    {

        #region Controls

            lblCheckName.Visible = false;
            lblCheckRate.Visible = false;
            lblDisplay.Visible = false;

        #endregion

        #region Validation

            if (!z.Required(txtCatName, lblCheckName))
                return;
            if (!z.Alphabet(txtCatName, lblCheckName))
                return;
            if (!z.Required(txtRate, lblCheckRate))
                return;
            if (!z.Decimal(txtRate, lblCheckRate))
                return;
            if (!z.Rate(txtRate, lblCheckRate))
                 return;
     
        #endregion

        #region InsertQuery

            txtCatName.Text = txtCatName.Text.Trim();

            string Duplicate = "SELECT category_name FROM Rate";
            if (!z.DuplicateCheck(Duplicate, txtCatName, lblCheckName,"This Category Name Already Exists"))
                return;

            string InsertRate = "INSERT INTO Rate VALUES(@Param1,@Param2,@Param3);";
            int statusRate = z.QueryExecute(InsertRate, txtCatId, txtCatName, txtRate); 

            if (statusRate > 0)
            {
                //btnSave.Text = "Category Has Been Added";
                btnSave.Enabled = false;
                txtCatName.Enabled = false;
                txtRate.Enabled = false;
                lblDisplay.Text = "Category Has Been Added & Database Updated";
                lblDisplay.Visible = true;

                string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
                int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Category Inserted"); 

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