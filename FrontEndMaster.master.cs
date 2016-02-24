using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrontEndMaster : System.Web.UI.MasterPage
{
    FrontEnd f = new FrontEnd();

    protected void Page_Load(object sender, EventArgs e)
    {
       

        f.getHeader(ulHeader);
        f.getFooter(ulfooter);
    }
}
