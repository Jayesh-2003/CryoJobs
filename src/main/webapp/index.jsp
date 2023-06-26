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
  
      
      

   

  			
  
  			
  
  <!-- join -->
  <section class="join">
    <div class="join-detail">
      <h1 class="section-title">LETS START YOUR NEW JOB WITH US</h1>
      <P>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse, vero?</P>
    </div>
    
  </section>
  <!-- featured company -->
  <div class="wrapper" id="companies">
	<div class="header">Featured Companies</div>
	<div><p> <br><br> Lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati id minima excepturi laboriosam ipsum. Consequuntur ea eos rem molestias voluptate eum, perspiciatis recusandae accusamus aut harum ipsam a iure placeat sunt voluptas veniam quaerat doloribus odio sint quisquam quis Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum totam voluptates voluptas dolore minima nostrum dolorum deleniti illum! Sapiente ipsa unde repudiandae voluptates maxime delectus ipsam consequatur adipisci praesentium similique rerum, saepe odio non aspernatur veniam? Labore officia repellat soluta tempora voluptatum quidem, distinctio ab, dolor doloremque sint necessitatibus cum assumenda? Minus corporis inventore consequatur laboriosam officia sed obcaecati autem, impedit, odio, quidem at rerum saepe? excepturi explicabo dicta ex? Adipisci dolores fugit earum eaque provident exercitationem obcaecati atque nam architecto vero!ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati id minima excepturi laboriosam ipsum. Consequuntur ea eos rem molestias voluptate eum, perspiciatis recusandae accusamus aut harum ipsam a iure placeat sunt voluptas veniam quaerat doloribus odio sint quisquam quis excepturi explicabo dicta ex? Adipisci dolores fugit earum eaque provident exercitationem obcaecati atque nam architecto vero!</p></div>
	<div class="cards_wrap">
		<div class="card_item">
			<div class="card_inner">
				<img src="images/ebay.png">
				<div class="role_name">Ebay</div>
				
				<div class="time"></div>
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				<img src="images/yt.jpg">
				<div class="role_name">You Tube</div>
				
				<div class="time"></div>
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				<img src="images/meta.png">
				<div class="role_name">Meta</div>
				
				<div class="time"></div>
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				<img src="images/isro.png">
				<div class="role_name">ISRO</div>
				
				<div class="time"></div>
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				<img src="images/google.png">
				<div class="role_name">Google</div>
				
				<div class="time"></div>
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				<img src="images/apple.png">
				<div class="role_name">Apple</div>
				
				<div class="time"></div>
			</div>
		</div>
		<div class="card_item">
			<div class="card_inner">
				<img src="images/amazon.png">
				<div class="role_name">Amazon</div>
				
				<div class="time"></div>
			</div>
		</div>
	</div>
</div>  
  
	

</body>
<style>
	.navbar-menu>a{
		text-decoration:none;}
</style>
</html>