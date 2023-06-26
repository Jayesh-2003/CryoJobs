<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link
      href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@600&display=swap"
      rel="stylesheet"
    />
    <title>Login</title>
    <%@include file="all_component/all_css.jsp" %>
   
    

  </head>
  <body>
 
  <%@include file="all_component/navbar.jsp" %>
   
  	
  	<div class="container">
      <h3><i class="fa-solid fa-user-plus"></i><br>Log In<br /><br /></h3>
      <form action="login" method="post">
        <div class="form-group">
        Email Id :
          <input
            type="email"
            name="email"
            id=""
            placeholder="Enter your Email"
          />
          <br>
        Password : 
            <input type="password" name="password" id="">

          <button class="btn" id="register">Login</button>
		
        
        </div>
        <a href="register.jsp" class="already_reg" id="already_reg"> New registration </a>
      </form>
    </div>
   <style>
        .navbar{
            background-color: black;
        }
        html{background: linear-gradient(180deg , rgb(9 9 5 / 60%) 0% , rgb(255 255 255 / 50%) 100%), linear-gradient(180deg, rgb(172 172 170 / 65%) 0%, transparent 100%);}
       
  
    </style>
  </body>
</html>
