<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
   *{
      margin:0;
      padding:0;
      box-sizing:border-box;
   }
   .container{
      width:100%;
      height:100vh;
      
   }
   .container .header{
      display:flex;
      justify-content:right;
      width:100%;
      padding:10px 0px;
      box-shadow:2px 0px 10px grey;
   }
   .header a{
      padding:10px 20px;
      border:none;
      background-color:blue;
      color:white;
      margin-right:50px;
      text-decoration:none;
   }
   .header a:hover{
      background-color:orange;
   }
   .container .section{
      width:100%;
      padding:30px 0px;
   }
   
   .section form{
       width:30%;
       padding:50px 20px;
       margin:auto;
       box-shadow:2px 2px 10px grey;
   }
   form h2{
     text-align:center;
     text-transform:uppercase;
     color:grey;
   }
   form input,button{
      display:block;
      width:100%;
      border:1px solid black;
      padding:10px 10px;    
      outline:none;
      margin-top:20px; 
   }
   form button{
     background-color:blue;
     border:none;
   }
   form button:hover{
     cursor:pointer;
     background-color:orange;
   }
 </style>
</head>
<body>

<%  
  
    // After logout when we go back we get out previous page and after refresh it removes
    // It is not good for security purpose
    // for that (setHeader is used)
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("pragma", "no-cache");
    response.setHeader("Expires", "0");
    
    // Check whether user is logged in OR not
    if(session.getAttribute("email")==null){
    	response.sendRedirect("login.jsp");
    }
    else{
    	  String email=session.getAttribute("email").toString();
    	    String pass=session.getAttribute("pass").toString();
    }    
%><div class="Form">
<div class="container">
     <div class="header">
        <a href="/login/logout">logout</a>
     </div>
     <div class="section">
     
     <form action="/login/passenger" method="get">
         <h2>Get Passenger List</h2>
         <input type="text" name="train_no" placeholder="Enter Train No">
         <input type="text" name="class"  placeholder="Enter Class">
         <button type="submit">Get Passenger List</button>
    </form>
     </div>

</body>
</html>