<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rbooking.aspx.cs" Inherits="rbooking" %>

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
          .id{
              font-size:x-small;
          }
      </style>
  </head>

 <body>


      <form id="form1" runat="server">


      <!--header-->
  <header class="main-header clearfix">
          <div  class="logo">
              <a href="#" ><em>WARM</em>HEARTS</a>
          </div>
           <nav id="menu" class="main-nav" role="navigation">
              <ul class="main-menu">
                  <li><a href="receiver.aspx">Home</a></li>
                  <li><a href="orphanage.aspx">Add orphanage details</a></li>
                  <li><a href="rbooking.aspx">Booking</a></li>
                  <li><a href="editpwd1.aspx">Edit Password</a></li>
                  <li><a href="notification.aspx">Notifications</a></li>
                  <li><a href="signin.aspx">Logout</a></li>


              </ul>
          </nav>
          
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
                 <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" Height="100px" Width="1300px" style="color:aliceblue; margin-left: 95px; margin-top: 44px;" CssClass="auto-style1">
                     <Columns>
                         <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                         <asp:BoundField DataField="oname" HeaderText="Oname" SortExpression="oname" />
                         <asp:BoundField DataField="emailid" HeaderText="Email-Id" SortExpression="emailid" />
                         <asp:BoundField DataField="purpose" HeaderText="purpose" SortExpression="purpose" />
                         <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:Button  runat="server" UseSubmitBehavior="true" ID="Button1" Text="Accept"  OnClick="Button1_Click" />
                             </ItemTemplate>
                         </asp:TemplateField>
                          
                     </Columns>

                 </asp:GridView>

                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [oname],[emailid], [purpose], [status] FROM [booking] WHERE (([status] = @status) AND ([emailid] = @emailid))">
                     <SelectParameters>
                         <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                         <asp:SessionParameter Name="emailid" SessionField="emailid" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>

                 </div>
             </section>
                 
      </form>
 
     </body>
    </html>