<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

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
      <style type="text/css">
          .auto-style5 {
              height: 55px;
              width: 388px;
          }
          .auto-style6 {
              height: 55px;
          }
          .auto-style8 {
              height: 44px;
              width: 388px;
          }
          .auto-style9 {
              height: 18px;
              width: 388px;
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
                  <li><a href="receiversignup.aspx">Receiver</a></li>
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
     
             <div class="video-overlay header-text">
              <div class="caption">
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
       <center><h1 style="color:aliceblue">LOGIN HERE</h1>
           <ContentTemplate><table style="font-family:Verdana;font-size:125%;width:702px;">
              <tr>
                    <td align="center" colspan="2" style="color:White;background-color:aliceblue;font-weight:bold;">
                        </td>
               </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label1" runat="server" Text="Email-id" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox1" runat="server"  ToolTip="Enter Your Email Id or UserName" TextMode="Email" Required=""></asp:TextBox>
                  
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="White"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="Enter Your Password" Required=""></asp:TextBox>
                
               </td>
           </tr>
           <tr>
               <td class="auto-style5">
                   <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Login As"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:DropDownList ID="DropDownList1" runat="server" CssClass="align-content-xl-center" BackColor="#FF9933" ForeColor="Black" >
                       <asp:ListItem>Admin</asp:ListItem>
                       <asp:ListItem>Donor</asp:ListItem>
                       <asp:ListItem>Receiver</asp:ListItem>
                   </asp:DropDownList>
               &nbsp;</td>
           </tr>
           <tr align="center">
               <td class="auto-style5" colspan="2">
                   &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="White"></asp:Label>
               </td>
           </tr>
           <tr align="center">
               <td class="auto-style9" colspan="2">
                   <asp:Button ID="Button1" align="center" runat="server"  Text="Login"  BackColor="#0099CC" ForeColor="Black" BorderColor="#003366" OnClick="Button1_Click" />
               </td>
           </tr>
           <tr align="center">
               <td class="auto-style8" colspan="2">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/Forgotpwd.aspx">Forgot Password?</asp:HyperLink>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
