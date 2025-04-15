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
          <li><a href="rooms.html" class="active">Rooms</a></li>
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
      <h1 class="section-title">Room Details</h1>
      
      <div class="room-filters">
        <div class="form-row">
          <div class="form-group">
            <label for="room-type">Room Type</label>
            <select id="room-type" class="form-control">
              <option value="all">All Types</option>
              <option value="single">Single Occupancy</option>
              <option value="double">Double Occupancy</option>
            </select>

          </div>
          
          <div class="form-group">
            <label for="ac-type">AC/Non-AC</label>
            <select id="ac-type" class="form-control">
              <option value="all">All</option>
              <option value="ac">AC</option>
              <option value="non-ac">Non-AC</option>
            </select>
          </div>
          
          <div class="form-group">
            <label for="vacancy">Vacancy Status</label>
            <select id="vacancy" class="form-control">
              <option value="all">All</option>
              <option value="vacant">Vacant</option>
              <option value="full">Occupied</option>
            </select>
          </div>
        </div>
      </div>
      
      <div class="room-list">
        <div class="room-card">
          <img src="img/Screenshot 2025-04-03 185359.png"alt="Single Room" class="room-image">
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
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.html" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="img/Screenshot 2025-04-03 185359.png" alt="Double Room" class="room-image">
          <div class="room-details">
            <h3 class="room-type">Double Occupancy Room (AC)</h3>
            <div class="room-specs">
              <span><strong>Room Number:</strong> B-204</span>
              <span class="vacancy full">Full</span>
            </div>
            <p><strong>Monthly Fee:</strong> $300 per student</p>
            <div class="room-facilities">
              <span class="facility">WiFi</span>
              <span class="facility">Attached Bathroom</span>
              <span class="facility">2 Study Tables</span>
              <span class="facility">2 Wardrobes</span>
            </div>
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.html" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="img/Screenshot 2025-04-03 185359.png" alt="Single Non-AC Room" class="room-image">
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
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.html" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="img/Screenshot 2025-04-03 185359.png" alt="Double Non-AC Room" class="room-image">
          <div class="room-details">
            <h3 class="room-type">Double Occupancy Room (Non-AC)</h3>
            <div class="room-specs">
              <span><strong>Room Number:</strong> D-302</span>
              <span class="vacancy vacant">Vacant (1 bed)</span>
            </div>
            <p><strong>Monthly Fee:</strong> $200 per student</p>
            <div class="room-facilities">
              <span class="facility">WiFi</span>
              <span class="facility">Common Bathroom</span>
              <span class="facility">2 Study Tables</span>
              <span class="facility">2 Wardrobes</span>
              <span class="facility">Ceiling Fan</span>
            </div>
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.html" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="img/Screenshot 2025-04-03 185359.png" alt="Single Deluxe Room" class="room-image">
          <div class="room-details">
            <h3 class="room-type">Single Deluxe Room (AC)</h3>
            <div class="room-specs">
              <span><strong>Room Number:</strong> E-101</span>
              <span class="vacancy vacant">Vacant</span>
            </div>
            <p><strong>Monthly Fee:</strong> $400</p>
            <div class="room-facilities">
              <span class="facility">WiFi</span>
              <span class="facility">Attached Bathroom</span>
              <span class="facility">Study Table</span>
              <span class="facility">Wardrobe</span>
              <span class="facility">Mini Fridge</span>
              <span class="facility">TV</span>
            </div>
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.html" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="img/Screenshot 2025-04-03 185359.png" alt="Double Deluxe Room" class="room-image">
          <div class="room-details">
            <h3 class="room-type">Double Deluxe Room (AC)</h3>
            <div class="room-specs">
              <span><strong>Room Number:</strong> E-205</span>
              <span class="vacancy full">Full</span>
            </div>
            <p><strong>Monthly Fee:</strong> $350 per student</p>
            <div class="room-facilities">
              <span class="facility">WiFi</span>
              <span class="facility">Attached Bathroom</span>
              <span class="facility">2 Study Tables</span>
              <span class="facility">2 Wardrobes</span>
              <span class="facility">Mini Fridge</span>
              <span class="facility">TV</span>
            </div>
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.html" class="btn">Apply Now</a>

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