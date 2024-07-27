<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updlaod Resume</title>


<%
String msg = (String) session.getAttribute("msg");
if (msg != null) {
%>
<h4 class="text-center text-success"><%=msg%></h4>
<%
session.removeAttribute("msg");
}
%>
<form action="home.jsp" method="post">

	<button type="submit" value="login"
		class="btn btn-primary badge-pill btn-block">Apply For More
		Job Back To Apply Page</button>
</form>
</div>
</head>
<body>

</body>
</html>