


<%@ page import="DBconnetion.DBconnection"%>
<%@ page import="jakarta.servlet.RequestDispatcher"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="adminstyle.css">
	
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
      width: 150%;
      
      img{
        display: block;
        max-width: 100%;
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

	<title>AdminHub</title>
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">AdminHub</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="#">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bxs-shopping-bag-alt' ></i>
					<span class="text">Ads</span>
				</a>
			</li>
			<li>
				<a href="inventoryadmin.html">
					<i class='bx bxs-doughnut-chart' ></i>
					<span class="text">Our Stocks</span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Message</span>
				</a>
			</li>
			<li>
				<a href="admincustomers.html">
					<i class='bx bxs-group' ></i>
					<span class="text">Users</span>
				</a>
			</li>
		</ul>
		<ul class="side-menu">
			<li>
				<a href="#">
					<i class='bx bxs-cog' ></i>
					<span class="text">Settings</span>
				</a>
			</li>
			<li>
				<a href="#" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Categories</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">8</span>
			</a>
			<a href="#" class="profile">
				<img src="img/people.png">
			</a>
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
				
			</div>

			
<div class="wrapper">
					
			<%






try {

	DBconnection db = DBconnection.getInstance();
	   Connection	con = db.getCon();
	   PreparedStatement pst = con.prepareStatement("SELECT * FROM events");


	ResultSet rs = pst.executeQuery();
	while (rs.next()) {
		
		
		
		%>	
		
	
	
	
	
		 <main>
    <div class="card">
      <div class="card__title">
        <div class="icon">
          <a href="#"><i class="fa fa-arrow-left"></i></a>
        </div>
        <h3><%=rs.getString("eventname")%></h3>
      </div>
      
          <div class="image">
            <img src="images/<%=rs.getString("eventimg")%>" alt="">
          </div>
        </div>
        <div class="half">
          <div class="description">
            <p><%=rs.getString("eventdescription")%></p>
          </div>
          <span class="stock"><i class="fa fa-pen"></i> In stock</span>
          <div class="reviews">
            <ul class="stars">
              <li><i class="fa fa-star"></i></li>
              <li><i class="fa fa-star"></i></li>
              <li><i class="fa fa-star"></i></li>
              <li><i class="fa fa-star"></i></li>
              <li><i class="fa fa-star-o"></i></li>
            </ul>
            <span>(64 reviews)</span>
          </div>
        </div>
      </div>
      <div class="card__footer">
        <div class="recommend">
          <p>Recommended by</p>
          <h3>Andrew Palmer</h3>
        </div>
        <div class="action">
        <form action="<%= request.getContextPath() %>/updateevents.jsp" method="post">
					<input type="hidden"  name="id" id="id" value="<%=rs.getInt("eventid") %>">
						<button  style="cursor: pointer;
        border: 1px solid #115dd8;
        padding: 14px 30px;
        border-radius: 200px;
        color: #fff;
        background: #115dd8;
        font-family: "Open Sans", sans-serif;
        font-size: 16px;
        transition: 200ms;" type="submit" class="btn-1" >Update</button> </form><br>
       
         <form action="<%= request.getContextPath() %>/eventdelete" method="post">
					<input type="hidden"  name="id" id="id" value="<%=rs.getInt("eventid") %>">
						<button  style="cursor: pointer;
        border: 1px solid #115dd8;
        padding: 14px 30px;
        border-radius: 200px;
        color: #fff;
        background: #115dd8;
        font-family: "Open Sans", sans-serif;
        font-size: 16px;
        transition: 200ms;" type="submit" class="btn-1" >Remove</button> </form>

        </div>
      </div>
    </div>
  </main>
		
			
		
		
										<%		

	}

} catch (Exception e) {

	e.printStackTrace();
}


   
    
    
%>
</div>
		
		
		
		
	
						
				
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="script.js"></script>
</body>
</html>