<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Applications - Hostel Admin</title>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminCss/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
  <div class="hostel-admin">
      <c:set var="activePage" value="applications" scope="request" />
 <jsp:include page="/Pages/AdminPages/Components/sidebar.jsp"/>

      <!-- Main Content -->
    <div class="content" id="content" >
       <jsp:include page="/Pages/AdminPages/Components/topbar.jsp"/>


      <div class="page-header">
        <h1>Student Applications</h1>
        <div class="actions">
          <div class="filter-group">
            <label for="status-filter">Filter by:</label>
            <select id="status-filter" class="form-select">
              <option value="all">All Applications</option>
              <option value="pending">Pending</option>
              <option value="approved">Approved</option>
              <option value="rejected">Rejected</option>
            </select>
          </div>
          <button class="btn btn-primary"><i class="fas fa-download"></i> Export</button>
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
            <tr>
              <td>John Doe</td>
              <td>Male</td>
              <td>john.doe@example.com</td>
              <td>+1 234-567-8901</td>
              <td>Single AC</td>
              <td>June 10, 2023</td>
              <td><span class="badge badge-pending">Pending</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewApplicationModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon success"><i class="fas fa-check"></i></button>
                <button class="btn-icon danger"><i class="fas fa-times"></i></button>
              </td>
            </tr>
            <tr>
              <td>Jane Smith</td>
              <td>Female</td>
              <td>jane.smith@example.com</td>
              <td>+1 987-654-3210</td>
              <td>Double Non-AC</td>
              <td>June 5, 2023</td>
              <td><span class="badge badge-approved">Approved</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewApplicationModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>Michael Johnson</td>
              <td>Male</td>
              <td>michael.j@example.com</td>
              <td>+1 555-123-4567</td>
              <td>Single Non-AC</td>
              <td>June 8, 2023</td>
              <td><span class="badge badge-rejected">Rejected</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewApplicationModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>Emma Wilson</td>
              <td>Female</td>
              <td>emma.w@example.com</td>
              <td>+1 333-888-9999</td>
              <td>Double AC</td>
              <td>June 12, 2023</td>
              <td><span class="badge badge-pending">Pending</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewApplicationModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon success"><i class="fas fa-check"></i></button>
                <button class="btn-icon danger"><i class="fas fa-times"></i></button>
              </td>
            </tr>
            <tr>
              <td>Robert Brown</td>
              <td>Male</td>
              <td>robert.b@example.com</td>
              <td>+1 777-888-9999</td>
              <td>Single AC</td>
              <td>June 7, 2023</td>
              <td><span class="badge badge-approved">Approved</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewApplicationModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>Olivia Davis</td>
              <td>Female</td>
              <td>olivia.d@example.com</td>
              <td>+1 444-555-6666</td>
              <td>Double Non-AC</td>
              <td>June 9, 2023</td>
              <td><span class="badge badge-pending">Pending</span></td>
              <td>
                <button class="btn-icon" onclick="openModal('viewApplicationModal')"><i class="fas fa-eye"></i></button>
                <button class="btn-icon success"><i class="fas fa-check"></i></button>
                <button class="btn-icon danger"><i class="fas fa-times"></i></button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>

    </div>
  </div>

  <!-- View Application Modal -->
  <div id="viewApplicationModal" class="modal-backdrop">
    <div class="modal">
      <div class="modal-header">
        <h3>Application Details</h3>
        <button class="close-btn" onclick="closeModal('viewApplicationModal')"><i class="fas fa-times"></i></button>
      </div>
      <div class="modal-body">
        <div class="application-details">
          <div class="applicant-header">
            <img src="https://via.placeholder.com/80" alt="Applicant Photo" class="applicant-photo">
            <div>
              <h3>John Doe</h3>
              <p>ID: STU12345 | Applied on: June 10, 2023</p>
              <span class="badge badge-pending">Pending</span>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Personal Information</h4>
            <div class="details-grid">
              <div class="detail-item">
                <span class="label">Full Name</span>
                <span class="value">John Doe</span>
              </div>
              <div class="detail-item">
                <span class="label">Gender</span>
                <span class="value">Male</span>
              </div>
              <div class="detail-item">
                <span class="label">Date of Birth</span>
                <span class="value">January 15, 1998</span>
              </div>
              <div class="detail-item">
                <span class="label">Email</span>
                <span class="value">john.doe@example.com</span>
              </div>
              <div class="detail-item">
                <span class="label">Phone</span>
                <span class="value">+1 234-567-8901</span>
              </div>
              <div class="detail-item">
                <span class="label">Address</span>
                <span class="value">123 Main St, Cityville, State, 12345</span>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Academic Information</h4>
            <div class="details-grid">
              <div class="detail-item">
                <span class="label">University</span>
                <span class="value">State University</span>
              </div>
              <div class="detail-item">
                <span class="label">Department</span>
                <span class="value">Computer Science</span>
              </div>
              <div class="detail-item">
                <span class="label">Year</span>
                <span class="value">3rd Year</span>
              </div>
              <div class="detail-item">
                <span class="label">Student ID</span>
                <span class="value">STU12345</span>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Room Preference</h4>
            <div class="details-grid">
              <div class="detail-item">
                <span class="label">Room Type</span>
                <span class="value">Single AC</span>
              </div>
              <div class="detail-item">
                <span class="label">Duration</span>
                <span class="value">1 Academic Year</span>
              </div>
              <div class="detail-item">
                <span class="label">Special Requests</span>
                <span class="value">Ground floor preferred due to health reasons</span>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Documents</h4>
            <div class="documents-list">
              <div class="document-item">
                <i class="fas fa-file-pdf"></i>
                <span>Identity Proof</span>
                <a href="#" class="btn-text">View</a>
              </div>
              <div class="document-item">
                <i class="fas fa-file-pdf"></i>
                <span>Address Proof</span>
                <a href="#" class="btn-text">View</a>
              </div>
              <div class="document-item">
                <i class="fas fa-file-image"></i>
                <span>Student ID Card</span>
                <a href="#" class="btn-text">View</a>
              </div>
              <div class="document-item">
                <i class="fas fa-file-pdf"></i>
                <span>Medical Certificate</span>
                <a href="#" class="btn-text">View</a>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Guardian Information</h4>
            <div class="details-grid">
              <div class="detail-item">
                <span class="label">Name</span>
                <span class="value">Robert Doe</span>
              </div>
              <div class="detail-item">
                <span class="label">Relationship</span>
                <span class="value">Father</span>
              </div>
              <div class="detail-item">
                <span class="label">Contact Number</span>
                <span class="value">+1 987-654-3210</span>
              </div>
              <div class="detail-item">
                <span class="label">Email</span>
                <span class="value">robert.doe@example.com</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-outline" onclick="closeModal('viewApplicationModal')">Close</button>
        <button class="btn btn-danger">Reject</button>
        <button class="btn btn-success">Approve</button>
      </div>
    </div>
  </div>

  <script>

    // Modal functions
    function openModal(modalId) {
      document.getElementById(modalId).classList.add('show');
      document.body.style.overflow = 'hidden';
    }

    function closeModal(modalId) {
      document.getElementById(modalId).classList.remove('show');
      document.body.style.overflow = 'auto';
    }
  </script>
  
  <!-- IMPORTANT: DO NOT REMOVE THIS SCRIPT TAG OR THIS VERY COMMENT! -->
  <script src="https://cdn.gpteng.co/gptengineer.js" type="module"></script>
</body>
</html>
