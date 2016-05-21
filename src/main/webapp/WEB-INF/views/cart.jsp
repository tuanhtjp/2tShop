<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- CSS Style -->


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/css.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/style.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/revslider.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/owl.carousel.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/owl.theme.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/font-awesome.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/animate.css"
	type="text/css">

<!-- Google Fonts -->
<link href='230px' rel='stylesheet' type='text/css'>




</head>
<body>

	<!-- 	<div id="cartList" class="modal fade bs-popcart-modal-lg in"
		tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
		style="display: block;">
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				cart.reset();
			});
			function closeCart() {
				$("#cartList").removeClass("fade").modal("hide");
			}
		</script>
 -->
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title title-cart" id="exampleModalLabel">
					Infomation Order <span data="countCart">#</span>
				</h4>
			</div>
			<div class="modal-body modal-body-cart">
				<div class="checkout popcart">
					<div class="table-responsive cb-table">
						<table class="table">
							<thead>
								<tr>
									<th>Product Name</th>
									<th>Quantity</th>
									<th>Unit Price</th>
									<!-- <th>Size</th> -->
									<th>Sub Total</th>
									<th></th>
								</tr>
							</thead>
							<c:set var="s" value="0"></c:set>
							<c:forEach var="it" items="${sessionScope.cart}">
								<c:set var="s" value="${s+ it.product.price * it.quantity}"></c:set>
								<tbody id="cartContent">
									<tr id="cart-item-131804920979">
										<td>
											<div style="float: left;" class="detail-itcart">
												<div class="inner-cart">
													<a class="thumb-cart" href="#"> <img width="50px"
														height="50px" alt=""
														src="${pageContext.request.contextPath}/${it.product.imageUrl}">
													</a>
												</div>
											</div>
											<div class="ifo-itcart">
												<div class="tit-cart">
													<a style="text-decoration: none;" href="#"> <c:out
															value="${it.product.productName}"></c:out></a>
												</div>


											</div>
										</td>

										<td style="text-align: left;"><c:out
												value="${it.quantity}"></c:out></td>


										<td style="text-align: left;"><span
											id="totalItemAmount-131804920979"> <c:out
													value="${it.product.price}"></c:out>
										</span></td>

										<%-- <td style="text-align: left;"><c:out
												value="${it.product.size.sizeName}"></c:out></td> --%>
										<td style="text-align: left;"><c:out
												value="${it.product.price * it.quantity}"></c:out></td>
										<td><a
											href="${pageContext.request.contextPath}/shoppingcart/delete/${it.product.productID}">
												<button type="submit" title="Delete" class="btn btn-danger">
													<span>Delete</span>
												</button>
										</a></td>
							</c:forEach>
							<tr>
								<td colspan="3" align="center"><b>Total</b></td>
								<td style="text-align: left;">${s }</td>
								<td>
									<div class="form-group">
										<form
											action="${pageContext.request.contextPath}/shoppingcart/checkout"
											method="post">
											<ul style="display: -webkit-box;">
												<li><input style="border-radius: 4px;" name="Promotion"
													id="Promotion" type="text" class="form-control"
													placeholder="Promotion Code" /></li>
												<li>

													<button class="btn btn-primary" type="submit">POST</button>

												</li>
											</ul>
										</form>

									</div>

								</td>
							</tr>
							</tbody>


						</table>
					</div>

				</div>
			</div>
			<!-- modal-body -->
			<div class="modal-footer">
				<div class="btn-cart btn-cartpop">
					<div class="btn-order" style="float: right;">
						<form
							action="${pageContext.request.contextPath}/shoppingcart/checkout"
							method="post">
							<button class="btn btn-primary" type="submit">Checkout</button>
						</form>

					</div>
					<div class="back-cart" style="float: left;">
						<a href="${pageContext.request.contextPath}/productC.html">Continue
							Shopping </a>| <a href="${pageContext.request.contextPath}/">Home
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>



	<style>
input, select, textarea {
	max-width: 100%;
	color: black;
}
</style>

	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title title-cart" id="exampleModalLabel">
					Personal information <span data="countCart">(#)</span>
				</h4>
			</div>
			<div class="modal-body modal-body-cart">
				<div class="checkout popcart">
					<div class="table-responsive cb-table">
					
						<table class="table">
						
								<tr>
									<td>
									<ul style=" display: inline-flex;">
									<li><input style="border-radius: 4px;"
										name="ContactTelephone" id="Phon" type="text"
										class="form-control" placeholder="Phone number" /></li>
									<li><span style="color: red">(*)</span></li>
									</ul>	
										</td>
										
									<td>
									<ul style="    display: inline-flex;">
										<li><input style="border-radius: 4px;" name="ContactEmail"
										id=ShipAddress" type="ShipAddress" class="form-control"
										placeholder="Ship address" /></li>
										<li><span style="color: red">(*)</span></li>
										</ul>
									</td>
									<td><select name="shipID">
											<c:forEach var="ship" items="${listship}">
												<option value="${ship.shipID}"><c:out
														value="${ship.shipMethod}" /></option>
											</c:forEach>
									</select></td>

									<td><select name="paymentID">
											<c:forEach var="pay" items="${listpayment}">
												<option value="${pay.paymentID}"><c:out
														value="${pay.paymentMethod} }" /></option>
											</c:forEach>
									</select></td>
								</tr>
							
						</table>
						
					
					</div>
					
				</div>
			</div>
		</div>
	</div>



	<script>
		function disableSumitButton(sender) {
			var form = sender.parents('form');
			form.validate();

			if (form.valid()) {
				sender.attr('disabled', 'disabled');
				sender.text('Đang gửi thông tin...');
				sender.parents('form').submit();
			}
		}

		$("#btnRegisterSubmit").click(function() {
			disableSumitButton($(this));
		});
	</script>

	<%-- <table>

		<tbody>
			<c:set var="s" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart}">
				<c:set var="s" value="${s+ it.product.price * it.quantity}"></c:set>
				<tr>

					<td align="left">Name: ${it.product.productName}</br>Price: <span
						style="color: red;">${it.product.price}</span></br>Quantity:
						${it.quantity}
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td align="left"><b>Total: </b><span style="color: red;">${s }</span></td>

			</tr>

		</tbody>
	</table>

 --%>


</body>
</html>