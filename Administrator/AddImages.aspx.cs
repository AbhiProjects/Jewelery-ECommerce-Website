using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Administrator_AddImages : System.Web.UI.Page
{

    Validator z = new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/AddImages.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                lblDisplay.Visible = false;
            }
        }
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        
        if (ddlSection.SelectedIndex == 0)
        {
            lblDisplay.Visible = true;
            lblDisplay.Text = "Please Select A Page Section";
            lblDisplay.Font.Bold = true;
            lblDisplay.ForeColor = System.Drawing.Color.Red;
            return;
        }
        
        else
            lblDisplay.Visible = false;


        if (uploadImage.FileName == "")
        {
            lblDisplay.Visible = true;
            lblDisplay.Text = "Please Select A Image To Upload";
            lblDisplay.Font.Bold = true;
            lblDisplay.ForeColor = System.Drawing.Color.Red;
            return;
        }

        else
            lblDisplay.Visible = false;

        string Location;
        string LocationDot;
        string ImageQuery;

        if (ddlSection.SelectedIndex == 1)
        {
            Location = "~/Images/Banner";
            LocationDot = "./Images/Banner";
            ImageQuery = "INSERT INTO Banner(Location,Location_Dot) VALUES(@Param1,@Param2);";
        }

        else if (ddlSection.SelectedIndex == 2)
        {
            Location = "~/Images/Brand";
            LocationDot = "./Images/Brand";
            ImageQuery = "INSERT INTO Brand(Location,Location_Dot) VALUES(@Param1,@Param2);";
        }
        else
        {
            Location = null;
            ImageQuery = null;
            LocationDot = null;
        }

        if (Location != null&& ImageQuery !=null)
        {
            if (uploadImage.FileName != "")
            {
                z.InsertFileToFolder(uploadImage, Location);
                
                TextBox txt = new TextBox();
                txt.Text = Location + "/" + uploadImage.FileName;
                
                TextBox txtDot = new TextBox();
                txtDot.Text = LocationDot + "/" + uploadImage.FileName;

                z.QueryExecute(ImageQuery, txt, txtDot);

                lblDisplay.Visible = true;
                lblDisplay.Text = "Image Saved & Uploaded";
                lblDisplay.Font.Bold = true;
                lblDisplay.ForeColor = System.Drawing.Color.Green;

                uploadImage.Enabled = false;
                btnUpload.Enabled = false;
                ddlSection.Enabled = false;
                //btnUpload.Text = "Image Saved";

                string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
                int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(),  ddlSection.SelectedItem.ToString()+" Addeed");

            }

            else
            {
                lblDisplay.Visible = true;
                lblDisplay.Text = "Please Select A Image To Upload";
                lblDisplay.Font.Bold = true;
                lblDisplay.ForeColor = System.Drawing.Color.Red;
                return;
            }

        }


    }
   
}