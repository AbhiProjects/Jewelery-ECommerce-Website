using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = DateTime.Now.DayOfWeek.ToString() + "&nbsp;&nbsp;&nbsp;&nbsp;" + DateTime.Now.ToLongDateString() + "&nbsp;&nbsp;&nbsp;&nbsp;" + DateTime.Now.ToLongTimeString();
    }
}
