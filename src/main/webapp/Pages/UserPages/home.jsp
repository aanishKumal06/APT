<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="javax.servlet.http.HttpSession" %>
        <%@ page import="java.util.ArrayList" %>
<%@ page import="com.marshmallowhaven.Model.Room" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Marshmallow Haven</title>

  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/global_for_client.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/rooms.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


</head>

<body>


<!-- Header -->
<c:set var="activePage" value="home" scope="request" />
<jsp:include page="/Pages/UserPages/Components/navbar.jsp"/>
<!-- Hero Section -->
<section class="hero">
  <div class="container">
    <h1>Welcome to Marshmallow Haven</h1>
    <p>Your home away from home. We provide comfortable, safe, and affordable accommodation for students.</p>
    <a href="${pageContext.request.contextPath}/Pages/rooms.jsp" class="btn">View Rooms</a>
  </div>
</section>

<!-- Room Section -->
<section class="main-content">
  <div class="container">
    <div class="room-list">
    <%
        // Get the list of rooms from the request attribute
    		ArrayList<Room> roomList = (ArrayList<Room>) request.getAttribute("expensiveRooms");
            		
      		 if (roomList == null) {
      	            response.sendRedirect(request.getContextPath() + "/TopExpensiveRoomServelt"); // Replace with your actual servlet path
      	            return;
      	        }        	
		%>
      <% for (Room room : roomList) { %>
		  <div class="room-card">
		      <img src="<%=request.getAttribute("imgURL")+room.getImageUrl() %>" alt="<%= room.getRoomType() %>" class="room-image">
		      <div class="room-details">
		        <h3 class="room-type"><%= room.getRoomType() %></h3>
		        <div class="room-specs">
		          <span><strong>Room Number:</strong> <%= room.getRoomNumber() %></span>
		         <span class="vacancy <%= room.getIsAvailable() == true ? "vacant" : "occupied" %>">
				    <%= room.getIsAvailable() == true ? "Vacant" : "Occupied" %>
				</span>

		        </div>
		        <p><strong>Monthly Fee:</strong> $<%= room.getMonthlyFee() %></p>
		        
		        <!-- Displaying facilities one by one -->
		        <div class="room-facilities">
		          <% 
		              String[] facilities = room.getRoomFacilities().split(",");
		              for (String facility : facilities) { 
		          %>
		              <div class="facility"><%= facility.trim() %></div>  <!-- Each facility on a new line -->
		          <% } %>
		        </div>
		        
		        <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp?roomId=<%= room.getRoomId() %>" class="btn">Apply Now</a>
		      </div>
		  </div>
		<% } %>

    </div>
  </div>
</section>

<!-- Why Choose Us Section -->
<section class="main-content">
  <div class="container">

    <h2 class="section-title">Why Choose Marshmallow Haven?</h2>
    <div class="card-container">
      <div class="card">
        <div class="card-header">Safe & Secure</div>
        <div class="card-body">
          <p>24/7 security, CCTV surveillance, and secure access control to ensure your safety at all times.</p>
        </div>
      </div>

      <div class="card">
        <div class="card-header">Modern Facilities</div>
        <div class="card-body">
          <p>High-speed WiFi, study rooms, common areas, and fully equipped kitchens for your convenience.</p>
        </div>
      </div>

      <div class="card">
        <div class="card-header">Prime Location</div>
        <div class="card-body">
          <p>Located just 5 minutes from campus with easy access to public transportation, shopping, and dining.</p>
        </div>
      </div>
    </div>

    <h2 class="section-title">About Our Hostel Management System</h2>
    <p>Our online hostel management system makes it easy for students to:</p>

    <div class="card-container">
      <div class="card">
        <div class="card-header">View Room Details</div>
        <div class="card-body">
          <p>Browse through available rooms, check occupancy status, and view room features and amenities.</p>
        </div>
        <div class="card-footer">
          <a href="rooms.jsp" class="btn">View Rooms</a>
        </div>
      </div>

      <div class="card">
        <div class="card-header">Check Fees & Policies</div>
        <div class="card-body">
          <p>Access information about hostel fees, payment schedules, and understand our hostel rules and policies.</p>
        </div>
        <div class="card-footer">
          <a href="hostel-rules.jsp" class="btn">Learn More</a>
        </div>
      </div>

      <div class="card">
        <div class="card-header">Easy Application</div>
        <div class="card-body">
          <p>Apply online for hostel accommodation, track your application status, and receive important notifications.</p>
        </div>
        <div class="card-footer">
          <a href="application.jsp" class="btn">Apply Now</a>
        </div>
      </div>
    </div>

  </div>
</section>

<!-- Footer -->
  <jsp:include page="/Pages/UserPages/Components/footer.jsp"/>
</body>
</html>
