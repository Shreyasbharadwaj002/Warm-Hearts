using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class rbooking : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from booking";
            //Response.Write(s);
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            //    string uname = "";
            while (reader.Read())
            {
                //  uname = reader.GetString(0);
                ctr++;
            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {

                s = "update booking  set status='Booked' where emailid=" +"'" +(string)Session["emailid"]+"'";
                SqlCommand cmd11 = new SqlCommand(s, con);
                

                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Thank You For Aceepting...');window.location='receiver.aspx';</script>");
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }

       
}
    }