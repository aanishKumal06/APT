<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <title>Student Dashboard-Marshmallow Haven</title>

  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />

  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/student_dashboard.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
  <!-- Header -->
<jsp:include page="/Pages/UserPages/Components/navbar.jsp"/>
  <!-- Main Content -->
  <section class="main-content">
    <div class="container">
      <h1 class="section-title">Student Dashboard</h1>
      
<div class="dashboard-container">
    <div class="profile-section">
    
     <c:if test="${empty user}">

      <c:redirect url="/UserProfileServlet" />
     
    </c:if>
    
        <c:forEach var="user" items="${user}">
    <!-- Dynamically set the profile image URL -->
    <img src="${imgURL}${user.profileImageUrl}" alt="Profile" class="mini-profile-pic">

    <h2>${user.fullName}</h2>

    <div class="profile-details">
        <p><span>Gender:</span> <span>${user.gender}</span></p>
        <p><span>Email:</span> <span>${user.email}</span></p>
        <p><span>Contact:</span> <span>${user.contactNumber}</span></p>
        <p><span>Address:</span> <span>${user.address}</span></p>
        <p><span>Date of Birth:</span> 
            <span>
               <fmt:formatDate value="${user.dateOfBirth}" pattern="MMMM dd, yyyy" />
            </span>
        </p>
    </div>
       </c:forEach>  
      	<div class="profile-actions">
		  <form action="/update-profile" method="post">
		    <a href="${pageContext.request.contextPath}/Pages/UserPages/application2.jsp" class="btn update-profile-btn">Update Profile</a>
		  </form>
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
  <jsp:include page="/Pages/UserPages/Components/footer.jsp"/>
</body>
</html>