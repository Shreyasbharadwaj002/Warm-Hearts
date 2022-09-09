<%@ Page Language="C#" AutoEventWireup="true" CodeFile="volunteers.aspx.cs" Inherits="volunteers" %>


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
          .auto-style10 {
              height: 55px;
              width: 307px;
          }
          .auto-style11 {
              height: 55px;
          }
          .auto-style15 {
              height: 55px;
              width: 797px;
          }
          .auto-style18 {
              height: 55px;
              width: 432px;
          }
          .auto-style19 {
              height: 55px;
              width: 438px;
          }
          .auto-style20 {
              width: 1286px;
              margin-left: 331px;
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
                  <li><a href="index.aspx">Home</a></li>
                  <li><a href="about.aspx">About Us</a></li>
                  <li><a href="course.aspx">Courses</a></li>
                  <li><a href="#">Donor</a></li>
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
      <script>
          //according to loftblog tut
          $('.nav li:first').addClass('active');

          var showSection = function showSection(section, isAnimate) {
              var
                  direction = section.replace(/#/, ''),
                  reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                  reqSectionPos = reqSection.offset().top - 0;

              if (isAnimate) {
                  $('body, html').animate({
                      scrollTop: reqSectionPos
                  },
                      800);
              } else {
                  $('body, html').scrollTop(reqSectionPos);
              }

          };

          var checkSection = function checkSection() {
              $('.section').each(function () {
                  var
                      $this = $(this),
                      topEdge = $this.offset().top - 80,
                      bottomEdge = topEdge + $this.height(),
                      wScroll = $(window).scrollTop();
                  if (topEdge < wScroll && bottomEdge > wScroll) {
                      var
                          currentId = $this.data('section'),
                          reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                      reqLink.closest('li').addClass('active').
                          siblings().removeClass('active');
                  }
              });
          };

         
         

          $(window).scroll(function () {
              checkSection();
          });
      </script>
           <div class="video-overlay header-text">
              <div class="caption">
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
       <center><h1 style="color:aliceblue">VOLUNTEERS REGISTRATION</h1>

          <ContentTemplate>
                 <table style="font-family:Verdana;font-size:125%;" class="auto-style20">
                              <tr>
                                <!--  <td align="center" colspan="2" style="color:White;background-color:aliceblue; font-weight:bold;" class="auto-style13"></td>
                                  <td align="center" colspan="2" style="color:White;background-color:aliceblue; font-weight:bold;" class="auto-style14">&nbsp;</td>
                                  <td align="center" colspan="2" style="color:White;background-color:aliceblue; font-weight:bold;" class="auto-style13">&nbsp;</td>-->
                              </tr>
           <tr>
               <td class="auto-style19">
                   <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Name"></asp:Label>
               </td>
               <td class="auto-style18">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
               <td class="auto-style15">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style19">
                   <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Type of Course you offer"></asp:Label>
               </td>
               <td class="auto-style18">
                   <asp:DropDownList ID="DropDownList1" runat="server">
                       <asp:ListItem>Yoga Class</asp:ListItem>
                       <asp:ListItem>Art and Crafts</asp:ListItem>
                       <asp:ListItem>Aerobics</asp:ListItem>
                       <asp:ListItem>Sangeetha Class</asp:ListItem>
                       <asp:ListItem>Dance Class</asp:ListItem>
                       <asp:ListItem>Personality Development</asp:ListItem>
                       <asp:ListItem></asp:ListItem>
                   </asp:DropDownList>
               </td>
               <td class="auto-style15">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style19">
                   <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Available Time"></asp:Label>
               </td>
               <td class="auto-style18">
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               </td>
               <td class="auto-style15">
                   &nbsp;</td>
               <td class="auto-style10">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style19">
                   <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Phone Number"></asp:Label>
               </td>
               <td class="auto-style18">
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
               </td>
               <td class="auto-style15">
                   &nbsp;</td>
               <td class="auto-style10">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style19">
                   <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Email id"></asp:Label>
               </td>
               <td class="auto-style18">
                   <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr >
               <td colspan="2" class="auto-style11">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button1" align="center" runat="server"  Text="Upload"  BackColor="White" ForeColor="Black" BorderColor="White" OnClick="Button1_Click" />
               </td>
               <td class="auto-style15">
                   &nbsp;</td>
               <td class="auto-style11">
                   &nbsp;</td>
           </tr>
           </table>
            </center>
            
          </div>
               </div>
          </section>
        </form>
                
        </body>
</html>

