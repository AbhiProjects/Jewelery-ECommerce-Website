using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    Validator z = new Validator();

    protected void Page_Load(object sender, EventArgs e)
    {
        z.BindDataList("SELECT TOP 3 Location_Dot,Name,Price,Product_Id FROM BestSeller ORDER BY Id DESC", dtlBestSeller);
        z.BindDataList("SELECT TOP 12 Location_Dot,Name,Price,Product_Id FROM FeaturedProducts ORDER BY Id DESC", dtlFeaturedProducts);
    }
}