<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>The Time</title>

<!-- Favicons Icon -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/assets2/images/logoN_icon4.png" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets2/images/logoN_icon4.png" type="image/x-icon" />

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS Style -->


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/css.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/style.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/revslider.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/owl.theme.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets2/css/animate.css" type="text/css">

<!-- Google Fonts -->
<link href='230px' rel='stylesheet' type='text/css'>
</head>

<body>
<div class="page"> 
  <!-- Header -->
  <header class="header-container">
    <div class="header-top">
      <div class="container">
        <div class="row"> 
          <!-- Header Language -->
          <div class="col-xs-6">
            <div class="dropdown block-language-wrapper"> <a role="button" data-toggle="dropdown" data-target="#" class="block-language dropdown-toggle" href="#"> <img src="${pageContext.request.contextPath}/resources/assets2/images/english.png" alt="language"> English <span class="caret"></span> </a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/english.png" alt="language"> English </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/francais.png" alt="language"> French </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/german.png" alt="language"> German </a></li>
              </ul>
            </div>
            
            <!-- End Header Language --> 
            
            <!-- Header Currency -->
            <div class="dropdown block-currency-wrapper"> <a role="button" data-toggle="dropdown" data-target="#" class="block-currency dropdown-toggle" href="#"> USD <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"> $ - Dollar </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"> £ - Pound </a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"> € - Euro </a></li>
              </ul>
            </div>
            
            <!-- End Header Currency -->
            
            <div class="welcome-msg hidden-xs"> Default welcome msg! </div>
          </div>
          <div class="col-xs-6"> 
            
            <!-- Header Top Links -->
            <div class="toplinks">
              <div class="links">
                <div class="myaccount"><a title="My Account" href="${pageContext.request.contextPath}/loginClient"><span class="hidden-xs">My Account</span></a></div>
                <div class="wishlist"><a title="My Wishlist"  href="wishlist.html"><span class="hidden-xs">Wishlist</span></a></div>
                <div class="check"><a title="Checkout" href="checkout.html"><span class="hidden-xs">Checkout</span></a></div>
                <div class="login"><a title="Login" href="${pageContext.request.contextPath}/loginClient"><span  class="hidden-xs">Log In</span></a></div>
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
            <form action="cat" method="POST" id="search_mini_form" name="Categories">
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
              <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#"> <i class="glyphicon glyphicon-shopping-cart"></i>
                <div class="cart-box"><span class="title">cart</span><span id="cart-total">2 item </span></div>
                </a></div>
              <div>
                <div style="display: none;" class="top-cart-content arrow_box">
                  <div class="block-subtitle">Recently added item(s)</div>
                  <ul id="cart-sidebar" class="mini-products-list">
                    <li class="item even"> <a class="product-image" href="#" title="Downloadable Product "><img alt="Downloadable Product " src="${pageContext.request.contextPath}/resources/assets2/images/p3.jpg" width="80"></a>
                      <div class="detail-item">
                        <div class="product-details"> <a href="#" title="Remove This Item" onClick="" class="glyphicon glyphicon-remove">&nbsp;</a> <a class="glyphicon glyphicon-pencil" title="Edit item" href="#">&nbsp;</a>
                          <p class="product-name"> <a href="#" title="Downloadable Product">Downloadable Product </a> </p>
                        </div>
                        <div class="product-details-bottom"> <span class="price">$100.00</span> <span class="title-desc">Qty:</span> <strong>1</strong> </div>
                      </div>
                    </li>
                    <li class="item last odd"> <a class="product-image" href="#" title="  Sample Product "><img alt="  Sample Product " src="images/p2.jpg" width="80"></a>
                      <div class="detail-item">
                        <div class="product-details"> <a href="#" title="Remove This Item" onClick="" class="glyphicon glyphicon-remove">&nbsp;</a> <a class="glyphicon glyphicon-pencil" title="Edit item" href="#">&nbsp;</a>
                          <p class="product-name"> <a href="#" title="  Sample Product "> Sample Product </a> </p>
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
            <div id="ajaxconfig_info" style="display:none"> <a href="#/"></a>
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
  <!-- Navbar -->
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
                    <li class="level0 nav-6 level-top first parent"> <a class="level-top" href="#"> <span>Pages</span> </a>
                      <ul class="level0">
                        <li class="level1 first"><a href="grid.html"><span>Grid</span></a></li>
                        <li class="level1 nav-10-2"> <a href="list.html"> <span>List</span> </a> </li>
                        <li class="level1 nav-10-3"> <a href="product-detail.html"> <span>Product Detail</span> </a> </li>
                        <li class="level1 nav-10-4"> <a href="shopping-cart.html"> <span>Shopping Cart</span> </a> </li>
                        <li class="level1 first"><a href="checkout.html"><span>Checkout</span></a> </li>
                        <li class="level1 nav-10-4"> <a href="wishlist.html"> <span>Wishlist</span> </a> </li>
                        <li class="level1"> <a href="dashboard.html"> <span>Dashboard</span> </a> </li>
                        <li class="level1"> <a href="multiple-addresses.html"> <span>Multiple Addresses</span> </a> </li>
                        <li class="level1"> <a href="about.html"> <span>About us</span> </a> </li>
                        <li class="level1"><a href="blog.html"><span>Blog</span></a> </li>
                        <li class="level1"><a href="contact.html"><span>Contact us</span></a> </li>
                       
                        <li class="level1"><a href="404error.html"><span>404 Error Page</span></a> </li>
                      </ul>
                    </li>
                    <li class="level0 nav-7 level-top parent"> <a class="level-top" href="grid.html"> <span>Fashion</span> </a> </li>
                    <li class="level0 nav-8 level-top parent"> <a class="level-top" href="grid.html"> <span>Women</span> </a> </li>
                    <li class="level0 nav-10 level-top "> <a class="level-top" href="blog.html"> <span>Blog</span> </a> </li>
                    <li class="level0 nav-9 level-top last parent "> <a class="level-top" href="contact.html"> <span>Contact</span> </a> </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <!--navmenu--> 
        </div>
       
        
        <!--End mobile-menu -->
        <ul id="nav" class="hidden-xs">
          <li id="nav-home" class="level0 parent drop-menu"><a href="index.html"><span>Home</span> </a>
            <ul class="level1" style="display: none;">
              <li class="level1 first parent"><a href="index-2.html"><span>Home Version 2</span></a> </li>
              <li class="level1 parent"><a href="flexslider.html"><span>Flex Slider</span></a> </li>
              <li class="level1 parent"><a href="nivo-slider.html"><span>Nivo Slider</span></a> </li>
            </ul>
          </li>
          <li class="level0 parent drop-menu"><a href="#"><span>Pages</span> </a>
            <ul style="display: none;" class="level1">
              <li class="level1 first"><a href="grid.html"><span>Grid</span></a></li>
              <li class="level1 nav-10-2"> <a href="list.html"> <span>List</span> </a> </li>
              <li class="level1 nav-10-3"> <a href="product-detail.html"> <span>Product Detail</span> </a> </li>
              <li class="level1 nav-10-4"> <a href="shopping-cart.html"> <span>Shopping Cart</span> </a> </li>
              <li class="level1 first parent"><a href="checkout.html"><span>Checkout</span></a>
                <ul class="level2">
                  <li class="level2 nav-2-1-1 first"><a href="checkout-method.html"><span>Checkout Method</span></a></li>
                  <li class="level2 nav-2-1-5 last"><a href="checkout-billing-info.html"><span>Checkout Billing Info</span></a></li>
                </ul>
              </li>
              <li class="level1 nav-10-4"> <a href="wishlist.html"> <span>Wishlist</span> </a> </li>
              <li class="level1"> <a href="dashboard.html"> <span>Dashboard</span> </a> </li>
              <li class="level1"> <a href="multiple-addresses.html"> <span>Multiple Addresses</span> </a> </li>
              <li class="level1"> <a href="about.html"> <span>About us</span> </a> </li>
              <li class="level1 first parent"><a href="blog.html"><span>Blog</span></a>
                <ul class="level2">
                  <li class="level2 nav-2-1-1 first"><a href="blog-detail.html"><span>Blog Detail</span></a></li>
                </ul>
              </li>
              <li class="level1"><a href="contact.html"><span>Contact us</span></a> </li>
              
              <li class="level1"><a href="404error.html"><span>404 Error Page</span></a> </li>
            </ul>
          </li>
          <li class="level0 nav-6 level-top parent"> <a href="grid.html" class="level-top"> <span>Fashion</span> </a>
            <div class="level0-wrapper dropdown-6col" style="left: 0pt; display: none;">
              <div class="level0-wrapper2">
                <div class="nav-block nav-block-center grid12-8 itemgrid itemgrid-4col">
                  <ul class="level0">
                    <li class="level1 nav-7-1 first parent item"> <a href="#"> <span>Women</span> </a>
                      <ul class="level1">
                        <li><a href="#">Skirts</a></li>
                        <li><a href="#">Shorts</a></li>
                        <li><a href="#">Premium Pants</a></li>
                        <li><a href="#">Khakis</a></li>
                        <li><a href="#">Casual Pants</a></li>
                      </ul>
                    </li>
                    <li class="level1 nav-7-3 parent item"> <a href="#"> <span>Men</span> </a>
                      <ul class="level1">
                        <li><a href="#">Casual Dresses</a></li>
                        <li><a href="#">Sunglasses</a></li>
                        <li><a href="#">Sport Shoes</a></li>
                        <li><a href="#">Jeans</a></li>
                        <li><a href="#">Watches</a></li>
                      </ul>
                    </li>
                    <li class="level1 nav-7-4 parent item"> <a href="#"> <span>Girls</span> </a>
                      <ul class="level1">
                        <li class="level2 nav-2-1-1 first"><a href="#"><span>Shirts</span></a></li>
                        <li class="level2 nav-2-1-2"><a href="#"><span>T-shirts</span></a></li>
                        <li class="level2 nav-2-1-3"><a href="#"><span>Suits</span></a></li>
                        <li class="level2 nav-2-1-4"><a href="#"><span>Blazers</span></a></li>
                        <li class="level2 nav-2-1-5 last"><a href="#"><span>Trousers</span></a></li>
                      </ul>
                    </li>
                    <li class="level1 nav-7-4 last parent item"> <a href="#"> <span>Boys</span> </a>
                      <ul class="level1">
                        <li class="level2 first"><a href="#"><span>Dresses</span></a></li>
                        <li class="level2 nav-1-1-2"><a href="#"><span>Jumpsuits</span></a></li>
                        <li class="level2 nav-1-1-3"><a href="#"><span>Shirts &amp; Tops</span></a></li>
                        <li class="level2 nav-1-1-4"><a href="#"><span>Shorts &amp; Skirts</span></a></li>
                        <li class="level2 nav-1-1-5 last"><a href="#"><span>Sleepwear</span></a></li>
                      </ul>
                    </li>
                  </ul>
                  <div class="fur-des">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa.</p>
                  </div>
                </div>
                <div class="nav-block nav-block-right std grid12-4">
                  <div class="static-img-block"><a href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/nav-img1.jpg" alt="Responsive"></a></div>
                  <h3 class="heading">Responsive Magento Theme</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor.</p>
                  <a title="Shop collection now" href="#" class="btn-button-st">Shop collection now</a> </div>
              </div>
            </div>
          </li>
          <li class="level0 nav-5 level-top first"> <a class="level-top" href="grid.html"> <span>Women</span> </a>
            <div style="display: none; left: 0px;" class="level0-wrapper dropdown-6col">
              <div class="level0-wrapper2">
                <div class="nav-block nav-block-center">
                  <ul class="level0">
                    <li class="level1 nav-6-1 parent item"> <a href="#"><span>Styliest Bag</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="#/clutch-handbags.html"><span>Clutch Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/diaper-bags.html"><span>Diaper Bags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/bags.html"><span>Bags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/hobo-handbags.html"><span>Hobo Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                    <li class="level1 nav-6-1 parent item"> <a href="#/material-bag.html"><span>Material Bag</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="#/beaded-handbags.html"><span>Beaded Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/fabric-handbags.html"><span>Fabric Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/handbags.html"><span>Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/leather-handbags.html"><span>Leather Handbags</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                    <li class="level1 nav-6-1 parent item"> <a href="#/shoes.html"><span>Shoes</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="#/shoes/flat-shoes.html"><span>Flat Shoes</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/shoes/flat-sandals.html"><span>Flat Sandals</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/shoes/boots.html"><span>Boots</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/shoes/heels.html"><span>Heels</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                    <li class="level1 nav-6-1 parent item"> <a href="#/jwellery.html"><span>Jwellery</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="#/jwellery/bracelets.html"><span>Bracelets</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/jwellery/necklaces-pendants.html"><span>Necklaces &amp; Pendants</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/jwellery/pendants.html"><span>Pendants</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/jwellery/pins-brooches.html"><span>Pins &amp; Brooches</span></a> </li>
                        <!--level2 nav-6-1-1-->
                      </ul>
                      <!--level1--> 
                      <!--sub sub category--> 
                    </li>
                    <!--level1 nav-6-1 parent item-->
                    <li class="level1 nav-6-1 parent item"> <a href="#/swimwear.html"><span>Swimwear</span></a> 
                      <!--sub sub category-->
                      <ul class="level1">
                        <li class="level2 nav-6-1-1"> <a href="#/swimwear/swimsuits.html"><span>Swimsuits</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/swimwear/beach-clothing.html"><span>Beach Clothing</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/swimwear/clothing.html"><span>Clothing</span></a> </li>
                        <!--level2 nav-6-1-1-->
                        <li class="level2 nav-6-1-1"> <a href="#/swimwear/bikinis.html"><span>Bikinis</span></a> </li>
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
                  <div class="push_img"> <a href="#"> <img  alt="women_jwellery" src="${pageContext.request.contextPath}/resources/assets2/images/women_jwellery.png"> </a> </div>
                </div>
                <div class="push_item push_item_last">
                  <div class="push_img"> <a href="#"> <img  alt="women_bag" src="${pageContext.request.contextPath}/resources/assets2/images/women_bag.png"> </a> </div>
                </div>
                <br class="clear">
              </div>
            </div>
          </li>
          <li class="level0 parent drop-menu"><a href="grid.html"><span>Sub menu </span> 
            <!--<span class="category-label-hot">Hot</span> --> 
            </a>
            <ul style="display: none;" class="level1">
              <li class="level1 first parent"><a href="#"><span>Submenu</span></a>
                <ul class="level2">
                  <li class="level2 first"><a href="#"><span>Menu1</span></a></li>
                  <li class="level2 nav-1-1-2"><a href="#"><span>Menu1</span></a></li>
                  <li class="level2 nav-1-1-3"><a href="#"><span>Menu2</span></a></li>
                  <li class="level2 nav-1-1-4"><a href="#"><span>Menu3</span></a></li>
                  <li class="level2 nav-1-1-5 last"><a href="#"><span>Menu4</span></a></li>
                </ul>
              </li>
              <li class="level1 first parent"><a href="#"><span>Submenu</span></a>
                <ul class="level2">
                  <li class="level2 first"><a href="#"><span>Menu1</span></a></li>
                  <li class="level2 nav-1-1-2"><a href="#"><span>Menu1</span></a></li>
                  <li class="level2 nav-1-1-3"><a href="#"><span>Menu2</span></a></li>
                  <li class="level2 nav-1-1-4"><a href="#"><span>Menu3</span></a></li>
                  <li class="level2 nav-1-1-5 last"><a href="#"><span>Menu4</span></a></li>
                </ul>
              </li>
              <li class="level1 parent"><a href="#"><span>Submenu</span></a> </li>
            </ul>
          </li>
          <li class="level0 nav-8 level-top"> <a href="blog.html" class="level-top"> <span>Blog</span> </a> </li>
          <li class="level0 nav-8 level-top"> <a href="contact.html" class="level-top"> <span>Contact</span> </a> </li>
          <li class="nav-custom-link level0 level-top parent"> <a class="level-top" href="#"><span>Custom</span></a>
            <div class="level0-wrapper custom-menu" style="left: 0px; display: none;">
              <div class="header-nav-dropdown-wrapper clearer">
                <div class="grid12-5">
                  <div class="custom_img"><a href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/custom-img1.jpg" alt="custom img1"></a></div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.</p>
                </div>
                <div class="grid12-5">
                  <div class="custom_img"><a href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/custom-img2.jpg" alt="custom img2"></a></div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.</p>
                </div>
                <div class="grid12-5">
                  <div class="custom_img"><a href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/custom-img3.jpg" alt="custom img3"></a></div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.</p>
                </div>
                <div class="grid12-5">
                  <div class="custom_img"><a href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/custom-img4.jpg" alt="custom img4"></a></div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue.</p>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    
  </nav>
  <!-- end nav --> 
  <!-- Slider -->
  <div id="magik-slideshow" class="magik-slideshow">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-sm-12 col-md-8 wow bounceInRight animated">
          <div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container' >
            <div id='rev_slider_4' class='rev_slider fullwidthabanner'>
              <ul>
                <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='${pageContext.request.contextPath}/resources/assets2/images/slider_img_2.jpg'><img src='${pageContext.request.contextPath}/resources/assets2/images/slide-img1.jpg' data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner"/>
                  <div    class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='45'  data-y='30'  data-endspeed='500'  data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2; white-space:nowrap;'>Exclusive of designer</div>
                  <div    class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='45'  data-y='70'  data-endspeed='500'  data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3; white-space:nowrap;'>Handbags & Purses</div>
                  <div    class='tp-caption sfb  tp-resizeme ' data-x='45'  data-y='360'  data-endspeed='500'  data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'><a href='#' class="view-more">View More</a> <a href='#' class="buy-btn">Buy Now</a></div>
                  <div    class='tp-caption Title sft  tp-resizeme ' data-x='45'  data-y='150'  data-endspeed='500'  data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'>In augue urna, nunc, tincidunt, augue,<br>
                    augue facilisis facilisis.</div>
                  <div    class='tp-caption Title sft  tp-resizeme ' data-x='45'  data-y='400'  data-endspeed='500'  data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;font-size:11px'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                </li>
                <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='${pageContext.request.contextPath}/resources/assets2/images/slider_img_2.jpg' class="black-text"><img src='${pageContext.request.contextPath}/resources/assets2/images/slide-img2.jpg'  data-bgposition='left top'  data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner"/>
                  <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-x='45'  data-y='30'  data-endspeed='500'  data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2; white-space:nowrap;'>Women Sale</div>
                  <div    class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='45'  data-y='70'  data-endspeed='500'  data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3; white-space:nowrap;'>Go Lightly</div>
                  <div    class='tp-caption sfb  tp-resizeme ' data-x='45'  data-y='360'  data-endspeed='500'  data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'><a href='#' class="view-more">View More</a> <a href='#' class="buy-btn">Buy Now</a></div>
                  <div    class='tp-caption Title sft  tp-resizeme ' data-x='45'  data-y='150'  data-endspeed='500'  data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;'>In augue urna, nunc, tincidunt, augue,<br>
                    augue facilisis facilisis.</div>
                  <div    class='tp-caption Title sft  tp-resizeme ' data-x='45'  data-y='400'  data-endspeed='500'  data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4; white-space:nowrap;font-size:11px'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                </li>
              </ul>
              <div class="tp-bannertimer"></div>
            </div>
          </div>
          
        </div>
        <aside class="col-xs-12 col-sm-12 col-md-4 wow bounceInLeft animated">
          <div class="RHS-banner">
            <div class="add"><a href="#"><img alt="banner-img" src="${pageContext.request.contextPath}/resources/assets2/images/rhs-banner.png"></a></div>
          </div>
        </aside>
      </div>
    </div>
  </div>
  <!-- end Slider --> 
  <!-- offer banner section -->
  
  <div class="offer-banner-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-xs-12 col-sm-4 wow bounceInLeft animated"><a href="#"><img alt="offer banner1" src="${pageContext.request.contextPath}/resources/assets2/images/offer-banner1.png"></a></div>
        <div class="col-lg-4 col-xs-12 col-sm-4 wow bounceInUp animated"><a href="#"><img alt="offer banner2" src="${pageContext.request.contextPath}/resources/assets2/images/offer-banner2.png"></a></div>
        <div class="col-lg-4 col-xs-12 col-sm-4 wow bounceInRight animated"><a href="#"><img alt="offer banner3" src="${pageContext.request.contextPath}/resources/assets2/images/offer-banner3.png"></a></div>
      </div>
    </div>
  </div>
  <!-- end offer banner section --> 
  
  <!-- main container -->
  
  <section class="main-container col1-layout home-content-container">
    <div class="container">
      <div class="std">
        <div class="best-seller-pro wow bounceInUp animated">
          <div class="slider-items-products">
            <div class="new_title center">
              <h2>Best Seller</h2>
            </div>
            <div id="best-seller-slider" class="product-flexslider hidden-buttons">
              <div class="slider-items slider-width-col4"> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p3.jpg" class="img-responsive" alt="product-image" /> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div style="width:60%" class="rating"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="new-label new-top-right">New</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p2.jpg" class="img-responsive" alt="a" /> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div style="width:60%" class="rating"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p4.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:0%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p1.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:50%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p6.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:60%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="new-label new-top-right">New</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p7.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:60%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p8.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:0%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p9.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:50%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End main container --> 
  <!-- Featured Slider -->
  <section class="featured-pro container wow bounceInUp animated">
    <div class="slider-items-products">
      <div class="new_title center">
        <h2>Featured Products</h2>
      </div>
      <div id="featured-slider" class="product-flexslider hidden-buttons">
        <div class="slider-items slider-width-col4"> 
          
          <!-- Item -->
          <div class="item">
            <div class="col-item">
              <div class="sale-label sale-top-right">Sale</div>
              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p13.jpg" class="img-responsive" alt="a" /> </a></div>
              <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
              <div class="info">
                <div class="info-inner">
                  <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                  <!--item-title-->
                  <div class="item-content">
                    <div class="ratings">
                      <div class="rating-box">
                        <div style="width:60%" class="rating"></div>
                      </div>
                    </div>
                    <div class="price-box">
                      <p class="special-price"> <span class="price"> $45.00 </span> </p>
                      <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                    </div>
                  </div>
                  <!--item-content--> 
                </div>
                <!--info-inner-->
                <div class="actions">
                  <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <!-- End Item --> 
          
          <!-- Item -->
          <div class="item">
            <div class="col-item">
              <div class="new-label new-top-right">New</div>
              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p14.jpg" class="img-responsive" alt="a" /> </a></div>
              <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
              <div class="info">
                <div class="info-inner">
                  <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                  <!--item-title-->
                  <div class="item-content">
                    <div class="ratings">
                      <div class="rating-box">
                        <div style="width:60%" class="rating"></div>
                      </div>
                    </div>
                    <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                  </div>
                  <!--item-content--> 
                </div>
                <!--info-inner-->
                <div class="actions">
                  <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <!-- End Item --> 
          
          <!-- Item -->
          <div class="item">
            <div class="col-item">
              <div class="sale-label sale-top-right">Sale</div>
              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p15.jpg"> </a></div>
              <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
              <div class="info">
                <div class="info-inner">
                  <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                  <!--item-title-->
                  <div class="item-content">
                    <div class="ratings">
                      <div class="rating-box">
                        <div class="rating" style="width:0%"></div>
                      </div>
                    </div>
                    <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                  </div>
                  <!--item-content--> 
                </div>
                <!--info-inner-->
                <div class="actions">
                  <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <!-- End Item --> 
          
          <!-- Item -->
          <div class="item">
            <div class="col-item">
              <div class="sale-label sale-top-right">Sale</div>
              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p16.jpg"> </a></div>
              <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
              <div class="info">
                <div class="info-inner">
                  <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                  <!--item-title-->
                  <div class="item-content">
                    <div class="ratings">
                      <div class="rating-box">
                        <div class="rating" style="width:50%"></div>
                      </div>
                    </div>
                    <div class="price-box">
                      <p class="special-price"> <span class="price"> $45.00 </span> </p>
                      <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                    </div>
                  </div>
                  <!--item-content--> 
                </div>
                <!--info-inner-->
                <div class="actions">
                  <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <!-- End Item --> 
          
          <!-- Item -->
          <div class="item">
            <div class="col-item">
              <div class="sale-label sale-top-right">Sale</div>
              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p17.jpg"> </a></div>
              <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
              <div class="info">
                <div class="info-inner">
                  <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                  <!--item-title-->
                  <div class="item-content">
                    <div class="ratings">
                      <div class="rating-box">
                        <div class="rating" style="width:60%"></div>
                      </div>
                    </div>
                    <div class="price-box">
                      <p class="special-price"> <span class="price"> $45.00 </span> </p>
                      <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                    </div>
                  </div>
                  <!--item-content--> 
                </div>
                <!--info-inner-->
                <div class="actions">
                  <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <!-- End Item --> 
          
          <!-- Item -->
          <div class="item">
            <div class="col-item">
              <div class="new-label new-top-right">New</div>
              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p18.jpg"> </a></div>
              <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
              <div class="info">
                <div class="info-inner">
                  <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                  <!--item-title-->
                  <div class="item-content">
                    <div class="ratings">
                      <div class="rating-box">
                        <div class="rating" style="width:60%"></div>
                      </div>
                    </div>
                    <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                  </div>
                  <!--item-content--> 
                </div>
                <!--info-inner-->
                <div class="actions">
                  <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <!-- End Item --> 
          
          <!-- Item -->
          <div class="item">
            <div class="col-item">
              <div class="sale-label sale-top-right">Sale</div>
              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p19.jpg"> </a></div>
              <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
              <div class="info">
                <div class="info-inner">
                  <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                  <!--item-title-->
                  <div class="item-content">
                    <div class="ratings">
                      <div class="rating-box">
                        <div class="rating" style="width:0%"></div>
                      </div>
                    </div>
                    <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                  </div>
                  <!--item-content--> 
                </div>
                <!--info-inner-->
                <div class="actions">
                  <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <!-- End Item --> 
          
          <!-- Item -->
          <div class="item">
            <div class="col-item">
              <div class="sale-label sale-top-right">Sale</div>
              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p20.jpg"> </a></div>
              <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
              <div class="info">
                <div class="info-inner">
                  <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                  <!--item-title-->
                  <div class="item-content">
                    <div class="ratings">
                      <div class="rating-box">
                        <div class="rating" style="width:50%"></div>
                      </div>
                    </div>
                    <div class="price-box">
                      <p class="special-price"> <span class="price"> $45.00 </span> </p>
                      <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                    </div>
                  </div>
                  <!--item-content--> 
                </div>
                <!--info-inner-->
                <div class="actions">
                  <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                </div>
                <!--actions-->
                
                <div class="clearfix"> </div>
              </div>
            </div>
          </div>
          <!-- End Item --> 
          
        </div>
      </div>
    </div>
    </section>
  <!-- End Featured Slider --> 
  <!-- promo banner section -->
  <div class="promo-banner-section container wow bounceInDown animated">
    <div class="container">
      <div class="row"> <img alt="promo-banner3" src="${pageContext.request.contextPath}/resources/assets2/images/jewelry-banner.jpg"></div>
    </div>
  </div>
  <!-- End promo banner section --> 
  <!-- middle slider -->
  <section class="middle-slider container">
    <div class="row">
      <div class="col-md-6">
        <div class="bag-product-slider small-pr-slider wow bounceInLeft animated">
          <div class="slider-items-products">
            <div class="new_title center">
              <h2>Bags</h2>
            </div>
            <div id="bag-seller-slider" class="product-flexslider hidden-buttons">
              <div class="slider-items slider-width-col3"> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p48.jpg" class="img-responsive" alt="a" /> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div style="width:60%" class="rating"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="new-label new-top-right">New</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p49.jpg" class="img-responsive" alt="a" /> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div style="width:60%" class="rating"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p50.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:0%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p51.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:50%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p52.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:60%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="new-label new-top-right">New</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p53.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:60%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p54.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:0%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p55.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:50%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
              </div>
            </div>
          </div>
 
        </div>
      </div>
      <div class="col-md-6">
        <div class="shoes-product-slider small-pr-slider wow bounceInRight animated">
          <div class="slider-items-products">
            <div class="new_title center">
              <h2>Shoes</h2>
            </div>
            <div id="shoes-slider" class="product-flexslider hidden-buttons">
              <div class="slider-items slider-width-col3"> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p57.jpg" class="img-responsive" alt="a" /> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div style="width:60%" class="rating"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="new-label new-top-right">New</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p58.jpg" class="img-responsive" alt="a" /> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div style="width:60%" class="rating"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p59.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:0%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p60.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:50%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p61.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:60%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="new-label new-top-right">New</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p62.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:60%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p63.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:0%"></div>
                            </div>
                          </div>
                          <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
                <!-- Item -->
                <div class="item">
                  <div class="col-item">
                    <div class="sale-label sale-top-right">Sale</div>
                    <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="images/p64.jpg"> </a></div>
                    <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                    <div class="info">
                      <div class="info-inner">
                        <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                        <!--item-title-->
                        <div class="item-content">
                          <div class="ratings">
                            <div class="rating-box">
                              <div class="rating" style="width:50%"></div>
                            </div>
                          </div>
                          <div class="price-box">
                            <p class="special-price"> <span class="price"> $45.00 </span> </p>
                            <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                          </div>
                        </div>
                        <!--item-content--> 
                      </div>
                      <!--info-inner-->
                      <div class="actions">
                        <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                      </div>
                      <!--actions-->
                      
                      <div class="clearfix"> </div>
                    </div>
                  </div>
                </div>
                <!-- End Item --> 
                
              </div>
            </div>
          </div>
         
        </div>
      </div>
    </div>
  </section>
  <!-- End middle slider --> 
  <!-- recommend slider -->
  
  <section class="recommend container">
    <div class="recommend-product-slider small-pr-slider bounceInUp animated">
      <div class="slider-items-products">
        <div class="new_title center">
          <h2>recommend</h2>
        </div>
        <div id="recommend-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col3"> 
            
            <!-- Item -->
            <div class="item">
              <div class="col-item">
                <div class="sale-label sale-top-right">Sale</div>
                <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p12.jpg" class="img-responsive" alt="a" /> </a></div>
                <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div style="width:60%" class="rating"></div>
                        </div>
                      </div>
                      <div class="price-box">
                        <p class="special-price"> <span class="price"> $45.00 </span> </p>
                        <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                      </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                    <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                  </div>
                  <!--actions-->
                  
                  <div class="clearfix"> </div>
                </div>
              </div>
            </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item">
              <div class="col-item">
                <div class="new-label new-top-right">New</div>
                <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img src="${pageContext.request.contextPath}/resources/assets2/images/p25.jpg" class="img-responsive" alt="a" /> </a></div>
                <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div style="width:60%" class="rating"></div>
                        </div>
                      </div>
                      <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                    <button type="button" title="Add to Cart" class="button btn-cart"><span>Add to Cart</span></button>
                  </div>
                  <!--actions-->
                  
                  <div class="clearfix"> </div>
                </div>
              </div>
            </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item">
              <div class="col-item">
                <div class="sale-label sale-top-right">Sale</div>
                <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p50.jpg"> </a></div>
                <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div class="rating" style="width:0%"></div>
                        </div>
                      </div>
                      <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                    <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                  </div>
                  <!--actions-->
                  
                  <div class="clearfix"> </div>
                </div>
              </div>
            </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item">
              <div class="col-item">
                <div class="sale-label sale-top-right">Sale</div>
                <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p8.jpg"> </a></div>
                <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div class="rating" style="width:50%"></div>
                        </div>
                      </div>
                      <div class="price-box">
                        <p class="special-price"> <span class="price"> $45.00 </span> </p>
                        <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                      </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                    <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                  </div>
                  <!--actions-->
                  
                  <div class="clearfix"> </div>
                </div>
              </div>
            </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item">
              <div class="col-item">
                <div class="sale-label sale-top-right">Sale</div>
                <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p41.jpg"> </a></div>
                <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div class="rating" style="width:60%"></div>
                        </div>
                      </div>
                      <div class="price-box">
                        <p class="special-price"> <span class="price"> $45.00 </span> </p>
                        <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                      </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                    <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                  </div>
                  <!--actions-->
                  
                  <div class="clearfix"> </div>
                </div>
              </div>
            </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item">
              <div class="col-item">
                <div class="new-label new-top-right">New</div>
                <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p20.jpg"> </a></div>
                <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div class="rating" style="width:60%"></div>
                        </div>
                      </div>
                      <div class="price-box"> <span class="regular-price"> <span class="price">$422.00</span> </span> </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                    <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                  </div>
                  <!--actions-->
                  
                  <div class="clearfix"> </div>
                </div>
              </div>
            </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item">
              <div class="col-item">
                <div class="sale-label sale-top-right">Sale</div>
                <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="${pageContext.request.contextPath}/resources/assets2/images/p3.jpg"> </a></div>
                <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div class="rating" style="width:0%"></div>
                        </div>
                      </div>
                      <div class="price-box"> <span class="regular-price"> <span class="price">$50.00</span> </span> </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                    <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                  </div>
                  <!--actions-->
                  
                  <div class="clearfix"> </div>
                </div>
              </div>
            </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item">
              <div class="col-item">
                <div class="sale-label sale-top-right">Sale</div>
                <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product-detail.html"> <img alt="a" class="img-responsive" src="images/p17.jpg"> </a></div>
                <div class="actions-links"><span class="add-to-links"> <a title="magik-btn-quickview" class="magik-btn-quickview" href="quick-view.html"><span>quickview</span></a> <a title="Add to Wishlist" class="link-wishlist" href="#"><span>Add to Wishlist</span></a> <a title="Add to Compare" class="link-compare" href="#"><span>Add to Compare</span></a></span> </div>
                <div class="info">
                  <div class="info-inner">
                    <div class="item-title"> <a title=" Sample Product" href="product-detail.html"> Sample Product </a> </div>
                    <!--item-title-->
                    <div class="item-content">
                      <div class="ratings">
                        <div class="rating-box">
                          <div class="rating" style="width:50%"></div>
                        </div>
                      </div>
                      <div class="price-box">
                        <p class="special-price"> <span class="price"> $45.00 </span> </p>
                        <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                      </div>
                    </div>
                    <!--item-content--> 
                  </div>
                  <!--info-inner-->
                  <div class="actions">
                    <button class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                  </div>
                  <!--actions-->
                  
                  <div class="clearfix"> </div>
                </div>
              </div>
            </div>
            <!-- End Item --> 
            
          </div>
        </div>
      </div>
 
    </div>
  </section>
  <!-- End Recommend slider --> 
  
  <!-- Latest Blog -->
  <section class="latest-blog container">
    <div class="blog-title">
      <h2><span>Latest Blog</span></h2>
    </div>
    <div class="col-xs-12 col-sm-4 wow bounceInLeft animated">
      <div class="blog-img"> <img src="${pageContext.request.contextPath}/resources/assets2/images/blog-img1.jpg" alt="Image">
        <div class="mask"> <a class="info" href="blog-detail.html">Read More</a> </div>
      </div>
      <h2><a href="blog-detail.html">Pellentesque habitant morbi</a> </h2>
      <div class="post-date"><i class="icon-calendar"></i> Apr 10, 2014</div>
      <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce sit  ... </p>
    </div>
    <div class="col-xs-12 col-sm-4 wow bounceInUp animated">
      <div class="blog-img"> <img src="${pageContext.request.contextPath}/resources/assets2/images/blog-img2.jpg" alt="Image">
        <div class="mask"> <a class="info" href="blog-detail.html">Read More</a> </div>
      </div>
      <h2><a href="blog-detail.html">Pellentesque habitant morbi</a> </h2>
      <div class="post-date"><i class="icon-calendar"></i> Apr 10, 2014</div>
      <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce sit  ... </p>
    </div>
    <div class="col-xs-12 col-sm-4 wow bounceInRight animated">
      <div class="blog-img"> <img src="${pageContext.request.contextPath}/resources/assets2/images/blog-img3.jpg" alt="Image">
        <div class="mask"> <a class="info" href="blog-detail.html">Read More</a> </div>
      </div>
      <h2><a href="blog-detail.html">Pellentesque habitant morbi</a> </h2>
      <div class="post-date"><i class="icon-calendar"></i> Apr 10, 2014</div>
      <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce sit  ... </p>
    </div>
  </section>
  <!-- End Latest Blog -->
  
  <footer class="footer bounceInUp animated">
    
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
                <li class="fb"><a href="#"></a></li>
                <li class="tw"><a href="#"></a></li>
                <li class="googleplus"><a href="#"></a></li>
                <li class="rss"><a href="#"></a></li>
                <li class="pintrest"><a href="#"></a></li>
                <li class="linkedin"><a href="#"></a></li>
                <li class="youtube"><a href="#"></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer-middle"> </div>
    <div class="footer-bottom">
      <div class="col-sm-5 col-xs-12 coppyright"> &copy; 2015 Magikcommerce. All Rights Reserved.</div>
      <div class="col-sm-7 col-xs-12 company-links">
        <ul class="links">
          <li><a href="#" title="Magento Themes">Magento Themes</a></li>
          <li><a href="#" title="Premium Themes">Premium Themes</a></li>
          <li><a href="#" title="Responsive Themes">Responsive Themes</a></li>
          <li class="last"><a href="#" title="Magento Extensions">Magento Extensions</a></li>
        </ul>
      </div>
    </div>
  </footer>
  <!-- End Footer --> 
  
</div>
<!-- JavaScript --> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/parallax.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/common.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/revslider.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets2/js/owl.carousel.min.js"></script> 
<script type='text/javascript'>
        jQuery(document).ready(function(){
            jQuery('#rev_slider_4').show().revolution({
                dottedOverlay: 'none',
                delay: 5000,
                startwidth: 770,
                startheight: 460,

                hideThumbs: 200,
                thumbWidth: 200,
                thumbHeight: 50,
                thumbAmount: 2,

                navigationType: 'thumb',
                navigationArrows: 'solo',
                navigationStyle: 'round',

                touchenabled: 'on',
                onHoverStop: 'on',
                
                swipe_velocity: 0.7,
                swipe_min_touches: 1,
                swipe_max_touches: 1,
                drag_block_vertical: false,
            
                spinner: 'spinner0',
                keyboardNavigation: 'off',

                navigationHAlign: 'center',
                navigationVAlign: 'bottom',
                navigationHOffset: 0,
                navigationVOffset: 20,

                soloArrowLeftHalign: 'left',
                soloArrowLeftValign: 'center',
                soloArrowLeftHOffset: 20,
                soloArrowLeftVOffset: 0,

                soloArrowRightHalign: 'right',
                soloArrowRightValign: 'center',
                soloArrowRightHOffset: 20,
                soloArrowRightVOffset: 0,

                shadow: 0,
                fullWidth: 'on',
                fullScreen: 'off',

                stopLoop: 'off',
                stopAfterLoops: -1,
                stopAtSlide: -1,

                shuffle: 'off',

                autoHeight: 'off',
                forceFullWidth: 'on',
                fullScreenAlignForce: 'off',
                minFullScreenHeight: 0,
                hideNavDelayOnMobile: 1500,
            
                hideThumbsOnMobile: 'off',
                hideBulletsOnMobile: 'off',
                hideArrowsOnMobile: 'off',
                hideThumbsUnderResolution: 0,

                hideSliderAtLimit: 0,
                hideCaptionAtLimit: 0,
                hideAllCaptionAtLilmit: 0,
                startWithSlide: 0,
                fullScreenOffsetContainer: ''
            });
        });
        </script>
</body>
</html>