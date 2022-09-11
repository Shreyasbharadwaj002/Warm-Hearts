<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>




<!DOCTYPE html>
<script runat="server">

   
</script>

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
  <header class="main-header clearfix">
          <div class="logo">
              <a href="#"><em>WARM</em>HEARTS</a>
          </div>
          <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
                  <li><a href="donor.aspx">Home</a></li>
                  <li><a href="editpwd.aspx">Edit Password</a></li>
                  <li><a href="blogs1.aspx">Feedback</a></li>
                  <li><a href="afood.aspx">Accepted Food</a></li>
                  <li><a href="fooddetails.aspx">Upload Food Details</a></li>
                  <li><a href="uploaddonation.aspx">Upload Donation</a></li>
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
     
             <div class="video-overlay header-text">
              <div class="caption">
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
                  <center>
                      <h1 style="color:aliceblue">BOOK AN ORPHANAGE</h1>
           <ContentTemplate>
         </center>
          
          
                 <div class="row">
              <div class="col-md-3"></div>

              <div class="col-md-6">

                  <div class="card" >
                    
                      <div class="card-body bg-gradient bg-dark">
                              <label for="title" class="form-label" style="color: white;">Orphanage Name</label>
                              <div class="form-floating">
                                
                                <asp:TextBox runat="server"  class="form-control"  style="color:black"    id="TextBox5" Required="" ></asp:TextBox><br /></div>
                              
                        
                           <label for="title"  style="color: white;">Enter Your Name</label>
                              <div class="form-floating">
                                
                                <asp:TextBox runat="server"  class="form-control" style="color:black"   id="TextBox2" Required="" ></asp:TextBox><br />
                              
                        
                          <label for="title" class="form-label" style="color: white;text-align:left;">Enter Purpose And Date Of Visit</label></div>
                        
                         <div class="form-floating">
                                
                                <asp:TextBox runat="server"  class="form-control" style="color:black"   TextMode="MultiLine"  Rows="10" name="message"   id="TextBox1" Required="" ></asp:TextBox>
                                <label for="floatingTextarea2" ></label>
                              </div>
    
                          <asp:TextBox runat="server" ID="TextBox3" Visible="false"></asp:TextBox>
                          <asp:TextBox runat="server" ID="TextBox4" Visible="false"></asp:TextBox>


                          

                         
                          
                          <div class="d-grid gap-2 col-5 mx-auto">
                         <svg xmlns="http://www.w3.org/2000/svg" color="white" width="16" height="16" fill="currentColor" class="bi bi-send-fill" viewBox="0 0 16 16">
                            <path d="M15.964.686a.5.5 0 0 0-.65-.65L.767 5.855H.766l-.452.18a.5.5 0 0 0-.082.887l.41.26.001.002 4.995 3.178 3.178 4.995.002.002.26.41a.5.5 0 0 0 .886-.083l6-15Zm-1.833 1.89L6.637 10.07l-.215-.338a.5.5 0 0 0-.154-.154l-.338-.215 7.494-7.494 1.178-.471-.47 1.178Z"/></svg>  <asp:Button runat="server" CssClass="btn btn-success bg-gradient" type="submit"  Text="SEND" onclick="Button1_Click"/>
                          
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" color="white" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
                          </svg>   <button class="btn btn-danger bg-gradient" type="reset">CLEAR</button>
                          </div>
                          
                      </div>
                  </div>

              </div>
                     </div>
                  </div></div>
              </section>
          
        </form>
                
        </body>

</html>

