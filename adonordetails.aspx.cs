using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adonordetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            //    string em = Session["clogname"].ToString();
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select name,email,phno as FullName,Emailid,Mobile Number from donor";// where clientemail =" + "'" + em + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;

            while (reader.Read())
            {

                ctr++;

                                                                                                                 

            }
            reader.Close();
            con.Close();


            if (ctr > 0)
            {
                /////////////////////

                // string str11 = "select * from emp  where not email=" + "'" + ln + "'";
                string str11 = "select * from donor";// where clientemail =" + "'" + em + "'";



                //ownerid,fname,phone from owner WHERE ownerid =" + "'" + txtowner.Text + "'";
                con.Open();
                SqlCommand cmd2 = new SqlCommand(str11, con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter();
                da = new SqlDataAdapter(cmd2);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            }
            else
            {
                //Label1.Text = "Sorry Order details not found";
            }
        }
        catch (Exception ex)
        {
            // Label1.Text = ex.ToString();
        }

    }
}