<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <title>Application-Marshmallow Haven</title>

  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/b_logo.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/UserCss/global_for_client.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/UserCss/application.css">
</head>
<body>
  <c:set var="activePage" value="rooms" scope="request" />
<jsp:include page="/Pages/UserPages/Components/navbar.jsp"/>


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

          
          <div class="form-group">
            <input type="checkbox" id="terms" required>
            <label for="terms">I have read and agree to the <a href="hostel-rules.jsp">hostel rules and policies</a> *</label>
          </div>
          
          <div class="form-actions">
          <a href="${pageContext.request.contextPath}/Pages/UserPages/rooms.jsp"" class="btn" style="background-color: #6c757d; padding: 0.5rem 1rem; color: white; text-decoration: none; border-radius: 5px;">
  						Cancel Application
          </a>

            <button type="submit" class="btn">Submit Application</button>
          </div>
        </form>
      </div>
      </div>
  </section>
  
  <jsp:include page="/Pages/UserPages/Components/footer.jsp"/>
</body>
</html>