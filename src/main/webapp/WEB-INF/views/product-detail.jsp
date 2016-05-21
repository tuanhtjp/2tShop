<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- CSS Style -->

<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/assets2/js/cloud-zoom.js"></script>

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

<!-- fb like -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- follow -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- comment -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>


<section class="main-container col1-layout">
    <div class="main container">
      <div class="col-main">
		<div class="row">
          <div class="product-view">
            <div class="product-essential">
              <form:form action="${pageContext.request.contextPath}/showDetail/{productID}/${pro.productID}"
				method="get" modelAttribute="product" id="product_addtocart_form">
                <input name="form_key" value="6UbXroakyQlbfQzK" type="hidden">
                <div class="product-img-box col-sm-5 wow bounceInRight animated animated" style="visibility: visible;">
                  <div class="new-label new-top-left"> New </div>
                  <div class="product-image">
                    <div class="large-image"> <a href="${pageContext.request.contextPath}/${pro.getImageUrl()}" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20" style="position: relative; display: block;">
                     <img src="${pageContext.request.contextPath}/${pro.getImageUrl()}" style="display: block;"> 
                    <div class="cloud-zoom-lens" style="z-index: 98; position: absolute; width: 299.663px; height: 299.663px; opacity: 0.5; left: 17px; top: 158.337px; background-position: -17px -158.337px;"></div></a> 
                    <div class="mousetrap" style="z-index: 999; position: absolute; width: 458px; height: 458px; left: 0px; top: 0px; cursor: auto; background-image: url(&quot;.&quot;);"></div>
                    <div id="cloud-zoom-big" class="cloud-zoom-big" style="position: absolute; left: 478px; top: 0px; width: 458px; height: 458px; z-index: 99; 
                    /* background-image: url(&quot;http://htmldemo.magikthemes.com/ecommerce/eclipse-html-template/products-images/p4.jpg&quot;); */ background-position: -35px -241px;"></div></div>
                    <div class="flexslider flexslider-thumb">
                      
                    <div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="previews-list slides" style="width: 1000%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
                        <li style="width: 76px; float: left; display: block;"><a href="${pageContext.request.contextPath}/resources/assets2/images/p6.jpg" class="cloud-zoom-gallery" rel="useZoom: &#39;zoom1&#39;, smallImage: &#39;${pageContext.request.contextPath}/resources/assets2/images/p6.jpg&#39; "><img src="${pageContext.request.contextPath}/resources/assets2/images/p6.jpg" alt="Thumbnail 1" draggable="false"></a></li>
                        <li style="width: 76px; float: left; display: block;"><a href="${pageContext.request.contextPath}/resources/assets2/images/p10.jpg" class="cloud-zoom-gallery" rel="useZoom: &#39;zoom1&#39;, smallImage: &#39;${pageContext.request.contextPath}/resources/assets2/images/p10.jpg&#39; "><img src="${pageContext.request.contextPath}/resources/assets2/images/p10.jpg" alt="Thumbnail 2" draggable="false"></a></li>
                        <li style="width: 76px; float: left; display: block;"><a href="${pageContext.request.contextPath}/resources/assets2/images/p3.jpg" class="cloud-zoom-gallery" rel="useZoom: &#39;zoom1&#39;, smallImage: &#39;${pageContext.request.contextPath}/resources/assets2/images/p3.jpg&#39; "><img src="${pageContext.request.contextPath}/resources/assets2/images/p3.jpg" alt="Thumbnail 1" draggable="false"></a></li>
                        <li style="width: 76px; float: left; display: block;"><a href="${pageContext.request.contextPath}/resources/assets2/images/p4.jpg" class="cloud-zoom-gallery" rel="useZoom: &#39;zoom1&#39;, smallImage: &#39;${pageContext.request.contextPath}/resources/assets2/images/p4.jpg&#39; "><img src="${pageContext.request.contextPath}/resources/assets2/images/p4.jpg" alt="Thumbnail 2" draggable="false"></a></li>
                        <li style="width: 76px; float: left; display: block;"><a href="${pageContext.request.contextPath}/resources/assets2/images/p5.jpg" class="cloud-zoom-gallery" rel="useZoom: &#39;zoom1&#39;, smallImage: &#39;${pageContext.request.contextPath}/resources/assets2/images/p5.jpg&#39; "><img src="${pageContext.request.contextPath}/resources/assets2/images/p5.jpg" alt="Thumbnail 2" draggable="false"></a></li>
                      </ul></div><ul class="flex-direction-nav"><li><a class="flex-prev flex-disabled" href="${pageContext.request.contextPath}/showDetail/${pro.getProductID()}" tabindex="-1"></a></li><li><a class="flex-next" href="${pageContext.request.contextPath}/showDetail/${pro.getProductID()}"></a></li></ul></div>
                  </div>
                  
                  <!-- end: more-images -->
                  
                  <div class="clear"></div>
                </div>
                <div class="product-shop col-sm-7 wow bounceInLeft animated animated" style="visibility: visible;">
                  <div class="product-next-prev"> <a class="product-next" href="http://htmldemo.magikthemes.com/ecommerce/eclipse-html-template/product-detail.html#"><span></span></a> <a class="product-prev" href="http://htmldemo.magikthemes.com/ecommerce/eclipse-html-template/product-detail.html#"><span></span></a> </div>
                  <div class="product-name">
                    <h1><c:out
											value="${pro.getProductName()}"></c:out></h1>
                  </div>
                  <div class="ratings">
                    <div class="rating-box">
                      <div style="width:60%" class="rating"></div>
                    </div>
                    <p class="rating-links"> <a href="http://htmldemo.magikthemes.com/ecommerce/eclipse-html-template/product-detail.html#">1 Review(s)</a> <span class="separator">|</span> <a href="http://htmldemo.magikthemes.com/ecommerce/eclipse-html-template/product-detail.html#">Add Your Review</a> </p>
                  </div>
                  <p class="availability in-stock"><span>In Stock</span></p>
                  <div class="price-block">
                    <div class="price-box">
                      <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> $ ${pro.getPrice()} </span> </p>
                      <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> $ ${pro.getPrice()} </span> </p>
                    </div>
                  </div>
                  <div class="short-description">
                    <h2>Quick Overview</h2>
                    <p>${pro.getDescription()}</p>
                  </div>
                  <div class="add-to-box">
                    <div class="add-to-cart">
                      <label for="qty">Quantity:</label>
                      <div class="pull-left">
                        <div class="custom pull-left">
                          <input type="text" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
                          <button onclick="var result = document.getElementById(&#39;qty&#39;); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="icon-plus">&nbsp;</i></button>
                          <button onclick="var result = document.getElementById(&#39;qty&#39;); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="icon-minus">&nbsp;</i></button>
                        </div>
                      </div>
                      <div class="">
                      <a
									href="${pageContext.request.contextPath}/shoppingcart/ordernow/${pro.getProductID()}">
                        <button onclick="productAddToCartForm.submit(this)" class="button btn-cart" title="Add to Cart" type="button"><span><i class="icon-basket"></i> Add to Cart</span></button></a>
                      </div>
                    </div>
                    <div class="email-addto-box">
                      <ul class="add-to-links">
                        <li> <a class="link-wishlist" href="http://htmldemo.magikthemes.com/ecommerce/eclipse-html-template/product-detail.html#"><span>Add to Wishlist</span></a></li>
                        <li><span class="separator">|</span> <a class="link-compare" href="http://htmldemo.magikthemes.com/ecommerce/eclipse-html-template/product-detail.html#"><span>Add to Compare</span></a></li>
                      </ul>
                      <p class="email-friend"><a href="http://htmldemo.magikthemes.com/ecommerce/eclipse-html-template/product-detail.html#" class=""><span>Email to a Friend</span></a></p>
                    </div>
                    
                    <div class="short-description">
						<div class="fb-comments"
							data-href="https://www.facebook.com/Tu&#x1ed5;i-Th&#x1a1;-559864064057359/"
							data-numposts="1"></div>
                  </div>
                </div>
              </form:form>
            </div>
            
          </div>
        </div>
		
   </div>
            
          </div>
        </section>
		
			
			

</body>
</html>
