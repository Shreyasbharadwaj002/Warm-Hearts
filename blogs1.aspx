<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blogs1.aspx.cs" Inherits="blogs1" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>WARM HEARTS</title>
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--
    
TemplateMo 557 Grad School

https://templatemo.com/tm-557-grad-school

-->
      <style type="text/css">
          .auto-style1 {
              margin-top: 213px;
          }
          .id{
              font-size:x-small;
          }
      </style>
  </head>

 <body>


      <form id="form1" runat="server">


      <!--header-->
  <header class="main-header clearfix">
          <div  class="logo">
              <a href="#" ><em>WARM</em>HEARTS</a>
          </div>
          <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
                  <li><a href="donor.aspx">Home</a></li>
                  <li><a href="editpwd.aspx">Edit Password</a></li>
                  <li><a href="blogs1.aspx">feedback</a></li>
                  <li><a href="afood.aspx">Accepted Food</a></li>
                  <li><a href="fooddetails.aspx">Upload Food Details</a></li>
                  <li><a href="uploaddonation.aspx">Upload Donation</a></li>
                  <li><a href="signin.aspx">Logout</a></li>
                 
              </ul>
          </nav>
          
      </header>


         <section class="section main-banner" id="top" data-section="section1">
          <video autoplay muted loop id="bg-video">
              <source src="assets/images/course-video.mp4" type="video/mp4" />
          </video>
             <div class="video-overlay header-text">
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>

                 <center><h2 style="color:aliceblue">BLOGS ON ORPHANAGES</h2></center>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SqlDataSource1" style="color:white" PagerStyle-Width="100">
                                
              <Columns>
                  <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                  <asp:BoundField DataField="oname" HeaderText="Orphanage Name" SortExpression="oname" />
                  <asp:BoundField DataField="blog" HeaderText="Blog" SortExpression="blog" />
                  <asp:BoundField DataField="rating" HeaderText="Reviews(Stars)" SortExpression="review" />
                  <asp:TemplateField>
                      <ItemTemplate>
                          <asp:Button runat="server" PostBackUrl="~/uploaddonation.aspx" BackColor="Orange" BorderColor="Orange" ForeColor="White" Text="Donate"/>
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
                 <PagerStyle Width="100px" />
          </asp:GridView>
                  </div>
                  </section>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [blog]"></asp:SqlDataSource>
      </form>
 
     </body>
    </html>