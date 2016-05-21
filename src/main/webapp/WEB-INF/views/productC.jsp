<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
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





<!-- 
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 -->

</head>
<body>

<div style="margin: 10px 15px;" class="new_title center">
								<h2>Best Seller</h2>
							</div>
		<!-- Item -->

		<c:forEach var="pro" items="${listPro}">
			<div style="margin-bottom: 24px" class="col-md-3">
				<div class="item">
					<div class="col-item">
						<div class="sale-label sale-top-right">Sale</div>
						<div class="product-image-area">
							<a class="product-image" title="${pro.getProductName()}"
								href="${pageContext.request.contextPath}/showDetail/${pro.getProductID()}"> 
								<img width="270px" height="270px" alt=""  src="${pro.getImageUrl()}">
							</a>
						</div>
						<div class="actions-links">
							<span class="add-to-links"> <a title="magik-btn-quickview"
								class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a>
								<a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add
										to Wishlist</span></a> <a title="Add to Compare" class="link-compare"
								href="#"><span>Add to Compare</span></a></span>
						</div>
						<div class="info">
							<div class="info-inner">
								<div class="item-title">
									<a title=" Sample Product" href="${pageContext.request.contextPath}/showDetail/${pro.getProductID()}"> <c:out
											value="${pro.getProductName()}"></c:out>
									</a>
								</div>
								<!--item-title-->
								<div class="item-content">
									<div class="ratings">
										<div class="rating-box">
											<div style="width: 60%" class="rating"></div>
										</div>
									</div>
									<div class="price-box">
										<p class="special-price">
											<span class="price"> ${pro.getPrice()}</span>
										</p>
										<p class="old-price">
											<span class="price-sep">-</span> <span class="price">
												${pro.getPrice()} </span>
										</p>
									</div>
								</div>
								<!--item-content-->
							</div>
							<!--info-inner-->
							<div class="actions">
								<a
									href="${pageContext.request.contextPath}/shoppingcart/ordernow/${pro.getProductID()}">
									<button type="button" title="Add to Cart"
										class="button btn-cart">
										<span>Add to Cart</span>
									</button>
								</a>
							</div>
							<!--actions-->

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>







		</c:forEach>


</body>
</html>
