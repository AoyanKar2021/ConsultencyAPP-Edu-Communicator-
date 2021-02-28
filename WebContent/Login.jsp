<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Beans.Message" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

    <link rel="stylesheet" href="CSS/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700|Raleway:100,300,400,500,600,700"
        rel="stylesheet">
        <link rel="stylesheet" href="Css/style.css">

<title>Insert title here</title>
</head>
<body>
<!-- d-flex align-items-center -->

	<%@ include file="navbar_design.jsp"  %>
	<main class=" shape d-flex align-items-center bg" style="height:90vh">
		<div class="container ">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card content " >
				 <div class=" cardheader card-header text-center" style="border:0px;">
  						 <h2 class="">Sign in</h2>
 				 </div>
 				 <%
 				 	Message m=(Message) session.getAttribute("message");
 				 	if(m!=null)
 				 	{
 				 	
 	  				%>
 	  				<div class="alert  alert-dismissible fade show alert-danger m-0" style="border-radius:0px;" role="alert">
 	  					<%= m.getMessageContent() %>
 	  					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
   							 <span aria-hidden="true">&times;</span>
  						</button>
 					</div>
 				<% 	
 					session.removeAttribute("message");
 				 	}
 				 	
 				 %>
 				 
				<div class="card-body p-0" style="border:0px;">
					<form method="post" action="Log" >
                            
                            
                                <div class="  bg-light  p-4">
                                    
            
                                    <div class="Field mt-0">
                                        <div class="form-group">
                                            <input type="email" name="UserName" class="form-control" id="exampleInputEmail1"
                                                aria-describedby="emailHelp" placeholder="User Name">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                                                anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="password" class="form-control" id="exampleInputEmail1"
                                                aria-describedby="emailHelp" placeholder="Password">
                                        </div>
                                    </div>
                                    <hr>
                                    <h5 class="muted">Select Role</h5>
                                    <label class="form-group switch">
                                        <input name="role" type="checkbox">
                                        <span class="slider round"></span>
            
                                    </label>
                                    <small class="role">As a Student</small>
                                    <hr>
                                    <div class="">
                                        <div class="text-center">
                                            <button id="singlebutton" data-dismiss="modal" name="singlebutton" class="mb-3">Sine
                                                in</button><br>
                                            <a href="#" class="forgetPassword">Forget Password ?</a>
                                        </div>
                                    </div>
            
                                </div>
                           
                        </form>
				</div>
				

			</div>
			
			
				</div>
			</div>
		</div>
	</main>









<!-- ================================================== -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="JS/Import.js"></script>
    <!-- ================================================== -->
</body>
</html>