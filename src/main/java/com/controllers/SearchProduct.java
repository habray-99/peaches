//package com.controllers;
//
//import com.databases.DatabasesConnection;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//import static java.lang.System.out;
//
///**
// * Servlet implementation class AddProduct
// */
//public class SearchProduct extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public SearchProduct() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			DatabasesConnection dc = new DatabasesConnection();
//			Connection con = dc.getConnection();
//			String searchProduct = request.getParameter("searchProduct");
//			String query = "SELECT * FROM chothings.products WHERE product_name LIKE '%" + searchProduct + "%'";
//			PreparedStatement ps = con.prepareStatement(query);
//			ResultSet rs = ps.executeQuery();
//			PrintWriter out = response.getWriter();
//			while (rs.next()) {
//				out.println("fuk");
//			}
//		} catch (ClassNotFoundException | SQLException e) {
//			throw new RuntimeException(e);
//		}
//		doGet(request, response);
//
//	}
//
//}
