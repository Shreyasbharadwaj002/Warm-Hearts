using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class signin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\We-care\App_Data\Database.mdf;Integrated Security=True");
    SqlDataReader r;
    int f = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }




    protected void Button1_Click(object sender,EventArgs e)
    {
            try
            {
                if (DropDownList1.Text == "Admin")
                {
                    string s = "select * from admin";
                    SqlCommand cmd = new SqlCommand(s, conn);
                    conn.Open();
                    int f = 0;
                    r = cmd.ExecuteReader();
                    String name, password, un1, pwd1;
                    name = TextBox1.Text.Trim();
                    password = TextBox2.Text.Trim();
                    while (r.Read())
                    {
                        un1 = r.GetString(0).Trim();
                        pwd1 = r.GetString(1).Trim();
                    
                        if (name == un1 && password == pwd1)
                        {
                        // Label1.Text = "success";
                        Session["name"] = TextBox1.Text.Trim();
                        //Session["password"] = TextBox2.Text.Trim();
                        //Session["address"] = address;
                        f = 1;
                            Response.Redirect("admin.aspx");
                            break;
                        }
                    }
                    conn.Close();
                    r.Close();
                    if (f == 0)
                    {
                        Label4.Text = "Invalid username or password!";
                    }
                }
                else if (DropDownList1.Text == "Donor")
                {
                    string s = "select * from donor";
                    SqlCommand cmd = new SqlCommand(s, conn);
                    conn.Open();
                    r = cmd.ExecuteReader();
                    string email, password, un1, pwd1,n="",phno="";
                    email = TextBox1.Text.Trim();
                    password = TextBox2.Text.Trim();
                    while (r.Read())
                    {
                        un1 = r.GetString(4).Trim();
                        pwd1 = r.GetString(5).Trim();
                        n = r.GetString(1).Trim();
                        phno = r.GetString(3).Trim();
                        if (email == un1 && password == pwd1)
                        {

                            f = 1;
                            Session["email"] = TextBox1.Text.Trim();
                            Session["dname"] = n;
                            Session["dphno"] = phno;
                            Response.Redirect("donor.aspx");
                            break;
                        }
                    }
                    conn.Close();
                    r.Close();
                    if (f == 0)
                    {
                        Label4.Text = "Invalid username or password!";
                    }
                }
                else if (DropDownList1.Text == "Receiver")
                {
                 
                    string ss = "select * from receiver";
                    SqlCommand cmd1 = new SqlCommand(ss, conn);
                    conn.Open();
                    r = cmd1.ExecuteReader();
                    string unr, pwdr, unr1, pwdr1, n = "", phno = "";
                    unr = TextBox1.Text.Trim();
                    pwdr = TextBox2.Text.Trim();
                    while (r.Read())
                    {
                        unr1 = r.GetString(4).Trim();
                        pwdr1 = r.GetString(5).Trim();
                        n=r.GetString(1).Trim();
                        phno=r.GetString(3).Trim();
                        if (unr == unr1 && pwdr == pwdr1)
                        {
                            f = 1;
                             Session["emailid"] = TextBox1.Text.Trim();
                             Session["rname"] = n;
                             Session["phoneno"] = phno;
                             //Session["name"] = TextBox2.Text.Trim();
                             break;
                        }
                    }
                    conn.Close();
                    r.Close();
                    if (f == 0)
                    {
                        Label4.Text = "Invalid username or password!";
                    }
                    else
                    {
                        Response.Redirect("receiver.aspx");
                    }
                }
              
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
    }

  
}