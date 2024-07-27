<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin Page</title>
<%@include file="all_component/all_css.jsp"%>
<style>
.container {
	display: flex;
	justify-content: space-between;
}

.registration-form {
	flex: 1;
	padding: 20px;
	background-color: #fff;
}

.image-container {
	flex: 1;
	background-color: #f0f1f2;
	display: flex;
	align-items: center;
	justify-content: center;
}

.registration-image {
	max-width: 100%; /* Adjust the maximum width as needed */
	max-height: 100%; /* Adjust the maximum height as needed */
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="registration-form">
			<div class="card">
				<div class="card-body">
					<div class="text-center">
						<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
						<h5> Admin Registration</h5>
					</div>
					<c:if test="${not empty succMsg}">
						<h4 class="text-center text-success">${succMsg}</h4>
						<c:remove var="succMsg" />
					</c:if>
					<form action="add_admin" method="post">
						<div class="form-group">
							<label>Enter Full Name</label> <input type="text"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="name">
						</div>
						<div class="form-group">
							<label>Enter Email</label> <input type="email"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="email">
						</div>
						<div class="form-group">
							<label>Enter Location</label> <input type="text"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="address">
						</div>
						<div class="form-group">
							<label>Enter Contact</label> <input type="text"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="contact">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Enter Password</label> <input
								required="required" type="password" class="form-control"
								id="exampleInputPassword1" name="password">
						</div>

						<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
					</form>
				</div>
			</div>
		</div>
		<div class="image-container">
			<img src="img/rec5.jpg" alt="Image" class="registration-image"
				style="width: 100%; height: 90%;">
			<!-- Adjust the width as needed (e.g., 80% in this example) -->
		</div>
	</div>
</body>
</html>
