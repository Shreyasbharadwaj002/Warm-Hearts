<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dondetails.aspx.cs" Inherits="dondetails" %>


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
      <header class="main-header clearfix">
          <div class="logo">
              <a href="#"><em>WARM</em>HEARTS</a>
          </div>
          <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
              <li><a href="receiver.aspx">Home</a></li>
                  <li><a href="editpwd.aspx">Edit Password</a></li>
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
              <div class="caption">
                  <h3 style="color:aliceblue">DONOR DETAILS</h3>
          <asp:GridView ID="GridView1" Height="500%" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ForeColor="White" DataKeyNames="id">
         <Columns>
             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />    
             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
             <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
             <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
             <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
             
         </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [name], [address], [phno], [email] FROM [donor]"></asp:SqlDataSource>
        </div>
                     </div>
                </section>

      </form>
     </body>
    </html>

