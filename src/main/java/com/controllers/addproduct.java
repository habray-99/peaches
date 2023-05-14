package com.controllers;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Optional;

import com.databases.DatabasesConnection;
import com.informatics.databaseconnection.databaseconnection;

import static java.lang.String.valueOf;

/**
 * Servlet implementation class AddProductDAO
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
maxFileSize  = 1024 * 1024 * 1000, // 1 GB
maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB
@WebServlet("/addproduct")
public class addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DatabasesConnection dc;
	private Connection conn;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public addproduct() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

 		int p_price = Integer.parseInt(request.getParameter("p_price"));
		int stock = Integer.parseInt(request.getParameter("stock"));
		int pc_id = Integer.parseInt(request.getParameter("pc_id"));
		Part filePart = request.getPart("image");
		String fileName = filePart.getSubmittedFileName();
		InputStream fileContent = filePart.getInputStream();
		// Save the file to disk
		File file = new File("C:/Users/dipes/eclipse-web/coursework/src/main/webapp" + fileName);
		OutputStream out = new FileOutputStream(file);
		int read = 0;
		byte[] bytes = new byte[1024];
		while ((read = fileContent.read(bytes)) != -1) {
			out.write(bytes, 0, read);
		}
		out.close();
		fileContent.close();
	 
		String q = "INSERT INTO `products` (`p_ID`, `p_name`, `p_price`, `p_desc`, `stock`, `photo`, `pc_id`) VALUES (NULL, ?, ?, ?, ?, ?, ?);";
		try {
		 
			Class.forName("com.mysql.cj.jdbc.Driver");
			DatabasesConnection d = new DatabasesConnection();
			Connection c = d.getConnection();
			PreparedStatement ps = c.prepareStatement(q);
			ps.setString(1, request.getParameter("p_name"));
			ps.setInt(2,p_price);
			ps.setString(3, request.getParameter("product-description"));
			ps.setInt(4, stock);
			ps.setString(5, "C:/Users/dipes/eclipse-web/coursework/src/main/webapp" + fileName);

			ps.setString(6, valueOf(pc_id));
			ps.execute();
		} catch (SQLException | ClassNotFoundException e) {		
			e.printStackTrace();
		}
		response.sendRedirect("http://localhost:8080/coursework/adminpanel.jsp");  
		
		
	}

}