<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pro.Values" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Add Job</title>
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
                <span class="username"><%=Values.getHrname() %></span>
               <!--  <b class="caret"></b> -->
            </a>
            <ul class="dropdown-menu extended logout">

                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
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
               <!-- <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-user"></i>
                        <span>Admin Login</span>
                    </a>
                    <ul class="sub">
                        <li><a href="addhr.html">Add HR</a></li>
                        <li><a href="form_validation.html">View HR</a></li>
						<li><a href="dropzone.html">Delete HR</a></li>
                    </ul>
                </li>
               
                
               <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-user"></i>
                        <span>HR Login</span>
                    </a>
                    <ul class="sub">
                        <li><a href="">Add Job</a></li>
                        <li><a href="form_validation.html">View Job</a></li> 
						<li><a href="dropzone.html">Delete Job</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-user"></i>
                        <span>Candidate</span>
                    </a>
                   
                </li>  -->
                 <li class="sub-menu">
                    <a href="addjob.html">
                       <!--  <i class="fa fa-user"></i> -->
                        <span>Add Job</span>
                    </a>
                   
                </li>
               <!--  <li class="sub-menu">
                    <a href="viewjob.jsp">
                        <i class="fa fa-user"></i>
                        <span>View Shortlisted Candidates</span>
                    </a> -->
                   
                <!-- </li> -->
                 <!-- <li class="sub-menu">
                    <a href="viewjob.jsp"> -->
                       <!--  <i class="fa fa-user"></i> -->
                        <!-- <span>View Shortlisted Candidates</span>
                    </a>
                   
                </li>       --> -->
                
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading" style="color:purple; font-size:25px">
                            <strong>Add Job Details</strong>
                        </header>
                        <form action="Addjob" method="post">
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1" style="font-size:18px;">Job Title</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" name="jtitle" required placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1" style="font-size:18px;">Job Description</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" name="jdescription" required placeholder="Enter email">
                                </div>
                   
                                 
                                <div class="form-group">
                                 
                                    <label for="exampleInputPassword1" style="font-size:18px;">Salary Range in Lpga</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="jsalary" required placeholder="Password">
                                  
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword1" style="font-size:18px;">Qualities</label>
                                      &nbsp;<input type="radio" value="Openness" name="jqualities">&nbsp;Openness                                   
                                      &nbsp;<input type="radio" value="Conscientiousness" name="jqualities">&nbsp;Conscientiousness                                   
                                      &nbsp;<input type="radio" value="Extroversion" name="jqualities">&nbsp;Extroversion
                                      &nbsp;<input type="radio" value="Agreeableness" name="jqualities">&nbsp;Agreeableness
                                      &nbsp;<input type="radio" value="Neuroticism" name="jqualities">&nbsp;Neuroticism
                                </div>
                                 <div class="form-group">
                                    <label for="exampleInputPassword1" style="font-size:18px;">Experience in Years</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="jexperience" required placeholder="Password">
                                </div>
                                <!-- <div class="form-group">
                                    <label for="exampleInputFile">File input</label>
                                    <input type="file" id="exampleInputFile">
                                    <p class="help-block">Example block-level help text here.</p>
                                </div> -->
                                <!-- <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> Check me out
                                    </label>
                                </div> -->
                                <button type="submit" class="btn btn-info" style="font-size:16px;">Submit</button>
                                </form>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
            

        
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>�All rights reserved | Design by: Tanmay Chavan</a></p>
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
</body>
</html>