<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Candidate Report</title>
<%@ include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@ include file="all_component/navbar.jsp"%>
	<div class="container">
		<h3 class="text-center">Candidate Report</h3>
		<table class="table" border="2">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Qualification</th>
					<th>City</th>
					<th>State</th>
					<th>DOB</th>
					<th>Passing Year</th>
					<th>Gender</th>
					<th>Date</th>
					<th>Delete</th>
				</tr>
			</thead>
			<%
			UserDAO dao = new UserDAO(DBConnect.getConn());
			List<User> list = dao.getAllUsers();
			for (User user : list) {
				// Assuming this method returns a list of User objects
			%>
			<tbody>
				<tr>
					<td><%=user.getId()%></td>
					<td><%=user.getName()%></td>
					<td><%=user.getEmail()%></td>
					<td><%=user.getQualification()%></td>
					<td><%=user.getCity()%></td>
					<td><%=user.getState()%></td>
					<td><%=user.getDob()%></td>
					<td><%=user.getPass_year()%></td>
					<th><%=user.getGender()%></th>
					<td><%=user.getUser_date()%></td>

					<td><a href="delete_report1?id=<%=user.getId()%>"
						class="btn btn-sm bg-danger text-white">Delete</a></td>
				</tr>
			</tbody>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>
