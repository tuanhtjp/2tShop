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

<h1>EDIT</h1>
 <form:form
				action="${pageContext.request.contextPath}/${customer.customerID}"
				method="post" modelAttribute="customer">
	<table class="table table-hover">
			<tr>
				<td>CustomerID</td>
				<td><form:input type="text" path="customerID" /></td>
			</tr>
			<tr>
				<td>Full Name</td>
				<td><form:input type="text" path="fullName" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input type="text" path="email" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input type="password" path="password" /></td>
			</tr>
			<%-- <tr>
				<td>DOB</td>
				<td><form:input type="text" path="dob" /></td>
			</tr> --%>
			<tr>
				<td>Sex</td>
				<td><form:input type="number" path="sex" value="1" /></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><form:input type="number" path="phone" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input type="text" path="address" /></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><form:input type="text" path="image" /></td>
			</tr>
			<tr>
				<td>Status</td>
				<td><form:input type="number" path="status" /></td>
			</tr>
			<tr>
					<td colspan="2"><input class="glyphicon glyphicon-search" type="submit" /></td>
			</tr>
				
					
					<!-- <td><input type="text" required="" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" value="" name="dates_pattern1" id="dates_pattern1" list="dates_pattern1_datalist" /></td> -->
			
	</table>
</form:form> 
</body>
</html>
