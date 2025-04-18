<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/global_for_client.css">
<link rel="stylesheet" href="css/rooms.css">
<link rel="icon" type="image/png" href="img/b_logo.png" /><link rel="icon" type="image/png" href="img/b_logo.png" />
</head>
<body>
  <!-- Header -->
  <header>
    <div class="container header-content">
      <div class="logo-container">
        <a href="home.jsp" class="logo"> <img src="img/logo.png" alt=""></a>
        <a href="home.jsp" class="logo-text">Marshmallow Haven</a>
      </div>
    
      <nav>
        <ul>
          <li><a href="home.jsp">Home</a></li>
          <li><a href="rooms.jsp">Rooms</a></li>
          <li><a href="hostel-rules.jsp">Rules</a></li>
          <li><a href="#">About us</a></li>
          <li class="notification-icon">
            <div class="notification-container">
              <span class="notification-count">3</span>
              <i class="fas fa-bell"></i>
              <div class="notification-dropdown">
                <div class="notification-item">
                  <h4>Room Inspection</h4>
                  <p>Room inspection scheduled for tomorrow at 10 AM.</p>
                  <small>1 hour ago</small>
                </div>
                <div class="notification-item">
                  <h4>Fees Reminder</h4>
                  <p>Your next payment is due in 5 days.</p>
                  <small>Yesterday</small>
                </div>
                <div class="notification-item">
                  <h4>New Amenity</h4>
                  <p>New gym equipment has been installed.</p>
                  <small>2 days ago</small>
                </div>
              </div>
            </div>
          </li>
          <li class="profile-icon">
            <div class="profile-container">
              <img src="img/profile.jpg" alt="Profile" class="mini-profile-pic">
              <div class="profile-dropdown">
                <div class="profile-header">
                  <img src="img/profile.jpg" alt="Profile" class="mini-profile-pic">
                  <div>
                    <h4>Hema Gurung</h4>
                  </div>
                </div>
                <ul class="profile-menu">
                  <li><a href="student-dashboard.jsp">My Profile</a></li>
                  <li><a href="complaint.jsp">Complaint</a></li>
                  <li><a href="home.jsp">Logout</a></li>
                </ul>
              </div>
            </div>
          </li>
        </ul>
      </nav>
    </div>
  </header>

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
  <footer>
    <div class="container">
      <div class="footer-content">
        <div class="footer-logo">
          <h3>Campus Nest</h3>
          <p>Your Home Away From Home</p>
        </div>
        <div class="footer-links">
          <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="student-dashboard.jsp">Dashboard</a></li>
            <li><a href="rooms.jsp">Rooms</a></li>
            <li><a href="hostel-rules.jsp">Rules</a></li>
            <li><a href="complaint.jsp">Complaint</a></li>
          </ul>
        </div>
      </div>
      <div class="copyright">
        <p>&copy; 2025 Campus Nest. All rights reserved.</p>
      </div>
    </div>
  </footer>
</body>
</html>