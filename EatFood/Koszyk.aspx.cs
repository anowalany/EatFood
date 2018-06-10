using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EatFood_Koszyk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void LogOut1_Click(object sender, EventArgs e)
    {
        HyperLink1.Visible = true;
        LogOut1.Visible = false;
        Session.Clear();
    }
}