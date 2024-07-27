<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.JobDAO"%>

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
	<div class="continer-fluid" style="margin-top: 100px;">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fas fa-user-plus fa-2x" aria-hidden="true"></i>

							<h5>Apply</h5>
						</div>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO dao = new JobDAO(DBConnect.getConn());
						Jobs j = dao.getJobById(id);
						%>
						<form action="add_file" method="post"
							enctype="multipart/form-data">
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
									aria-describedly="emailHelp" name="qualification"
									value="${userobj.qualification }">
							</div>
							<div class="form-group">
								<label>Enter E-mail</lable><input type="email"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emailHelp" name="email"
									value="${userobj.email }">
							</div>
							<div class="form-group">
								<label>Job Post Name</lable><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedly="emaialHelp" name="title"
									value="<%=j.getTitle()%>">
							</div>
							Upload Your Resume Here<input type="file" name="files"><br>
							<br>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 171px;">
		<%@include file="all_component/footer.jsp"%></div>
</body>
</html>