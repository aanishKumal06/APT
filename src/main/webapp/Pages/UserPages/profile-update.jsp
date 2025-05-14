<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Profile</title>
  <link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/global_for_client.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserCss/application.css">
  <style>
   /* Profile Picture Preview */
.profile-pic-preview {
  display: block;
  max-width: 120px;
  max-height: 120px;
  margin-top: 10px;
  border-radius: 50%;
  object-fit: cover;
}

/* Popup Overlay */
.dialog-overlay {
  position: fixed;
  top: 0; left: 0; right: 0; bottom: 0;
  background-color: rgba(0, 0, 0, 0.5);
  display: none;
  align-items: center;
  justify-content: center;
  z-index: 1000;
}

		/* Dialog Box */
		.dialog-box {
		  background-color: #fff;
		  padding: 30px;
		  border-radius: 10px;
		  text-align: center;
		  max-width: 400px;
		  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
		}
		
		.dialog-box h3 {
		  margin-bottom: 15px;
		  color: #155724;
		}
		
		.dialog-box button {
		  margin-top: 20px;
		  padding: 10px 20px;
		  background-color: #155724;
		  color: white;
		  border: none;
		  border-radius: 5px;
		  cursor: pointer;
		}
		
		.dialog-box button:hover {
		  background-color: #0f3f19;
		}
		


  </style>
</head>
<body>

  
  <section class="main-content">
    <div class="container">
      <h1 class="section-title">Hostel Application Form</h1>
      

     
    <div class="form-container">
      <h2>Update Profile</h2>
      <ul style="color: red;">

      </ul>
      <form id="updateProfileForm" enctype="multipart/form-data">
        <div class="form-row">
          <div class="form-group">
            <label for="full_name">Full Name</label>
            <input type="text" id="full_name" name="full_name" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" class="form-control" required>
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="contact_number">Contact Number</label>
            <input type="text" id="contact_number" name="contact_number" class="form-control">
          </div>
        </div>

        <div class="form-row">
          <div class="form-group">
            <label for="gender">Gender</label>
            <select id="gender" name="gender" class="form-control" required>
              <option value="">Select</option>
              <option value="Male">Male</option>
              <option value="Female">Female</option>
              <option value="Other">Other</option>
            </select>
          </div>
          <div class="form-group">
            <label for="date_of_birth">Date of Birth</label>
            <input type="date" id="date_of_birth" name="date_of_birth" class="form-control">
          </div>
        </div>

        <div class="form-group">
          <label for="address">Address</label>
          <textarea id="address" name="address" rows="3" class="form-control"></textarea>
        </div>

        <div class="form-group">
          <label for="profile_image">Profile Image</label>
          <input type="file" id="profile_image" name="profile_image" class="form-control" accept="image/*">
          <img id="preview" class="profile-pic-preview" src="#" alt="Preview" style="display: none;">
        </div>

        <div class="form-group">
          <label for="password">New Password (leave blank to keep current)</label>
          <input type="password" id="password" name="password" class="form-control">
        </div>

        <div class="form-actions">
          <button type="submit" class="btn btn-primary">Cancel </button>
          <button type="reset" class="btn btn-secondary">Update Profile</button>
        </div>
      </form>
    </div>
  </div>

  <!-- Success Dialog -->
  <div class="dialog-overlay" id="successDialog">
    <div class="dialog-box">
      <h3>Profile Updated Successfully!</h3>
      <p>Your changes have been saved.</p>
      <button onclick="closeDialog()">Close</button>
    </div>
  </div>
</section>
  <script>
    // Image preview
    

    // Show success dialog on form submission (fake submit)
    document.getElementById('updateProfileForm').addEventListener('submit', function (e) {
      e.preventDefault(); // prevent real submission

      // Simulate success
      setTimeout(() => {
        document.getElementById('successDialog').style.display = 'flex';
      }, 500);
    });

    // Close dialog and redirect
    function closeDialog() {
      window.location.href = "profile.html"; // Change to your actual profile page
    }
  </script>
</body>
</html>

