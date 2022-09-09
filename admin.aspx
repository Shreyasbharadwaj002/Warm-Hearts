<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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

  <body style="background-image:url(assets/images/choosing-bg.jpg)">


      <form id="form1" runat="server">


      <!--header-->
      <header class="main-header clearfix" >
          <div class="logo">
              <a href="#"><em>WARM</em>HEARTS</a>
          </div>
          <nav id="nav" class="main-nav" role="navigation">
              <ul class="main-menu">
                  <li><a href="admin.aspx">Home</a></li>
                  <li><a href="adonordetails.aspx">Donor's details</a></li>
                  <li><a href="arecdetails.aspx">Receivers details</a></li>
                  <li><a href="aeditpwd.aspx">Edit Password</a></li>
                  <li><a href="ablog.aspx">Edit Blog</a></li>
                  <li><a href="aorphanage.aspx">Edit Orphanage</a></li>
                  <!-- <li><a href="#section5">Video</a></li> -->
                  
                  
            
                  <li><a href="signin.aspx">Logout</a></li>
              </ul>
          </nav>

      </header>

      <!-- ***** Main Banner Area Start ***** -->
      <!-- ***** Main Banner Area End ***** -->


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
              <div align="center">
          <h3>NUMBER OF USERS REGISTERED</h3>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT role, COUNT(*) AS count FROM donor GROUP BY role UNION ALL SELECT role, COUNT(*) AS count FROM receiver GROUP BY role"></asp:SqlDataSource>
              <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" LabelForeColor="White" BackColor="Transparent" Palette="None" CssClass="bg-transparent" Height="438px"  Width="698px" EnableViewState="True" PaletteCustomColors="Maroon; 128, 64, 64" style="margin-top: 81px" BorderlineWidth="2">
              <Series>
                  <asp:Series ChartType="Pie" LabelForeColor="White" Name="Count of Users" XValueMember="role" YValueMembers="count" Legend="Donor">
                  </asp:Series>
              </Series>
              <ChartAreas>
                  <asp:ChartArea Name="ChartArea1" BorderColor="White">
                  </asp:ChartArea>
              </ChartAreas>
                   <Legends>
                       <asp:Legend LegendStyle="Row" Name="Donor" TitleAlignment="Far">
                       </asp:Legend>
                       <asp:Legend Name="Receiver">
                       </asp:Legend>
                   </Legends>
                  <Titles>
                      <asp:Title Name="Title1">
                      </asp:Title>
                  </Titles>
                  <Annotations>
                      <asp:TextAnnotation Name="TextAnnotation1" Text="Donor">
                      </asp:TextAnnotation>
                      <asp:TextAnnotation Name="TextAnnotation2" Text="TextAnnotation2">
                      </asp:TextAnnotation>
                  </Annotations>
          </asp:Chart><br />
                  <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="250px" Width="638px" CssClass="auto-style1">
              <Series>
                  <asp:Series Name="Series1" XValueMember="status" YValueMembers="count">
                  </asp:Series>
              </Series>
              <ChartAreas>
                  <asp:ChartArea Name="ChartArea1">
                  </asp:ChartArea>
              </ChartAreas>
          </asp:Chart>
                  <br /><br />
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT status, count(*) as count from fdetails group by status;"></asp:SqlDataSource>
              <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Width="492px" Height="341px" CssClass="auto-style1" >
              <Series>
                  <asp:Series Name="Series1" XValueMember="oname" YValueMembers="rating">
                  </asp:Series>
              </Series>
              <ChartAreas>
                  <asp:ChartArea Name="ChartArea1">
                  </asp:ChartArea>
              </ChartAreas>
          </asp:Chart>
              
       
         
         
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT oname,rating from blog group by oname,rating;"></asp:SqlDataSource>
                  
              </div>

              
       
         
         
          
      </form>

     
  </body>

</html>