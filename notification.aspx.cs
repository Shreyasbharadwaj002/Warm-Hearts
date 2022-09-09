using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class notification : System.Web.UI.Page
{

    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        

        try
        {

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);

            String str = "select *  from fdetails where  status='Awaited'";

            //String id = Request.QueryString.Get(0);



            //string ln = Session["logname"].ToString();
            // str = "select *  from addmovies";
            SqlCommand cm = new SqlCommand(str, con);
            SqlDataReader reader;
            con.Open();
            //  string cat = "", cat1 = "";
            reader = cm.ExecuteReader();
            Response.Write("<body style=background-image:url(assets/images/choosing-bg.jpg) > ");

            Response.Write("<br><br><br/><br/><h1 style=color:white align=center>NOTIFICATIONS</h1><div id=menu>	</div>");

            Response.Write("<table style=color:white align=center border=5><tr><td>Id</td><td>Donor Name</td><td>Phone Number</td><td>Email Id</td><td>Address</td><td>Type Of Food</td><td>Number Of People Can Be Fed</td> <td>Image Of Food</td><td>Prepared Date</td>s<td>Expiry Date</td><td></td></tr><tr>");

            String s = "", pid = "", d="",em="";
            while (reader.Read())
            {
                for (int i = 0; i <= 9; i++)
                {
                    s = reader.GetString(i).Trim();
                   
                    if (i == 7)
                    {

                        //Response.Write(s);

                        //Response.Write("<td>" + s + " </td>");
                        Response.Write("<td><img src=" + s + " width=100 height=100 ></img></td>");
                        //    Response.Write("<td><a href=addtocart.aspx?id=" + s + " >Add to Cart</a></td>");
                    }
                    else if (i == 0)
                    {
                        pid = s;
                        Response.Write("<td>" + s + " </td>");


                    }
                    else if (i==3)
                    {
                        em = s;
                        Response.Write("<td>" + s + " </td>");
                    }
                    else if (i==9)
                    {
                        d = s;
                        Response.Write("<td>" + s + " </td>");
                    }
                    else 
                    {
                        Response.Write("<td>" + s + " </td>");
                    }



                }
                DateTime date1 = DateTime.Parse(d);
                DateTime date2 = DateTime.Now;
                if (date1.Date >= date2.Date)
                {
                    Response.Write("<td><a href=notification1.aspx?fid=" + pid + "&expirydate=" + d + "&email=" + em + "><button style=background:green;color:white;border:green><b>ACCEPT</b></button></a></td>");
                    //  Response.Write("<td><a href=deletemovies1.aspx?id=" + pid + " ><img src=delete.jpg height=50 width=50></img></a></td>");
                    // Response.Write("<td><a href=Editbook.aspx?id="+" class=btn btn-info btn-lg>       <span class=glyphicon glyphicon-pencil></span> Edit     </a></td>");
                    //  Response.Write("<td><a href=deletebook.aspx?id=" + s + " >Delete</a></td>");
                    //   Response.Write("<td><a href=Viewcommentsmainpage1.aspx?u=" + s + ">Download<a/></td>");
                }
                else
                {
                    Response.Write("<td style=color:red;><b>EXPIRED</b></td>");
                }
                Response.Write("</tr>");
            }
            Response.Write("</table>");
            Response.Write("</body>");
            // Response.Write("<a href=homepage.aspx> back </a>");
            con.Close();




        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
}
