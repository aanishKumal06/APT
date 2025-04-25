<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Rooms-Marshmallow Haven</title>

  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/global_for_client.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/rooms.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

.main-content {
    padding: 3rem 0;
  }
  
  .section-title {
    font-size: 1.8rem;
    color: #1a3c5a;
    margin-bottom: 1.5rem;
    border-bottom: 2px solid #e6f2ff;
    padding-bottom: 0.5rem;
  }
  
  .form-container {
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  }
  
  .form-group {
    margin-bottom: 20px;
  }
  
  .form-group label {
    display: block;
    margin-bottom: 8px;
    font-weight: 500;
    color: #333;
  }
  
  .form-control {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 1rem;
  }
  
  .form-control:focus {
    outline: none;
    border-color: #1a3c5a;
    box-shadow: 0 0 0 2px rgba(26, 60, 90, 0.2);
  }
  
  .form-row {
    display: flex;
    gap: 20px;
  }
  
  .form-row .form-group {
    flex: 1;
  }
  
  .form-actions {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;

  }  
  
  .btn {
    display: inline-block;
    background-color: #1a3c5a;
    color: white;
    padding: 0.8rem 1.5rem;
    border-radius: 4px;
    text-decoration: none;
    font-weight: 500;
    transition: background-color 0.3s;
    border: none;
    cursor: pointer;
  }
  
  .btn:hover {
    background-color: #2c5a85;
  }
  
</style>
</head>
<body>
  <!-- Header -->
  <c:set var="activePage" value="rooms" scope="request" />
<jsp:include page="/Pages/UserPages/Components/navbar.jsp"/>


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
          <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png"  alt="Double Room" class="room-image">
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
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png"  alt="Single Non-AC Room" class="room-image">
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
        
        <div class="room-card">
          <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png"  alt="Double Non-AC Room" class="room-image">
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
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png"  alt="Single Deluxe Room" class="room-image">
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
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png"  alt="Double Deluxe Room" class="room-image">
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
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp" class="btn">Apply Now</a>
          </div>
        </div>
  
      
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
          <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png"  alt="Double Room" class="room-image">
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
            <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp" class="btn">Apply Now</a>
          </div>
        </div>
        
        <div class="room-card">
          <img src="${pageContext.request.contextPath}/img/Screenshot 2025-04-03 185359.png"  alt="Single Non-AC Room" class="room-image">
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
  
  <!-- Footer -->
  <jsp:include page="/Pages/UserPages/Components/footer.jsp"/>
</body>
</html>