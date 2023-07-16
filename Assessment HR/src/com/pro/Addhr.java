package com.pro;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Addhr
 */
public class Addhr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addhr() {
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
		
		String hremail=request.getParameter("hremail");
		String hrpass=request.getParameter("hrpass");
		String hrname=request.getParameter("hrname");
		String hrdesignation=request.getParameter("hrdesignation");
		String hrmobno=request.getParameter("hrmobno");
		
		Connection con=Dbconnection.connect();
		
		try {
			PreparedStatement pstmt=con.prepareStatement("insert into hr values(?,?,?,?,?,?)");
			pstmt.setInt(1, 0);
			pstmt.setString(2, hrname);
			pstmt.setString(3, hrmobno);
			pstmt.setString(4, hrdesignation);
			pstmt.setString(5, hremail);
			pstmt.setString(6, hrpass);
			int i=pstmt.executeUpdate();
			if(i>0){
				response.sendRedirect("amenu.jsp");
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
