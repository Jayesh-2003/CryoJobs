<%@page import="java.util.ArrayList"%>
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
<c:if test="${empty userobj}">
	<c:redirect url="login.jsp"/>
</c:if>
	<%@include file="all_component/navbar.jsp" %>

<%
String loc = request.getParameter("loc");
String cat = request.getParameter("cat");
String msg="";

JobDAO dao = new JobDAO(DBConnect.getConn());
List<Jobs> list=null;
if("lo".equals(loc) && "ca".equals(cat)){
	list = new ArrayList<Jobs>();
	msg="Job Not Available";
}else if("lo".equals(loc) || "ca".equals(cat)){
	list=dao.getJobsORLocationAndCate(cat, loc);
}else{
	list=dao.getJobsAndLocationAndCate(cat, loc);
}
if(list.isEmpty()){
%>
<h4>Job Not Available</h4>
<%
}
if(list != null){
	for(Jobs j : list){

%>

  			
  <!-- job listing -->
  <section class="job-list" id="jobs">
  			
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
        Publish Date:<%=j.getPdate().toString()%>
      </div>
    </div>
    </section>
   <% 
   
	}

}else{
	
%>

<h4><%=msg%></h4>

<% 
}
%>
  
  		

</body>
<style>
	.navbar-menu>a{
		text-decoration:none;}
	body{
    	background: #b4b4ff;}
</style>
</html>