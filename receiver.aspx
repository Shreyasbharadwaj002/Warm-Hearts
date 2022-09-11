<%@ Page Language="C#" AutoEventWireup="true" CodeFile="receiver.aspx.cs" Inherits="receiver" %>


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
       
      <section class="section courses" data-section="section4">
      
                        <br /><br /><br /><br />
    <center><h1 style="color:white;font-family:Algerian">Here Are Some Videos Which Are Informative!!</h1></center>
                          <br /><br />
                          <figure>
                           <iframe width="1450" height="600" src="https://www.youtube.com/embed/5sxbsa-O-D0" title="Inspirational speech by Sudha murthy || 👌👌👌👌👌 speech ||" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                          </figure>
                   
                   <br />
                        
                          
                          <figure>
                              <iframe width="1450" height="600" src="https://www.youtube.com/embed/bq8eOm0zEIs" title="This Race Called Life - a beautiful inspirational short-story" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" ></iframe>
                          </figure><br />
                     <figure>
                              <iframe width="1450" height="600" src="https://www.youtube.com/embed/WDzQWrssKMA" title="People who grew up in an orphanage | Awkward questions" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                          </figure><br />
                        
                          
                          <figure>
                               <iframe width="1450" height="600" src="https://www.youtube.com/embed/Ux0ZWYDXk1c" title="Heart of an orphan: Amy Eldridge at TEDxSFA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" ></iframe>
                          </figure><br />
                      </>
                  
                        
                          
                          <figure>
                          <iframe width="1450" height="600" src="https://www.youtube.com/embed/1kLZJeFNP94" title="When PROBLEMS Are Beyond Your CONTROL ........" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                          </figure><br />
                           <figure>
                          <iframe width="1450" height="600" src="https://www.youtube.com/embed/_HEnohs6yYw" title="THE CHOICE (Short Animated Movie)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                          </figure><br />
                          <figure>
                           <iframe width="1450" height="600" src="https://www.youtube.com/embed/yyX6UULJEic" title="Resilience: Anticipate, organise, adapt" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                          </figure><br />
                          <figure>
                          <iframe width="1450" height="600" src="https://www.youtube.com/embed/GWGbOjlJDkU" title="Who are you?" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                          </figure><br />
                       
                      
      </section> 
     <footer>
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <p>
                          <i class="fa fa-copyright"></i> Presenting Warm Hearts 

                          | CONTACT US: <a href="mailto:sangeetha29sangu@gmail.com" rel="sponsored" target="_parent">sangeetha29sangu@gmail.com</a>
                           | <a href="mailto:shreyasbharadwaj002@gmail.com" rel="sponsored" target="_parent">shreyasbharadwaj002@gmail.com</a>
                      </p>
                  </div>
              </div>
          </div>
      </footer>
      

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

          $('.main-menu, .scroll-to-section').on('click', 'a', function (e) {
              if ($(e.target).hasClass('external')) {
                  return;
              }
              e.preventDefault();
              $('#menu').removeClass('active');
              showSection($(this).attr('href')true);
          });

          $(window).scroll(function () {
              checkSection();
          });
      </script>
                 

     </body>
    </html>

    