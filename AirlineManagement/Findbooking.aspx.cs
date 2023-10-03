using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AirlineManagement
{
    public partial class Findbooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            con.Open();
            String str = @"select Firstname,Lastname,Dateofbirth,Ucssclub,Emailaddress,Nrcnumber,Phonenumber,Departure,Arrival,Date,Time,Price from PassengerRegister where Random = @rd";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.Parameters.AddWithValue("@rd", txtrandom.Text);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }
    }
}