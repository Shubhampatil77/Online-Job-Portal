<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}
h3{
color:black;
}
.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>


<body>
	<%@include file="all_component/navbar.jsp"%>

<div class="about-section">
<h3>We would love to hear from you.</h3>  
  <h4>The team is ready to help answer your questions and if you ready, we can start working together with your recruitment team. Below are contact details you contact any time your team will help you</h4>
  <h3>Contact No: </h3>
 
 <h4>1122334455</h4>
 <h3>E-Mail Id’s:</h3>
 <h4>hireme@gmail.com</h4>
 <h3>OR</h3>
 <h4>education@gmail.com</h4>

 </h1>
</div>

<h2 style="text-align:center">Our Team</h2>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>