package com.pro;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hrlogin
 */
public class Hrlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hrlogin() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String hemail=request.getParameter("hemail");
		String hpass=request.getParameter("hpass");
		Connection con=Dbconnection.connect();
		try {
			PreparedStatement pstmt=con.prepareStatement("select * from hr where hremail=? and hrpass=?");
			pstmt.setString(1, hemail);
			pstmt.setString(2, hpass);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				Values.setHrid(rs.getInt(1));
				Values.setHrname(rs.getString(2));
				response.sendRedirect("hmenu.jsp");
			}
			else{
				response.sendRedirect("404.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
