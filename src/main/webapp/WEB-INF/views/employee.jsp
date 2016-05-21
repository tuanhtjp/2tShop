<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<!-- 
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 -->

</head>
<body>

	<div class="container">
		<form class="form-inline" role="form" action="employee" method="post">
			<div class="form-group">
				<label class="sr-only" for="email">Email:</label> <input
					type="email" name="txtSearch" class="form-control" id="email"
					placeholder="Enter email" style="height: 34px">
			</div>
			<button type="submit" class="btn btn-default">Search</button>
		</form>
	</div>

<form action="emp-create" method="GET">
							<button type="submit" value="Create New" class="btn btn-primary">Create</button>
						</form>

	<table class="table table-hover">
		<thead>
			<tr>
				<th>ID</th>
				<th>Full Name</th>
				<th>DOB</th>
				<th>Sex</th>
				<th>Email</th>
				<th>Password</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Image</th>
				<th>Role</th>
				<th>Status</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="emp" items="${listEmp}">
				<tr>
					<td><c:out value="${emp.getEmployeeID()}"></c:out></td>
					<td><c:out value="${emp.getFullName()}"></c:out></td>
					<td><c:out value="${emp.getDob()}"></c:out></td>
					<td>
						<c:choose> 
							<%-- <c:out value="${cus.getSex() }"></c:out> --%>
							<c:when test="${emp.getSex() == 1 }"><p>Male</p></c:when>
							<c:when test="${emp.getSex() == 0 }"><p>Female</p></c:when>
						</c:choose>	
					</td>
					<td><c:out value="${emp.getEmail()}"></c:out></td>
					<td><c:out value="${emp.getPassword()}"></c:out></td>
					<td><c:out value="${emp.getPhone()}"></c:out></td>
					<td><c:out value="${emp.getAddress()}"></c:out></td>
					<td><c:out value="${emp.getImage()}"></c:out></td>
					<td>
					<c:out value="${emp.role.roleName}"></c:out>
					</td>
					<%-- <td>
						<c:choose> 
							<c:out value="${cus.getSex() }"></c:out>
							<c:when test="${emp.getStatus() == 1 }"><p style="color: red; font-weight: bold;">Off</p></c:when>
							<c:when test="${emp.getStatus() == 0 }"><p style="color: green; font-weight: bold;">On</p></c:when>
						</c:choose>	
					</td> --%>
					<td><c:choose>

							<c:when test="${emp.status == 0 }">
								<p style="color: red; font-weight: bold;">Off</p>
							</c:when>
							<c:when test="${emp.status == 1 }">
								<p style="color: green; font-weight: bold;">On</p>
							</c:when>
						</c:choose></td>
					<td>
						<form action="emp-edit/${emp.getEmployeeID()}" method="GET">
							<input id="emp" name="emp" type="hidden"
								value="${emp.getEmployeeID()}" /> 
							<button type="submit" value="edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
						</form>
						</td>
					<td><c:url var="deleteUrl" value="/employee/remove" />
						<form action="${deleteUrl}" method="POST">
							<input id="emp" name="emp" type="hidden"
								value="${emp.getEmployeeID()}" /> 
							<button type="submit" value="delete" class=""
								onClick="return confirm('Bạn có chắc chắn muốn xoá nhân viên này?')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
