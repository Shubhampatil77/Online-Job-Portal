<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit-Profile Page</title>
<%@include file="all_component/all_css.jsp"%>
</head>

<body style="background-color: #f7f7f7;">
	<c:if test="${ empty recruiterobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="continer-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fas fa-user-plus fa-2x" aria-hidden="true"></i>

							<h5>Edit Profile</h5>
						</div>

						<form action="update_profile1" method="post">
							<input type="hidden" name="id" value="${recruiterobj.id }">
							<div class="form-group">
								<label>Enter Full Name</lable><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="name"
									value="${recruiterobj.name }">
							</div>

							<div class="form-group">
								<label>Enter Email</lable><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="email"
									value="${recruiterobj.email }">
							</div>
							<div class="form-group">
								<label>Enter Password</lable><input type="password"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="ps"
									value="${recruiterobj.password}">
							</div>
							<div class="form-group">
								<label hidden>Enter Role</lable><input type="text" required="required"
									class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="role" hidden
									value="${recruiterobj.role }">
							</div>
							<div class="form-group">
								<label>Enter Location</lable><input type="text" required="required"
									class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="location"
									value="${recruiterobj.location }">
							</div>
							
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 50px;">
		<%@include file="all_component/footer.jsp"%></div>
</body>
</html>