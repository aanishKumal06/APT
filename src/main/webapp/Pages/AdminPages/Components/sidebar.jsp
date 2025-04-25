<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-Marshmallow Haven</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminCss/sidebar.css">

<style type="text/css">

  </style>
</head>
<body>


    <div class="sidebar" id="sidebar">
      <div class="sidebar-header">
          <div class="sidebar-logo">
          <button id="toggleSidebar" class="toggle-sidebar">
            <img src="${pageContext.request.contextPath}/img/b_logo.png" alt="LOGO" class="logo">
          </button>
        </div>
      </div>
      <div class="sidebar-nav">
        <a href="index.html" class="nav-item ${activePage == 'dashboard' ? 'active' : ''}">
          <i class="fas fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </a>
        <a href="applications.html" class="nav-item ${activePage == 'applications' ? 'active' : ''}">
          <i class="fas fa-clipboard-list"></i>
          <span>Applications</span>
        </a>
        <a href="rooms.html" class="nav-item ${activePage == 'rooms' ? 'active' : ''}">
          <i class="fas fa-bed"></i>
          <span>Rooms</span>
        </a>
        <a href="notifications.html" class="nav-item ${activePage == 'notifications' ? 'active' : ''}">
          <i class="fas fa-bell"></i>
          <span>Notifications</span>
        </a>
        <a href="rules.html" class="nav-item ${activePage == 'rules' ? 'active' : ''}">
          <i class="fas fa-gavel"></i>
          <span>Rules</span>
        </a>
        <a href="complaints.html" class="nav-item ${activePage == 'complaints' ? 'active' : ''}">
          <i class="fas fa-exclamation-circle"></i>
          <span>Complaints</span>
        </a>
        <a href="#" class="nav-item ${activePage == 'logout' ? 'active' : ''}">
          <i class="fas fa-sign-out-alt"></i>
          <span>Logout</span>
        </a>
      </div>
    </div>
    
<script src="${pageContext.request.contextPath}/js/sidebar-toggle.js"></script>
</body>
</html>