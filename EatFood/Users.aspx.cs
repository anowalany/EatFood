using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EatFood_Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["New"] != null)
        {
            Label_witaj.Text += Session["login"].ToString();

        }
        else
        {
            Response.Redirect("Login.aspx", false);
        }
    }

    protected void B_Logout_Click(object sender, EventArgs e)
    {
        Session["login"] = null;
        Response.Redirect("Login.aspx");
    }
}