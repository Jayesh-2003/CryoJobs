<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Jobs</title>

<%@include file="all_component/all_css.jsp" %>
</head>
<body>
<c:if test="${userobj.role ne 'admin' }">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>
	<%@include file="all_component/navbar.jsp" %>
    <div class="container">
    	<c:if test="${not empty succMsg}">
    		<div class="alert_msg" role="alert">${succMsg}</div>
    		<c:remove var="succMsg"/>
    	</c:if>
        <h3><b><i class="fa-solid fa-users"></i><br>Add Jobs</b></h3>
        <br>
        <form action="add_job" method="post">

			<label>Enter Title :</label><br><input type="text" name="title" id="add_title" placeholder="Job Position [Company Name]">
			<br><br>
			<div class="line">
				
				<div class="loc">
				Location : <br>
				<select name="location" id="function" class="filter-select">
					<option value="Bengaluru">Bengaluru</option>
					<option value="Delhi">Delhi</option>
					<option value="Pune">Pune</option>
					<option value="Lucknow">Lucknow</option>
					<option value="Chennai">Chennai</option>
					<option value="Hydrabad">Hydrabad</option>
				</select>
			</div>
			<div class="cat">
				
				Category : <br>
				<select name="category" id="category" class="filter-select">
					<option value="IT">IT</option>
					<option value="Banking">Banking</option>
					<option value="Teacher">Teacher </option>
					<option value="Graphic Designing">Graphic Designing</option>
					<option value="Video Editors">Video Editors</option>
					<option value="Engineer">Engineer</option>
					
				</select>
			</div>
			<div class="stat">
				
				Status : <br>
				<select name="status" id="status" class="filter-select">
					<option value="Active">Active</option>
					<option value="Unactive">Unactive</option>
					
				</select>
			</div>
			
		</div>
		<br>
        Job Discription : <br><textarea name="desc" cols="82" rows="16"></textarea>
		<br><br>
		<button class="btns">Submit</button>
	</form>
		
	</div>
	
</body>
<style>
	#admin_title{
		text-align: center;
		size: 10px;
  	}
  	body{
    	background: #b4b4ff;

  	}
	.container{
		font-family: Arial, Helvetica, sans-serif;
		align-items: center;
		font-size: 16px;
	}
	#add_title{
		display: inline-block;
		width: 100%;
		height:32px;
		border-radius:5px;
	}
	select{
		border-radius: 5px;}
	#location{
		}
	.line{
		display: flex;
		justify-content: space-between;
	}
	.loc{
		display: in-block;}
	.cat{
		display: in-block;}
	.filter-select{
		width: 150px;
		}
	/* #job_dis{
		text-align: left;
		vertical-align:text-top;	
    	display: inline-block;
    	width: 100%;
    	height: 220px;
    	border-radius: 5px;} */
   	.btns{
   	 	margin: -6px 9px;
    	padding: 4px 26px;
    	border: 2px solid rgb(152 152 152 / 98%);
    	border-radius: 30px;
    	font-size: 15px;
    	font-family: "Baloo Bhai 2", cursive;
   		width:120px;
   		color:white;
   		background-color:#a5acff;
   		}
   	.btns:hover{
   		cursor:pointer;
   		background-color: transparent;}
</style>
</html>