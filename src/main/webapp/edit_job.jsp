<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.dao.JobDAO"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.User"%>
<%@ page import="com.entity.Jobs"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit JOBS</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">


	

	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO dao = new JobDAO(DBConnect.getConn());
						Jobs j = dao.getJobById(id);
						%>
						<h5>Edit Jobs</h5>
					</div>
					<form action="update" method="post">
						<input type="hidden" value="<%=j.getId()%>" name="id">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control" value=<%=j.getTitle()%>>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="Location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option value="<%=j.getLocation()%>"><%=j.getLocation()%></option>
									<option value="Hydrabad">Hydrabad</option>
									<option value="Maharashtra">Maharashtra</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Gujurat">Gujurat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
									<option value="Banglore">Banglore</option>
									<option value="chennai">chennai</option>
									<option value="Hydrabad">Hydrabad</option>
								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select "
									id="inlineFormCustomSelectPref" name="category">
									<option value=" <%=j.getCategory()%>"><%=j.getCategory()%></option>
									<option value="IT">IT</option>
									<option value="Devloper">Devloper</option>
									<option value="Banking">Banking</option>
									<option value="Teacher">Teacher</option>
									<option value="Engineer">Engineer</option>
								</select>
							</div>
						</div>
						<div class="form-row">

							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="<%=j.getStatus()%>">
										<%=j.getStatus()%>
									</option>

									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Job Type</label> <select class="custom-select "
									id="inlineFormCustomSelectPref" name="job_type">
									<option value=" <%=j.getJob_type()%>"><%=j.getJob_type()%></option>
									<option value="Full Time">Full Time</option>
									<option value="Part Time">Part Time</option>
									<option value="Remote">Remote</option>
									<option value="Hybrid">Hybrid</option>
								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Experiance</label> <select class="custom-select "
									id="inlineFormCustomSelectPref" name="experience">
									<option value=" <%=j.getExperience()%>"><%=j.getExperience()%></option>
									<option value="Fresher - 1">Fresher - 1</option>
									<option value="2 - 4">2 - 4</option>
									<option value="4 - 6">4 - 6</option>
									<option value="6 - 8">6 - 8</option>
									<option value="8 - 10">8 - 10</option>
								</select>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Enter Vacancy</label> <input type="text" name="vacancy"
									required class="form-control" value=<%=j.getVacancy()%>>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Enter Vacancy</label> <input type="text" name="salary"
									required class="form-control" value=<%=j.getSalary()%>>
							</div>
						</div>
						<div class="form-group">
							<label>Enter Decription</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"> <%=j.getDescription()%></textarea>
						</div>
						<button class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>