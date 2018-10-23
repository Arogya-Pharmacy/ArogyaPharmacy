<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order table</title>
</head>
<body>

<table border="2">
	<thead>
		<tr>
			<td>Customer order ID</td>
			<td>Sub category ID</td>
			<td>customer ID</td>
			<td>Order quantity</td>
			<td>Order Address Street</td>
			<td>Order Address City</td>
			<td>Order Address State</td>
			<td>Order Address Pincode</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items = "${orderlist}" var = "utl">
		<tr>
			<td>${utl.custorder_id}</td>
			<td>${utl.subcat_id}</td>
			<td>${utl.customer_id}</td>
			<td>${utl.order_quantity}</td>
			<td>${utl.order_address_street}</td>
			<td>${utl.order_address_city}</td>
			<td>${utl.order_address_state}</td>
			<td>${utl.order_address_state}</td>
			<td>${utl.order_address_pincode}</td>
		</tr>
		</c:forEach>
	</tbody>
	
</table>

<a href="confirmation.jsp">confirm order</a>

</body>
</html>