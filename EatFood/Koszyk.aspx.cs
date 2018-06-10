using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EatFood_Koszyk : System.Web.UI.Page
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
        // SELECT SUM(Dania.cena) AS Expr1 FROM Dania INNER JOIN Zamowienia ON Dania.Id = Zamowienia.Id WHERE ([Id_klienta] = @Id_klienta)

        //zamawianie
       try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            var idk = (Session["idK"]).ToString();



            string prquery = "SELECT SUM(Dania.cena)AS Expr1 FROM Dania INNER JOIN Zamowienia ON Dania.Id = Zamowienia.Id WHERE Id_klienta ='" + @idk + "'";
            SqlCommand prqueryComm = new SqlCommand(prquery, con);
            //idqueryComm.Parameters.AddWithValue("@ID", login.ToString());
            var temp = prqueryComm.ExecuteScalar();
            Session["kwota"] = temp.ToString();
            Razem.Text = "RAZEM: " + temp.ToString() + " zł";
            con.Close();
        }
        catch(Exception ex)
        {
            Response.Redirect("MainPage.aspx");
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

    protected void Button_Login_Click(object sender, EventArgs e)
    {

    }



    protected void OK_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delivery.aspx");
    }

    protected void Wstecz_Click(object sender, EventArgs e)
    {
        Response.Redirect("MainPage.aspx");
    }
}