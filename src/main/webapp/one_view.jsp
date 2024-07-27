<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.JobDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User : Single JOB</title>
<%@include file="all_component/all_css.jsp"%>
</head>

<body style="background-color: #f0f1f2;">

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<%
				int id = Integer.parseInt(request.getParameter("id"));
				JobDAO dao = new JobDAO(DBConnect.getConn());
				Jobs j = dao.getJobById(id);
				%>
				<div class="card mt-5">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>


						<h6><%=j.getTitle()%>
						</h6>
						<p><%=j.getDescription()%>.
						</p>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="Location: <%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="Category :<%=j.getCategory()%>" readonly>

							</div>

							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value=" Status: <%=j.getStatus()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="Experience : <%=j.getExperience()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="Salary : <%=j.getSalary()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="Vacancy : <%=j.getVacancy()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control-sm"
									value="Job Type : <%=j.getJob_type()%>" readonly>
							</div>
							
							
						</div>
						<h6>
							Publish Date:
							<%=j.getPdate().toString()%></h6>
						<div class="text-center">
							<a href="fileupload.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white">Apply Now </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- 
	<!-- Modal -->
	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="card">
						<div class="card-body">
							<div class="text-center text-primary">
								<i class="fas fa-user-circle fa-3x"></i>
							</div>
							<table class="table">
								<tbody>
									<tr>
										<th scope="row">Name</th>
										<th>${userobj.name }</th>
									</tr>
									<tr>
										<th scope="row">Qualification</th>
										<th>${userobj.qualification }</th>
									</tr>
									<tr>
										<th scope="row">E-mail</th>
										<th>${userobj.email }</th>
									</tr>
								</tbody>
							</table>
							<form action="upload" method="post">
								<b>Upload Your Resume Here<input type="file" name="files"></b>
								<b>Remark <input type="text" name="remark"
									class="form-control"></b>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="one_view.jsp" class="btn btn-primary">Submit</a>
				</div>
				</form>
			</div>
		</div>
	</div> --%>
</body>
</html>