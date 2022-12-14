<%@ Page Language="C#" AutoEventWireup="true" CodeFile="receiversignup.aspx.cs" Inherits="receiversignin" %>

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
              height: 55px;
              width: 397px;
          }
          .auto-style5 {
              height: 55px;
          }
          .auto-style6 {
              height: 8px;
          }
          .auto-style7 {
              width: 875px;
              margin-left: 168px;
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
                  <li><a href="donorsignup.aspx">Donor</a></li>
                  <li><a href="#">Receiver</a></li>
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
                  <center>
                      <h1 style="color:aliceblue">RECEIVER'S REGISTRATION</h1>
            <ContentTemplate>
                
                          <table style="font-family:Verdana;font-size:125%;" class="auto-style7">
                              
                              <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="White"></asp:Label>
                   </td>
                   <td class="auto-style5">
                       <asp:TextBox ID="TextBox1" runat="server" Required=""></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="Textbox1" ValidationExpression="[a-zA-Z ]*$" Display="Dynamic" ForeColor="White" ErrorMessage="Use Only Alphabets"></asp:RegularExpressionValidator>
                   </td>
             
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label2" runat="server" Text="Address" ForeColor="White"></asp:Label>
                   </td>
                   <td class="auto-style5">
                       <asp:TextBox ID="TextBox2" runat="server" Height="38px" TextMode="MultiLine" ToolTip="Enter Your Address" Width="277px" Required=""></asp:TextBox>
                   </td>
                 
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label3" runat="server" Text="Phone Number" ForeColor="White" ></asp:Label>
                   </td>
                   <td class="auto-style5">
                       <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" Required=""></asp:TextBox>
                       <asp:RegularExpressionValidator runat="server" ControlToValidate="Textbox3" ValidationExpression="^[6-9][0-9]{9}$" Display="Dynamic" ForeColor="White" ErrorMessage="Enter Valid Phone Number"></asp:RegularExpressionValidator>
                   </td>

               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label5" runat="server" Text="Email" ForeColor="White"></asp:Label>
                   </td>
                   <td class="auto-style5">
                       <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Required="" ></asp:TextBox>
                   </td>
                
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label6" runat="server" Text="Password" ForeColor="White"></asp:Label>
                   </td>
                   <td class="auto-style5">
                       <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Required=""></asp:TextBox>
                   </td>
                 
               </tr>
               <tr>

                   <td colspan="2" class="auto-style5">
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" BackColor="White" BorderColor="White" />
                       
                   </td>

                   <td class="auto-style5">
                       &nbsp;</td>
               </tr>
               <tr >

                   <td colspan="2" class="auto-style6">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signin.aspx">Already registered? Click Here</asp:HyperLink>
                   </td>

                   <td class="auto-style6">
                       &nbsp;</td>
               </tr>
           </table>
                 <table class="w-100">
              <tr>
                  <td class="auto-style29" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" Text="---&gt; * This symbol indicates the fields are required and must be filled compulsorily" ForeColor="White"></asp:Label>
                    
                  </td>
              </tr>
              <tr>
                  <td class="auto-style29" colspan="2">
                      &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Password minimum length must be 8 and maximum length can  be  16 characters, containing one uppercase and lowercase letter with atleast one number." ForeColor="White" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
                    
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

