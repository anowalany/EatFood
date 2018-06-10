using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EatFood_Delivery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MainPage.aspx");
    }

   

    protected void LogOut1_Click1(object sender, EventArgs e)
    {
        HyperLink1.Visible = true;
        LogOut1.Visible = false;


        Session.Clear();
    }
}