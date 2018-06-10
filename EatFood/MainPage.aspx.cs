using System;
using System.Web.UI.WebControls;

public partial class EatFood_MainPage : System.Web.UI.Page
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





    



    protected void DataList1_OnItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
    {
        if (e.CommandName == "ButtonClick")
        {
            int ID = Int32.Parse(((HiddenField)e.Item.FindControl("HiddenRestaurantId")).Value);
            int ResId = Int32.Parse(((HiddenField)e.Item.FindControl("HiddenRestaurantId")).Value);
            Session["Restauracja"] = ResId;
            Response.Redirect("~/EatFood/Menu.aspx");

        }
    }

    protected void LogOutA()
    {
        HyperLink1.Visible = true;
        LogOut1.Visible = false;
        Session.Clear();
    }


    protected void LogOut1_Click(object sender, EventArgs e)
    {
        HyperLink1.Visible = true;
        LogOut1.Visible = false;
        Session.Clear();
    }
}