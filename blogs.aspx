<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blogs.aspx.cs" Inherits="blogs" Debug="true" %>

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
    <link href="assets/css/stylenew.css" rel="stylesheet">
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
 <script type="text/javascript">
     function fetch() {
         var a;
         if (document.querySelector('input[id="star-10"]:checked')) {
             a = document.getElementById("star-10").value;
             document.getElementById("TextBox4").value = a;
         }
         else if (document.querySelector('input[id="star-9"]:checked')) {
             a = document.getElementById("star-9").value;
             document.getElementById("TextBox4").value = a;
         }
         else if (document.querySelector('input[id="star-8"]:checked')) {
             a = document.getElementById("star-8").value;
             document.getElementById("TextBox4").value = a;
         }
         else if (document.querySelector('input[id="star-7"]:checked')) {
             a = document.getElementById("star-7").value;
             document.getElementById("TextBox4").value = a;
         }
         else if (document.querySelector('input[id="star-6"]:checked')) {
             a = document.getElementById("star-6").value;
             document.getElementById("TextBox4").value = a;
         }
     }
     

 </script>

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
                  <li><a href="blogs1.aspx">Blogs</a></li>
                  <li><a href="fooddetails.aspx">Upload Food Details</a></li>
                  <li><a href="uploaddonation.aspx">Upload Donations</a></li>
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
       <center><h1 style="color:aliceblue">GIVE YOUR FEEDBACK HERE</h1>
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
                   <asp:TextBox ID="TextBox1" runat="server" ToolTip="Your Name" Width="278px" Required=""></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Orphanage Name"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox3" runat="server" Required=""></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Feedback"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox2" runat="server" ToolTip="Few opinions on the Orphanage" Width="285px" Columns="5" Rows="3" TextMode="MultiLine" Required=""></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Ratings"></asp:Label>
               </td>
               <td class="auto-style6">
                 <div class="stars">
                            <input  name="star" type="radio" class="star-1" id="star-6" value="1" />
                            <label class="star-1" for="star-6">1</label>
                            <input name="star" type="radio" class="star-2" id="star-7" value="2" />
                            <label class="star-2" for="star-7">2</label>
                            <input name="star" type="radio" class="star-3" id="star-8" value="3" />
                            <label class="star-3" for="star-8">3</label>
                            <input name="star" type="radio" class="star-4" id="star-9" value="4" />
                            <label class="star-4" for="star-9">4</label>
                            <input name="star" type="radio" class="star-5" id="star-10" value="5" />
                            <label class="star-5" for="star-10">5</label>
                            <span></span> </div>
                   <asp:TextBox runat="server" id="TextBox4" Visible="false" Required=""></asp:TextBox>
                   <center><button  style="background-color:orange;border-color:orange;color:white" onclick="fetch()" >Take Rating</button></center>
                   
               </td>
                
           </tr>
           <tr align="center">
               <td class="auto-style9" colspan="2">
                   <asp:Button ID="Button1" align="center" runat="server"  Text="Submit"  BackColor="#0099CC" ForeColor="Black" BorderColor="#003366"  OnClick="Button1_Click"/>
               </td>
           </tr>

           <tr align="center">
               <td class="auto-style9" colspan="2">
                  <asp:Label runat="server" Text="Kindly select rating and click on take rating button" ID="Label8" ForeColor="White"></asp:Label> </td>
           </tr>

           </table>
         </center>
          
          </div>
                 </div>
              </section>
          
        </form>
                

                
        </body>
</html>
