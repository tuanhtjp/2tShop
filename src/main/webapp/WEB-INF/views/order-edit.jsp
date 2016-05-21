<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<head>
<meta charset="utf-8">

<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 -->

</head>
<body>

<h1>EDIT Order</h1>
 <form:form
				action="${pageContext.request.contextPath}/order-edit/${order.orderID}"
				method="post" modelAttribute="order">
	<table class="table table-hover">
			<tr>
				<td>OrderID</td>
				<td><form:input type="text" path="orderID" readonly="true" /></td>
			</tr>
			<%-- <tr>
				<td>CustomerID</td>
				<td><form:input type="text" path="customerID" readonly="true"/></td>
			</tr>
			<tr>
				<td></td>
				<td><form:input type="text" path="email" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input type="password" path="password" /></td>
			</tr>
			 <tr>
				<td>DOB</td>
				<td><form:input type="date" path="dob" /></td>
			</tr>
			<tr>
				<td>Sex</td>
				<td>
					<form:select path="sex" title="- Select Sex -">
						<form:option value="1">Male</form:option>
						<form:option value="0">Female</form:option>
					</form:select>
				</td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><form:input type="number" path="phone" /></td>
			</tr>
			<tr>
				<td>ShipAddress</td>
				<td><form:input type="text" path="shipAddress" /></td>
			</tr>
			
			<tr>
				<td>Shipped</td>
				<td>
				<form:select path="shipper.shipID">
						<c:forEach var="ship" items="${listShip}">
							<form:option value="${ship.shipID}"><c:out value="${ship.shipMethod}"/></form:option>
							</c:forEach>
				</form:select>
				</td>
			</tr> --%>
			<tr>
				<td>Status</td>
				<td>
					<form:select path="status">
						<form:option value="0">On</form:option>
						<form:option value="1">Off</form:option>
					</form:select>
				</td>
			</tr>
			<tr>
					<td colspan="2"><input class="glyphicon glyphicon-search" type="submit" /></td>
			</tr>
	</table>
</form:form> 

</body>
</html>
