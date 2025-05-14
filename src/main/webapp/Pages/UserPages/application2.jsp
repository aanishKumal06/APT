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

<style>
  /* Full-screen semi-transparent overlay */
  #modalOverlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    z-index: 999;
  }

  /* Centered modal box */
  #successModal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: #fff;
    padding: 20px 30px;
    border-radius: 8px;
    box-shadow: 0 8px 16px rgba(0,0,0,0.3);
    text-align: center;
    z-index: 1000;
    max-width: 90%;
    width: 300px;
  }

  #successModal p {
    margin: 0 0 15px;
    font-size: 16px;
    color: #333;
  }

  #closeModalButton {
    padding: 8px 16px;
    font-size: 14px;
    border: none;
    border-radius: 4px;
    background: #28a745;
    color: #fff;
    cursor: pointer;
  }

  #closeModalButton:hover {
    background: #218838;
  }
</style>


</head>
<body>
  <c:set var="activePage" scope="request" />
<jsp:include page="/Pages/UserPages/Components/navbar.jsp"/>

<c:if test="${empty userDetails}">
    <c:redirect url="/UserUpdateProfileServlet" />
</c:if>


        <c:forEach var="user" items="${userDetails}">
<!-- Main Content -->
<section class="main-content">
  <div class="container">
    <h1 class="section-title">Update Profile</h1>

    <div class="form-container">
      <form method="POST" action="UpdateProfileServlet" enctype="multipart/form-data">
        <div class="form-row">
          <div class="form-group">
            <label for="full_name">Full Name</label>
            <input type="text" id="full_name" name="full_name" class="form-control" 
                   value="${user.fullName}">
          </div>
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" class="form-control" 
                   value="${user.username}">
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" class="form-control" 
                   value="${user.email}">
          </div>
          <div class="form-group">
            <label for="contact_number">Contact Number</label>
            <input type="text" id="contact_number" name="contact_number" class="form-control" 
                   value="${user.contactNumber}">
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" class="form-control">
              <option value="Male" ${user.gender == 'Male' ? 'selected' : ''}>Male</option>
              <option value="Female" ${user.gender == 'Female' ? 'selected' : ''}>Female</option>
              <option value="Other" ${user.gender == 'Other' ? 'selected' : ''}>Other</option>
            </select>
          </div>
          <div class="form-group">
            <label for="date_of_birth">Date of Birth</label>
            <input type="date" id="date_of_birth" name="date_of_birth" class="form-control" 
                   value="${user.dateOfBirth}">
          </div>
        </div>

        <div class="form-group">
          <label for="address">Address</label>
          <textarea id="address" name="address" rows="3" class="form-control">${user.address}</textarea>
        </div>

        <div class="form-actions">
          <a href="${pageContext.request.contextPath}/Pages/UserPages/student-dashboard.jsp" class="btn update-profile-btn">Cancel</a>
          <button type="submit" class="btn btn-primary">Update Profile</button>
        </div>
      </form>
    </div>
  </div>
</section>
       </c:forEach> 
  
  <jsp:include page="/Pages/UserPages/Components/footer.jsp"/>
  
 
  
</body>
</html>