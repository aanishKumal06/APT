<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Room Management - Hostel Admin</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
  <div class="hostel-admin">
   <c:set var="activePage" value="dashboard" scope="request" />
 <jsp:include page="/Pages/AdminPages/Components/sidebar.jsp"/>

      <!-- Main Content -->
    <div class="content" id="content" >
       <jsp:include page="/Pages/AdminPages/Components/topbar.jsp"/>

      <div class="page-header">
        <h1>Room Management</h1>
        <div class="actions">
          <div class="filter-group">
            <label for="room-filter">Filter by:</label>
            <select id="room-filter" class="form-select">
              <option value="all">All Rooms</option>
              <option value="vacant">Vacant</option>
              <option value="occupied">Occupied</option>
              <option value="maintenance">Under Maintenance</option>
            </select>
          </div>
          <button class="btn btn-primary" onclick="openModal('addRoomModal')"><i class="fas fa-plus"></i> Add New Room</button>
        </div>
      </div>
      
      <!-- Room Stat Cards -->
      <div class="dashboard-stats">
        <div class="stat-card">
          <div class="stat-icon blue">
            <i class="fas fa-door-open"></i>
          </div>
          <div class="stat-info">
            <h3>Total Rooms</h3>
            <p class="stat-number">200</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon green">
            <i class="fas fa-check-circle"></i>
          </div>
          <div class="stat-info">
            <h3>Vacant Rooms</h3>
            <p class="stat-number">34</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon red">
            <i class="fas fa-bed"></i>
          </div>
          <div class="stat-info">
            <h3>Occupied Rooms</h3>
            <p class="stat-number">166</p>
          </div>
        </div>
        <div class="stat-card">
          <div class="stat-icon amber">
            <i class="fas fa-tools"></i>
          </div>
          <div class="stat-info">
            <h3>Under Maintenance</h3>
            <p class="stat-number">4</p>
          </div>
        </div>
      </div>

      <!-- Building/Block Tabs -->
      <div class="tab-nav">
        <button class="tab-button active">All Blocks</button>
        <button class="tab-button">Block A</button>
        <button class="tab-button">Block B</button>
        <button class="tab-button">Block C</button>
        <button class="tab-button">Block D</button>
      </div>
      
      <!-- Rooms Table -->
      <div class="table-container">
        <table class="admin-table">
          <thead>
            <tr>
              <th>Room No.</th>
              <th>Block</th>
              <th>Floor</th>
              <th>Type</th>
              <th>Facilities</th>
              <th>Price/Month</th>
              <th>Status</th>
              <th>Occupant(s)</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>A-101</td>
              <td>Block A</td>
              <td>1st Floor</td>
              <td>Single AC</td>
              <td>
                <span class="facility-tag"><i class="fas fa-snowflake"></i> AC</span>
                <span class="facility-tag"><i class="fas fa-wifi"></i> WiFi</span>
              </td>
              <td>$250</td>
              <td><span class="badge badge-occupied">Occupied</span></td>
              <td>John Doe</td>
              <td>
                <button class="btn-icon" onclick="openModal('editRoomModal')"><i class="fas fa-edit"></i></button>
                <button class="btn-icon" onclick="openModal('viewRoomModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>A-102</td>
              <td>Block A</td>
              <td>1st Floor</td>
              <td>Double Non-AC</td>
              <td>
                <span class="facility-tag"><i class="fas fa-wifi"></i> WiFi</span>
                <span class="facility-tag"><i class="fas fa-couch"></i> Sofa</span>
              </td>
              <td>$180</td>
              <td><span class="badge badge-vacant">Vacant</span></td>
              <td>-</td>
              <td>
                <button class="btn-icon" onclick="openModal('editRoomModal')"><i class="fas fa-edit"></i></button>
                <button class="btn-icon" onclick="openModal('viewRoomModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>A-103</td>
              <td>Block A</td>
              <td>1st Floor</td>
              <td>Single AC</td>
              <td>
                <span class="facility-tag"><i class="fas fa-snowflake"></i> AC</span>
                <span class="facility-tag"><i class="fas fa-wifi"></i> WiFi</span>
              </td>
              <td>$250</td>
              <td><span class="badge badge-occupied">Occupied</span></td>
              <td>Jane Smith</td>
              <td>
                <button class="btn-icon" onclick="openModal('editRoomModal')"><i class="fas fa-edit"></i></button>
                <button class="btn-icon" onclick="openModal('viewRoomModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>B-101</td>
              <td>Block B</td>
              <td>1st Floor</td>
              <td>Double AC</td>
              <td>
                <span class="facility-tag"><i class="fas fa-snowflake"></i> AC</span>
                <span class="facility-tag"><i class="fas fa-wifi"></i> WiFi</span>
                <span class="facility-tag"><i class="fas fa-tv"></i> TV</span>
              </td>
              <td>$300</td>
              <td><span class="badge badge-maintenance">Maintenance</span></td>
              <td>-</td>
              <td>
                <button class="btn-icon" onclick="openModal('editRoomModal')"><i class="fas fa-edit"></i></button>
                <button class="btn-icon" onclick="openModal('viewRoomModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>B-102</td>
              <td>Block B</td>
              <td>1st Floor</td>
              <td>Single Non-AC</td>
              <td>
                <span class="facility-tag"><i class="fas fa-wifi"></i> WiFi</span>
              </td>
              <td>$150</td>
              <td><span class="badge badge-vacant">Vacant</span></td>
              <td>-</td>
              <td>
                <button class="btn-icon" onclick="openModal('editRoomModal')"><i class="fas fa-edit"></i></button>
                <button class="btn-icon" onclick="openModal('viewRoomModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
            <tr>
              <td>C-101</td>
              <td>Block C</td>
              <td>1st Floor</td>
              <td>Single AC</td>
              <td>
                <span class="facility-tag"><i class="fas fa-snowflake"></i> AC</span>
                <span class="facility-tag"><i class="fas fa-wifi"></i> WiFi</span>
              </td>
              <td>$250</td>
              <td><span class="badge badge-occupied">Occupied</span></td>
              <td>Michael Johnson</td>
              <td>
                <button class="btn-icon" onclick="openModal('editRoomModal')"><i class="fas fa-edit"></i></button>
                <button class="btn-icon" onclick="openModal('viewRoomModal')"><i class="fas fa-eye"></i></button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Pagination -->
      <div class="pagination">
        <button class="btn-page disabled"><i class="fas fa-chevron-left"></i></button>
        <button class="btn-page active">1</button>
        <button class="btn-page">2</button>
        <button class="btn-page">3</button>
        <button class="btn-page">4</button>
        <button class="btn-page"><i class="fas fa-chevron-right"></i></button>
      </div>
    </div>
  </div>

  <!-- Add Room Modal -->
  <div id="addRoomModal" class="modal-backdrop">
    <div class="modal">
      <div class="modal-header">
        <h3>Add New Room</h3>
        <button class="close-btn" onclick="closeModal('addRoomModal')"><i class="fas fa-times"></i></button>
      </div>
      <div class="modal-body">
        <form class="form-grid">
          <div class="form-group">
            <label for="roomNumber" class="form-label">Room Number</label>
            <input type="text" id="roomNumber" class="form-input" placeholder="e.g. A-101">
          </div>
          <div class="form-group">
            <label for="block" class="form-label">Block</label>
            <select id="block" class="form-select">
              <option value="Block A">Block A</option>
              <option value="Block B">Block B</option>
              <option value="Block C">Block C</option>
              <option value="Block D">Block D</option>
            </select>
          </div>
          <div class="form-group">
            <label for="floor" class="form-label">Floor</label>
            <select id="floor" class="form-select">
              <option value="Ground Floor">Ground Floor</option>
              <option value="1st Floor">1st Floor</option>
              <option value="2nd Floor">2nd Floor</option>
              <option value="3rd Floor">3rd Floor</option>
              <option value="4th Floor">4th Floor</option>
            </select>
          </div>
          <div class="form-group">
            <label for="roomType" class="form-label">Room Type</label>
            <select id="roomType" class="form-select">
              <option value="Single AC">Single AC</option>
              <option value="Single Non-AC">Single Non-AC</option>
              <option value="Double AC">Double AC</option>
              <option value="Double Non-AC">Double Non-AC</option>
            </select>
          </div>
          <div class="form-group">
            <label for="price" class="form-label">Price/Month</label>
            <input type="number" id="price" class="form-input" placeholder="e.g. 250">
          </div>
          <div class="form-group">
            <label for="status" class="form-label">Status</label>
            <select id="status" class="form-select">
              <option value="vacant">Vacant</option>
              <option value="occupied">Occupied</option>
              <option value="maintenance">Under Maintenance</option>
            </select>
          </div>
          <div class="form-group span-2">
            <label class="form-label">Facilities</label>
            <div class="checkbox-group">
              <label class="checkbox-label">
                <input type="checkbox" checked> AC
              </label>
              <label class="checkbox-label">
                <input type="checkbox" checked> WiFi
              </label>
              <label class="checkbox-label">
                <input type="checkbox"> TV
              </label>
              <label class="checkbox-label">
                <input type="checkbox"> Refrigerator
              </label>
              <label class="checkbox-label">
                <input type="checkbox"> Sofa
              </label>
              <label class="checkbox-label">
                <input type="checkbox"> Study Table
              </label>
            </div>
          </div>
          <div class="form-group span-2">
            <label for="description" class="form-label">Description</label>
            <textarea id="description" class="form-textarea" placeholder="Enter room description"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-outline" onclick="closeModal('addRoomModal')">Cancel</button>
        <button class="btn btn-primary">Add Room</button>
      </div>
    </div>
  </div>

  <!-- Edit Room Modal -->
  <div id="editRoomModal" class="modal-backdrop">
    <div class="modal">
      <div class="modal-header">
        <h3>Edit Room A-101</h3>
        <button class="close-btn" onclick="closeModal('editRoomModal')"><i class="fas fa-times"></i></button>
      </div>
      <div class="modal-body">
        <form class="form-grid">
          <div class="form-group">
            <label for="editRoomNumber" class="form-label">Room Number</label>
            <input type="text" id="editRoomNumber" class="form-input" value="A-101">
          </div>
          <div class="form-group">
            <label for="editBlock" class="form-label">Block</label>
            <select id="editBlock" class="form-select">
              <option value="Block A" selected>Block A</option>
              <option value="Block B">Block B</option>
              <option value="Block C">Block C</option>
              <option value="Block D">Block D</option>
            </select>
          </div>
          <div class="form-group">
            <label for="editFloor" class="form-label">Floor</label>
            <select id="editFloor" class="form-select">
              <option value="Ground Floor">Ground Floor</option>
              <option value="1st Floor" selected>1st Floor</option>
              <option value="2nd Floor">2nd Floor</option>
              <option value="3rd Floor">3rd Floor</option>
              <option value="4th Floor">4th Floor</option>
            </select>
          </div>
          <div class="form-group">
            <label for="editRoomType" class="form-label">Room Type</label>
            <select id="editRoomType" class="form-select">
              <option value="Single AC" selected>Single AC</option>
              <option value="Single Non-AC">Single Non-AC</option>
              <option value="Double AC">Double AC</option>
              <option value="Double Non-AC">Double Non-AC</option>
            </select>
          </div>
          <div class="form-group">
            <label for="editPrice" class="form-label">Price/Month</label>
            <input type="number" id="editPrice" class="form-input" value="250">
          </div>
          <div class="form-group">
            <label for="editStatus" class="form-label">Status</label>
            <select id="editStatus" class="form-select">
              <option value="vacant">Vacant</option>
              <option value="occupied" selected>Occupied</option>
              <option value="maintenance">Under Maintenance</option>
            </select>
          </div>
          <div class="form-group span-2">
            <label class="form-label">Facilities</label>
            <div class="checkbox-group">
              <label class="checkbox-label">
                <input type="checkbox" checked> AC
              </label>
              <label class="checkbox-label">
                <input type="checkbox" checked> WiFi
              </label>
              <label class="checkbox-label">
                <input type="checkbox"> TV
              </label>
              <label class="checkbox-label">
                <input type="checkbox"> Refrigerator
              </label>
              <label class="checkbox-label">
                <input type="checkbox"> Sofa
              </label>
              <label class="checkbox-label">
                <input type="checkbox" checked> Study Table
              </label>
            </div>
          </div>
          <div class="form-group span-2">
            <label for="editDescription" class="form-label">Description</label>
            <textarea id="editDescription" class="form-textarea">Single AC room with a view of the garden. Includes a comfortable single bed, study table, chair, and wardrobe.</textarea>
          </div>
          <div class="form-group span-2">
            <label for="editOccupant" class="form-label">Occupant</label>
            <input type="text" id="editOccupant" class="form-input" value="John Doe">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-outline" onclick="closeModal('editRoomModal')">Cancel</button>
        <button class="btn btn-primary">Save Changes</button>
      </div>
    </div>
  </div>

  <!-- View Room Modal -->
  <div id="viewRoomModal" class="modal-backdrop">
    <div class="modal">
      <div class="modal-header">
        <h3>Room A-101 Details</h3>
        <button class="close-btn" onclick="closeModal('viewRoomModal')"><i class="fas fa-times"></i></button>
      </div>
      <div class="modal-body">
        <div class="room-details">
          <div class="room-header">
            <div class="room-status">
              <span class="badge badge-occupied">Occupied</span>
            </div>
            <h3>Room A-101 (Single AC)</h3>
            <p>Block A, 1st Floor</p>
          </div>
          
          <div class="room-images">
            <img src="https://via.placeholder.com/600x300" alt="Room Photo" class="room-main-image">
            <div class="room-thumbnails">
              <img src="https://via.placeholder.com/100x100" alt="Room Photo 1" class="room-thumbnail">
              <img src="https://via.placeholder.com/100x100" alt="Room Photo 2" class="room-thumbnail">
              <img src="https://via.placeholder.com/100x100" alt="Room Photo 3" class="room-thumbnail">
            </div>
          </div>
          
          <div class="details-section">
            <h4>Room Information</h4>
            <div class="details-grid">
              <div class="detail-item">
                <span class="label">Room Type</span>
                <span class="value">Single AC</span>
              </div>
              <div class="detail-item">
                <span class="label">Price/Month</span>
                <span class="value">$250</span>
              </div>
              <div class="detail-item">
                <span class="label">Status</span>
                <span class="value">Occupied</span>
              </div>
              <div class="detail-item">
                <span class="label">Floor</span>
                <span class="value">1st Floor</span>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Facilities</h4>
            <div class="facilities-list">
              <div class="facility-item">
                <i class="fas fa-snowflake"></i>
                <span>AC</span>
              </div>
              <div class="facility-item">
                <i class="fas fa-wifi"></i>
                <span>WiFi</span>
              </div>
              <div class="facility-item">
                <i class="fas fa-bath"></i>
                <span>Attached Bathroom</span>
              </div>
              <div class="facility-item">
                <i class="fas fa-desktop"></i>
                <span>Study Table</span>
              </div>
              <div class="facility-item">
                <i class="fas fa-bed"></i>
                <span>Single Bed</span>
              </div>
              <div class="facility-item">
                <i class="fas fa-tshirt"></i>
                <span>Wardrobe</span>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Description</h4>
            <p>Single AC room with a view of the garden. Includes a comfortable single bed, study table, chair, and wardrobe. The room has good natural lighting and ventilation. Regular cleaning service is provided.</p>
          </div>
          
          <div class="details-section">
            <h4>Current Occupant</h4>
            <div class="occupant-details">
              <img src="https://via.placeholder.com/60" alt="Occupant Photo" class="occupant-photo">
              <div>
                <h5>John Doe</h5>
                <p>Student ID: STU12345</p>
                <p>Check-in Date: May 15, 2023</p>
                <p>Contact: +1 234-567-8901</p>
              </div>
            </div>
          </div>
          
          <div class="details-section">
            <h4>Maintenance History</h4>
            <div class="maintenance-history">
              <div class="maintenance-item">
                <div class="maintenance-date">June 10, 2023</div>
                <div class="maintenance-info">
                  <h5>AC Servicing</h5>
                  <p>Regular maintenance of the air conditioner</p>
                </div>
                <span class="badge badge-completed">Completed</span>
              </div>
              <div class="maintenance-item">
                <div class="maintenance-date">April 22, 2023</div>
                <div class="maintenance-info">
                  <h5>Bathroom Plumbing</h5>
                  <p>Fixed leaking tap in the bathroom</p>
                </div>
                <span class="badge badge-completed">Completed</span>
              </div>
              <div class="maintenance-item">
                <div class="maintenance-date">February 15, 2023</div>
                <div class="maintenance-info">
                  <h5>WiFi Router Replacement</h5>
                  <p>Replaced faulty WiFi router</p>
                </div>
                <span class="badge badge-completed">Completed</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-outline" onclick="closeModal('viewRoomModal')">Close</button>
        <button class="btn btn-primary" onclick="closeModal('viewRoomModal'); openModal('editRoomModal');">Edit Room</button>
      </div>
    </div>
  </div>

  <script>
    // Toggle sidebar
    document.getElementById('toggleSidebar').addEventListener('click', function() {
      document.getElementById('sidebar').classList.toggle('sidebar-collapsed');
      document.querySelector('.content').classList.toggle('content-expanded');
    });

    // Tab navigation
    const tabButtons = document.querySelectorAll('.tab-button');
    tabButtons.forEach(button => {
      button.addEventListener('click', function() {
        tabButtons.forEach(btn => btn.classList.remove('active'));
        this.classList.add('active');
      });
    });

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
  

</body>
</html>