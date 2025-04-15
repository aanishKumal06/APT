<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Header -->
  <header>
    <div class="container header-content">
      <div class="logo-container">
        <a href="index.html" class="logo"> <img src="img/logo.png" alt=""></a>
        <a href="index.html" class="logo-text">Marshmallow Haven</a>
      </div>
    
      <nav>
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="rooms.html">Rooms</a></li>
          <li><a href="hostel-rules.html">Rules</a></li>
          <li><a href="#">About us</a></li>
          <li class="notification-icon">
            <div class="notification-container">
              <span class="notification-count">3</span>
              <span class="icon">📬</span>
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
                  <li><a href="student-dashboard.html">My Profile</a></li>
                  <li><a href="complaint.html">Complaint</a></li>
                  <li><a href="index.html">Logout</a></li>
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
      <h1 class="section-title">Complaint Form</h1>
      
      <div class="form-container">
        <form id="hostel-application">
          <div class="form-group">
            <h3>Personal Information</h3>
          </div>
          
          <div class="form-row">
            <div class="form-group">
              <label for="fullname">Full Name *</label>
              <input type="text" id="fullname" class="form-control" required>
            </div>
            
            <div class="form-group">
              <label for="email">Email Address *</label>
              <input type="email" id="email" class="form-control" required>
            </div>
          </div>
          
          <div class="form-row">
            <div class="form-group">
              <label for="complaint-type">Complaint Type *</label>
              <select id="complaint-type" class="form-control" required>
                <option value="">Select Type</option>
                <option value="Maintenance">Maintenance</option>
                <option value="Noise">Noise</option>
                <option value="Cleanliness">Cleanliness</option>
                <option value="Security">Security</option>
                <option value="Other">Other</option>
              </select>
            </div>
            
            <div class="form-group">
                <label for="id-proof">Evidence</label>
                <input type="file" id="id-proof" class="form-control" accept=".pdf,.jpg,.jpeg,.png" required>
            </div>
          </div>
          
      
          
          <div class="form-group">
            <label for="address">Complaint</label>
            <textarea id="address" class="form-control" rows="3" required></textarea>
          </div>
          

          
          <div class="form-actions">
            <button type="button" class="btn" style="background-color: #6c757d;">Cancel</button>
            <button type="submit" class="btn">Submit</button>
          </div>
        </form>
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
            <li><a href="index.html">Home</a></li>
            <li><a href="student-dashboard.html">Dashboard</a></li>
            <li><a href="rooms.html">Rooms</a></li>
            <li><a href="hostel-rules.html">Rules</a></li>
            <li><a href="complaint.html">Complaint</a></li>
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