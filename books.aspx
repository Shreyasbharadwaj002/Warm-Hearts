<%@ Page Language="C#" AutoEventWireup="true" CodeFile="books.aspx.cs" Inherits="books" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>

    <title>WARM HEARTS</title>
    
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css"/>
    <link rel="stylesheet" href="assets/css/templatemo-grad-school.css"/>
    <link rel="stylesheet" href="assets/css/owl.css"/>
    <link rel="stylesheet" href="assets/css/lightbox.css"/>
<!--
    
TemplateMo 557 Grad School

https://templatemo.com/tm-557-grad-school

-->
      <style type="text/css">
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
                 <center>
            <h1 style="color:aliceblue">BOOKS</h1>
          <table style="font-family:Verdana;font-size:125%;" class="auto-style20">
          <tr>
              <td class="auto-style3">&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style3">
                  <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Name"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="TextBox1" runat="server" Required="" ></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Phone Number"></asp:Label>
              </td>
              <td class="auto-style2">
                  <asp:TextBox ID="TextBox2" runat="server" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style3">
                  <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Email Id"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="TextBox3" runat="server" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style3">
                  <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Type of Books"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="TextBox7" runat="server" Visible="false"></asp:TextBox>
                  <asp:CheckBoxList ID="CheckBoxList1" runat="server" ForeColor="White">
                      <asp:ListItem>Text Books</asp:ListItem>
                      <asp:ListItem>Note Books</asp:ListItem>
                      <asp:ListItem>Stationary</asp:ListItem>
                  </asp:CheckBoxList>
              </td>
          </tr>
          <tr>
              <td class="auto-style3">
                  <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Class Group"></asp:Label>
              </td>
              <td>
                  <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" Height="45px">
                      <asp:ListItem>1-7</asp:ListItem>
                      <asp:ListItem>8-10</asp:ListItem>
                      <asp:ListItem>PUC</asp:ListItem>
                      <asp:ListItem>Under Graduates</asp:ListItem>
                      <asp:ListItem>Post Graduates</asp:ListItem>
                      <asp:ListItem>Others</asp:ListItem>
                  </asp:DropDownList>
              </td>
          </tr>
          <tr>
              <td class="auto-style5">
                  <asp:Label ID="Label6" runat="server" ForeColor="White" Text="No of Books"></asp:Label>
              </td>
              <td class="auto-style6">
                  <asp:TextBox ID="TextBox6" runat="server" Required=""></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style5" colspan="2">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Donate" />
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


