<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fooddetails.aspx.cs" Inherits="fooddetails" %>

<!DOCTYPE html>

<html lan="en">
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
          .auto-style3 {
              width: 405px;
          }
          .auto-style6 {
              width: 1032px;
              margin-left: 358px;
              height: 426px;
          }
          .auto-style7 {
              height: 50px;
              width: 405px;
          }
          .auto-style8 {
              height: 50px;
          }
          .auto-style12 {
              margin-bottom: 28;
          }
      </style>
      </head>
<body>
     <form id="form1" runat="server">
  <header class="main-header clearfix">
          <div class="logo">
              <a href="#"><em>WARM</em>HEARTS</a>
          </div>
          <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
                  <li><a href="donor.aspx">Home</a></li>
                  <li><a href="editpwd.aspx">Edit Password</a></li>
                  <li><a href="blogs1.aspx">Feedback</a></li>
                  <li><a href="afood.aspx">Accepted Food </a></li>
                  <li><a href="fooddetails.aspx">Upload Food Details</a></li>
                  <li><a href="uploaddonation.aspx">Upload Donation</a></li>
                  <li><a href="signin.aspx">Logout</a></li>
                 
              </ul>
          </nav>
          <hr/>
      </header>
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
       <center><h1 style="color:aliceblue">UPLOAD FOOD DETAILS</h1>

          <ContentTemplate>
                 <table style="font-family:Verdana;font-size:125%;" class="auto-style6">
                       
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label11" runat="server" Text="Id" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label2" runat="server" Text="Name" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label3" runat="server" Text="Phone Number" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label6" runat="server" Text="Email Id" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Address"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Width="281px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label7" runat="server" Text="Food Type" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label4" runat="server" Text="Number of people that can be fed" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style3">
                   <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style8">
                   <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Upload Image"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="White" Width="279px" />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style8">
                   <asp:Label ID="Label13" runat="server" ForeColor="White" Text="Prepared Date "></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label8" runat="server" Text="Expiry Date"  ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"   CssClass="auto-style12"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr >
               <td colspan="2" class="auto-style8">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button1"  runat="server"  Text="Upload"  BackColor="White" ForeColor="Black" BorderColor="White" OnClick="Button1_Click1" />
               </td>
           </tr>
           </table>
            </center>              

 

              </div>
                  </section>

         <asp:TextBox ID="TextBox12" runat="server" Visible="False"></asp:TextBox>

     </form>

</body>
</html>
