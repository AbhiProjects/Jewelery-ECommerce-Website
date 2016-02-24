using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class Administrator_EditProduct : System.Web.UI.Page
{
    Validator z = new Validator();
    string BindQuery = "Select Product_Attribute.product_id,product_attribute_name,purity_carret,weight_gm,making_charge,discount,location FROM Product_Attribute,Product_Images Where Product_Attribute.product_id=Product_Images.product_id";
    string path = "~/Products";
    string pathLarge = "~/Products/Large";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditProduct.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                z.BindData(Grid, BindQuery);
                z.FolderImageDelete(path);
                z.FolderImageDelete(pathLarge);
            }
        }
    }
    protected void Grid_RowEditing(object sender, GridViewEditEventArgs e)
    {
        lblResult.Visible = false;
        Grid.EditIndex = e.NewEditIndex;
        z.FolderImageDelete(path);
        z.FolderImageDelete(pathLarge);
        z.BindData(Grid, BindQuery);
    }
    protected void Grid_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        lblResult.Visible = false;

        Label Id = (Label)Grid.Rows[e.RowIndex].FindControl("lblEditCol1");
        TextBox txtName = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol2");
        TextBox txtPurity = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol3");
        TextBox txtWeight = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol4");
        TextBox txtMakingCharge = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol5");
        TextBox txtDiscount = (TextBox)Grid.Rows[e.RowIndex].FindControl("txtEditCol6");
        FileUpload uploadImage = (FileUpload)Grid.Rows[e.RowIndex].FindControl("uploadEditCol7");
        Image EditImage = (Image)Grid.Rows[e.RowIndex].FindControl("imgEditCol7");
        Label lblCheck = (Label)Grid.Rows[e.RowIndex].FindControl("lblCheck");
        Label lblDuplicate = (Label)Grid.Rows[e.RowIndex].FindControl("lblDuplicate");
        
        TextBox txtId = new TextBox();
        txtId.Text = Id.Text;

        txtName.Text = txtName.Text.Trim();

        if (txtName.Text.Equals(lblDuplicate.Text) == false)
        {
            string Duplicate = "SELECT product_name FROM Product_Category";
            if (!z.DuplicateCheck(Duplicate, txtName, lblCheck, "This Product Already Exists"))
                return;
        }
            
        string UpdateQuery = "UPDATE Product_Attribute SET product_attribute_name=@Param1,purity_carret=@Param2,weight_gm=@Param3,making_charge=@Param4,discount=@Param5 WHERE product_id =@Param6";
        int statusUpdate = z.QueryExecute(UpdateQuery, txtName,txtPurity,txtWeight,txtMakingCharge,txtDiscount,txtId);

        #region FileUpload

        if (uploadImage.FileName != "")
        {
            z.InsertFileToFolder(uploadImage, "~/Products");
            z.InsertFileToFolder(uploadImage, "~/Products/Large");

            TextBox txt = new TextBox();
            txt.Text = "~/Products/" + uploadImage.FileName;

            TextBox txtDot = new TextBox();
            txtDot.Text = "./Products/" + uploadImage.FileName;

            string ImageQuery = "UPDATE Product_Images SET location=@Param1,location_dot=@Param2 WHERE product_id=@Param3";
            z.QueryExecute(ImageQuery, txt,txtDot,txtId);

        }
        else
        {

            TextBox txt = new TextBox();
            txt.Text = EditImage.ImageUrl.ToString();

            TextBox txtDot = new TextBox();
            txtDot.Text = "."+EditImage.ImageUrl.ToString().Remove(0,1);

            string ImageQuery = "UPDATE Product_Images SET location=@Param1,location_dot=@Param2 WHERE product_id=@Param3";
            z.QueryExecute(ImageQuery, txt,txtDot, txtId);

        }

        #endregion

        if (statusUpdate > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Product Details Updated");

            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = Id.Text + " Details Updated Successfully";
        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = Id.Text + " Update Failure";
           
        }
        z.FolderImageDelete(path);
        z.FolderImageDelete(pathLarge);
        Grid.EditIndex = -1;
        z.BindData(Grid, BindQuery);
    }

    protected void Grid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        lblResult.Visible = false;
        z.FolderImageDelete(path);
        z.FolderImageDelete(pathLarge);
        Grid.EditIndex = -1;
        z.BindData(Grid, BindQuery);
    }
    protected void Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        lblResult.Visible = false;

        Label Id = (Label)Grid.Rows[e.RowIndex].FindControl("lblItemCol1");
        TextBox txtId = new TextBox();
        txtId.Text = Id.Text;

        Image EditImage = (Image)Grid.Rows[e.RowIndex].FindControl("imgItemCol7");

        string DeleteQuery = "DELETE FROM Product_Attribute WHERE product_id=@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery,txtId);

        DeleteQuery = "DELETE FROM Product_Images WHERE product_id=@Param1";
        statusDelete = z.QueryExecute(DeleteQuery, txtId);
        
        DeleteQuery = "DELETE FROM Product_Category WHERE product_id=@Param1";
        statusDelete = z.QueryExecute(DeleteQuery, txtId);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Product Details Deleted");

            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = Id.Text + " Details Deleted";
        }
        else
        {
            lblResult.Visible = true;
            lblResult.ForeColor = System.Drawing.Color.Red;
            lblResult.Text = Id.Text + " Delete Failure";
        }

        z.FolderImageDelete(path);
        z.FolderImageDelete(pathLarge);
        Grid.EditIndex = -1;
        z.BindData(Grid, BindQuery);
    }

    protected void Grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName == "Upload")
        {
            GridViewRow gvr = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            int RowIndex = gvr.RowIndex;

            FileUpload uploadImage = (FileUpload)Grid.Rows[RowIndex].FindControl("uploadEditCol7");
            Image EditImage = (Image)Grid.Rows[RowIndex].FindControl("imgEditCol7");

            if (uploadImage.HasFile)
            {
                z.InsertFileToFolder(uploadImage, "~/Products");
                z.InsertFileToFolder(uploadImage, "~/Products/Large");
                EditImage.ImageUrl = "~/Products/" + uploadImage.FileName;
                
            }
        }
    }
}