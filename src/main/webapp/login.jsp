<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_component/all_css.jsp"%>
<style>
.container {
	display: flex;
	justify-content: space-between;
}

.login-form {
	flex: 1;
	padding: 20px;
	background-color: #fff;
}

.login-image-container {
	flex: 1;
	background-color: #f0f1f2;
	display: flex;
	align-items: center;
	justify-content: center;
}

.login-image {
	max-width: 100%;
	max-height: 100%;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="login-form">
			<div class="card">
				<div class="card-body">
					<div class="text-center">
						<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
						<h5>Login page</h5>
					</div>
					<c:if test="${not empty succMsg }">
						<h4 class="text-center text-danger">${succMsg}</h4>
						<c:remove var="succMsg" />
					</c:if>
					<form action="Login" method="post">
						<div class="form-group">
							<label>Enter Email</label> <input type="email"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="email">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Enter Password</label> <input
								required="required" type="password" class="form-control"
								id="exampleInputPassword1" name="password">
						</div>
						<button type="submit" value="login"
							class="btn btn-primary badge-pill btn-block">Login</button>
					</form>
				</div>
			</div>
		</div>
		<div class="login-image-container">
			<img src="img/c.jpg" alt="Image" class="login-image">
		</div>
	</div>

</body>
</html>
