using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EatFood_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void DataList2_OnItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
    {
        if (e.CommandName == "ButtonClickAdd")
        {
            int ID = Int32.Parse(((HiddenField)e.Item.FindControl("HiddenDishId")).Value);
            int DanId = Int32.Parse(((HiddenField)e.Item.FindControl("HiddenDishId")).Value);



            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            var login = (Session["login"]).ToString();
            
            string idquery = "select Id from UserData where Login = '"+login+"'";        
            SqlCommand idqueryComm = new SqlCommand(idquery, conn);
            //idqueryComm.Parameters.AddWithValue("@ID", login.ToString());
            var temp = idqueryComm.ExecuteScalar();
            int idklient = Convert.ToInt32(temp);

            string additem = "insert into Zamowienia (Id_klienta,Id_dania) values (@ID_K, @ID_D)";          
            SqlCommand com = new SqlCommand(additem, conn);
            com.Parameters.AddWithValue("@ID_K", idklient);
            com.Parameters.AddWithValue("@ID_D", DanId);
            com.ExecuteNonQuery();

            conn.Close();
            
        }
    }

    protected void LogOut1_Click(object sender, EventArgs e)
    {
        HyperLink1.Visible = true;
        LogOut1.Visible = false;
        Session.Clear();
    }

   
}