package com.marshmallowhaven.Controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 * Servlet implementation class UploadPhotoServlet
 */
@WebServlet("/UploadPhotoServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50) // 50MB

public class UploadPhotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadPhotoServlet() {
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
		//read the file/image object from the request
		Part image = request.getPart("image");  //get image from parameter having name as image
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

		
		String displayPath = request.getContextPath()+File.separator+filePath; //to use in jsp we can just add context to filePath from above
		System.out.println(displayPath);
		//handle the image display through jsp as per requirement
		request.setAttribute("path", displayPath);
		RequestDispatcher rd = request.getRequestDispatcher("/photos.jsp");
		rd.forward(request, response);

		
	}

}
