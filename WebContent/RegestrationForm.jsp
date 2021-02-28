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
<%@ include file="navbar_design.jsp"  %>
<main class=" shape d-flex align-items-center bg" style="height:-100vh;padding-bottom:150px;">
	<div class="container">
		<div class="row">
		<div class="col-10 offset-md-1 py-4">
			<div class="card content " style="    min-height:  832px;" >
				<div class="cardheader card-header ">
					<div class="  text-center">
                        <h2 class="py-2 ">Register Here</h2>
                    </div>
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
				<div class="card-body p-0">
					<form id="submitform" action="Reg" method="post">
                            
                            
                                <div class="bg-light pt-5 pb-5 px-5">



                                    <div class="Field mt-3">

<!-- ==========================================Name=======================================================-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="" for="First_Name">First Name</label>
                                                    <div class="input-group mb-3">
                                                        <input type="text" class="form-control" placeholder="First Name"
                                                            id="First_Name" name="First_Name" aria-describedby="emailHelp"
                                                            placeholder="First Name">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="" for="Last_Name">Last Name</label>
                                                    <input type="text" class="form-control" placeholder="Last Name"
                                                       id="Last_Name" name="Last_Name" aria-describedby="emailHelp"
                                                        placeholder="Last Name">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- User Name -->
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="" for="User_Name">User Name</label>
                                                    <div class="input-group mb-3">
                                                        <input type="text" class="form-control" placeholder="User Name"
                                                            id="User_Name" name="User_Name" aria-describedby="emailHelp">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
<!-- ==========================================Name=======================================================-->
<!-- ====================================== DOB & Email=================================================-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="" for="DOB">Date Of Birth</label>
                                                    <div class="input-group mb-3">
                                                        <input type="date" class="form-control"
                                                            placeholder="Date of birth" id="DOB" name="DOB"
                                                            aria-describedby="emailHelp">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="" for="Email">Email</label>
                                                    <div class="input-group mb-3">
                                                        <input type="email" class="form-control" placeholder="Email"
                                                            id="Email" name="Email" aria-describedby="emailHelp">
                                                        

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-6 offset-md-6">
                                                <small id="emailHelp" class="form-text text-muted">We'll never
                                                            share your email with anyone else.</small>

                                            </div>
                                        </div>
                                        
                                        
 <!-- ====================================== Gender =================================================-->  
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <h5 class="text-muted">Gender </h5>
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" class="custom-control-input"
                                                            id="gender" name="gender" value="Male">
                                                        <label class="custom-control-label"
                                                            for="customRadio">Male</label>
                                                        <input type="radio" class=" custom-control-input"
                                                            id="gender" name="gender" value="FeMale">
                                                        <label class=" ml-5 custom-control-label"
                                                            for="customRadio">Female</label>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
 <!-- ====================================== Password =================================================-->   
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="" for="Password">Password</label>
                                                    <div class="input-group mb-3">
                                                        <input type="password" class="form-control"
                                                            placeholder="Password" id="Password" name="Password"
                                                            aria-describedby="emailHelp">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="" for="Confirm_Pass">Confirm password</label>
                                                    <div class="input-group mb-3">
                                                        <input type="password" class="form-control"
                                                            placeholder="Confirm password" id="Confirm_Password" name="Confirm_Password"
                                                            aria-describedby="emailHelp">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <!-- Role -->
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group mb-3">
                                                    <label class="" for="role">Select Role</label>
                                                    <select id="role" name="role" class="custom-select">
                                                        <option selected disabled class="text-muted">Register As
                                                        </option>
                                                        <option value="Student">Student</option>
                                                        <option value="Teacher">Teacher</option>

                                                    </select>
                                                </div>

                                            </div>
                                             <div class=" input-group custom-control custom-checkbox mb-3">
                                                            <input type="checkbox" class="custom-control-input"
                                                                id="customCheck" name="example1">
                                                            <label class="custom-control-label" for="customCheck">Agree
                                                                with tearms and Condition..</label>
                                                        </div>
                                        </div>
                                        <!-- =================== -->

                                        <!-- Student section -->
                                        <fieldset id="StudentAction" style="display: none" class="jumbotron fadeIn">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="" for="Father_Name">Father Name</label>
                                                        <div class="input-group mb-3">
                                                            <input type="text" class="form-control"
                                                                placeholder="Father Name" id="Father_Name" name="Father_Name"
                                                                aria-describedby="emailHelp">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="" for="Mother_Name">Mother Name</label>
                                                        <div class="input-group mb-3">
                                                            <input type="text" class="form-control"
                                                                placeholder="Mother Name" id="Mother_Name" name="Mother_Name"
                                                                aria-describedby="emailHelp">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="" for="Phone_Number">Phone Number</label>
                                                        <div class="input-group mb-3">
                                                            <input type="text" class="form-control" placeholder="+88:"
                                                                id="Phone_Number" name="Phone_Number" aria-describedby="emailHelp">
                                                        </div><br>
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- teacher section -->
                                        <fieldset id="TeacherAction" style="display:none;" class="jumbotron">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="" for="Result">Reasult</label>
                                                        <div class="input-group mb-3">
                                                            <input type="text" class="form-control"
                                                                placeholder="Result Here" id="Result" name="Result"
                                                                aria-describedby="emailHelp">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="" for="Mother_Name">Achivement</label>
                                                        <div class="input-group mb-3">
                                                            <input type="text" class="form-control"
                                                                placeholder="Your Achivement Here" id="achivement" name="achivement"
                                                                aria-describedby="emailHelp">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="" for="experience">Experience</label>
                                                        <select id="experience" name="experience" class="custom-select mb-3">
                                                            <option selected disabled class="text-muted">Experience
                                                            </option>
                                                            <option value="Freasher">Freasher</option>
                                                            <option value="One Year">One year</option>
                                                            <option value="Two year">Two year</option>
                                                            <option value="Three year">Three year</option>
                                                            <option value="More than three">More than three</option>

                                                        </select>
                                                        <br>
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- ============================= -->


                                    </div>
                                    <hr>

                                    <div class="">
                                        <div class="text-center">
                                            <button id="singlebutton" data-dismiss="modal" name="singlebutton"
                                                class="mb-3">Submit</button><br>
                                            <a href="#" class="forgetPassword">Already Registered ?</a>
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
<!-- ================ Modal ====================  -->

        <!-- Registration Modal -->
        <div class="   " id="RegistrationModal" 
             >
            
            <div class=" regbody " role="document">
                <!-- Modal content-->
                <div class="">

                    <div class=" pt-5">
                        
                    </div>
                    


                </div>
            </div>

        </div>

        <!--  -->
    






















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
    <script src="Js/Import.js"></script>
    
    <!-- ===================<script src="Js/main.js"></script>   =============================== -->
</body>
</html>