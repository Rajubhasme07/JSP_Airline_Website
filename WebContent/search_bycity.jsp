<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="aquery.Conn" %>
        <%@ page import="adpojo.Adata" %>
      <%@ page import="java.util.List" %>
   <jsp:useBean id="obj" class="adpojo.Adata" scope="session"/>
    <jsp:setProperty property="*" name="obj"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Book FLight</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <%
  String Username=(String)session.getAttribute("user_email");
 
 
  if(Username==null){
	 response.sendRedirect("login_user.jsp");	   
  }
  %>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp">Airways<span>FLight Booking</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	       <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
	        
	          <li class="nav-item"><a href="showflight.jsp" class="nav-link">Available Flight</a></li>
	          <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
	       

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
   
    <div class="hero-wrap js-fullheight" style="background-image: url('images/flight.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
          	
            <p class="caps" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Reach with us to reach your destination</p>
            <h1 data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Make Your Tour Amazing With Us</h1>
          </div>
        </div>
      </div>
    </div>

      <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <center><h4 class="card-title">Available Flight</h4></center>
                   <center> <p class="card-description">We Server for You</center>
                    </p>
                  
                  <a href="showflight.jsp"  class=" btn btn-primary">Show all Flights</a>
                  	 <form action="search_bycity.jsp">
						<div class="container mt-5"> 
						  <div class="row"> 
						  <div class="col-md-4"> 
						  <div class="search-1"> 
						<i class="fa-sharp fa-solid fa-paper-plane"></i>
						  <input type="search"  name="searchcity" placeholder="Boarding Point"> 
						  </div>
						   </div> 
						   
						    <div class="col-md-4"> 
						  <div class="search-1"> 
						  <i class='fa-sharp fa-solid fa-paper-plane'></i> 
						  <input type="text" name="searchtocity" placeholder="Destination"> 
						  </div>
						   </div> 
						   
						   <div class="col-md-4"> 
						   <div class="search-2"> 
						<i class="fa-solid fa-calendar"></i>
						   <input type="date">&nbsp; &nbsp; &nbsp;
						   <button class=" btn btn-primary">Search</button> 
						   </div> 
						   </div> 
						   </div> 
						   </div>
					      </form>
                  
                  
					</div>
                   <Center> <table class="table table-striped">
                      <thead>
                         <tr>
                         <br>
                          <th>Flight Name..</th>
                          <th>From City.</th>
                          <th>To City..</th>
                          <th>Date..</th>
                          <th>Time..</th>
                          <th>Travel Duration.</th>
                          <th>Boarding Airport</th>
                          <th>Ticket Price.</th>
                          <th>Set Flight</th>
                        </tr>
                      </thead>
                       
                        <%
                     
                 	 String flight_city=request.getParameter("searchcity");
                     String searchtocity=request.getParameter("searchtocity");
                 List<Adata> list=Conn.Searchflight(flight_city,searchtocity);
                   for(Adata s:list)
                   {
                	   	  
                	  
                 
              %>
              
                      <tbody>
                    <tr>
                     <td><%=s.getFlight_name()%></td>
                          <td><%=s.getFlight_city()%></td>
                          <td><%=s.getFlight_to_city()%></td>
                          <td><%=s.getFlight_date()%></td>
                          <td><%=s.getFlight_time()%></td>
                          <td><%=s.getFlight_duration()%></td>
                          <td><%=s.getFlight_airport()%></td>
                          <td><%=s.getFlight_tk_price()%></td>
                        <td><a href="ticketbook.jsp?id=<%=s.getFid()%>" class="btn btn-primary mr-2">Book</a></td>
                        </tr>
                      </tbody>
                        
                      <%}%>
                  
                    </table></Center> 
                  </div>
                </div>
              </div>
               
  </br>
       <section class="ftco-section testimony-section bg-bottom" style="background-image: url(images/bg_3.jpg);">
      <div class="container">
        <div class="row justify-content-center pb-4">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-4">Tourist Feedback</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap py-4">
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap py-4">
                  <div class="text">
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                    	<div class="pl-3">
		                    <p class="name">Roger Scott</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <footer class="ftco-footer bg-bottom" style="background-image: url(images/footer-bg.jpg);">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Vacation</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Infromation</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Online Enquiry</a></li>
                <li><a href="#" class="py-2 d-block">General Enquiries</a></li>
                <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                <li><a href="#" class="py-2 d-block">Refund Policy</a></li>
                <li><a href="#" class="py-2 d-block">Call Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Adventure</a></li>
                <li><a href="#" class="py-2 d-block">Hotel and Restaurant</a></li>
                <li><a href="#" class="py-2 d-block">Beach</a></li>
                <li><a href="#" class="py-2 d-block">Nature</a></li>
                <li><a href="#" class="py-2 d-block">Camping</a></li>
                <li><a href="#" class="py-2 d-block">Party</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
</body>
</html>