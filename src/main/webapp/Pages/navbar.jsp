<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global_for_client.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/rooms.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
  <title>Marshmallow Haven</title>
  <link rel="icon" type="${pageContext.request.contextPath}/image/png" href="img/b_logo.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<header>
    <div class="container header-content">

      <div class="logo-container">
        <a href="home.jsp" class="logo"> <img src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
        <a href="home.jsp" class="logo-text">Marshmallow Haven</a>
      </div>
    
      <nav>
        <ul>
         <li><a href="home.jsp" class="nav-link ${activePage == 'home' ? 'active' : ''}">Home</a></li>
		<li><a href="rooms.jsp" class="nav-link ${activePage == 'rooms' ? 'active' : ''}">Rooms</a></li>
		<li><a href="hostel-rules.jsp" class="nav-link ${activePage == 'rules' ? 'active' : ''}">Rules</a></li>
		<li><a href="#" class="nav-link ${activePage == 'about' ? 'active' : ''}">About us</a></li>

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
              <img src="${pageContext.request.contextPath}/img/profile.jpg" alt="Profile" class="mini-profile-pic">
              <div class="profile-dropdown">
                <div class="profile-header">
                  <img src="${pageContext.request.contextPath}/img/profile.jpg" alt="Profile" class="mini-profile-pic">
                  <div>
                    <h4>Hema Gurung</h4>
                  
                  </div>
                </div>
                <ul class="profile-menu">
				  <li><a href="student-dashboard.jsp">My Profile</a></li>
				  <li><a href="complaint.jsp">Complaint</a></li>
				  <li>
					  <form action="${pageContext.request.contextPath}/LogoutServlet" method="get" >
					    <button type="submit">Logout</button>
					  </form>
					</li>

				</ul>

              </div>
            </div>
          </li>
        </ul>
      </nav>
    </div>
  </header>

</body>
</html>