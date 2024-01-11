<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



 <link href="img/favicon.png" rel="icon" />
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Vendor CSS Linkks -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.min.css" rel="stylesheet">

    <!-- Vendor Script Linkks -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,300;1,400;1,500&display=swap"
      rel="stylesheet" />

    <!-- Main CSS Files -->
    <link href="css2/bootstrap.min.css" rel="stylesheet" />
    <link href="css2/style.css" rel="stylesheet" />
    <link href="css2/styleprofile.css" rel="stylesheet" />
     <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>




  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center justify-content-between">

     
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="eventsview.jsp">Events</a></li>
         
            
          </li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
       
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->





  <main id="main" style="font-size:medium;">
    <input type="hidden"  id="status" value="<%= request.getAttribute("status")%>">
        
        <div class="d-flex flex-column ">

            <div class="profile pt-5 mt-5">
              
              <h1 class="text-black mt-5"><a href="#">hi <%=session.getAttribute("name1") %></a></h1>
              <div class="social-links mt-3 text-center pt-5">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
      
            <nav id="navbar" class="nav-menu ">
                <button class=" mt-5" id="btn-prof" style="background-color:springgreen;">Home</button><br>
                <button class=" mt-5" id="btn-prof" style="background-color:springgreen;">Profile</button>
                <button  class=" mt-5" onclick="window.location.href='userapp.jsp'" id="btn-prof" style="background-color:springgreen;size:50px;">My Bookings</button>
           <form action="<%= request.getContextPath() %>/changepass.jsp" method="post">  <button class=" mt-5" id="btn-prof" style="background-color:springgreen;">Change password  </button></form>
         <form action="<%= request.getContextPath() %>/Deletacc.jsp" method="post"> <button class=" mt-5" id="btn-prof" style="background-color:springgreen;">Delete Account</button>
        <form action="<%= request.getContextPath() %>/customerlogout1" method="post"> <button class=" mt-5" id="btn-prof" style="background-color:springgreen;">Log out</button>
       </form>     </nav><!-- .nav-menu -->

          </div>
        </main>
    <!-- End #main -->


    
        <section style="margin-left: 350px;margin-top: 100px;margin-right: 100px;font-size:medium;">

       
    <div class="d-flex justify-content-center align-items-center vh-100">
        
        <form action="<%= request.getContextPath() %>/updatedetails1" method="post">

            <h4 class="display-4  fs-1">Edit Profile</h4><br>
            <!-- error -->
            
           
          
            
            <!-- success -->
           
           <div class="mb-3">
         <p>User id:</p>
            <input  type="text" 
                   class="form-control"
                   name="id"
                   value="<%=session.getAttribute("cusID") %>" style="width:180%;">
          </div>
            
          <div class="mb-3">
           <p>User Name:</p>
            <input type="text" 
                   class="form-control"
                   name="name"
                   value="<%=session.getAttribute("name1") %>" style="width:180%;">
          </div>

          <div class="mb-3">
            <p>Email:</p>
            <input type="text" 
                   class="form-control"
                   name="email"
                   value="<%=session.getAttribute("mail") %>" style="width:180%;">
          </div>
           <div class="mb-3">
            <p>Contact no:</p>
            <input type="text" 
                   class="form-control"
                   name="contact"
                   value="<%=session.getAttribute("pno") %>" style="width:180%;">
          </div>
               
               <div class="mb-3">
          <p>Address:</p>
            <input type="text" 
                   class="form-control"
                   name="address"
                   value="<%=session.getAttribute("add") %>" style="width:180%;">
          </div>
               
          <div class="mb-3">
           <p>User id:</p>
            <input type="file" 
                   class="form-control"
                   name="pp" style="width:180%;">
            <img src=""
                 class="rounded-circle"
                 style="width: 70px">
            <input type="text"
                   hidden="hidden" 
                   name="old_pp"
                   value="" >
          </div>
          
          <button style="background-color:springgreen;" type="submit" class="btn btn-primary">Update</button>
           </form>
       
         
       
    </div>
        
 
   
        </section>
  

</body>
</html>