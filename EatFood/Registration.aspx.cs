using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
  

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser="select count(*) from UserData where Login='"+ TextBoxLogin.Text +"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                Response.Write("Istnieje użytkownik o podanym loginie");
            }
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //Guid newGUID = Guid.NewGuid();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into UserData (Login,Email,Password, Permission) values (@login, @email, @password, @permission)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
           // com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@login", TextBoxLogin.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPassword.Text);
            com.Parameters.AddWithValue("@permission", "0");

            com.ExecuteNonQuery();
            Response.Redirect("Users.aspx", false);
            Response.Write("Zarejestrowano pomyślnie!");

            conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
    }
}