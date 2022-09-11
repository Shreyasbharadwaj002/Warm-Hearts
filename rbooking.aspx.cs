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
        con1 = new SqlConnection(strcon);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "select * from booking";
            //Response.Write(s);
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            con.Close();

            s = "update booking  set status='Booked' where emailid=" + "'" + (string)Session["emailid"] + "'";
            cmd1 = new SqlCommand(s, con);


            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Thank You For Accepting...');window.location='receiver.aspx';</script>");


        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("reply.aspx");
    }
}