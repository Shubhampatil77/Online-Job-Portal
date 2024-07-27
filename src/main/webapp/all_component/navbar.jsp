<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#" style="font-size: 16px;">Job Portal</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp" style="font-size: 16px;">Home
    <span class="sr-only">(current)</span> 
  <c:if test="${userobj.role eq 'user'}">  
</a></li>
<li class="nav-item active"><a class="nav-link" href="Aboutus.jsp" style="font-size: 16px;">About Us
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="Contactus.jsp" style="font-size: 16px;">Contact Us
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="Services.jsp" style="font-size: 16px;">Services
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="FeedBack.jsp" style="font-size: 16px;">Feedback
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="News.jsp" style="font-size: 16px;">News
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="jobsview.jsp" style="font-size: 16px;">Jobs
    <span class="sr-only">(current)</span>
</a></li>
			</c:if>
	<c:if test="${userobj.role eq null }">
			</a></li>
<li class="nav-item active"><a class="nav-link" href="Aboutus.jsp" style="font-size: 16px;">About Us
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="Contactus.jsp" style="font-size: 16px;">Contact Us
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="Services.jsp" style="font-size: 16px;">Services
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="FeedBack.jsp" style="font-size: 16px;">Feedback
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="News.jsp" style="font-size: 16px;">News
    <span class="sr-only">(current)</span>
</a></li>
<li class="nav-item active"><a class="nav-link" href="jobsview.jsp" style="font-size: 16px;">Jobs
    <span class="sr-only">(current)</span>
</a></li>
			</c:if>
	
			
	



			<c:if test="${userobj.role eq 'admin' }">
			
			
				<li class="nav-item"><a class="nav-link" href="view_job.jsp" style="font-size: 16px;"><i
						class="fa-regular fa-eye"></i>View Job</a></li>
				<li class="nav-item"><a class="nav-link" href="report1.jsp" style="font-size: 16px;"><i
						class="fa-regular fa-eye"></i>Candidate Report</a></li>
				<li class="nav-item"><a class="nav-link" href="report2.jsp" style="font-size: 16px;"><i
						class="fa-regular fa-eye"></i>Recruiter Report</a></li>
				<li class="nav-item"><a class="nav-link" href="dashboard.jsp" style="font-size: 16px;"><i
						class="fa-regular fa-eye"></i>Reports</a></li>
			</c:if>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<c:if test="${userobj.role eq 'admin' }">
			<div class="dropdown">
    <button class="btn btn-light mr-1 dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        More
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="Aboutus.jsp">About Us</a>
        <a class="dropdown-item" href="Contactus.jsp">Contact Us</a>
        <a class="dropdown-item" href="Services.jsp">Services</a>
        <a class="dropdown-item" href="FeedBack.jsp">Feedback</a>
        <a class="dropdown-item" href="News.jsp">News</a>
        <a class="dropdown-item" href="jobsview.jsp">Jobs</a>
    </div>
</div>
				<a href="#" class="btn btn-light mr-1" data-toggle="modal"
					data-target="#exampleModal3"> <i class="fas fa-user"></i>Admin
				</a>
				<a href="Logout" class="btn btn-light"> <i
					class="fas fa-sign-in-alt"></i>Logout
				</a>
			</c:if>
			<c:if test="${userobj.role eq 'user' }">
				<a href="#" class="btn btn-light mr-1" data-toggle="modal"
					data-target="#exampleModal"> <i class="fas fa-user"></i>${userobj.name }</a>
				<a href="Logout" class="btn btn-light"> <i
					class="fas fa-sign-in-alt"></i>Logout
				</a>
			</c:if>
			<c:if test="${recruiterobj.role eq 'Active' }">


	<li class="nav-item d-flex justify-content-center"
					style="color: green;"><a class="nav-link" href="employee.jsp" style="font-size: 16px;"><i
						class="fa-solid"></i>Selected</a></li>
					<li class="nav-item d-flex justify-content-center"
					style="color: green;"><a class="nav-link" href="selected_can.jsp" style="font-size: 16px;"><i
						class="fa-solid"></i>Shortlisted </a></li>
				<li class="nav-item d-flex justify-content-center"
					style="color: green;"><a class="nav-link" href="showfiles.jsp" style="font-size: 16px;"><i
						class="fa-solid"></i>Recived </a></li>
				<li class="nav-item d-flex justify-content-center"
					style="color: green;"><a class="nav-link"
					href="recruiter_view_job.jsp" style="font-size: 16px;"><i class="fa-solid"></i>View
						Job</a></li>
				<li class="nav-item d-flex justify-content-center"
					style="color: green; "><a class="nav-link" href="add_job.jsp" style="font-size: 16px;"><i
						class="fa-solid fa-plus"></i>Post Job</a></li>
						
						<div class="dropdown">
    <button class="btn btn-light mr-1 dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        More
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="Aboutus.jsp">About Us</a>
        <a class="dropdown-item" href="Contactus.jsp">Contact Us</a>
        <a class="dropdown-item" href="Services.jsp">Services</a>
        <a class="dropdown-item" href="FeedBack.jsp">Feedback</a>
        <a class="dropdown-item" href="News.jsp">News</a>
        <a class="dropdown-item" href="jobsview.jsp">Jobs</a>
    </div>
</div>

				<a href="#" class="btn btn-light mr-1" data-toggle="modal"
					data-target="#exampleModal2" style="font-size: 16px;"> <i class="fas fa-user"></i>${recruiterobj.name }</a>
				<a href="Logout" class="btn btn-light" style="font-size: 16px;"> <i
					class="fas fa-sign-in-alt"></i>Logout
				</a>
			</c:if>
			<c:if test="${userobj.role eq null }">

<div class="dropdown">
  <button class="btn btn-light btn-sm mr-1 dropdown-toggle" type="button" id="signupDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Signup
  </button>
  <div class="dropdown-menu " aria-labelledby="signupDropdown">
    <a class="dropdown-item small" href="signup.jsp"><i class="fas fa-users"></i>Candidate Signup</a>
    <a class="dropdown-item small" href="ADD_Recruiter.jsp"><i class="far fa-user-circle"></i> Recruiter Signup</a>
    <a class="dropdown-item small" href="add_admin.jsp"><i class="fas fa-user-tie"></i>Admin Signup</a>
  </div>
	
	<button class="btn btn-light btn-sm mr-1" type="button" aria-expanded="false">
       <a href="login.jsp"><i class="fas fa-sign-in-alt"></i>Login</a>			
  </button>
	</div>
				

			</c:if>
		</form>
	</div>
</nav>

<!-- Modal for Recruter -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${recruiterobj.name }</th>
								</tr>
								<tr>
									<th scope="row">E-mail</th>
									<th>${recruiterobj.email }</th>
								</tr>
								
								<tr>
									<th scope="row">Location</th>
									<th>${recruiterobj.location }</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href="edit_Recuriter_profile.jsp" class="btn btn-primary">Edit</a>
			</div>
		</div>
	</div>
</div>

<!-- Modal for User-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${userobj.name }</th>
								</tr>
								<tr>
									<th scope="row">Qualification</th>
									<th>${userobj.qualification }</th>
								</tr>
								<tr>
									<th scope="row">E-mail</th>
									<th>${userobj.email }</th>
								</tr>
								<tr>
									<th scope="row">City</th>
									<th>${userobj.city }</th>
								</tr>
								<tr>
									<th scope="row">State</th>
									<th>${userobj.state }</th>
								</tr>
								<tr>
									<th scope="row">Phone No</th>
									<th>${userobj.phoneno }</th>
								</tr>
								<tr>
									<th scope="row">Passing Year</th>
									<th>${userobj.pass_year }</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href="edit_profile.jsp" class="btn btn-primary">Edit</a>
			</div>
		</div>
	</div>
</div>


<!-- Admin -->
<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${adminobj.name }</th>
								</tr>
								<tr>
									<th scope="row">E-mail</th>
									<th>${adminobj.email }</th>
								</tr>
								<tr>
									<th scope="row">Address</th>
									<th>${adminobj.address }</th>
								</tr>
								<tr>
									<th scope="row">Contact</th>
									<th>${adminobj.contact }</th>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href="edit_admin_profile.jsp" class="btn btn-primary">Edit</a>
			</div>
		</div>
	</div>
</div>