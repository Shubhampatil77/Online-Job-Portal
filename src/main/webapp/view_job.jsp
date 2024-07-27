<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="java.util.List"%>
<%@ page import="com.entity.Jobs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: view job</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Job</h5>
				<c:if test="${not empty succMsg }">
					<div class="alert alert-success" role="alert">${ succMsg}</div>
					<c:remove var="succMsg" />
				</c:if>
				<div class="card">
					<div class="card-body">
						<form class="form-inline" action="more_view_date.jsp" method="get">
							<div class="form-group col-md-5 mt-1">
								<h5>Start Date</h5>
							</div>

							<div class="form-group col-md-4 mt-1">

								<h5>End Date</h5>
							</div>

							<div class="form-group col-md-5">
								<input type="date"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="startdate">
							</div>

							<div class="form-group col-md-5">
								<input type="date"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="enddate">
							</div>
							<button class=btn btn-success>Submit</button>
						</form>
					</div>
				</div>
				<%
				JobDAO dao = new JobDAO(DBConnect.getConn());
				List<Jobs> list = dao.getAllJobs();
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fa fa-clipboard fa-2x"></i>
						</div>
						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control from-control-sm"
									value="Location :<%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category :<%=j.getCategory()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control from-control-sm"
									value="Status :<%=j.getStatus()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control from-control-sm"
									value="Vacancy :<%=j.getVacancy()%>" readonly>
							</div>

							<div class="form-group col-md-3">
								<input type="text" class="form-control from-control-sm"
									value="Salary :<%=j.getSalary()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control from-control-sm"
									value="Experience :<%=j.getExperience()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control from-control-sm"
									value="Job Type :<%=j.getJob_type()%>" readonly>
							</div>
						</div>
						<h6>
							Publish Date:<%=j.getPdate()%></h6>
						<div class="text-center ">
							 <a
								href="delete?id=<%=j.getId()%>"
								class="btn btn-sm bg-danger text-white">Delete</a>
						</div>

					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
</body>
</html>