<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blogindex.aspx.cs" Inherits="blogindex" %>


<!DOCTYPE html>
<script runat="server">

   
</script>

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
          .auto-style5 {
              height: 55px;
              width: 388px;
          }
          .auto-style6 {
              height: 55px;
          }
          .auto-style9 {
              height: 18px;
              width: 388px;
          }
          </style>
      </head>

  <body>





      <form id="form1" runat="server">





          <!--header--><header class="main-header clearfix">
          <div class="logo">
              <a href="#"><em>WARM</em>HEARTS</a>
          </div>
          <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
                <li><a href="index.aspx">Home</a></li>
                  <li><a href="about.aspx">About Us</a></li>
                  <li><a href="course.aspx">Courses</a></li>
                  <li><a href="donorsignup.aspx">Donor</a></li>
                  <li><a href="receiversignup.aspx">Receiver</a></li>
                  <li><a href="contact.aspx">Contact</a></li>
                  <li><a href="signin.aspx">Sign in</a></li>
                   

              </ul>
          </nav>
          <hr/>
      </header>
    
          <section class="section main-banner" id="top" data-section="section1">
          <video autoplay muted loop id="bg-video">
              <source src="assets/images/course-video.mp4" type="video/mp4" />
          </video>
      <!-- Scripts -->
      <!-- Bootstrap core JavaScript -->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <script src="assets/js/isotope.min.js"></script>
      <script src="assets/js/owl-carousel.js"></script>
      <script src="assets/js/lightbox.js"></script>
      <script src="assets/js/tabs.js"></script>
      <script src="assets/js/video.js"></script>
      <script src="assets/js/slick-slider.js"></script>
      <script src="assets/js/custom.js"></script>
     
             <div class="video-overlay header-text">
              <div class="caption">
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
       <center><h1 style="color:aliceblue">BLOG HERE</h1>
           <ContentTemplate><table style="font-family:Verdana;font-size:125%;width:702px;">
              <tr>
                    <td align="center" colspan="2" style="color:White;background-color:aliceblue;font-weight:bold;">
                        </td>
               </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label7" runat="server" ForeColor="White" Text="ID"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox1" runat="server" ToolTip="Your Name" Width="278px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Blog"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox2" runat="server" ToolTip="Few opinions on the Orphanage" Width="285px" Columns="5" Rows="3" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Upload Image "></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="White" />
               </td>
           </tr>
           <tr align="center">
               <td class="auto-style9" colspan="2">
                   <asp:Button ID="Button1" align="center" runat="server"  Text="Submit"  BackColor="#0099CC" ForeColor="Black" BorderColor="#003366" OnClick="Button1_Click"/>
               </td>
           </tr>

           </table>
         </center>
          
          </div>
                 </div>
              </section>
          
        </form>
 
                
        </body>
</html>
