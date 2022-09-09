using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class notification1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Request.QueryString.Get(0);
        String d = Request.QueryString.Get(1);
        String em = Request.QueryString.Get(2);
        TextBox1.Text = id;
        TextBox6.Text = d;
        TextBox7.Text = em;
        TextBox4.Text = (string)Session["emailid"];
        TextBox2.Text = (string)Session["rname"];
        TextBox3.Text = (string)Session["phoneno"];
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        try
        {
            DateTime date1 = DateTime.Parse(TextBox6.Text);
            DateTime date2 = DateTime.Now;

            //Response.Write("Your Date:" + date1.ToShortDateString());
          //  Response.Write("Now:" + date2.ToShortDateString());

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            if (date1.Date >= date2.Date)
            {


                String s = "select * from fdetails";
                //Response.Write(s);
                //con.Open();
              
                //SqlCommand cmd1 = new SqlCommand(s, con);
                //SqlDataReader reader;
                //reader = cmd1.ExecuteReader();
                //int ctr = 0;
                ////    string uname = "";
                //while (reader.Read())
                //{
                //    //  uname = reader.GetString(0);
                //    ctr++;
                //}
                //reader.Close();
                //con.Close();
                //if (ctr == 0)
                //{

                s = "update fdetails  set name=@n,phno=@ph,email=@em,address=@ad,status='Accepted',demail=@dem where fid=" + "'" + TextBox1.Text + "'";
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.Add("@n", TextBox2.Text);
                cmd11.Parameters.Add("@ph", TextBox3.Text);
                cmd11.Parameters.Add("@ad", TextBox5.Text);
                cmd11.Parameters.Add("@em", TextBox4.Text);
                cmd11.Parameters.Add("@dem", TextBox7.Text);
                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Thank You for Accepting...');window.location='receiver.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please Check The Expiry Date');window.location='notification.aspx';</script>");
                }
           
        }
        catch (Exception ex)
        {

            Response.Write(ex.ToString());
        }
    }
}