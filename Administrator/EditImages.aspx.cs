using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Administrator_EditIamges : System.Web.UI.Page
{
    Validator z = new Validator();

    # region Grid Bind Querys

    string BindBanner = "Select Location FROM Banner ORDER BY Id";
    string BindBrand = "Select Location FROM Brand ORDER BY Id";

    #endregion


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)

        { Response.Redirect("~/Administrator/AdminLogin.aspx?ADD=~/Administrator/EditImages.aspx"); }

        else
        {
            if (!IsPostBack)
            {
                #region Bind Data

                z.BindData(GridBanner, BindBanner);
                z.BindData(GridBrand, BindBrand);

                #endregion
            }
        }
    }

    #region Banner

    protected void GridBanner_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Image img = (Image)GridBanner.Rows[e.RowIndex].FindControl("imgItemCol11");
        TextBox txtImage = new TextBox();
        txtImage.Text = img.ImageUrl.ToString();
        
        string DeleteQuery = "DELETE FROM Banner WHERE Location =@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtImage);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Banner Deleted");

            string location = "~/Images/Banner";
            int size = location.Length + 1;
            string filename = txtImage.Text.Remove(0, size);
            z.FolderImageDelete(location, filename);
            
            GridBanner.EditIndex = -1;

            #region Bind Data

            z.BindData(GridBanner, BindBanner);
            z.BindData(GridBrand, BindBrand);

            #endregion
            
        }
        else
        {
            GridBanner.EditIndex = -1;

            #region Bind Data

            z.BindData(GridBanner, BindBanner);
            z.BindData(GridBrand, BindBrand);

            #endregion
        }
    }

    #endregion

    #region Brand

    protected void GridBrand_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Image img = (Image)GridBrand.Rows[e.RowIndex].FindControl("imgItemCol31");
        TextBox txtImage = new TextBox();
        txtImage.Text = img.ImageUrl.ToString();

        string DeleteQuery = "DELETE FROM Brand WHERE Location =@Param1";
        int statusDelete = z.QueryExecute(DeleteQuery, txtImage);

        if (statusDelete > 0)
        {
            string InsertLog = "INSERT INTO Log_Desc(Date_Time,Description) VALUES(@Param1,@Param2);";
            int statusLog = z.QueryExecute(InsertLog, System.DateTime.Now.ToString(), "Brand Deleted");

            string location = "~/Images/Brand";
            int size = location.Length + 1;
            string filename = txtImage.Text.Remove(0, size);
            z.FolderImageDelete(location, filename);

            GridBrand.EditIndex = -1;

            #region Bind Data

            z.BindData(GridBanner, BindBanner);
            z.BindData(GridBrand, BindBrand);

            #endregion
        }
        else
        {
            GridBrand.EditIndex = -1;

            #region Bind Data

            z.BindData(GridBanner, BindBanner);
            z.BindData(GridBrand, BindBrand);

            #endregion
        }
    }

    #endregion

    

}