using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class donor : System.Web.UI.Page
{

    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            String str = "select *  from orphanage";

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
            Response.Write("<div class=card style=background-image:url(assets/images/grey.jpg)>");

            String s = "", pid = "";
            while (reader.Read())
            {
                for (int i = 0; i <= 5; i++)
                {
                    s = reader.GetString(i).Trim();
                    if (i == 1)
                    {


                        Response.Write("<center><img src=" + s + " width=1500 height=500 /></center><br/>");

                    }
                    else if(i==0)
                    {
                       

                        pid = s;
                        Response.Write("<center><h1>" + s + "</h1></center><br/>");

                    }

                }

                Response.Write("<center><p><a href=orphanage1.aspx?name="+ pid +"><button style=background:green;color:white>Enquiry Now</button></a><hr/>");
                //  Response.Write("<td><a href=deletemovies1.aspx?id=" + pid + " ><img src=delete.jpg height=50 width=50></img></a></td>");
                // Response.Write("<td><a href=Editbook.aspx?id="+" class=btn btn-info btn-lg>       <span class=glyphicon glyphicon-pencil></span> Edit     </a></td>");
                //  Response.Write("<td><a href=deletebook.aspx?id=" + s + " >Delete</a></td>");
                //   Response.Write("<td><a href=Viewcommentsmainpage1.aspx?u=" + s + ">Download<a/></td>");

                // Response.Write("</tr>");


            }

            Response.Write("</div>");
            Response.Write("</div>");
            Response.Write("</div>");
           

        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }

    }



}