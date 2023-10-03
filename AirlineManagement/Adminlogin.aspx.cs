using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AirlineManagement
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            con.Open();
            String str = @"select Name,Password from Admin where Name = @na and Password = @pass";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.Parameters.AddWithValue("@na", txtname.Text);
            cmd.Parameters.AddWithValue("@pass", txtpassword.Text);
            cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["Name"] = txtname.Text;
                Response.Redirect("Admindashboard.aspx");
            }
            else
            {
                wronglabel.Text= "wrong password or name";
                txtname.Text = "";
                txtpassword.Text = "";
            }
            con.Close();
        }
    }
}