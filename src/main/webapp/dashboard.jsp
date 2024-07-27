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
<style>
* {
	margin: 0;
	padding: 0;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.42857143;
	color: #333;
	background-color: #fff;
}

a {
	background-color: transparent;
}

a:active, a:hover {
	outline: 0;
}

.row {
	margin-right: -15px;
	margin-left: -15px;
}

.col-lg-3, .col-md-6, .col-xs-3 {
	position: relative;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
}

.col-xs-3 {
	float: left;
	width: 20%;
}

.col-xs-9 {
	width: 75%;
	float: left;
}

.clearfix:after {
	clear: both;
}

.clearfix:before, .clearfix:after {
	display: table;
	content: " ";
}

.panel {
	margin-bottom: 10px;
	background-color: #fff;
	border: 1px solid transparent;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}

.panel-footer {
	padding: 10px 15px;
	background-color: #f5f5f5;
	border-top: 1px solid #ddd;
	border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px;
}

.panel-heading {
	height: 100px;
	background-color: turquoise;
	padding: 10px 15px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
}

.panel-green {
	border: 2px dashed #398439;
}

.panel-green .panel-heading {
	background-color: #398439;
}

.green {
	color: #398439;
}

.blue {
	color: #337ab7;
}

.voilet {
	color: #aa1dd1;
}

.panel-voilet {
	border: 2px dashed #aa1dd1;
}

.panel-voilet .panel-heading {
	background-color: #aa1dd1;
}

.red {
	color: #ce7f7f;
}

.semired {
	color: #bd2130;
}

.panel-semired {
	border: 2px dashed #bd2130;
}

.panel-semired .panel-heading {
	background-color: #bd2130;
}

.grey {
	color: #51565b;
}

.panel-grey {
	border: 2px dashed #51565b;
}

.panel-grey .panel-heading {
	background-color: #51565b;
}

.panel-primary {
	border: 2px dashed #337ab7;
}

.panel-primary .panel-heading {
	background-color: #337ab7;
}

.yellow {
	color: #ffcc00;
}

.panel-yellow {
	border: 2px dashed #ffcc00;
}

.panel-yellow .panel-heading {
	background-color: #ffcc00;
}

.panel-red {
	border: 2px dashed #ce7f7f;
}

.panel-red .panel-heading {
	background-color: #ce7f7f;
}

.huge {
	font-size: 30px;
}

.panel-heading {
	color: #fff;
}

.pull-left {
	float: left !important;
}

.pull-right {
	float: right !important;
}

.text-right {
	text-align: right;
}

.under-number {
	font-size: 20px;
}

@media ( min-width : 992px) {
	.col-md-6 {
		float: left;
		width: 50%;
	}
}

@media ( min-width : 1200px) {
	.col-lg-3 {
		float: left;
		width: 20%;
	}
}
</style>
</head>
<body style="background-color: #f0f1f2;">

	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary text-bold"
					style="margin-top: 2rem; font-weight: bolder; font-size: 3rem; font-style: italic;">Reports</h5>
				<c:if test="${not empty succMsg }">
					<div class="alert alert-success" role="alert">${ succMsg}</div>
					<c:remove var="succMsg" />
				</c:if>
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

				<!-- /.row -->
				<%
				JobDAO dao = new JobDAO(DBConnect.getConn());
				int count = dao.getAllJobsCount();
				%>
				<div class="row">

					<div class="col-lg-4 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-file-text fa-4x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class='huge'><%=count%></div>
										<div class="under-number">Number of Jobs</div>
									</div>
								</div>
							</div>

						</div>
					</div>


					<!-- ********************************************************************************************************* -->


					<%
					JobDAO dao1 = new JobDAO(DBConnect.getConn());
					int count1 = dao1.getActiveJobsCount();
					%>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-green">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-comments fa-4x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class='huge'><%=count1%></div>
										<div class="under-number">Number of Active Jobs</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!-- ********************************************************************************************************* -->
					<%
					JobDAO dao2 = new JobDAO(DBConnect.getConn());
					int count2 = dao2.getInActiveJobsCount();
					%>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-semired">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-comments fa-4x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class='huge'><%=count2%></div>
										<div class="under-number">Number of Inactive Jobs</div>
									</div>
								</div>
							</div>

						</div>
					</div>


					<!-- ********************************************************************************************************* -->

					<%
					JobDAO dao3 = new JobDAO(DBConnect.getConn());
					int count3 = dao3.getNumberRecruiterCount();
					%>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-yellow">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-user fa-4x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class='huge'><%=count3%></div>
										<div class="under-number">Number of Recruiter</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!-- ********************************************************************************************************* -->
					<%
					JobDAO dao4 = new JobDAO(DBConnect.getConn());
					int count4 = dao4.getNumberActiveRecruiterCount();
					%>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-red">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-list fa-4x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class='huge'><%=count4%></div>
										<div class="under-number">Number of Active Recruiter</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- ********************************************************************************** -->
					<%
					JobDAO dao5 = new JobDAO(DBConnect.getConn());
					int count5 = dao5.getNumberInActiveRecruiterCount();
					%>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-grey">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-comments fa-4x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class='huge'><%=count5%></div>
										<div class="under-number">Number of InActive Recruiter</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!-- *********************************************************************** -->
					<%
					JobDAO dao6 = new JobDAO(DBConnect.getConn());
					int count6 = dao6.getNumberUsersCount();
					%>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-voilet">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-comments fa-4x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class='huge'><%=count6%></div>
										<div class="under-number">Number of Users</div>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>

			</div>
		</div>
</body>
</html>