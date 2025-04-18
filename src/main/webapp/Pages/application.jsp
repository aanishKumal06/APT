<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/global_for_client.css">
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
          <li><a href="rooms.jsp" >Rooms</a></li>
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
      <h1 class="section-title">Hostel Application Form</h1>
      
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
              <label for="Username">Username *</label>
              <input type="text" id="Username" class="form-control" required>
            </div>
          </div>
          
          <div class="form-row">
            <div class="form-group">
              <label for="email">Email Address *</label>
              <input type="email" id="email" class="form-control" required>
            </div>
            
            <div class="form-group">
              <label for="phone">Contact Number *</label>
              <input type="tel" id="phone" class="form-control" required>
            </div>
          </div>
          
          <div class="form-row">
            <div class="form-group">
              <label for="gender">Gender *</label>
              <select id="gender" class="form-control" required>
                <option value="" disabled selected>Select Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
              </select>
            </div>
            
            <div class="form-group">
              <label for="dob">Date of Birth *</label>
              <input type="date" id="dob" class="form-control" required>
            </div>
          </div>
          
          <div class="form-group">
            <label for="address">Permanent Address *</label>
            <textarea id="address" class="form-control" rows="3" required></textarea>
          </div>
          
          <div class="form-group">
            <h3>Emergency Contact</h3>
          </div>
          
          <div class="form-row">
            <div class="form-group">
              <label for="emergency-name">Contact Name *</label>
              <input type="text" id="emergency-name" class="form-control" required>
            </div>
            
            <div class="form-group">
              <label for="relationship">Relationship *</label>
              <input type="text" id="relationship" class="form-control" required>
            </div>
          </div>
          
          <div class="form-row">
            <div class="form-group">
              <label for="emergency-phone">Contact Number *</label>
              <input type="tel" id="emergency-phone" class="form-control" required>
            </div>
            
            <div class="form-group">
              <label for="emergency-email">Email Address</label>
              <input type="email" id="emergency-email" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <h3>Room Preference</h3>
          </div>
          
          <div class="form-row">
            
            <div class="form-group">
              <label for="check-in">Expected Check-in Date *</label>
              <input type="date" id="check-in" class="form-control" required>
            </div>

            <div class="form-group">
              <label for="duration">Duration of Stay *</label>
              <select id="duration" class="form-control" required>
                <option value="" disabled selected>Select Duration</option>
                <option value="1-month">1 Month</option>
                <option value="3-months">3 Months</option>
                <option value="6-months">6 Months</option>
                <option value="1-year">1 Year</option>
              </select>
            </div>
          </div>
          
          <div class="form-row">
            
            
            <div class="form-group">
              <label for="special-requests">Special Requests</label>
              <input type="text" id="special-requests" class="form-control">
            </div>
          </div>
          
          <div class="form-group">
            <h3>Document Upload</h3>
            <p>Please upload the following documents (PDF or JPG format only, max size 2MB each)</p>
          </div>
          
          <div class="form-row">
            <div class="form-group">
              <label for="id-proof">ID Proof/Citizenship *</label>
              <input type="file" id="id-proof" class="form-control" accept=".pdf,.jpg,.png" required>
            </div>
            
            <div class="form-group">
              <label for="student-id-card">Student ID Card *</label>
              <input type="file" id="student-id-card" class="form-control" accept=".pdf,.jpg,.png" required>
            </div>
          </div>
          
            <div class="form-group">
              <label for="photo">Passport Size Photo *</label>
              <input type="file" id="photo" class="form-control" accept=".jpg,.jpeg,.png" required>
            </div>
            
            <div class="form-group">
              <label for="medical-certificate">Medical Certificate (if any)</label>
              <input type="file" id="medical-certificate" class="form-control" accept=".pdf,.jpg,.jpeg,.png">
            </div>
          </div>
          
          <div class="form-group">
            <input type="checkbox" id="terms" required>
            <label for="terms">I have read and agree to the <a href="hostel-rules.jsp">hostel rules and policies</a> *</label>
          </div>
          
          <div class="form-actions">
            <button type="button" class="btn" style="background-color: #6c757d;">Cancel Application</button>
            <button type="submit" class="btn">Submit Application</button>
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
          <h3>Marshmallow Haven</h3>
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
        <p>&copy; 2025 Marshmallow Haven. All rights reserved.</p>
      </div>
    </div>
  </footer>
</body>
</html>