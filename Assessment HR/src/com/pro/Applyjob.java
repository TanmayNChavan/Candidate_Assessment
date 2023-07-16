package com.pro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * Servlet implementation class Applyjob
 */
public class Applyjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Applyjob() {
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
		
		String cname=request.getParameter("cname");
		String cemail=request.getParameter("cemail");
		String cpassword=request.getParameter("cpassword");
		String cdob=request.getParameter("cdob");
		String cexperience=request.getParameter("cexperience");
		String cmbno=request.getParameter("cmbno");
		String ccity=request.getParameter("ccity");
		String cgender=request.getParameter("cgender");
		String cselectjob=request.getParameter("cselectjob");
		//String jsalary=request.getParameter("jsalary");
		Values.setCemail(cemail);
		
			Connection con=Dbconnection.connect();
		
		try {
			PreparedStatement pstmt=con.prepareStatement("insert into candidate values(?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, 0);
			pstmt.setInt(2, Values.getJid());
			pstmt.setString(3, cname);
			pstmt.setString(4, cemail);
			pstmt.setString(5, cgender);
			pstmt.setString(6, cdob);
			pstmt.setString(7, cexperience);
			pstmt.setString(8, cmbno);
			pstmt.setString(9, ccity);
			pstmt.setString(10, cpassword);
			pstmt.setString(11, cselectjob);
			
			int i=pstmt.executeUpdate();
			
		    
           // Connection con =Dbconnection.connect();
        	
			if(i>0){
				response.sendRedirect("exam.jsp");
			}
			else{
				response.sendRedirect("404.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		doGet(request, response);
	}

}
