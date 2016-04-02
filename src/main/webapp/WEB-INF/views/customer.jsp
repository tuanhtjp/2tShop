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
		<form class="form-inline" role="form" action="customer" method="post">
			<div class="form-group">
				<label class="sr-only" for="email">Email:</label> <input
					type="email" name="txtSearch" class="form-control" id="email"
					placeholder="Enter email" style="height: 34px">
			</div>
			<button type="submit" class="btn btn-default">Search</button>
		</form>
	</div>


	<table class="table table-hover">
		<thead>
			<tr>
				<th>CustomerID</th>
				<th>Full Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>DOB</th>
				<th>Sex</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Image</th>
				<th>Status</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cus" items="${listCus}">
				<tr>
					<td><c:out value="${cus.getCustomerID()}"></c:out></td>
					<td><c:out value="${cus.getFullName()}"></c:out></td>
					<td><c:out value="${cus.getEmail()}"></c:out></td>
					<td><c:out value="${cus.getPassword()}"></c:out></td>
					<td><c:out value="${cus.getDob()}"></c:out></td>
					<td><c:out value="${cus.getSex()}"></c:out></td>
					<td><c:out value="${cus.getPhone()}"></c:out></td>
					<td><c:out value="${cus.getAddress()}"></c:out></td>
					<td><c:out value="${cus.getImage()}"></c:out></td>
					<td><c:out value="${cus.getStatus()}"></c:out></td>
					<td>
						<form action="customer-edit/${cus.getCustomerID()}" method="GET">
							<input id="cus" name="cus" type="hidden"
								value="${cus.getCustomerID()}" /> 
							<button type="submit" value="edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
						</form>
						</td>
					<td><c:url var="deleteUrl" value="/customer/remove" />
						<form action="${deleteUrl}" method="POST">
							<input id="cus" name="cus" type="hidden"
								value="${cus.getCustomerID()}" /> 
							<button type="submit" value="delete" class=""
								onClick="return confirm('Bạn có chắc chắn muốn xoá khách hàng này?')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
