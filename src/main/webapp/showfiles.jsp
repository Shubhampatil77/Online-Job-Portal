<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Title Here</title>
<%@include file="all_component/all_css.jsp"%>


</head>
<body style="background-color: #f0f1f2;">

	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<h3 class="text-center">Applications Report</h3>
		<form action="selecteduser1" method="post">
		<table class="table" border="2">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Post Name</th>
					<th scope="col">Resume</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Qualification</th>
					<th scope="col">Action</th>
					<th scope="col">Date</th>
					<th scope="col">Status</th>
				</tr>
			</thead>
			<tbody>
				<%
				Connection conn = DBConnect.getConn();
				PreparedStatement ps = conn.prepareStatement("select * from file where shortlist=0  order by id ASC");
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString("id")%></td>
					<td><%=rs.getString("title")%></td>
					<td scope="row"><%=rs.getString("files")%></td>
					<td scope="row"><%=rs.getString("name")%></td>
					<td scope="row"><%=rs.getString("email")%></td>
					<td><%=rs.getString("qualification")%></td>
					<td><a href="download?files=<%=rs.getString("files") %>" class="btn btn-sm btn-primary">Download</a><br></td>
					<td><%=rs.getString("upload_date")%></td>
					<td><input type="checkbox" name="selected" value="<%=rs.getString("id")%>"></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<div style="text-align:center;">
		<button  type="submit" name=Select>Select</button>
		</div>
		</form>
	</div>
	<%-- 	<%@include file="all_component/footer.jsp" %>
 --%>
</body>
</html>
