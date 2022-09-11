using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class reply : System.Web.UI.Page
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
           

            SqlCommand cmd1 = new SqlCommand(s, con);
            
            con.Open();
           
            
               
            
            con.Close();
           
            
                s = "update booking set status='replied', reply=@msg where emailid="+"'" + (string)Session["emailid"] + "'" ;
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.Add("@msg", TextBox1.Text);


                con.Open();
               // cmd11.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Your Message Has Been Sent...');window.location='receiver.aspx';</script>");
            
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}