<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ page import="java.util.ArrayList" %>
<%@ page import="com.marshmallowhaven.Model.Room" %>
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
        <form id="room-filter-form" action="${pageContext.request.contextPath}/RoomDetailsServelt" method="GET">
  <div class="form-row">
    
    <!-- Room Type Filter -->
    <div class="form-group">
      <label for="room-type">Room Type</label>
      <select id="room-type" name="roomType" class="form-control">
        <option value="all" <%= "all".equals(request.getAttribute("selectedRoomType")) ? "selected" : "" %>>All Types</option>
        <option value="Single AC" <%= "Single AC".equals(request.getAttribute("selectedRoomType")) ? "selected" : "" %>>Single AC</option>
        <option value="Single Non-AC" <%= "Single Non-AC".equals(request.getAttribute("selectedRoomType")) ? "selected" : "" %>>Single Non-AC</option>
        <option value="Double AC" <%= "Double AC".equals(request.getAttribute("selectedRoomType")) ? "selected" : "" %>>Double AC</option>
        <option value="Double Non-AC" <%= "Double Non-AC".equals(request.getAttribute("selectedRoomType")) ? "selected" : "" %>>Double Non-AC</option>
      </select>
    </div>

    <!-- Price Filter -->
    <div class="form-group">
      <label for="price">Price Range</label>
      <select id="price" name="priceRange" class="form-control">
        <option value="all" <%= "all".equals(request.getAttribute("selectedPriceRange")) ? "selected" : "" %>>All</option>
        <option value="high" <%= "high".equals(request.getAttribute("selectedPriceRange")) ? "selected" : "" %>>High</option>
        <option value="low" <%= "low".equals(request.getAttribute("selectedPriceRange")) ? "selected" : "" %>>Low</option>
      </select>
    </div>

    <button type="submit" class="btn btn-primary" style="padding: 6px 12px; font-size: 16px; height: 40px; margin-top: 35px;">Apply Filters</button>

  </div>
</form>


      </div>
      
      <div class="room-list">
                <%
    // Get the list of rooms from the request attribute
    		ArrayList<Room> roomList = (ArrayList<Room>) request.getAttribute("rooms");
            		
      		 if (roomList == null) {
      	            response.sendRedirect(request.getContextPath() + "/RoomDetailsServelt"); // Replace with your actual servlet path
      	            return;
      	        }        	
		%>
      <% for (Room room : roomList) { %>
		  <div class="room-card">
		      <img src="<%=request.getAttribute("imgURL")+room.getImageUrl() %>" alt="<%= room.getRoomType() %>" class="room-image">
		      <div class="room-details">
		        <h3 class="room-type"><%= room.getRoomType() %></h3>
		        <div class="room-specs">
		          <span><strong>Room Number:</strong> <%= room.getRoomNumber() %></span>
		         <span class="vacancy <%= room.getIsAvailable() == true ? "vacant" : "occupied" %>">
				    <%= room.getIsAvailable() == true ? "Vacant" : "Occupied" %>
				</span>

		        </div>
		        <p><strong>Monthly Fee:</strong> $<%= room.getMonthlyFee() %></p>
		        
		        <!-- Displaying facilities one by one -->
		        <div class="room-facilities">
		          <% 
		              String[] facilities = room.getRoomFacilities().split(",");
		              for (String facility : facilities) { 
		          %>
		              <div class="facility"><%= facility.trim() %></div>  <!-- Each facility on a new line -->
		          <% } %>
		        </div>
		        
		        <a style="position: relative; display: block; text-align: center; margin: 0 auto;" href="application.jsp?roomId=<%= room.getRoomId() %>" class="btn">Apply Now</a>
		      </div>
		  </div>
		<% } %>
           </div>
    </div>
  </section>
  
  <!-- Footer -->
  <jsp:include page="/Pages/UserPages/Components/footer.jsp"/>
</body>
</html>