<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User : View Jobs</title>
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
				<h5 class="text-center text-primary">All Jobs</h5>
				<%
				String stdate = request.getParameter("startdate");
				String endate = request.getParameter("enddate");
				String msg = "";
				
				JobDAO dao = new JobDAO(DBConnect.getConn());

				List<Jobs> list = null;
				list = new ArrayList<Jobs>();
					list = dao.getJobsStartDateAndEndData(stdate, endate);
					

				if (list.isEmpty()) {
				%>
				<h4 class="text-center text-danger">Job Not Available</h4>

				<%
				}
				if (list != null) {
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>
						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Location:  <%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category:  <%=j.getCategory()%>" readonly>

							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Status :  <%=j.getStatus()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Experiance :  <%=j.getExperience()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Salary :  <%=j.getSalary()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Vacancy :  <%=j.getVacancy()%>" readonly>
							</div>	
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Job Type :  <%=j.getJob_type()%>" readonly>
							</div>
						</div>

						<h6>
							Publish Date:
							<%=j.getPdate().toString()%></h6>
						<div class="text-center">


							<a href="one_view.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white">View More </a>

						</div>
					</div>
				</div>
				<%
				}
				} else {
				%>
				<h4 class="text-center text-danger"><%=msg%></h4>
				<%
				}
				%>
			</div>
		</div>
	</div>

</body>
</html>