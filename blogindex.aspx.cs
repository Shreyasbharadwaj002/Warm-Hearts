using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class blogindex : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        string s = "select * from blogs ";
        con.Open();
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
        TextBox3.Text = ctr.ToString();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            String s = "insert into blogs values(@id,@name,@blog,@image)";
            SqlCommand cmd1 = new SqlCommand(s, con);
            cmd1 = new SqlCommand(s, con);

            cmd1.Parameters.Add("@name", TextBox1.Text);
            cmd1.Parameters.Add("@id",TextBox3.Text);
            cmd1.Parameters.Add("@image", FileUpload1.FileName);
            cmd1.Parameters.Add("@blog", TextBox2.Text);


            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            //    Label1.Text = "Registered successfully";
            Response.Write("<script>alert('Blog Uploaded successfully!!');window.location='index.html';</script>");


            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";

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