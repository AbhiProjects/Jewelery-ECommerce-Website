using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Administrator_AddSubCat : System.Web.UI.Page
{
    Validator z = new Validator();

    #region Combo Boxes

    #region Fill Combo Boxes

    public void FillCatCombo()
    {
        string Query = "SELECT category_name FROM Rate";
        DataSet ds = z.FillDataset(Query);
        int RowCount = ds.Tables[0].Rows.Count;
        ddlCatName.Items.Add("-- SELECT CATEGORY --");

        for (int i = 0; i < RowCount; i++)
        {
            ddlCatName.Items.Add(ds.Tables[0].Rows[i].ItemArray[0].ToString());
        }
    }

    #endregion

    #region Combo Box Events


    protected void ddlCatName_SelectedIndexChanged(object sender, EventArgs e)
    {
       int LastRow;
        string x = ddlCatName.SelectedItem.ToString();
        string Querys = "SELECT product_subcategory_id FROM Product_SubCategory ORDER BY product_subcategory_id";
        DataSet dsq = z.FillDataset(Querys);
        ddlCatName.SelectedValue = x;
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
        txtSubCatId.Text = "SUB " + LastRow;
        txtSubCatName.Enabled = true;
        btnSave.Enabled = true;
    }

    #endregion

    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddSubCat.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                FillCatCombo();

                #region Controls

                btnSave.Enabled = false;
                btnSave.Text = "Save";
                txtSubCatName.Enabled = false;
                txtSubCatId.Enabled = false;

                #endregion

            }
        }
    }

    protected void btnSubCatSave_Click(object sender, EventArgs e)
    {
        int statusData = -1;

        #region Controls

        lblCheckCat.Visible = false;
        lblCheckSubCatName.Visible = false;
        lblDisplay.Visible = false;

        #endregion

        #region Validation

        if (ddlCatName.SelectedIndex == 0)
        {
            lblCheckCat.Visible = true;
            lblCheckCat.Text = "Please Select A Category";
            lblCheckCat.Font.Bold = true;
            lblCheckCat.ForeColor = System.Drawing.Color.Red;
            return;
        }
        else
            lblCheckCat.Visible = false;

        if (!z.Required(txtSubCatName, lblCheckSubCatName))
            return;
        if (!z.Alphabet(txtSubCatName, lblCheckSubCatName))
            return;

        #endregion

        #region InsertData

        string temp = "SELECT category_id FROM Rate WHERE category_name='" + ddlCatName.SelectedItem.ToString() + "'";
        DataSet dstemp = z.FillDataset(temp);
        
        string id = dstemp.Tables[0].Rows[0][0].ToString();
        TextBox txtid = new TextBox();
        txtid.Text = id;

        txtSubCatName.Text = txtSubCatName.Text.Trim();

        
        

        string InsertTemp = "INSERT INTO Product_SubCategory VALUES(@Param1,@Param2,@Param3);";
        statusData = z.QueryExecute(InsertTemp, txtSubCatId,txtid,txtSubCatName);


        #endregion

        #region Database Update

        if (statusData > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Product Subcategory Inserted"); 

            //btnSave.Text = "Sub Category Has Been Added";
            lblDisplay.Text = "Sub Category Has Been Added & Database Updated";
            lblDisplay.Visible = true;
            lblDisplay.ForeColor = System.Drawing.Color.Green;
            ddlCatName.Enabled = false;
            txtSubCatName.Enabled = false;
            btnSave.Enabled = false;
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