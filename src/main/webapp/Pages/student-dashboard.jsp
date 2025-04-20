<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <title>Student Dashboard-Marshmallow Haven</title>

  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global_for_client.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/student_dashboard.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
  <!-- Header -->
  <jsp:include page="/Pages/navbar.jsp"/>
  <!-- Main Content -->
  <section class="main-content">
    <div class="container">
      <h1 class="section-title">Student Dashboard</h1>
      
      <div class="dashboard-container">
        <div class="profile-section">
          <img src="img/profile.jpg" alt="Profile" class="mini-profile-pic">
          <h2>Hema Gurung</h2>
          <p>Student ID: ST123456</p>
          
          <div class="profile-details">
            <p><span>Gender:</span> <span>Female</span></p>
            <p><span>Email:</span> <span>hema.grg@gmail.com</span></p>
            <p><span>Contact:</span> <span>+1 123-456-7890</span></p>
            <p><span>Room Number:</span> <span>B-204</span></p>
            <p><span>Check-in Date:</span> <span>01/09/2024</span></p>
          </div>
          
          <div class="profile-actions">
            <a href="#" class="btn update-profile-btn">Update Profile</a>
          </div>
        </div>
        
        <div class="status-section">
          <h2>Application Status</h2>
          <div class="status status-approved">Approved</div>
          
          <h3 style="margin-top: 20px;">Room Details</h3>
          <div class="room-preview" title="Click for more details">
            <p><strong>Room Type:</strong> Double Occupancy (AC)</p>
            <p><strong>Building:</strong> Block B</p>
            <p><strong>Floor:</strong> 2nd Floor</p>
      
          </div>
          
          <div class="notifications">
            <h3>Notifications</h3>
            
            <div class="notification notification-maintenance">
              <h4>Scheduled Maintenance</h4>
              <p>Water supply will be disrupted on Sunday, 10th April from 9 AM to 12 PM for maintenance work.</p>
              <small>Posted: 5th April, 2025</small>
            </div>
            
            <div class="notification notification-rule">
              <h4>New Policy Update</h4>
              <p>Updated guest policy: All guests must register at the reception before entering the hostel premises.</p>
              <small>Posted: 1st April, 2025</small>
            </div>
            
            <div class="notification">
              <h4>Fee Payment Reminder</h4>
              <p>Monthly fees for May are due by April 30th. Please make payments on time to avoid late fees.</p>
              <small>Posted: 20th April, 2025</small>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!-- Footer -->
  <jsp:include page="/Pages/footer.jsp"/>
</body>
</html>