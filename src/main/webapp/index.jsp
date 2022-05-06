<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Passenger Management system is a system that will help passengers in PNR status checking, 
    Live train tracking and for any other problem like Robbery or theft. This system will also be used by ticket collector for 
    passenger verification">
    <title>Passenger management</title>


    <link rel="icon" href="./image/icon.png" type="image/icon">
    <link rel="stylesheet" href="css/index.css">

    <!-- ----------------------- Bootstrap CSS ----------------- -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/c09bfe400d.js" crossorigin="anonymous"></script>

    <style>
      @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@1,600&family=Roboto&family=Roboto+Condensed:wght@700&family=Source+Code+Pro&display=swap');
      </style>
  </head>
<body>


        <!-- ---------------------- Navbar -------------------------------- -->
<div class="container-part">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
    <div class="container-fluid">
      <a class="navbar-brand"  href="#"><img src="image/icon.png" alt="logo"><h2>PMS System</h2></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="#" id="pnr">PNR Status</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" id="track-train">Track your train</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" id='compaint' role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Complaint
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#" id="robbery">Robebry</a></li>
              <li><a class="dropdown-item" href="#">Other</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link " aria-current="page" href="#about">About</a>
          </li>
        </ul>
        <div class="d-flex">
            <a class="nav-link" id="login-btn" href="login.jsp" style="color:grey">login</a>
          </div>
      </div>
    </div>
  </nav>
<div class="home">
<div class="home-content">
    <h1>Welcome to</h1>
    <h2 ><span id="home-content-span">Passenger</span> Management System</h2>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem itaque fugiat, mollitia incidunt distinctio pariatur dolorem delectus perspiciatis perferendis voluptatum.</p>
    <button type="button"  class="btn btn-dark"><a href="#" id="home-content-btn">PNR Status</a></button>
  </div>



<!----------------------------- ABOUT SECTION ---------------------------------->
<div id="about">
<div class="card" id="card1" style="width: 22rem;">
<img src="image/pnr-status.png" class="card-img-top" alt="...">
<div class="card-body">
  <p class="card-text">This project will help passengers in checking PNR status just need to enter the PNR number and it will display all details of ticket whether it is confirmed or not</p>
</div>
</div>
<div class="card" id="card2" style="width: 22rem;">
<img src="image/icon.png" class="card-img-top" alt="...">
<div class="card-body">
  <p class="card-text">It will help to track live trains in which user just to enter Train no and it will show live location and other stations too..</p>
</div>
</div>
<div class="card" id="card3"  style="width: 22rem;">
<img src="image/robbery.webp" class="card-img-top" alt="...">
<div class="card-body">
  <p class="card-text">Sometimes some accident happen in train like Robbery but given helpline no on ticket doesn't work due to any problem like network issue in that case user can post complaint online. that will be sen to next 4-5 stations as notification so that they can start working</p>
</div>
</div>
</div>

<!--------------------------------- PNR STATUS --------------------------------->
<div class="pnr" id="pnr-status">
<i class="fa-solid fa-xmark" id="pnr-status-cancel"></i>
<h2>Check PNR Status</h2>
<form>
<div class="mb-3">

  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Enter PNR Number">
</div>
<div class="col-12">
  <button type="submit" class="btn btn-primary">Check</button>
</div>
</form>

</div>

<!-- --------------------------------- Track Train section ----------------------------- -->
<div class="pnr" id="track1">
<i class="fa-solid fa-xmark" id="track-train-status"></i>
<h2>Track Your Train</h2>
<form>
<div class="mb-3">

  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Enter PNR Number">
</div>
<div class="col-12">
  <button type="submit" class="btn btn-primary">Check</button>
</div>
</form>

</div>

<!---------------------------------------------- Login Page -------------------------------------->
<!-- <div class="login">
  <a href="login.html">Login</a>
</div> -->
<div class="pnr" id="login">
  <i class="fa-solid fa-xmark" id="login-cancel"></i>
  <img src="image/login.png" alt="">
  <form>
  <div class="mb-3">

    <input type="email" class="form-control" id="email" placeholder="Enter user id">
  </div>
  <div class="mb-3">

    <input type="password" class="form-control" id="password" placeholder="Enter password">
  </div>
  <div class="mb-3">

    <input type="password" class="form-control" id="password2" placeholder="Confirm password">
  </div>
  <div class="mb-3" id="forgot-password">

    <a href="#">forgot password</a>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sing in</button>
  </div>
  </form>
  <h5>OR</h5>
  <div>
    <p>Sign in with</p>
    <div class="social-media">

    </div>
  </div> -->

  
  </div>

<!-- ---------------------------------------- Robbery --------------------------------- -->
<div class="pnr" id="online-complaint">
<i class="fa-solid fa-xmark" id="robbery-cancel"></i>
<h2>Online Complaint</h2>

<form class="row g-3">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Name</label>
    <input type="text" class="form-control" id="Enter your name">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="mobile-no" class="form-label">Mobile Number</label>
    <input type="text" class="form-control" id="mobile-no">
  </div>
  <div class="col-md-6">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  
  <div class="col-md-6">
    <label for="train-name" class="form-label">Train Name</label>
    <input type="text" class="form-control" id="train-name">
  </div>
  <div class="col-md-6">
    <label for="train-no" class="form-label">Train No</label>
    <input type="text" class="form-control" id="train-no">
  </div>
  <div class="col-md-6">
    <label for="travelling-from" class="form-label">Travelling From</label>
    <input type="text" class="form-control" placeholder="Station" id="travelling-from">
  </div>
  <div class="col-md-6">
    <label for="travelling-to" class="form-label">Travelling to</label>
    <input type="text" class="form-control" id="travelling-to">
  </div>
  <div class="form-floating">
    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
    <label for="floatingTextarea2">Please put here your problems</label>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Send</button>
  </div>
</form>
</div>

<!-- ----------------------------------  FOOTER SECTION ----------------------------- -->
<footer class="bg-primary text-white text-center text-lg-start">
<!-- Grid container -->
<div class="container p-4">
<!--Grid row-->
<div class="row">
  <!--Grid column-->
  <div class="col-lg-6 col-md-12 mb-4 mb-md-0" >
    <h5 class="text-uppercase">PROJECT DESCRIPTION</h5>
    <p>
      This website will help the user in PNR status, tracking live trains, in online complaint and will help TC master in passenger verification without using file system.
    </p>
  </div>
  <!--Grid column-->

  <!--Grid column-->
  <div class="col-lg-6 col-md-6 mb-4 mb-md-0" style="text-align: center;">
    <h5 class="text-uppercase">Group Members</h5>

    <ul class="list-unstyled mb-0">
      <li>
        <p>Sonali Rasal</p>
      
      </li>
      <li>
        <p>Rishabh Shukla</p>
      
      </li>
      <li>
        <p>Deepak Singh</p>
      
      </li>
      <li>
        <p>Neeraj Yadav</p>
      
      </li>
     
    </ul>
  </div>
  <!--Grid column-->


  <!--Grid column-->
</div>
<!--Grid row-->
</div>
<!-- Grid container -->

<!-- Copyright -->
<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
© 2022 Copyright:
<a class="text-white" href="#">pms.com</a>
</div>
<!-- Copyright -->
</footer>
</div>
      
    <!-- ------------------------------ Bootstrap JS --------------------------------------- -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
     integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>