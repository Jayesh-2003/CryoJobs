<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>

<%@include file="all_component/all_css.jsp" %>
</head>
<body>
<c:if test="${userobj.role ne 'admin' }">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>
	<%@include file="all_component/navbar.jsp" %>
    <div class="container">
        <h2 id="admin_title">Welcome Admin</h2><br>
		
    </div>

</body>
<style>
	.btn{
	background-color:blue;}
  	#admin_title{
    	text-align: center;
  	}
  	body{
    	background: #b4b4ff;

  	}
	#admin_btn{
		text-decoration: none;
		margin:3px 3px 3px 3px;
	}
  	
</style>
</html>