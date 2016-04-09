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
		<form class="form-inline" role="form" action="${pageContext.request.contextPath}/role" method="post">
			<div class="form-group">
				<label class="sr-only" for="email">Email:</label> <input
					type="text" name="txtSearch" class="form-control" id="email"
					placeholder="Enter Role ID" style="height: 34px">
			</div>
			<button type="submit" class="btn btn-default">Search</button>
			
		</form>
		
	</div>
<form action="${pageContext.request.contextPath}/role-create" method="GET">
							<button type="submit" value="Create New" class="btn btn-primary">Create</button>
						</form>

	<table class="table table-hover">
		<thead>
			<tr>
				<th>RoleID</th>
				<th>Role Name</th>
				<th>Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="rol" items="${listRole}">
				<tr>
					<td><c:out value="${rol.getRoleID()}"></c:out></td>
					<td><c:out value="${rol.getRoleName()}"></c:out></td>
					<td><c:out value="${rol.getDescription()}"></c:out></td>
					<td>
						<form action="${pageContext.request.contextPath}/role-edit/${rol.getRoleID()}" method="GET">
							<input id="rol" name="rol" type="hidden"
								value="${rol.getRoleID()}" /> 
							<button type="submit" value="edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
						</form>
						</td>
					<td><c:url var="deleteUrl" value="role/remove" />
						<form action="${deleteUrl}" method="POST">
							<input id="rol" name="rol" type="hidden"
								value="${rol.getRoleID()}" /> 
							<button type="submit" value="delete" class=""
								onClick="return confirm('Bạn có chắc chắn muốn xoá quyền này?')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
