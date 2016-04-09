<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- saved from url=(0076)http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="utf-8" />
<title>Login</title>

<!-- Favicons Icon -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/assets2/images/logoN_icon4.png" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets2/images/logoN_icon4.png" type="image/x-icon" />
<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS Style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/animate.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/owl.theme.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/font-awesome.css" type="text/css">


<!-- Google Fonts -->
<link href="./Eclipse, premium HTML5 &amp; CSS3 template_files/css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="page">
  <header class="header-container">
    <div class="header-top">
      <div class="container">
        <div class="row"> 
          <!-- Header Language -->
          <div class="col-xs-6">
            <div class="dropdown block-language-wrapper"> <a role="button" data-toggle="dropdown" data-target="#" class="block-language dropdown-toggle" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/english.png" alt="language"> English <span class="caret"></span> </a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/english.png" alt="language"> English </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/francais.png" alt="language"> French </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/german.png" alt="language"> German </a></li>
              </ul>
            </div>
            
            <!-- End Header Language --> 
            
            <!-- Header Currency -->
            <div class="dropdown block-currency-wrapper"> <a role="button" data-toggle="dropdown" data-target="#" class="block-currency dropdown-toggle" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> USD <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> $ - Dollar </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> Â£ - Pound </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> â¬ - Euro </a></li>
              </ul>
            </div>
            
            <!-- End Header Currency -->
            
            <div class="welcome-msg hidden-xs"> Default welcome msg! </div>
          </div>
          <div class="col-xs-6"> 
            
            <!-- Header Top Links -->
            <div class="toplinks">
              <div class="links">
                <div class="myaccount"><a title="My Account" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html"><span class="hidden-xs">My Account</span></a></div>
                <div class="wishlist"><a title="My Wishlist" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/wishlist.html"><span class="hidden-xs">Wishlist</span></a></div>
                <div class="check"><a title="Checkout" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/checkout.html"><span class="hidden-xs">Checkout</span></a></div>
                <div class="login"><a title="Login" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html"><span class="hidden-xs">Log In</span></a></div>
              </div>
            </div>
            <!-- End Header Top Links --> 
          </div>
        </div>
      </div>
    </div>
    <div class="header container">
      <div class="row">
        <div class="col-lg-2 col-sm-3 col-md-2"> 
          <!-- Header Logo --> 
          <a class="logo" title="Magento Commerce" href="index.html"><img alt="Magento Commerce" src="${pageContext.request.contextPath}/resources/assets2/images/logoN_thetime.png"></a>
          <!-- End Header Logo --> 
        </div>
        <div class="col-lg-8 col-sm-6 col-md-8"> 
          <!-- Search-col -->
          <div class="search-box">
            <form action="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/cat" method="POST" id="search_mini_form" name="Categories">
              <select name="category_id" class="cate-dropdown hidden-xs">
                <option value="0">All Categories</option>
                <option value="36">Camera</option>
                <option value="37">Electronics</option>
                <option value="42">&nbsp;&nbsp;&nbsp;Cell Phones</option>
                <option value="43">&nbsp;&nbsp;&nbsp;Cameras</option>
                <option value="44">&nbsp;&nbsp;&nbsp;Laptops</option>
                <option value="45">&nbsp;&nbsp;&nbsp;Hard Drives</option>
                <option value="46">&nbsp;&nbsp;&nbsp;Monitors</option>
                <option value="47">&nbsp;&nbsp;&nbsp;Mouse</option>
                <option value="48">&nbsp;&nbsp;&nbsp;Digital Cameras</option>
                <option value="38">Desktops</option>
                <option value="39">Computer Parts</option>
                <option value="40">Televisions</option>
                <option value="41">Featured</option>
              </select>
              <input type="text" placeholder="Search here..." value="" maxlength="70" class="" name="search" id="search">
              <button id="submit-button" class="search-btn-bg"><span>Search</span></button>
            </form>
          </div>
          <!-- End Search-col --> 
        </div>
        <!-- Top Cart -->
        <div class="col-lg-2 col-sm-3 col-md-2">
          <div class="top-cart-contain">
            <div class="mini-cart">
              <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <i class="glyphicon glyphicon-shopping-cart"></i>
                <div class="cart-box"><span class="title">cart</span><span id="cart-total">2 item </span></div>
                </a></div>
              <div>
                <div style="display: none;" class="top-cart-content arrow_box">
                  <div class="block-subtitle">Recently added item(s)</div>
                  <ul id="cart-sidebar" class="mini-products-list">
                    <li class="item even"> <a class="product-image" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Downloadable Product "><img alt="Downloadable Product " src="./Eclipse, premium HTML5 &amp; CSS3 template_files/p3.jpg" width="80"></a>
                      <div class="detail-item">
                        <div class="product-details"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Remove This Item" onclick="" class="glyphicon glyphicon-remove">&nbsp;</a> <a class="glyphicon glyphicon-pencil" title="Edit item" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">&nbsp;</a>
                          <p class="product-name"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Downloadable Product">Downloadable Product </a> </p>
                        </div>
                        <div class="product-details-bottom"> <span class="price">$100.00</span> <span class="title-desc">Qty:</span> <strong>1</strong> </div>
                      </div>
                    </li>
                    <li class="item last odd"> <a class="product-image" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="  Sample Product "><img alt="  Sample Product " src="./Eclipse, premium HTML5 &amp; CSS3 template_files/p2.jpg" width="80"></a>
                      <div class="detail-item">
                        <div class="product-details"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Remove This Item" onclick="" class="glyphicon glyphicon-remove">&nbsp;</a> <a class="glyphicon glyphicon-pencil" title="Edit item" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">&nbsp;</a>
                          <p class="product-name"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="  Sample Product "> Sample Product </a> </p>
                        </div>
                        <div class="product-details-bottom"> <span class="price">$320.00</span> <span class="title-desc">Qty:</span> <strong>2</strong> </div>
                      </div>
                    </li>
                  </ul>
                  <div class="top-subtotal">Subtotal: <span class="price">$420.00</span></div>
                  <div class="actions">
                    <button class="btn-checkout" type="button"><span>Checkout</span></button>
                    <button class="view-cart" type="button"><span>View Cart</span></button>
                  </div>
                </div>
              </div>
            </div>
            <div id="ajaxconfig_info" style="display:none"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/"></a>
              <input value="" type="hidden">
              <input id="enable_module" value="1" type="hidden">
              <input class="effect_to_cart" value="1" type="hidden">
              <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
            </div>
          </div>
        </div>
        <!-- End Top Cart --> 
      </div>
    </div>
  </header>
  <!-- end header -->
  <nav>
    <div class="container">
      <div class="nav-inner"> 
        <!-- mobile-menu -->
        <div class="hidden-desktop" id="mobile-menu">
          <ul class="navmenu">
            <li>
              <div class="menutop">
                <div class="toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></div>
                <h2>Menu</h2>
              </div>
              <ul style="display:none;" class="submenu">
                <li>
                  <ul class="topnav">
                    <li class="level0 nav-6 level-top first parent"> <a class="level-top" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <span>Pages</span> </a><em>+</em>
                      <ul class="level0">
                        <li class="level1 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/grid.html"><span>Grid</span></a></li>
                        <li class="level1 nav-10-2"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/list.html"> <span>List</span> </a> </li>
                        <li class="level1 nav-10-3"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/product-detail.html"> <span>Product Detail</span> </a> </li>
                        <li class="level1 nav-10-4"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/shopping-cart.html"> <span>Shopping Cart</span> </a> </li>
                        <li class="level1 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/checkout.html"><span>Checkout</span></a> </li>
                        <li class="level1 nav-10-4"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/wishlist.html"> <span>Wishlist</span> </a> </li>
                        <li class="level1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/dashboard.html"> <span>Dashboard</span> </a> </li>
                        <li class="level1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/multiple-addresses.html"> <span>Multiple Addresses</span> </a> </li>
                        <li class="level1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/about.html"> <span>About us</span> </a> </li>
                        <li class="level1"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/blog.html"><span>Blog</span></a> </li>
                        <li class="level1"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/contact.html"><span>Contact us</span></a> </li>
                       
                        <li class="level1"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/404error.html"><span>404 Error Page</span></a> </li>
                      </ul>
                    </li>
                    <li class="level0 nav-7 level-top parent"> <a class="level-top" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/grid.html"> <span>Fashion</span> </a> </li>
                    <li class="level0 nav-8 level-top parent"> <a class="level-top" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/grid.html"> <span>Women</span> </a> </li>
                    <li class="level0 nav-10 level-top "> <a class="level-top" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/blog.html"> <span>Blog</span> </a> </li>
                    <li class="level0 nav-9 level-top last parent "> <a class="level-top" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/contact.html"> <span>Contact</span> </a> </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <!--navmenu--> 
        </div>
        <script type="text/javascript">
jQuery(document).ready(function() {
jQuery('.toggle').click(function() {
if (jQuery('.submenu').is(":hidden"))
{
jQuery('.submenu').slideDown("fast");
} else {
jQuery('.submenu').slideUp("fast");
}
return false;
});
});

/*Phone Menu*/
jQuery(document).ready(function() {
jQuery(".topnav").accordion({
accordion:false,
speed: 300,
closedSign: '+',
openedSign: '-'
});
});
</script> 
        
        <!--End mobile-menu -->
        <ul id="nav" class="hidden-xs">
          <li id="nav-home" class="level0 parent drop-menu"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/index.html"><span>Home</span> </a>
            <ul class="level1" style="display: none;">
              <li class="level1 first parent"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/index-2.html"><span>Home Version 2</span></a> </li>
              <li class="level1 parent"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/flexslider.html"><span>Flex Slider</span></a> </li>
              <li class="level1 parent"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/nivo-slider.html"><span>Nivo Slider</span></a> </li>
            </ul>
          </li>
          <li class="level0 parent drop-menu"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Pages</span> </a>
            <ul style="display: none;" class="level1">

              <li class="level1 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/grid.html"><span>Grid</span></a></li>
              <li class="level1 nav-10-2"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/list.html"> <span>List</span> </a> </li>
              <li class="level1 nav-10-3"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/product-detail.html"> <span>Product Detail</span> </a> </li>
              <li class="level1 nav-10-4"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/shopping-cart.html"> <span>Shopping Cart</span> </a> </li>
              <li class="level1 first parent"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/checkout.html"><span>Checkout</span></a>
                <ul class="level2">
                  <li class="level2 nav-2-1-1 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/checkout-method.html"><span>Checkout Method</span></a></li>
                  <li class="level2 nav-2-1-5 last"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/checkout-billing-info.html"><span>Checkout Billing Info</span></a></li>
                </ul>
              </li>
              <li class="level1 nav-10-4"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/wishlist.html"> <span>Wishlist</span> </a> </li>
              <li class="level1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/dashboard.html"> <span>Dashboard</span> </a> </li>
              <li class="level1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/multiple-addresses.html"> <span>Multiple Addresses</span> </a> </li>
              <li class="level1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/about.html"> <span>About us</span> </a> </li>
              <li class="level1 first parent"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/blog.html"><span>Blog</span></a>
                <ul class="level2">
                  <li class="level2 nav-2-1-1 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/blog-detail.html"><span>Blog Detail</span></a></li>
                </ul>
              </li>
              <li class="level1"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/contact.html"><span>Contact us</span></a> </li>
              
              <li class="level1"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/404error.html"><span>404 Error Page</span></a> </li>
            </ul>
          </li>
          <li class="level0 nav-6 level-top parent"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/grid.html" class="level-top"> <span>Fashion</span> </a>
            <div class="level0-wrapper dropdown-6col" style="left: 0pt; display: none;">
              <div class="level0-wrapper2">
                <div class="nav-block nav-block-center grid12-8 itemgrid itemgrid-4col">
                  <ul class="level0">
                    <li class="level1 nav-7-1 first parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <span>Women</span> </a>
                      <ul class="level1">
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Skirts</a></li>
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Shorts</a></li>
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Premium Pants</a></li>
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Khakis</a></li>
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Casual Pants</a></li>
                      </ul>
                    </li>
                    <li class="level1 nav-7-3 parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <span>Men</span> </a>
                      <ul class="level1">
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Casual Dresses</a></li>
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Sunglasses</a></li>
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Sport Shoes</a></li>
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Jeans</a></li>
                        <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Watches</a></li>
                      </ul>
                    </li>
                    <li class="level1 nav-7-4 parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <span>Girls</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-2-1-1 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Shirts</span></a></li>
                        <li class="level2 nav-2-1-2"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>T-shirts</span></a></li>
                        <li class="level2 nav-2-1-3"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Suits</span></a></li>
                        <li class="level2 nav-2-1-4"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Blazers</span></a></li>
                        <li class="level2 nav-2-1-5 last"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Trousers</span></a></li>
                      </ul>
                    </li>
                    <li class="level1 nav-7-4 last parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <span>Boys</span> </a>
                      <ul class="level1">
                        <li class="level2 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Dresses</span></a></li>
                        <li class="level2 nav-1-1-2"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Jumpsuits</span></a></li>
                        <li class="level2 nav-1-1-3"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Shirts &amp; Tops</span></a></li>
                        <li class="level2 nav-1-1-4"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Shorts &amp; Skirts</span></a></li>
                        <li class="level2 nav-1-1-5 last"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Sleepwear</span></a></li>
                      </ul>
                    </li>
                  </ul>
                  <div class="fur-des">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa.</p>
                  </div>
                </div>
                <div class="nav-block nav-block-right std grid12-4">
                  <div class="static-img-block"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/nav-img1.jpg" alt="Responsive"></a></div>
                  <h3 class="heading">Responsive Magento Theme</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor.</p>
                  <a title="Shop collection now" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" class="btn-button-st">Shop collection now</a> </div>
              </div>
            </div>
          </li>
          <li class="level0 nav-5 level-top first"> <a class="level-top" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/grid.html"> <span>Women</span> </a>
            <div style="display: none; left: 0px;" class="level0-wrapper dropdown-6col">
              <div class="level0-wrapper2">
                <div class="nav-block nav-block-center">
                  <ul class="level0">
                    <li class="level1 nav-6-1 parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Styliest Bag</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/clutch-handbags.html"><span>Clutch Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/diaper-bags.html"><span>Diaper Bags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/bags.html"><span>Bags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/hobo-handbags.html"><span>Hobo Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                    <li class="level1 nav-6-1 parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/material-bag.html"><span>Material Bag</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/beaded-handbags.html"><span>Beaded Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/fabric-handbags.html"><span>Fabric Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/handbags.html"><span>Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/leather-handbags.html"><span>Leather Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                    <li class="level1 nav-6-1 parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/shoes.html"><span>Shoes</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/shoes/flat-shoes.html"><span>Flat Shoes</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/shoes/flat-sandals.html"><span>Flat Sandals</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/shoes/boots.html"><span>Boots</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/shoes/heels.html"><span>Heels</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                    <li class="level1 nav-6-1 parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/jwellery.html"><span>Jwellery</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/jwellery/bracelets.html"><span>Bracelets</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/jwellery/necklaces-pendants.html"><span>Necklaces &amp; Pendants</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/jwellery/pendants.html"><span>Pendants</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/jwellery/pins-brooches.html"><span>Pins &amp; Brooches</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                    <li class="level1 nav-6-1 parent item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/swimwear.html"><span>Swimwear</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/swimwear/swimsuits.html"><span>Swimsuits</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/swimwear/beach-clothing.html"><span>Beach Clothing</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/swimwear/clothing.html"><span>Clothing</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/swimwear/bikinis.html"><span>Bikinis</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                  </ul>
                  <!--level0--> 
                </div>
              </div>
              <div class="nav-add">
                <div class="push_item">
                  <div class="push_img"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <img alt="women_jwellery" src="./Eclipse, premium HTML5 &amp; CSS3 template_files/women_jwellery.png"> </a> </div>
                </div>
                <div class="push_item push_item_last">
                  <div class="push_img"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"> <img alt="women_bag" src="./Eclipse, premium HTML5 &amp; CSS3 template_files/women_bag.png"> </a> </div>
                </div>
                <br class="clear">
              </div>
            </div>
          </li>
          <li class="level0 parent drop-menu"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/grid.html"><span>Sub menu </span> 
            <!--<span class="category-label-hot">Hot</span> --> 
            </a>
            <ul style="display: none;" class="level1">
              <li class="level1 first parent"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Submenu</span></a>
                <ul class="level2">
                  <li class="level2 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu1</span></a></li>
                  <li class="level2 nav-1-1-2"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu1</span></a></li>
                  <li class="level2 nav-1-1-3"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu2</span></a></li>
                  <li class="level2 nav-1-1-4"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu3</span></a></li>
                  <li class="level2 nav-1-1-5 last"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu4</span></a></li>
                </ul>
              </li>
              <li class="level1 first parent"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Submenu</span></a>
                <ul class="level2">
                  <li class="level2 first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu1</span></a></li>
                  <li class="level2 nav-1-1-2"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu1</span></a></li>
                  <li class="level2 nav-1-1-3"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu2</span></a></li>
                  <li class="level2 nav-1-1-4"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu3</span></a></li>
                  <li class="level2 nav-1-1-5 last"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Menu4</span></a></li>
                </ul>
              </li>
              <li class="level1 parent"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Submenu</span></a> </li>
            </ul>
          </li>
          <li class="level0 nav-8 level-top"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/blog.html" class="level-top"> <span>Blog</span> </a> </li>
          <li class="level0 nav-8 level-top"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/contact.html" class="level-top"> <span>Contact</span> </a> </li>
          <li class="nav-custom-link level0 level-top parent"> <a class="level-top" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><span>Custom</span></a>
            <div class="level0-wrapper custom-menu" style="left: 0px; display: none;">
              <div class="header-nav-dropdown-wrapper clearer">
                <div class="grid12-5">
                  <div class="custom_img"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/custom-img1.jpg" alt="custom img1"></a></div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.</p>
                </div>
                <div class="grid12-5">
                  <div class="custom_img"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/custom-img2.jpg" alt="custom img2"></a></div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.</p>
                </div>
                <div class="grid12-5">
                  <div class="custom_img"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/custom-img3.jpg" alt="custom img3"></a></div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.</p>
                </div>
                <div class="grid12-5">
                  <div class="custom_img"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/custom-img4.jpg" alt="custom img4"></a></div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.</p>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <script type="text/javascript">
        //<![CDATA[

            jQuery(function($) {
                $("#nav > li").hover(function() {

                    var el = $(this).find(".level0-wrapper");


                    el.hide();
                    el.css("left", "0");
                    el.stop(true, true).delay(150).fadeIn(300, "easeOutCubic");
                }, function() {
                    $(this).find(".level0-wrapper").stop(true, true).delay(300).fadeOut(300, "easeInCubic");
                });
            });

            var isTouchDevice = ('ontouchstart' in window) || (navigator.msMaxTouchPoints > 0);
            jQuery(window).on("load", function() {

                if (isTouchDevice)
                {
                    jQuery('#nav a.level-top').click(function(e) {
                        $t = jQuery(this);
                        $parent = $t.parent();
                        if ($parent.hasClass('parent'))
                        {
                            if ( !$t.hasClass('menu-ready'))
                            {                    
                                jQuery('#nav a.level-top').removeClass('menu-ready');
                                $t.addClass('menu-ready');
                                return false;
                            }
                            else
                            {
                                $t.removeClass('menu-ready');
                            }
                        }
                    });
                }

            }); //end: on load

        //]]>
        </script> 
    <script type="text/javascript">
//<![CDATA[
    jQuery(document).ready(function(){
        var scrolled = false;
        jQuery("#nav li.level0.drop-menu").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul.level1').fadeIn(100);
            }
            return false;
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul.level1').fadeOut(100);
            }
            return false;
        });
        jQuery("#nav li.level0.drop-menu li").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul').css({top:0,left:"165px"});
                var offset = jQuery(this).offset();
                if(offset && (jQuery(window).width() < offset.left+325)){
                    jQuery(this).children('ul').removeClass("right-sub");
                    jQuery(this).children('ul').addClass("left-sub");
                    jQuery(this).children('ul').css({top:0,left:"-167px"});
                } else {
                    jQuery(this).children('ul').removeClass("left-sub");
                    jQuery(this).children('ul').addClass("right-sub");
                }
                jQuery(this).children('ul').fadeIn(100);
            }
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul').fadeOut(100);
            }
        });
        

    });
//]]>
</script> 
    <script type="text/javascript">
    
$(window).scroll(function() {
    if ($(this).scrollTop() > 1){  
        $('nav').addClass("sticky");
    }
    else{
        $('nav').removeClass("sticky");
    }
});
</script> 
  </nav>
  <!-- end nav -->
  <section class="main-container col1-layout">
    <div class="main container">
      <div class="account-login">
        <div class="page-title">
          <h2>Login or Create an Account</h2>
        </div>
        <fieldset class="col2-set">
          <legend>Login or Create an Account</legend>
          <div class="col-1 new-users"><strong>New Customers</strong>
            <div class="content">
              <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
              <div class="buttons-set">
                <button onclick="window.location=&#39;http://demo.magentomagik.com/computerstore/customer/account/create/&#39;;" class="button create-account" type="button"><span>Create an Account</span></button>
              </div>
            </div>
          </div>
          <div class="col-2 registered-users"><strong>Registered Customers</strong>
            <div class="content">
              <p>If you have an account with us, please log in.</p>
              <h5 style="color: red">${login }</h5>
              <form action="loginClient" method="POST">
              <ul class="form-list">
                <li>
                  <label for="email">Email Address <span class="required">*</span></label>
                  <br>
                  <input type="email" title="Email Address" class="input-text required-entry" id="email" value="" name="txtEmail" required="required">
                </li>
                <li>
                  <label for="pass">Password <span class="required">*</span></label>
                  <br>
                  <input type="password" title="Password" id="pass" class="input-text required-entry validate-password" name="txtPass" required="required">
                </li>
              </ul>
              <p class="required">* Required Fields</p>
              <div class="buttons-set">
                <button id="send2" name="send" type="submit" class="button login"><span>Login</span></button>
                <a class="forgot-word" href="http://demo.magentomagik.com/computerstore/customer/account/forgotpassword/">Forgot Your Password?</a> </div>
            </div>
            </form>
          </div>
        </fieldset>
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
    </div>
  </section>
  <footer class="footer">
    <div class="brand-logo ">
      <div class="container">
        <div class="slider-items-products">
          <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
            <div class="slider-items slider-width-col6 owl-carousel owl-theme" style="opacity: 1; display: block;"> 
              
              <!-- Item -->
              <div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 2912px; left: 0px; display: block;"><div class="owl-item" style="width: 182px;"><div class="item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#x"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/b-logo1.png" alt="Image"></a> </div></div><div class="owl-item" style="width: 182px;"><div class="item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#x"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/b-logo2.png" alt="Image"></a> </div></div><div class="owl-item" style="width: 182px;"><div class="item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#x"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/b-logo3.png" alt="Image"></a> </div></div><div class="owl-item" style="width: 182px;"><div class="item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#x"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/b-logo4.png" alt="Image"></a> </div></div><div class="owl-item" style="width: 182px;"><div class="item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#x"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/b-logo5.png" alt="Image"></a> </div></div><div class="owl-item" style="width: 182px;"><div class="item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#x"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/b-logo6.png" alt="Image"></a> </div></div><div class="owl-item" style="width: 182px;"><div class="item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#x"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/b-logo1.png" alt="Image"></a> </div></div><div class="owl-item" style="width: 182px;"><div class="item"> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#x"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/b-logo4.png" alt="Image"></a> </div></div></div></div>
              <!-- End Item --> 
              
              <!-- Item -->
              
              <!-- End Item --> 
              
              <!-- Item -->
              
              <!-- End Item --> 
              
              <!-- Item -->
              
              <!-- End Item --> 
              
              <!-- Item -->
              
              <!-- End Item --> 
              
              <!-- Item -->
              
              <!-- End Item --> 
              
              <!-- Item -->
              
              <!-- End Item --> 
              
              <!-- Item -->
              
              <!-- End Item --> 
              
            <div class="owl-controls clickable"><div class="owl-buttons"><div class="owl-prev"><a class="flex-prev"></a></div><div class="owl-next"><a class="flex-next"></a></div></div></div></div>
          </div>
        </div>
        <script type="text/javascript">
//<![CDATA[
	jQuery(document).ready(function($) {
		jQuery("#brand-logo-slider .slider-items").owlCarousel({
			autoplay : true,
			items : 6, //10 items above 1000px browser width
	    	itemsDesktop : [1024,4], //5 items between 1024px and 901px
	      	itemsDesktopSmall : [900,3], // 3 items betweem 900px and 601px
	      	itemsTablet: [600,2], //2 items between 600 and 0;
	      	itemsMobile : [320,1],
	      	navigation : true,
	      	navigationText : ["<a class=\"flex-prev\"></a>","<a class=\"flex-next\"></a>"],
	      	slideSpeed : 500,
	      	pagination : false
			
    	});
	}); 
//]]>
</script> 
      </div>
    </div>
    <div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-6 col-md-7">
            <div class="block-subscribe">
              <div class="newsletter">
                <form>
                  <h4>newsletter</h4>
                  <input type="text" placeholder="Enter your email address" class="input-text required-entry validate-email" title="Sign up for our newsletter" id="newsletter1" name="email">
                  <button class="subscribe" title="Subscribe" type="submit"><span>Subscribe</span></button>
                </form>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-5">
            <div class="social">
              <ul>
                <li class="fb"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"></a></li>
                <li class="tw"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"></a></li>
                <li class="googleplus"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"></a></li>
                <li class="rss"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"></a></li>
                <li class="pintrest"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"></a></li>
                <li class="linkedin"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"></a></li>
                <li class="youtube"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#"></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-middle">
      <div class="col-md-3 col-sm-4">
        <div class="footer-logo"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/index.html" title="Logo"><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/logo.png" alt="logo"></a></div>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus diam arcu. </p>
        <div class="payment-accept">
          <div><img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/payment-1.png" alt="payment"> <img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/payment-2.png" alt="payment"> <img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/payment-3.png" alt="payment"> <img src="./Eclipse, premium HTML5 &amp; CSS3 template_files/payment-4.png" alt="payment"></div>
        </div>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Shopping Guide</h4>
        <ul class="links">
          <li class="first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="How to buy">How to buy</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="FAQs">FAQs</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Payment">Payment</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Shipment&lt;/a&gt;">Shipment</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Where is my order?">Where is my order?</a></li>
          <li class="last"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Return policy">Return policy</a></li>
        </ul>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Style Advisor</h4>
        <ul class="links">
          <li class="first"><a title="Your Account" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html">Your Account</a></li>
          <li><a title="Information" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Information</a></li>
          <li><a title="Addresses" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Addresses</a></li>
          <li><a title="Addresses" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Discount</a></li>
          <li><a title="Orders History" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Orders History</a></li>
          <li class="last"><a title=" Additional Information" href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">Additional Information</a></li>
        </ul>
      </div>
      <div class="col-md-2 col-sm-4">
        <h4>Information</h4>
        <ul class="links">
          <li class="first"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Site Map">Site Map</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#/" title="Search Terms">Search Terms</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Advanced Search">Advanced Search</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/contact.html" title="Contact Us">Contact Us</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Suppliers">Suppliers</a></li>
          <li class=" last"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Our stores" class="link-rss">Our stores</a></li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-4">
        <h4>Contact us</h4>
        <div class="contacts-info">
          <address>
          <i class="add-icon">&nbsp;</i>123 Main Street, Anytown, <br>
          &nbsp;CA 12345  USA
          </address>
          <div class="phone-footer"><i class="phone-icon">&nbsp;</i> +1 800 123 1234</div>
          <div class="email-footer"><i class="email-icon">&nbsp;</i> <a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#">support@magikcommerce.com</a> </div>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="col-sm-5 col-xs-12 coppyright"> Â© 2015 Magikcommerce. All Rights Reserved.</div>
      <div class="col-sm-7 col-xs-12 company-links">
        <ul class="links">
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Magento Themes">Magento Themes</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Premium Themes">Premium Themes</a></li>
          <li><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Responsive Themes">Responsive Themes</a></li>
          <li class="last"><a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" title="Magento Extensions">Magento Extensions</a></li>
        </ul>
      </div>
    </div>
  </footer>
  <!-- End Footer --> 
</div>

<!-- JavaScript -->
<script type="text/javascript" src="./Eclipse, premium HTML5 &amp; CSS3 template_files/jquery.min.js"></script>
<script type="text/javascript" src="./Eclipse, premium HTML5 &amp; CSS3 template_files/bootstrap.min.js"></script>
<script type="text/javascript" src="./Eclipse, premium HTML5 &amp; CSS3 template_files/parallax.js"></script>
<script type="text/javascript" src="./Eclipse, premium HTML5 &amp; CSS3 template_files/common.js"></script>
<script type="text/javascript" src="./Eclipse, premium HTML5 &amp; CSS3 template_files/owl.carousel.min.js"></script>

<a href="http://htmldemo.magikcommerce.com/ecommerce/eclipse-html-template/login.html#" id="toTop" style="display: none;"><span id="toTopHover"></span></a></body></html>