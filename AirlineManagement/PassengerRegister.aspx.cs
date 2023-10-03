using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
namespace AirlineManagement
{
    public partial class PassengerRegister : System.Web.UI.Page
    {
            string Depature = string.Empty;
            string Arrival = string.Empty;
            string Leavedate = string.Empty;
            string Passenger = string.Empty;
            string Price = string.Empty;
            string Time = string.Empty;
            string Random = string.Empty;
       //Depature = Session["Departure"];
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void register_Click(object sender, EventArgs e)
        {

            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            var stringChars = new char[6];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            String finalString = new String(stringChars);

            Depature = Request.QueryString["Depature"].ToString();
            Arrival = Request.QueryString["Arrival"].ToString();
            Leavedate = Request.QueryString["Leavedate"].ToString();
            Passenger = Request.QueryString["Passenger"].ToString();
            Price = Request.QueryString["Price"].ToString();
            Time = Request.QueryString["time"].ToString();

            SqlConnection sql = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\AirLine(pj)\AirlineManagement\AirlineManagement\App_Data\AirLine.mdf;Integrated Security=True");
            sql.Open();
            string str = "insert into PassengerRegister(Firstname,Lastname,Dateofbirth,Emailaddress,Nrcnumber,Phonenumber,Departure,Arrival,Date,Time,Price,Random) values (@fn,@ln,@dob,@email,@nrc,@phno,@depart,@arrival,@date,@time,@price,@random)";
            SqlCommand cmd = new SqlCommand(str, sql);
            
            cmd.Parameters.AddWithValue("@fn", txtfname.Text);
            cmd.Parameters.AddWithValue("@ln", txtlname.Text);
            cmd.Parameters.AddWithValue("@dob", txtbirth.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@nrc", txtnrc.Text);
            cmd.Parameters.AddWithValue("@phno", txtphone.Text);
            cmd.Parameters.AddWithValue("@depart", Depature);
            cmd.Parameters.AddWithValue("@arrival", Arrival);
            cmd.Parameters.AddWithValue("@date",Leavedate );
            cmd.Parameters.AddWithValue("@time", Time);
            cmd.Parameters.AddWithValue("@price", Price);
            cmd.Parameters.AddWithValue("@random", finalString);
            cmd.ExecuteNonQuery();

            sql.Close();
            Session["nrc"] = txtnrc.Text;
            //Session["Lname"] = txtlname.Text;

            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AddHeader("Content-Disposition", "attachement; filename=Group(k).pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            dvprint.RenderControl(hw);
            Document doc = new Document(PageSize.A4, 50f, 50f, 30f, 30f);
            HTMLWorker htw = new HTMLWorker(doc);
            PdfWriter.GetInstance(doc, Response.OutputStream);
            doc.Open();
            StringReader sr = new StringReader(sw.ToString());
            htw.Parse(sr);
            doc.Close();
            Response.Write(doc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }

     /*   protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AddHeader("Content-Disposition", "attachement; filename=Group(k).pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            dvprint.RenderControl(hw);
            Document doc = new Document(PageSize.A4, 50f, 50f, 30f, 30f);
            HTMLWorker htw = new HTMLWorker(doc);
            PdfWriter.GetInstance(doc, Response.OutputStream);
            doc.Open();
            StringReader sr = new StringReader(sw.ToString());
            htw.Parse(sr);
            doc.Close();
            Response.Write(doc);
            Response.End();
        }*/
    }
}