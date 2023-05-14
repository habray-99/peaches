package com.controllers;

import com.databases.DatabasesConnection;
import com.models.CartItem;
import com.models.Products;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class Add2CartDAO
 */
public class Add2CartDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DatabasesConnection dc;
	private Connection conn;
	private Products product;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public Add2CartDAO() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.sendRedirect("product.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int productId = Integer.parseInt(request.getParameter("productId"));
		System.out.println(productId);
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		System.out.println(quantity);
		P_C_Getter pCGetter = new P_C_Getter();
		System.out.println("done ###");
		try {
			product = pCGetter.getProductByID(productId);
		} catch (SQLException | ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
		System.out.println("done 1");
		CartItem cartItem = new CartItem();

		HttpSession session = request.getSession();
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		if (cart == null) {
			cart = new ArrayList<>();
		}
		System.out.println("done 2");
		// Check if the item already exists in the cart
		boolean itemAlreadyInCart = false;
		for (CartItem item : cart) {
			if (item.getProductId() == productId) {
				item.setQuantity(item.getQuantity() + quantity);
				itemAlreadyInCart = true;
				break;
			}
		}

		// If the item does not exist in the cart, add it
		if (!itemAlreadyInCart) {
			cart.add(cartItem);
		}

		session.setAttribute("cart", cart);
		System.out.println("done 3");
		try{
			this.dc = new DatabasesConnection();
			System.out.println("done 7");
			this.conn = this.dc.getConnection();
			System.out.println("done 8");
			Class.forName("com.mysql.cj.jdbc.Driver");
			String query = "select stock from chothings.products where product_ID=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, String.valueOf(productId));
			ResultSet rs  =ps.executeQuery();
			System.out.println("done 4");
//			int newStock = Integer.parseInt(rs.getString("stock"));
			System.out.println("fucking");


//			System.out.println(newStock);
			if (rs.next()) {
				System.out.println("shit");
			    Products products = new Products();
			    products.setStock(Integer.parseInt(rs.getString("stock"))-quantity);
				System.out.println("ass");
			    int newStock = Integer.parseInt(rs.getString("stock"));
			    System.out.println(rs.getString("stock"));
			    System.out.println(newStock);
			    System.out.println(rs);
			}

			

			String query2 = "update chothings.products set stock=? where product_ID=?";
			PreparedStatement ps2 = conn.prepareStatement(query2);
			ps2.setString(1, String.valueOf( 100-quantity));
			ps2.setString(2, String.valueOf(productId));
			ps2.executeQuery();
			System.out.println(ps2);
			System.out.println("done 5");


			String query3 = "insert into chothings.cart (product_ID, quantity, hashing_pw) values (?,?,?)";
			PreparedStatement p3 = conn.prepareStatement(query3);
			p3.setString(1, String.valueOf(productId));
			p3.setString(2, String.valueOf(quantity));
			p3.setString(3, String.valueOf(2));
			p3.executeQuery();
			System.out.println(p3);
			System.out.println("done 6");


		}catch (Exception e){
			e.printStackTrace();
		}

		
		doGet(request, response);
	}
}

