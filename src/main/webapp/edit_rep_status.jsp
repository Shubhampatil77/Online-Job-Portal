<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.dao.RecuruterDAO"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.User"%>
<%@ page import="com.entity.Recruiter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit JOBS STATUS</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">

	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						RecuruterDAO dao = new RecuruterDAO(DBConnect.getConn());
						Recruiter u = dao.getRecruiterbyid(id);
						%>
						<h5>Edit Jobs</h5>
					</div>
					<form action="edit_status" method="post">
						<div class="form-group">
							<input type="hidden" name="id" required class="form-control"
								value=<%=u.getId()%> readonly>
						</div>
						<div class="form-group">
							<label>Name</label> <input type="text" name="title" required
								class="form-control" value=<%=u.getName()%> readonly>
						</div>
						<div class="form-group">
							<label>E-mail</label> <input type="text" name="title" required
								class="form-control" value=<%=u.getEmail()%> readonly>
						</div>
						<div class="form-row"></div>
						<div class="form-group col-md-4">
							<label>Category</label><select class="form-control" name="role">
								<option class="Active" value="<%=u.getRole()%>">
									<%=u.getRole()%>
								</option>

								<option class="Active" value="Active">Active</option>
								<option class="Inactive" value="Inactive">Inactive</option>
							</select>
						</div>
						<button class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>