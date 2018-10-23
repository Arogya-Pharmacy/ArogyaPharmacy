<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.Random"%>
  <% Random r=null;
  String randomNumber =null;
  r = new Random();
  randomNumber = String.format("%04d", Integer.valueOf(r.nextInt(1001)));
  System.out.println("random code is "+randomNumber);
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function generateRandomCode() {
	
	alert("Your order got placed ");
}
</script>
</head>
<body>
<%
double price=(Double) request.getAttribute("totalPrice");
%>
<c:url value="SaveOrderDetails" var="url"/>
<form action="${url}" method="post">
<p>Your order got placed  </p>
<p>Price for your products ::<%= price %> </p>
<input type="submit" name="order" value="order" onClick="generateRandomCode()"/>
</form>
</body>
</html>