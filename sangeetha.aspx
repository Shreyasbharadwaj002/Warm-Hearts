<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sangeetha.aspx.cs" Inherits="sangeetha" %>

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
              margin-top: 203px;
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
                  <li><a href="course1.aspx">Courses</a></li>
                  <li><a href="rbooking.aspx">Booking</a></li>
                  <li><a href="editpwd1.aspx">Edit Password</a></li>
                  <li><a href="notification.aspx">Notifications</a></li>
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
                        <center><h1 style="color:aliceblue">CONTACT TRAINER FOR THE MEETING-LINK</h1>
        
  

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="100px" Width="1300px" style="color:aliceblue">
              <Columns>
                  <asp:BoundField DataField="vname" HeaderText="Name" SortExpression="vname" />
                  <asp:BoundField DataField="ctype" HeaderText="Type of Course" SortExpression="ctype" />
                  <asp:BoundField DataField="atime" HeaderText="Available Time" SortExpression="atime" />
                  <asp:BoundField DataField="phno" HeaderText="Phone Number" SortExpression="phno" />
                  <asp:BoundField DataField="email" HeaderText="Email Id" SortExpression="email" />
              </Columns>
          </asp:GridView>
                </div>
          </section>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [volunteers] WHERE ([ctype] = @ctype)">
              <SelectParameters>
                  <asp:Parameter DefaultValue="Sangeetha Class" Name="ctype" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
            </form>
</body>
</html>

