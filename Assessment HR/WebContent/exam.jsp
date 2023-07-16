<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="com.pro.Values" %>
<%@ page import="com.pro.Dbconnection" %>
<%@ page import="java.util.Random" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Test Questions</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
	//int jid=Integer.parseInt(request.getParameter("jid"));
	//int cid=Integer.parseInt(request.getParameter("cid"));
	Connection con = Dbconnection.connect();
	
	
	PreparedStatement pstmt2=con.prepareStatement("select * from candidate where cemail=?");
	pstmt2.setString(1, Values.getCemail());
	ResultSet rs1=pstmt2.executeQuery();
	while(rs1.next()){
		Values.setCid(rs1.getInt(1));
	}
	
	
	
	
	PreparedStatement psmt = con.prepareStatement("select qname from qna where qid=?");
	int qno=1;
	Random rand=new Random();
%>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">

    <a href="index.html" class="logo">
        R3sys
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="nav notify-row" id="top_menu">
    
</div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="images/2.png">
                <span class="username">XYZ</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                
                <li><a href="index.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a href="index.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<form action="calcResult.jsp"method="post">
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      <header class="panel-heading" style="color:purple; font-size:25px">
                            <strong>Test Questions</strong> </header>
    </div>
    
    <div class="row w3-res-tb">
  
    <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            
            <th>No</th>
            <th>Question</th>
<!--             <th>O</th>
            <th>C</th>
            <th>E</th>
            <th>A</th>
            < -->
            <th style="width:30px;"></th>
          </tr>
        </thead>
        	<tbody><%while(qno<16){
        		int qid=rand.nextInt(29) ;
                qid++;
        		psmt.setInt(1, qid);
        		ResultSet rs = psmt.executeQuery();
        		rs.next(); %>
            <tr data-expanded="true">
            <td><%=qno %></td>        
            <td><%=rs.getString(1)%></td>
            <td><input type="radio" id="q<%=qid %>" value="ha" name="q<%=qno %>" required="required"><br>Strongly Disagree</td>
           <td><input type="radio" id="q<%=qid %>" value="a" name="q<%=qno %>" required="required">Disagree</td>
            <%-- <td><input type="radio" value="Neutral" name=count"<%= Integer.toString(count) %>" >Neutral</td>  --%>
            <td><input type="radio" id="q<%=qid %>" value="d" name="q<%=qno %>" required="required">Agree</td>
            <td><input type="radio" id="q<%=qid %>" value="hd" name="q<%=qno %>" required="required"><br>Strongly Agree</td>
             <%qno++; %>
            </tr>
             <%} %>
        	</tbody>
        	
    
        <!-- <tbody>
          <tr>
            
            <td>1</td>
            <td><span class="text-ellipsis"></span></td>
            <td><span class="text-ellipsis"></span></td>
            
          </tr>
          
          
        </tbody> -->
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
        
       <!--  <div class="col-sm-5">
          <small class="text-muted inline m-t-sm m-b-sm">showing 2-13 of 15 items</small>
        </div> -->
        <div style="text-align:center;">
         <button type="submit" class="btn btn-info">Submit</button>
         </div>
         </form>
      </div>
    </footer>
  </div>
</div>
</section>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>© All rights reserved | Design by: Tanmay Chavan</p>
			</div>
		  </div>
  <!-- / footer -->
</section>

<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>