<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orphanage.aspx.cs" Inherits="orphanage" Debug="true" %>

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
              left: 0px;
              top: 0px;
          }
          .auto-style2 {
              margin-left: 137px;
          }
          .auto-style5 {
              left: 0px;
              top: 0px;
              width: 407px;
              height: 52px;
          }
          .auto-style6 {
              left: 0px;
              top: 0px;
              height: 52px;
          }
          .auto-style7 {
              width: 407px;
              height: 52px;
          }
          .auto-style8 {
              height: 52px;
          }
          .auto-style9 {
              width: 407px;
              height: 47px;
          }
          .auto-style10 {
              height: 47px;
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

         <section class="auto-style1" id="top" data-section="section1">
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
    
          <center><h1 style="color:aliceblue">ORPHANAGE DETAILS</h1>

          <table style="font-family:Verdana;font-size:125%;" class="auto-style2">
              <tr>
                  <td class="auto-style5">
                      <asp:Label ID="Label7" runat="server" ForeColor="White" Text="ID"></asp:Label>
                  </td>
                  <td class="auto-style6">
                      <asp:TextBox ID="TextBox7" runat="server" Required=""></asp:TextBox>
                      
                  </td>
              </tr>
              <tr>
                  <td class="auto-style5">
                      <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Orphanage Name"></asp:Label>
                  </td>
                  <td class="auto-style6">
                      <asp:TextBox ID="TextBox1" runat="server" Required=""></asp:TextBox>
                   
                  </td>
              </tr>
              <tr>
                  <td class="auto-style5">
                      <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Image"></asp:Label>
                  </td>
                  <td class="auto-style6">
                      <asp:FileUpload ID="FileUpload1" runat="server"  ForeColor="White" Width="280px"/>
                     
                  </td>
              </tr>
              <tr>
                  <td class="auto-style7">
                      <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Address"></asp:Label>
                  </td>
                  <td class="auto-style8">
                      <asp:TextBox ID="TextBox2" runat="server" Required=""></asp:TextBox>
                    
                  </td>
              </tr>
              <tr>
                  <td class="auto-style9">
                      <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Your Requirements"></asp:Label>
                  </td>
                  <td class="auto-style10">
                      <asp:TextBox ID="TextBox3" runat="server" Required=""></asp:TextBox>
                      
                  </td>
              </tr>
              <tr>
                  <td class="auto-style7">
                      <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Contact Number"></asp:Label>
                  </td>
                  <td class="auto-style8">
                      <asp:TextBox ID="TextBox5" runat="server" Required=""></asp:TextBox>
                      
                  </td>
              </tr>
              <tr>
                  <td class="auto-style7">
                      <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Email Id"></asp:Label>
                  </td>
                  <td class="auto-style8">
                      <asp:TextBox ID="TextBox6" runat="server" Required=""></asp:TextBox>
                   
                  </td>
              </tr>
              <tr>
                  <td colspan="2">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button1" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="Submit" />
                  </td>
                  <td>
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
