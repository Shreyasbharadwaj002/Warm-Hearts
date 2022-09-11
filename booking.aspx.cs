using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class booking : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        string em = Request.QueryString.Get(0);
        TextBox4.Text= em;
        TextBox3.Text = (string)Session["email"];
        string pid = Request.QueryString.Get(1);
        TextBox5.Text = pid;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {

            string s = "select * from booking where email= " + "'" + TextBox4.Text + "'";
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
            TextBox6.Text = ctr.ToString();
            if (ctr == 0)
            {

                s = "insert into booking values(@name,@oname,@email,@emailid,@purpose,'Pending','',@id)";
                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.Add("@name", TextBox2.Text);
                cmd1.Parameters.Add("@purpose", TextBox1.Text);
                cmd1.Parameters.Add("@email", TextBox3.Text);
                cmd1.Parameters.Add("@emailid", TextBox4.Text);
                cmd1.Parameters.Add("@oname", TextBox5.Text);
                cmd1.Parameters.Add("@id", TextBox6.Text);








                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                //    Label1.Text = "Registered successfully";
                Response.Write("<script>alert('Booking Application Has Been Sent...Your Status is Pending..');window.location='donor.aspx';</script>");


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

            Response.Write(ex.ToString());

        }















































































































































































































































































































    }
}