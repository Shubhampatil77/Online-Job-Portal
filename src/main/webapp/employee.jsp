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
					
				</tr>
			</thead>
			<tbody>
				<%
				Connection conn = DBConnect.getConn();
				PreparedStatement ps = conn.prepareStatement("select * from file where shortlist='1' AND employee='1' order by id ASC");
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
				%>
				<tr>
					<th><%=rs.getString("id")%></th>
					<th><%=rs.getString("title")%></th>
					<th scope="row"><%=rs.getString("files")%></th>
					<th scope="row"><%=rs.getString("name")%></th>
					<th scope="row"><%=rs.getString("email")%></th>
					<th><%=rs.getString("qualification")%></th>
					<th><a href="download?files=<%=rs.getString("files") %>" class="btn btn-sm btn-primary">Download</a><br>	</th>
					<th><%=rs.getString("upload_date")%></th>	
						
					
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<%-- 	<%@include file="all_component/footer.jsp" %>
 --%>
</body>
</html>