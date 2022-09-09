<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>




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
          </style>
      </head>

  <body>





      <form id="form1" runat="server">





      <!--header-->
  <header class="main-header clearfix">
          <div class="logo">
              <a href="#"><em>WARM</em>HEARTS</a>
          </div>
          <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
                  <li><a href="donor.aspx">Home</a></li>
                  <li><a href="editpwd.aspx">Edit Password</a></li>
                  <li><a href="blogs1.aspx">Feedback</a></li>
                  <li><a href="afood.aspx">Accepted Food</a></li>
                  <li><a href="fooddetails.aspx">Upload Food Details</a></li>
                  <li><a href="uploaddonation.aspx">Upload Donation</a></li>
                  <li><a href="signin.aspx">Logout</a></li>
                 
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
                  <center>
                      <h1 style="color:aliceblue">EDIT PASSWORD</h1>
           <ContentTemplate><table style="font-family:Verdana;font-size:125%;width:702px;">
              <tr>
                    <td align="center" colspan="2" style="color:White;background-color:aliceblue;font-weight:bold;">
                        </td>
               </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label2" runat="server" Text="Orphanage name" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label3" runat="server" Text="Phone Number" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Donor Email"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Receiver Email"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Purpose"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Date"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
               </td>
           </tr>
           <tr >
               <td colspan="2">
                  <center> <asp:Button ID="Button1" align="center" runat="server"  Text="Submit"  BackColor="#0099CC" ForeColor="Black" BorderColor="#003366" /></center>
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

