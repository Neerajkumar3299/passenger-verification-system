<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.login.model.PassengersModel" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passenger Management System</title>
    <link rel="icon" href="" type="image/icon"> 
    <link rel="stylesheet" href="./css/tc_home_page.css">
    <link rel="stylesheet" href="./css/total_passenger_list.css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/c09bfe400d.js" crossorigin="anonymous"></script>

<style>
    .chart-container {
    width: 50%;
    height: 50%;
    margin: auto;
  }
  
  .verify form input:focus{
  color:black;
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

 System.out.println(session.getAttribute("email"));
 if(session.getAttribute("email")==null){
 	response.sendRedirect("/login");
 }

	 List<PassengersModel> data=(List<PassengersModel>)request.getAttribute("data");
     int count=0;
     for(PassengersModel p:data){
   	  count=count+1;
   	
     }

 

     
 
 %>
    <div class="container1">

        <!-- ---------------------------------------- NAVBAR --------------------------------------------- -->
        <div class="navbar">
            <div class="header">
                <h3>Sort By  </h3>
                <div class="form">
                    <form action="/login/getPassengers">
                        <input type="text" name="train_no" id="train_no" placeholder="Enter train no" style="border:none">
                        <select name="class" id="class" style="border:none">
						 <option value="" disabled selected>Select Class</option>
                          <option value="general">general</option>
                          <option value="S1">S1</option>
                         <option value="S2">S2</option>
                         <option value="S3">S3</option>
						 <option value="S4">S4</option>
						 <option value="S5">S5</option>
						 <option value="S6">S6</option>
						 <option value="AC1">AC1</option>
						 <option value="AC2">AC2</option>
						 <option value="AC3">AC3</option>
                         </select>
                        <button type="submit">Search</button>
                    </form>
                </div>
                <div class="profile">
                    
                   <img src="./image/profile image.png" alt="admin image">
                   <i class="fa-solid fa-caret-down" id="profile-down"></i>
                   <i class="fa-solid fa-caret-up" id="profile-up"></i>
                   <div class="profile-dropdown">
                       <ul>
                      
                           <li><a href="/login/logout">logout</a></li>

                       </ul>
                   </div>
                </div>
            </div>
             
           
        </div>

        <!-- ----------------------------------------- SECTION ----------------------------------------------- -->
        <div class="verify">
            
            <div class="head">
                <i class="fa-solid fa-xmark" id="verify_passenger_cancel"></i>
                <h3>Verify Aadhar card</h3>
            </div>
            <form action="/login/aadhgarVerifiocation">
                <input type="text" name="aadhar_no" id="Aadhar_no" placeholder="Enter Aadhar card no" >
                <button type="submit">Verify</button>
            </form>
        </div>
        <section>

            <!-- ------------------------------------------SLIDER BAR ------------------------------------------------ -->
          


            <!-- ----------------------------------------CONTENT SECTION --------------------- -->
     
            <div class="content-section">

             <div class="passenger-count">
                   <div>
                    <h1>Total Passengers verified by you</h1>
                   </div>
                   
                   <h2 style="border:none"><%=count %></h2>
                  
               </div>
            
              
               <div class="passenger-table">
                   <table>
                     
                       <table class="table table-bordered table-light">
                        <thead>
                          <tr>
                            <th style="text-align:center" scope="col">Name</th>
                            <th style="text-align:center" scope="col">Age</th>
                            <th style="text-align:center" scope="col">Gender</th>
                            <th style="text-align:center" scope="col">Aadhar No</th>
                            <th style="text-align:center" scope="col">Verification Status</th>
                          </tr>
                        </thead>
                        <tbody>
                        <%
                                 if(count!=0){
                                	 for(PassengersModel p:data){
                                		 %>
                                		 <tr>
                                                       <th style="text-align:center" scope="row"><%=p.getName() %></th>
                                                       <td><%=p.getAge() %></td>
                                                       <td><%=p.getGender() %></td>
                                                       <td><%=p.getAadhar() %></td>
                                                       <td><a href="#"><img id="verified" src="./image/check.png" alt=""><span style="display:none"><img id="unverified" src="./image/unverified.png" alt=""></span></a></td>
                                             </tr>
                                		 <% 
                                	 }
                                 }
                        %>
                          
                       
                        
                         
                        </tbody>
                      </table>
                   </table>
               </div>
            
            </div>
        </section>
    </div>

    <script>
        // var doc=document.getElementById("verified");
        // doc.addEventListener("click",()=>{
        //     console.log("Clicked");
        //     console.log(document.getElementsByClassName(".ready"));
        // })
        $(document).ready(function(){
            $("#unverified").click(function(){
                $(".verify").toggle();
            })
            $("#verified").click(function(){
                $(".verify").toggle();
            })
            $("#verify_passenger_cancel").click(function(){
                $(".verify").toggle()
            })
        })
    </script>
    <script src="./js/tc_home.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
     
  
    </body>
</html>