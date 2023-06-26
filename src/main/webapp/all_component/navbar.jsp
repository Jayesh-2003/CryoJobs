<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_css.jsp" %>
</head>

<body>
	 <!-- navbar -->
  <nav class="navbar">
    <h2 class="navbar-logo"> <a href="index.jsp">CryoJobs</a> 
    
    <!-- jstl code -->
    <c:if test="${userobj.role eq 'admin' }">              
    
    	<a href="add_job.jsp" class="btn" id="admin_btn"> Add Job </a>
    	<a href="view_jobs.jsp" class="btn" id="admin_btn"> View Jobs</a> 
    </c:if> 
    </h2>
    
   	
    <div class="navbar-menu">
      	
       	<a href="login.jsp">Jobs</a>
       	<a href="#companies">Companies</a>
       	
      	<a href="login.jsp" class="btn" id="login"><i class="fa-solid fa-arrow-right-to-bracket"></i> LogIn</a>
		<a href="register.jsp" class="btn" id="signup"><i class="fa-solid fa-user"></i> SignUp </a>
     
	  <%-- <c:if test="${empty userobj}">
      	<a href="login.jsp" class="btn" id="login"><i class="fa-solid fa-arrow-right-to-bracket"></i> LogIn</a>
		<a href="register.jsp" class="btn" id="signup"><i class="fa-solid fa-user"></i> SignUp </a>
      </c:if> --%>
      <%-- <c:if test="${not empty userobj}">
      	<a href="login.jsp" class="btn" id="login"><i class="fa-solid fa-arrow-right-to-bracket"></i> Admin</a>
		<a href="#" class="btn" id="signup"><i class="fa-solid fa-arrow-right-to-bracket"></i> Logout </a>
      </c:if> --%>
      
    </div>
    <div class="menu-toggle">
      <span class="bar"></span>
      <span class="bar"></span>
      <span class="bar"></span>
    </div>
  </nav>
</body>
	<style>
		.navbar-menu>a{
		color:black;
		}
	</style>
</html>