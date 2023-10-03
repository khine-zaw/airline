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
    public partial class Home1 : System.Web.UI.Page
    {
        SqlConnection connection;
        SqlCommand cmd;
        SqlDataReader reader;
        string str;
          string Depature = string.Empty;
            string Destination = string.Empty;
            string Leavedate = string.Empty;
            string Passenger = string.Empty;
            string Price = string.Empty;
            string time = string.Empty;
            string promo = string.Empty;
            string price = string.Empty;
            int promoprice=1;
        private void dbConnection()
        {
             connection = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            
        }
       
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*Session["DName"] = DropDownList1.Text;
            Session["AName"] = DropDownList2.Text;
            Session["Date"] = txtdepart.Text;
            Session["Passenger"] = txtpassenger.Text;*/

            dbConnection();
            connection.Open();
            String str = @"select Departure,Arrival,Leavedate,price,time from Path where Departure= @de and Arrival = @ar and Leavedate = @ld";
            cmd = new SqlCommand(str, connection);
            cmd.Parameters.AddWithValue("@de", DropDownList1.Text );
            cmd.Parameters.AddWithValue("@ar", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@ld", txtdepart.Text);
            SqlDataReader reader = cmd.ExecuteReader();
           // GridView1.DataSource = reader;
           // GridView1.DataBind();

           // string Depature = string.Empty;
          

            while (reader.Read())
            {
                Depature = reader[0].ToString();
                Destination = reader[1].ToString();
                Leavedate= reader[2].ToString();
                Price = reader[3].ToString();
                time = reader[4].ToString();

            }
            //Passenger = txtpassenger.Text;

           /* dbConnection();
            connection.Open();
            String s = @"select Promocode,Price from Promotion where Promocode=@pr";
            cmd = new SqlCommand(s, connection);
            cmd.Parameters.AddWithValue("@pr",TextBox4.Text);
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
            {
                 promo = reader[0].ToString();
                 price = reader[1].ToString();
     

            }

            if(promo !=null)
            {
              promoprice = Convert.ToInt32(price)/100;
            }
            */
         
            if (Depature != DropDownList1.Text.ToString())
            {
                Response.Redirect("Home.aspx");
            }
              
           else
            {
                //int totalpassenger = int.Parse(txtpassenger.Text);
                int totalprice =  Convert.ToInt32(txtpassenger.Text) * Convert.ToInt32(Price) *promoprice;
                Price = Convert.ToString(totalprice);
                Response.Redirect("PassengerRegister.aspx?Depature=" + DropDownList1.Text + "&Arrival=" + DropDownList2.Text + "&Leavedate=" + txtdepart.Text + "&Passenger=" + txtpassenger.Text + "&Price=" + Price + "&time=" + time );
                //Response.Redirect("PassengerRegister.aspx?Arrive=" + DropDownList2.Text);
                //Response.Redirect("PassengerRegister.aspx?Leavedate=" + txtdepart.Text);
                //Response.Redirect("PassengerRegister.aspx?Passenger=" + txtpassenger.Text);
                //Response.Redirect("PassengerRegister.aspx?Price=" + Price);
                //Response.Redirect("PassengerRegister.aspx"); 
                //Response.Redirect("Default3.aspx?value=" + txt.Text + "& number=" + n);
            }

            

            
           /* try
            {
          
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True"].ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("select Departure,Arrival,Leavedate,Price from Path", conn))
                    {        cmd = new SqlCommand(str, conn);
            cmd.Parameters.AddWithValue("@de", DropDownList1.Text );
            cmd.Parameters.AddWithValue("@ar", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@ld", txtdepart.Text);
            SqlDataReader reader = cmd.ExecuteReader();
                    
                        conn.Open();
                        using ( reader = cmd.ExecuteReader())
                        {
                           
                        } Label2.Text = firstVariable;
                    }
                }
            }
            catch (Exception ex)
            {
                //error handling...
            }
           
            //Session["Data"] = reader;

            if (reader.Read())
            {
                Session["DName"] = DropDownList1.Text;
                Session["AName"] = DropDownList2.Text;
                Session["Date"] = txtdepart.Text;
                Session["Passenger"] = txtpassenger.Text;

                Response.Redirect("SearchFound.aspx");
           }
            else
            {
                Response.Redirect("Home.aspx");
            }*/

            connection.Close();
           
           // Response.Write(firstVariable);
            
        }

       
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

    }
}