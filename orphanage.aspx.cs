using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class orphanage : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        TextBox6.Text = (string)Session["emailid"];
        TextBox5.Text = (string)Session["phoneno"];
        string s = "select * from orphanage ";
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
        TextBox7.Text = ctr.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
                string s = "insert into orphanage values(@name,@oimage,@phno,@email,@address,@descr,@id)";
                SqlCommand cmd1 = new SqlCommand(s, con);
                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.Add("@id",TextBox7.Text);
                cmd1.Parameters.Add("@name", TextBox1.Text);
                cmd1.Parameters.Add("@oimage", FileUpload1.FileName);
                cmd1.Parameters.Add("@phno", TextBox5.Text);
                cmd1.Parameters.Add("@email", TextBox6.Text);
                cmd1.Parameters.Add("@address", TextBox2.Text);
                cmd1.Parameters.Add("@descr", TextBox3.Text);







                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                //    Label1.Text = "Registered successfully";
                Response.Write("<script>alert('Registered Successfully');window.location='receiver.aspx';</script>");


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox7.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
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