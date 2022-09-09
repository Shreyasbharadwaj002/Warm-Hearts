using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class donorsignin : System.Web.UI.Page
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

            string s = "select * from donor where email= " + "'" + TextBox4.Text + "'";
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
            if (ctr == 0)
            {

                s = "insert into donor values(@name,@address,@phno,@email,@password,'Donor')";
                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.Add("@name", TextBox1.Text);
                cmd1.Parameters.Add("@address", TextBox2.Text);
                cmd1.Parameters.Add("@phno", TextBox3.Text);
                cmd1.Parameters.Add("@email", TextBox4.Text);
                cmd1.Parameters.Add("@password", TextBox5.Text);






                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                //    Label1.Text = "Registered successfully";
                Response.Write("<script>alert('Registered Successfully');window.location='donor.aspx';</script>");


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";


            }
            else
            {
                Response.Write("<script>alert('Sorry,you have Registered Already');window.location='index.html';</script>");
            }
            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();


        }
        catch (Exception ex)
        {

            Label6.Text = ex.ToString();

        }
    }
}
