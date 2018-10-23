<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AROGYA</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background:url(images/pharma.jpg) no-repeat center fixed;background-size:cover;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome to Arogya Pharmacy</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">AROGYA PRODUCTS
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">MEDICINES</a></li>
          <li><a href="#">BABY PRODUCTS</a></li>
          <li><a href="#">AYURVEDIC PRODUCTS</a></li>
        </ul>
      </li>
      <li><a href="#">ABOUT US</a></li>
      <li><a href="#">CONTACT US</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="arogyaEmpLogin.jsp"><span class="glyphicon glyphicon-user"></span>Employee login</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-user"></span>customer Signup</a></li>
      <li><a href="arogyaLogin.jsp"><span class="glyphicon glyphicon-log-in"></span>customer Login</a></li>
    </ul>
  </div>
</nav>

</body>
</html>