<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="javax.servlet.http.HttpSession" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Marshmallow Haven</title>

  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global_for_client.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/rooms.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">


</head>

<body>


<!-- Header -->
<c:set var="activePage" value="home" scope="request" />
<jsp:include page="/Pages/navbar.jsp"/>

<!-- Hero Section -->
<section class="hero">
  <div class="container">
    <h1>Welcome to Marshmallow Haven</h1>
    <p>Your home away from home. We provide comfortable, safe, and affordable accommodation for students.</p>
    <a href="room.jsp" class="btn">View Rooms</a>
  </div>
</section>

<!-- Room Section -->
<section class="main-content">
  <div class="container">
    <div class="room-list">
    
      <div class="room-card">
        <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png" alt="Single Room" class="room-image">
        <div class="room-details">
          <h3 class="room-type">Single Occupancy Room (AC)</h3>
          <div class="room-specs">
            <span><strong>Room Number:</strong> A-101</span>
            <span class="vacancy vacant">Vacant</span>
          </div>
          <p><strong>Monthly Fee:</strong> $350</p>
          <div class="room-facilities">
            <span class="facility">WiFi</span>
            <span class="facility">Attached Bathroom</span>
            <span class="facility">Study Table</span>
            <span class="facility">Wardrobe</span>
          </div>
          <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp" class="btn">Apply Now</a>
        </div>
      </div>
      
      <div class="room-card">
        <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png" alt="Double Room" class="room-image">
        <div class="room-details">
          <h3 class="room-type">Double Occupancy Room (AC)</h3>
          <div class="room-specs">
            <span><strong>Room Number:</strong> B-204</span>
            <span class="vacancy vacant">Vacant</span>
          </div>
          <p><strong>Monthly Fee:</strong> $300 per student</p>
          <div class="room-facilities">
            <span class="facility">WiFi</span>
            <span class="facility">Attached Bathroom</span>
            <span class="facility">2 Study Tables</span>
            <span class="facility">2 Wardrobes</span>
          </div>
          <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp" class="btn">Apply Now</a>
        </div>
      </div>

      <div class="room-card">
        <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png" alt="Single Non-AC Room" class="room-image">
        <div class="room-details">
          <h3 class="room-type">Single Occupancy Room (Non-AC)</h3>
          <div class="room-specs">
            <span><strong>Room Number:</strong> C-105</span>
            <span class="vacancy vacant">Vacant</span>
          </div>
          <p><strong>Monthly Fee:</strong> $250</p>
          <div class="room-facilities">
            <span class="facility">WiFi</span>
            <span class="facility">Common Bathroom</span>
            <span class="facility">Study Table</span>
            <span class="facility">Wardrobe</span>
            <span class="facility">Ceiling Fan</span>
          </div>
          <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp" class="btn">Apply Now</a>
        </div>
      </div>

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
<jsp:include page="/Pages/footer.jsp"/>

</body>
</html>
