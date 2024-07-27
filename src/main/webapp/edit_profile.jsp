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
	<c:if test="${ empty userobj }">
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

						<form action="update_profile" method="post">
							<input type="hidden" name="id" value="${userobj.id }">
							<div class="form-group">
								<label>Enter Full Name</lable><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="name"
									value="${userobj.name }">
							</div>

							<div class="form-group">
								<label>Enter Qualification</lable><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="qua"
									value="${userobj.qualification }">
							</div>
							<div class="form-group">
								<label>Enter E-mail</lable><input type="email"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="email"
									value="${userobj.email }">
							</div>
							<div class="form-group">
								<label>Enter City</lable><input type="text" required="required"
									class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="city"
									value="${userobj.city }">
							</div>
							<div class="form-group">
								<label>Enter State</label> <select name="state"
									required="required" class="custom-select"
									id="inlineFormCustomSelectPref">
									<option selected value="${userobj.state }">${userobj.state }</option>
									<option value="Odisha">Odisha</option>
									<option value="Hydrabad">Hydrabad</option>
									<option value="Maharashtra">Maharashtra</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Gujurat">Gujurat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
									<option value="Banglore">Banglore</option>
									<option value="chennai">chennai</option>
									<option value="Hydrabad">Hydrabad</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Kolkata">Kolkata</option>
									<option value="Pune">Pune</option>
									<option value="Jaipur">Jaipur</option>
									<option value="Chandigarh">Chandigarh</option>
									<option value="Lucknow">Lucknow</option>
									<option value="Ahmedabad">Ahmedabad</option>
									<option value="Coimbatore">Coimbatore</option>
								</select>
							</div>
							<div class="form-group">
								<label>Enter Phone No</lable><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="phoneno"
									value="${userobj.phoneno }">
							</div>
							<div class="form-group">
								<label>Enter Gender</label> <select class="form-control"
									required="required" id="exampleInputEmail" name="gender">
									<option selected value="${userobj.gender }">${userobj.gender }</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</select>
							</div>
							<div class="form-group">
								<label>Enter Passing Year</lable><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="pass_year"
									value="${userobj.pass_year }">
							</div>
							<div class="form-group">
								<label>Enter DOB</lable><input type="date" required="required"
									class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="dob" value="${userobj.dob }">
							</div>
							<div class="form-group">
								<label>Enter Passsword</lable><input type="password"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="ps"
									value="${userobj.password}">
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