using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            HyperLink1.Visible = false;
            LogOut1.Visible = true;
        }
        else
        {
            HyperLink1.Visible = true;
            LogOut1.Visible = false;

        }
    }

    protected void LogOut1_Click(object sender, EventArgs e)
    {
        HyperLink1.Visible = true;
        LogOut1.Visible = false;
        Session.Clear();
        Response.Redirect("MainPage.aspx");
        
    }


}