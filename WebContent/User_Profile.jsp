	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" Beans.UserTeacherBean" %>
    <%@  page import="Beans.UserStudentBean" %>
    <%@  page import="Beans.PostBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="CSS/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700|Raleway:100,300,400,500,600,700"
        rel="stylesheet">
        <link rel="stylesheet" href="Css/style.css">
</head>
<body>
 <!-- ==========================================================Navigation Section========================================================= -->
    <%
                    
                 
                    	
                    	UserTeacherBean teacher=(UserTeacherBean)session.getAttribute("CurrentTeacher");
                    	
    %> 
                    
                    
                   
                    	
                  
  

<header>
        <nav class="sticky-top navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand -->
            <a class="navbar-brand" href="home.jsp">Logo</a>
            <!-- Navbar Toggoler -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Links -->
            <div class=" w-100 justify-content-end collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                   
 	
                      <a class="nav-link" href="#"><i class="OFScreanIcon fa fa-fw fa-search">
                      
                      </i></a>
                    </li>
                    <li class="nav-item">
                        <a href="#"  data-toggle="modal" data-target="#addpost" 
                        class="btn_Reguler Register_Btn btn">Post</a>
                    </li>
                
                    <!-- Dropdown -->
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Dropdown link
                      </a>
                      <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Link 1</a>
                        <a class="dropdown-item" href="#">Link 2</a>
                        <a class="dropdown-item" href="#">Link 3</a>
                      </div>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="modal" data-target="#exampleModal" href="#"><i class="px-1 fa fa-user-circle-o" aria-hidden="true"></i> <%=teacher.getEmail() %></a>
                    </li>
                     <li class="nav-item">
                        <a href="Logoutt" 
                        class=" Register_Btn btn"><i class="fa fa-sign-out" aria-hidden="true"></i></a>
                    </li>
                  </ul>
            </div>
          </nav>

    </header>
<section>
 	<div class="container-fluid">
 		<div class="row">
 			<div class="col-md-9 jumbotron ">
 				<div class="container ">
 					<div class="row">
 						<div class="col-md-12">
 							<div class="card">
 								<div class="card-header">
 								
 								</div>
 								<div class="card-body">
 								<%PostBean post=(PostBean) session.getAttribute("postValue"); 
 								if(post!=null){
 								%>
 								<h1><%=post.getPost_Title() %></h1>
 								
 								<%   }%>
 								</div>
 							</div>				
 						</div>
 					</div>
 				</div> 	
 			</div>
 			<div class="col-md-3 bg-secondary">
 				 			</div>
 		</div>
 	</div>
 
 </section>



<!-- Modal -->
<div id="exampleModal"  class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <div class="container text-center mt-1" style="display: block;margin-right: 0px;padding-right: 0px;padding-left: 36px;">
        	<img class="bg-light" style="border-radius:50%;max-width: 150px;" src="Img/a.png">
        	<br>
        	
        </div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        
        
      </div>
      <div class="modal-body p-0 m-0">
        <div class="container">
        <div id="profile_Details">
  <table class="table table-borderless table-dark table-hover">
  <thead class="bg-secondary">
   
  </thead>
  <tbody>
   <tr>
      <th >First Name </th>
       <td><%= teacher.getFirstname() %></td>
   <!-- -->  
    </tr>
    <tr>
      <th>Last Name</th>
       <td><%= teacher.getLastname() %></td>
      <!---->
    </tr>
    <tr>
     <th >User Name</th>
      <td><%= teacher.getUsername() %></td>
    </tr>
      <tr>
      <th >Date Of Birth</th>
     <td><%= teacher.getDob() %></td>
    </tr>
    
    <tr>
       <th >Email</th>
      <td><%= teacher.getEmail()%></td>
    </tr>
    <tr>
      <th >Gender</th>
      <td><%= teacher.getGender() %></td>
    </tr>
    
  </tbody>
</table>
</div>
<!-- Edite Profile -->
<div id="editeProfileUpdate" style="display:none;">
	<form action="EditProfileController" method="post">
		<table class="table table-borderless table-dark table-hover">
	<thead class="bg-secondary">
   
  </thead>
	<tbody>
		<tr>
			<th>First Name</th>
			<td>
				<input name="fname" class="form-control" type="text" value="<%= teacher.getFirstname() %>" >
			</td>
		</tr>
		<tr>
			<th>last Name</th>
			<td>
				<input name="lname" class="form-control" type="text" value="<%= teacher.getLastname() %>" >
			</td>
		</tr>
		<tr>
			<th>User Name</th>
			<td>
				<input name="uname" class="form-control" type="text" value="<%= teacher.getUsername() %>" >
			</td>
		</tr>
		<tr>
			<th>Gender</th>
			<td></td>
		</tr>
		<tr>
			<th>Email</th>
			<td><%= teacher.getEmail() %></td>
		</tr>
		<tr>
			<th>Password</th>
			<td><%=teacher.getPassword() %><input class="btn" type="button" value="edit"></td>
		</tr>
		<tr>
			<th>Date Of Birth</th>
			<td><input nae="dob" class="form-control" type="date" value="<%=teacher.getDob() %>" ></td>
		</tr>
		<tr>
			<th>Result</th>
			<td><input nae="dob" class="form-control" type="text" value="<%=teacher.getResult()%>" ></td>
		</tr>
		<tr>
			<th>Achievement</th>
			<td></td>
		</tr>
		<tr>
			<th>Experience</th>
			<td></td>
		</tr>
	</tbody>
	
	
	</table>
	<div class="container-fluied text-center">
		<input class="btn btn-block btn-outline-dark" type="submit" value="SAVE">
	</div>
	</form>
</div>
<!-- Edite Profile end -->
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="profile_Edite_Btn" type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>

<!-- ======================================== Post Modal ==================================================== -->

	<div id="addpost" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-secondary"></div>
				<div class="modal-body">
					<form id="postForm" action="PostController" method="POST">
						<div class="form-group">

							<input type="text" name="postTitle" id="postTitle"
								class="form-control" placeholder=" Title here please..">
						</div>
						<div class="form-group">
							<textarea name="titlecontent" id="titlecontent"
								class="form-control" placeholder="Please write here  "></textarea>
						</div>
						<div class="form-group">
							<textarea name="codeeContent" id="codeeContent"
								class="form-control" placeholder="Please write(code) here  "></textarea>
						</div>
						<div class="file-field big">


							<input name="pics" type="file">

						</div>
						<br>
						<div class="file-field big">


							<input class="btn btn-block btn-info" type="submit" value="Post">

						</div>
				</div>


				</form>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>

	<!-- ======================================== Post Modal ==================================================== -->
    
  </div>
</div>











<script>
	

</script>


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
    <script type="text/javascript" src=""></script>
    
    
    <script>
		$(document).ready(function(e){
			$("#postForm").on("submit",function(e){
				
				e.preventDefault();
				console.log("Submitted");
				let formdata=new FormData(this);
				$.ajax({
					url:"PostDAO",
					type:'POST',
					data:formdata,
					success:function(data,textStatus,jqxh){
						
					}
				error:function(data,textStatus,sfd)
				{
					
				}
				})
			})
		})

</script>
    <!-- ================================================== -->
	<script>
$(document).ready(function(){
	let editStatus=false;
	$("#profile_Edite_Btn").click( function (){
		if(editStatus==false)
			{
				$("#profile_Details").hide();
				$("#editeProfileUpdate").show();
				editStatus=true;
				$("#profile_Edite_Btn").text("Back");
			}
		else{
			$("#profile_Details").show();
			$("#editeProfileUpdate").hide();
			editStatus=false;
			$("#profile_Edite_Btn").text("Edit");
		}
		
		
	});

});

</script>
</body>
</html>