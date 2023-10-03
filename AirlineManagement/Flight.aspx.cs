using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AirlineManagement
{
    public partial class Flight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            conn.Open();
            string str = "insert into Flight(Flightid,Flightname,Pilotname,Totalseat) values(@fid,@fname,@pname,@seat)";
            SqlCommand cmd = new SqlCommand(str, conn);

            cmd.Parameters.AddWithValue("@fid", txtfid1.Text);
            cmd.Parameters.AddWithValue("@fname", txtfname.Text);
            cmd.Parameters.AddWithValue("@pname", txtpname.Text);
            cmd.Parameters.AddWithValue("@seat", txtseat.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand("update Flight set Flightname=@fname, Pilotname=@pname,Totalseat=@seat where Flightid=@fid", conn);

            //string str = "insert into Flight(Flightid,Flightname,Pilotname,Totalseat) values(@fid,@fname,@pname,@seat)";
            //SqlCommand cmd = new SqlCommand(str, conn);

            cmd.Parameters.AddWithValue("@fid", txtfid1.Text);
            cmd.Parameters.AddWithValue("@fname", txtfname.Text);
            cmd.Parameters.AddWithValue("@pname", txtpname.Text);
            cmd.Parameters.AddWithValue("@seat", txtseat.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Update Successful');</script>");
            conn.Close();

            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand("delete from Flight where Flightid=@fid", conn);

            cmd.Parameters.AddWithValue("@fid", txtfid1.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Delete Successful')</script>");
            conn.Close();
            
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}