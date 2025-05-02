package com.marshmallowhaven.Controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.marshmallowhaven.DAO.AddRoomDAO;
import com.marshmallowhaven.DAO.RegisterDAO;
import com.marshmallowhaven.Model.Room;

/**
 * Servlet implementation class UploadRoomServlet
 */
@WebServlet("/UploadRoomServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadRoomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roomNumber = request.getParameter("roomNumber");
		String roomType = request.getParameter("roomType");
		String floor = request.getParameter("floor");
		String monthlyFee = request.getParameter("monthlyFee");
		String roomStatus = request.getParameter("roomStatus");
		String description = request.getParameter("description");
		int monthlyFeeInt = 0;

		// Facilities can be multiple, use getParameterValues
		String[] facilities = request.getParameterValues("facilities");

		// For file upload, you'll need to use Part (requires multipart/form-data in form)

		
		//read the file/image object from the request
		Part image = request.getPart("roomImage");  //get image from parameter having name as image
		String fileName = image.getSubmittedFileName();  //get the filename from the uploaded file itself
		System.out.println(fileName);
		
		String storePath = request.getServletContext().getRealPath(""); //get path of deployment folder
		String filePath = "photos"+File.separator+fileName;   //prepared file path like photos\fileName.jpg
		System.out.println(storePath);  
		System.out.println(filePath);  
		
		
		try {
		    image.write(storePath+File.separator +filePath); //upload file to selected path
			System.out.println("File uploaded");
     		//TODO: Write respective DAO process to store all attributes and filePath to database
				
		} catch (Exception e) {
			System.out.println("File not uploaded");
		}

		ArrayList<String> addRoomErrors = new ArrayList<>();

		
		if (roomNumber == null || roomNumber.trim().isEmpty()) {
		    addRoomErrors.add("Room number is required.");
		    System.out.println("File not 1234443");
		}

		if (roomType == null) {
		    addRoomErrors.add("Room type is required.");
		}

		if (floor == null ) {
		    addRoomErrors.add("Room floor is required.");
		}

		try {
		    monthlyFeeInt = Integer.parseInt(request.getParameter("monthlyFee"));
		    if (monthlyFeeInt < 1) {
		        addRoomErrors.add("Monthly fee must be greater than or equal to 1.");
		    }
		} catch (NumberFormatException e) {
		    addRoomErrors.add("Monthly fee must be a valid number.");
		    System.out.println("File not 1233");
		  		
		}

		if (roomStatus == null) {
		    addRoomErrors.add("Room status is required.");
		}
		
		if (facilities == null) {
		    addRoomErrors.add("Room facilities is required.");
		}

		if (description == null || description.trim().isEmpty()) {
		    addRoomErrors.add("Room number is required.");
		    System.out.println("File not 1234443");
		}
		
		if (fileName == null || fileName.isEmpty()) {
		    addRoomErrors.add("Room image is required.");
		} else {
		    // Validate file extension
		    String fileNameLower = fileName.toLowerCase();
		    if (!(fileNameLower.endsWith(".jpg") || fileNameLower.endsWith(".png"))) {
		        addRoomErrors.add("Only JPG, JPEG, or PNG image formats are allowed.");
		    }
		} 
		
		
	

		if (addRoomErrors.isEmpty()) {
			
			try {
				
				int capacity;
				String facilitiesStr = "";
				
				for (String facility : facilities) {
			        facilitiesStr += facility + ", ";
			    }
				System.out.println(roomType);
				if (roomType.equals("Single AC") || roomType.equals("Single Non-AC")) {
				    capacity = 1;
				} else {
				    capacity = 2;
				}

				
				AddRoomDAO addroom = new AddRoomDAO();
				
				 System.out.println(facilitiesStr);
		
				Room room = new Room( roomNumber,  roomType,  floor,  monthlyFeeInt,
			             roomStatus,  facilitiesStr,  fileName,  description,  capacity);
				 boolean isRegistered = addroom.addRoom(room);

			        if (isRegistered) {
			        	 request.setAttribute("successMessage", "Room successfully added.");
			        	 request.getRequestDispatcher("/Pages/AdminPages/add-room.jsp").forward(request, response);
			            
			        } else {
			            request.setAttribute("addRoomError", "Add Room failed. Please try again.");
			            request.getRequestDispatcher("/Pages/AdminPages/add-room.jsp").forward(request, response);
			        }
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		   
		} else {
		    request.setAttribute("addRoomErrors", addRoomErrors);
		    request.getRequestDispatcher("/Pages/AdminPages/add-room.jsp").forward(request, response);
		}

	}

}
