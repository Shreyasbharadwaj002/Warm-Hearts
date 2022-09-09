using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class receiversignin : System.Web.UI.Page
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

            string s = "select * from receiver where emailid= " + "'" + TextBox5.Text + "'";
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

                s = "insert into receiver values(@name,@address,@phno,@emailid,@password,'Receiver')";
                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.Add("@name", TextBox1.Text);
                cmd1.Parameters.Add("@address", TextBox2.Text);
                cmd1.Parameters.Add("@phno", TextBox3.Text);
                cmd1.Parameters.Add("@emailid", TextBox5.Text);
                cmd1.Parameters.Add("@password", TextBox6.Text);



                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                //    Label1.Text = "Registered successfully";
                Response.Write("<script>alert('Registered Successfully');window.location='receiver.aspx';</script>");


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";


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

            Label1.Text = ex.ToString();

        }
    }
}