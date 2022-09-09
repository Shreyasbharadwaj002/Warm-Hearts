using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class blogs : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        String n = Request.QueryString.Get(0);
        TextBox3.Text=n;
        TextBox1.Text = (string)Session["dname"];
        
      }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            String s = "insert into blog values(@name,@oname,@blog,@rating)";
            SqlCommand cmd1 = new SqlCommand(s, con);
            cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.Add("@name", TextBox1.Text);
                cmd1.Parameters.Add("@oname", TextBox3.Text);
                cmd1.Parameters.Add("@blog", TextBox2.Text);
                cmd1.Parameters.Add("@rating",TextBox4.Text);


                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                //    Label1.Text = "Registered successfully";
                Response.Write("<script>alert('Feedback Uploaded successfully!!');window.location='donor.aspx';</script>");


                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox2.Text = "";
                //TextBox4.Text = "";

            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();


        }
        catch (Exception ex)
        {

            Label7.Text = ex.ToString();

        }
    }
}