<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>
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
                  <li><a href="index.aspx">Home</a></li>
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
     
      <!-- ***** Main Banner Area End ***** -->

     
      

      <section class="section contact" data-section="section6">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <div class="section-heading">
                     <center> <h2 ><a style="color:orange">CONTACT</a><a style="color:white">US</a></h2></center>
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

  <section class="section contact" data-section="section6">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      
                         <center> <h1 ><a style="color:orange">TELE</a><a style="color:white">GRAM</a></h1></center>
                  
                  </div>
                  <div class="col-md-6">

                      <!-- Do you need a working HTML contact-form script?

                      Please visit https://templatemo.com/contact page -->

                     <div id="qrcode">
      <div class="row">
      <div class="col-md-6 my-3"></div>
        <div class="col-md-10">
          <div class="card mx-4 my-6 ">
            
            <div class="card-body ">
              <h5 class="card-title"></h5>
              <p class="card-text text-center">To join <b>DONOR</b> telegram channel scan this QR code</p>
              <img
              src="assets/images/donortele.jpg"
              class="card-img-top"
              height="500"
              alt="..."
            />
            <p class="card-text text-black-50 text-center" ><a style="color:black" href="https://t.me/warm_hearts1">Click Here To Join The Telegram Channel</a></p>
        
                </div>
              
            </div>
          </div>
        </div>
          </div>
                  
        
                      </div>
                      <div class="col-md-6">
                      <div id="">
      <div class="row">
      <div class="col-md-6 my-3"></div>
        <div class="col-md-10">
          <div class="card mx-4 my-6 ">
            
            <div class="card-body ">
              <h5 class="card-title"></h5>
              <p class="card-text text-center">To join <b>RECEIVER</b> telegram channel scan this QR code</p>
              <img
              src="assets/images/receivertele.jpg"
              class="card-img-top"
              height="500"
              alt="..."
            />
            <p class="card-text text-black-50 text-center" ><a style="color:black" href="https://t.me/warm_heartss">Click Here To Join The Telegram Channel</a></p>
        
                </div>
              
            </div>
          </div>
        </div>
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

         

          $(window).scroll(function () {
              checkSection();
          });
      </script>
  </body>
</html>
