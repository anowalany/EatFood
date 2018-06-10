using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Login_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from UserData where Login='" + TextBoxLog.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            //check password
            string checkPasswordQuery = "select Password from UserData where Login='" + TextBoxLog.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

            //check permissions
            string checkPermissionQuery = "select Permission from UserData where Login='" + TextBoxLog.Text + "'";
            SqlCommand perComm = new SqlCommand(checkPermissionQuery, conn);
            string permission = perComm.ExecuteScalar().ToString().Replace(" ", "");
            
            //redirecting
            if (password == TextBoxPass.Text)
            {
                Session["login"] = TextBoxLog.Text;
                Session["permission"] = permission;
                Response.Write("Hasło jest poprawne");

                string idquery = "select Id from UserData where Login = '" + TextBoxLog.Text + "'";
                SqlCommand idqueryComm = new SqlCommand(idquery, conn);
                var temp2 = idqueryComm.ExecuteScalar();
                int idklient = Convert.ToInt32(temp2);
                Session["idK"] = idklient;
                if (permission == "1")
                {
                    Response.Redirect("Admin.aspx", false);
                }
                else
                {
                    Response.Redirect("MainPage.aspx", false);
                }
               
            }
            else
            {
                Response.Write("Błędne hasło");
            }
        }
        else
        {
            Response.Write("Błędny login");
        }
    }
}
