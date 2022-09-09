using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class orphanage1 : System.Web.UI.Page
{

    SqlConnection con;
    SqlConnection conn;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string n=Request.QueryString.Get(0);
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            String str = "select *  from orphanage where name=" + "'" + n + "'";


            //String id = Request.QueryString.Get(0);



            //string ln = Session["logname"].ToString();
            // str = "select *  from addmovies";
            SqlCommand cm = new SqlCommand(str, con);
            SqlDataReader reader;
            con.Open();
            //  string cat = "", cat1 = "";
            reader = cm.ExecuteReader();

            Response.Write("<body style=background-image:url(assets/images/choosing-bg.jpg) > ");

            Response.Write("<br/><br/><br/><h1 style=color:white align=center>ORPHANAGES</h1><br/><br/>");
            Response.Write("<div class=row>");
            Response.Write("<div class=col-md-12 my-2>");
            Response.Write("<div class=card  style=background-image:url(assets/images/grey.jpg);>");

            String s = "", pid = "";
            while (reader.Read())
            {
                for (int i = 0; i <= 5; i++)
                {
                    s = reader.GetString(i).Trim();
                    if (i == 1)
                    {

                        Response.Write("<center><img src=" + s + " width=1500 height=500 ></img></center>");



                        //Response.Write(s);

                        //Response.Write("<td>" + s + " </td>");

                        //    Response.Write("<td><a href=addtocart.aspx?id=" + s + " >Add to Cart</a></td>");
                    }
                    else if (i == 0)
                    {
                        pid = s;
                        Response.Write("<center><h1>" + s + "</h2></center>");
                    }
                    else
                    {
                        Response.Write("<center><h4>" + s + " </h4></center>");

                    }

                }

                Response.Write("<center><p><a href=uploaddonation.aspx><button style=background:green;color:white>Donate</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><a href=course.aspx><button style=background:green;color:white>Course</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><a href=blogs.aspx?name=" + pid + " ><button style=background:green;color:white>Feedback</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a><a href=booking.aspx><button style=background:green;color:white>Booking</button></a></p><hr/>");
                //  Response.Write("<td><a href=deletemovies1.aspx?id=" + pid + " ><img src=delete.jpg height=50 width=50></img></a></td>");
                // Response.Write("<td><a href=Editbook.aspx?id="+" class=btn btn-info btn-lg>       <span class=glyphicon glyphicon-pencil></span> Edit     </a></td>");
                //  Response.Write("<td><a href=deletebook.aspx?id=" + s + " >Delete</a></td>");
                //   Response.Write("<td><a href=Viewcommentsmainpage1.aspx?u=" + s + ">Download<a/></td>");

                // Response.Write("</tr>");


            }

            Response.Write("</div>");
            Response.Write("</div>");
            Response.Write("</div>");
            con.Close();
         
            conn = new SqlConnection(strcon);

            String str1 = "select *  from blog where oname="+"'"+ n +"'" ;

            //String id = Request.QueryString.Get(0);



            //string ln = Session["logname"].ToString();
            // str = "select *  from addmovies";
            SqlCommand cm1 = new SqlCommand(str1, conn);
            SqlDataReader reader1;
            conn.Open();
            //  string cat = "", cat1 = "";
            reader1 = cm1.ExecuteReader();
            Response.Write("<body style=background-image:url(assets/images/choosing-bg.jpg) > ");

            Response.Write("<br/><br/><h1 style=color:white align=center>FEEDBACK</h1>");

            Response.Write("<table style=color:white;font-size:20; align=center border=5><tr><td>Name</td><td>FeedBack</td><td>Rating</td></tr><tr>");

            String s1 = "";
            while (reader1.Read())
            {
                for (int i = 0; i <= 3; i++)
                {
                    s1 = reader1.GetString(i).Trim();

                    if (i == 0)
                    {
                        Response.Write("<td>" + s1 + " </td>");
                    }
                   
                    else if (i == 2)
                    {
                        
                        Response.Write("<td>" + s1 + " </td>");
                    }
                    else if (i == 3)
                    {
                        Response.Write("<td>" + s1 + " </td>");
                    }


                   

                }


                Response.Write("</tr>");
            }
           
            Response.Write("</table>");
            Response.Write("</body>");
            // Response.Write("<a href=homepage.aspx> back </a>");
            conn.Close();




        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }


    }
        }
     

 
