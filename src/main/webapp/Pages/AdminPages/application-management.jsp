<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ page import="java.util.ArrayList" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Room Management - Hostel Admin</title>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminCss/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
  
  .add-body {
  background-color: #ffffff;         /* white background */
  padding: 1rem;                     /* inner spacing */
  border-radius: 10px;               /* rounded corners */
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.15); /* soft shadow */
  max-width: 1400px;                  /* optional: limit width */
  margin: auto;                      /* center horizontally */
}

.error-list {
  color: red;
  padding-left: 0;
  margin-left: 0;
  list-style-position: inside;
}

.successMessage-list {
  color: green;
  padding-left: 0;
  margin-left: 0;
  list-style-position: inside;
}

  
  </style>
  

</head>
<body>
 
 <div class="hostel-admin">
   <c:set var="activePage" value="applications" scope="request" />
 <jsp:include page="/Pages/AdminPages/Components/sidebar.jsp"/>



      <!-- Main Content -->
    <div class="content" id="content" >
       <jsp:include page="/Pages/AdminPages/Components/topbar.jsp"/>
             <c:if test="${empty applicationList}">
        <c:redirect url="/ApplicationDetailsServlet" />
    </c:if>


 <div class="page-header">
        <h1>Application Management</h1>
       
      </div>
  <!-- Add Room Modal -->
		
	      <div class="page-header">
        <h2>Student Applications</h2>
        <div class="actions">
          <div class="filter-group">
           <form action="${pageContext.request.contextPath}/ApplicationDetailsServlet" method="get">
		  <label for="status-filter">Filter by:</label>
		  <select id="status-filter" class="form-select" name="applicationStatus">
		    <option value="all" <%= "all".equals(request.getAttribute("selectedStatus")) ? "selected" : "" %>>All Rooms</option>
		    <option value="pending" <%= "pending".equals(request.getAttribute("selectedStatus")) ? "selected" : "" %>>Pending</option>
		    <option value="approved" <%= "".equals(request.getAttribute("selectedStatus")) ? "selected" : "" %>>Approved</option>
		    <option value="rejected" <%= "rejected".equals(request.getAttribute("selectedStatus")) ? "selected" : "" %>>Rejected</option>
		    <option value="checkout" <%= "checkout".equals(request.getAttribute("selectedStatus")) ? "selected" : "" %>>Checkout</option>
		  </select>
		  <button type="submit" class="btn btn-primary">Apply</button>
		</form>
          </div>
        </div>
      </div>
      
      <!-- Applications Table -->
      <div class="table-container">
        <table class="admin-table">
          <thead>
            <tr>
              <th>Name</th>
              <th>Gender</th>
              <th>Email</th>
              <th>Contact</th>
              <th>Room Type</th>
              <th>Date Applied</th>
              <th>Status</th>
              <th>Actions</th>
            </tr>
          </thead>
         <tbody>
		  <c:forEach var="app" items="${applicationList}">
		    <tr>
		      <td>${app.fullName}</td>
		      <td>${app.gender}</td>
		      <td>${app.email}</td>
		      <td>${app.contactNumber}</td>
		      <td>${app.roomType}</td>
		      <td><fmt:formatDate value="${app.applicationCreatedAt}" pattern="MMMM dd, yyyy" /></td>
		      <td>
		        <c:choose>
		          <c:when test="${app.status eq 'pending'}">
		            <span class="badge badge-pending">Pending</span>
		          </c:when>
		          <c:when test="${app.status eq 'approved'}">
		            <span class="badge badge-approved">Approved</span>
		          </c:when>
		          <c:when test="${app.status eq 'rejected'}">
		            <span class="badge badge-rejected">Rejected</span>
		          </c:when> 
		          <c:when test="${app.status eq 'checkout'}">
		            <span class="badge badge-checkout">checkout</span>
		          </c:when>
		        </c:choose>
		      </td>
		      <td>
		        <form action="ApplicationDetailsByIdServlet" method="get">
		          <input type="hidden" name="application_user_id" value="${app.applicationUserId}">
  				  <input type="hidden" name="user_id" value="${app.userId}">
				  <button class="btn-icon" type="submit">
				    <i class="fas fa-eye"></i>
				  </button>
				</form>

		        <c:if test="${app.status eq 'pending'}">
		          <button class="btn-icon success"><i class="fas fa-check"></i></button>
		          <button class="btn-icon danger"><i class="fas fa-times"></i></button>
		        </c:if>
		      </td>
		    </tr>
		  </c:forEach>
		</tbody>


        </table>
      </div>

    </div>
  </div>
 

 
  

</body>
</html>