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

<h1>EDIT EMPLOYEE</h1>
 <form:form
				action="${pageContext.request.contextPath}/emp-edit/${employee.employeeID}"
				method="post" modelAttribute="employee">
	<table class="table table-hover">
			<tr>
				<td>EmployeeID</td>
				<td><form:input type="text" path="employeeID" readonly="true" /></td>
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
				<td>Address</td>
				<td><form:input type="text" path="address" /></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><form:input type="text" path="image" /></td>
			</tr>
			<tr>
				<td>Role</td>
				<td>
				<form:select path="role.roleID">
						<c:forEach var="role" items="${listRole}">
							<form:option value="${role.getRoleID()}"><c:out value="${role.getRoleName()}"/></form:option>
							</c:forEach>
				</form:select>
				</td>
			</tr>
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
