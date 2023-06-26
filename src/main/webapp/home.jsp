<%@page import="com.mysql.cj.xdevapi.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CryoJobs-Finding you a job</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp" %>


<!-- header -->
  <header>
    <h1 class="header-title">
      Find <br> <span>PERFECT JOB </span> <br> For you easily
    </h1>
  </header>

  <!-- search -->
  <div class="search-wrapper">
    <div class="search-box">
      <div class="search-card">
     <form action="more_view.jsp" method="get">
        <div class="filter-box">
    <div class="filter-dropdown">
    
      <select name="cat" id="job-function" class="filter-select">
      	<option value="ca" selected>Choose Category...</option>
        <option value="IT">IT</option>
		<option value="Banking">Banking</option>
		<option value="Teacher">Teacher </option>
		<option value="Graphic Designing">Graphic Designing</option>
		<option value="Video Editors">Video Editors</option>
		<option value="Engineer">Engineer</option>

      </select>
 
      <select name="loc" id="location" class="filter-select">
      	<option value="lo" selected>Choose Location...</option>
        <option value="Bengaluru">Bengaluru</option>
		<option value="Delhi">Delhi</option>
		<option value="Pune">Pune</option>
		<option value="Lucknow">Lucknow</option>
		<option value="Chennai">Chennai</option>
		<option value="Hydrabad">Hydrabad</option>
      </select>
      
    </div>
   
      
      

    </div>
        <button class="search-button">Search</button>
        </form>
      </div>
    </div>
  </div>

  <!-- filter -->
  

  			
  <!-- job listing -->
  <section class="job-list" id="jobs">
  			<% 
			JobDAO dao = new JobDAO(DBConnect.getConn());
			List<Jobs> list=dao.getAllJobs();
			for(Jobs j:list)
			{%>
    <div class="job-card">
      <div class="job-name">
        <!-- add image -->
        
        <div class="job-detail">
          
          <h3><%=j.getTitle()%></h3>
          <p><%=j.getDescription() %></p>
        </div>
      </div>
      <div class="job-label">
        <a class="label-a" href="#"><%=j.getLocation()%></a>
        <a class="label-b" href="#"><%=j.getCategory()%></a>
        <a class="label-c" href="#"><%=j.getStatus()%></a>
      </div>
      <div class="job-posted">
        Publish Date:<%=j.getPdate()%>
      </div>
    </div>
    <%}
			%>
  </section>
  		

</body>
<style>
	.navbar-menu>a{
		text-decoration:none;}
</style>
</html>