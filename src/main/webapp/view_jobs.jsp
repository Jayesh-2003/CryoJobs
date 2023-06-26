<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: View Jobs</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color: #b4b4ff;">
<c:if test="${userobj.role ne 'admin' }">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>
	<%@include file="all_component/navbar.jsp" %>
<c:if test="${not empty succMsg}">
    <div class="alert_msg" role="alert">${succMsg}</div>
	<c:remove var="succMsg"/>
</c:if>
			<% 
			JobDAO dao = new JobDAO(DBConnect.getConn());
			List<Jobs> list=dao.getAllJobs();
			for(Jobs j:list){
			%>		
			<section class="job-list" id="jobs">
			
        <div class="job-card">
            
          <div class="job-name">
            <!-- add image -->
          
            <div class="job-detail">
              <%-- <h4><%=j.getTitle() %></h4> --%>
              <h3><%=j.getTitle()%></h3> <br><br>
              <p><%=j.getDescription() %></p>
            </div>
          </div>
         
          <h4>Publish Date:<%=j.getPdate()%></h4>
         
		
        </div>
		
        <div class="filter">
            <input type="text" name="" class="readonly" id="" value="Location:<%=j.getLocation()%>"readonly>
            <input type="text" name="" class="readonly"id="" value="Category:<%=j.getCategory()%>"readonly>
            <input type="text" name="" class="readonly" id="" value="Status:<%=j.getStatus()%>"readonly>
          </div>
          <br>
          
        <a class="btn" id="edit" href="edit_job.jsp?id=<%=j.getId()%>">Edit</a> 
        <%-- <a class="btn" id="delete"href="delete?id=<%=j.getId()%>">Delete</a> --%>
        
    
    
  </section>
				
			<%}
			%>
         
    

</body>


<style>

#edit{
	text-decoration:none;
	border-radius: 5px;
    margin: 0 18px;
    background-color: green;
}
#edit:hover{
    background-color: rgb(144, 255, 144);
}
#delete{
	text-decoration:none;
	border-radius: 5px;
    background-color: red;
}
#delete:hover{
    background-color: rgb(255, 105, 105);
}
.filter{
    display: flex;
    margin: 0 14vh;
    width: 76%;
    justify-content: space-between;
}
.readonly{
	width: 200px;
    height: 34px;
    border-radius: 5px;}
h3{
	color:#832a3a;
	}
.job-card{
	margin:-1rem;}
</style>


<script>

</script>
</html>