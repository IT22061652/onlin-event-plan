

<%@ page import="DBconnetion.DBconnection"%>
<%@ page import="jakarta.servlet.RequestDispatcher"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>eNno Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: eNno
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/enno-free-simple-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style type="text/css">
	
	@import url('https://fonts.googleapis.com/css?family=Fjalla+One|Montserrat:300,400,700,800|Open+Sans:300');





.card{

  box-shadow: 0 6px 6px rgba(#000, 0.3);
  transition: 200ms;
  background: #fff;

  
  .card__title{
    display: flex;
    align-items: center;
    padding: 30px 40px;
    
    h3{
      flex: 0 1 200px;
      text-align: right;
      margin: 0;
      color: #252525;
      font-family: sans-serif;
      font-weight: 600;
      font-size: 20px;
      text-transform: uppercase;
    }
    
    .icon{
      flex: 1 0 10px;
      background: #115dd8;
      color: #fff;
      padding: 10px 10px;
      transition: 200ms;
      
      > a{
        color: #fff;
      }
      
      &:hover{
        background: #252525;
      }
    }
  }
  
  .card__body{
    padding: 0 40px;
    display: flex;
    flex-flow: row no-wrap;
    margin-bottom: 25px;
    
    > .half{
      box-sizing: border-box;
      padding: 0 15px;
      flex: 1 0 50%;
    }
    
    .featured_text{
      h1{
        margin: 0;
        padding: 0;
        font-weight: 800;
        font-family: "Montserrat", sans-serif;
        font-size: 64px;
        line-height: 50px;
        color: #181e28;
      }
      
      p{
        margin: 0;
        padding: 0;
        
        &.sub{
          font-family: "Montserrat", sans-serif;
          font-size: 26px;
          text-transform: uppercase;
          color: #686e77;
          font-weight: 300;
          margin-bottom: 5px;
        }
        
        &.price{
          font-family: "Fjalla One", sans-serif;
          color: #252525;
          font-size: 26px;
        }
      }
    }
    
    .image{
      padding-top: 15px;
      width: 100%;
      
      img{
        display: block;
        max-width: 80%;
        height: auto;
      }
    }
    
    .description{
      margin-bottom: 25px;
      
      p{
        margin: 0;
        font-family: "Open Sans", sans-serif;
        font-weight: 300;
        line-height: 27px;
        font-size: 16px;
        color: #555;
      }
    }
    
    span.stock{
      font-family: "Montserrat", sans-serif;
      font-weight: 600;
      color: #a1cc16;
    }
    
    .reviews{
      .stars{
        display: inline-block;
        list-style: none;
        padding: 0;
        
        > li{
          display: inline-block;
          
          .fa{
            color: #f7c01b;
          }
        }
      }
      
      > span{
        font-family: "Open Sans", sans-serif;
        font-size: 14px;
        margin-left: 5px;
        color: #555;
      }
    }
  }
  
  .card__footer{
    padding: 30px 40px;
    display: flex;
    flex-flow: row no-wrap;
    align-items: center;
    position: relative;
    
    &::before{
      content: "";
      position: absolute;
      display: block;
      top: 0;
      left: 40px;
      width: calc(100% - 40px);
      height: 3px;
      background: #115dd8;
      background: linear-gradient(to right, #115dd8 0%,#115dd8 20%,#ddd 20%,#ddd 100%);
    }
    
    .recommend{
      flex: 1 0 10px;
      
      p{
        margin: 0;
        font-family: "Montserrat", sans-serif;
        text-transform: uppercase;
        font-weight: 600;
        font-size: 14px;
        color: #555;
      }
     
      h3{
        margin: 0;
        font-size: 20px;
        font-family: "Montserrat", sans-serif;
        font-weight: 600;
        text-transform: uppercase;
        color: #115dd8;
      }
    }
    
    .action{
      button{
        cursor: pointer;
        border: 1px solid #115dd8;
        padding: 14px 30px;
        border-radius: 200px;
        color: #fff;
        background: #115dd8;
        font-family: "Open Sans", sans-serif;
        font-size: 16px;
        transition: 200ms;
        
        &:hover{
          background: #fff;
          color: #115dd8;
        }
      }
    }
  }
}
	
	
	
	
	
	
	</style>
  
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="index.html">Event Planner</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#team">Team</a></li>
         
            
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          <li><a class="getstarted scrollto" href="acc.jsp">User Accont</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

 
 
 
 
 
 
 <div class="wrapper" style="margin-top:100px;margin-left:90px;margin-right:40px;width:70%">
   <input  type="hidden"   name="cid" value="<%=session.getAttribute("cusID") %>" >
					
			<%






try {

	DBconnection db = DBconnection.getInstance();
	   Connection	con = db.getCon();
	   PreparedStatement pst = con.prepareStatement("SELECT * FROM events");


	ResultSet rs = pst.executeQuery();
	while (rs.next()) {
		
		
		
		%>	
		
	
	
	
	
		
    <div class="card">
      <div class="card__title">
        <div class="icon">
          <a href="#"><i class="fa fa-arrow-left"></i></a>
        </div>
        <h3><%=rs.getString("eventname")%></h3>
      </div>
      
          <div class="image">
            <img  src="images/<%=rs.getString("eventimg")%>" align="middle" >
          </div>
        </div>
        <div class="half">
          <div class="description">
            <p><%=rs.getString("eventdescription")%></p>
          </div>
          <span class="stock"><i class="fa fa-pen"></i> In stock</span>
          <div class="reviews">
         
            <span>(64 reviews)</span>
          </div>
        </div>
     
      <div class="card__footer">
        <div class="recommend">
         
        </div>
        <div class="action">
        <form action="<%= request.getContextPath() %>/booking.jsp" method="post">
					<input type="hidden"  name="id" id="id" value="<%=rs.getInt("eventid") %>">
						<button  style="cursor: pointer;
        border: 1px solid #115dd8;
        padding: 14px 30px;
        border-radius: 200px;
        color: #fff;
        background: #115dd8;
        font-family: "Open Sans", sans-serif;
        font-size: 16px;
        transition: 200ms;" type="submit" class="btn-1" >Book Now</button> </form><br>
       
    

        </div>
      
		
			
		
		
										<%		

	}

} catch (Exception e) {

	e.printStackTrace();
}


   
    
    
%>
</div>
</div>
 
 
 
 
 
 
 
 
 
 
 
 

  <!-- ======= Footer ======= -->
  <footer id="footer" style="width:100%;">

    <div class="footer-top" style="width:100%;">

      <div class="container">

        <div class="row  justify-content-center">
          <div class="col-lg-6">
            <h3>eNno</h3>
            <p>Et aut eum quis fuga eos sunt ipsa nihil. Labore corporis magni eligendi fuga maxime saepe commodi placeat.</p>
          </div>
        </div>

      xs

        <div class="social-links">
          <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>

      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>eNno</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/enno-free-simple-bootstrap-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>







