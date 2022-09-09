<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploaddonation.aspx.cs" Inherits="uploaddonations" %>

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

 <body style="background-image:url(assets/images/choosing-bg.jpg)" >

     <form runat="server">
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
                  <li><a href="afood.aspx">Accepted Food </a></li>
                  <li><a href="fooddetails.aspx">Upload Food Details</a></li>
                  <li><a href="uploaddonation.aspx">Upload Donations</a></li>
                  <li><a href="signin.aspx">Logout</a></li>
                 
              </ul>
          </nav>
          <hr/>
      </header>
       

     <section class="section video" data-section="section7">
          <div class="container">
              <div class="row">
                        <h2 style="color:#f5a425"><center>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Type of</h2><h2 style="color:white">&nbsp;Donation</center></h2>  
                  </div>
          </div>
         <hr />

          <div class="row">
              <div class="col-md-3">
                  <div class="card">
                      <img src="assets/images/food.jpg" class="card-img-top" height="300" alt="...">
                      <div class="card-body">
                          <h5 class="card-title"></h5>
                          <p class="card-text"></p>
                          <p class="card-text"></p>
                          <div class="down-content">
                              <div class=" main-button"><center><asp:Button BackColor="Orange" BorderColor="Orange" ForeColor="White" Height="43" Width="100" runat="server" Text="FOOD" PostBackUrl="~/fooddetails.aspx" /></center></div>
                          </div>
                      </div>
                  </div>
              </div>

              <div class="col-md-3">
                  <div class="card">
                      <img src="assets/images/books.jpg" class="card-img-top" height="300" alt="...">
                      <div class="card-body">
                          <h5 class="card-title"></h5>
                          <p class="card-text"></p>
                          <p class="card-text"></p>

                          <div class="down-content">
                              <div class="main-button"><center><asp:Button BackColor="Orange" BorderColor="Orange" ForeColor="White" Height="43" Width="100" runat="server" Text="BOOKS" PostBackUrl="~/books.aspx" /></center></div>
                          </div>
                      </div>
                  </div>
              </div>

              <div class="col-md-3">
                  <div class="card">
                      <img src="assets/images/donate.jpg" class="card-img-top" height="300" alt="...">
                      <div class="card-body">
                          <h5 class="card-title"></h5>
                          <p class="card-text"></p>
                          <p class="card-text"></p>
                          <div class="down-content">
                              <div class="scroll-to-section main-button"><center><asp:Button BackColor="Orange" BorderColor="Orange" ForeColor="White" Height="43" Width="100" runat="server" Text="MONEY" OnClick="Unnamed1_Click"/></center></div>
                          </div>
                      </div>
                  </div>
              </div>

              
              <div class="col-md-3">
                  <div class="card">
                      <img src="assets/images/clothes.jpg" class="card-img-top" height="300" alt="...">
                      <div class="card-body">
                          <h5 class="card-title"></h5>
                          <p class="card-text"></p>
                          <p class="card-text"></p>
                          <div class="down-content">
                              <div class="scroll-to-section main-button"><center><asp:Button BackColor="Orange" BorderColor="Orange" ForeColor="White" Height="43" Width="100" runat="server" Text="CLOTHES" PostBackUrl="~/clothes.aspx" /></center></div>
                          </div>
                      </div>
                  </div>
              </div>




      </section>
</form>
     </body>
    </html>
