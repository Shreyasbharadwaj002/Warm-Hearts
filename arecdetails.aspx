<%@ Page Language="C#" AutoEventWireup="true" CodeFile="arecdetails.aspx.cs" Inherits="arecdetails" %>


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
  </head>

  <body>


      <form id="form1" runat="server">


      <!--header-->
      <header class="main-header clearfix" >
          <div class="logo">
              <a href="#" style="font-size:larger;"><em>AD</em>MIN</a>
          </div>
          <nav id="nav" class="main-nav" role="navigation">
              <ul class="main-menu">
                  <li><a href="admin.aspx">Home</a></li>
                  <li><a href="adonordetails.aspx">Donor's details</a></li>
                  <li><a href="arecdetails.aspx">Receivers details</a></li>
                  
                  <li><a href="aeditpwd.aspx">Edit Password</a></li>
                  <li><a href="ablog.aspx">Edit Blog</a></li>
                  <li><a href="aorphanage.aspx">Edit Orphanage</a></li>
                  <li><a href="aexpire.aspx">Delete Food Details</a></li>
                  <!-- <li><a href="#section5">Video</a></li> -->
                  
                  
            
                  <li><a href="signin.aspx">Logout</a></li>
              </ul>
          </nav>
          <hr />

      </header>

      <!-- ***** Main Banner Area Start ***** -->
      <section class="section main-banner" id="top" data-section="section1">
          <video autoplay muted loop id="bg-video">
              <source src="assets/images/course-video.mp4" type="video/mp4" />
          </video>

          <div class="video-overlay header-text">
              <div class="caption">         <h3 style="color:aliceblue">RECEIVER DETAILS</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="White" Height="500%" Width="100%">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [password], [emailid], [phno], [address], [name], [id] FROM [receiver]"></asp:SqlDataSource>
 </div>
                </div>
              </div>             

              </div>
          </div>
                </section>


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

          $(window).scroll(function () {
              checkSection();
          });
      </script>
      </form>
  </body>
</html>