<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.Random"%>
  
  <% Random r=null;
 
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function generateRandomCode() {
	let r = Math.random().toString(36).substring(7);
	alert("Your Order got placed,Order Code ::: "+r);
}
</script>
</head>
<body>
<%
double price=(Double) request.getAttribute("totalPrice");
%>
<c:url value="/SaveOrderDetails" var="url"/>
<form action="${url}" method="post">
<p>Price for your products ::<%= price %> </p>
<input type="submit" name="order" value="order" onClick="generateRandomCode()"/>
</form>
</body>
</html>