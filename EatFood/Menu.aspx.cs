using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EatFood_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            HyperLink1.Visible = false;
            LogOut1.Visible = true;
            ImageButton1.Visible = true;

        }
        else
        {
            HyperLink1.Visible = true;
            LogOut1.Visible = false;
            ImageButton1.Visible = false;

        }
    }

    protected void DataList2_OnItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
    {
        if (e.CommandName == "ButtonClickAdd")
        {
            int ID = Int32.Parse(((HiddenField)e.Item.FindControl("HiddenDishId")).Value);
            int DanId = Int32.Parse(((HiddenField)e.Item.FindControl("HiddenDishId")).Value);


            //zamawianie
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();                   
           

            var idklient = Session["idK"];
            string additem = "insert into Zamowienia (Id_klienta,Id_dania) values (@ID_K, @ID_D)";          
            SqlCommand com = new SqlCommand(additem, conn);
            com.Parameters.AddWithValue("@ID_K", idklient);
            com.Parameters.AddWithValue("@ID_D", DanId);
            com.ExecuteNonQuery();

            conn.Close();
            Response.Redirect("Koszyk.aspx");
            
        }
    }

    


    protected void LogOut1_Click(object sender, EventArgs e)
    {
        HyperLink1.Visible = true;
        LogOut1.Visible = false;
        ImageButton1.Visible = false;

        Session.Clear();
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Koszyk.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MainPage.aspx");
    }
}