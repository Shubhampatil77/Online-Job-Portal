<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Page</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/j2.png");
	width: 70%;
	height: 90vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid back-img">
		<h1 class="text-black p-4">Welcome Recruiter</h1>

		<!-- Conditionally display content based on the user's role -->
		<c:if test="${recruiterobj.role eq 'Recruiter'}">
		</c:if>

	</div>

</body>
</html>
