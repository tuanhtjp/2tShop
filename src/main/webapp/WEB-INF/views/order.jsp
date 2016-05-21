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
	<h1>View Order </h1>
		<!-- <form role="form" action="employee" method="post">
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
		</form> -->
	</div>

	<table class="table table-hover">
		<thead>
			<tr>
				<!-- <th>orderID</th> -->
				
				<th>orderDate</th>
				<th>shipAddress</th>
				<th>Promotion</th>
				<!-- <th>Customer</th> -->
				<th>Shipped</th>
				<th>Payment</th>
				<!-- <th>status</th> -->
			</tr>

		</thead>
		<tbody>
			<c:forEach var="order" items="${listorder}">
				<tr>
					<%-- <td><c:out value="${order.orderID}"></c:out></td> --%>
					
					<td><c:out value="${order.orderDate}"></c:out></td>
					<td><c:out value="${order.shipAddress}"></c:out></td>
					<td style="color: green;"><c:out value="${order.promotion.promotionCode}"></c:out></td>
					<%-- <td><c:out value="${order.customer.fullName}"></c:out></td> --%>
					<td><c:choose>

							<c:when test="${order.shipped.shipID == 1 }">
								<p style="color: green; font-weight: bold;">Chuyển phát
									nhanh</p>
							</c:when>
							<c:when test="${order.shipped.shipID == 2 }">
								<p style="color: green; font-weight: bold;">Truyền thống</p>
							</c:when>
						</c:choose></td>
					<td style="color: green;"><c:out
							value="${order.payment.paymentMethod}"></c:out></td>
					<%-- <td><c:choose>

							<c:when test="${order.status == 0 }">
								<p style="color: red; font-weight: bold;">Đang chờ...!</p>
							</c:when>
							<c:when test="${order.status == 1 }">
								<p style="color: green; font-weight: bold;">Đã xữ lý</p>
							</c:when>
						</c:choose></td> --%>
					<%-- <td>
						<form action="order-edit/${order.orderID}" method="GET">
							<input id="order" name="order" type="hidden"
								value="${order.orderID}" />
							<button type="submit" value="edit">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
							</button>
						</form>
					</td>

					<a
											href="${pageContext.request.contextPath}/order/remove/${order.orderID}">
												<button type="submit" title="Delete" class="btn btn-danger">
													<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
												</button>
										</a>
					<td><c:url var="deleteUrl" value="/order/remove" />
						<form action="${deleteUrl}" method="POST">
							<input id="cat" name="cat" type="hidden" value="${order.orderID}" />
							<button type="submit" value="delete" class=""
								onClick="return confirm('Bạn có chắc chắn muốn xoá nhân viên này?')">
								<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							</button>
						</form></td>
 --%>


				</tr>
			</c:forEach>
		</tbody>

	</table>

	<%-- <table class="table table-hover">
		<thead>
			<tr>
				<th>orderID</th>
				<th>freight</th>
				<th>orderDate</th>
				<th>shipAddress</th>
				<th>shippedDate</th>
				<th>status</th>
				<th>total</th>
				<th>shipped</th>
				
				<th>payment</th>
				<th>customer</th>
				<th>employee</th>
				<th>promotion</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="order" items="${listorder}">
				<tr>
					<td><c:out value="${order.orderID}"></c:out></td>
					<td><c:out value="${order.freight}"></c:out></td>
					<td><c:out value="${order.orderDate}"></c:out></td>
					
					<td><c:out value="${order.shipAddress}"></c:out></td>
					<td><c:out value="${order.shippedDate}"></c:out></td>
					<td><c:out value="${order.total}"></c:out></td>
					<td><c:out value="${order.shipped.getShipMethob()}"></c:out></td>
					<td><c:out value="${order.promotion.getPromotionCode()}"></c:out></td>
					<td>
					<c:out value="${order.payment.getPaymentMethob()}"></c:out>
					</td>
					<td>
					<c:out value="${order.customer.getFullName()}"></c:out>
					</td>
					
					<td>
					<c:out value="${order.employee.getFullName()}"></c:out>
					</td>
					<td>
						<c:choose> 
						
							<c:when test="${order.status == 0 }"><p style="color: red; font-weight: bold;">Off</p></c:when>
							<c:when test="${order.status == 1 }"><p style="color: green; font-weight: bold;">On</p></c:when>
						</c:choose>	
					</td>
					<td>
						<form action="product-edit/${order.getProductID()}" method="GET">
							<input id="pro" name="pro" type="hidden"
								value="${order.getProductID()}" /> 
							<button type="submit" value="edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
						</form>
						</td>
					<td><c:url var="deleteUrl" value="/product/remove" />
						<form action="${deleteUrl}" method="POST">
							<input id="pro" name="pro" type="hidden"
								value="${order.getProductID()}" /> 
							<button type="submit" value="delete" class=""
								onClick="return confirm('Bạn có chắc chắn muốn xoá nhân viên này?')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table> --%>

</body>
</html>
