using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Administrator_AddTax : System.Web.UI.Page
{
    Validator z = new Validator();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddTax.aspx"); }

        else
        {
        if (!IsPostBack)
        {

            #region Controls

            lblCheckTaxName.Visible = false;
            lblCheckValue.Visible = false;
            lblDisplay.Visible = false;

            #endregion

            string Query;
            int LastRow;       
            Query = "SELECT tax_id FROM Tax ORDER BY tax_id";
            DataSet ds = z.FillDataset(Query);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string Row = ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1][0].ToString();
                Row = Row.Remove(0, 4);
                LastRow = Convert.ToInt32(Row) + 1;
            }
            else
            {
                LastRow = 1;
            }
            txtTaxId.Text = "TAX " + LastRow;
        }
    }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        #region Controls

        lblCheckTaxName.Visible = false;
        lblCheckValue.Visible = false;
        lblDisplay.Visible = false;

        #endregion

        #region Validation

        if (!z.Required(txtTaxName, lblCheckTaxName))
            return;
        if (!z.Alphabet(txtTaxName, lblCheckTaxName))
            return;
        if (!z.Required(txtValue, lblCheckValue))
            return;
        if (!z.Decimal(txtValue, lblCheckValue))
            return;
        if (!z.Rate(txtValue, lblCheckValue))
            return;

        #endregion

        #region InsertQuery

        txtTaxName.Text = txtTaxName.Text.Trim();

        string Duplicate = "SELECT tax_name FROM Tax";
        if (!z.DuplicateCheck(Duplicate, txtTaxName, lblCheckTaxName, "This Tax Name Already Exists"))
            return;

        string InsertTax = "INSERT INTO Tax VALUES(@Param1,@Param2,@Param3);";
        int statusTax = z.QueryExecute(InsertTax, txtTaxId, txtTaxName, txtValue);

        if (statusTax > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Tax Inserted"); 

            //btnSave.Text = "Tax Has Been Added";
            btnSave.Enabled = false;
            txtTaxName.Enabled = false;
            txtValue.Enabled = false;
            lblDisplay.Text = "Tax Has Been Added & Database Updated";
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