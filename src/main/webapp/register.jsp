 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link rel="stylesheet" href="style.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@600&display=swap"
      rel="stylesheet"
    />
    <script src="index.js"></script>
    <title>Register</title>
    <%@include file="all_component/all_css.jsp" %>
    
  </head>
  <body>
    <%@include file="all_component/navbar.jsp" %>
  
 
	
    <div class="container">
      <h3><i class="fa-solid fa-user-plus"></i><br>Registration<br/><br /></h3>
      	<c:if test="${not empty succMsg}">
    		<div class="alert_msg" role="alert">${succMsg}</div>
    		<c:remove var="succMsg"/>
    	</c:if>
      <form action="add_user" name="myForm" onsubmit="return validateForm()" method="post">
        <div class="form-group">
          <br />
          <div class="formdesign" id="name">
            Name: <input type="text" name="fname" placeholder="Enter Your Name"  required><b><span class="formerror"> </span></b>
        </div>
          <div class="formdesign" id="quali">
            Qualification: <input type="text" name="fquali" placeholder="Qualification"  required><b><span class="formerror"> </span></b>
        </div>
        
        <div class="formdesign" id="email">
          Email: <input type="email" name="femail" placeholder="Enter Your Email" required><b><span class="formerror"> </span></b>
      </div>
          <br>

        <div class="formdesign" id="pass">
          Password: <input type="password" name="fpass" required><b><span class="formerror"></span></b>
      </div>

      <div class="formdesign" id="cpass">
          Confirm Password: <input type="password" name="fcpass" required><b><span class="formerror"></span></b>
      </div>
          <button class="btn" id="register">Register</button>

         
        </div>
      </form>
    </div>
    <style>
        .navbar{
            background-color: black;
        }
        .formerror{
          color: red;
          font-size: 9px;
        }
        html{background: linear-gradient(180deg , rgb(9 9 5 / 60%) 0% , rgb(255 255 255 / 50%) 100%), linear-gradient(180deg, rgb(172 172 170 / 65%) 0%, transparent 100%);}
       
  
    </style>
  </body>
</html>
