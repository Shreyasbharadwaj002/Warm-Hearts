﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

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
                  <li><a href="#">Home</a></li>
                  <li><a href="about.aspx">About Us</a></li>
                  <li><a href="course.aspx">Courses</a></li>
                  <li><a href="donorsignup.aspx">Donor</a></li>
                  <li><a href="receiversignup.aspx">Receiver</a></li>
                  <li><a href="contact.aspx">Contact</a></li>
                  <li><a href="signin.aspx">Sign in</a></li>



              </ul>
             
          </nav>
          <hr />
      </header>



      <!-- ***** Main Banner Area Start ***** -->
      <section class="section main-banner" >
          <video autoplay muted loop id="bg-video">
              <source src="assets/images\course-video.mp4"
                      type="video/mp4" />
          </video>

          <div class="video-overlay header-text">
              <div class="caption">
                  <h6>Welcome to our world</h6>
                  <h2><em>WARM</em>HEARTS</h2>
                  <div class="main-button">
                    <div class=""><a href="#section2">Join with us</a></div>
                  </div>
              </div>
          </div>
      </section>
      <!-- ***** Main Banner Area End ***** -->


      <section class="features" >
          <div class="container">
              <div class="row">
                  <div class="col-lg-4 col-12">
                      <div class="features-post">
                          <div class="features-content">
                              <div class="content-show">
                                  <h4><center><i class="fa fa-pencil"></i>BLOGS</center></h4>
                              </div>
                              <div class="content-hide">
                                  <p>Anybody can share their thoughts that they have experienced when they visited any Orphanage by writing the BLOGS</p>
                                  <p class="hidden-sm">Anybody can share their thoughts that they have experienced when they visited any Orphanage by writing the BLOGS</p>
                                  <div class=""><a href="blogindex.aspx">More Info</a></div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-4 col-12">
                      <div class="features-post second-features">
                          <div class="features-content">
                              <div class="content-show">
                                  <h4><i class="fa fa-graduation-cap"></i>Donations</h4>
                              </div>
                              <div class="content-hide">
                                  <p>A donation is a gift for charity, humanitarian aid, or to benefit a cause. A donation may take various forms, including money, books, clothes, services.</p>
                                  <p class="hidden-sm">A donation is a gift for charity, humanitarian aid, or to benefit a cause. A donation may take various forms, including money, books, clothes, services.</p>
                                  <div class="scroll-to-section"><a href="uploaddonation.aspx">More Info</a></div>
                              </div>
                          </div>
                      </div>
                  </div>

                  <div class="col-lg-4 col-12">
                      <div class="features-post third-features">
                          <div class="features-content">
                              <div class="content-show">
                                  <h4><i class="fa fa-book"></i>Online classes</h4>
                              </div>
                              <div class="content-hide">
                                  <p>Volunteers can take online sessions to the children in the orphanage which helps to increase the skills.</p>
                                  <p class="hidden-sm">Volunteers can take online sessions to the children in the orphanage which helps to increase the skills.</p>
                                  <div class="scroll-to-section"><a href="course.aspx"></a></div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </section>

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

       <section class="section courses" data-section="section4">
          <div class="container-fluid">
              <div class="row">
                  <div class="col-md-12">
                      <div class="section-heading">
                          <h2>Choose Your Course</h2>
                      </div>
                  </div>
                  <div class="owl-carousel owl-theme">
                      <div class="item">
                          <img src="assets/images/courses-01.jpg" alt="Course #1">
                          <div class="down-content">
                              <h4>Yoga Class</h4>
                              <p>
                                  It’s time to roll out your yoga mat and discover the combination of physical and mental exercises that for thousands of years.Whether you are young or old, overweight or fit, yoga has the power to calm the mind and strengthen the body. Yoga is for everyone.

                              </p>
                              <div class="author-image">
                                  <img src="assets/images/author-01.png" alt="Author 1">
                              </div>
                              <div class="text-button-pay">
                    
                                  <a href="signin.aspx">Contact<i class="fa fa-angle-double-right"></i></a>
                              </div>
                          </div>
                      </div>
                      <div class="item">
                          <img src="assets/images/courses-02.jpg" alt="Course #2">
                          <div class="down-content">
                              <h4>Art and Craft making</h4>
                              <p>elit dictum, quis volutpat enim blandit. Maecenas a lectus ac ipsum porta.</p>
                              <div class="author-image">
                                  <img src="assets/images/author-02.png" alt="Author 2">
                              </div>
                              <div class="text-button-pay">
                                  <a href="signin.aspx">Contact<i class="fa fa-angle-double-right"></i></a>
                              </div>
                          </div>
                      </div>
                      <div class="item">
                          <img src="assets/images/courses-03.jpg" alt="Course #3">
                          <div class="down-content">
                              <h4>Aerobics</h4>
                              <p>Pellentesque ultricies diam magna, auctor cursus lectus pretium nec. Maecenas finibus lobortis enim.</p>
                              <div class="author-image">
                                  <img src="assets/images/author-03.png" alt="Author 3">
                              </div>
                              <div class="text-button-pay">
                                  <a href="signin.aspx">Contact<i class="fa fa-angle-double-right"></i></a>
                              </div>
                          </div>
                      </div>
                      <div class="item">
                          <img src="assets/images/courses-03.jpg" alt="Course #3">
                          <div class="down-content">
                              <h4>Sangeetha Class</h4>
                              <p>Pellentesque ultricies diam magna, auctor cursus lectus pretium nec. Maecenas finibus lobortis enim.</p>
                              <div class="author-image">
                                  <img src="assets/images/author-03.png" alt="Author 3">
                              </div>
                              <div class="text-button-pay">
                                  <a href="signin.aspx">Contact<i class="fa fa-angle-double-right"></i></a>
                              </div>
                          </div>
                      </div>
                      <div class="item">
                          <img src="assets/images/courses-04.jpg" alt="Course #4">
                          <div class="down-content">
                              <h4>Dance Class</h4>
                              <p>Download free images and videos for your websites by visiting Unsplash, Pixabay, and Pexels.</p>
                              <div class="author-image">
                                  <img src="assets/images/author-04.png" alt="Author 4">
                              </div>
                              <div class="text-button-pay">
                                  <a href="signin.aspx">Contact<i class="fa fa-angle-double-right"></i></a>
                              </div>
                          </div>
                      </div>
                      <div class="item">
                          <img src="assets/images/courses-05.jpg" alt="">
                          <div class="down-content">
                              <h4>Personality Development</h4>
                              <div class="author-image">
                                  <img src="assets/images/author-05.png" alt="">
                              </div>
                              <div class="text-button-pay">
                                  <a href="signin.aspx">Contact<i class="fa fa-angle-double-right"></i></a>
                              </div>
                          </div>
                      </div>

                  </div>
              </div>
          </div>
      </section>


      <section class="section video" id="section2">
          <div class="container">
              <div class="row">
                  <div class="col-md-6 align-self-center">
                      <div class="left-content">
                          <span>KNOW HOW VOLUNTEERS WORK</span>
                          <h4>Watch the sample video<em> to know how volunteers work</em></h4>
                          <p>
                              <blockquote> There are already many volunteers working with us to provide proper knowledge,proper health awareness.They give their precious time to teach the orphans.</blockquote>
                              <br><br><h5>So if you are interested to join your hands with us, apply here.</h5>
                          </p>
                          <div class="main-button"><a rel="nofollow" href="volunteers.aspx">Click here</a></div>
                      </div>
                  </div>
                  <div class="col-md-6">
                      <article class="video-item">
                          <h3 style="color:white">Sample Video</h3>
                          
                          <figure>
                              <iframe width="600" height="400" src="https://www.youtube.com/embed/c8hjhRqIwHE" title="Yoga For Beginners :Part 1 | Yoga Routine | Yoga At Home | Yoga Routine For Beginners | Cult Fit" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                          </figure>
                      </article>
                  </div>
              </div>
          </div>
      </section>

      <section class="section contact" data-section="section6">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <div class="section-heading">
                          <h2>Let’s Keep In Touch</h2>
                      </div>
                  </div>
                  <div class="col-md-6">

                      <!-- Do you need a working HTML contact-form script?

                    Please visit https://templatemo.com/contact page -->
                      <form runat="server" id="form1">
                          <div  class="row">
                              <div class="col-md-6">
                                  <fieldset>
                                      <asp:Textbox runat="server" name="name" type="text" class="form-control" ID="TextBox1" placeholder="Your Name" Visible="false" ></asp:Textbox>
                                  </fieldset>
                                  <fieldset>
                                      <asp:Textbox runat="server" name="name" type="text" class="form-control" ID="TextBox2" placeholder="Your Name" ></asp:Textbox>
                                  </fieldset>
                              </div>
                              <div class="col-md-6">
                                  <fieldset>
                                      <asp:Textbox  runat="server" name="email" type="text" class="form-control" ID="TextBox3" placeholder="Your Email" required=""></asp:Textbox>
                                  </fieldset>
                              </div>
                              <div class="col-md-12">
                                  <fieldset>
                                      <asp:Textbox runat="server" name="message" rows="6" class="form-control" ID="TextBox4" TextMode="MultiLine" placeholder="Your message..." required=""></asp:Textbox>
                                  </fieldset>
                              </div>
                              <div class="col-md-12">
                                  <fieldset>
                                      <asp:Button runat="server" ID="Button1" class="button" onclick="Button1_Click" BackColor="Orange" Width="150" Text="Send Message Now"/>
                                  </fieldset>
                              </div>
                          </div>
                      </form>
                  </div>
                  <div class="col-md-6">
                      <div id="map">
                          <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3888.5547015874367!2d77.5760802649187!3d12.936316940878998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1662466005219!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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
                          <i class="fa fa-copyright"></i> Contact Us Via Email

                          | Sangeetha S: <a href="mailto:sangeetha29sangu@gmail.com">sangeetha29sangu@gmail.com</a>| Shreyas G Bharadwaj: <a href="mailto:shreyasbharadwaj002@gmail.com">shreyasbharadwaj002@gmail.com</a>
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
