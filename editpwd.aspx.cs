using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class editpwd : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    String eid = "", s = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            eid = Session["email"].ToString();

            s = "select * from donor where email=" + "'" + eid + "'" + " and  password=" + "'" + TextBox1.Text + "'";
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

                s = "update donor  set password=@p where email=@eid";
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.Add("@p", TextBox3.Text);
                cmd11.Parameters.Add("@eid", eid);

                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password Updated Successfully...');window.location='signin.aspx';</script>");
            }
            else
            {
                Label1.Text = "Something has gone wrong plzzz check...";
            }
        }
        catch (Exception ex)
        {

            Label2.Text = ex.ToString();
        }
    }
}