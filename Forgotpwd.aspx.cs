using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class Forgotpwd : System.Web.UI.Page
{
    SqlConnection conn;
    SqlConnection con1;

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownList1.Text == "Donor")
            {
                String str = "select * from donor where email=" + "'" + TextBox1.Text + "'";
                SqlCommand cm = new SqlCommand(str, conn);
                SqlDataReader reader;
                conn.Open();
                reader = cm.ExecuteReader();

                int f1 = 0;
                while (reader.Read())
                {

                    f1++;



                }
                conn.Close();
                if (f1 == 0)
                {
                    Response.Write("<script>alert('Sorry,Invalid User Id');window.location='Forgotpwd.aspx';</script>");
                }
                else
                {


                    string allowedChars = "";
                    allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";
                    allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
                    allowedChars += "1,2,3,4,5,6,7,8,9,0,!,@,#,$,%,&,?";

                    char[] sep = { ',' };

                    string[] arr = allowedChars.Split(sep);

                    string passwordString = "";

                    string temp = "";

                    Random rand = new Random();
                    string txt = TextBox1.Text;

                    for (int i = 0; i < Convert.ToInt32(txt.Length); i++)
                    {
                        temp = arr[rand.Next(0, arr.Length)];
                        passwordString += temp;
                    }
                    //    Label1.Text = passwordString;
                    //
                    string str1 = "update donor set password = @p where email= " + "'" + TextBox1.Text.Trim() + "'";
                    //Response.Write(str1);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(str1, conn);
                    cmd.Parameters.Add("@p", passwordString);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label3.Text = "Your New Password is:"+passwordString;
                    //Response.Write("<script>alert('New Password generated successfully..Your New Password is sent to your registered emaild id');window.location='signin.aspx';</script>");


                    ////////////////////////////////////////////
                    //MailMessage msg = new MailMessage();
                    //msg.From = new MailAddress("sridharjoshi1603@gmail.com");
                    //msg.To.Add(TextBox1.Text);
                    //msg.Subject = "testing";
                    //msg.Body = "Your New Password is " + passwordString;
                    //msg.IsBodyHtml = true;
                    //SmtpClient smtp = new SmtpClient();
                    //smtp.Host = "smtp.gmail.com";
                    //System.Net.NetworkCredential Networkcred = new System.Net.NetworkCredential();
                    //Networkcred.UserName = "joshinotes@gmail.com";
                    //Networkcred.Password = "1305sapna";
                    //smtp.UseDefaultCredentials = true;
                    //smtp.Credentials = Networkcred;
                    //smtp.Port = 587;
                    ////smtp.Port = 465;
                    //smtp.EnableSsl = true;
                    //smtp.Send(msg);
                    
                    //Label2.Text = "New Password Generated  Is Sent To Your Mail Account.";
                  

                }


              }
                 else if(DropDownList1.Text == "Receiver")
                {
                    String str = "select * from receiver where emailid=" + "'" + TextBox1.Text + "'";
                    SqlCommand cm = new SqlCommand(str, conn);
                    SqlDataReader reader;
                    conn.Open();
                    reader = cm.ExecuteReader();

                    int f1 = 0;
                    while (reader.Read())
                    {

                        f1++;



                    }
                    conn.Close();
                    if (f1 == 0)
                    {
                      Response.Write("<script>alert('Sorry,Invalid User Id');window.location='Forgotpwd.aspx';</script>");
                    }
                    else
                    {


                        string allowedChars = "";
                        allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";
                        allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
                        allowedChars += "1,2,3,4,5,6,7,8,9,0,!,@,#,$,%,&,?";

                        char[] sep = { ',' };

                        string[] arr = allowedChars.Split(sep);

                        string passwordString = "";

                        string temp = "";

                        Random rand = new Random();
                        string txt = TextBox1.Text;

                        for (int i = 0; i < Convert.ToInt32(txt.Length); i++)
                        {
                            temp = arr[rand.Next(0, arr.Length)];
                            passwordString += temp;
                        }
                        //    Label1.Text = passwordString;
                        //
                        string str1 = "update receiver set password = @p where emailid= " + "'" + TextBox1.Text.Trim() + "'";
                        //Response.Write(str1);
                        conn.Open();
                        SqlCommand cmd = new SqlCommand(str1, conn);
                        cmd.Parameters.Add("@p", passwordString);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    Label3.Text = "Your New Password is:    " + passwordString;

                    //Response.Write("<script>alert('New Password generated successfully..Your New Password is sent to your registered emaild id');window.location='signin.aspx';</script>");


                    ////////////////////////////////////////////
                    //MailMessage msg = new MailMessage();
                    //msg.From = new MailAddress("sridharjoshi1603@gmail.com");
                    //msg.To.Add(TextBox1.Text);
                    //msg.Subject = "testing";
                    //msg.Body = "Your New Password is " + passwordString;
                    //msg.IsBodyHtml = true;
                    //SmtpClient smtp = new SmtpClient();
                    //smtp.Host = "smtp.gmail.com";
                    //System.Net.NetworkCredential Networkcred = new System.Net.NetworkCredential();
                    //Networkcred.UserName = "joshinotes@gmail.com";
                    //Networkcred.Password = "1305sapna";
                    //smtp.UseDefaultCredentials = true;
                    //smtp.Credentials = Networkcred;
                    //smtp.Port = 587;
                    ////smtp.Port = 465;
                    //smtp.EnableSsl = true;
                    //smtp.Send(msg);

                    //Label1.Text = "New Password Generated  Is Sent To Your Mail Account.";




                    }
                }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }


    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        //create new sqlconnection and connection to database by using connection string from web.config file  
        conn = new SqlConnection(strcon);
    }
}

    