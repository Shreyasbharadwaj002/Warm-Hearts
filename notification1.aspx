<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notification1.aspx.cs" Inherits="notification1" Debug="true" %>

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
          .auto-style4 {
              width: 412px;
              height: 50px;
          }
          .auto-style5 {
              height: 50px;
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
                  <li><a href="receiver.aspx">Home</a></li>
                  <li><a href="orphanage.aspx">Add orphanage details</a></li>
                  <li><a href="course1.aspx">Courses</a></li>
                  <li><a href="rbooking.aspx">Booking</a></li>
                  <li><a href="editpwd1.aspx">Edit Password</a></li>
                  <li><a href="notification.aspx">Notifications</a></li>
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
             
      <center><h1 style="color:aliceblue">ACCEPT THE FOOD</h1>

          <ContentTemplate>
                 <table style="font-family:Verdana;font-size:125%;width:702px;">
                     <tr>
                                  <td align="center" colspan="2" style="color:White;background-color:aliceblue; font-weight:bold;"></td>
                              </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label1" runat="server" Text="Id" ForeColor="White"></asp:Label>
              </td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox1" runat="server" Height="37px" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label2" runat="server" Text="Name" ForeColor="White"></asp:Label>
              </td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox2" runat="server" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Phone Number"></asp:Label>
              </td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox3" runat="server" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Donor's E-mail id"></asp:Label>
              </td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Your E-mail Id"></asp:Label>
              </td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox4" runat="server" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Address"></asp:Label>
              </td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" ToolTip="Enter The Address Where You Will Receive The Food" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Acceptance Date"></asp:Label>
              </td>
              <td class="auto-style5">
                  <asp:TextBox ID="TextBox6" runat="server" TextMode="DateTime" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr align="center">
              <td align="center" class="auto-style4">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button1" runat="server" Text="Accept" OnClick="Button1_Click1" />
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