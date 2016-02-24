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

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddBestSeller.aspx"); }

        else
        {
            if (!IsPostBack)
            {

                #region Controls

                txtProductId.Text = "";
                btnSave.Text = "Save";

                #endregion

                string Querys = "SELECT Product_Id FROM BestSeller ORDER BY Id ";
                DataSet dsq = z.FillDataset(Querys);
                int LastRow;
                if (dsq.Tables[0].Rows.Count > 0)
                {
                    string Row = dsq.Tables[0].Rows[dsq.Tables[0].Rows.Count - 1][0].ToString();
                    Row = Row.Remove(0, 4);
                    LastRow = Int32.Parse(Row) + 1;
                }
                else
                {
                    LastRow = 1;
                }
                txtProductId.Text = "BST " + LastRow;
            }
        }
    }
 
    

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int statusData = -1;

        #region Controls

        lblCheckDescription.Visible = false;
        lblCheckDiscount.Visible = false;
        lblCheckFileUpload.Visible = false;
        lblCheckMakingCharge.Visible = false;
        lblCheckProductId.Visible = false;
        lblCheckPurity.Visible = false;
        lblCheckWeight.Visible = false;
        lblDisplay.Visible = false;

   #endregion

        #region Validation

        if(!z.Required(txtProductId,lblCheckProductId))
            return;
        if (!z.Required(txtProductName, lblCheckCatName))
            return;
        if (!z.Alphabet(txtProductName, lblCheckCatName))
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

        if (uploadImage.FileName != "")
        {

            txtProductName.Text = txtProductName.Text.Trim();
            txtDescription.Text = txtDescription.Text.Trim();

            string Duplicate = "SELECT Name FROM BestSeller";
            if (!z.DuplicateCheck(Duplicate, txtProductName, lblCheckCatName, "This Product Name Already Exists"))
                return;

            z.InsertFileToFolder(uploadImage, "~/Images/BestSeller");
            z.InsertFileToFolder(uploadImage, "~/Images/BestSeller/Large");

            TextBox txt = new TextBox();
            txt.Text = "~/Images/BestSeller/" + uploadImage.FileName;

            TextBox txtDot = new TextBox();
            txtDot.Text = "./Images/BestSeller/" + uploadImage.FileName;

            double cal=(Double.Parse(txtMakingCharge.Text)*Double.Parse(txtDiscount.Text)/100)+(Double.Parse(txtWeight.Text)*Double.Parse(txtMakingCharge.Text));

            TextBox txtPrice = new TextBox();
            txtPrice.Text = cal.ToString("0.00");

            string InsertData = "INSERT INTO BestSeller(Location,Location_Dot,Name,Price,Product_Id,Description,Purity,Weight,MakingCharge,Discount) VALUES(@Param1,@Param2,@Param3,@Param4,@Param5,@Param6,@Param7,@Param8,@Param9,@Param10);";
            statusData = z.QueryExecute(InsertData,txt,txtDot,txtProductName,txtPrice,txtProductId,txtDescription,txtPurity,txtWeight,txtMakingCharge,txtDiscount);

            #region Database Update

        if (statusData > 0)
        {
            btnSave.Text = "Product Has Been Added";
            lblDisplay.Text = "Database Updated";
            lblDisplay.Visible = true;
            lblDisplay.ForeColor = System.Drawing.Color.Green;

            btnSave.Enabled = false;
            uploadImage.Enabled = false;
            txtDescription.Enabled = false;
            txtDiscount.Enabled = false;
            txtMakingCharge.Enabled = false;
            txtProductName.Enabled = false;
            txtPurity.Enabled = false;
            txtWeight.Enabled = false;

            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "BestSeller Product Inserted");
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

        


        
}