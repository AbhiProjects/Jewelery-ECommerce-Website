using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Administrator_AddProduct : System.Web.UI.Page
{
    Validator z = new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddProduct.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                FillCatCombo();

                #region Controls

                btnSave.Enabled = false;
                uploadImage.Enabled = false;
                ddlSubCatName.Enabled = false;
                txtDescription.Enabled = false;
                txtDiscount.Enabled = false;
                txtMakingCharge.Enabled = false;
                txtProductName.Enabled = false;
                txtPurity.Enabled = false;
                txtWeight.Enabled = false;
                txtProductId.Text = "";
                btnSave.Text = "Save";

                #endregion
            }
        }
    }
 
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

    public void FillSubCatCombo()
    {
        ddlSubCatName.Items.Clear();
        string temp = "SELECT category_id FROM Rate WHERE category_name='" + ddlCatName.SelectedItem.ToString() + "'";
        DataSet dstemp = z.FillDataset(temp);
            string id = dstemp.Tables[0].Rows[0][0].ToString();
            string Query = "SELECT product_subcategory_name FROM Product_SubCategory WHERE category_id='" + id + "'";
            DataSet ds = z.FillDataset(Query);
            int RowCount = ds.Tables[0].Rows.Count;
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlSubCatName.Items.Add("-- SELECT SUB CATEGORY --");

            for (int i = 0; i < RowCount; i++)
            {
                ddlSubCatName.Items.Add(ds.Tables[0].Rows[i].ItemArray[0].ToString());
            }

            
        }
        else
        {
            ddlSubCatName.Enabled = true;
            ddlSubCatName.Items.Add("-- NO SUB CATEGORY AVAILABLE --");
            ddlSubCatName.SelectedIndex = 0;
            btnSave.Enabled = false;
            uploadImage.Enabled = false;
            txtDescription.Enabled = false;
            txtDiscount.Enabled = false;
            txtMakingCharge.Enabled = false;
            txtProductName.Enabled = false;
            txtPurity.Enabled = false;
            txtWeight.Enabled = false;
            txtProductId.Text = "";
        }
    }

 #endregion
 
 #region Combo Box Events
    
    protected void ddlCatName_SelectedIndexChanged(object sender, EventArgs e)
    {
        string x = ddlCatName.SelectedItem.ToString();
        ddlCatName.Items.Clear();
        FillCatCombo();
        ddlCatName.SelectedValue =x ;
        ddlSubCatName.Items.Clear();
        ddlSubCatName.Enabled = true;
        FillSubCatCombo();
    }
    protected void ddlSubCatName_SelectedIndexChanged(object sender, EventArgs e)
    {
        string x=ddlSubCatName.SelectedItem.ToString();
        ddlSubCatName.Items.Clear();
        FillSubCatCombo();
        ddlSubCatName.SelectedValue = x;
        if (ddlSubCatName.SelectedIndex != 0)
        {
            int LastRow;
            string Query = "SELECT product_id FROM Product_Attribute";
            DataSet dsq = z.FillDataset(Query);
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
            txtProductId.Text = "PRO " + LastRow + dsq.Tables[0].Rows.Count;

            btnSave.Enabled = true;
            uploadImage.Enabled = true;
            ddlSubCatName.Enabled = true;
            txtDescription.Enabled = true;
            txtDiscount.Enabled = true;
            txtMakingCharge.Enabled = true;
            txtProductName.Enabled = true;
            txtPurity.Enabled = true;
            txtWeight.Enabled = true;
        }
    }

 #endregion

 #endregion


    protected void btnSave_Click(object sender, EventArgs e)
    {

        int statusImage = -1;
        int statusData = -1;

        #region Controls

        lblCheckCatName.Visible = false;
        lblCheckDescription.Visible = false;
        lblCheckDiscount.Visible = false;
        lblCheckFileUpload.Visible = false;
        lblCheckMakingCharge.Visible = false;
        lblCheckProductId.Visible = false;
        lblCheckPurity.Visible = false;
        lblCheckSubCatName.Visible = false;
        lblCheckWeight.Visible = false;
        lblDisplay.Visible = false;

   #endregion

        #region Validation

        if (ddlCatName.SelectedIndex == 0)
        {
            lblCheckCatName.Visible = true;

        }

        if (ddlSubCatName.SelectedIndex == 0)
        {
            lblCheckSubCatName.Visible = true;
        }

        if(!z.Required(txtProductId,lblCheckProductId))
            return;
        if(!z.Required(txtDescription,lblCheckDescription))
            return;
        if(!z.Required(txtDiscount,lblCheckDiscount))
            return;
        if (!z.Required(txtPurity, lblCheckPurity))
            return;
        if (!z.Required(txtWeight, lblWeight))
            return;
        if (!z.Required(txtMakingCharge, lblCheckMakingCharge))
            return;
        if (!z.Numeric(txtDiscount, lblCheckDiscount))
            return;
        if (!z.Decimal(txtMakingCharge, lblCheckMakingCharge))
            return;
        if (!z.Rate(txtMakingCharge, lblCheckMakingCharge))
            return;
        if (!z.Numeric(txtPurity, lblCheckPurity))
            return;
        if (!z.Decimal(txtWeight, lblCheckWeight))
            return;
        if (!z.Rate(txtWeight, lblCheckWeight))
            return;

        if (uploadImage.HasFile == false)
        {
            lblCheckFileUpload.Visible = true;
            lblCheckFileUpload.Text = "This Location Is Not Available";
        }

 #endregion

        #region FileUpload

        if (uploadImage.FileName != "")
        {

            txtProductName.Text = txtProductName.Text.Trim();

            string Duplicate = "SELECT product_name FROM Product_Category";
            if (!z.DuplicateCheck(Duplicate, txtProductName, lblCheckCatName, "This Product Already Exists"))
                return;

            string InsertTemp = "INSERT INTO Product_Category VALUES(@Param1,@Param2);";
            z.QueryExecute(InsertTemp, txtProductId, txtProductName);

            z.InsertFileToFolder(uploadImage, "~/Products");
            z.InsertFileToFolder(uploadImage, "~/Products/Large");

            TextBox txt = new TextBox();
            txt.Text = "~/Products/" + uploadImage.FileName;

            TextBox txtDot = new TextBox();
            txtDot.Text = "./Products/" + uploadImage.FileName;

            string ImageQuery = "INSERT INTO Product_Images VALUES(@Param1,@Param2,@Param3);";
            statusImage = z.QueryExecute(ImageQuery, txtProductId, txt, txtDot);
        }

        else
        {
            lblCheckFileUpload.Visible = true;
            lblCheckFileUpload.Text = "FileName Cannot Be Empty";
            return;
        }

        #endregion
        
        #region InsertData

        txtDescription.Text = txtDescription.Text.Trim();
        
        TextBox txtSubCategory = new TextBox();
        string Query = "SELECT product_subcategory_id FROM Product_SubCategory WHERE product_subcategory_name='"+ddlSubCatName.SelectedItem.ToString()+"'";
        DataSet ds = z.FillDataset(Query);
        txtSubCategory.Text=ds.Tables[0].Rows[0][0].ToString();

        TextBox txtAttribute = new TextBox();
         string Querys = "SELECT product_attribute_id FROM Product_Attribute ORDER ";
         DataSet dsq = z.FillDataset(Querys);
         int LastRow; 
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
        txtAttribute.Text = "ATT " + LastRow + dsq.Tables[0].Rows.Count;

        TextBox txtPrice = new TextBox();
        txtPrice.Text ="0";

        string InsertData = "INSERT INTO Product_Attribute VALUES(@Param1,@Param2,@Param3,@Param4,@Param5,@Param6,@Param7,@Param8,@Param9,@Param10);";
        statusData = z.QueryExecute(InsertData, txtProductId, txtSubCategory, txtPurity, txtWeight, txtMakingCharge, txtAttribute,txtProductName,txtDiscount,txtPrice,txtDescription);
       
        #endregion

        #region Database Update

        if (statusData > 0 && statusImage > 0)
        {
            //btnSave.Text = "Product Has Been Added";
            lblDisplay.Text = "Product Has Been Added & Database Updated";
            lblDisplay.Visible = true;
            lblDisplay.ForeColor = System.Drawing.Color.Green;

            btnSave.Enabled = false;
            uploadImage.Enabled = false;
            ddlCatName.Enabled = false;
            ddlSubCatName.Enabled = false;
            txtDescription.Enabled = false;
            txtDiscount.Enabled = false;
            txtMakingCharge.Enabled = false;
            txtProductName.Enabled = false;
            txtPurity.Enabled = false;
            txtWeight.Enabled = false;

            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Product Inserted"); 
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