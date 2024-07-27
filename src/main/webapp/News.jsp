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
color:red;
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
  background-color:;
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


table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 70%;
  font-color: black;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr{
  background-color: green;
}
</style>
</head>


<body>
	<%@include file="all_component/navbar.jsp"%>

<!-- <div class="about-section">
<h3>Employment News This Week Pdf: 6th to 12th April 2024 Job Highlights
</h3> 
<p>Last Updated April 09, 2024 by Dinesh</p>
<h2>HTML Table</h2>

</div> -->

<h2 style="text-align:center">RECENT NEWS ARTICLES</h2>

<div class="card mb-3" style="max-width: 1000px;">
  <div class="row no-gutters">

    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">India.com 2h</h5>
        <p class="card-text">7 Useful Tips For Achieving Work-Life Balance</p>
        <p class="card-text"><small class="text-muted">Make self-care a priority by setting aside quality time for activities that bring you joy and relaxation. (Pic Credit: ...</small></p>
      </div>
    </div>
    <div class="col-md-4">
      <img src="img/n1.jpg" class="card-img" alt="john" style="width:100%">
    </div>
  </div>
</div>






<div class="card mb-3" style="max-width: 1000px;">
  <div class="row no-gutters">
    
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Bankers Adda 17h</h5>
        <p class="card-text">List Of Top 10 Bank Jobs After Graduation 2024</p>
        <p class="card-text"><small class="text-muted">Any graduate looking for career options in Banking Sector can check this well researched article to know the List of Top 10 ..</small></p>
      </div>
    </div>
    <div class="col-md-4">
      <img src="img/n4.jpg" class="card-img" alt="john" style="width:100%">
    </div>
  </div>
</div>
<div class="card mb-3" style="max-width: 1000px;">
  <div class="row no-gutters">
    
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Medical Xpress 15h</h5>
        <p class="card-text">Job insecurity in early adulthood linked to heightened risk of serious alcohol-related illness in later life</p>
        <p class="card-text"><small class="text-muted">Experiencing the sort of job insecurity in early adulthood that is often linked to the gig economy, is linked to a heightened ...</small></p>
      </div>
    </div>
    <div class="col-md-4">
      <img src="img/n3jpg.jpg" class="card-img" alt="john" style="width:100%">
    </div>
  </div>
</div>
<div class="card mb-3" style="max-width: 1000px;">
  <div class="row no-gutters">
    
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Trak.in - India Business Blog 1d</h5>
        <p class="card-text">Apple Is India's Biggest Blue-Collar Job Creator: 300,000 Direct, Indirect Jobs Created In India!</p>
        <p class="card-text"><small class="text-muted">One of world’s most profitable company in the world, Apple, is topping another chart! This time around it is topping the ...</small></p>
      </div>
    </div>
    <div class="col-md-4">
      <img src="img/n2.jpg" class="card-img" alt="john" style="width:100%">
    </div>
  </div>
</div>
<div class="card mb-3" style="max-width: 1000px;">
  <div class="row no-gutters">
    
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Mint 2d</h5>
        <p class="card-text">Remote Work Trends and Best Practices 2024 for Web Developers</p>
        <p class="card-text"><small class="text-muted">Let’s explore the evolution of remote work for web developers and look at some of the trends and best practices that have emerged as companies and developers have adapted to this new way of working ...
</small></p>
      </div>
    </div>
    <div class="col-md-4">
      <img src="img/n5.jpg" class="card-img" alt="john" style="width:100%">
    </div>
  </div>
</div>

<div class="card mb-3" style="max-width: 1000px;">
  <div class="row no-gutters">
    
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">The Shine 3d</h5>
        <p class="card-text">Data Analyst Jobs in India</p>
        <p class="card-text"><small class="text-muted">Proven experience (1 year) working in MIS management, data analysis, or related roles. Proficiency in MIS software ... A dynamic and supportive work environment that values innovation and creativity.</small></p>
      </div>
    </div>
    <div class="col-md-4">
      <img src="img/n6.jpg" class="card-img" alt="john" style="width:100%">
    </div>
  </div>
</div>
<div class="card mb-3" style="max-width: 1000px;">
  <div class="row no-gutters">
    
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">The Financial Express on MSN 1h</h5>
        <p class="card-text">31% women in tech considering leaving jobs over next 12 months due to poor management, no training, better pay, says Skillsoft</p>
        <p class="card-text"><small class="text-muted">Nearly a third (31 per cent) of women in the technology industry are considering leaving their organisation over the next 12 ...</small></p>
      </div>
    </div>
    <div class="col-md-4">
      <img src="img/n7.jpg" class="card-img" alt="john" style="width:100%">
    </div>
  </div>
</div>


	<%@include file="all_component/footer.jsp"%>

</body>
</html>