using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace AirlineManagement
{
    public partial class AdminControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void pathbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            con.Open();
            string str = "insert into Path(Pathid,Flightid,Departure,Arrival,Leavedate,Time,Price) values(@pid,@fid,@de,@ar,@ld,@t,@p)";
            SqlCommand cmd = new SqlCommand(str, con);

            cmd.Parameters.AddWithValue("@pid", pid.Text);
            cmd.Parameters.AddWithValue("@fid", fid.Text);
            cmd.Parameters.AddWithValue("@de", from.Text);
            cmd.Parameters.AddWithValue("@ar", to.Text);
            cmd.Parameters.AddWithValue("@ld", leavedate.Text);
            cmd.Parameters.AddWithValue("@t", time.Text);
            cmd.Parameters.AddWithValue("@p", price.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);

        }

        protected void flightbutton_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            conn.Open();
            string str = "insert into Flight(Flightid,Flightname,Pilotname,Totalseat) values(@fid,@fname,@pname,@seat)";
            SqlCommand cmd = new SqlCommand(str, conn);

            cmd.Parameters.AddWithValue("@fid", fid1.Text);
            cmd.Parameters.AddWithValue("@fname", flightname.Text);
            cmd.Parameters.AddWithValue("@pname", pilotname.Text);
            cmd.Parameters.AddWithValue("@seat", totalseat.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Response.Redirect(Request.Url.AbsoluteUri);
        }

       

        protected void price_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}