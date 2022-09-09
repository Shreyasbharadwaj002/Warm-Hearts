using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        con.Open();

        string s = "select * from contact";
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
        TextBox1.Text = ctr.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
          string  s = "insert into contact values(@id,@fname,@femail,@msg)";
            SqlCommand cmd11 = new SqlCommand(s, con);
            cmd11.Parameters.Add("@id", TextBox1.Text);
            cmd11.Parameters.Add("@fname", TextBox2.Text);
            cmd11.Parameters.Add("@femail", TextBox3.Text);
            cmd11.Parameters.Add("@msg", TextBox4.Text);
            con.Open();
            cmd11.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Feedback Sent Successfully...');window.location='index.aspx';</script>");
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}