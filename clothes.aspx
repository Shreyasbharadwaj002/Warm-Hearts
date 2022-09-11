<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clothes.aspx.cs" Inherits="clothes" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
          .auto-style1 {
              width: 53%;
              height: 45px;
          }
          .auto-style2 {
              height: 32px;
          }
          .auto-style3 {
              width: 265px;
          }
          .auto-style4 {
              height: 32px;
              width: 265px;
          }
          .auto-style5 {
              width: 265px;
              height: 33px;
          }
          .auto-style6 {
              height: 33px;
          }
      </style>
      </head>
<body>


      <form id="form2" runat="server">


      <!--header-->
      <header class="main-header clearfix">
          <div class="logo">
              <a href="#"><em>WARM</em>HEARTS</a>
          </div>
          <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
                 <li><a href="receiver.aspx">Home</a></li>
                  <li><a href="orphanage.aspx">Add orphanage details</a></li>
                  <li><a href="editpwd1.aspx">Edit Password</a></li>
                  <li><a href="notification.aspx">Notifications</a></li>
                  <li><a href="dondetails.aspx">Donation Details</a></li>
                  <li><a href="signin.aspx">Logout</a></li>
                 
              </ul>
          </nav>
          <hr/>
      </header>
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
        <div>
        </div>
                 <center>
            <h1 style="color:aliceblue">CLOTHES</h1>
          <table style="font-family:Verdana;font-size:125%;" class="auto-style20">
          <tr>
              <td class="auto-style3">
                  <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Name"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Phone Number"></asp:Label>
              </td>
              <td class="auto-style2">
                  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style3">
                  <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Email Id"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style5">
                  <asp:Label ID="Label6" runat="server" ForeColor="White" Text="No of Clothes"></asp:Label>
              </td>
              <td class="auto-style6">
                  <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style5" colspan="2">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button1" runat="server" ForeColor="Black" Text="Donate" OnClick="Button1_Click" />
              </td>
              <td class="auto-style6">
                  &nbsp;</td>
          </tr>
      </table>
       </center>     
    </form>
      </section>

</body>
</html>



