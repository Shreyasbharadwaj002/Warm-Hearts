using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class clothes : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        TextBox3.Text = (string)Session["email"];
        TextBox1.Text = (string)Session["dname"];
        TextBox2.Text = (string)Session["dphno"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string s = "insert into clothes values(@name,@phno,@email,@nclothes)";
            SqlCommand cmd1 = new SqlCommand(s, con);
            cmd1 = new SqlCommand(s, con);


            cmd1.Parameters.Add("@name", TextBox1.Text);
            cmd1.Parameters.Add("@phno", TextBox2.Text);
            cmd1.Parameters.Add("@email", TextBox3.Text);
            //cmd1.Parameters.Add("@btype", CheckBoxList1.Text);
            cmd1.Parameters.Add("@nclothes", TextBox6.Text);







            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            //    Label1.Text = "Registered successfully";
            Response.Write("<script>alert('Donation is Confirmed.Please wait until receiver contacts you');window.location='receiver.aspx';</script>");


            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            //TextBox4.Text = "";
            // TextBox5.Text = "";
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