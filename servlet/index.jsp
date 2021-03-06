<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <title>SIGNUP/SIGNIN</title>
      
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet"  href="style.css" />
  </head>
  <body>
    <div class="maindiv">
       <br>                
        <p  class="error">
        <% 
         String msg=(String)request.getAttribute("ErrorMessage");
        if(msg != null)
        {
        %>
          <%=msg %>
       <%   
        }
      %>
       <%
         String message=(String)request.getAttribute("logininvalid");
        if(message != null)
        {
        %> 
          <%=message %>
        <%
        }
      %>
      <%
        String invalidnum=(String)request.getAttribute("invalidnumber"); 
        if(invalidnum!=null)
        {
            %> 
              <%=invalidnum %>
            <%
            }

      %>
      
      </p>
        
       <div class="innerdiv">
       <ul>
         <li><a data-toggle="tab" href="#signup">SIGN UP</a></li>
         <li><a data-toggle="tab" href="#signin">SIGN IN</a></li>
       </ul>
       <br>
        <div class="tab-content">
    <div id="signup" class="tab-pane fade in active">
      <h3>SIGNUP</h3>
      <br>
    <form method="post" action="Registration"> 
          <div class="form-group">
            <input type="text" id="name" placeholder="Name*" required name="name">
         </div>
          <div class="form-group">
        
            <input type="email" id="email" placeholder="Email*" required name="email">
         </div>
         <div class="form-group">
           
            <input type="tel" pattern="[789][0-9]{9}" title="Please Enter valid Mobile number" id="mobilenumber" placeholder="Mobile Number" name="mobilenumber">
         </div>
         <div class="form-group">
             
            <input type="text" id="address" placeholder="Address" name="address">
         </div>
     <div class="form-group">
         <input type="password"  id="password" placeholder="Password*" required name="password">
      </div>
      
      <div class="form-group">
       <!-- <input type="submit" value="SIGNUP" class="buttons" id="register">--> 
       <button type="submit"  class="btn buttons">SIGNUP</button>
        <button type="reset"  class="btn buttons" >CLEAR</button>
      </div>
       </form>
    </div>
    <div id="signin" class="tab-pane fade">
      <h3>SIGNIN</h3>
      <br>
        <form method="post" action="Login">   
          <div class="form-group">
            <input type="email" id="username" placeholder="Email*" required name="username">
         </div>
     <div class="form-group">
     <input type="password"  id="loginpassword" placeholder="Password*" required name="password">
      </div>
            <div class="form-group">
        <button type="submit"  class="btn buttons">SIGNIN</button> 
        <button type="reset"  class="btn buttons" >CLEAR</button>
      </div>
       </form>
    </div>
  </div>
  </div>
    </div>
    <br>
   <div class="footer-copyright py-3 text-center">
       <%
         out.println(application.getInitParameter("copyrights"));
       %>
   </div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	 			 	
  
  </body>
</html>