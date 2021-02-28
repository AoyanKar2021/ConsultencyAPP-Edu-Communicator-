<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="Css/b.css">
  
  <script src="Js/profile.js"></script>
</head>
<body>
     <div id="mynav" class="overlay ">
        <a href="#" class="Postclosebtn" >&times;</a>
        <div class="jumbotron overlay-content">
            
            <form action="">
                <div class="form-group">
                  <label for="email">Post Title</label>
                  <input type="email" class="form-control" placeholder="Enter email" id="email">
                </div>
                <div class="form-group">
                  <label for="pwd">Password:</label>
                  <textarea class="form-control"></textarea><br><br>
                  <div class="custom-file">
                    <input type="file" class="" id="customFile" value="up">
                   <label class="custom-file-label" for="customFile">Choose file</label> 
                  </div>
                </div>
                <div class="form-group form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox"> Remember me
                  </label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
          </div>
    </div> 
 <section>
   
    <div class="rapper ">
        
        <div class="OFScrean">
            <a class="close nav-link bg-dark" href="#">&times;</a> 
            
            
           <!--  <div class="searchSection">
               <input id="search" type="search" placeholder="Search" class="form-control">
            </div> -->
            
           <div class="listItem">
           <span>
           Aoyan Kar
           </span>
            <ul class="navbar-nav">
            	<li class="nav-item mm-listitem">
                  <a href="#"><i class=" OFScreanIcon fa fa-fw fa-user"></i><p>Profile</p><br><p>hii</p></a>
                  
                </li><hr>
                <li class="nav-item mm-listitem">
                  <a class="active" href="#"><i  class="OFScreanIcon fa fa-fw fa-home"></i> <p>Home</p> </a>
                </li>
                <hr>
                <li class="nav-item mm-listitem">
                  <a href="#"><i class="OFScreanIcon fa fa-fw fa-search"></i><p>Notification</p></a> 
                   
                </li>
                <hr>
                <li class="nav-item mm-listitem">
                  <a href="#"><i class=" OFScreanIcon fa fa-fw fa-envelope"></i><p>Document</p></a> 
                </li><hr>
                <li class="nav-item mm-listitem">
                  <a href="#"><i class=" OFScreanIcon fa fa-fw fa-user"></i><p>Profile</p></a>
                </li><hr>
              </ul>
           </div>
        </div>
        <div   class="MainContent shape ">
            <a class="open nav-link bg-dark" href="#">&#9776;</a> 
            <br><br>
            <br>
            <input class="btn" id="post" type="submit" value="Post">
          	<br><br><br><br>
          	<h1 class="display-3">title</h1>
        </div>
       
        
    </div>
 </section>
  <!-- Post Section -->
 <section>
 	<div class="container">
 		<div class="row">
 			<div class="col-md-4 bg-info">
 				<p> asdfgasdfg</p>
 			</div>
 			<div class="col-md-8 bg-secondary">
 				<p> asdfgasdfg</p>
 			</div>
 		</div>
 	</div>
 
 </section>

<!-- Navigation Section -->
<!-- ======================================================================== -->
          



   
    <!-- //<script src="Js/main.js"></script> -->
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
</body>
</html>

