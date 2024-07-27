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
<h1>Welcome to  E- Recruitment Solution- India's No.#1 Job Portal.
</h1>
  <h1>Find a career you'll love</h1>
  
  <h3>Explore which careers have the highest job satisfaction, best salaries and more</h3>
 <p>E- Recruitment Solutions is one of the best educational and jobs websites in India. We have started this website to help students and job seekers by providing useful and correct information at the right time. Our aim is to serve the youth of India w.r.t education and employment.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="img/hr1.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Jane Doe</h2>
        <p class="title">CEO & Founder</p>
        <p>jane@yahoo.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="img/hr5.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Mike Ross</h2>
        <p class="title">Art Director</p>
        <p>mike@yahoo.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="img/hr3.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Priya Doe</h2>
        <p class="title">Exective</p>
        <p>priyha@yahoo.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
    <div class="column">
    <div class="card">
      <img src="img/hr2.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Jaklin</h2>
        <p class="title">Manger</p>
        <p>jak@yahoo.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>  <div class="column">
    <div class="card">
      <img src="img/hr6.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Rakesh </h2>
        <p class="title">Team Lead</p>
        <p>raka@yahoo.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>  <div class="column">
    <div class="card">
      <img src="img/hr4.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Josef</h2>
        <p class="title">Designer</p>
       
        <p>josef@yahoo.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>
	<%@include file="all_component/footer.jsp"%>


</body>
</html>