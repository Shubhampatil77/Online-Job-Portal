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
  background-color: #474e9b;
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
<h1>Congrats!!!
</h1>
  <h1>Heartly Congrats to all selected students !!!</h1>
 
</div>

<h2 style="text-align:center">Our Placed Student's</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <div class="container">
        <h2>Ronak Kumar</h2>
        <p class="title"> Front End Developer</p>
        <p> Placed in Infosys</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <div class="container">
        <h2>Mitali Bose</h2>
        <p class="title">Traine Engineer</p>
        <p> Placed in TCS</p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <div class="container">
        <h2>Priya Zete</h2>
        <p class="title">Engineer</p>
        <p> Placed in L and T</p>
      </div>
    </div>
  </div>
    <div class="column">
    <div class="card">
      <div class="container">
        <h2>Surya Jadhav</h2>
        <p class="title">Asociate Engineer</p>
        <p> Placed in Siemens</p>
      </div>
    </div>
  </div>  <div class="column">
    <div class="card">
      <div class="container">
        <h2>Harshda Kale </h2>
        <p class="title">Engineer</p>
        <p> Placed in Wipro</p>
      </div>
    </div>
  </div>  <div class="column">
    <div class="card">
      <div class="container">
        <h2>Akshy Bendre</h2>
        <p class="title">Designer</p>
       
        <p> Placed in Deloite</p>
      </div>
    </div>
  </div>
</div>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>