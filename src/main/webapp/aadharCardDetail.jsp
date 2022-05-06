<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.login.model.AadharModel" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aadhar Card Details</title>
    <link rel="icon" href="" type="image/icon">
    <link rel="stylesheet" href="./css/aadhar.css">
    <style>
       .verify{
       margin:10px 0px;
    
         display:flex;
         justify-content:space-around;   
       
       }
       .verify a{
           border:2px solid green;
           padding:8px 20px;
           text-decoration:none;
           color:white;
           background-color:#002D62;
           border:none;
            
           
       }
       .verify a:hover{
           cursor:pointer;
           background-color:#041E42;
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
    
    AadharModel data=new AadharModel();
    data=(AadharModel)request.getAttribute("aadharCardDetail");
    %>
    <div class="container">
        <div class="aadhar">
            <div class="status">
            <%if(data!=null){
            	%>
            	 <img id="verified" src="./image/check.png" alt="">
            	<% 
            	}
            	else{
            	%>
            	<img id="unverified" src="./image/unverified.png" alt="">
            	<% 
            	}%>
            
               
                
                <%if(data!=null){
                	%>
                	<h1 id="exist"><%=data.getAadhar() %> 
                	<%
                	out.print("Exist");
                	}
                else{
                   out.print("Not Exist");
                }%></h1>

            </div>
            <div class="detail">
            <%
             if(data!=null){
            	 
            	 %>
            	 <div class="group-detail">
                    <h3>Name</h3>
                    <p><%=data.getName() %></p>
                </div>
                <div class="group-detail">
                    <h3>Gender</h3>
                    <p><%=data.getGender() %></p>
                </div>
                <div class="group-detail">
                    <h3>DOB</h3>
                    <p><%=data.getDOB() %></p>
                </div>
                <div class="group-detail">
                    <h3>Age</h3>
                    <p><%=data.getAge() %></p>
                </div>
                <div class="group-detail">
                    <h3>Address</h3>
                    <p><%=data.getAddress() %></p>
                </div>
                <div class="group-detail">
                    <h3>State</h3>
                    <p><%=data.getState() %></p>
              
                </div>
                
            </div>
            <div class="verify">
                 <a href="/login/tc/verifyPassenger?aadhar_no=<%=data.getAadhar() %>">Verify</a>
                 <a href="/login/tc/unverifyPassenger?aadhar_no=<%=data.getAadhar() %>">Unverify</a>
            </div>
            	 <% 
             }else{
            	 
            	 %>
            	  <h2>Aadhar card not exist</h2>
            	 <%
             }
            %>
                
        </div>
        
    </div>
</body>
</html>