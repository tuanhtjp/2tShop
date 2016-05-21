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
		<form 	 role="form" action="employee" method="post">
		<div class="col-md-4">
			<div class="form-group">
				<label class="sr-only" for="email">Email:</label> <input
					type="email" name="txtSearch" class="form-control" id="email"
					placeholder="Enter email" style="height: 34px">
			</div>
			</div>
			<div class="col-md-4">
			<button type="submit" class="btn btn-default">Search</button>
			</div>
		</form>
	</div>
<form action="pro-create" method="GET">
							<button type="submit" value="Create New" class="btn btn-primary">Create</button>
						</form>

	<table class="table table-hover">
		<thead>
			<tr>
				<th>ID</th>
				<th>barcode</th>
				<th>createdDate</th>
				<th>description</th>
				<th>discount</th>
				<th>imageUrl</th>
				<th>price</th>
				<th>productName</th>
				<th>quantity</th>
				
				<th>brand</th>
				<th>category</th>
				<th>size</th>
				<th>status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="pro" items="${listPro}">
				<tr>
					<td><c:out value="${pro.getProductID()}"></c:out></td>
					<td><c:out value="${pro.getBarcode()}"></c:out></td>
					<td><c:out value="${pro.getCreatedDate()}"></c:out></td>
					
					<td><c:out value="${pro.getDescription()}"></c:out></td>
					<td><c:out value="${pro.getDiscount()}"></c:out></td>
					<td><img width="50px" height="50px" alt="" src="${pro.getImageUrl()}"> </td>
					<td><c:out value="${pro.getPrice()}"></c:out></td>
					<td><c:out value="${pro.getProductName()}"></c:out></td>
					<td><c:out value="${pro.getQuantity()}"></c:out></td>
					<td>
					<c:out value="${pro.getBrand().getBrandName()}"></c:out>
					</td>
					<td>
					<c:out value="${pro.getCategory().getName()}"></c:out>
					</td>
					
					<td>
					<c:out value="${pro.getSize().getSizeName()}"></c:out>
					</td>
					<td>
						<c:choose> 
						
							<c:when test="${pro.getStatus() == 0 }"><p style="color: red; font-weight: bold;">Off</p></c:when>
							<c:when test="${pro.getStatus() == 1 }"><p style="color: green; font-weight: bold;">On</p></c:when>
						</c:choose>	
					</td>
					<td>
						<form action="product-edit/${pro.getProductID()}" method="GET">
							<input id="pro" name="pro" type="hidden"
								value="${pro.getProductID()}" /> 
							<button type="submit" value="edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
						</form>
						</td>
					<td><c:url var="deleteUrl" value="/product/remove" />
						<form action="${deleteUrl}" method="POST">
							<input id="pro" name="pro" type="hidden"
								value="${pro.getProductID()}" /> 
							<button type="submit" value="delete" class=""
								onClick="return confirm('Bạn có chắc chắn muốn xoá nhân viên này?')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>
