<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="com.pro.Dbconnection" %>

<%
	Connection con=Dbconnection.connect();
	int jid=Integer.parseInt(request.getParameter("jid"));
	PreparedStatement pstmt=con.prepareStatement("delete from job where jid=?");
	pstmt.setInt(1, jid);
	int j=pstmt.executeUpdate();
	if(j>0){
		response.sendRedirect("hmenu.jsp");
	}
%>


</body>
</html>