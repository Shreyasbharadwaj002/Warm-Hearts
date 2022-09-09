<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>
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
                  <li><a href="index.html">Home</a></li>
                  <li><a href="about.aspx">About Us</a></li>
                  <li><a href="course.aspx">Courses</a></li>
                  <li><a href="donorsignup.aspx">Donor</a></li>
                  <li><a href="receiversignup.aspx">Receiver</a></li>
                  <li><a href="contact.aspx">Contact</a></li>
                  <li><a href="signin.aspx">Sign in</a></li>
                  
                   

              </ul>
          </nav>
          <hr/>
      </header>

      <!-- ***** Main Banner Area Start ***** -->
      <section class="section main-banner" id="top" data-section="section1">
          <video autoplay muted loop id="bg-video">
              <source src="assets/images/course-video.mp4" type="video/mp4" />
          </video>

          <div class="video-overlay header-text">
              <div class="caption">
                  <h6>Welcome to our world</h6>
                  <h2><em>WE</em> CARE</h2>
              </div>
          </div>
      </section>
      <!-- ***** Main Banner Area End ***** -->


       <section class="section why-us" data-section="">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <div class="section-heading">
                          <h2>How can you help?</h2>
                      </div>
                  </div>
                  <div class="col-md-12">
                      <div id='tabs'>
                          <ul>
                              <li><a href='#tabs-1'>Donation</a></li>
                              <li><a href='#tabs-2'>Education</a></li>
                              <li><a href='#tabs-3'>Visit</a></li>
                          </ul>
                          <section class='tabs-content'>
                              <article id='tabs-1'>
                                  <div class="row">
                                      <div class="col-md-6">
                                          <img src="assets/images/choose-us-image-01.png" alt="">
                                      </div>
                                      <div class="col-md-6">
                                          <h4>Donation</h4>
                                          <p>
                                              Children face a variety of economic, mental, emotional, and physical challenges as they grow. Proper support helps children navigate through those struggles on their journey to adulthood. Without proper support, they face those difficulties alone. Our donors’ support has made it so that thousands of children haven’t had to face those challenges alone.

                                              Thank you.
                                          </p>
                                      </div>
                                  </div>
                              </article>
                              <article id='tabs-2'>
                                  <div class="row">
                                      <div class="col-md-6">
                                          <img src="assets/images/choose-us-image-02.png" alt="">
                                      </div>
                                      <div class="col-md-6">
                                          <h4>Education</h4>
                                          <p>Online Classes are a combination of video recordings and live lectures with course reading and tests. They are generally conducted using a virtual portal and volunteers help orphanage children. And we are providing variety of courses which is apart from academics and additional activities to the orphans.</p>
                                      </div>
                                  </div>
                              </article>
                              <article id='tabs-3'>
                                  <div class="row">
                                      <div class="col-md-6">
                                          <img src="assets/images/choose-us-image-03.png" alt="">
                                      </div>
                                      <div class="col-md-6">
                                          <h4>Visit Orphanage</h4>
                                          <p>People who wish to visit orphanage and help them can book the orphanage before itself. So that orphanage trustees can make preparation and not give bookings for other people. So we are providing contacting and booking the orphanage.</p>
                                      </div>
                                  </div>
                              </article>

                          </section>
                      </div>
                  </div>
              </div>
          </div>
      </section>





      <footer>
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <p>
                          <i class="fa fa-copyright"></i> Copyright 2020 by Grad School

                          | Design: <a href="https://templatemo.com" rel="sponsored" target="_parent">TemplateMo</a>
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

          $('.main-menu, ').on('click', 'a', function (e) {
              if ($(e.target).hasClass('external')) {
                  return;
              }
              e.preventDefault();
              $('#menu').removeClass('active');
              showSection($(this).attr('href'), true);
          });

          $(window).scroll(function () {
              checkSection();
          });
      </script>
  </body>
</html>
