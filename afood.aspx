<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afood.aspx.cs" Inherits="afood" %>

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
      <style type="text/css">
          .auto-style1 {
              margin-left: 0px;
              margin-top: 74px;
          }
      </style>
      </head>

<body>
    <form id="form1" runat="server">
  <header class="main-header clearfix">
          <div class="logo">
              <a href="#"><em>WARM</em>HEARTS</a>
          </div>
         <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
                  <li><a href="donor.aspx">Home</a></li>
                  <li><a href="editpwd.aspx">Edit Password</a></li>
                  <li><a href="blogs1.aspx">Bookings</a></li>
                  <li><a href="afood.aspx">Accepted Food </a></li>
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
             <div class="video-overlay header-text">
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
        <div>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" forecolor="White" DataKeyNames="fid" DataSourceID="SqlDataSource1" CssClass="auto-style1">
            <Columns>
                <asp:BoundField DataField="fid" HeaderText="Food Id" ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="name" HeaderText="Receiver's Name" SortExpression="name" />
                <asp:BoundField DataField="phno" HeaderText="Receiver's Phone Number" SortExpression="phno" />
                <asp:BoundField DataField="demail" HeaderText="Donor's Email-Id" SortExpression="demail" />
                <asp:BoundField DataField="email" HeaderText="Receiver's Email-Id" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="Receiver's Address" SortExpression="address" />
                <asp:BoundField DataField="ftype" HeaderText="Food Type" SortExpression="ftype" />
                <asp:BoundField DataField="number" HeaderText="Number Of People That Can Be Fed" SortExpression="number" />
                <asp:ImageField DataImageUrlField="fimage"  HeaderText="Food Image" ControlStyle-Height="100" SortExpression="fimage" />
                <asp:BoundField DataField="pdate" HeaderText="Prepared Date" SortExpression="pdate" />
                <asp:BoundField DataField="expirydate" HeaderText="Expiry Date" SortExpression="expirydate" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [fdetails] WHERE (([status] = @status) AND ([demail] = @demail))">
            <SelectParameters>
                <asp:Parameter DefaultValue="Accepted" Name="status" Type="String" />
                <asp:SessionParameter Name="demail" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                                   </div>
                  </section>
    </form>
</body>
</html>
