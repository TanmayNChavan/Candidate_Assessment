package com.pro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 * Servlet implementation class Addjob
 */
public class Addjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addjob() {
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
		String jtitle=request.getParameter("jtitle");
		String jdescription=request.getParameter("jdescription");
		String jsalary=request.getParameter("jsalary");
		String jqualities=request.getParameter("jqualities");
		String jexperience=request.getParameter("jexperience");
		int id=0;
		
		Connection con=Dbconnection.connect();
		
		try {
			PreparedStatement pstmt=con.prepareStatement("insert into job values(?,?,?,?,?,?,?)");
			pstmt.setInt(1, id);
			pstmt.setInt(2, Values.getHrid());
			pstmt.setString(3, jtitle);
			pstmt.setString(4, jdescription);
			pstmt.setString(5, jsalary);
			pstmt.setString(6, jqualities);
			pstmt.setString(7, jexperience);
			
			int i=pstmt.executeUpdate();
			if(i>0){
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
