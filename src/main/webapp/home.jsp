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
  .header{
    display:flex;
  align-items:center;
  }
  .header div{
  width:50%;

  dispaly:flex;
  align-items:center;
  justify-content:right;
  }
  .profile div{
  position:inline;
  }
  .profile{
  width:100%;
  }
  .header .profile div{
    margin-right: 20px;
    display:flex;
    justify-content:center;
    align-items:center;
    
}
  .profile-name{
  color:white;
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
   
    }    
    List<PassengersModel> data=(List<PassengersModel>)request.getAttribute("data");
    int count=0;
    for(PassengersModel p:data){
    	count+=1;
    }
%>
    <div class="container1">

        <!-- ---------------------------------------- NAVBAR --------------------------------------------- -->
        <div class="navbar">
            <div class="header">
                
                <div class="profile">
                    <div>
                    <img src="./image/profile image.png" alt="admin image">
                   <i class="fa-solid fa-caret-down" id="profile-down"></i>
                   <i class="fa-solid fa-caret-up" id="profile-up"></i>
                  
                   <div class="profile-dropdown" style="display:none">
                       <ul>
                           <li><a href="#">Profile</a></li>
                           <li><a href="/login/logout">logout</a></li>

                       </ul>
                   </div>
                 
                    </div>
            
                   
                </div>
            </div>
             
           
        </div>

        <!-- ----------------------------------------- SECTION ----------------------------------------------- -->
        <section>

            <!-- ------------------------------------------SLIDER BAR ------------------------------------------------ -->
            <div class="slidebar">

                <div class="icon-bar">
                    <div id="icon-bar-left">
                        <i class="fa-solid fa-arrow-left"></i>
                    </div>
                    <div id="icon-bar-right">
                        <i class="fa-solid fa-arrow-right"></i>
                    </div>
                    <i class="fa-solid fa-left"></i>
                    <div>
                        <i class="fa-solid fa-chart-line"></i>
                    </div>
                    <div>
                        <i class="fa-solid fa-list"></i>
                    </div>
                    <!-- <i class="fa-solid fa-right"></i> -->
                    <!-- <i class="fa-solid fa-chevrons-right"></i> -->
                    
                    <div>
                        <i class="fa-solid fa-chart-line"></i>
                    </div>
                    <div>
                        <i class="fa-solid fa-chart-line"></i>
                    </div>
                  

                </div>
                <div class="link-bar">
                    <div></div>
                    <div>
                        <a href="#"> Dashboard</a>
                    </div>
                  <div>
                    <a href="/login/gettotalpassengerlist"> Total Passenger</a>
                  </div>
                  <div>
                    <a href="/login/getVerifiedPassengers"> Verified Passengers</a>
                  </div>
                   <div>
                    <a href="/login/getUnverifiedPassengers"> Unverfied Passengers</a>
                   </div>
                   
                    
                </div>
            </div>


            <!-- ----------------------------------------CONTENT SECTION --------------------- -->
            <div class="content-section">
                <div class="content-section-row">
                    <div class="content-section-column">
                        <h1>Total Passengers</h1>
                        <div class="count">
                            <h1><%=count %></h1>
                        </div>
                    </div>
                     <div class="content-section-column">
                        <h1>Verified Passengers</h1>
                        <div class="row d-flex justify-content-center mt-100">
                            <div class="col-md-8">
                                <div class="progress blue"> <span class="progress-left"> <span class="progress-bar"></span> </span> <span class="progress-right"> <span class="progress-bar"></span> </span>
                                    <div class="progress-value">90%</div>
                                </div>
                              
                            </div>
                        </div>
                    </div>
                    <div class="content-section-column">
                        <h1>Unverified Passengers</h1>
                        <div class="row d-flex justify-content-center mt-100">
                            <div class="col-md-8">
                                <div class="progress blue"> <span class="progress-left"> <span class="progress-bar" id="unverified"></span> </span> <span class="progress-right"> <span class="progress-bar"></span> </span>
                                    <div class="progress-value">90%</div>
                                </div>
                              
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="content-section-row" style="position:relative">
                    <div class="card chart-container">
                        <canvas id="chart">
                            
                        </canvas>
                      </div>
                </div>
            </div>
        </section>
    </div>

    <script src="./js/tc_home.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
     <script>
        const ctx = document.getElementById("chart").getContext('2d');
        const myChart = new Chart(ctx, {
          type: 'bar',
          data: {
            labels: ["AC", "Sleeper", "General", "Waiting",
            "Without ticket"],
            datasets: [{
              label: 'Passengers Detail',
              backgroundColor: 'rgba(161, 198, 247, 1)',
              borderColor: 'rgb(47, 128, 237)',
              data: [300, 400, 200, 500, 400],
            }]
          },
          options: {
            scales: {
              yAxes: [{
                ticks: {
                  beginAtZero: true,
                }
              }]
            }
          },
        });
  </script>
  
    </body>
</html>