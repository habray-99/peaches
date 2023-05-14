

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;

import com.databases.*;


public class Filter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Filter() {
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
		response.setContentType("text/html");
        PrintWriter pw=response.getWriter();
        //initializing connections
        java.sql.Statement stmt=null;
        ResultSet rs=null;
        try {
        	DatabasesConnection db= new DatabasesConnection();
			Connection con = db.getConnection();
            stmt = con.createStatement();   
            rs = stmt.executeQuery("select * from products");
            while (rs.next()) {
                pw.print("<br>"+rs.getString("p_name")+", "+rs.getString("p_price"));
            }
        }// End of try block
        catch(Exception e) {e.printStackTrace();}
		doGet(request, response);
	}

}
