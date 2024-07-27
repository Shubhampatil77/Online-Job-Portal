<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Recruiter"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.RecuruterDAO"%>
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
		<h3 class="text-center">
			Recruiter Report
			</h2>
			<table class="table" border="2">
				<thead>
					<tr>
						<th>ID</th>
						<th>Recruiter Name</th>
						<th>Recruiter Email</th>
						<th>Status</th>
						<th>Location</th>
						<th>Registration Date</th>

						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<%
				RecuruterDAO dao = new RecuruterDAO(DBConnect.getConn());
				List<Recruiter> list = dao.getAllUsers();
				for (Recruiter re : list) {
					// Assuming this method returns a list of User objects
				%>
				<tbody>
					<tr>
						<td><%=re.getId()%></td>
						<td><%=re.getName()%></td>
						<td><%=re.getEmail()%></td>
						<td><%=re.getRole()%></td>
						<td><%=re.getReg_date()%></td>
						<td><%=re.getLocation()%></td>
						<td><a href="edit_rep_status.jsp?id=<%=re.getId()%>"
							class="btn btn-sm bg-success text-white">Edit</a></td>
						<td><a href="delete_report2?id=<%=re.getId()%>"
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
