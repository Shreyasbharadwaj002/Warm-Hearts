using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class fooddetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox11.Text = DateTime.Now.ToShortDateString();
        TextBox4.Text = (string)Session["email"];
        TextBox2.Text = (string)Session["dname"];
        TextBox3.Text = (string)Session["dphno"];
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);

            string s = "select * from fdetails ";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 100;
            while (reader.Read())
            {
                ctr++;

            }
            reader.Close();
            con.Close();
            TextBox9.Text = ctr.ToString();

        }
        catch (Exception ex)
        {
            //Label1.Text = ex.ToString();
        }


    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
          


            String s = "insert into fdetails values(@fid,@name,@phno,@email,@address,@ftype,@number,@fimage,@pdate,@expirydate,'Awaited',@demail)";
            SqlCommand cmd1 = new SqlCommand(s, con);
            cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.Add("@name", TextBox2.Text);
                cmd1.Parameters.Add("@phno", TextBox3.Text);
                cmd1.Parameters.Add("@demail",TextBox12.Text);
                cmd1.Parameters.Add("@email", TextBox4.Text);
                cmd1.Parameters.Add("@address", TextBox8.Text);
                cmd1.Parameters.Add("@ftype", TextBox5.Text);
                cmd1.Parameters.Add("@number", TextBox6.Text);
                cmd1.Parameters.Add("@fimage", FileUpload1.FileName);
                cmd1.Parameters.Add("pdate", TextBox11.Text);
                cmd1.Parameters.Add("@expirydate", TextBox7.Text);
                cmd1.Parameters.Add("@fid", TextBox9.Text);


            con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                //    Label1.Text = "Registered successfully";
                Response.Write("<script>alert('Send A Notification To The Receiver');window.location='http://127.0.0.1:8000/admin/dsendmessage';</script>");


                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
              //  FileUpload1=new FileUpload();
                TextBox7.Text = "";
                TextBox9.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";


            
           
            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();


        }
        catch (Exception ex)
        {

            Label2.Text = ex.ToString();

        }
    }
   // protected void datevalidate(object source, ServerValidateEventArgs args)
    //{
    //    DateTime dt = DateTime.Parse(TextBox7.Text);
    //    DateTime date3 = DateTime.Now;
    //  if(dt==date3.Date)
    //    {

       // }
        

       
    }

