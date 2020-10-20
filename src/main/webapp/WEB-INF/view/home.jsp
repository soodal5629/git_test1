<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Welcome to Find your New Family!!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  </style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="dogList.do">Dogs</a></li>
      <li><a href="catList.do">Cats</a></li>
      <li><a href="#">List of Report</a></li>
      <li><a href="#">Report abandoned animals</a></li>
    </ul>
  </div>
</nav>
<h1 style="text-align:center">Find your New Family</h1>
<div class="container text-center">
  <h3>New Family</h3>
  <p><em>Updated New Family!</em></p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>Name</strong></p><br>
      <img src="bandmember.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Name</strong></p><br>
      <img src="bandmember.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Name</strong></p><br>
      <img src="bandmember.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
    </div>
  </div>
</div>

</body>
</html>
