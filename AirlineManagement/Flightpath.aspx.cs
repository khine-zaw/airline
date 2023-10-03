using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AirlineManagement
{
    public partial class Flightpath : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            con.Open();
            string str = "insert into Path(Pathid,Flightid,Departure,Arrival,Leavedate,Time,Price) values(@pid,@fid,@de,@ar,@ld,@t,@p)";
            SqlCommand cmd = new SqlCommand(str, con);

            cmd.Parameters.AddWithValue("@pid", txtpid.Text);
            cmd.Parameters.AddWithValue("@fid", txtfid.Text);
            cmd.Parameters.AddWithValue("@de", txtdepart.Text);
            cmd.Parameters.AddWithValue("@ar", txtarrival.Text);
            cmd.Parameters.AddWithValue("@ld", txtleavedate.Text);
            cmd.Parameters.AddWithValue("@t", txttime.Text);
            cmd.Parameters.AddWithValue("@p", txtprice.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update Path set Flightid=@fid,Departure=@de,Arrival=@ar,Leavedate=@ld,Time=@t,Price=@p where Pathid=@pid", con);

            //string str = "insert into Path(Pathid,Flightid,Departure,Arrival,Leavedate,Time,Price) values(@pid,@fid,@de,@ar,@ld,@t,@p)";
            //SqlCommand cmd = new SqlCommand(str, con);

            cmd.Parameters.AddWithValue("@pid", txtpid.Text);
            cmd.Parameters.AddWithValue("@fid", txtfid.Text);
            cmd.Parameters.AddWithValue("@de", txtdepart.Text);
            cmd.Parameters.AddWithValue("@ar", txtarrival.Text);
            cmd.Parameters.AddWithValue("@ld", txtleavedate.Text);
            cmd.Parameters.AddWithValue("@t", txttime.Text);
            cmd.Parameters.AddWithValue("@p", txtprice.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Update Successful');</script>");
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Path where Pathid=@pid", con);

            cmd.Parameters.AddWithValue("@pid", txtpid.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Delete Successful');</script>");
            con.Close();
            
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}