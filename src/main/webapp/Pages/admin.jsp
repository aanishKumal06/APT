<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
	<title>Hostel Admin Dashboard</title>
</head>
<body>
  <div class="hostel-admin">
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
      <div class="sidebar-header">
        <div class="sidebar-logo">
          <i class="fas fa-building fa-2x"></i>
          <h2>Hostel Admin</h2>
        </div>
      </div>
      <div class="sidebar-nav">
        <a href="admin.jsp" class="nav-item active">
          <i class="fas fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </a>
        <a href="#" class="nav-item">
          <i class="fas fa-clipboard-list"></i>
          <span>Applications</span>
        </a>
        <a href="#" class="nav-item">
          <i class="fas fa-bed"></i>
          <span>Rooms</span>
        </a>
        <a href="#" class="nav-item">
          <i class="fas fa-bell"></i>
          <span>Notifications</span>
        </a>
        <a href="#" class="nav-item">
          <i class="fas fa-gavel"></i>
          <span>Rules</span>
        </a>
        <a href="#" class="nav-item">
          <i class="fas fa-exclamation-circle"></i>
          <span>Complaints</span>
        </a>
        <a href="#" class="nav-item">
        	<form action="${pageContext.request.contextPath}/LogoutServlet" method="get" >
        		<i class="fas fa-sign-out-alt"></i>
			    <button type="submit">Logout</button>
	        </form>
        </a>
      </div>
    </div>

    <!-- Main Content -->
    <div class="content">
      <div class="topbar">
        <button id="toggleSidebar" class="toggle-sidebar">
          <i class="fas fa-bars"></i>
        </button>
        <div class="user-info">
          <span>Admin User</span>
          <img src="img/profile.jpg" alt="Admin" class="avatar">
        </div>
      </div>

      <h1>Dashboard</h1>
      
      <!-- Dashboard Stats -->
      <div class="dashboard-stats">
        <div class="stat-card">
          <div class="stat-icon blue">
            <i class="fas fa-user-graduate"></i>
          </div>
          <div class="stat-info">
            <h3>Total Students</h3>
            <p class="stat-number">456</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon green">
            <i class="fas fa-door-open"></i>
          </div>
          <div class="stat-info">
            <h3>Vacant Rooms</h3>
            <p class="stat-number">34</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon amber">
            <i class="fas fa-clipboard-check"></i>
          </div>
          <div class="stat-info">
            <h3>Pending Applications</h3>
            <p class="stat-number">28</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon red">
            <i class="fas fa-exclamation-triangle"></i>
          </div>
          <div class="stat-info">
            <h3>Active Alerts</h3>
            <p class="stat-number">12</p>
          </div>
        </div>
      </div>

      <!-- Quick Actions -->
      <div class="section-title">
        <h2>Quick Actions</h2>
      </div>
      <div class="quick-actions">
        <a href="applications.html" class="action-card">
          <i class="fas fa-clipboard-list"></i>
          <h3>View Applications</h3>
        </a>
        <a href="rooms.html" class="action-card">
          <i class="fas fa-bed"></i>
          <h3>Manage Rooms</h3>
        </a>
        <a href="notifications.html" class="action-card">
          <i class="fas fa-bell"></i>
          <h3>Post Notifications</h3>
        </a>
        <a href="complaints.html" class="action-card">
          <i class="fas fa-exclamation-circle"></i>
          <h3>View Complaints</h3>
        </a>
      </div>

      <!-- Recent Applications -->
      <div class="section-title">
        <h2>Recent Applications</h2>
        <a href="applications.html" class="view-all">View All</a>
      </div>
      <div class="table-container">
        <table class="admin-table">
          <thead>
            <tr>
              <th>Name</th>
              <th>Gender</th>
              <th>Contact</th>
              <th>Status</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Ayush Grg</td>
              <td>Male</td>
              <td>rgr.ayush@gmail.com</td>
              <td><span class="badge badge-pending">Pending</span></td>
              <td>
                <button class="btn-icon"><i class="fas fa-eye"></i></button>
                <button class="btn-icon success"><i class="fas fa-check"></i></button>
                <button class="btn-icon danger"><i class="fas fa-times"></i></button>
              </td>
            </tr>
            <tr>
              <td>Hema</td>
              <td>Female</td>
              <td>hema@example.com</td>
              <td><span class="badge badge-approved">Approved</span></td>
              <td>
                <button class="btn-icon"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>Saji</td>
              <td>Female</td>
              <td>saji@example.com</td>
              <td><span class="badge badge-rejected">Rejected</span></td>
              <td>
                <button class="btn-icon"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Recent Notifications -->
      <div class="section-title">
        <h2>Recent Notifications</h2>
        <a href="notifications.html" class="view-all">View All</a>
      </div>
      <div class="notifications-list">
        <div class="notification-card">
          <div class="notification-icon blue">
            <i class="fas fa-info-circle"></i>
          </div>
          <div class="notification-content">
            <h4>Maintenance Notice</h4>
            <p>Water supply will be interrupted from 10 AM to 2 PM tomorrow due to scheduled maintenance.</p>
            <div class="notification-meta">
              <span class="date">June 15, 2023</span>
              <span class="badge badge-info">Information</span>
            </div>
          </div>
        </div>
        <div class="notification-card">
          <div class="notification-icon red">
            <i class="fas fa-exclamation-circle"></i>
          </div>
          <div class="notification-content">
            <h4>Urgent: Fire Drill</h4>
            <p>A fire drill will be conducted on Friday at 3 PM. All students must evacuate the building.</p>
            <div class="notification-meta">
              <span class="date">June 12, 2023</span>
              <span class="badge badge-urgent">Urgent</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    // Simple JavaScript to toggle the sidebar
    document.getElementById('toggleSidebar').addEventListener('click', function() {
      document.getElementById('sidebar').classList.toggle('sidebar-collapsed');
      document.querySelector('.content').classList.toggle('content-expanded');
    });
  </script>

  
</body>
</html>