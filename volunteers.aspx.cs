using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class volunteers : System.Web.UI.Page
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



            String s = "insert into volunteers values(@vname,@ctype,@atime,@phno,@email)";
            SqlCommand cmd1 = new SqlCommand(s, con);
            cmd1 = new SqlCommand(s, con);

            cmd1.Parameters.Add("@vname", TextBox1.Text);
            cmd1.Parameters.Add("@ctype", DropDownList1.Text);
            cmd1.Parameters.Add("@atime", TextBox3.Text);
            cmd1.Parameters.Add("@phno", TextBox4.Text);
            cmd1.Parameters.Add("@email", TextBox5.Text);


            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            //    Label1.Text = "Registered successfully";
            Response.Write("<script>alert('Uploaded Successfully');window.location='index.html';</script>");

            TextBox1.Text = "";
            //TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            //  FileUpload1=new FileUpload();




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